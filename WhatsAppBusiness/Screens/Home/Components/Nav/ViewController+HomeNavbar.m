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
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(18, 27, self.view.frame.size.width*0.6, 90)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.textColor = [UIColor colorNamed:@"silver"];
    label.numberOfLines = 1;
    label.text = @"WhatsApp Business";
    label.font = [UIFont fontWithName:@"Assistant-SemiBold" size:18];
//    label.font = [UIFont systemFontOfSize:18 weight: UIFontWeightSemibold];
    [navbar addSubview:label];
    [self.view addSubview:navbar];
}

@end
