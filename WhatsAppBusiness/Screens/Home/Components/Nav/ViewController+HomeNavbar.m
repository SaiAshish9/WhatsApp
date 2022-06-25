#import "ViewController+HomeNavbar.h"
#import "ViewController+OneSidedBorder.h"

@implementation ViewController (HomeNavbar)

- (void) addNavContainer {
    UIView *navbar = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width,self.view.frame.size.height * 0.17)];
    navbar.backgroundColor = [UIColor colorNamed:  @"nav"];
    
    UILabel *label = [self addNavLabel];
    UIImageView *searchIcon = [self addSearchIcon];
    UIImageView *ellipsisIcon = [self addEllipsisIcon];

    UIImageView *cameraIcon = [self addCameraIcon];
    UIView *cameraCont = [self addCameraContainer];
    cameraIcon.center = cameraCont.center;
    
    UIView *tab1 = [self addTabCont:0 nav:navbar title:@"CHATS"];
    UIView *tab2 = [self addTabCont:1 nav:navbar title:@"STATUS"];
    UIView *tab3 = [self addTabCont:2 nav:navbar title:@"CALLS"];
    
    [navbar addSubview:tab1];
    [navbar addSubview:tab2];
    [navbar addSubview:tab3];
    [navbar addSubview:cameraIcon];
    [navbar addSubview:cameraCont];
    [navbar addSubview:label];
    [navbar addSubview:searchIcon];
    [navbar addSubview:ellipsisIcon];
    [self.view addSubview:navbar];
}

-(UIView *) addTabCont: (int) index nav: (UIView *) navbar title: (NSString *) title {
    UIView *tabCont = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width * 0.13  + (self.view.frame.size.width * 0.29 * index), 102, self.view.frame.size.width * 0.29, 40)];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tabCont.frame.size.width, tabCont.frame.size.height)];
    label.backgroundColor = [UIColor clearColor];
    label.textAlignment = NSTextAlignmentCenter;
    NSString *textColor = index ==  0 ? @"fab": @"silver";
//    self.currentHomePageIndex - 1
    label.textColor = [UIColor colorNamed:textColor];
    label.numberOfLines = 0;
    label.text = title;
    label.font = [UIFont fontWithName:@"Assistant-SemiBold" size:16];
    [navbar addSubview:label];
    [label setCenter:tabCont.center];
//    tabCont.layer.borderColor =  [UIColor colorNamed:textColor].CGColor;
//    tabCont.layer.borderWidth= 3.0;
//    [tabCont setClipsToBounds:YES];
    NSString *borderColor = index == 0  ? @"fab": @"nav";
//    self.currentHomePageIndex - 1
    [self addBottomBorderWithColor:[UIColor colorNamed:borderColor] andWidth:2.7 view:tabCont];
    return tabCont;
}

-(UIView*) addCameraContainer {
    UIView *cameraCont = [[UIView alloc]initWithFrame:CGRectMake(0, 102, self.view.frame.size.width * 0.13, 40)];
    return cameraCont;
}

-(UILabel*) addNavLabel {
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
    return imageView;
}

@end
