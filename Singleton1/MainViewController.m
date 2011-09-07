//
//  MainViewController.m
//  Singleton1
//
//  Created by  on 6/09/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "MyManager.h"
#import "MySingleton.h"

@implementation MainViewController

 

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

 
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *lava =  [[[UILabel alloc] initWithFrame:CGRectMake(30, 100, 100, 20)] autorelease];
    lava.text = @"mako ss9";
    [self.view addSubview:lava];
    
    MyManager *sharedManager = [MyManager sharedManager];
    
    NSLog(@"dizque : %@",sharedManager);
    
    [[MySingleton sharedMySingleton] sayHello]; //segundo metodo!! no hace llamado a pointer, y llama funcion! wow,
}
 

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
