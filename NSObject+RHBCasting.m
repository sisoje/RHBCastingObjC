//
//  NSObject+RHBCasting.m
//

#import "NSObject+RHBCasting.h"


@implementation NSObject (RHBCasting)

+ (instancetype)verifyCast:(id)object {
    
    NSAssert(!object || (object && [object isKindOfClass:self]), @"wrong cast");
    
    return object;
}

+ (instancetype)dynamicCast:(id)object {
    
    return [object isKindOfClass:self] ? object : nil;
}

@end
