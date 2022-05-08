#import "TableViewContainer.h"
#import "CustomTableCell.h"

@interface TableViewController ()

@end

@implementation TableViewController {
    NSArray *tableData;
    NSArray *thumbnails;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)cofigureTableView:(UIView *) view
{
    self.content = @[ @"Monday", @"Tuesday", @"Wednesday",@"Thursday",@"Friday",@"Saturday",@"Sunday"];
    thumbnails = [NSArray arrayWithObjects:@"fabIcon", @"fabIcon",@"fabIcon", @"fabIcon",@"fabIcon", @"fabIcon",@"fabIcon", nil];
    self.table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    self.table.backgroundColor = [UIColor yellowColor];
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
    static NSString *simpleTableIdentifier = @"CustomTableCell";
    NSLog(@"%@", simpleTableIdentifier);
    CustomTableCell *cell = (CustomTableCell *)[tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.backgroundColor = [UIColor redColor];
    cell.nameLabel.text = [self.content objectAtIndex:indexPath.row];
    cell.thumbnailImageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [self.content objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;
{
    NSLog(@"title of cell %@", [self.content objectAtIndex:indexPath.row]);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 78;
}

@end
