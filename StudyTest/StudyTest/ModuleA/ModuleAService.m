//
//  ModuleAService.m
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import "ModuleAService.h"
#import "ModuleAViewController.h"
#import "ModuleAOneViewController.h"
@BeeHiveService(ModuleAServiceProtocol, ModuleAService)
@implementation ModuleAService

- (UIViewController *)getModuleAMainViewController{
    NSLog(@"%@", self.titleStr);
    return [ModuleAViewController new];
}

- (UIViewController *)getModuleAOneViewController {
    return [ModuleAOneViewController new];
}

@end
