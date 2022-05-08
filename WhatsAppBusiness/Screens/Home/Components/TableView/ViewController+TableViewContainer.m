//
//  ViewController+TableViewContainer.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 08/05/22.
//

#import "ViewController+TableViewContainer.h"

@implementation ViewController (TableViewContainer)

-(void)configureTableView:(UIView *) view
{
    self.content = @[ @"Monday", @"Tuesday", @"Wednesday",@"Thursday",@"Friday",@"Saturday",@"Sunday"];
    self.thumbnails = [NSArray arrayWithObjects:@"fabIcon", @"fabIcon",@"fabIcon", @"fabIcon",@"fabIcon", @"fabIcon",@"fabIcon", nil];
    self.table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    
    self.table.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.table];
}

@end
