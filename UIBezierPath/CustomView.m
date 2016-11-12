




//
//  CustomView.m
//  UIBezierPath
//
//  Created by doohanTech on 16/11/12.
//  Copyright © 2016年 doohanTech. All rights reserved.
//

#import "CustomView.h"

#define degressToRadius(ang) (M_PI*(ang)/180.0f)

@implementation CustomView


- (void)drawRect:(CGRect)rect {
    
    [self drawTrianglePath];
    [self drawCornerRect];
    [self drawArc];
    [self drawSecondBezierPath];
    [self drawThirdBezierPath];

}


// 画三角形
- (void)drawTrianglePath
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(170, 30)];//设置起点
    [path addLineToPoint:CGPointMake(30, 130)];
    [path addLineToPoint:CGPointMake(150, 130)];
    [path closePath];//闭合路径  也可以添加的起点路径
    
    path.lineWidth = 3.0;                   //线宽
    path.lineCapStyle = kCGLineCapRound;     //弯角样式
    path.lineJoinStyle = kCGLineJoinBevel;   //交点的样式
    
    [[UIColor redColor] set];
    [path fill];                 //形状内部的填充颜色
    
    [[UIColor greenColor] set];
    [path stroke];               //边框线颜色
    //如果要让填充颜色与画笔颜色不一样，那么我们的顺序必须是先设置填充颜色再设置画笔颜色
}

// 画圆角矩形

- (void)drawCornerRect{
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(30, 140, 200, 100) byRoundingCorners:UIRectCornerTopLeft | UIRectCornerBottomLeft cornerRadii:CGSizeMake(10, 10)];
    path.lineWidth = 3.0;                   //线宽
    path.lineCapStyle = kCGLineCapRound;     //弯角样式
    path.lineJoinStyle = kCGLineJoinBevel;   //交点的样式
    
    [[UIColor greenColor] set];
    [path stroke];               //边框线颜色
    
    
}

// 画弧

- (void)drawArc{
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 350) radius:100.0 startAngle:(130.0/180.0)*M_PI endAngle:degressToRadius(280) clockwise:YES];
    
    path.lineWidth = 3.0;                   //线宽
    path.lineCapStyle = kCGLineCapRound;     //弯角样式
    path.lineJoinStyle = kCGLineJoinBevel;   //交点的样式

    [[UIColor greenColor] set];
    [path stroke];               //边框线颜色
}

//画二次曲线

- (void)drawSecondBezierPath{
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(230, 340)];            //添加起点
    [path addQuadCurveToPoint:CGPointMake(300, 340) controlPoint:CGPointMake(150, 180)];//添加终点和控制点
    
    path.lineWidth = 3.0;                   //线宽
    path.lineCapStyle = kCGLineCapRound;     //弯角样式
    path.lineJoinStyle = kCGLineJoinBevel;   //交点的样式
    
    [[UIColor greenColor] set];
    [path stroke];               //边框线颜色

}


//画三次曲线
- (void)drawThirdBezierPath{

    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(50, 500)];            //添加起点
    [path addCurveToPoint:CGPointMake(300, 500) controlPoint1:CGPointMake(150, 430) controlPoint2:CGPointMake(250, 660)];//添加终点和控制点

    [path closePath];  //闭合
    
    path.lineWidth = 3.0;                   //线宽
    path.lineCapStyle = kCGLineCapRound;     //弯角样式
    path.lineJoinStyle = kCGLineJoinBevel;   //交点的样式
    
    [[UIColor greenColor] set];
    [path stroke];               //边框线颜色





}







@end
