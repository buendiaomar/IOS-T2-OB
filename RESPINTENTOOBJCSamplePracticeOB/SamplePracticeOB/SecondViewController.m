//
//  SecondViewController.m
//  SamplePracticeOB
//
//  Created by Consultant on 3/17/22.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "ThirdViewController.h"
#import <UIKit/UIKit.h>

NSString *selectedCountry = @"nationState";
NSString *thirdVC = @"ThirdVC";


@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITableView *countryListTableView;



@end

@implementation SecondViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

-(void)setupConfiguration {
    self.title = @"List of Countries";
}

-(NSArray *)countriesList {
    
    NSArray *countriesList = [NSArray
                            arrayWithObjects:@"Costa Rica",@"Peru",@"Ireland",@"Finland", @"Germany",@"Australia",@"Chile", @"Thailand",@"Nepal",@"Laos", @"Netherlands",@"India", @"England",@"Italy",@"Japa",@"Austria",@"Switzerland",@"Marrocco",@"France",@"Mexico",nil ];
    return countriesList;
    
}








- (IBAction)nextVC:(id)sender {
    
    ThirdViewController *thirdViewController =
    
    [self.storyboard instantiateViewControllerWithIdentifier:thirdVC];
  
    [self.navigationController pushViewController:thirdViewController animated:YES];
    
}


/*
 TableView Methods
 */

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  self.countriesList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:selectedCountry forIndexPath:indexPath];
    
    cell.textLabel.text = [self.countriesList objectAtIndex:indexPath.row];
    return cell;
}


-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    ThirdViewController *thirdViewController = [[ThirdViewController alloc] init];
    thirdViewController.secondTitleLabel.text = [self.countriesList objectAtIndex:indexPath.row];
}

-(void)tableView:(UITableView *)tableView
      didSelectRowAtIndexPath:(NSIndexPath *) indexPath {
     
    ThirdViewController *thirdViewController =
    [self.storyboard instantiateViewControllerWithIdentifier:thirdVC];
    
    thirdViewController.titleNewLabel.text = [self.countriesList objectAtIndex:indexPath.row];

    [self.navigationController pushViewController:thirdViewController animated:YES];
    

}


-(void)getLastCountry:(void (^)(NSString * _Nonnull))selectedCountry {
    self.selectedCountry(self.countriesList.lastObject);
}

@end
