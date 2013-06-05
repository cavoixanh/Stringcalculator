//
//  StringCalculatorTests.m
//  StringCalculatorTests
//
//  Created by Truong Tran  The on 6/5/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculatorTests.h"
#import "StringCalculator.h"
@implementation StringCalculatorTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    StringCalculator * a = [[StringCalculator alloc] init];
    STAssertEquals([a Add:@""], 0, @"ky tu rong");
    STAssertEquals([a Add:@"1,2"], 3, @"2 ky tu");
    STAssertEquals([a Add:@"1,2,3"], 6, @"nhieu ky tu");
}

@end
