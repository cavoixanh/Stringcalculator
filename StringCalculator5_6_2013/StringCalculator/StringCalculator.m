//
//  StringCalculator.m
//  StringCalculator
//
//  Created by Truong Tran  The on 6/5/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

- (NSInteger) Add:(NSString*) addString{
    if([addString isEqualToString:@""])
        return 0;
    
    NSInteger count;
    count = 0;
    addString = [addString stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    
    NSString *temp = [addString substringToIndex:3];
    if([temp hasPrefix:@"//"]){
        NSString *key = [temp stringByReplacingOccurrencesOfString:@"//" withString:@""];
        addString = [addString substringFromIndex:2];
        addString = [addString stringByReplacingOccurrencesOfString:key withString:@","];
        NSArray *arr = [addString componentsSeparatedByString:@","];
        for(NSString *string in arr){
            if([string integerValue] >0)
                count = count + [string integerValue];
//            else{
//                [NSException raise:NSInvalidArgumentException
//                            format:@"negatives not allowed"];
//            assert(@"negatives not allowed");
//            }
        }
        return count;
    }
    
    
    NSArray *arr = [addString componentsSeparatedByString:@","];
   
    if([addString isEqualToString:@""])
        return 0;
    else{
        for(NSString *string in arr){
            if([string integerValue] >0)
                count = count + [string integerValue];
            else{
                [NSException raise:NSInvalidArgumentException
                            format:@"negatives not allowed"];
                assert(@"negatives not allowed");
            }
        }
        return count;
    }
    
    return 0;
}
@end
