//
//  Paises.h
//  StoryBoardsExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 30/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Paises : NSManagedObject

@property (nonatomic, retain) NSString * pais;
@property (nonatomic, retain) NSString * population;

@end
