//
//  CustomTableCell.h
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 08/05/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CustomTableCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *prepTimeLabel;
@property (nonatomic, weak) IBOutlet UILabel *timelineLabel;
@property (nonatomic, weak) IBOutlet UIImageView *thumbnailImageView;

@end

NS_ASSUME_NONNULL_END
