//
//  PaisesViewController.h
//  StoryBoardsExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 23/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaisesViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *paises;
    IBOutlet UITableView *tabla;
}

@end
