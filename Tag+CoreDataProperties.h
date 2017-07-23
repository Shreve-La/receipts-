//
//  Tag+CoreDataProperties.h
//  Receipts++
//
//  Created by swcl on 2017-07-20.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "Tag+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Tag (CoreDataProperties)

+ (NSFetchRequest<Tag *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *tagName;
@property (nullable, nonatomic, retain) NSSet<Reciept *> *receipts;

@end

@interface Tag (CoreDataGeneratedAccessors)

- (void)addReceiptsObject:(Reciept *)value;
- (void)removeReceiptsObject:(Reciept *)value;
- (void)addReceipts:(NSSet<Reciept *> *)values;
- (void)removeReceipts:(NSSet<Reciept *> *)values;

@end

NS_ASSUME_NONNULL_END
