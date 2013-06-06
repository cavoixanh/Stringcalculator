//
//  StringCalculator.m
//  StringCalculator
//
//  Created by Truong Tran  The on 6/6/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

- (NSInteger) Add:(NSString *)stringAdd{
    
    if(stringAdd.length > 8  && [[stringAdd componentsSeparatedByString: @"["] count] == 3){
       
        NSString *key1 = [stringAdd substringWithRange:NSMakeRange(3, 1)];
        NSString *key2 = [stringAdd substringWithRange:NSMakeRange(6, 1)];
        stringAdd = [stringAdd stringByReplacingOccurrencesOfString:key1 withString:@","];
        stringAdd = [stringAdd stringByReplacingOccurrencesOfString:key2 withString:@","];
    }
    else if(stringAdd.length > 7){
        NSString *stringTemp = [stringAdd substringToIndex:7];
        if([stringTemp hasPrefix:@"//["] && [stringTemp hasSuffix:@"]"]){
            stringTemp = [stringTemp stringByReplacingOccurrencesOfString:@"//[" withString:@""];
            NSString *key = [stringTemp stringByReplacingOccurrencesOfString:@"]" withString:@""];
            stringAdd = [stringAdd stringByReplacingOccurrencesOfString:key withString:@","];
        }
    }
    
    else if(stringAdd.length >3){
        NSString *stringTemp = [stringAdd substringToIndex:3];
        if([stringTemp hasPrefix:@"//"])
        {
            NSString *key = [stringTemp substringFromIndex:2];
            stringAdd = [stringAdd stringByReplacingOccurrencesOfString:key withString:@","];
        }
    }
        
    
    stringAdd = [stringAdd stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    NSArray *arr = [stringAdd componentsSeparatedByString:@","];
    NSInteger count;
    count = 0;
    if([stringAdd isEqualToString:@""]  || stringAdd.length == 0)
        return 0;
    else{
        for(NSString * str in arr){
            if([str integerValue] > 0 && [str integerValue] < 1001)
                count = count + [str integerValue];
            else if ([str integerValue] >1000)
                count = count + 0;
            else if ([str hasPrefix:@"//"] || [str isEqualToString:@""] || [str hasPrefix:@"]"]){
                count = count + 0;
            }
            else{
                [NSException raise:@"negatives not allowed" format:@"negatives not allowed"];
            }
        }
        return count;
    }
        
    return 0;
}
@end
