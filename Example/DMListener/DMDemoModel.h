//
//  DMDemoModel.h
//  DMListener
//
//  Created by Dylan Marriott on 04/11/14.
//  Copyright (c) 2014 Dylan Marriott. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DMDemoModel;

@protocol DMDemoModelListener <NSObject>

- (void)demoModelChanged:(DMDemoModel *)model;

@end

@interface DMDemoModel : NSObject

- (void)addListener:(id<DMDemoModelListener>)listener;
- (void)refreshData;

@end
