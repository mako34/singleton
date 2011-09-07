//
//  MyManager.m
//  Singleton1
//
//  Created by  on 6/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//
// barbadum copia de apple http://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/CocoaFundamentals/CocoaObjects/CocoaObjects.html
// ver en doc creating a singleton instance

//In most cases, if you are not building a library and you will not be exposing singleton class to external parties, you could even simply omit some of the methods (leaving only sharedManager class method and a variable) and make this implementation a bit shorter.

#import "MyManager.h"

static MyManager *sharedMyManager = nil;  //al empezar lo hace nil, pues solo puede haber 1 highlander!

@implementation MyManager

@synthesize someProperty = _someProperty;

 

//todo este codigo tiene que ir!! why??
// parecieze!!, singleton baby! pero solo la estructura!, no todo!, parece que solo pedazos, tambien que es sync??


#pragma mark Singleton Methods


//este es como el metodo mas importante!, 
+ (id)sharedManager {      //el class method!
    @synchronized(self) {                      //mira el syncho!!
        if(sharedMyManager == nil)
            sharedMyManager = [[super allocWithZone:NULL] init]; //que es el llamado a super??
    }
    return sharedMyManager;
}


// pa mas complejo...

+ (id)allocWithZone:(NSZone *)zone {
    return [[self sharedManager] retain];
}
- (id)copyWithZone:(NSZone *)zone {
    return self;
}
- (id)retain {
    return self;
}
- (unsigned)retainCount {
    return UINT_MAX; //denotes an object that cannot be released
}

/*
- (void)release {
    // never release
}*/

- (id)autorelease {
    return self;
}

- (id)init {
    if (self = [super init]) {
        self.someProperty = [[NSString alloc] initWithString:@"Default Property Value"];
    }
    return self;
}





-(void) dealloc {
    
    [_someProperty release];
    [super dealloc];
}

@end
