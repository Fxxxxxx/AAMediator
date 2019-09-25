//
//  SafePerformTool.h
//  AALRUCache
//
//  Created by cztv on 2019/9/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SafePerformTool : NSObject
+ (id)safePerformAction:(SEL)action target:(NSObject *)target params:(NSDictionary *)params;
@end

NS_ASSUME_NONNULL_END
