//
//  ViewController.m
//  SamplePracticeOB
//
//  Created by Consultant on 3/17/22.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import <UIKit/UIKit.h>


/*
 storyboard identifiers for first and second ViewController
 */
NSString *firstVC = @"FirstVC";
NSString *secondVC = @"SecondVC";
NSString *thirdVC = @"ThirdVC";

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupConfiguration];
    
    // Do any additional setup after loading the view.
}


-(void)setupConfiguration {
    self.title = @"Selected Country";
    self.clickHereLabel.layer.cornerRadius = 20;
    self.clickHereLabel.text = @"Click Here";
    UITapGestureRecognizer *tapGesture =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickHereTapped:)];
    [self.clickHereView addGestureRecognizer:tapGesture];
}

-(IBAction)clickHereTapped:(id)sender {
    SecondViewController *secondViewController =
    [self.storyboard
     instantiateViewControllerWithIdentifier:secondVC];
    // delegation
//[secondViewController setDelegate:self];
    
    //KVC
 //   secondViewController.firstVC = self;
    
 //   block passing data back
    secondViewController.selectedCountry = ^(NSString *country) {
        self.clickHereLabel.text = country;

    };

//    [secondViewController getLastCountry:^(NSString
//        *finalCountry) {
//    }];
    
    [self.navigationController pushViewController:secondViewController animated:YES];
    
}

-(void)addCountry:(NSString *)countryName {
    [self.clickHereLabel setText:countryName];
    
}


@end
