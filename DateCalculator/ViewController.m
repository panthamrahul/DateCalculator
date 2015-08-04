//
//  ViewController.m
//  DateCalculator
//
//  Created by Pantham Rahul on 5/31/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
    @synthesize hisName,hisAge;


-(BOOL)shouldHeDateIfHerAgeIs:(float)herAge{
    float minAgeToDate = hisAge / 2 + 7;
    return herAge > minAgeToDate;
}
-(float)degreesFarenheitToCelsius:(float)degreeFarenheit{
    float celsius =(float) (0.55*(degreeFarenheit-32.0));
    return celsius;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
    NSLog(@"%@  deallocated",self);
    
}

@end
