//
//  StringCalculator.m
//  stringCalculator
//
//  Created by Truong Tran  The on 5/31/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

- (NSInteger) Add:(NSString*)str{
    str = [str stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    str = [str stringByReplacingOccurrencesOfString:@"/" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@";" withString:@","];
    str = [str stringByReplacingOccurrencesOfString:@"[" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"]" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"***" withString:@","];
    str = [str stringByReplacingOccurrencesOfString:@"\\" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"#" withString:@","];
    NSArray *arr = [str componentsSeparatedByString:@","];

    
    NSInteger total;
    total = 0;
    if([str isEqualToString:@""] )
         return 0;
     else{
         for(NSString *string in arr){
             if([string integerValue]<0){
                [NSException raise:NSInvalidArgumentException
                             format:@"negatives not allowed"];
                 assert(@"negatives not allowed");
                 }
            else
             if([string integerValue]<=1000)
             total = total + [string integerValue];
         }
         return total;
     }
    return 0;
}
@end
