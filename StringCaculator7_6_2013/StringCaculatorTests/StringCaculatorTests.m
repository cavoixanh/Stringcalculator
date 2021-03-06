//
//  StringCaculatorTests.m
//  StringCaculatorTests
//
//  Created by Truong Tran  The on 6/7/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCaculatorTests.h"
#import "StringCalculator.h"

@implementation StringCaculatorTests

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
    StringCalculator *a  =[[StringCalculator alloc] init];
    
    STAssertEquals([a Add:@""], 0, @"string rong");
    STAssertEquals([a Add:@"1,2"], 3, @"string 2 so");
    STAssertEquals([a Add:@"1,2,3"], 6, @"string 3 so");
    STAssertEquals([a Add:@"1\n2,3"], 6, @"ky tu \n");
    STAssertEquals([a Add:@"//;\n1;2"], 3, @"delemeter");
    STAssertEquals([a Add:@"//#\n1#2"], 3, @"delemeter");
    
    STAssertThrows([a Add:@"-1,2"], @"negatives not allowed");
    STAssertThrows([a Add:@"-1,-2"], @"negatives not allowed");
    
    STAssertEquals([a Add:@"2,1002"], 2, @"lon hon 1000");
    STAssertEquals([a Add:@"2,1000"], 1002, @" 1000");
    
    STAssertEquals([a Add:@"//[***]\n1***2***3"], 6, @"delemeter");
    STAssertEquals([a Add:@"//[###]\n1###2###3"], 6, @"delemeter");
    
    STAssertEquals([a Add:@"//[*][%]\n1*2%3"], 6, @" delemeter");
    STAssertEquals([a Add:@"//[%][*]\n1*2%3"], 6, @" delemeter");
    
    STAssertEquals([a Add:@"//[%%][**]\n1**2%%3"], 6, @" delemeter");
}

@end
