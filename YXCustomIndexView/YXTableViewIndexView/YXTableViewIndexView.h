//
//
//  Created by robu on 17/2/2.
//  Copyright (c) 2017年 Static Ga. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YXTableViewIndexView : UIView
@property (strong,nonatomic) UITableView * tableView;

@property(assign,nonatomic) BOOL isShowTipView;
@property(assign,nonatomic) UIImage* tipViewBackgroundImage;
@property(assign,nonatomic) UIColor* tipViewBackgroundColor;
@property(assign,nonatomic) UIColor* tipViewTitleColor;
@property(assign,nonatomic) UIFont*  tipViewTitleFont;
+ (id)loadFromXib;
-(void)setIndexTitlesArray:(NSArray<NSString*>*)titlesArray;

@end


