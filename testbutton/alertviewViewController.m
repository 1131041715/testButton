//
//  alertviewViewController.m
//  testbutton
//
//  Created by 大碗豆 on 17/4/13.
//  Copyright © 2017年 大碗豆. All rights reserved.
//

#import "alertviewViewController.h"


@interface alertviewViewController ()

@end

@implementation alertviewViewController


- (UIView *)viewimage{
    if (!_viewimage) {
        _viewimage = [UIView new];
        
        _viewimage.backgroundColor = [UIColor redColor];
        
        _viewimage.frame = CGRectMake(0, 0, 100, 100);
    }
    
    return _viewimage;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:self.viewimage];
    
    
    UIButton *btn = [UIButton new];
    btn.frame = CGRectMake(0, 0, 20, 20);
    btn.backgroundColor = [UIColor orangeColor];
    btn.titleLabel.text = @"123";
    [btn setTitleColor:[UIColor blackColor] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(actionBtn) forControlEvents:(UIControlEventTouchUpInside)];
    [self.viewimage addSubview:btn];
    
}

- (void)actionBtn{
    
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"结果反馈" message:@"成功" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        
    }];
    
    [alertController addAction:cancle];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
    
    
    
    NSLog(@"123");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
