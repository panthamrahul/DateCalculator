//
//  Freckles.m
//  DateCalculator
//
//  Created by Pantham Rahul on 6/4/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import "Freckles.h"

@implementation Freckles
@synthesize delegate=_delegate;


-(void)hasToGoBathroom{
    [_delegate freckesDidSmackLips:self];
}
-(void)isHungary{
    [_delegate freckesDidLookHope:self];
}
-(void)runTests{
    
    void(^MyBlock) (id ,NSUInteger,BOOL*) = ^(id obj,NSUInteger idx,BOOL *stop){
        NSLog(@"videoGame1:%@",(NSString *)obj);
    };
    BOOL stop;
    MyBlock(@"path of exicle",0,&stop);
    NSArray *videoGames =@[@"Fallout 2",@"Deus Ex",@"Final Fantasy IV"];
    [videoGames enumerateObjectsUsingBlock:MyBlock];
    [videoGames enumerateObjectsUsingBlock: ^(id obj,NSUInteger idx,BOOL *stop){
        NSLog(@"videoGame2:%@",(NSString *)obj);
    } ];
    [self doSomethingWithBlock:^(id obj,NSUInteger idx,BOOL *stop){
        NSLog(@"done");
    }];

}
-(void)doSomethingWithBlock:(void(^)(id,NSUInteger,BOOL *))block{
    self.block=block;
    [self performSelector:@ selector(afteronesecond) withObject:nil afterDelay:1.0];
}
-(void)afteronesecond{
    BOOL stop;
    self.block(@"path of exit",0,&stop);
}
@end
