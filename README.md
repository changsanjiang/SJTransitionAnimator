# SJTransitionAnimator
Modal自定义转场动画
    
<img src = "https://github.com/changsanjiang/SJTransitionAnimator/blob/master/SJTransitionAnimator/defaultAnimation.gif" width = "40%" />

```
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
```
