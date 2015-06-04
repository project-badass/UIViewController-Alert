//
//  UIViewController+Alert.m
//
//  Created by Ameesh Kapoor on 3/22/15.
//

#import "UIViewController+Alert.h"
#import <UIActionSheet+Blocks/UIActionSheet+Blocks.h>

@implementation UIViewController (Alert)

- (void)showAlertWithTitle:(NSString *)title andMessage:(NSString *)message {
    if ([UIAlertController class]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                       message:message
                                                                preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction
                             actionWithTitle:@"OK"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action) {
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                             }];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        [[[UIAlertView alloc] initWithTitle:title message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];
        
    }
}

- (void)showActionSheetWithTitle:(NSString *)title message:(NSString *)message options:(NSArray *)options handlers:(NSArray *)handlers {
    if ([UIAlertController class]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:title
                                                                       message:message
                                                                preferredStyle:UIAlertControllerStyleActionSheet];
        for (int i = 0; i < options.count; i++) {
            NSString *optionTitle = options[i];
            UIAlertAction *action = [UIAlertAction
                                              actionWithTitle:optionTitle
                                              style:UIAlertActionStyleDefault
                                              handler:^(UIAlertAction * action) {
                                                  void (^handler)(void) = handlers[i];
                                                  handler();
                                              }];
            
            [alert addAction:action];
        }
        
        UIAlertAction *cancel = [UIAlertAction
                                 actionWithTitle:@"Cancel"
                                 style:UIAlertActionStyleCancel
                                 handler:nil];
        [alert addAction:cancel];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        [UIActionSheet showInView:self.view
                        withTitle:title
                cancelButtonTitle:@"Cancel"
           destructiveButtonTitle:nil
                otherButtonTitles:options
                         tapBlock:^(UIActionSheet *actionSheet, NSInteger buttonIndex) {
                             void (^handler)(void) = handlers[buttonIndex];
                             handler();
                         }];
    }
}

@end

