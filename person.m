//
//  person.m
//  DateCalculator
//
//  Created by Pantham Rahul on 6/4/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import "person.h"

@implementation person
-(instancetype)initWithName:(NSString *) name{
    if((self = [super init])){
        _name = name;
        _sweater = nil;
    }
    return self;
}
-(NSString *)Quote{
    return [[NSString alloc]initWithFormat:@"%@ says Give me my sweater back!",_name];
}
-(NSString *)description{
    if(_sweater){
        return [NSString stringWithFormat:@"%@ (wearing %@)",_name,_sweater];
    }
    else{
        return _name;
    }
}
-(void)dealloc{
    NSLog(@"%@ deallocated ",self);
    }
@end
