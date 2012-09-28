//
//  PaisesViewController.m
//  StoryBoardsExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 23/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PaisesViewController.h"
#import "DetailViewController.h"
#import "PaisesCell.h"
#import "AppDelegate.h"
#import "Paises.h"

@implementation PaisesViewController
@synthesize context;

-(IBAction)BtnAcercaAction:(id)sender
{
    UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Acerca" message:@"Curso iOS Coworking MTY" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alerta show];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"Cell";
    PaisesCell *cell = (PaisesCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    //cell.textLabel.text =[paises objectAtIndex:[indexPath row]];
    Paises *pais = (Paises *)[paises objectAtIndex:[indexPath row]];
    cell.Pais.text = [pais pais];
    cell.Poblacion.text = [pais population];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return paises.count;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
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
    [self LoadData];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self LoadData];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        Paises *objectToDelete = (Paises *)[paises objectAtIndex:[indexPath row]];
        //[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES];
                
        [context deleteObject:objectToDelete];
        NSError *error;
        [context save:&error];
        
        [self LoadData];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([[segue identifier] isEqualToString:@"DetailView"]){
        NSIndexPath *indexPath = [tabla indexPathForSelectedRow];
        DetailViewController *detail = (DetailViewController *)[segue destinationViewController];
        Paises *pais = (Paises *)[paises objectAtIndex:[indexPath row]];
        detail.pais = [pais pais];
    }
}

-(void)LoadData
{
    context = [(AppDelegate *)[[UIApplication sharedApplication]delegate]  managedObjectContext];
    NSFetchRequest *request = [[NSFetchRequest alloc]init];
    NSEntityDescription *description = [NSEntityDescription entityForName:@"Paises" inManagedObjectContext:context];
    [request setEntity:description];
    NSError *error;
    NSMutableArray *datos = [[context executeFetchRequest:request error:&error]mutableCopy];
    
    if(error == nil)
        paises = [datos copy];
    
    if(paises && [paises count] > 0)
        [tabla reloadData];
}

@end
