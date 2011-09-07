//
//  MyManager.h
//  Singleton1
//
//  Created by  on 6/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyManager : NSObject {
    
    NSString *_someProperty; //que hace esta string?
}

@property (nonatomic, retain) NSString *someProperty;

+ (id)sharedManager; //que hace este class method??

@end
