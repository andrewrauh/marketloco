//
//  ViewController.h
//  Marketloco
//
//  Created by Andrew Rauh on 2/15/13.
//  Copyright (c) 2013 Andrew Rauh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SEMasonryView/SEMasonryView.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, SEMasonryViewDelegate>
@property (nonatomic, strong) IBOutlet UITableView *myTableView;
@property (nonatomic, strong) SEMasonryView *mainGridView;

@end
