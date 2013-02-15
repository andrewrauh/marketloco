//
//  ViewController.m
//  Marketloco
//
//  Created by Andrew Rauh on 2/15/13.
//  Copyright (c) 2013 Andrew Rauh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myTableView;
@synthesize mainGridView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    myTableView.delegate = self;
    myTableView.dataSource = self;
    myTableView.backgroundView = nil;
    [myTableView setBackgroundColor:[UIColor clearColor]];
     mainGridView = [[SEMasonryView alloc] initWithFrame:CGRectMake(0, 250, self.view.bounds.size.width, self.view.bounds.size.height)];
    
    mainGridView.delegate = self;
    mainGridView.columnWidth = 256;
    mainGridView.pagingEnabled = YES;
    
    [self.view addSubview:mainGridView];    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    tableView.separatorColor = [UIColor grayColor];
    
    return cell;
}

- (CGFloat) tableView: (UITableView *) tableView heightForRowAtIndexPath: (NSIndexPath *) indexPath {
    
    return 44;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
}

@end
