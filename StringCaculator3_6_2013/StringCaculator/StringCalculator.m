//
//  StringCalculator.m
//  StringCaculator
//
//  Created by Truong Tran  The on 6/3/13.
//  Copyright (c) 2013 Thett. All rights reserved.
//

#import "StringCalculator.h"

@implementation StringCalculator

-(NSInteger) Add :(NSString*) str{
    
    NSArray * arr = [str componentsSeparatedByString:@","];
    NSInteger count;
    count = 0;
    if([str isEqualToString:@""])
        return 0;
    else
    {
        for(NSString * string in arr){
            count = count+ [string integerValue];
        }
        return count;
    }
    return 0;
}
@end
