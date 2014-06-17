//
//  TBTDetailViewController.h
//  TableCells
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TBTDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
