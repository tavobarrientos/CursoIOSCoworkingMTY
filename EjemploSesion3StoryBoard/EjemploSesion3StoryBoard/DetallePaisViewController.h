//
//  DetallePaisViewController.h
//  EjemploSesion3StoryBoard
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetallePaisViewController : UIViewController
{
    IBOutlet UILabel *lblPais;
    IBOutlet UILabel *lblPop;
}
@property(nonatomic, retain) NSString *Pais;
@property(nonatomic, retain) NSString *Poblacion;
@end
