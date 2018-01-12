//
//  SJNavTransitionAnimator.m
//  SJTransitionAnimator
//
//  Created by BlueDancer on 2017/12/19.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "SJNavTransitionAnimator.h"

@interface SJNavTransitionAnimator ()<UINavigationControllerDelegate,
                                      UIViewControllerInteractiveTransitioning,
                                      UIViewControllerAnimatedTransitioning>

@end




#pragma mark -

@implementation SJNavTransitionAnimator

- (nullable id <UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController
                                   interactionControllerForAnimationController:(id <UIViewControllerAnimatedTransitioning>) animationController {
    return self;
}

- (nullable id <UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController
                                            animationControllerForOperation:(UINavigationControllerOperation)operation
                                                         fromViewController:(UIViewController *)fromVC
                                                           toViewController:(UIViewController *)toVC {
    return self;
}

- (void)startInteractiveTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
}

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    
}

@end
