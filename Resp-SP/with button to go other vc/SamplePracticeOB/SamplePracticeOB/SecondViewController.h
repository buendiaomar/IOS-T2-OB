//
//  SecondViewController.h
//  SamplePracticeOB
//
//  Created by Consultant on 3/17/22.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

@protocol addCountryDelegate <NSObject>

-(void)addCountry: (NSString *)countryName;

@end


@interface SecondViewController : UIViewController

@property (nonatomic , weak) id <addCountryDelegate> delegate;

@property (nonatomic , weak) ViewController *firstVC;

@property (nonatomic , weak) ViewController *thirdtVC;

@property (nonatomic,copy)void(^selectedCountry)(NSString *);

-(void)getLastCountry: (void(^)(NSString *))selectedCountry;

@end
 

