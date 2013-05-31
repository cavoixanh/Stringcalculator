//
//  stringCalculatorTests.m
//  stringCalculatorTests
//
//  Created by Truong Tran  The on 5/31/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "stringCalculatorTests.h"
#import "StringCalculator.h"
@implementation stringCalculatorTests

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
    //STFail(@"Unit tests are not implemented yet in stringCalculatorTests");
    STAssertEquals([a Add:@""], 0, @"ptu rong");
    STAssertEquals([a Add:@"1,2"], 3, @"2 ptu");
    STAssertEquals([a Add:@"1,2,3"], 6, @"3 ptu");
    STAssertEquals([a Add:@"1\n2,3"], 6, @"ptu dac biet ");
    STAssertEquals([a Add:@"1,\n2,3"], 6, @"ptu dac biet ");
    STAssertEquals([a Add:@"//;\n1;2"], 3, @"ky tu dac biet");
    
    STAssertThrows([a Add:@"-1,2"],  @"exception negatives not allowed");
    
    STAssertEquals([a Add:@"2,1001"], 2, @"lon hon 1000");
    STAssertEquals([a Add:@"2,1000"], 1002, @"bang 1000");
    STAssertEquals([a Add:@"//[***]\n1***2***3"], 6, @"nhieu ky tu dac biet");
};

@end
