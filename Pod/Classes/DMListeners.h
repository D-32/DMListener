//
//  DMListeners.h
//  Pods
//
//  Created by Dylan Marriott on 04/11/14.
//
//

#import <Foundation/Foundation.h>

typedef void(^NotifyBlock)(id obj);

@interface DMListeners : NSObject

- (void)addListener:(id)listener;
- (void)notifyListeners:(NotifyBlock)notifyBlock;
- (NSArray *)listeners;

@end
