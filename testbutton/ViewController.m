//
//  ViewController.m
//  testbutton
//
//  Created by 大碗豆 on 17/4/11.
//  Copyright © 2017年 大碗豆. All rights reserved.
//

#import "ViewController.h"
#import "EFButton.h"
#import "LGAlertView.h"
#import "alertviewViewController.h"

#import "imagePickerViewController.h"

#import "EGmyAlertView.h"

#import "YFGIFImageView.h"

@interface ViewController ()<LGAlertViewDelegate>

@property (nonatomic ,strong)UIViewController *vc;

@property (nonatomic ,strong)alertviewViewController *alertVC;

@property(nonatomic,strong) imagePickerViewController *imagePickVC;

@property(nonatomic,strong)CAShapeLayer *shapeLayer;
@property(nonatomic,strong)CAShapeLayer *shapeLayerTwo;
@property(nonatomic,strong)NSTimer *timer;
@property(nonatomic,assign)CGFloat timeD;
@property(nonatomic,strong)UIView *loadingView;
@end

@implementation ViewController



- (imagePickerViewController *)imagePickVC{
    if (!_imagePickVC) {
        _imagePickVC = [imagePickerViewController new];
//        _imagePickVC.view.frame = CGRectMake(0, 0, 200,200 );
    }
    return _imagePickVC;
}


- (UIViewController *)vc{
    if (!_vc) {
        _vc = [UIViewController new];
        
        _vc.view.frame = CGRectMake(10, 30, 100, 100);
        _vc.view.backgroundColor = [UIColor purpleColor];
        [self.view addSubview:_vc.view];
        
        
        EFButton *btn = [EFButton new];
        [_vc.view addSubview:btn];
        btn.backgroundColor = [UIColor redColor];
        btn.frame = CGRectMake(100, 100, 100, 100);
        [btn setTitle:@"123" forState:(UIControlStateNormal)];
        [btn setImage:[UIImage imageNamed:@"1.png"] forState:(UIControlStateNormal)];
        [btn addTarget:self action:@selector(btnActionback) forControlEvents:(UIControlEventTouchUpInside)];
        
        
//        [self addChildViewController:_vc];
    }
    return _vc;
}

- (alertviewViewController *)alertVC{
    if (!_alertVC) {
        _alertVC = [alertviewViewController new];
        
        _alertVC.view.frame = CGRectMake(0, 0, 200, 200);
//        _alertVC.view.backgroundColor = [UIColor redColor];
//        [self addChildViewController:_alertVC];
    }
    return _alertVC;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *loadingView = [[UIView alloc]initWithFrame:CGRectMake(200, 300, 100, 100)];
    [self.view addSubview:loadingView];
    self.loadingView = loadingView;
    loadingView.backgroundColor = [UIColor blueColor];
    
    
    
    
    EFButton *btn = [EFButton new];
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor redColor];
    btn.frame = CGRectMake(100, 100, 100, 100);
    [btn setTitle:@"123" forState:(UIControlStateNormal)];
    [btn setImage:[UIImage imageNamed:@"1.png"] forState:(UIControlStateNormal)];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:(UIControlEventTouchUpInside)];
    
    [self recell];
}


- (void)btnActionback{
    
    [_vc dismissViewControllerAnimated:YES completion:nil];
}

- (void)btnAction{
    
//    NSString *a = @"12wertyu";
//   NSString *b =  [a substringWithRange:NSMakeRange(0, 1)];
//    NSLog(@"%@",b);
//    
//   NSString *c = [a substringWithRange:NSMakeRange(3, 2)];
//    
//    NSLog(@"%@",c);
//    NSString*string =@"01234:56789";
//    string = [string substringToIndex:7];//截取掉下标7之前的字符串
//    NSLog(@"截取的值为：%@",string);
    
//    NSRange range = [string rangeOfString:@":"]; //现获取要截取的字符串位置
//    NSString * result = [string substringFromIndex:range.location+1]; //截取字符串
//
////    string = [string substringFromIndex:1];//截取掉下标2之后的字符串
//    NSLog(@"截取的值为：%@",result);
    
//    NSRange range = [str rangeOfString:@"aaa"]; //现获取要截取的字符串位置
//    NSString * result = [str substringFromIndex:range.location]; //截取字符串
    
    
    
    
    
//    dispatch_async(dispatch_get_main_queue(), ^{
////        YourViewController *v = [[YourViewController alloc] init];
//        [self presentViewController:self.vc animated:YES completion:^{}];
//    });

    
    
    
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 10, 150, 100)];
//    view.backgroundColor = [UIColor yellowColor];
//    
//    [[[LGAlertView alloc] initWithViewAndTitle:@"Autolayouts"
//                                       message:@"You need to set width and height constraints"
//                                         style:LGAlertViewStyleAlert
//                                          view:self.alertVC.view
//                                  buttonTitles:@[@"Done"]
//                             cancelButtonTitle:@"Cancel"
//                        destructiveButtonTitle:nil
//                                      delegate:self] showAnimated:YES completionHandler:nil];
    
    
//    NSLog(@"~~~~~~点击蓝牙~~~~~");
//    EGmyAlertView *alertView = [EGmyAlertView new];
//    [self.view addSubview:alertView];
//    alertView.frame = [UIScreen mainScreen].bounds;
//    imagePickerViewController *contentView = [imagePickerViewController new];
//    alertView.contentView = contentView;
//    [alertView show];
    
    [self gifPlay2];
    
    
//    [self presentViewController:self.imagePickVC animated:YES completion:nil];
    
//    [self recell];
//    
//    float Intervaltime = 0.5;
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:Intervaltime target:self selector:@selector(circleAnimation) userInfo:nil repeats:YES];
    
}

- (void)recell{
    //创建出CAShapelasyer
    self.shapeLayer = [CAShapeLayer layer];
    //填充颜色
    self.shapeLayer.fillColor = [UIColor clearColor].CGColor;
    //设置线条的宽度和颜色
    self.shapeLayer.lineWidth = 4.0f;
    self.shapeLayer.strokeColor = [UIColor orangeColor].CGColor;
    

    self.shapeLayerTwo = [CAShapeLayer layer];
    self.shapeLayerTwo.fillColor = [UIColor clearColor].CGColor;
    //设置第二条背景线条的宽度和颜色
    self.shapeLayerTwo.lineWidth = 4.0f;
    self.shapeLayerTwo.strokeColor = [UIColor redColor].CGColor;
    
    //画贝塞尔曲线//画出一个园
    UIBezierPath *path = [[UIBezierPath alloc] init];
    //moveToPoint:去设置初始线段的起点
    [path moveToPoint:CGPointMake(100, 50)];
    [path addArcWithCenter:CGPointMake(50, 50) radius:50 startAngle:0 endAngle:2*M_PI clockwise:YES];
    
    //设置第一条第一条曲线与设定的贝塞尔曲线相同，所以在设定两条曲线的时候，可以不需要设置大小与位置
    self.shapeLayer.path = path.CGPath;
    self.shapeLayerTwo.path = path.CGPath;
    
    //设置起始点.保证圈不被显示出来
    self.shapeLayer.strokeStart = 0;
    self.shapeLayer.strokeEnd = 0;
    //加载
    [self.loadingView.layer addSublayer:self.shapeLayerTwo];
    [self.loadingView.layer addSublayer:self.shapeLayer];
}


//定时器每次时间到了执行
- (void)circleAnimation{
   _timeD = 0.5;
    //利用定时器控制始位置的方式做动画。
    self.shapeLayer.strokeEnd +=_timeD;
    if (self.shapeLayer.strokeEnd == 1) {
        //停止计时器
        [self.timer invalidate];
        self.timer = nil;
    }
}


-(void)gifPlay2  {
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    view.backgroundColor = [UIColor blackColor];
    
    view.alpha = 0.7;
    
    [self.view addSubview:view];
    [view bringSubviewToFront:self.view];
    
    NSString  *gifPath=[[NSBundle mainBundle] pathForResource:@"22" ofType:@"gif"];
    YFGIFImageView  *gifview=[[YFGIFImageView alloc]init];
    gifview.backgroundColor=[UIColor clearColor];
    gifview.gifPath=gifPath;
    gifview.frame=view.frame;
    [view addSubview:gifview];
    [gifview startGIF];
}





#pragma mark - LGAlertViewDelegate

- (void)alertView:(LGAlertView *)alertView clickedButtonAtIndex:(NSUInteger)index title:(nullable NSString *)title {
    NSLog(@"action {title: %@, index: %lu}", title, (long unsigned)index);
}

- (void)alertViewCancelled:(LGAlertView *)alertView {
    NSLog(@"cancel");
}

- (void)alertViewDestructed:(LGAlertView *)alertView {
    NSLog(@"destructive");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
