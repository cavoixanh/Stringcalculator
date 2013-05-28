//
//  Calculator.m
//  TDDStringCalculator
//
//  Created by Truong Tran  The on 5/27/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (NSInteger) Add :(NSString *)text{
    text = [text stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    if([text isEqualToString:@""])
        return 0;
    else{
        NSArray *arr = [text componentsSeparatedByString:@","];
        NSInteger total = 0;
        for(NSString* a in arr){
            NSInteger b = [a integerValue];
            total = total+b;
        }
         return total;
    }
    return 0;
}
@end
