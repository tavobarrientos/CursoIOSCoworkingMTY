//
//  ViewController.h
//  TableViewExample
//
//  Created by Houzze Gustavo de Jesus Barrientos Guerrero on 16/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *data;
}
@end
