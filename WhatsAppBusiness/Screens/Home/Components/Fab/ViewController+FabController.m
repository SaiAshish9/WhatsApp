//
//  ViewController+FabController.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 21/04/22.
//

#import "ViewController+FabController.h"

@implementation ViewController (FabController)

- (void) addFabContainer {
    UIView *fab = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width * 0.78 , self.view.frame.size.height * 0.87, 60 , 60)];
    fab.backgroundColor = [UIColor colorNamed:  @"fab"];
    fab.layer.cornerRadius = 30.0;
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleSingleTap:)];
    [fab addGestureRecognizer:singleFingerTap];
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    UIImage *image = [UIImage imageNamed:@"fabIcon" inBundle:bundle compatibleWithTraitCollection:nil];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.frame = CGRectMake(0, 0, 36, 36);
    imageView.center = CGPointMake(fab.frame.size.width  / 2,
                                     fab.frame.size.height / 2);
    [fab addSubview:imageView];
    [self.view addSubview:fab];
}

- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
    CGPoint location = [recognizer locationInView:[recognizer.view superview]];
    NSLog(@"%@",NSStringFromCGPoint(location));
}

@end
