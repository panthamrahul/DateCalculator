//
//  Sweater.m
//  DateCalculator
//
//  Created by Pantham Rahul on 6/4/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import "Sweater.h"

@implementation Sweater
-(instancetype)initWithSweaterType:(SweaterType)type{
    if((self = [super init])){
        _type = type;
    }
    return self;
}
-(NSString *)description{
    switch (_type) {
        case SweaterTypeBlue:
            return @"BlueSweater";
            break;
        case  SweaterTypeGrey:
            return @"GreySweater";
        
    }
    

}
@end
