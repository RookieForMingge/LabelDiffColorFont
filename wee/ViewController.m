//
//  ViewController.m
//  wee
//
//  Created by 1 on 16/9/7.
//  Copyright © 2016年 1. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//    NSString *num1 = @"5.3.0";
//    NSString *num2 = @"5.2.10";
//
//    if ([num1 compare:num2 options:NSNumericSearch] == NSOrderedDescending)
//    {
//        NSLog(@"%@ is bigger",num1);
//    }else
//    {
//        NSLog(@"%@ is bigger",num2);
//    }

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(80, 100, 200, 300)];
    label.textColor = [UIColor blackColor];
    label.numberOfLines = 0;
    label.font = [UIFont systemFontOfSize:12];
    [self.view addSubview:label];
    
    //不同字体颜色
    float unit = 2.123;
    NSString *strNumber = [NSString stringWithFormat:@"单价价值：1人次/￥%@",[NSString stringWithFormat:@"%.2f",unit]];
    NSMutableAttributedString *str_number = [[NSMutableAttributedString alloc] initWithString:strNumber];
    NSString *strLength = [NSString stringWithFormat:@"￥%.2f",unit];
    [self setDiffString:str_number withString:@"单价" loaction:0 textColor:[UIColor redColor] textSize:@"Arial-BoldItalicMT" size:30.0];
    [self setDiffString:str_number withString:strLength loaction:9 textColor:[UIColor greenColor] textSize:@"HelveticaNeue-Bold" size:10.0];
    label.attributedText = str_number;
}

#pragma mark - 同一label设置不同颜色、字体
- (void)setDiffString:(NSMutableAttributedString *)str_number withString:(NSString *)str_jq loaction:(NSInteger)loca textColor:(UIColor *)color textSize:(NSString *)fontName size:(CGFloat)size
{
    [str_number addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(loca,[str_jq length])];
    [str_number addAttribute:NSFontAttributeName value:[UIFont fontWithName:fontName size:size] range:NSMakeRange(loca,[str_jq length])];
}

@end
