//
//  ViewController+TableViewContainer.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 07/05/22.
//

#import "TableViewContainer.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.content = @[ @"Monday", @"Tuesday", @"Wednesday",@"Thursday",@"Friday",@"Saturday",@"Sunday"];
}

-(void)cofigureTableView:(UIView *) view
{
    self.table = [[UITableView alloc] initWithFrame:view.bounds style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    [view addSubview:self.table];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.content.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cell";

    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:cellIdentifier];

    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];

    }
    cell.textLabel.text =  [self.content objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSLog(@"title of cell %@", [self.content objectAtIndex:indexPath.row]);
}

@end
