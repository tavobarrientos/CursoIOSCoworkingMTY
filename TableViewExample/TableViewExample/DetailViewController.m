//
//  DetailViewController.m
//  TableViewExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 23/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize pais;

-(IBAction)AcercaAction:(id)sender
{
    UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Curso de iOS Coworking Mty (c) 2012" message:@"Aplicacion Demo" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alerta show];
}

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
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithTitle:@"Acerca de..." style:UIBarButtonItemStyleBordered target:self action:@selector(AcercaAction:)];
    [self.navigationItem setRightBarButtonItem:item];
    
    PaisSeleccionado.text = self.pais;
    self.title = self.pais;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
