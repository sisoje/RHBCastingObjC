#import <Foundation/Foundation.h>


@interface NSObject (RHBCasting)

+ (instancetype)rhb_verifyCast:(id)object;
+ (instancetype)rhb_dynamicCast:(id)object;
+ (instancetype)rhb_strictDynamicCast:(id)object;

@end
