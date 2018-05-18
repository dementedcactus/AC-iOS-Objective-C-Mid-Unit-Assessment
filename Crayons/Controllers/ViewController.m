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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    
    Crayon *crayon = self.crayons[indexPath.row];
    cell.textLabel.text = crayon.name;
    
    //TODO: Figure out background color for cells syntax
    //cell.backgroundColor = UIColor.redColor;
    //cell.backgroundColor = crayon.hex;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath; {
    
    //Get the selected color
    Crayon *crayon = self.crayons[indexPath.row];
    
    //Initialize the detailViewController and display it
    DetailedViewController *myDetViewCont = [[DetailedViewController alloc] initWithNibName:@"DetailedViewController" bundle:[NSBundle mainBundle]];
    
    [self.navigationController pushViewController:myDetViewCont animated:YES];
    //[myDetViewCont release];
    myDetViewCont = nil;
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
//    DetailedViewController* dvc = [[DetailedViewController alloc] init];
//    //DetailedViewController *dvc = [segue destinationViewController];
//
//    [self.navigationController pushViewController:dvc animated:YES];
    
//    DetailedViewController *nextViewController=[[DetailedViewController alloc]initWithNibName:@"DetailedViewController" bundle:nil];
//    UINavigationController *navBar=[[UINavigationController alloc]initWithRootViewController:nextViewController];
//    [self.navigationController presentModalViewController:navBar animated:YES];
    
}







@end






