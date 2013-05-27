//
//  TDDStringCalculatorTests.m
//  TDDStringCalculatorTests
//
//  Created by Truong Tran  The on 5/27/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "TDDStringCalculatorTests.h"
#import "Calculator.h"
@implementation TDDStringCalculatorTests

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
    Calculator *cal = [[Calculator alloc] init];
    NSInteger a = [cal Add: @""];
    STAssertEquals(0, a, @"insert");
    
    a = [cal Add:@"1,2"];
    STAssertEquals(3, a, @"two number");
    
    a = [cal Add:@"1,2,3"];
    STAssertEquals(6, a, @"three number");
    
    a = [cal Add:@"1\n2,3"];
    STAssertEquals(6, a, @"special number");
    
    a = [cal Add:@"1,\n,3"];
    STAssertEquals(6, a, @"special number");
}

@end
