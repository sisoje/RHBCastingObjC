#import "NSObject+RHBCasting.h"


@implementation NSObject (RHBCasting)

+ (instancetype)rhb_verifyCast:(id)object {
    
    NSAssert(!object || [self rhb_dynamicCast:object], @"wrong cast");
    
    return object;
}

+ (instancetype)rhb_dynamicCast:(id)object {
    
    return [object isKindOfClass:self] ? object : nil;
}

+ (instancetype)rhb_strictDynamicCast:(id)object {
    
    return [object isMemberOfClass:self] ? object : nil;
}

@end
