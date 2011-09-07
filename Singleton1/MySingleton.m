//
//  MySingleton.m
//  Singleton1
//
//  Created by  on 6/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton

static MySingleton* _sharedMySingleton = nil;

 
+(MySingleton *)sharedMySingleton {
    
    @synchronized ([MySingleton class])
    {
        if (!_sharedMySingleton) {
            [[self alloc] init ];
            
            return _sharedMySingleton;
        }
    }
    
    return  nil;
}

+(id)alloc {
    @synchronized ([MySingleton class])
    {
        NSAssert(_sharedMySingleton == nil, @"Tratando de empezar una segunda instantiation de un singleton");
        _sharedMySingleton = [super alloc];
        return _sharedMySingleton;
    }
    
    return nil;
}

-(id)init {
	self = [super init];
	if (self != nil) {
		// initialize stuff here
	}
    
	return self;
}

-(void)sayHello {
    NSLog(@"halo makoma");
}

@end
