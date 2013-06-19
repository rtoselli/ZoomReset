var UIWebviewZoomReset = {
    
    Reset: function (success, fail, resultType) {
            return Cordova.exec( success, fail, 
                    "UIWebviewZoomReset", 
                    "Reset", 
                    [resultType]);
    }
};