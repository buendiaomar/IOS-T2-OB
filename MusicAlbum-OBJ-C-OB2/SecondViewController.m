//
//  SecondViewController.m
//
//
//  Created by Consultant on 3/19/22.
//  Copyright © 2022 Brian Voong. All rights reserved.
//

#import "SecondViewController.h"
//NSString *selectedBrewery = @"Omar Brewery";
@interface SecondViewController ()
//@property (weak, nonatomic) IBOutlet UILabel *titleNewLabel;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Detail Brewery";
     
    
    
    
    _titleNewLabel.autoresizingMask = UIViewAutoresizingFlexibleHeight|UIViewAutoresizingFlexibleWidth|
            UIViewAutoresizingFlexibleBottomMargin;
    _titleNewLabel.textAlignment = NSTextAlignmentCenter;
    
    _titleNewLabel.text = [NSString stringWithFormat:@"Album: %@", _data];
    _image.image = [UIImage imageNamed:_data];
    
    
    [self.view addSubview:_titleNewLabel];
    
    
    
}

@end
