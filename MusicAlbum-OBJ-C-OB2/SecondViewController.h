//
//  SecondViewController.h
//
//
//  Created by Consultant on 3/19/22.
//  Copyright © 2022 Brian Voong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"



@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *image;

@property (nonatomic , weak) ViewController *secondVC;
@property (nonatomic, retain) IBOutlet UILabel *titleNewLabel;
@property (nonatomic, retain) NSString *data;


@end
