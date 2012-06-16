//
//  Persona.m
//  HelloWorld
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 15/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Persona.h"

@implementation Persona

-(void)setEdad:(NSInteger)age
{
    edad = age;
}

-(NSInteger)getEdad
{
    return edad;
}

-(void)setNombre:(NSString *)name
{
    nombre = name;
}

-(NSString *)getNombre
{
    return nombre;
}

-(void)setApellido:(NSString *)lastName
{
    apellidos = lastName;
}

-(NSString *)getApellido
{
    return apellidos;
}

-(id)initWithNombre:(NSString *)name Apellidos:(NSString *)apellido Edad:(NSInteger)age
{
    nombre = name;
    apellidos = apellido;
    edad = age;
    
    return self;
}

-(BOOL)isUnderage
{
    if(edad > 18)
        return NO;
    
    return YES;
}

@end
