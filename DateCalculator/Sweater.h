//
//  Sweater.h
//  DateCalculator
//
//  Created by Pantham Rahul on 6/4/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import <Foundation/Foundation.h>
@class person;
typedef NS_ENUM(unsigned char, SweaterType){
    SweaterTypeGrey,
    SweaterTypeBlue
};
@interface Sweater : NSObject
@property (assign)SweaterType type;
@property (nonatomic,weak)person *Person;
-(instancetype)initWithSweaterType:(SweaterType)type;
-(void)dealloc;
@end
