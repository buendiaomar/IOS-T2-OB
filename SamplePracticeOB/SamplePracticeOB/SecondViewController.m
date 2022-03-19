//
//  SecondViewController.m
//  SamplePracticeOB
//
//  Created by Consultant on 3/17/22.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "ThirdViewController.h"

NSString *selectedCountry = @"nationState";
NSString *firstVC = @"FirstVC";
NSString *secondVC = @"SecondVC";
//NSString *thirdVC = @"ThirdVC";


@interface SecondViewController ()

@property (weak, nonatomic) IBOutlet UITableView *bListTableView;



@end

@implementation SecondViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
}

-(void)setupConfiguration {
    self.title = @"List of Breweries";
}

-(NSArray *)bList {
    
    NSArray *bList = [NSArray
                            arrayWithObjects:@"Brewing Company ",@"10 Barrel Brewing Co",@"Tor Destiling and Brewing",@"101 North Brewery Co", @"105 West Brewerry",@"10K Brewery",@"11 Bellow Brewery Co", @"1118 Brewery Co",nil ];
    return bList;
    
}
/*
 TableView Methods
 */

-(NSInteger)tableView:(UITableView *)tableView
numberOfRowsInSection:(NSInteger)section {
    return  self.bList.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView
cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView
    dequeueReusableCellWithIdentifier:selectedCountry forIndexPath:indexPath];
    
    cell.textLabel.text = [self.bList objectAtIndex:indexPath.row];
    return cell;
}



-(void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *) indexPath {

    [tableView deselectRowAtIndexPath:indexPath  animated:false];
    [self.navigationController popToRootViewControllerAnimated:true];


    self.firstVC.clickHereLabel.text = [self.bList objectAtIndex:indexPath.row ];

    self.selectedCountry([self.bList objectAtIndex:indexPath.row]);
}

//-(void)getLastCountry:(void (^)(NSString * _Nonnull))selectedCountry {
//    self.firstVC.selectedCountry(self.bList.lastObject);
//}

@end
