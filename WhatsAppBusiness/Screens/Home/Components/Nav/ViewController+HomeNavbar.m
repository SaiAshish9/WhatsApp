//
//  ViewController+HomeNavbar.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 21/04/22.
//

#import "ViewController+HomeNavbar.h"

@implementation ViewController (HomeNavbar)

- (void) addNavContainer {
    UIView *navbar = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height * 0.17)];
//    self.view.bound.size.width
    navbar.backgroundColor = [UIColor colorNamed:  @"nav"];
    [self.view addSubview:navbar];
}

@end
