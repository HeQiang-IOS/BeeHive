//
//  ModuleCViewController.m
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import "ModuleCViewController.h"
#import "BHService.h"
@BeeHiveService(ModuleCServiceProtocol, ModuleCViewController)
@interface ModuleCViewController ()<ModuleCServiceProtocol>

@end

@implementation ModuleCViewController
@synthesize titleStr=_titleStr;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:self.view.bounds];
    label.backgroundColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:20];
    label.text = self.titleStr;
    [self.view addSubview:label];
}


@end
