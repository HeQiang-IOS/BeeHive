//
//  ModuleAModule.m
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import "ModuleAModule.h"
#import "BHService.h"

@BeeHiveMod(ModuleAModule)
@interface ModuleAModule()<BHModuleProtocol>

@end

@implementation ModuleAModule

- (void)modSetUp:(BHContext *)context {
    NSLog(@"modSetup");
}

- (void)modInit:(BHContext *)context {
    NSLog(@"modInit");
}
- (void)modSplash:(BHContext *)context {
    NSLog(@"modSplash");
}

- (void)modContinueUserActivity:(BHContext *)context {
//    NSUserActivity *userActivity = context.userActivityItem.userActivity;
//    if ([userActivity.activityType isEqualToString:@"com.company.app.moduleA.one"]) {
//
//        id<ModuleAServiceProtocol> moduleAService = [[BeeHive shareInstance] createService:@protocol(ModuleAServiceProtocol)];
//        [moduleAService pushToModuleAOneViewController];
//    }
}

@end
