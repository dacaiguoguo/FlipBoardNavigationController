//
//  ViewController.m
//  FlipViewControllerDemo
//
//  Created by Michael henry Pantaleon on 5/2/13.
//  Copyright (c) 2013 Michael Henry Pantaleon. All rights reserved.
//

#import "ViewController.h"
#import "FlipBoardNavigationController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push:(UIButton *)sender {
//    UIViewController * page = [self.storyboard instantiateViewControllerWithIdentifier:@"child_vc"];
//    [self.flipboardNavigationController pushViewController:page];
//
//    return;
    UIViewController * controller = [[UIViewController alloc] init];
    controller.view.backgroundColor = [UIColor purpleColor];
    
    
    UITableView * tv = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 400)];
    [controller.view addSubview:tv];
    
    UIViewController * panController = [[UIViewController alloc] init];
    panController.view.backgroundColor = [UIColor grayColor];
    
    UITableView * tv1 = [[UITableView alloc] initWithFrame:CGRectMake(100, 0, 320, 400)];
    [panController.view addSubview:tv1];
    
    self.flipboardNavigationController.rightPanController =panController;
    [self.flipboardNavigationController pushViewController:controller];

    panController.view.center =CGPointMake(panController.view.frame.size.width*1.5 ,
                                           panController.view.frame.size.height/2);
    [self.flipboardNavigationController addRightPanViewController:panController];
}
@end
