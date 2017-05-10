//
//  RNTPublisherViewManager.m
//  RNOpenTok
//
//  Created by Gregory Galushka on 4/30/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <React/RCTViewManager.h>
#import "RNTPublisherViewManager.h"
#import "RNTPublisherView.h"

//@implementation RCTConvert (RNTPublisherView)
//
//RCT_ENUM_CONVERTER(UICameraPosition, (@{
//  @"front" : @(AVCaptureDevicePositionFront),
//  @"back" : @(AVCaptureDevicePositionBack)
//}), UICameraPositionAutomatic, integerValue)
//
//@end

@implementation RNTPublisherViewManager

- (UIView *)view {
    // RNTPublisherView *publisherView = [RNTPublisherView new];
//    [publisherView addTarget:self
//               action:@selector(onChange:)
//     forControlEvents:UIControlEventValueChanged];
    // [publisherView setCameraPosition:YES];
    // [publisherView
    //   addTarget:self
    //   action:@selector(onChange:)
    //   forControlEvents:UIControlEventValueChanged
    // ];

    // return publisherView;
    return [RNTPublisherView new];
}

// - (void)onChange:(RNTPublisherView *)sender
// {
//     NSLog(@"onChange here!!!");
// //  if (sender.wasOn != sender.on) {
// //    if (sender.onChange) {
// //      sender.onChange(@{ @"value": @(sender.on) });
// //    }
// //    sender.wasOn = sender.on;
// //  }
// }

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(apiKey, NSString)
RCT_EXPORT_VIEW_PROPERTY(sessionId, NSString)
RCT_EXPORT_VIEW_PROPERTY(token, NSString)
//RCT_EXPORT_VIEW_PROPERTY(cameraPosition, UICameraPosition)
RCT_EXPORT_VIEW_PROPERTY(cameraPosition, BOOL)


RCT_EXPORT_VIEW_PROPERTY(onPublishStart, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPublishError, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onPublishStop, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onClientConnected, RCTDirectEventBlock)
RCT_EXPORT_VIEW_PROPERTY(onClientDisconnected, RCTDirectEventBlock)

// RCT_EXPORT_VIEW_PROPERTY(onChange, RCTBubblingEventBlock);

// RCT_CUSTOM_VIEW_PROPERTY(cameraPosition, BOOL, RNTPublisherView)
// {
//    if (json) {
//        view.enabled = !([RCTConvert BOOL:json]);
//    } else {
//        view.enabled = defaultView.enabled;
//    }
// }

@end
