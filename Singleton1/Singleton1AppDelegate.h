//
//  Singleton1AppDelegate.h
//  Singleton1
//
//  Created by  on 6/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface Singleton1AppDelegate : NSObject <UIApplicationDelegate> {
    
    MainViewController *_viewController;
}


@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) MainViewController *viewController;



@end
