#import <QuartzCore/QuartzCore.h>

@interface CALayer (NoImplicitAnimations)

+ (CALayer *)layerWithNoImplicitAnimationsExcept:(NSSet *)exceptionKeys;

@end
