//
//  SJTransitionAnimator.h
//  SJTransitionAnimator
//
//  Created by BlueDancer on 2017/7/6.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^_Nullable AnimationBlockType)(id<UIViewControllerContextTransitioning> transitionContext);

@interface SJTransitionAnimator : NSObject

/*!
 *  default is 0.5;
 */
@property (nonatomic, assign, readwrite) NSTimeInterval duration;

/*!
 *  Modal的视图
 */
@property (nonatomic, weak, readwrite) UIViewController *modalViewController;

- (instancetype)initWithModalViewController:(UIViewController *)viewController;

/*!
 *  注意  retain count
 */
- (void)presentedAnimation:(AnimationBlockType)pBlock dismissedAnimation:(AnimationBlockType)dBlock;

@end

NS_ASSUME_NONNULL_END
