//
//  RNTPublisherView.h
//  RNOpenTok
//
//  Created by Gregory Galushka on 4/30/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTComponent.h>

@interface RNTPublisherView: UIView

@property (nonatomic, strong) NSString *apiKey;
@property (nonatomic, strong) NSString *sessionId;
@property (nonatomic, strong) NSString *token;
@property (nonatomic, assign) BOOL cameraPosition;

@property (nonatomic, copy) RCTDirectEventBlock onPublishError;
@property (nonatomic, copy) RCTDirectEventBlock onPublishStop;
@property (nonatomic, copy) RCTDirectEventBlock onPublishStart;

@property (nonatomic, copy) RCTDirectEventBlock onClientConnected;
@property (nonatomic, copy) RCTDirectEventBlock onClientDisconnected;

//@property (nonatomic, assign) BOOL isCameraPositionFront;
//@property (nonatomic, copy) RCTBubblingEventBlock onChange;

//-(void) setCameraPosition: (BOOL)cameraPosition;
@end
