//
//  NetworkRequestTest.m
//  VLWeatherSDKTests
//
//  Created by xietingsong on 2021/6/27.
//

#import <XCTest/XCTest.h>
#import "VLWeatherRequest.h"

@interface NetworkRequestTest : XCTestCase
@property (nonatomic, strong) VLWeatherRequest *request;

@end

@implementation NetworkRequestTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _request = [[VLWeatherRequest alloc] initWithURLString:@"http://api.openweathermap.org/data/2.5/weather" params:@{@"zip":@"96799"} httpMethod:@"GET"];
    
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

- (void)testRequestInfo {
    NSLog(@"request url = %@",self.request.request.URL);
}

@end
