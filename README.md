# SJTransitionAnimator
Modal自定义转场动画
```
- (void)clickedModalBtn {
    ModalViewController *pvc = [ModalViewController new];
    self.animator.modalViewController = pvc;
//    /*!
//     *  custom your animation
//     */
//    [self.animator presentedAnimation:^(id<UIViewControllerContextTransitioning>  _Nonnull transitionContext) {
//        // ...
//    } dismissedAnimation:^(id<UIViewControllerContextTransitioning>  _Nonnull transitionContext) {
//        // ...
//    }];
    [self presentViewController:pvc animated:YES completion:nil];
}
```
