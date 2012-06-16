//
//  PaisesCell.h
//  TableViewExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 16/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PaisesCell : UITableViewCell
{
    IBOutlet UIImageView *flag;
    IBOutlet UILabel *country;
}

-(void)setFlag:(UIImage *)img;
-(void)setCountry:(NSString *)c;
@end
