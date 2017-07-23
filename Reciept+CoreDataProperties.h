//
//  Reciept+CoreDataProperties.h
//  Receipts++
//
//  Created by swcl on 2017-07-20.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "Reciept+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Reciept (CoreDataProperties)

+ (NSFetchRequest<Reciept *> *)fetchRequest;

@property (nonatomic) float amount;
@property (nullable, nonatomic, copy) NSString *note;
@property (nullable, nonatomic, copy) NSDate *timeStamp;
@property (nullable, nonatomic, retain) Tag *tag;

@end

NS_ASSUME_NONNULL_END
