//
//  ModuleAServiceProtocol.h
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import <Foundation/Foundation.h>

#import <BHServiceProtocol.h>


NS_ASSUME_NONNULL_BEGIN

@protocol ModuleAServiceProtocol <NSObject, BHServiceProtocol>
@property (nonatomic, copy) NSString *titleStr;
- (UIViewController *)getModuleAMainViewController;

- (UIViewController *)getModuleAOneViewController;
@end

NS_ASSUME_NONNULL_END
