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
    
    if(strAdd.length > 3 && [strAdd hasPrefix:@"//"]){
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
            count = count + [str integerValue];
        }
            
        return count;
    }
    return 0;
}
@end
