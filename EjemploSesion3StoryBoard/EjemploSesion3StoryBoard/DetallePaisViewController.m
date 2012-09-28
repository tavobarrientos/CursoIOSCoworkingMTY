//
//  DetallePaisViewController.m
//  EjemploSesion3StoryBoard
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetallePaisViewController.h"

@interface DetallePaisViewController ()

@end

@implementation DetallePaisViewController
@synthesize Pais, Poblacion;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    lblPais.text = Pais;
    lblPop.text = Poblacion;
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
