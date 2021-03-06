/**
 * Copyright (c) 2000-2014 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

#import "GroupServiceTest.h"
#import "LRGroupService_v62.h"

/**
 * @author Jose Navarro
 */
@implementation GroupServiceTest

- (void)testGetUserSites {
	LRGroupService_v62 *service =
		[[LRGroupService_v62 alloc] initWithSession:self.session];

	NSError *error;
	NSArray *groups = [service getUserSites:&error];

	XCTAssertNil(error);
	XCTAssertEqual(2, [groups count]);

	NSDictionary *group = groups[0];
	XCTAssertEqualObjects(@"/test", group[@"friendlyURL"]);

	group = groups[1];
	XCTAssertEqualObjects(@"/guest", group[@"friendlyURL"]);
}

@end