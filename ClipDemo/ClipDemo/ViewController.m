//
//  ViewController.m
//  ClipDemo
//
//  Created by renlei on 16/3/24.
//  Copyright © 2016年 renlei. All rights reserved.
//

#import "ViewController.h"

#define kThemeColor [UIColor colorWithRed:21/255.0 green:184/255.0 blue:128/255.0 alpha:1]
#define kAfterTime  (_time += kDuration)
static NSTimeInterval kDuration =  0.4;

@interface ViewController ()
@property (nonatomic, strong) UIImageView *image;
@property (nonatomic, strong) UIView *layerView;
@property (nonatomic, assign) NSTimeInterval time;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"gy_daishu@3x"]];
    image.frame = CGRectMake(-10, 0, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)/2-50);
    image.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:image];
    
    self.image = image;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"开始" forState:UIControlStateNormal];
    button.frame = CGRectMake(0, CGRectGetMaxY(image.frame), CGRectGetWidth(self.view.frame), 50);
    [button addTarget:self action:@selector(beginAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIView *view = [[UIView alloc] init];
    view.frame = CGRectMake(0, CGRectGetMaxY(button.frame), CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame)-CGRectGetMaxY(button.frame));
    [self.view addSubview:view];
    view.backgroundColor = kThemeColor;
    self.layerView = view;

}


- (void)beginAction {
    
    self.time = 0;

    [self.layerView.layer.sublayers makeObjectsPerformSelector:@selector(removeFromSuperlayer)];
    
    
    
    UIBezierPath *path1 = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(222, 218, 4, 4)];

    
    UIBezierPath *path2 = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(231, 218, 4, 4)];

    
    
    UIBezierPath *path3 = UIBezierPath.bezierPath;
    [path3 moveToPoint: CGPointMake(-0.27, 309.82)];
    [path3 addCurveToPoint: CGPointMake(49.79, 296.03) controlPoint1: CGPointMake(6.74, 306.52) controlPoint2: CGPointMake(29.67, 301.17)];
    [path3 addCurveToPoint: CGPointMake(89.09, 283.04) controlPoint1: CGPointMake(67.17, 291.59) controlPoint2: CGPointMake(82.63, 285.59)];
    [path3 addCurveToPoint: CGPointMake(128.15, 250.88) controlPoint1: CGPointMake(93.46, 281.32) controlPoint2: CGPointMake(118.86, 273.01)];
    [path3 addCurveToPoint: CGPointMake(135.61, 201.19) controlPoint1: CGPointMake(134.48, 235.82) controlPoint2: CGPointMake(133.5, 217.4)];
    [path3 addCurveToPoint: CGPointMake(145.61, 159.46) controlPoint1: CGPointMake(138.43, 179.49) controlPoint2: CGPointMake(144.55, 158.67)];
    [path3 addCurveToPoint: CGPointMake(154.13, 187.27) controlPoint1: CGPointMake(148.63, 161.72) controlPoint2: CGPointMake(150.43, 175.74)];
    [path3 addCurveToPoint: CGPointMake(166.38, 204.55) controlPoint1: CGPointMake(157.84, 198.79) controlPoint2: CGPointMake(166.38, 204.55)];
    [path3 addCurveToPoint: CGPointMake(165.38, 211.8) controlPoint1: CGPointMake(166.38, 204.55) controlPoint2: CGPointMake(167.67, 210.58)];
    [path3 addCurveToPoint: CGPointMake(156.43, 213.41) controlPoint1: CGPointMake(163.19, 212.98) controlPoint2: CGPointMake(160.55, 212.88)];
    [path3 addCurveToPoint: CGPointMake(148.69, 214.94) controlPoint1: CGPointMake(153.73, 213.75) controlPoint2: CGPointMake(148.69, 214.94)];

 
    UIBezierPath *path4 = UIBezierPath.bezierPath;
    [path4 moveToPoint: CGPointMake(-0.15, 309.49)];
    [path4 addCurveToPoint: CGPointMake(7.02, 318.4) controlPoint1: CGPointMake(0.02, 310.88) controlPoint2: CGPointMake(2.17, 317.19)];
    [path4 addCurveToPoint: CGPointMake(63.59, 321.39) controlPoint1: CGPointMake(23.15, 322.4) controlPoint2: CGPointMake(58.02, 321.16)];
    [path4 addCurveToPoint: CGPointMake(84.9, 318.95) controlPoint1: CGPointMake(71.55, 321.73) controlPoint2: CGPointMake(78.89, 319.9)];
    [path4 addCurveToPoint: CGPointMake(117.15, 308.41) controlPoint1: CGPointMake(99.78, 316.6) controlPoint2: CGPointMake(108.95, 312.57)];
    [path4 addCurveToPoint: CGPointMake(138.01, 289.65) controlPoint1: CGPointMake(128.22, 302.79) controlPoint2: CGPointMake(134.02, 296.19)];
    [path4 addCurveToPoint: CGPointMake(143.3, 266.12) controlPoint1: CGPointMake(143.38, 280.83) controlPoint2: CGPointMake(144.63, 272.13)];
    [path4 addCurveToPoint: CGPointMake(140.55, 260.05) controlPoint1: CGPointMake(142.09, 260.66) controlPoint2: CGPointMake(140.55, 260.05)];
    [path4 addCurveToPoint: CGPointMake(148.29, 270.33) controlPoint1: CGPointMake(140.55, 260.05) controlPoint2: CGPointMake(147, 262.64)];
    [path4 addCurveToPoint: CGPointMake(147, 280.59) controlPoint1: CGPointMake(149.59, 278.01) controlPoint2: CGPointMake(147.49, 278.28)];
    [path4 addCurveToPoint: CGPointMake(140.55, 293.72) controlPoint1: CGPointMake(145.7, 286.71) controlPoint2: CGPointMake(140.87, 292.49)];
    [path4 addCurveToPoint: CGPointMake(131.5, 308.41) controlPoint1: CGPointMake(139.53, 297.75) controlPoint2: CGPointMake(134.27, 303.05)];
    [path4 addCurveToPoint: CGPointMake(122.05, 329.16) controlPoint1: CGPointMake(126.66, 317.75) controlPoint2: CGPointMake(122.05, 329.16)];
    [path4 addLineToPoint: CGPointMake(202.43, 326.63)];
    [path4 addLineToPoint: CGPointMake(205.58, 326.3)];
    [path4 addLineToPoint: CGPointMake(206.58, 315.98)];

    
    UIBezierPath* path5 = UIBezierPath.bezierPath;
    [path5 moveToPoint: CGPointMake(206.16, 325.33)];
    [path5 addLineToPoint: CGPointMake(218.5, 325.33)];
    [path5 addLineToPoint: CGPointMake(218.5, 316.35)];

    
    UIBezierPath* path6 = UIBezierPath.bezierPath;
    [path6 moveToPoint: CGPointMake(221.54, 325.87)];
    [path6 addLineToPoint: CGPointMake(232.27, 324.74)];
    [path6 addCurveToPoint: CGPointMake(221.54, 307.96) controlPoint1: CGPointMake(232.27, 324.74) controlPoint2: CGPointMake(232.54, 314.44)];
    [path6 addCurveToPoint: CGPointMake(200.41, 301.41) controlPoint1: CGPointMake(215.05, 304.13) controlPoint2: CGPointMake(205.2, 302.37)];
    [path6 addCurveToPoint: CGPointMake(159.65, 303.66) controlPoint1: CGPointMake(189.14, 299.16) controlPoint2: CGPointMake(159.65, 303.66)];
    [path6 addCurveToPoint: CGPointMake(175.78, 263.92) controlPoint1: CGPointMake(159.65, 303.66) controlPoint2: CGPointMake(173.2, 274.3)];
    [path6 addCurveToPoint: CGPointMake(179.19, 246.43) controlPoint1: CGPointMake(176.68, 260.31) controlPoint2: CGPointMake(178.62, 250.2)];
    [path6 addCurveToPoint: CGPointMake(179.19, 228.75) controlPoint1: CGPointMake(181.15, 233.58) controlPoint2: CGPointMake(179.19, 228.75)];
    [path6 addCurveToPoint: CGPointMake(172.17, 223.5) controlPoint1: CGPointMake(179.19, 228.75) controlPoint2: CGPointMake(174.16, 225.07)];
    [path6 addCurveToPoint: CGPointMake(168.76, 220.56) controlPoint1: CGPointMake(171.04, 222.6) controlPoint2: CGPointMake(169.79, 222.55)];
    [path6 addCurveToPoint: CGPointMake(166.59, 213.82) controlPoint1: CGPointMake(167.52, 218.14) controlPoint2: CGPointMake(166.59, 213.82)];

    
    
    UIBezierPath* path7 = UIBezierPath.bezierPath;
    [path7 moveToPoint: CGPointMake(210.12, 298.43)];
    [path7 addCurveToPoint: CGPointMake(240.27, 295.79) controlPoint1: CGPointMake(210.12, 298.43) controlPoint2: CGPointMake(231.91, 293.51)];
    [path7 addCurveToPoint: CGPointMake(253.18, 304.43) controlPoint1: CGPointMake(244.48, 296.93) controlPoint2: CGPointMake(249.49, 300.5)];
    [path7 addCurveToPoint: CGPointMake(258.44, 312.57) controlPoint1: CGPointMake(256.27, 307.73) controlPoint2: CGPointMake(258.44, 312.57)];
    [path7 addLineToPoint: CGPointMake(248.4, 313.18)];
    [path7 addLineToPoint: CGPointMake(244.46, 302.77)];
  
    
    
    UIBezierPath* path8 = UIBezierPath.bezierPath;
    [path8 moveToPoint: CGPointMake(245.48, 313.73)];
    [path8 addLineToPoint: CGPointMake(234.44, 313.84)];
    [path8 addLineToPoint: CGPointMake(232.7, 302.82)];
    
    

    UIBezierPath* path9 = UIBezierPath.bezierPath;
    [path9 moveToPoint: CGPointMake(231.94, 312.52)];
    [path9 addCurveToPoint: CGPointMake(221.35, 304.72) controlPoint1: CGPointMake(229.08, 310.92) controlPoint2: CGPointMake(224.21, 306.32)];
    [path9 addCurveToPoint: CGPointMake(207.82, 299.05) controlPoint1: CGPointMake(216.17, 301.83) controlPoint2: CGPointMake(207.82, 299.05)];

    
    UIBezierPath* path10 = UIBezierPath.bezierPath;
    [path10 moveToPoint: CGPointMake(201.45, 236.51)];
    [path10 addCurveToPoint: CGPointMake(201.12, 229.08) controlPoint1: CGPointMake(201.45, 235.95) controlPoint2: CGPointMake(200.32, 235.73)];
    [path10 addCurveToPoint: CGPointMake(202.49, 221.38) controlPoint1: CGPointMake(201.27, 227.79) controlPoint2: CGPointMake(201.37, 223.66)];
    [path10 addCurveToPoint: CGPointMake(205.98, 214.44) controlPoint1: CGPointMake(203.67, 218.97) controlPoint2: CGPointMake(205.86, 216.38)];
    [path10 addCurveToPoint: CGPointMake(203.45, 200.44) controlPoint1: CGPointMake(206.13, 211.96) controlPoint2: CGPointMake(203.45, 209.71)];
    [path10 addCurveToPoint: CGPointMake(209.57, 185.61) controlPoint1: CGPointMake(203.45, 191.16) controlPoint2: CGPointMake(209.34, 186)];
    [path10 addCurveToPoint: CGPointMake(214.6, 180.06) controlPoint1: CGPointMake(212.24, 181.01) controlPoint2: CGPointMake(214.6, 180.06)];
    [path10 addCurveToPoint: CGPointMake(218.78, 183.65) controlPoint1: CGPointMake(214.6, 180.06) controlPoint2: CGPointMake(217.39, 182.12)];
    [path10 addCurveToPoint: CGPointMake(223.62, 188.97) controlPoint1: CGPointMake(220.4, 185.43) controlPoint2: CGPointMake(223.62, 188.97)];
    [path10 addCurveToPoint: CGPointMake(229.26, 181.04) controlPoint1: CGPointMake(223.62, 188.97) controlPoint2: CGPointMake(227.92, 185.41)];
    [path10 addCurveToPoint: CGPointMake(228.23, 174.46) controlPoint1: CGPointMake(229.92, 178.91) controlPoint2: CGPointMake(229.11, 177.36)];
    [path10 addCurveToPoint: CGPointMake(205.05, 128.05) controlPoint1: CGPointMake(223.77, 159.71) controlPoint2: CGPointMake(208.02, 139.28)];
    [path10 addCurveToPoint: CGPointMake(203.45, 99.22) controlPoint1: CGPointMake(203.33, 121.55) controlPoint2: CGPointMake(202.25, 107.6)];
    [path10 addCurveToPoint: CGPointMake(207.45, 90.93) controlPoint1: CGPointMake(204.35, 92.88) controlPoint2: CGPointMake(207.45, 90.93)];
    [path10 addCurveToPoint: CGPointMake(236.08, 86.43) controlPoint1: CGPointMake(207.45, 90.93) controlPoint2: CGPointMake(228.87, 88.26)];
    [path10 addCurveToPoint: CGPointMake(258.54, 76.67) controlPoint1: CGPointMake(243.94, 84.43) controlPoint2: CGPointMake(258.54, 76.67)];
    [path10 addCurveToPoint: CGPointMake(231.79, 78.44) controlPoint1: CGPointMake(258.54, 76.67) controlPoint2: CGPointMake(239.35, 79.01)];
    [path10 addCurveToPoint: CGPointMake(207.45, 77.44) controlPoint1: CGPointMake(228.59, 78.2) controlPoint2: CGPointMake(211.46, 77.96)];

    
    UIBezierPath* path11 = UIBezierPath.bezierPath;
    [path11 moveToPoint: CGPointMake(207.99, 76.16)];
    [path11 addCurveToPoint: CGPointMake(232.97, 76.41) controlPoint1: CGPointMake(209.09, 75.29) controlPoint2: CGPointMake(220.52, 76.59)];
    [path11 addCurveToPoint: CGPointMake(251.08, 75.51) controlPoint1: CGPointMake(239.51, 76.32) controlPoint2: CGPointMake(245.33, 76.1)];
    [path11 addCurveToPoint: CGPointMake(263.42, 72.87) controlPoint1: CGPointMake(256.03, 75) controlPoint2: CGPointMake(260.73, 73.98)];
    [path11 addCurveToPoint: CGPointMake(268.37, 67.83) controlPoint1: CGPointMake(267.31, 71.26) controlPoint2: CGPointMake(268.07, 68.48)];
    [path11 addCurveToPoint: CGPointMake(268.37, 60.75) controlPoint1: CGPointMake(269.35, 65.68) controlPoint2: CGPointMake(269.39, 61.16)];
    
    [path11 addCurveToPoint: CGPointMake(261.95, 64.1)
              controlPoint1: CGPointMake(264.58, 63.44)
              controlPoint2: CGPointMake(264.14-2-1-1, 64.3)];
    
    
    [path11 addCurveToPoint: CGPointMake(256.08, 64.73) controlPoint1: CGPointMake(260.2, 63.95) controlPoint2: CGPointMake(257.51, 64.82)];
    [path11 addCurveToPoint: CGPointMake(252.08, 63.49) controlPoint1: CGPointMake(253.73, 64.57) controlPoint2: CGPointMake(252.08, 63.49)];
    [path11 addCurveToPoint: CGPointMake(249.15, 61.56) controlPoint1: CGPointMake(252.08, 63.49) controlPoint2: CGPointMake(250.52, 63.02)];
    [path11 addCurveToPoint: CGPointMake(247.17, 57.99) controlPoint1: CGPointMake(248.17, 60.52) controlPoint2: CGPointMake(247.3, 58.48)];
    [path11 addCurveToPoint: CGPointMake(247.85, 52.93) controlPoint1: CGPointMake(246.73, 56.3) controlPoint2: CGPointMake(247.85, 52.93)];
    
    
    [path11 addCurveToPoint: CGPointMake(215.09, 49.59) controlPoint1: CGPointMake(247.85, 52.93) controlPoint2: CGPointMake(220.18, 52.93)];
    [path11 addCurveToPoint: CGPointMake(196.06, 39.05) controlPoint1: CGPointMake(212.77, 48.07) controlPoint2: CGPointMake(203.93, 41.4)];
    [path11 addCurveToPoint: CGPointMake(178.15, 37.84) controlPoint1: CGPointMake(186.63, 36.24) controlPoint2: CGPointMake(178.15, 37.84)];
    [path11 addCurveToPoint: CGPointMake(174.23, 21.36) controlPoint1: CGPointMake(178.15, 37.84) controlPoint2: CGPointMake(174.87, 26.52)];
    [path11 addCurveToPoint: CGPointMake(173.69, 1.83) controlPoint1: CGPointMake(173.38, 14.52) controlPoint2: CGPointMake(173.69, 1.83)];
    [path11 addCurveToPoint: CGPointMake(165.9, 17.12) controlPoint1: CGPointMake(173.69, 1.83) controlPoint2: CGPointMake(167.5, 10.69)];
    [path11 addCurveToPoint: CGPointMake(165.46, 41.05) controlPoint1: CGPointMake(164.42, 23.1) controlPoint2: CGPointMake(165.46, 41.05)];
    [path11 addCurveToPoint: CGPointMake(160.87, 51.06) controlPoint1: CGPointMake(165.46, 41.05) controlPoint2: CGPointMake(161.07, 45.05)];
    [path11 addCurveToPoint: CGPointMake(158.03, 52.59) controlPoint1: CGPointMake(160.68, 57.06) controlPoint2: CGPointMake(158.03, 52.59)];
    [path11 addCurveToPoint: CGPointMake(146.01, 40.54) controlPoint1: CGPointMake(158.03, 52.59) controlPoint2: CGPointMake(149.35, 47.22)];
    [path11 addCurveToPoint: CGPointMake(143.42, 32.38) controlPoint1: CGPointMake(145.3, 39.12) controlPoint2: CGPointMake(143.85, 35.91)];
    [path11 addCurveToPoint: CGPointMake(142.24, 22.76) controlPoint1: CGPointMake(143.06, 29.45) controlPoint2: CGPointMake(142.71, 25.29)];
    [path11 addCurveToPoint: CGPointMake(140.92, 17.12) controlPoint1: CGPointMake(141.34, 17.97) controlPoint2: CGPointMake(140.92, 17.12)];
    [path11 addCurveToPoint: CGPointMake(136.93, 27.77) controlPoint1: CGPointMake(140.92, 17.12) controlPoint2: CGPointMake(137.02, 20.76)];
    [path11 addCurveToPoint: CGPointMake(136.93, 35.81) controlPoint1: CGPointMake(136.93, 28.21) controlPoint2: CGPointMake(136.99, 34.3)];
    [path11 addCurveToPoint: CGPointMake(139.19, 45.59) controlPoint1: CGPointMake(136.87, 37.32) controlPoint2: CGPointMake(137.45, 41.44)];
    [path11 addCurveToPoint: CGPointMake(144.54, 55.92) controlPoint1: CGPointMake(141.1, 50.16) controlPoint2: CGPointMake(144.2, 54.75)];
    [path11 addCurveToPoint: CGPointMake(155.84, 65.75) controlPoint1: CGPointMake(144.67, 56.37) controlPoint2: CGPointMake(155.84, 65.75)];
    [path11 addCurveToPoint: CGPointMake(156.85, 74.51) controlPoint1: CGPointMake(155.84, 65.75) controlPoint2: CGPointMake(157.51, 61.81)];
    [path11 addCurveToPoint: CGPointMake(158.61, 94.64) controlPoint1: CGPointMake(156.46, 81.93) controlPoint2: CGPointMake(157.6, 88.48)];
    [path11 addCurveToPoint: CGPointMake(159.99, 106.12) controlPoint1: CGPointMake(159.33, 99.03) controlPoint2: CGPointMake(159.99, 103.71)];
    [path11 addCurveToPoint: CGPointMake(159.61, 115.57) controlPoint1: CGPointMake(159.99, 109.34) controlPoint2: CGPointMake(160.44, 112.5)];
    [path11 addCurveToPoint: CGPointMake(151.26, 136.46) controlPoint1: CGPointMake(157.54, 123.25) controlPoint2: CGPointMake(152.71, 130.36)];
    [path11 addCurveToPoint: CGPointMake(149.01, 162.5) controlPoint1: CGPointMake(148.26, 149.12) controlPoint2: CGPointMake(149.01, 162.5)];

    
    UIBezierPath* path12 = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(185.5, 54.5, 6, 6)];

    UIBezierPath* path13 = UIBezierPath.bezierPath;
    [path13 moveToPoint: CGPointMake(205.49, 70.23)];
    [path13 addCurveToPoint: CGPointMake(205.03, 75.34) controlPoint1: CGPointMake(205, 71.94) controlPoint2: CGPointMake(205.52, 73.64)];
    [path13 addCurveToPoint: CGPointMake(202.62, 80.29) controlPoint1: CGPointMake(204.56, 76.99) controlPoint2: CGPointMake(202.62, 80.29)];

    
    UIBezierPath* path14 = UIBezierPath.bezierPath;
    [path14 moveToPoint: CGPointMake(166.34, 149.04)];
    [path14 addCurveToPoint: CGPointMake(168.9, 173.59) controlPoint1: CGPointMake(166.34, 149.04) controlPoint2: CGPointMake(166.65, 165.76)];
    [path14 addCurveToPoint: CGPointMake(176.94, 189.95) controlPoint1: CGPointMake(170.06, 177.6) controlPoint2: CGPointMake(171.88, 184.36)];
    [path14 addCurveToPoint: CGPointMake(192.8, 205.51) controlPoint1: CGPointMake(182.22, 195.76) controlPoint2: CGPointMake(190.76, 200.42)];
    [path14 addCurveToPoint: CGPointMake(192.8, 218.27) controlPoint1: CGPointMake(194.66, 210.14) controlPoint2: CGPointMake(194.43, 215.5)];
    [path14 addCurveToPoint: CGPointMake(184.18, 223.94) controlPoint1: CGPointMake(190.88, 221.54) controlPoint2: CGPointMake(184.18, 223.94)];

    
    UIBezierPath* path15 = UIBezierPath.bezierPath;
    [path15 moveToPoint: CGPointMake(184.48, 216.32)];
    [path15 addCurveToPoint: CGPointMake(184.56, 217.77) controlPoint1: CGPointMake(184.48, 214.53) controlPoint2: CGPointMake(184.85, 215.53)];
    [path15 addCurveToPoint: CGPointMake(184.48, 219.06) controlPoint1: CGPointMake(184.51, 218.17) controlPoint2: CGPointMake(184.48, 218.6)];
    [path15 addCurveToPoint: CGPointMake(180.52, 222.9) controlPoint1: CGPointMake(184.48, 222.03) controlPoint2: CGPointMake(180.52, 222.9)];
    [path15 addLineToPoint: CGPointMake(176.37, 222.85)];


    UIBezierPath* path16 = UIBezierPath.bezierPath;
    [path16 moveToPoint: CGPointMake(176.67, 214.84)];
    [path16 addLineToPoint: CGPointMake(176.65, 222.4)];

    
    UIBezierPath* path17 = UIBezierPath.bezierPath;
    [path17 moveToPoint: CGPointMake(167.1, 155.88)];
    [path17 addLineToPoint: CGPointMake(173.56, 152.9)];

    
    UIBezierPath* path18 = UIBezierPath.bezierPath;
    [path18 moveToPoint: CGPointMake(176.69, 17.36)];
    [path18 addCurveToPoint: CGPointMake(176.77, 7.44) controlPoint1: CGPointMake(176.69, 14.85) controlPoint2: CGPointMake(176.2, 10.47)];
    [path18 addCurveToPoint: CGPointMake(179.37, 0.14) controlPoint1: CGPointMake(177.52, 3.49) controlPoint2: CGPointMake(179.37, 0.14)];
    [path18 addCurveToPoint: CGPointMake(182.61, 5.94) controlPoint1: CGPointMake(179.37, 0.14) controlPoint2: CGPointMake(181.42, 2.66)];
    [path18 addCurveToPoint: CGPointMake(184.78, 16.36) controlPoint1: CGPointMake(183.82, 9.23) controlPoint2: CGPointMake(184.17, 13.29)];
    [path18 addCurveToPoint: CGPointMake(185.78, 34.34) controlPoint1: CGPointMake(185.7, 20.96) controlPoint2: CGPointMake(185.78, 34.34)];
    [path18 addLineToPoint: CGPointMake(179.34, 34.58)];
    [path18 addCurveToPoint: CGPointMake(176.69, 17.36) controlPoint1: CGPointMake(179.34, 34.58) controlPoint2: CGPointMake(176.68, 22.4)];
    
    
    UIBezierPath* path19 = UIBezierPath.bezierPath;
    [path19 moveToPoint: CGPointMake(159.17, 28.75)];
    [path19 addCurveToPoint: CGPointMake(161.38, 38.22) controlPoint1: CGPointMake(160.16, 31.27) controlPoint2: CGPointMake(161.57, 34.78)];
    [path19 addCurveToPoint: CGPointMake(157.06, 47.97) controlPoint1: CGPointMake(161.14, 42.37) controlPoint2: CGPointMake(157.06, 47.97)];
    [path19 addCurveToPoint: CGPointMake(150.74, 42.38) controlPoint1: CGPointMake(157.06, 47.97) controlPoint2: CGPointMake(152.85, 45.24)];
    [path19 addCurveToPoint: CGPointMake(145.7, 27.98) controlPoint1: CGPointMake(149.75, 41.03) controlPoint2: CGPointMake(146.55, 36.18)];
    [path19 addCurveToPoint: CGPointMake(146.63, 11.58) controlPoint1: CGPointMake(145.07, 21.82) controlPoint2: CGPointMake(146.63, 11.58)];
    [path19 addCurveToPoint: CGPointMake(159.17, 28.75) controlPoint1: CGPointMake(146.63, 11.58) controlPoint2: CGPointMake(156.76, 22.63)];

    
    UIBezierPath* path20 = UIBezierPath.bezierPath;
    [path20 moveToPoint: CGPointMake(214.37, 185.92)];
    [path20 addCurveToPoint: CGPointMake(211.45, 189.48) controlPoint1: CGPointMake(214.37, 185.92) controlPoint2: CGPointMake(211.75, 188.97)];
    [path20 addCurveToPoint: CGPointMake(208.05, 197.76) controlPoint1: CGPointMake(211.15, 189.98) controlPoint2: CGPointMake(208.28, 196.45)];
    [path20 addCurveToPoint: CGPointMake(207.53, 205.69) controlPoint1: CGPointMake(207.72, 199.62) controlPoint2: CGPointMake(207.03, 203.23)];
    [path20 addCurveToPoint: CGPointMake(209.44, 211.79) controlPoint1: CGPointMake(208.27, 209.4) controlPoint2: CGPointMake(209.44, 211.79)];
    [path20 addCurveToPoint: CGPointMake(209.01, 216.4) controlPoint1: CGPointMake(209.44, 211.79) controlPoint2: CGPointMake(209.77, 214.37)];
    [path20 addCurveToPoint: CGPointMake(206.05, 222.53) controlPoint1: CGPointMake(208.27, 218.38) controlPoint2: CGPointMake(206.43, 220.78)];
    [path20 addCurveToPoint: CGPointMake(204.92, 228.58) controlPoint1: CGPointMake(205.78, 223.72) controlPoint2: CGPointMake(205.25, 226.2)];
    [path20 addCurveToPoint: CGPointMake(204.63, 232.24) controlPoint1: CGPointMake(204.73, 229.92) controlPoint2: CGPointMake(204.6, 231.22)];
    [path20 addCurveToPoint: CGPointMake(205, 238) controlPoint1: CGPointMake(204.66, 233.97) controlPoint2: CGPointMake(204.29, 236.64)];
    [path20 addCurveToPoint: CGPointMake(208.55, 242.02) controlPoint1: CGPointMake(205.19, 238.35) controlPoint2: CGPointMake(206.52, 240.56)];
    [path20 addCurveToPoint: CGPointMake(219.64, 247.03) controlPoint1: CGPointMake(211.33, 244.04) controlPoint2: CGPointMake(215.43, 245.55)];
    [path20 addCurveToPoint: CGPointMake(237.01, 249.91) controlPoint1: CGPointMake(228.07, 250.01) controlPoint2: CGPointMake(237.01, 249.91)];

    
    UIBezierPath* path21 = UIBezierPath.bezierPath;
    [path21 moveToPoint: CGPointMake(214.08, 186.49)];
    [path21 addCurveToPoint: CGPointMake(213.81, 199.51) controlPoint1: CGPointMake(214.08, 187.89) controlPoint2: CGPointMake(213.94, 193.59)];
    [path21 addCurveToPoint: CGPointMake(214.58, 209.14) controlPoint1: CGPointMake(213.69, 204.62) controlPoint2: CGPointMake(214.58, 209.14)];
    [path21 addCurveToPoint: CGPointMake(234, 209.14) controlPoint1: CGPointMake(214.58, 209.14) controlPoint2: CGPointMake(228.57, 206.82)];
    [path21 addCurveToPoint: CGPointMake(244.04, 220.87) controlPoint1: CGPointMake(238.51, 211.08) controlPoint2: CGPointMake(239.09, 216.95)];
    [path21 addCurveToPoint: CGPointMake(254.65, 225.8) controlPoint1: CGPointMake(247.27, 223.43) controlPoint2: CGPointMake(251.24, 224.4)];
    [path21 addCurveToPoint: CGPointMake(262.92, 230.33) controlPoint1: CGPointMake(258.85, 227.52) controlPoint2: CGPointMake(262.92, 230.33)];
    [path21 addCurveToPoint: CGPointMake(257.67, 232.72) controlPoint1: CGPointMake(262.92, 230.33) controlPoint2: CGPointMake(258.95, 231.41)];
    [path21 addCurveToPoint: CGPointMake(256.6, 236.25) controlPoint1: CGPointMake(256.18, 234.25) controlPoint2: CGPointMake(256.45, 234.49)];
    [path21 addCurveToPoint: CGPointMake(257.84, 240.72) controlPoint1: CGPointMake(256.75, 238) controlPoint2: CGPointMake(257.12, 239.52)];
    [path21 addCurveToPoint: CGPointMake(259.56, 242.24) controlPoint1: CGPointMake(258.23, 241.37) controlPoint2: CGPointMake(258.94, 241.79)];
    [path21 addCurveToPoint: CGPointMake(266.23, 242.24) controlPoint1: CGPointMake(261.66, 243.79) controlPoint2: CGPointMake(266.23, 242.24)];
    [path21 addCurveToPoint: CGPointMake(264, 244.86) controlPoint1: CGPointMake(266.23, 242.24) controlPoint2: CGPointMake(265.13, 244.12)];
    [path21 addCurveToPoint: CGPointMake(259.56, 246.19) controlPoint1: CGPointMake(262.36, 245.94) controlPoint2: CGPointMake(260.4, 246.04)];
    [path21 addCurveToPoint: CGPointMake(245.04, 246.19) controlPoint1: CGPointMake(255.47, 246.95) controlPoint2: CGPointMake(248.77, 246.83)];
    [path21 addCurveToPoint: CGPointMake(225.18, 237.25) controlPoint1: CGPointMake(236.84, 244.79) controlPoint2: CGPointMake(225.18, 237.25)];
    [path21 addCurveToPoint: CGPointMake(229.27, 241.79) controlPoint1: CGPointMake(225.18, 237.25) controlPoint2: CGPointMake(226.61, 239.53)];
    [path21 addCurveToPoint: CGPointMake(234.61, 245.15) controlPoint1: CGPointMake(230.78, 243.06) controlPoint2: CGPointMake(233.36, 244.32)];
    [path21 addCurveToPoint: CGPointMake(244.15, 248.48) controlPoint1: CGPointMake(236.79, 246.6) controlPoint2: CGPointMake(244.15, 248.48)];
    [path21 addLineToPoint: CGPointMake(236.4, 249.54)];

    
    UIBezierPath* path22 = UIBezierPath.bezierPath;
    [path22 moveToPoint: CGPointMake(216.49, 193.48)];
    [path22 addCurveToPoint: CGPointMake(217.93, 185.95) controlPoint1: CGPointMake(216.49, 194.1) controlPoint2: CGPointMake(216.48, 185.55)];
    [path22 addCurveToPoint: CGPointMake(223.25, 198.02) controlPoint1: CGPointMake(219.42, 186.36) controlPoint2: CGPointMake(222.39, 195.75)];
    [path22 addCurveToPoint: CGPointMake(223.25, 207.93) controlPoint1: CGPointMake(224.39, 201.04) controlPoint2: CGPointMake(223.25, 207.93)];


    UIBezierPath* path23 = UIBezierPath.bezierPath;
    [path23 moveToPoint: CGPointMake(231.44, 190.86)];
    [path23 addCurveToPoint: CGPointMake(236.07, 184.91) controlPoint1: CGPointMake(232.98, 188.88) controlPoint2: CGPointMake(236.07, 184.91)];
    [path23 addCurveToPoint: CGPointMake(230.16, 186.41) controlPoint1: CGPointMake(236.07, 184.91) controlPoint2: CGPointMake(231.46, 185.57)];
    [path23 addCurveToPoint: CGPointMake(225.54, 192.99) controlPoint1: CGPointMake(228.28, 187.6) controlPoint2: CGPointMake(225.54, 192.99)];
    [path23 addLineToPoint: CGPointMake(227.4, 196.06)];
    [path23 addCurveToPoint: CGPointMake(231.44, 190.86) controlPoint1: CGPointMake(227.4, 196.06) controlPoint2: CGPointMake(230.09, 192.59)];

    UIBezierPath* path24 = UIBezierPath.bezierPath;
    [path24 moveToPoint: CGPointMake(238.11, 201.62)];
    [path24 addCurveToPoint: CGPointMake(239.31, 195.84) controlPoint1: CGPointMake(238.31, 200.02) controlPoint2: CGPointMake(239.32, 197.43)];
    [path24 addCurveToPoint: CGPointMake(239.75, 190.94) controlPoint1: CGPointMake(239.31, 195.28) controlPoint2: CGPointMake(240.04, 192.93)];
    [path24 addCurveToPoint: CGPointMake(238.11, 188.03) controlPoint1: CGPointMake(239.49, 189.19) controlPoint2: CGPointMake(238.23, 187.73)];
    [path24 addCurveToPoint: CGPointMake(234.65, 191.24) controlPoint1: CGPointMake(238.01, 188.3) controlPoint2: CGPointMake(235.92, 189.67)];
    [path24 addCurveToPoint: CGPointMake(231.45, 196.55) controlPoint1: CGPointMake(232.97, 193.32) controlPoint2: CGPointMake(231.97, 195.76)];
    [path24 addCurveToPoint: CGPointMake(228.38, 205.21) controlPoint1: CGPointMake(229.76, 199.1) controlPoint2: CGPointMake(228.38, 205.21)];
    [path24 addCurveToPoint: CGPointMake(232.7, 206.8) controlPoint1: CGPointMake(228.38, 205.21) controlPoint2: CGPointMake(231.6, 206.27)];
    [path24 addCurveToPoint: CGPointMake(235.92, 207.29) controlPoint1: CGPointMake(234.44, 207.63) controlPoint2: CGPointMake(235.92, 207.29)];
    [path24 addCurveToPoint: CGPointMake(238.11, 201.62) controlPoint1: CGPointMake(235.92, 207.29) controlPoint2: CGPointMake(237.71, 204.84)];
    
    
    UIBezierPath* path25 = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(260, 234, 8, 6)];

    UIBezierPath* path26 = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(250+2, 52, 13, 8)];

    UIBezierPath* path27 = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(196, 48, 7, 6)];
    
    UIBezierPath* path28 = UIBezierPath.bezierPath;
    [path28 moveToPoint: CGPointMake(227.99, 231.49)];
    [path28 addLineToPoint: CGPointMake(220.92, 239.06)];

    
    UIBezierPath* path29 = UIBezierPath.bezierPath;
    [path29 moveToPoint: CGPointMake(162.81, 300.86)];
    [path29 addCurveToPoint: CGPointMake(175.53, 298.94) controlPoint1: CGPointMake(163.8, 302.55) controlPoint2: CGPointMake(170.24, 299.49)];
    [path29 addCurveToPoint: CGPointMake(200.68, 297.47) controlPoint1: CGPointMake(183.74, 298.09) controlPoint2: CGPointMake(194.55, 298.41)];
    [path29 addCurveToPoint: CGPointMake(224.21, 287.92) controlPoint1: CGPointMake(213.73, 295.46) controlPoint2: CGPointMake(215.36, 295.72)];
    [path29 addCurveToPoint: CGPointMake(242.97, 267.3) controlPoint1: CGPointMake(239.88, 274.12) controlPoint2: CGPointMake(237.24, 275.94)];
    [path29 addCurveToPoint: CGPointMake(248.31, 251.64) controlPoint1: CGPointMake(248.69, 258.67) controlPoint2: CGPointMake(248.31, 251.64)];
    [path29 addCurveToPoint: CGPointMake(231.67, 252.22) controlPoint1: CGPointMake(248.31, 251.64) controlPoint2: CGPointMake(240.79, 253.36)];
    [path29 addCurveToPoint: CGPointMake(214.03, 247.02) controlPoint1: CGPointMake(226.07, 251.52) controlPoint2: CGPointMake(218.25, 248.5)];
    [path29 addCurveToPoint: CGPointMake(200.68, 238.94) controlPoint1: CGPointMake(210.61, 245.83) controlPoint2: CGPointMake(205.13, 242.01)];
    [path29 addCurveToPoint: CGPointMake(191.91, 231.46) controlPoint1: CGPointMake(194.97, 235.02) controlPoint2: CGPointMake(191.91, 231.46)];


    [self addPath:path3.CGPath];
    [self addPath:path4.CGPath];
    [self addPath:path5.CGPath];
    [self addPath:path6.CGPath];
    [self addPath:path7.CGPath];
    [self addPath:path8.CGPath];
    [self addPath:path9.CGPath];
    [self addPath:path10.CGPath];
    [self addPath:path11.CGPath];

    [self addPath:path13.CGPath];
    [self addPath:path14.CGPath];
    [self addPath:path15.CGPath];
    [self addPath:path16.CGPath];
    [self addPath:path17.CGPath];
    [self addPath:path18.CGPath];
    [self addPath:path19.CGPath];
    [self addPath:path20.CGPath];
    [self addPath:path21.CGPath];
    [self addPath:path22.CGPath];
    [self addPath:path23.CGPath];
    [self addPath:path24.CGPath];
    [self addPath:path25.CGPath];
    [self addPath:path26.CGPath];
    [self addPath:path27.CGPath];
    [self addPath:path28.CGPath];
    [self addPath:path29.CGPath];
    
    [self addPath:path1.CGPath];
    [self addPath:path2.CGPath];
    [self addPath:path12.CGPath];
    
}

- (void)addPath:(CGPathRef)path {
    CAShapeLayer *layer = [self creatShapeLayer];
    layer.path = path;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(kAfterTime * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        CABasicAnimation *animation = [CABasicAnimation animation];
        animation.keyPath = @"strokeEnd";
        animation.fromValue = @0;
        animation.toValue = @1;
        animation.duration = kDuration;
        [self.layerView.layer addSublayer:layer];
        [layer addAnimation:animation forKey:nil];
    });
}

- (CAShapeLayer *)creatShapeLayer {
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.lineWidth = 1.5;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.strokeColor = [UIColor whiteColor].CGColor;
    return layer;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
