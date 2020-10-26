//
//  ModuleBService.m
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import "ModuleBService.h"
#import "ModuleBViewController.h"
#import "ModuleBOneViewController.h"
@BeeHiveService(ModuleBServiceProtocol, ModuleBService)
@implementation ModuleBService

- (UIViewController *)getModuleBMainViewController{
    return [ModuleBViewController new];
}

- (UIViewController *)getModuleBOneViewController{
    return [ModuleBOneViewController new];
}

@end
