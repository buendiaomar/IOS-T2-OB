//
//  SecondViewController.m
//  Objective-C
//
//  Created by Consultant on 3/17/22.
//

#import "SecViewController.h"
#import "ViewController.h"


//Variable for reusable cell
NSString *selectedCountry = @"nationState";

@interface SecViewController: UIViewController
@property (weak, nonatomic) IBOutlet UITableView *countryListTableView;


@end

@implementation SecViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupConfiguration];
    NSLog(@"%@");
    // Do any additional setup after loading the view.
}

-(void)setupConfiguration {
    self.title= @"List of Countries";
}


-(NSArray *)countryList {
    
    NSArray *countryList = [NSArray
                            arrayWithObjects:@"Costa Rica",@"Peru",@"Ireland",@"Finland", @"Germany",@"Australia",@"Chile", @"Thailand",@"Nepal",@"Laos", @"Netherlands",@"India", nil ];            return countryList;
    
}




-(NSInteger)tableView:(UITableView *)tableView
cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:selectedCountry forIndexPath:indexPath];
    
    cell.textLabel.text = [self.countryList objectAtIndex:indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *) indexPath {
    [tableView deselecRorAtIndexPath:indexPath animated:false];
    [self.navigationController popToRootViewControllerAnimated:true];
    
    //Update the label
    //KVC
    
    self.firstVC.clickHereLabel.text = [self.countriesList objecAcIndex:indexPath.row];
    //Delegation
    
    [self.delegate addCountry:[self.countriesList objectAtIndex:indexPath.row])]
    
}









@end
