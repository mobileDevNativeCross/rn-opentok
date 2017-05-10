//
//  RNTPublisherView.m
//  RNOpenTok
//
//  Created by Gregory Galushka on 4/30/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import "RNTPublisherView.h"
#import "UIView+React.h"
#import "RCTUtils.h"
#import <OpenTok/OpenTok.h>
#import "RCTEventDispatcher.h"

@interface RNTPublisherView () <OTSessionDelegate, OTPublisherDelegate>

@end

@implementation RNTPublisherView {
    OTSession *_session;
    OTPublisher *_publisher;
}


- (void)didMoveToWindow {
//    [NSTimer scheduledTimerWithTimeInterval:2.0f target:self selector:@selector(handleTimer:) userInfo:nil repeats:YES];
    [super didMoveToSuperview];
    [self mount];
}

- (void) setCameraPosition: (BOOL) cameraPosition {
    NSLog(@"IAM HERE IM CHANGING (%d)", cameraPosition);
    NSLog(@"%ld", AVCaptureDevicePositionFront);
    if (cameraPosition) {
        _publisher.cameraPosition = AVCaptureDevicePositionFront;
    } else {
        _publisher.cameraPosition = AVCaptureDevicePositionBack;
    }
}



// - (void) handleTimer:(NSTimer *)timer {
//     if (_publisher.cameraPosition == AVCaptureDevicePositionBack) {
//         _publisher.cameraPosition = AVCaptureDevicePositionFront;
//     } else if (_publisher.cameraPosition == AVCaptureDevicePositionFront) {
//         _publisher.cameraPosition = AVCaptureDevicePositionBack;
//     }
// }

- (void)mount {
    _session = [[OTSession alloc] initWithApiKey:_apiKey sessionId:_sessionId delegate:self];

    OTError *error = nil;
    [_session connectWithToken:_token error:&error];
    NSLog(@"mount(error): (%@)", error);
    if (error) {
        _onPublishError(RCTJSErrorFromNSError(error));
    }
}

- (void)startPublishing {
   _publisher = [[OTPublisher alloc] initWithDelegate:self];
   _publisher.cameraPosition = AVCaptureDevicePositionBack;

    OTError *error = nil;

   [_session publish:_publisher error:&error];

   if (error) {
       _onPublishError(RCTJSErrorFromNSError(error));
       return;
   }

   [self attachPublisherView];
}

- (void)attachPublisherView {
   [_publisher.view setFrame:CGRectMake(0, 0, self.bounds.size.width, self.bounds.size.height)];
   [self addSubview:_publisher.view];
}

- (void)cleanupPublisher {
    [_publisher.view removeFromSuperview];
    _publisher = nil;
}

#pragma mark - OTSession delegate callbacks
- (void)sessionDidConnect:(OTSession*)session {
   [self startPublishing];
}
- (void)sessionDidDisconnect:(OTSession*)session {}
- (void)session:(OTSession*)session streamCreated:(OTStream *)stream {}
- (void)session:(OTSession*)session streamDestroyed:(OTStream *)stream {}
- (void)session:(OTSession *)session connectionCreated:(OTConnection *)connection {
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setDateFormat:@"EEE MMM dd HH:mm:ss ZZZ yyyy"];
//
//    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
//    NSString *creationTimeString = [dateFormatter stringFromDate:connection.creationTime];
//    _onClientConnected(@{
//                         @"connectionId": connection.connectionId,
//                         @"creationTime": creationTimeString,
//                         @"data": connection.data,
//                         });
}
- (void)session:(OTSession *)session connectionDestroyed:(OTConnection *)connection {
//    _onClientDisconnected(@{
//                            @"connectionId": connection.connectionId,
//                            });
}
- (void)session:(OTSession*)session didFailWithError:(OTError*)error {
//    _onPublishError(RCTJSErrorFromNSError(error));
}

#pragma mark - OTPublisher delegate callbacks
- (void)publisher:(OTPublisherKit*)publisher streamCreated:(OTStream *)stream {
//    _onPublishStart(@{});
}
- (void)publisher:(OTPublisherKit*)publisher streamDestroyed:(OTStream *)stream {
//    _onPublishStop(@{});
    [self cleanupPublisher];
}
- (void)publisher:(OTPublisherKit*)publisher didFailWithError:(OTError*)error {
//    _onPublishError(RCTJSErrorFromNSError(error));
    [self cleanupPublisher];
}
- (void)dealloc {
    [self cleanupPublisher];
    [_session disconnect:nil];
}

@end
