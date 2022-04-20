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
        [self.view addSubview:fab];
}

- (void)handleSingleTap:(UITapGestureRecognizer *)recognizer
{
  CGPoint location = [recognizer locationInView:[recognizer.view superview]];
  NSLog(@"%@",NSStringFromCGPoint(location));
}


@end
