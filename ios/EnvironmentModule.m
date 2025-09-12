//
//  EnvironmentModule.m
//  dagconnect
//
//  Created by Charan Tatu on 24/07/25.
//

#import <Foundation/Foundation.h>
#import "React/RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(EnvironmentModule, NSObject)

RCT_EXTERN__BLOCKING_SYNCHRONOUS_METHOD(getEnv)
RCT_EXTERN__BLOCKING_SYNCHRONOUS_METHOD(getVersionNumber)
RCT_EXTERN__BLOCKING_SYNCHRONOUS_METHOD(getBuildNumber)

+ (BOOL) requiresMainQueueSetup {
  return YES;
}

@end

