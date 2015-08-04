//
//  person.h
//  DateCalculator
//
//  Created by Pantham Rahul on 6/4/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Sweater;
@interface person : NSObject
@property(nonatomic,strong)Sweater *sweater;
@property(nonatomic,strong)NSString *name;
-(instancetype)initWithName:(NSString *) name;
-(NSString *)Quote;
@end

