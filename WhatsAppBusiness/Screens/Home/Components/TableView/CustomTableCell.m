//
//  CustomTableCell.m
//  WhatsAppBusiness
//
//  Created by Sai Ashish Darapureddy on 08/05/22.
//

#import "CustomTableCell.h"

@implementation CustomTableCell
@synthesize nameLabel = _nameLabel;
@synthesize prepTimeLabel = _prepTimeLabel;
@synthesize thumbnailImageView = _thumbnailImageView;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
