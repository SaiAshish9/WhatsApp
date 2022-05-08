//
//  ViewController.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 17/04/22.
//

#import "ViewController.h"
#import "ViewController+HomeNavbar.h"
#import "ViewController+FabController.h"
#import "ViewController+ScrollView.h"
#import "ViewController+TableViewContainer.h"
#import "CustomTableCell.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorNamed:  @"home"];
    [self addNavContainer];
    [self addScrollViewContainer];
    [self addFabContainer];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.content.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
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
    cell.thumbnailImageView.image = [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row]];
    cell.prepTimeLabel.text = [self.content objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;{
    NSLog(@"title of cell %@", [self.content objectAtIndex:indexPath.row]);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 78;
}

@end
