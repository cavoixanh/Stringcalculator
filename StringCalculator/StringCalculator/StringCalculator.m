//
//  StringCalculator.m
//  StringCalculator
//
//  Created by Truong Tran  The on 5/28/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

- (NSInteger) Add:(NSString*) str{
    str = [str stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    str = [str stringByReplacingOccurrencesOfString:@"/" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"[" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"]" withString:@""];
    str = [str stringByReplacingOccurrencesOfString:@"*" withString:@","];
    str = [str stringByReplacingOccurrencesOfString:@";" withString:@","];
    
    NSArray *arr = [str componentsSeparatedByString:@","];
    
    if([str isEqualToString:@""]){
        return 0;
    }
    else{
        NSInteger count = 0;
        for(NSString *string in arr)
        {
            if([string integerValue]<0){
                [NSException raise:@"NSInternalInconsistencyException"  format: @"negatives not allowed"];
            }
            if([string integerValue]<1000)
                count = count +[string integerValue];
            
        }
        return count;
    }
    
    return 0;
}
@end
