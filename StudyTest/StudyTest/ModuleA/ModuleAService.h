//
//  ModuleAService.h
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import <Foundation/Foundation.h>
#import "BHService.h"

NS_ASSUME_NONNULL_BEGIN

@interface ModuleAService : NSObject<ModuleAServiceProtocol>


@property (nonatomic, copy) NSString *titleStr;
- (UIViewController *)getModuleAMainViewController;
- (UIViewController *)getModuleAOneViewController;


@end

NS_ASSUME_NONNULL_END
