//
//  StringCaculatorTests.m
//  StringCaculatorTests
//
//  Created by Truong Tran  The on 6/3/13.
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
//    STFail(@"Unit tests are not implemented yet in StringCaculatorTests");
    StringCalculator *a = [[StringCalculator alloc] init];
    
    
    
    STAssertEquals([a Add:@""], 0, @"P tu rong");
    STAssertEquals([a Add:@"1,2"], 3, @"2 ptu");
    STAssertEquals([a Add:@"1,2,3"], 6, @"nhieu ptu");
    STAssertEquals([a Add:@"1\n2,3"], 6, @"ptu dac biet");
    STAssertEquals([a Add:@"//;\n1;2"], 3, @"nhieu ptu dac biet");
    
    STAssertThrows([a Add:@"-1,2"], @"so am");
    STAssertEquals([a Add:@"2,1001"], 2, @"lon hon 1000");
    STAssertEquals([a Add:@"//[***]\n1***2***3"], 6, @"nhieu ptu dac biet");
}

@end
