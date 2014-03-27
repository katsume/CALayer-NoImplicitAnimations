#import "CALayer+NoImplicitAnimations.h"

@implementation CALayer (NoImplicitAnimations)

+ (CALayer *)layerWithNoImplicitAnimationsExcept:(NSSet *)exceptionKeys {
	
	NSMutableDictionary* actions= [NSMutableDictionary dictionaryWithCapacity:0];
	NSMutableSet* keys= [NSMutableSet setWithArray:@[
													 @"backgroundColor",
													 @"bounds",
													 @"contents",
													 @"hidden",
													 @"opacity",
													 @"position",
													 @"sublayers",
													 @"transform"
													 ]];
	[keys minusSet:exceptionKeys];
	
	NSEnumerator* enumerator= [keys objectEnumerator];
	id key;
	while(key= [enumerator nextObject]){
		[actions setObject:[NSNull null] forKey:key];
	}
	
	CALayer* layer= [CALayer layer];
	layer.actions= (NSDictionary *)actions;
	return layer;
}

@end
