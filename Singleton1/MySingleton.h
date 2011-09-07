//
//  MySingleton.h
//  Singleton1
//
//  Created by  on 6/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
// http://getsetgames.com/2009/08/30/the-objective-c-singleton/

#import <Foundation/Foundation.h>

@interface MySingleton : NSObject {
    
}

+(MySingleton *)sharedMySingleton;
-(void)sayHello;

@end
