var UIWebviewZoomReset = {
    
    Reset: function (success, fail) {
            return Cordova.exec( success, fail, 
                    "UIWebviewZoomReset", 
                    "Reset", 
                    []);
    }
};