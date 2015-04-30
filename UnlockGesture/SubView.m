//
//  SubView.m
//  UnlockGesture
//
//  Created by liangbin on 15/4/30.
//  Copyright (c) 2015年 liangbin. All rights reserved.
//

#import "SubView.h"

@implementation SubView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)awakeFromNib{
    for (int i=0; i<9; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setUserInteractionEnabled:NO];
        [btn setImage:[UIImage imageNamed:@"gesture_node_normal"] forState:UIControlStateNormal];
        [btn setImage:[UIImage imageNamed:@"gesture_node_highlighted"] forState:UIControlStateSelected];
        [self addSubview:btn];
    }
}

-(void)layoutSubviews{
    
    CGFloat x=0;
    CGFloat y=0;
    CGFloat w=74;
    CGFloat h=74;
    CGFloat row=0;
    CGFloat col=0;
    
    for (int i=0; i<9; i++) {
        UIButton *btn = self.subviews[i];
        row = i/3;
        col = i%3;
        x = 10 + (10 + w)*col;
        y = 10 + (10 + h)*row;
        btn.frame = CGRectMake(x, y, w, h);
    }
    
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    for (UIButton *btn in self.subviews) {
        if (CGRectContainsPoint(btn.frame, point)) {
            btn.selected = YES;
        }
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self];
    for (UIButton *btn in self.subviews) {
        if (CGRectContainsPoint(btn.frame, point)) {
            btn.selected = YES;
        }
    }
}

@end
