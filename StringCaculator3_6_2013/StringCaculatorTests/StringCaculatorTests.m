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
}

@end
