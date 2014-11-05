//
//  DMDemoModel.m
//  DMListener
//
//  Created by Dylan Marriott on 04/11/14.
//  Copyright (c) 2014 Dylan Marriott. All rights reserved.
//

#import "DMDemoModel.h"
#import <DMListener/DMListeners.h>

@implementation DMDemoModel {
    DMListeners* _listeners;
}

- (instancetype)init {
    if (self == [super init]) {
        _listeners = [[DMListeners alloc] init];
    }
    return self;
}

- (void)addListener:(id<DMDemoModelListener>)listener {
    [_listeners addListener:listener];
}

- (void)refreshData {
    [self performSelector:@selector(dataRefreshed) withObject:nil afterDelay:1.0];
}

- (void)dataRefreshed {
    [_listeners notifyListeners:^(id<DMDemoModelListener> listener) {
        [listener demoModelChanged:self];
    }];
}

@end
