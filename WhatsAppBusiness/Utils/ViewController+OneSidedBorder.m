//
//  ViewController+OneSidedBorder.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 25/04/22.
//

#import "ViewController+OneSidedBorder.h"

@implementation ViewController (OneSidedBorder)

- (void)addTopBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth view: (UIView*) view {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleBottomMargin];
    border.frame = CGRectMake(0, 0, view.frame.size.width, borderWidth);
    [view addSubview:border];
}

- (void)addBottomBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth view: (UIView*) view {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    [border setAutoresizingMask:UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin];
    border.frame = CGRectMake(0, view.frame.size.height - borderWidth, view.frame.size.width, borderWidth);
    [view addSubview:border];
}

- (void)addLeftBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth view: (UIView*) view {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    border.frame = CGRectMake(0, 0, borderWidth, view.frame.size.height);
    [border setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleRightMargin];
    [view addSubview:border];
}

- (void)addRightBorderWithColor:(UIColor *)color andWidth:(CGFloat) borderWidth view: (UIView*) view {
    UIView *border = [UIView new];
    border.backgroundColor = color;
    [border setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin];
    border.frame = CGRectMake(view.frame.size.width - borderWidth, 0, borderWidth, view.frame.size.height);
    [view addSubview:border];
}

@end
