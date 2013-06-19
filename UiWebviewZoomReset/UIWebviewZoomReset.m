//
//  UIZoomReset.m
//  Brasil Game Show 2013
//
//  Created by Aiyra on 19/06/13.
//
//



#import "UIWebviewZoomReset.h"
#import <Cordova/CDVPluginResult.h>

@implementation UIWebviewZoomReset

-  (void)Reset:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    
    NSString* javaScript = nil;
    
    @try {
        UIWebView *view = self.webView;
        view.scalesPageToFit = NO;
        [view.scrollView setZoomScale:1.0];
        [view.scrollView setContentScaleFactor:1.0];
        view.scalesPageToFit = YES;
        NSLog(@"Reset OK!");
        
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Reset OK!"];
            javaScript = [pluginResult toSuccessCallbackString:command.callbackId];
      
        
    } @catch (NSException* exception) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_JSON_EXCEPTION messageAsString:[exception reason]];
        javaScript = [pluginResult toErrorCallbackString:command.callbackId];
    }
    
    [self writeJavascript:javaScript];
}

@end
