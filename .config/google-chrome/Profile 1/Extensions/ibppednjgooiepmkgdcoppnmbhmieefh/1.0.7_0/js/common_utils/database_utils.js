class DatabaseUtils{constructor(){this.database=null,this.HISTORY_MAX_SIZE=4e3,this.CHUNK_SIZE=100,this.DATABASE_HISTORY_STORE="History_data",this.initDb()}getTransactionData(t,e){const s=this.database.transaction([t],e),r=s.objectStore(t);return{transaction:s,store:r}}getErrorObject(t,e){return{message:t,data:e}}initDb(){const t=window.indexedDB.open("History",1);t.onerror=t=>{},t.onsuccess=e=>{this.database=t.result},t.onupgradeneeded=t=>{this.database=t.target.result,this.database.objectStoreNames.contains(this.DATABASE_HISTORY_STORE)?this.historyStore=this.database.transaction.objectStore(this.DATABASE_HISTORY_STORE):this.historyStore=this.database.createObjectStore(this.DATABASE_HISTORY_STORE,{keyPath:"hashCode"}),this.historyStore.indexNames.contains("timestamp")||this.historyStore.createIndex("timestamp","timestamp"),this.historyStore.indexNames.contains("hashCode")||this.historyStore.createIndex("hashCode","hashCode",{unique:!0})}}updateHistoryRecord(t){return new Promise(((e,s)=>{const{store:r}=this.getTransactionData([this.DATABASE_HISTORY_STORE],"readwrite"),o=r.put(t);o.onsuccess=t=>{e()},o.onerror=t=>{s(this.getErrorObject("Record was not been updated"))}}))}saveHistoryRecord(t){return new Promise(((e,s)=>{const{store:r}=this.getTransactionData([this.DATABASE_HISTORY_STORE],"readwrite"),o=r.add(t);o.onsuccess=t=>{e()},o.onerror=t=>{s(this.getErrorObject("Record was not been saved"))}}))}deleteOldestRecord(){return new Promise(((t,e)=>{const{store:s}=this.getTransactionData(this.DATABASE_HISTORY_STORE,"readwrite"),r=s.index("timestamp").openCursor(null,"next");r.onsuccess=e=>{const s=e.target.result;if(s){const e=s.delete();e.onsuccess=e=>{t(!0)},e.onerror=e=>{t(!1)}}else t(!1)},r.onerror=e=>{t(!1)}}))}getStoreCount(t){return new Promise((e=>{const s=t.count();s.onsuccess=t=>{e(s.result)},s.onerror=t=>{e(!1)}}))}getStoreItemByHashCode(t,e){return new Promise((s=>{const r=t.index("hashCode").get(e);r.onsuccess=t=>{s(t.target.result)},r.onerror=t=>{s(!1)}}))}async addHistoryItem(t){t||reject(this.getErrorObject("Data was not been provided"));const{store:e}=this.getTransactionData([this.DATABASE_HISTORY_STORE],"readonly");if(await this.getStoreItemByHashCode(e,t.hashCode))this.updateHistoryRecord(t).then((t=>{})).catch((t=>{}));else{const s=await this.getStoreCount(e);if(!1===s)throw new Error(this.getErrorObject("Failure with get store amount"));if(s<this.HISTORY_MAX_SIZE)this.saveHistoryRecord(t).then((t=>{})).catch((t=>{}));else{if(!await this.deleteOldestRecord())return;this.saveHistoryRecord(t).then((t=>{})).catch((t=>{}))}}}getPartOfRecords(t=0){return new Promise((e=>{const{store:s}=this.getTransactionData(this.DATABASE_HISTORY_STORE,"readonly"),r=s.openCursor(null,"prev");let o=0;const a=[],i=t*this.CHUNK_SIZE,n=i+this.CHUNK_SIZE;r.onsuccess=t=>{const s=t.target.result;s?(i<=o&&o<n&&a.push(s.value),o++,s.continue()):e(a)},r.onerror=()=>{e([])}}))}clearStore(){this.database.transaction([this.DATABASE_HISTORY_STORE],"readwrite").objectStore(this.DATABASE_HISTORY_STORE).clear()}}