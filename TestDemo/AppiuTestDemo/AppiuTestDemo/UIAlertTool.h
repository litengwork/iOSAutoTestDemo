//
//  UIAlertTool.h
//  UIAlertTools
//
//  Created by 李腾 on 15/12/4.
//  Copyright (c) 2015年 ___Mr.Lee___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIAlertTool : NSObject


/*
 * viewController  self 当前的viewController
 * title 提示
 * message 信息
 * cancel
 * other
 */

- (void)showAlertView:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitle:(NSString *)otherButtonTitle :(void (^)(void))confirm :(void (^)(void))cancle;;


/*
 * viewController  self 当前的viewController
 * title 提示
 * message 信息
 * cancel
 */

- (void)showAlertView:(UIViewController *)viewController title:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle :(void (^)(void))confirm :(void (^)(void))cancle;;

@end
