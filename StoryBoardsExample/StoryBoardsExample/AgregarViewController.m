//
//  AgregarViewController.m
//  StoryBoardsExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AgregarViewController.h"
#import "Paises.h"

#import "AppDelegate.h"

@interface AgregarViewController ()

@end

@implementation AgregarViewController


-(BOOL)ValidarTabla
{
    if(pais.text == @"" || pop.text == @"")
        return YES;
    
    return NO;
}

-(IBAction)cancel:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(IBAction)done:(id)sender
{
    if([self ValidarTabla])
    {
        UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Alerta!" message:@"Los datos no estan completos" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alerta  show];
    }
    else
    {
        NSManagedObjectContext *context = [(AppDelegate *)[[UIApplication sharedApplication]delegate]  managedObjectContext];
        Paises *entity = (Paises *)[NSEntityDescription insertNewObjectForEntityForName:@"Paises" inManagedObjectContext:context];
        entity.pais = [pais text];
        entity.population = [pop text];
        
        NSError *error;
        
        if([context save:&error])
        {
            [self dismissViewControllerAnimated:YES completion: nil];
            NSLog(@"Guardado un pais");
        }
        else 
        {
            NSLog(@"Ni Madres");
        }
    }
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0)
        [pais becomeFirstResponder];
               
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
