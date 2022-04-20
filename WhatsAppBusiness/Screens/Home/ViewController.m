//
//  ViewController.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 17/04/22.
//

#import "ViewController.h"
#import "ViewController+HomeNavbar.h"
#import "ViewController+FabController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorNamed:  @"home"];
    [self addNavContainer];
    [self addFabContainer];
}

@end
