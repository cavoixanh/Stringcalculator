//
//  StringCalculatorTests.m
//  StringCalculatorTests
//
//  Created by Truong Tran  The on 5/28/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculatorTests.h"

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
    StringCalculator *cal = [[StringCalculator alloc] init];
    NSInteger a = [cal Add:@""];
    STAssertEquals(a, 0, @"rong");
    
    a = [cal Add:@"1,2"];
    STAssertEquals(a, 3, @"2 ptu");
    
    a = [cal Add:@"1,2,3"];
    STAssertEquals(a, 6, @"nhieu ptu");
    
    a = [cal Add:@"1\n2,3"];
    STAssertEquals(a, 6, @"nhieu ptu dac biet");
    
    a = [cal Add:@"1,\n2,3"];
    STAssertEquals(a, 6, @"nhieu ptu dac biet");
    
    a = [cal Add:@"//;\n1;2"];
    STAssertEquals(a, 3, @"nhieu ptu dac biet");
    
    a = [cal Add:@"-1,2"];
    //STAssertEquals(a, a2, <#description, ...#>)
    
    a = [cal Add:@"1,1000"];
    STAssertEquals(a, 1, @"lon hon 1000");

    a = [cal Add:@"“//[***]\n1***2***3”"];
    STAssertEquals(a, 6, @"sieu dac biet");
}

@end
