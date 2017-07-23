//
//  Reciept+CoreDataProperties.m
//  Receipts++
//
//  Created by swcl on 2017-07-20.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "Reciept+CoreDataProperties.h"

@implementation Reciept (CoreDataProperties)

+ (NSFetchRequest<Reciept *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Reciept"];
}

@dynamic amount;
@dynamic note;
@dynamic timeStamp;
@dynamic tag;

@end
