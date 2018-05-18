//
//  ViewController.m
//  Crayons
//
//  Created by Alex Paul on 5/17/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

#import "ViewController.h"
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
    
    //cell.backgroundColor = UIColor.redColor;
    cell.textLabel.text = crayon.name;
    
    
    return cell;
}








@end






