//
//  ViewController.m
//  Crayons
//
//  Created by Alex Paul on 5/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "ViewController.h"
#import "DetailedViewController.h"
#import "Course.h"
#import "Crayon.h"

@interface ViewController ()

@property (strong, nonatomic) NSArray<Course *> *courses;
@property (strong, nonatomic) NSMutableArray<Crayon *> *crayons;

@end

@implementation ViewController

NSString *cellID = @"cellID";

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupView];
    self.navigationItem.title = @"Crayons";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
    [self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellID];
}

- (void)setupView{
    self.crayons = NSMutableArray.new;
    [self.crayons addObjectsFromArray:Crayon.allTheCrayons];
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.crayons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    
    Crayon *crayon = self.crayons[indexPath.row];
    cell.textLabel.text = crayon.name;
    cell.detailTextLabel.text  = crayon.hex;
    
    cell.backgroundColor = [UIColor colorWithRed:(crayon.red/255) green:(crayon.green/255) blue:(crayon.blue/255) alpha: 1.0];
    if ([crayon.hex isEqualToString:@"#000000"]){
        cell.textLabel.textColor = UIColor.whiteColor;
        cell.detailTextLabel.textColor = UIColor.whiteColor;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath; {
    
    //Get the selected color
    Crayon *crayon = self.crayons[indexPath.row];
    
    //Initialize the detailViewController and display it
    //DetailedViewController *myDetViewCont = [[DetailedViewController alloc] initWithNibName:@"DetailedViewController" bundle:[NSBundle mainBundle]];
    DetailedViewController *myDetViewCont = DetailedViewController.new;
    
    [self.navigationController pushViewController:myDetViewCont animated:YES];
    //[myDetViewCont release];
    myDetViewCont = nil;
}


@end






