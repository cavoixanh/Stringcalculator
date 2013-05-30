//
//  StringCalculator.m
//  StringCalculator
//
//  Created by Truong Tran  The on 5/30/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

- (NSInteger) Add:(NSString *)string{
    NSInteger total;
    string = [string stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    string = [string stringByReplacingOccurrencesOfString:@";" withString:@","];
    string = [string stringByReplacingOccurrencesOfString:@"/" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"[" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"]" withString:@""];
    string = [string stringByReplacingOccurrencesOfString:@"***" withString:@","];
    
    if([string isEqualToString:@""])
        return 0;
    else{
        NSArray *arr = [string componentsSeparatedByString:@","];
        total = 0;
        for (NSString *str in arr) {
            if([str integerValue]<=1000 && [str integerValue]>0)
                total =total + [str integerValue ];
            else if ([str integerValue]<0)
                 [NSException raise:NSInvalidArgumentException
                                   format:@"negatives not allowed"];
        }
        return total;
    }
    
    return 0;
}
@end
