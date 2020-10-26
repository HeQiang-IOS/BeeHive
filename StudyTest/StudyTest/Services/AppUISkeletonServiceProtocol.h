//
//  AppUISkeletonServiceProtocol.h
//  StudyTest
//
//  Created by 何强 on 2020/10/26.
//

#import <Foundation/Foundation.h>
#import <BHServiceProtocol.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AppUISkeletonServiceProtocol <NSObject, BHServiceProtocol>

- (UIViewController *)mainViewController;

@end

NS_ASSUME_NONNULL_END
