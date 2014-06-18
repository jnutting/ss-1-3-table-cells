//
//  TBTPersonTableViewCell.h
//  TableCells
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBTPersonHolder.h"

@class TBTPerson;

@interface TBTPersonTableViewCell : UITableViewCell <TBTPersonHolder>

@property (strong, nonatomic) TBTPerson *person;

@end
