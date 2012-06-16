//
//  ViewController.m
//  TableViewExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 16/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "PaisesCell.h"

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    data = [NSMutableArray arrayWithObjects:@"Mexico", @"Argentina", @"Brazil", @"Peru", @"Chile", nil];
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
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return data.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.textLabel.text = [data objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *mensaje = [NSString stringWithFormat:@"Seleccionaste %@", [data objectAtIndex:indexPath.row]];
    
    UIAlertView *alerta = [[UIAlertView alloc]initWithTitle:@"Mensaje" message:mensaje delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    
    [alerta show];
    
    NSLog(@"Seleccionaste %@", [data objectAtIndex:indexPath.row]);
}

@end
