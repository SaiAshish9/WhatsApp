#import <UIKit/UIKit.h>
#import "TableViewContainer.h"

NS_ASSUME_NONNULL_BEGIN

@interface TableViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (strong,nonatomic) UITableView *table;
@property (strong,nonatomic) NSArray     *content;
-(void)cofigureTableView:(UIView*)view;


@end

NS_ASSUME_NONNULL_END
