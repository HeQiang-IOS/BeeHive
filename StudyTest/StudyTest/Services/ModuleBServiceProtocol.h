//
//  ModuleBServiceProtocol.h
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import <Foundation/Foundation.h>
#import <BHServiceProtocol.h>
NS_ASSUME_NONNULL_BEGIN

@protocol ModuleBServiceProtocol <NSObject, BHServiceProtocol>
- (UIViewController *)getModuleBMainViewController;

- (UIViewController *)getModuleBOneViewController;
@end

NS_ASSUME_NONNULL_END
