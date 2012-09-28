//
//  AgregarViewController.h
//  StoryBoardsExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgregarViewController : UITableViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *pais;
    IBOutlet UITextField *pop;
}
-(IBAction)cancel:(id)sender;
-(IBAction)done:(id)sender;

-(BOOL)ValidarTabla;
@end
