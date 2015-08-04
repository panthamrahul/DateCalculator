//
//  Dog.m
//  DateCalculator
//
//  Created by Pantham Rahul on 6/11/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import "Dog.h"

@implementation Dog
@synthesize name=_name;
@synthesize description = _description;
-(id)copyWithZone:(NSZone *)zone {
    Dog *copy =  [[Dog alloc] init];
    return copy;
}
@end
