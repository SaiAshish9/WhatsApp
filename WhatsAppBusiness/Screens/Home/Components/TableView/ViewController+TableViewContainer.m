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
    self.content = @[@"Mom", @"Dad", @"Sakshi", @"The momo gang", @"Cheema Jayanti", @"7 geniuses inside 🤯", @"Sarthak",@"Rajat",@"Shashwat",@"Mayank Mani", @"Vyshu",@"Cse 2",@"Anant",@"Dhruv",@"Piyush",@"Sai", @"Harshita", @"Vaishnavi"];
    self.desc = [NSArray arrayWithObjects:@"All the best", @"Take Care", @"Aagya call?", @"Rs. 125/- per momo 🥲", @"Jai ho", @"Sai is the best!", @"Cool", @"Trip?",@"Bro",@"Sahi hai",@"❤️",@"Awesome",@"Busy",@"🔥",@"Badhiya",@"okay", @"Fine", @"Give me a new iPhone",nil];
    self.timeline = @[@"12:01",@"09:00",@"Yesterday",@"Yesterday",@"Yesterday",@"6/23/22",@"6/23/22",@"6/22/22",
                      @"6/22/22",@"6/22/22",@"6/21/22",@"6/21/22",@"6/21/22",@"6/21/22",@"6/19/22",@"6/19/22",
                      @"6/18/22",@"6/18/22"
    ];
//    self.thumbnails = [NSArray arrayWithObjects:@"whatsapp_logo", nil];
    self.thumbnails = [NSArray arrayWithObjects:
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656132850/mom_ic9jkf.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656134351/WhatsApp_Image_2022-06-16_at_9.58.59_PM_tifv9i.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656131354/sakshi_ydnvev.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656132087/momo-gang_jbhfgi.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656132202/cheema_xifdoi.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656132411/geniuses_ity1u9.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656132605/sarthak_xcajd5.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656133940/rajat_i7uvkk.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656133980/shashwat_zjeovu.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656134482/mayank-mani_a0f0yp.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656132747/vyshu_gnziaj.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656133032/cse_gzhtdd.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656132950/anant_miz43u.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656133345/dhruv_zfpuop.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656133538/piyush_af1rxn.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656133624/sai_up9pzr.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656133714/harshita_gz9xia.jpg",
                       @"https://res.cloudinary.com/saiashish/image/upload/v1656133791/vaishnavi_gdi1e4.jpg",
                       nil];
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
    cell.thumbnailImageView.layer.cornerRadius = cell.thumbnailImageView.frame.size.width / 2;
    cell.thumbnailImageView.clipsToBounds = YES;
    [cell.thumbnailImageView sd_setImageWithURL:[NSURL URLWithString:[self.thumbnails objectAtIndex:indexPath.row]]
                 placeholderImage:[UIImage imageNamed:@"thumbnail"]];
    cell.prepTimeLabel.textColor = [UIColor colorNamed:@"silver"];
    cell.prepTimeLabel.font = [UIFont fontWithName:@"Assistant-Light" size:15];
    cell.prepTimeLabel.text = [self.desc objectAtIndex:indexPath.row];
    cell.timelineLabel.textColor = [UIColor colorNamed:@"silver"];
    cell.timelineLabel.font = [UIFont fontWithName:@"Assistant-Light" size:12];
    cell.timelineLabel.textAlignment = NSTextAlignmentRight;
    cell.timelineLabel.text = [self.timeline objectAtIndex:indexPath.row];
    UIView *bgColorView = [[UIView alloc] init];
    bgColorView.backgroundColor =[UIColor colorNamed:@"selectedCell"];
    [cell setSelectedBackgroundView:bgColorView];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath;{
    NSLog(@"title of cell %@", [self.content objectAtIndex:indexPath.row]);
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 78;
}

@end


//    UITableViewCell *cell = [self.table dequeueReusableCellWithIdentifier:cellIdentifier];
//    if(cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
//    }
//    cell.textLabel.text =  [_content objectAtIndex:indexPath.row];
