//
//  ViewController+OneSidedBorder.h
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 25/04/22.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewController (OneSidedBorder)

-(void) addTopBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth view:(UIView *)view;
-(void) addBottomBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth view:(UIView *)view;
-(void) addLeftBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth view:(UIView *)view;
-(void) addRightBorderWithColor:(UIColor *)color andWidth:(CGFloat)borderWidth view:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
