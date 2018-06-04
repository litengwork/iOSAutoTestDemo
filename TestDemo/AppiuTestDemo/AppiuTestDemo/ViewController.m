//
//  ViewController.m
//  AppiuTestDemo
//
//  Created by Fernando on 2018/5/14.
//  Copyright © 2018年 Liteng. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertTool.h"
#import "HomeViewController.h"

static NSString *user = @"admin";
static NSString *pwd = @"123456";



@interface ViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UIButton *confirm;
@property (weak, nonatomic) IBOutlet UILabel *labelss;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _password.text = @"";
    _username.text = @"";

    _confirm.enabled = NO;
    _username.delegate = self;
    _password.delegate = self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_username becomeFirstResponder];
    
    /**
     *  添加事件监听
     */
    [_password addTarget:self action:@selector(textFieldValueChange:) forControlEvents:UIControlEventEditingChanged];
}

- (IBAction)confirmAction:(id)sender {
//    UIAlertTool *aler  = [[UIAlertTool alloc] init];
    if ([_username.text isEqualToString:user] || [_password.text isEqualToString:pwd]) {
        
//        [aler showAlertView:self title:@"提示" message:@"登陆成功" cancelButtonTitle:@"取消" otherButtonTitle:@"确定" :^{
            UIStoryboard *secondStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            HomeViewController *goodvc = [secondStoryBoard instantiateViewControllerWithIdentifier:@"HomeViewController"];
            [self.navigationController pushViewController:goodvc animated:YES];
//        } :^{
//        }];
    } else {
//        [aler showAlertView:self title:@"提示" message:@"账号密码错误请重新输入" cancelButtonTitle:@"重新输入" :^{
//        } :^{
            self.username.text = @"";
            self.password.text = @"";
            [self.username becomeFirstResponder];
        _confirm.enabled = NO;
//        }];
    }
}

#pragma mark - 监听方法
- (void)textFieldValueChange:(UITextField *)textField
{
    NSLog(@"%@", textField.text);
    if (_username.text.length >= 1) {
        if (textField.text.length >= 1) {
            _confirm.enabled = YES;
        } else {
            _confirm.enabled = NO;
        }
    } else {
        _confirm.enabled = NO;
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
