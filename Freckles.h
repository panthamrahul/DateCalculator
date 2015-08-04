//
//  Freckles.h
//  DateCalculator
//
//  Created by Pantham Rahul on 6/4/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Freckles;
@protocol frecklesDelegate <NSObject>;
@required
-(void)freckesDidSmackLips:(Freckles *)freckles;
-(void)freckesDidLookHope:(Freckles *)freckles;
@end
@interface Freckles : NSObject
@property(nonatomic,strong) id <frecklesDelegate> delegate;
@property (nonatomic,copy)void (^block)(id,NSUInteger,BOOL *);
-(void)hasToGoBathroom;
-(void)isHungary;
-(void)runTests;
@end
