//
//  ViewController.m
//  CursoIphoneSesion2Tableviews
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 23/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "DetalleViewController.h"
#import "PaisesCell.h"

@implementation ViewController

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [paises count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"Cell";
    
    PaisesCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (cell == nil) {
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"PaisesCell" owner:self options:nil];
        cell = (PaisesCell *)[nib objectAtIndex:0];
    }
    
    //cell.textLabel.text = [paises objectAtIndex:[indexPath row]];
    cell.lblPais.text = [[paises objectAtIndex:[indexPath section]] objectAtIndex:[indexPath row]];
    cell.lblPoblacion.text = @"10000";
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetalleViewController *detalle = [[DetalleViewController alloc]initWithNibName:@"DetalleViewController" bundle:nil];
    detalle.pais = [paises objectAtIndex:[indexPath row]];
    [self.navigationController pushViewController:detalle animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Paises del Mundo"];
    paises = [NSMutableArray arrayWithObjects:@"Mexico", @"USA", @"Canada", @"Brazil", @"Argentina", @"Chile", nil];
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

@end
