//
//  ViewController.m
//  MusicAlbum-OBJ-C-OB2
//
//  Created by Consultant on 3/20/22.
//

#import "ViewController.h"
#import "SecondViewController.h"

NSMutableArray *imageNameArray;

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self arraySetup];
    // Do any additional setup after loading the view.
}


-(void)arraySetup{
    imageNameArray =
    [NSMutableArray arrayWithArray:@[@"20 Classic Love Songs",@"ABBA",@"Bob Marley",@"Breatney",@"Dua Lupa Bang Bang",@"Essentials",@"Madonna",@"Neil Diamont Sweet Caroline",@"The Beatles",@"U2 Pop Album"]];
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return  imageNameArray.count;
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    static NSString *cellId = @"cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    cell.imageView.image = [UIImage imageNamed:imageNameArray[indexPath.row]];
    
    cell.textLabel.text = imageNameArray[indexPath.row];
    
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%d", (int)indexPath.row + 1 ];
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UIStoryboard* sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController* myVC = [sb instantiateViewControllerWithIdentifier:@"SecondVC"];
    
    NSString *album = imageNameArray[indexPath.row];
    
    myVC.data=album;
    
    NSLog(@"Omar here you go....: %@",  myVC.data);
    
    [self presentViewController:myVC animated:YES completion:nil];
      
}





@end
