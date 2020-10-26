//
//  ModuleBService.h
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import <Foundation/Foundation.h>
#import "BHService.h"

NS_ASSUME_NONNULL_BEGIN

@interface ModuleBService : NSObject<ModuleBServiceProtocol>
- (UIViewController *)getModuleBMainViewController;

- (UIViewController *)getModuleBOneViewController;

@end

NS_ASSUME_NONNULL_END
