//
//  main.m
//  HelloWorld
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 15/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Persona.h"

int main(int argc, const char * argv[])
{
    Persona *person = [[Persona alloc]initWithNombre:@"Gustavo" Apellidos:@"Barrientos" Edad:27];
    
    NSLog([person getNombre]);
    NSLog([person getApellido]);
    NSLog([NSString stringWithFormat:@"%i", [person getEdad]]);
    
    [person setApellido:@"Barrientos Guerrero"];
    
    NSLog([person getNombre]);
    NSLog([person getApellido]);
    NSLog([NSString stringWithFormat:@"%i", [person getEdad]]);
    
    return 0;
}

