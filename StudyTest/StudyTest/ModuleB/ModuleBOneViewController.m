//
//  ModuleBOneViewController.m
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import "ModuleBOneViewController.h"

@interface ModuleBOneViewController ()

@end

@implementation ModuleBOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:self.view.bounds];
    label.backgroundColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"Module B One";
    [self.view addSubview:label];
    
//    [self createUserActivity];
}

//- (void)createUserActivity{
//    NSUserActivity *activity = [[NSUserActivity alloc]initWithActivityType:@"com.company.app.moduleB.one"];
//    activity.title = @"push to moduleB-one";
//    activity.keywords = [NSSet setWithObjects:@"testB", nil];
//    activity.eligibleForSearch = YES;
//    activity.eligibleForHandoff = NO;
//    [activity becomeCurrent];
//    self.userActivity = activity;
//}

@end
