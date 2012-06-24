//
//  PaisesCell.m
//  CursoIphoneSesion2Tableviews
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 23/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PaisesCell.h"

@implementation PaisesCell
@synthesize lblPais, lblPoblacion;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
