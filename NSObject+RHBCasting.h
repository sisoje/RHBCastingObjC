//
//  NSObject+Casting.h
//


#import <Foundation/Foundation.h>


@interface NSObject (RHBCasting)

+ (instancetype)verifyCast:(id)object;
+ (instancetype)dynamicCast:(id)object;

@end
