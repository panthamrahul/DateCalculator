//
//  AppDelegate.m
//  DateCalculator
//
//  Created by Pantham Rahul on 5/31/15.
//  Copyright (c) 2015 Pantham Rahul. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "person.h"
#import "Sweater.h"
#import "Freckles.h"
#import "Vickie.h"
#import "Stephani.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    void (^simpleBlock)(void);
    simpleBlock = ^{
        NSLog(@"This is a block");
    };
    simpleBlock();
   
 double (^multiplyTwoValues)(double, double)  = ^(double firstValue,double secondValue){
        return firstValue*secondValue;
    };
    double resulth = multiplyTwoValues(2,4);
    NSLog(@"the resulth is %f",resulth);
    ViewController * vi = [[ViewController alloc]init];
    person *ray=[[person alloc]initWithName:@"RAY"];
    person *vicki=[[person alloc]initWithName:@"Vicki"];
    Sweater *blueSweater =[[Sweater alloc]initWithSweaterType:SweaterTypeBlue];
    Sweater *greySweater =[[Sweater alloc]initWithSweaterType:SweaterTypeGrey];
    ray.sweater=blueSweater;
    blueSweater.Person=ray;
    vicki.sweater=greySweater;
    greySweater.Person=vicki;
    ray.sweater=greySweater;
    greySweater.Person=ray;
    blueSweater.Person=nil;
    ray.sweater = nil;
    NSString *quote =[ray Quote];
    NSLog(@"Quote:%@",quote);
    
    Freckles *freck = [[Freckles alloc]init];
    Stephani *step =[[Stephani alloc] init];
    freck.delegate = step;
    [freck hasToGoBathroom];
    [freck isHungary];
    [freck runTests];
    vi.hisAge = 34;
    vi.hisName = @"RYAN";
    BOOL shouldDate = [vi shouldHeDateIfHerAgeIs:24];
    float clesius =[vi degreesFarenheitToCelsius:232.0];
    NSLog(@"clesiusconversion:%f",clesius);
    if(shouldDate){
        NSLog(@" %@ It's OK to date Hayden!",vi.hisName);
    }
    else{
        NSLog(@"%@ You Shouldn't date Hayden, you old man !",vi.hisName)
        
        ;
    }
    
    NSString * drink =@"beer";
    int bottles = 99;
    NSString * song = [NSString stringWithFormat:@"%d bottles of %@ on the wall..%d bottles  of %@",bottles,drink,bottles,drink];
    song = [song stringByAppendingString:@"take one down,pass it around...."];
    bottles--;
    song =[song stringByAppendingFormat:@"%d bottles of %@ on the wall!",bottles,drink];
    NSLog(@"%@",song);
    NSString *vikiSong =  [song stringByReplacingOccurrencesOfString:@"beer" withString:@"wine"];
    NSLog(@"%@",vikiSong);
    if([drink isEqualToString:@"beer"]){
        NSLog(@"hmm beer");
    }else{
        NSLog(@"get me some beer");
    }
    NSString *toCompare =[NSString stringWithFormat:@"passing at bar"];
    if([drink compare:toCompare] == NSOrderedAscending){
        NSLog(@"%@ comes before %@",drink,toCompare);
        
    }if([drink compare:toCompare] == NSOrderedDescending){
        NSLog(@"%@ comes after %@",drink,toCompare);
    }
    NSString *myIntString = @"1234";
    NSString *myFloatString =@"3.1415926";
    
    int myInt = [myIntString integerValue];
    float myFloat = [myFloatString floatValue];
    NSLog(@"%d is %f",myInt,myFloat);
    NSString *awesomeDudesList = @"rahul pantham,rohit,dheeraj";
    NSArray *awesomeDudes = [awesomeDudesList componentsSeparatedByString:@","];
    for(NSString *awesomedude in awesomeDudes){
        NSLog(@"%@",awesomedude);
    }
    NSRange rahulrange =NSMakeRange(6, 7);
    NSString *rahulLastName =[awesomeDudesList substringWithRange:rahulrange];
    NSLog(@"%@",rahulLastName);
    NSRange panthamrange =[awesomeDudesList rangeOfString:@"pantham"];
    NSLog(@"starts at range %ld and is %ld charectors long",panthamrange.location,panthamrange.length);
    int intervals =10000;
    NSString *msg1 = @"";
    CFTimeInterval start1 = CACurrentMediaTime();
    for(int i=0;i< intervals;i++){
        msg1 =[NSString  stringWithFormat:@"%@ %d",msg1,i];
    }
    CFTimeInterval end1 = CACurrentMediaTime();
    NSLog(@"NSMutableString Time: %f",end1 - start1
          );
    
    NSMutableString *msg2 = [NSMutableString string];
    for (int i=0; i < intervals; i++) {
        [msg2 appendFormat:@"%d",i];
    }
    NSArray * videoGames = [NSArray arrayWithObjects:@"Fallout 2",@"Dues Ex",@"Civilization v",@"Final Fantasy IV",nil];
    NSString *favouriteGame = [videoGames objectAtIndex:1];
    NSLog(@"Favourite game:%@",favouriteGame);
    for (int i=0; i<videoGames.count; ++i) {
        NSString *videoGame = [videoGames objectAtIndex:i];
        NSLog(@"%d:%@",i,videoGame);
    }
    [videoGames enumerateObjectsUsingBlock:^(id obj,NSUInteger idx,BOOL * stop){
        NSString *videoGame = (NSString *)obj;
        NSLog(@"%@ %ld ",videoGame,(unsigned long)idx);
    }];
    NSMutableArray* thingsYouWantToDo =[@[@"Visit China",@"Go Skydiving",@"Learn to Ballroom  Dance"]mutableCopy];
    [thingsYouWantToDo addObject:@"Run a Marathon"];
    [thingsYouWantToDo insertObject:@"stop worrying so much" atIndex:1];
    [thingsYouWantToDo replaceObjectAtIndex:0 withObject:@"Learn Chineese"];
    [thingsYouWantToDo removeObject:@"Learn to Ballroom  Dance"];
    [thingsYouWantToDo removeObjectAtIndex:2];
    NSLog(@"%@",thingsYouWantToDo);
    [thingsYouWantToDo sortUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    NSLog(@"%@",thingsYouWantToDo);
    NSString *thingsString = [thingsYouWantToDo componentsJoinedByString:@","];
    NSLog(@"%@",thingsString);
    for(NSString *thing in [thingsYouWantToDo copy]){
        if([thing hasPrefix:@"Run"]){
            [thingsYouWantToDo addObject:@"Run a 5k"];
        }
    }
        NSLog(@"%@",thingsYouWantToDo);
        for (int i = thingsYouWantToDo.count -1; i>=0;i--) {
            NSString *thing = thingsYouWantToDo[i];
            [thingsYouWantToDo addObject:@"Run a 5k"];
        }
         NSLog(@"%@",thingsYouWantToDo);
    NSDictionary *dogDict =[NSDictionary dictionaryWithObjectsAndKeys:@"Rahul",@"pantham",@"Rohit",@"Kopisetty", nil];
    NSLog(@"%@",[dogDict valueForKey:@"pantham"]);
    NSNumber *frecklesBarks = [NSNumber numberWithInt:1];
    NSNumber *scampiBarks =[NSNumber numberWithInt:9999];
    NSNumber *dustyBarks =[NSNumber numberWithInt:20];
    NSDictionary *barkDict = [NSDictionary dictionaryWithObjectsAndKeys:frecklesBarks,@"Freckles",scampiBarks,@"Scampi",dustyBarks,@"Dusty",nil];
//    scampiBarks =[NSNumber numberWithInt:10000];
//    [barkDict setValue:scampiBarks forKey:@"Scampi"];
    for(NSString *key in [barkDict allKeys]){
        NSNumber *value = barkDict[key];
        NSLog(@"%@: %d",key,[value intValue]);
    }
    [barkDict enumerateKeysAndObjectsUsingBlock:^(NSString *key, NSNumber*
 value, BOOL *stop) {
        NSLog(@"%@: %d",key,[value intValue]);

    }];
    // Override point for customization after application launch.
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
