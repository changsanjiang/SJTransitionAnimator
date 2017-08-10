//
//  ViewController.m
//  SJTransitionAnimator
//
//  Created by BlueDancer on 2017/7/6.
//  Copyright © 2017年 SanJiang. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"
#import "SJTransitionAnimator.h"

@interface ViewController ()

@property (nonatomic, strong, readonly) SJTransitionAnimator *animator;

@end

@implementation ViewController

@synthesize animator = _animator;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"Modal" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn sizeToFit];
    btn.center = self.view.center;
    [self.view addSubview:btn];
    
    
    [btn addTarget:self action:@selector(clickedModalBtn) forControlEvents:UIControlEventTouchUpInside];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)clickedModalBtn {
    ModalViewController *pvc = [ModalViewController new];
    self.animator.modalViewController = pvc;
//    /*!
//     *  custom your animation. If not set, the default mode will be used.
//     */
//    [self.animator presentedAnimation:^(id<UIViewControllerContextTransitioning>  _Nonnull transitionContext) {
//        // ...
//    } dismissedAnimation:^(id<UIViewControllerContextTransitioning>  _Nonnull transitionContext) {
//        // ...
//    }];
    [self presentViewController:pvc animated:YES completion:nil];
}

// MARK: lazy

- (SJTransitionAnimator *)animator {
    if ( _animator ) return _animator;
    _animator = [SJTransitionAnimator new];
    return _animator;
}
@end
