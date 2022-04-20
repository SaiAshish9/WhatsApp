//
//  ViewController.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 17/04/22.
//

#import "ViewController.h"
#import "ViewController+HomeNavbar.h"

@interface ViewController ()

@end

@implementation ViewController


- (void) addFabContainer {
    //    UIView *fab = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height * 0.17)];
    ////    self.view.bound.size.width
    //    fab.backgroundColor = [UIColor colorNamed:  @"fab"];
    //    [self.view addSubview:fab];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorNamed:  @"home"];
    [self addNavContainer];
}


@end
