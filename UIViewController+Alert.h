//
//  UIViewController+Alert.h
//
//  Created by Ameesh Kapoor on 3/22/15.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Alert)

- (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message;
- (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message andCancelButtonTitle:(NSString *)cancelButtonTitle;
- (void)showActionSheetWithTitle:(NSString *)title message:(NSString *)message options:(NSArray *)options handlers:(NSArray *)handlers;
- (void)showActionSheetWithTitle:(NSString *)title message:(NSString *)message options:(NSArray *)options handlers:(NSArray *)handlers presentFromView:(UIView *)presentingView;
- (void)showActionSheetWithTitle:(NSString *)title message:(NSString *)message options:(NSArray *)options handlers:(NSArray *)handlers presentFromRect:(CGRect)presentingRect inView:(UIView*)presentingView;
@end

