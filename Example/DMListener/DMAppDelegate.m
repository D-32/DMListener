//
//  DMAppDelegate.m
//  DMListener
//
//  Created by CocoaPods on 11/04/2014.
//  Copyright (c) 2014 Dylan Marriott. All rights reserved.
//

#import "DMAppDelegate.h"
#import "DMDemoModel.h"

@interface DMAppDelegate () <DMDemoModelListener>
@end

@implementation DMAppDelegate {

}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    DMDemoModel* model = [[DMDemoModel alloc] init];
    [model addListener:self];
    [model refreshData];
    
    NSNumber* s = [NSNumber numberWithInt:32];
    [model addListener:s];
    
    return YES;
}

- (void)demoModelChanged:(DMDemoModel *)model {
    NSLog(@"App delegate got the change :)");
}

@end
