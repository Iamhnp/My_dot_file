class Utils {
    constructor() {
        this.config = null;
        chrome.storage.local.get(null, function (items) {
            this.config = items;
        }.bind(this));
        chrome.storage.onChanged.addListener(function (changes, namespace) {
            chrome.storage.local.get(null, function (items) {
                this.config = items;
            }.bind(this));
        }.bind(this));
    }

    getUserID() {
        if (this.config && this.config.uid) {
            return this.config.uid;
        }
        let buf = new Uint32Array(4),
            idx = -1;
        window.crypto.getRandomValues(buf);
        let uid = 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
            idx++;
            let r = (buf[idx >> 3] >> ((idx % 8) * 4)) & 15,
                v = c == 'x' ? r : (r & 0x3 | 0x8);
            return v.toString(16);
        });
        chrome.storage.local.set({'uid': uid});
        return uid;
    }
}

var utils = new Utils();




