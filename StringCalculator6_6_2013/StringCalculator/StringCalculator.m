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
    
    if(stringAdd.length >3){
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
            count = count + [str integerValue];
        }
        return count;
    }
        
    return 0;
}
@end
