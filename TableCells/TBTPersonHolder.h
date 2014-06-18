//
//  TBTPersonHolder.h
//  TableCells
//
//  Created by JN on 2014-6-17.
//  Copyright (c) 2014 thoughtbot. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TBTPerson;

@protocol TBTPersonHolder <NSObject>

@property (strong, nonatomic) TBTPerson *person;

@end
