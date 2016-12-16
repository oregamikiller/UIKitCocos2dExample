#import "ViewController.h"
#import "CocosViewController.h"

@interface ViewController ()
    
    @end

@implementation ViewController
    CocosViewController* rootController;
    
- (void)viewDidLoad {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(0, 100, 100, 50);
    button.tag = 1001;
    [button setTitle:@"跳到 cocos" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}
    
-(void)buttonPressed:(id)sender
    
    {
        NSLog(@"[类 方法]：%s", "pressed");
        UIButton *button = (UIButton *)sender;
        
        if(button.tag == 1001 && !rootController) {
            rootController = [[CocosViewController alloc] init];
            [self.view addSubview:rootController.view];
            
        } else {
            [rootController.view removeFromSuperview];
            NSLog(@"[类 方法]：%s", "xXXXXx");
        }
        
        //    [self.navigationController pushViewController:rootController animated:YES];
        
    }
    
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
    
    
    @end

