//
//  StringCalculator.m
//  StringCaculator
//
//  Created by Truong Tran  The on 6/7/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

- (NSInteger) Add:(NSString*) strAdd{
    
    if(strAdd.length> 7 && [strAdd hasPrefix:@"//["]){
       NSString *key = [strAdd substringWithRange:NSMakeRange(3, 3)];
        strAdd = [strAdd stringByReplacingOccurrencesOfString:key withString:@","];
    }
    else if(strAdd.length > 3 && [strAdd hasPrefix:@"//"]){
        NSString *key = [strAdd substringWithRange:NSMakeRange(2, 1)];
        strAdd = [strAdd stringByReplacingOccurrencesOfString:key withString:@","];
    }
    
    strAdd = [strAdd stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    NSInteger count;
    count = 0;
    if(strAdd.length == 0)
        return 0;
    else{
        NSArray *arr = [strAdd componentsSeparatedByString:@","];
        for(NSString *str in arr){
            if([str integerValue]>0 && [str integerValue]<1001)
                count = count + [str integerValue];
            else if ([str integerValue] < 0){
                [NSException raise:@"negatives not allowed" format:@"negatives not allowed"];
            }
            else{
                count = count + 0;
            }
        }
            
        return count;
    }
    return 0;
}
@end
