//
//  Tag+CoreDataProperties.m
//  Receipts++
//
//  Created by swcl on 2017-07-20.
//  Copyright © 2017 Shreve.ca. All rights reserved.
//

#import "Tag+CoreDataProperties.h"

@implementation Tag (CoreDataProperties)

+ (NSFetchRequest<Tag *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Tag"];
}

@dynamic tagName;
@dynamic receipts;

@end
