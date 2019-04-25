//
//  LYShareInstance.h
//  LYTouchDemo
//
//  Created by admin on 2019/4/25.
//  Copyright © 2019 ly. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LYShareInstance : NSObject

@property (strong, nonatomic) NSDate *touchEndDate;

+ (instancetype)sharedInstance;

@end

NS_ASSUME_NONNULL_END
