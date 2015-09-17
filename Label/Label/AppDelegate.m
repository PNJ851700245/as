//
//  AppDelegate.m
//  Label
//
//  Created by qianfeng on 15/7/27.
//  Copyright (c) 2015年 PNJ. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
-(void)dealloc
{
    self.window = nil;
    [super dealloc];
    //1233546587825
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 25, 200, 100)];
    label.text=@"I am a label";
    label.textColor=[UIColor purpleColor];
    label.textAlignment=NSTextAlignmentCenter;
    label.backgroundColor=[UIColor grayColor];
    label.adjustsFontSizeToFitWidth=YES;
    [self.window addSubview:label];
    [label release];
    
    UILabel *label2=[[UILabel alloc]initWithFrame:CGRectMake(25, 150, 300, 100)];
    label2.text=@"i am a good people you are a good people we are frident";
    label2.textColor=[UIColor purpleColor];
    label2.backgroundColor=[UIColor blueColor];
    label2.lineBreakMode=NSLineBreakByWordWrapping;
    label2.numberOfLines=4;
    label2.font=[UIFont fontWithName:@"Cochin-BoldItalic" size:18.f];
    label2.shadowColor=[UIColor greenColor];
    [self.window addSubview:label2];
    [label2 release];
    
    [self.window makeKeyAndVisible];
    return YES;
}
//应用即将失去活跃状态
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}
//应用已经进入后台
- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}
//应用即将进入前台
- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}
//应用进入已经进入活跃状态
- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}
//程序将要终结
- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
