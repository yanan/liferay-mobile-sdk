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

#import "LRSocialActivitySettingService_v62.h"

/**
 * @author Bruno Farache
 */
@implementation LRSocialActivitySettingService_v62

- (NSDictionary *)getActivityDefinitionWithGroupId:(long long)groupId className:(NSString *)className activityType:(int)activityType error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"className": className,
		@"activityType": @(activityType)
	};

	NSDictionary *_command = @{@"/socialactivitysetting/get-activity-definition": _params};

	return (NSDictionary *)[self.session invoke:_command error:error];
}

- (NSArray *)getActivityDefinitionsWithGroupId:(long long)groupId className:(NSString *)className error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"className": className
	};

	NSDictionary *_command = @{@"/socialactivitysetting/get-activity-definitions": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getActivitySettingsWithGroupId:(long long)groupId error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId)
	};

	NSDictionary *_command = @{@"/socialactivitysetting/get-activity-settings": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (NSArray *)getJsonActivityDefinitionsWithGroupId:(long long)groupId className:(NSString *)className error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"className": className
	};

	NSDictionary *_command = @{@"/socialactivitysetting/get-json-activity-definitions": _params};

	return (NSArray *)[self.session invoke:_command error:error];
}

- (void)updateActivitySettingWithGroupId:(long long)groupId className:(NSString *)className enabled:(BOOL)enabled error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"className": className,
		@"enabled": @(enabled)
	};

	NSDictionary *_command = @{@"/socialactivitysetting/update-activity-setting": _params};

	[self.session invoke:_command error:error];
}

- (void)updateActivitySettingWithGroupId:(long long)groupId className:(NSString *)className activityType:(int)activityType activityCounterDefinition:(NSDictionary *)activityCounterDefinition error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"className": className,
		@"activityType": @(activityType),
		@"activityCounterDefinition": activityCounterDefinition
	};

	NSDictionary *_command = @{@"/socialactivitysetting/update-activity-setting": _params};

	[self.session invoke:_command error:error];
}

- (void)updateActivitySettingsWithGroupId:(long long)groupId className:(NSString *)className activityType:(int)activityType activityCounterDefinitions:(NSArray *)activityCounterDefinitions error:(NSError **)error {
	NSDictionary *_params = @{
		@"groupId": @(groupId),
		@"className": className,
		@"activityType": @(activityType),
		@"activityCounterDefinitions": activityCounterDefinitions
	};

	NSDictionary *_command = @{@"/socialactivitysetting/update-activity-settings": _params};

	[self.session invoke:_command error:error];
}

@end