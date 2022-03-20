//
//  ThirdViewController.h
//  SamplePracticeOB
//
//  Created by Consultant on 3/19/22.
//

#import <UIKit/UIKit.h>




@interface ThirdViewController : UIViewController



@property (nonatomic, retain) NSString *data;

@property (nonatomic , weak) ThirdViewController *thirdtVC;

@property (nonatomic,copy)void(^selectedBrewery)(NSString *);

@property (weak, nonatomic) IBOutlet UILabel *titleNewLabel;

@property (weak, nonatomic) IBOutlet UILabel *secondTitleLabel;




@end


