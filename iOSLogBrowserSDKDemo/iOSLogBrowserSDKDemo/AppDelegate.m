//
//  AppDelegate.m
//  QuickTraceiOSLoggerDemo
//
//  Created by pcjbird on 2018/3/28.
//  Copyright © 2018年 Zero Status. All rights reserved.
//
#import <XLFacility/XLFacilityMacros.h>
#import <iOSLogBrowserSDK/iOSLogBrowserSDK.h>
#import <Reachability/Reachability.h>

#import "AppDelegate.h"

@interface AppDelegate ()

@property(nonatomic, assign) BOOL started;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.started = NO;
    Reachability* reachability = [Reachability reachabilityForLocalWiFi];
    if([reachability isReachable])
    {
        [self start];
    }
    __weak typeof(self) weakSelf = self;
    reachability.reachableBlock = ^(Reachability *reachability) {
        NSLog(@"%@", @"网络可用");
        __strong typeof(self) strongSelf = weakSelf;
        if(!strongSelf) return;
        if(!strongSelf.started)
        {
            [strongSelf start];
        }
    };
    reachability.unreachableBlock = ^(Reachability *reachability) {
        NSLog(@"%@", @"网络不可用");
    };
    [reachability startNotifier];
    return YES;
}

-(void) start
{
    iOSLogBrowserOption* option = [iOSLogBrowserOption defaultOption];
    option.suspendInBackground = YES;
    [iOSLogBrowserSDK startWithOption:option];
    
    XLOG_INFO(@"%@", @"您正在使用 iOS 局域网日志查看服务！");
    self.started = YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
