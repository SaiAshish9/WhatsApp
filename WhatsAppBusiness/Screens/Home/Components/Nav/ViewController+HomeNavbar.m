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
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(18, 63, self.view.frame.size.width*0.6, 18)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.textColor = [UIColor colorNamed:@"silver"];
    label.numberOfLines = 1;
    label.text = @"WhatsApp Business";
    label.font = [UIFont fontWithName:@"Assistant-SemiBold" size:18];
    //    label.font = [UIFont systemFontOfSize:18 weight: UIFontWeightSemibold];
    //  https://developer.apple.com/sf-symbols/
    
    UIImage *image1 = [UIImage systemImageNamed:@"magnifyingglass" ];
    UIImageView *imageView1 = [[UIImageView alloc] initWithImage:image1];
    imageView1.tintColor = [UIColor colorNamed:  @"silver"];
    imageView1.frame = CGRectMake(self.view.frame.size.width * 0.78 + 18, 62, imageView1.frame.size.width, imageView1.frame.size.height);
    [navbar addSubview:imageView1];
    
    UIImage *image = [UIImage systemImageNamed:@"ellipsis" ];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.tintColor = [UIColor colorNamed:  @"silver"];
    imageView.frame = CGRectMake(self.view.frame.size.width * 0.78 + 50, 68, imageView.frame.size.width, imageView.frame.size.height);
    imageView.transform = CGAffineTransformMakeRotation(-M_PI / 2);
    [navbar addSubview:imageView];
    [navbar addSubview:label];
    [self.view addSubview:navbar];
}

@end
