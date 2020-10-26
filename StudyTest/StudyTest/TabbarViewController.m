//
//  TabbarViewController.m
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import "TabbarViewController.h"
#import "BHService.h"

@interface TabbarViewController ()

@end

@implementation TabbarViewController

- (instancetype)init {
    self = [super init];
    if(self){
        id<ModuleAServiceProtocol> moduleAService = [[BeeHive shareInstance] createService:@protocol(ModuleAServiceProtocol)];
        moduleAService.titleStr = @"moduleAService";
        UIViewController *moduleA = [moduleAService getModuleAMainViewController];
        if([moduleA isKindOfClass:[UIViewController class]]) {
            [self registerViewController:(UIViewController *)moduleA title:@"moduleA" iconName:nil];
        }
        
        id<ModuleBServiceProtocol> moduleBService = [[BeeHive shareInstance] createService:@protocol(ModuleBServiceProtocol)];
        UIViewController *moduleB = [moduleBService getModuleBMainViewController];
        if ([moduleB isKindOfClass:[UIViewController class]]) {
            [self registerViewController:(UIViewController *)moduleB title:@"moduleB" iconName:nil];
        }
        
        
        id<ModuleCServiceProtocol> moduleC = [[BeeHive shareInstance] createService:@protocol(ModuleCServiceProtocol)];
        moduleC.titleStr = @"chuanzhi";
        if ([moduleC isKindOfClass:[UIViewController class]]) {
            [self registerViewController:(UIViewController *)moduleC title:@"moduleC" iconName:nil];
        }
        
        
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}


-(void)registerViewController:(UIViewController *)vc title:(NSString *)title iconName:(NSString *)iconName
{
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateNormal];
    [nav.tabBarItem setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blueColor]} forState:UIControlStateSelected];

    nav.tabBarItem.title = title;
    
    NSMutableArray *ctrls = self.viewControllers.mutableCopy;
    if (!ctrls) {
        ctrls = @[].mutableCopy;
    }
    [ctrls addObject:nav];
    self.viewControllers = ctrls;
}

@end
