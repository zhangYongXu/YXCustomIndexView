//
//  ViewController.m
//  TBIndexView
//
//  Created by 极客天地 on 2017/7/4.
//  Copyright © 2017年 极客天地. All rights reserved.
//

#import "ViewController.h"
#import "NSString+RN.h"


#import "YXTableViewIndexView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;


@property (strong,nonatomic) NSMutableArray * dataArray;

@property (strong,nonatomic) NSMutableArray * groupDataArray;
@property (strong,nonatomic) NSMutableArray * groupTitleArray;

@property (strong,nonatomic) YXTableViewIndexView * tableViewIndexView;


@end

@implementation ViewController
-(NSMutableArray *)dataArray{
    if(nil == _dataArray){
        _dataArray = [[NSMutableArray alloc] init];
        NSInteger count = arc4random_uniform(90)+10;
        for(int i = 0;i<count;i++){
            NSString * name = [NSString randomName];
            [_dataArray addObject:name];
        }
    }
    return _dataArray;
}
-(NSMutableArray *)groupDataArray{
    if(nil == _groupDataArray){
        _groupDataArray = [[NSMutableArray alloc] init];
    }
    return _groupDataArray;
}
-(NSMutableArray *)groupTitleArray{
    if(nil == _groupTitleArray){
        _groupTitleArray = [[NSMutableArray alloc] init];
    }
    return _groupTitleArray;
}
-(YXTableViewIndexView *)tableViewIndexView{
    if(nil == _tableViewIndexView){
        _tableViewIndexView = [YXTableViewIndexView loadFromXib];
        
        //索引视图设置
        _tableViewIndexView.tableView = self.tableView;
        CGRect frame = _tableViewIndexView.frame;
        frame.origin.x = self.tableView.frame.size.width - _tableViewIndexView.frame.size.width;
        frame.origin.y = self.tableView.frame.origin.y + self.tableView.contentInset.top;
        _tableViewIndexView.frame = frame;
        
        _tableViewIndexView.isShowTipView = YES;
        _tableViewIndexView.tipViewTitleFont = [UIFont systemFontOfSize:24];
        _tableViewIndexView.tipViewBackgroundColor = [UIColor colorWithRed:1/225.0 green:205/255.0 blue:206/255.0 alpha:1];
    }
    return _tableViewIndexView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    self.tableView.sectionIndexColor = [UIColor darkGrayColor];
    [self handleDataArray:self.dataArray GroupDataArray:self.groupDataArray GroupTitleArray:self.groupTitleArray];

    //添加自定义索引视图
    [self.tableView.superview addSubview:self.tableViewIndexView];
    [self.tableView reloadData];
    
}


- (NSString *)transform:(NSString *)chinese
{
    NSMutableString *pinyin = [chinese mutableCopy];
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    //NSLog(@"%@", pinyin);
    return [pinyin uppercaseString];
}
//按首字母分组
- (void)handleDataArray:(NSArray*)dataArray GroupDataArray:(NSMutableArray*)groupDataArray GroupTitleArray:(NSMutableArray*)groupTitleArray{
    
    NSMutableArray * groupCurrentDataArray = nil;
    NSString * lastFirstLetter = nil;
    NSString * currentFirstLetter = nil;
    dataArray = [dataArray sortedArrayUsingComparator:^NSComparisonResult(NSString* obj1, NSString* obj2) {
        NSString * obj1FirstLetter = [[self transform:obj1] substringToIndex:1];
        NSString * obj2FirstLetter = [[self transform:obj2] substringToIndex:1];
        return [obj1FirstLetter compare:obj2FirstLetter];
    }];
    for(NSString * name in dataArray){
        currentFirstLetter = [[self transform:name] substringToIndex:1];
        if(![lastFirstLetter isEqualToString:currentFirstLetter]){
            groupCurrentDataArray = [[NSMutableArray alloc] init];
            [groupTitleArray addObject:currentFirstLetter];
            [groupDataArray addObject:groupCurrentDataArray];
        }
        [groupCurrentDataArray addObject:name];
        lastFirstLetter = currentFirstLetter;
    }
    if([[groupTitleArray firstObject] isEqualToString:@"#"]){
        id groupTile = [groupTitleArray firstObject];
        [groupTitleArray removeObject:groupTile];
        [groupTitleArray addObject:groupTile];
        
        id dataValue = [groupTitleArray firstObject];
        [groupTitleArray removeObject:dataValue];
        [groupTitleArray addObject:dataValue];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark UITableView 
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    NSInteger count = self.groupTitleArray.count;
    return count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSInteger count = [self.groupDataArray[section] count];
    return count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *name = self.groupDataArray[indexPath.section][indexPath.row];
    static NSString * reuseIdentifier = @"reuseIdentifierNameCell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if(nil == cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier];
        cell.textLabel.font = [UIFont systemFontOfSize:14];
        cell.textLabel.textColor = [UIColor colorWithRed:105/255.0 green:105/255.0 blue:105/255.0 alpha:1];
    }
    cell.textLabel.text = name;
    return cell;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44;
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 20)];
    label.backgroundColor = [UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:0.5];
    label.textAlignment = NSTextAlignmentLeft;
    label.font = [UIFont systemFontOfSize:15];
    label.textColor = [UIColor colorWithRed:130/255.0 green:130/255.0 blue:130/255.0 alpha:1];
    NSString * title = self.groupTitleArray[section];
    label.text = title;
    return label;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section    {
    return 20;
}
-(NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView{
    //用自定义的索引视图
    [self.tableViewIndexView setIndexTitlesArray:self.groupTitleArray];
    return nil;
}


-(void)scrollViewDidScroll:(UIScrollView *)scrollView{

}
@end
