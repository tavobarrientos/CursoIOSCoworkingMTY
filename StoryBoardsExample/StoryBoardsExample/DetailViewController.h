//
//  DetailViewController.h
//  StoryBoardsExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 23/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *PaisSeleccionado;
}
@property(strong, nonatomic) NSString *pais;
@end
