//
//  ViewController+TableViewContainer.h
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 08/05/22.
//

#import "ViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewController (TableViewContainer)  <UITableViewDelegate, UITableViewDataSource>

-(void)configureTableView: (UIView *) view;

@end

NS_ASSUME_NONNULL_END
