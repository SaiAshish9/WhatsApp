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
    navbar.backgroundColor = [UIColor colorNamed:  @"nav"];
    
    UILabel *label = [self addLabel];
    UIImageView *searchIcon = [self addSearchIcon];
    UIImageView *ellipsisIcon = [self addEllipsisIcon];
    UIImageView *cameraIcon = [self addCameraIcon];

    [navbar addSubview:label];
    [navbar addSubview:searchIcon];
    [navbar addSubview:ellipsisIcon];
    [navbar addSubview:cameraIcon];
    [self.view addSubview:navbar];
}

-(UILabel*) addLabel {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(18, 63, self.view.frame.size.width*0.6, 18)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentLeft;
    label.textColor = [UIColor colorNamed:@"silver"];
    label.numberOfLines = 1;
    label.text = @"WhatsApp Business";
    label.font = [UIFont fontWithName:@"Assistant-SemiBold" size:18];
    return label;
    //    label.font = [UIFont systemFontOfSize:18 weight: UIFontWeightSemibold];
    //    self.view.bound.size.width
    //  https://developer.apple.com/sf-symbols/
}

-(UIImageView*) addSearchIcon {
    UIImage *image = [UIImage systemImageNamed:@"magnifyingglass" ];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.tintColor = [UIColor colorNamed:  @"silver"];
    imageView.frame = CGRectMake(self.view.frame.size.width * 0.78 + 18, 62, imageView.frame.size.width, imageView.frame.size.height);
    return imageView;
}

-(UIImageView*) addEllipsisIcon {
    UIImage *image = [UIImage systemImageNamed:@"ellipsis" ];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.tintColor = [UIColor colorNamed:  @"silver"];
    imageView.frame = CGRectMake(self.view.frame.size.width * 0.78 + 50, 68, imageView.frame.size.width, imageView.frame.size.height);
    imageView.transform = CGAffineTransformMakeRotation(-M_PI / 2);
    return imageView;
}

-(UIImageView*) addCameraIcon {
    UIImage *image = [UIImage systemImageNamed:@"camera.fill" ];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    imageView.tintColor = [UIColor colorNamed:  @"silver"];
    imageView.frame = CGRectMake(13, 108, imageView.frame.size.width, imageView.frame.size.height);
    return imageView;
}

@end
