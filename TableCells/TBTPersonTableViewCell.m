//
//  TBTPersonTableViewCell.m
//  TableCells
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import "TBTPersonTableViewCell.h"

#import "TBTPerson.h"

@implementation TBTPersonTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
    [self updateDisplay];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setPerson:(TBTPerson *)person {
    if (person != _person) {
        _person = person;
        
        [self updateDisplay];
    }
}

#pragma mark Internals

- (void)updateDisplay {
    NSString *name = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
    self.textLabel.text = name;
    self.detailTextLabel.text = self.person.country;
}

@end
