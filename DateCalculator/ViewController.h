//
//  ViewController.h
//  DateCalculator
//
//  Created by Pantham Rahul on 5/31/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(void) setHisAge:(float)hisAge;
-(float)degreesFarenheitToCelsius:(float)degreeFarenheit;
-(instancetype)initWithAge:(float)hisAge hisName:(NSString *)hisName;
-(BOOL)shouldHeDateIfHerAgeIs:(float)herAge;
@property (assign) float hisAge;
@property (strong,nonatomic) NSString *hisName;
@end

