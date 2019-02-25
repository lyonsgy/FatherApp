//
//  ViewController.m
//  FatherApp
//
//  Created by lyons on 2019/2/22.
//  Copyright © 2019 lyons. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField.delegate = self;
    self.textField.text = [CommonFuction getFatherMessage];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.textField resignFirstResponder];
}

//FatherApp 通过TextField来向共享文件appGroup.txt中写入数据
- (void)textFieldDidEndEditing:(UITextField *)textField {
    //获取App Group的共享目录
    NSURL *groupURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:@"group.test.app.group.main"];
    NSURL *fileURL = [groupURL URLByAppendingPathComponent:@"appGroup.txt"];
    
    //写入文件
    [textField.text writeToURL:fileURL atomically:YES encoding:NSUTF8StringEncoding error:nil];
}
@end
