//
//  CommonFuction.m
//  SonApp
//
//  Created by lyons on 2019/2/25.
//  Copyright © 2019 lyons. All rights reserved.
//

#import "CommonFuction.h"

@implementation CommonFuction
/**
 获取父app存储的信息

 @return 存储的信息
 */
+ (NSString *)getFatherMessage{
    NSURL *groupURL = [[NSFileManager defaultManager] containerURLForSecurityApplicationGroupIdentifier:@"group.test.app.group.main"];
    NSURL *fileURL = [groupURL URLByAppendingPathComponent:@"appGroup.txt"];
    //读取文件
    NSString *str = [NSString stringWithContentsOfURL:fileURL encoding:NSUTF8StringEncoding error:nil];
    return str;
}
@end
