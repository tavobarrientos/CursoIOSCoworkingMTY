//
//  ViewController.m
//  TableViewExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 16/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "PaisesCell.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //data = [NSMutableArray arrayWithObjects:@"Mexico", @"Argentina", @"Brazil", @"Peru", @"Chile", nil];
    NSMutableArray *paisesM = [NSMutableArray arrayWithObjects:@"Mexico", @"Mauritania", @"Madagascar", @"Macedonia", nil];
    NSMutableArray *paisesA = [NSMutableArray arrayWithObjects:@"Argentina", @"Arabia", @"Afghanistan", @"Andorra", nil];
    NSMutableArray *paisesB = [NSMutableArray arrayWithObjects:@"Brazil", @"Bahamas", @"Bali", @"Belgica" , nil];
    
    data = [NSMutableArray arrayWithObjects:paisesA, paisesB, paisesM, nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if(data == nil)
        return 1;
    
    return [data count];
}

-(NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString * title;
    
    switch (section) {
        case 0:
            title = @"Paises con A";
            break;
        case 1:
            title = @"Paises con B";
            break;
        case 2:
            title = @"Paises con M";
            break;
        default:
            break;
    }
    
    return title;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([data objectAtIndex:section] == nil)
        return 0;
    
    return [[data objectAtIndex:section] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    PaisesCell *cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"PaisesCell" owner:self options:nil];
        
        cell = (PaisesCell *)[nib   objectAtIndex:0];//[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    cell.pais.text = [[data objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]];
    //cell.pais.text = [[data objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]];
    cell.population.text = @"100000";
    
    //cell.textLabel.text = [[data objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*NSString *mensaje = [NSString stringWithFormat:@"Seleccionaste %@", [[data objectAtIndex:[indexPath section]]objectAtIndex:[indexPath row] ]];
    
    UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Mensaje" message:mensaje delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alerta show];
     */
    DetailViewController *detail = [[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
    detail.pais = [[data objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]];
    NSLog(@"Seleccionaste %@", [[data objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]]);
    [self.navigationController pushViewController:detail animated:YES];
    //[self.navigationController presentModalViewController:detail animated:YES];
}

@end
