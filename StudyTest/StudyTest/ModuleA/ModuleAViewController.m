//
//  ModuleAViewController.m
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import "ModuleAViewController.h"
#import "ModuleAOneViewController.h"

@implementation ModuleAViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:self.view.bounds];
    label.backgroundColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20];
    label.text = @"Module A";
    [self.view addSubview:label];
    
    UIButton *btn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    btn.center = CGPointMake(self.view.center.x, self.view.center.y+60);
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [btn setTitle:@"Push" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor blueColor]];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

- (void)btnClick{
    
    ModuleAOneViewController *one = [ModuleAOneViewController new];
    [self.navigationController pushViewController:one animated:YES];
}


@end
