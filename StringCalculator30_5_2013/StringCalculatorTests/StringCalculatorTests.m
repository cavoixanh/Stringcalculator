//
//  StringCalculatorTests.m
//  StringCalculatorTests
//
//  Created by Truong Tran  The on 5/30/13.
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
    StringCalculator *a = [[StringCalculator alloc] init];
    
    //STFail(@"Unit tests are not implemented yet in StringCalculatorTests");
    STAssertEquals([a Add: @"" ], 0, @"add gia tri rong");
    STAssertEquals([a Add: @"1,2" ], 3, @"add 2 gia tri");
    STAssertEquals([a Add:@"1,2,3" ], 6, @"add 3 gia tri");
    STAssertEquals([a Add:@"1\n2,3" ], 6, @"gia tri dac biet");
    STAssertEquals([a Add:@"1,2\n,3" ], 6, @"gia tri dac biet");
    STAssertEquals([a Add:@"//;\n1;2]" ], 3, @"nhieu ky tu dac biet");
    STAssertEquals([a Add:@"2,1001]" ], 2, @"lon hon 1000");
    STAssertEquals([a Add:@"2,1000]" ], 1002, @"bang 1000");
    STAssertEquals([a Add:@"//[***]\n1***2***3"], 6, @"nhieu ky tu dac biet");
    STAssertEquals([a Add:@"-2,1000]" ], 1002, @"negatives not allowed");
}

@end
