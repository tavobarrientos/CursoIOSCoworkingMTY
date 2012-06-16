//
//  Persona.h
//  HelloWorld
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 15/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Persona : NSObject
{
    NSString *nombre;
    NSString *apellidos;
    NSInteger edad;
}

-(void)setEdad:(NSInteger)age;
-(NSInteger)getEdad;

-(void)setNombre:(NSString *)name;
-(NSString *)getNombre;

-(void)setApellido:(NSString *)lastName;
-(NSString *)getApellido;

-(id)initWithNombre:(NSString *)name Apellidos:(NSString *)apellido Edad:(NSInteger)age;

-(BOOL)isUnderage;

@end
