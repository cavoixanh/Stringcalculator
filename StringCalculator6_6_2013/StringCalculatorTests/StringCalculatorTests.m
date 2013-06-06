//
//  StringCalculatorTests.m
//  StringCalculatorTests
//
//  Created by Truong Tran  The on 6/6/13.
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
    STAssertEquals([a Add:@""], 0, @"rong");
    STAssertEquals([a Add:@"1,2"], 3, @"2 so");
    STAssertEquals([a Add:@"1,2,3"], 6, @"nhieu so so");
    STAssertEquals([a Add:@"1\n2,3"], 6, @"\n");
    STAssertEquals([a Add:@"//;\n1;2"], 3, @"delemeter");
    STAssertEquals([a Add:@"//#\n1#2"], 3, @"delemeter");
    
    STAssertThrows([a Add:@"-1,2"], @"negatives not allowed");
    STAssertThrows([a Add:@"-2,3"], @"negatives not allowed");
    
    STAssertEquals([a Add:@"//[***]\n1***2***3"], 6, @"delemeter");
    STAssertEquals([a Add:@"//[###]\n1###2###3"], 6, @"delemeter");
    
    STAssertEquals([a Add:@"2, 1001"], 2, @"lon hon 1000");
    STAssertEquals([a Add:@"2, 1000"], 1002, @"bang 1000");
}

@end
