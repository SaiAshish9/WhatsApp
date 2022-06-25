//
//  ViewController.h
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 17/04/22.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@interface ViewController : UIViewController 

@property (strong,nonatomic) UITableView *table;
@property (strong,nonatomic) NSArray     *content;
@property (strong,nonatomic) NSArray  *desc;
@property (strong,nonatomic) NSArray  *timeline;
@property (strong,nonatomic) NSArray  *thumbnails;
@property int currentHomePageIndex;

@end

