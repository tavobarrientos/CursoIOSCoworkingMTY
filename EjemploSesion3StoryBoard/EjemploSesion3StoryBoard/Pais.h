//
//  Pais.h
//  EjemploSesion3StoryBoard
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Pais : NSManagedObject

@property (nonatomic, retain) NSString * nombre;
@property (nonatomic, retain) NSString * poblacion;

@end
