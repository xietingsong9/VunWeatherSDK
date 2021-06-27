//
//  WeatherInfoTest.m
//  VLWeatherSDKTests
//
//  Created by xietingsong on 2021/6/27.
//

#import <XCTest/XCTest.h>

#if TARGET_IPHONE_SIMULATOR
#import "VLWeatherManager.h"
#else
#endif



#define TestNeedsToWaitForBlock() __block BOOL blockFinished = NO
#define BlockFinished() blockFinished = YES
#define WaitForBlock() while (CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0, true) && !blockFinished)

@interface WeatherInfoTest : XCTestCase

@end

@implementation WeatherInfoTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    #if TARGET_IPHONE_SIMULATOR
        [[VLWeatherManager sharedManager] start:@"edfe4ace41a2a8b1b9c7b15885662313" weatherDelegate:nil];
    #else
    #endif
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testWeatherForCityName
{
    #if TARGET_IPHONE_SIMULATOR
        TestNeedsToWaitForBlock();
        [[VLWeatherManager sharedManager] weatherForCityName:@"beijing" completeBlock:^(VLWeatherInfo * _Nullable weatherInfo, NSDictionary * _Nullable extraInfo, VLWeatherErrorCode errorCode) {
            BlockFinished();
        }];
        WaitForBlock();
    #else
    #endif

}

- (void)testWeatherForZipCode
{
    #if TARGET_IPHONE_SIMULATOR
        TestNeedsToWaitForBlock();
        [[VLWeatherManager sharedManager] weatherForZipCode:@"0" completeBlock:^(VLWeatherInfo * _Nullable weatherInfo, NSDictionary * _Nullable extraInfo, VLWeatherErrorCode errorCode) {
            BlockFinished();
        }];
        WaitForBlock();
    #else
    #endif

}

@end
