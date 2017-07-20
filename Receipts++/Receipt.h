//
//  Receipt.h
//  Receipts++
//
//  Created by swcl on 2017-07-20.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Receipt : NSObject

@property (strong, nonatomic) NSString *note;
@property (assign) NSNumber *amount;


@end
