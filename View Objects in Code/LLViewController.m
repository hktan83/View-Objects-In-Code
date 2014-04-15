//
//  LLViewController.m
//  View Objects in Code
//
//  Created by Caleb on 15/04/14.
//  Copyright (c) 2014 Caleb Tan. All rights reserved.
//

#import "LLViewController.h"

@interface LLViewController ()

@end

@implementation LLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.myLabel = [[UILabel alloc] initWithFrame:(CGRectMake(20, 60, 280, 22))];
    self.myLabel.text = @"default name";
    self.myLabel.textColor = [UIColor grayColor];
    [self.view addSubview:self.myLabel];
    
    self.myTextField = [[UITextField alloc] initWithFrame:(CGRectMake(20, 110, 280, 30))];
    self.myTextField.placeholder = @"type here please..";
    self.myTextField.backgroundColor = [UIColor magentaColor];
    [self.view addSubview:self.myTextField];
    
    self.myButton = [UIButton buttonWithType:UIButtonTypeSystem];
    self.myButton.frame = CGRectMake(20, 160, 280, 30);
    [self.myButton setTitle:@"press me!" forState:UIControlStateNormal];
    [self.view addSubview:self.myButton];
    [self.myButton addTarget:self action:@selector(didPressButton:) forControlEvents:UIControlEventTouchUpInside];
}

-(void)didPressButton:(UIButton *)button
{
    self.myLabel.text = self.myTextField.text;
    [self.myTextField resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
