/*
 * (C) Copyright Itude Mobile B.V., The Netherlands.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import "ApplicationController.h"
#import "PlantDataService.h"

@implementation ApplicationController

// support 3.x
-(void) applicationDidFinishLaunching:(UIApplication *)application {
	[self application:application didFinishLaunchingWithOptions:nil];
}

// for 4.x and above
- (BOOL) application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[MBDataManagerService sharedInstance] registerDataHandler:[PlantDataService new] withName:@"PlantDataHandler"];
    
    // subclass the ApplicationFactory and inject it here to add Custom Actions and ViewControllers later on.
	[super startApplication:[MBApplicationFactory sharedInstance]];
	return YES;
}

- (void)dealloc
{
    [super dealloc];
}

@end
