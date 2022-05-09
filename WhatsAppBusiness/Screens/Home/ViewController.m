#import "ViewController.h"
#import "ViewController+HomeNavbar.h"
#import "ViewController+FabController.h"
#import "ViewController+ScrollView.h"
 
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorNamed:  @"home"];
    [self addNavContainer];
    [self addScrollViewContainer];
    [self addFabContainer];
}


@end
