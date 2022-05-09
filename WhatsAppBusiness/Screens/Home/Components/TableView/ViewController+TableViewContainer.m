#import "ViewController+TableViewContainer.h"
#import "CustomTableCell.h"
#import <SDWebImage/SDWebImage.h>
// SDWebImage
// https://github.com/SDWebImage/SDWebImage.git

@implementation ViewController (TableViewContainer)

-(void)configureTableView:(UIView *) view
{
    self.table = [[UITableView alloc] initWithFrame:view.bounds style:UITableViewStylePlain];
    self.table.delegate = self;
    self.table.dataSource = self;
    self.table.backgroundColor = [UIColor clearColor];
    [self.table setSeparatorColor: [UIColor clearColor]];
    [view addSubview:self.table];
    [self.table setShowsVerticalScrollIndicator:NO];
    self.content = @[ @"Sakshi", @"Sarthak", @"Vyshu",@"Mom",@"Anant",@"Dhruv",@"Vyshu",@"Sai", @"Harshita", @"Vaishnavi",@"Rajat",@"Shashwat",@"CSE II",@"7 geniuses inside 🤯"];
    self.thumbnails = [NSArray arrayWithObjects:@"whatsapp_logo", @"whatsapp_logo",@"whatsapp_logo", @"whatsapp_logo",@"whatsapp_logo", @"whatsapp_logo",@"whatsapp_logo",@"whatsapp_logo", @"whatsapp_logo",@"whatsapp_logo", @"whatsapp_logo",@"whatsapp_logo", @"whatsapp_logo",@"whatsapp_logo", nil];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.content.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cell";
    CustomTableCell *cell = (CustomTableCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    cell.backgroundColor = [UIColor clearColor];
    cell.nameLabel.textColor = [UIColor whiteColor];
    cell.nameLabel.font = [UIFont fontWithName:@"Assistant-SemiBold" size:18];
    cell.nameLabel.text = [self.content objectAtIndex:indexPath.row];
    
//    cell.thumbnailImageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[
//        NSURL URLWithString:@"https://lh3.google.com/u/5/ogw/ADea4I6UW5E-Cv6MrdoHol9xpICxyE6K1clvnUDiqKY_=s192-c-mo"
//       ]]];
//    [UIImage imageNamed:[self.thumbnails objectAtIndex:indexPath.row]];
    
    cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2;
    cell.thumbnailImageView.clipsToBounds = YES;
    [cell.thumbnailImageView sd_setImageWithURL:[NSURL URLWithString:@"https://lh3.google.com/u/5/ogw/ADea4I6UW5E-Cv6MrdoHol9xpICxyE6K1clvnUDiqKY_=s192-c-mo"]
                 placeholderImage:[UIImage imageNamed:@"thumbnail"]];
    
    cell.prepTimeLabel.textColor = [UIColor colorNamed:@"silver"];
    cell.prepTimeLabel.font = [UIFont fontWithName:@"Assistant-Light" size:15];
    cell.prepTimeLabel.text = [self.content objectAtIndex:indexPath.row];
    cell.timelineLabel.textColor = [UIColor colorNamed:@"silver"];
    cell.timelineLabel.font = [UIFont fontWithName:@"Assistant-SemiBold" size:14];
    cell.timelineLabel.text = @"14:29";
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor =[UIColor colorNamed:@"selectedCell"];
    [cell setSelectedBackgroundView:bgColorView];
//    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:cellIdentifier];
//    if(cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    }
//    cell.textLabel.text =  [_content objectAtIndex:indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;{
    NSLog(@"title of cell %@", [self.content objectAtIndex:indexPath.row]);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 78;
}

@end
