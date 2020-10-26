//
//  AppDelegate.m
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import "AppDelegate.h"
#import "BHService.h"
#import "TabbarViewController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [BHContext shareInstance].application = application;
    [BHContext shareInstance].launchOptions = launchOptions;
    [BHContext shareInstance].moduleConfigName = @"BeeHive.bundle/BeeHive";//可选，默认为BeeHive.bundle/BeeHive.plist
    [BHContext shareInstance].serviceConfigName = @"BeeHive.bundle/BHService";
    
    [BeeHive shareInstance].enableException = YES;
    [[BeeHive shareInstance] setContext:[BHContext shareInstance]];
    
    [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    
    TabbarViewController *tab = [[TabbarViewController alloc]init];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = tab;
    [self.window makeKeyAndVisible];
    return YES;
}




@end
