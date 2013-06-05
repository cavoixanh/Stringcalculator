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
    
    //NSCharacterSet *character = ;
    addString = [addString stringByReplacingOccurrencesOfString:@"\n" withString:@","];
    NSArray *arr = [addString componentsSeparatedByString:@","];
    NSInteger count;
    count = 0;
    if([addString isEqualToString:@""])
        return 0;
    else{
        for(NSString *string in arr){
            count = count + [string integerValue];
        }
        return count;
    }
    
    return 0;
}
@end
