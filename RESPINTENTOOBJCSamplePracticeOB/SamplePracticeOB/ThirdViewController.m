//
//  ThirdViewController.m
//  SamplePracticeOB
//
//  Created by Consultant on 3/19/22.
//

#import "ThirdViewController.h"
#import "SecondViewController.h"

//NSString *firstVC = @"FirstVC";
//NSString *secondVC = @"SecondVC";
//NSString *thirdVC = @"ThirdVC";

NSString *selectBrewery = @"";


@interface ThirdViewController ()




@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //_titleNewLabel.text = self.data;
    
    
    
    
  
    _secondTitleLabel.text  = [NSString stringWithFormat:@"Your data: %@", _secondTitleLabel]; // Make use of the expos_secondtitleNewLabelrty
    [self.view addSubview:_secondTitleLabel];
   
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
