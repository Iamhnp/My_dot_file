(function () {
    chrome.runtime.sendMessage('nbkomboflhdlliegkaiepilnfmophgfg', {
        action: 'get'
    }, (response) => {
        console.log("start the initialization worker")
    });
})();
