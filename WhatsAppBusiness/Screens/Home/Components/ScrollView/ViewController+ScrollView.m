#import "ViewController+ScrollView.h"
#import "TableViewContainer.h"

@implementation ViewController (ScrollView)

- (void) addScrollViewContainer {
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0 , self.view.frame.size.height * 0.17, self.view.frame.size.width, self.view.frame.size.height * 0.83)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    [self addScrollView];
}

-(void) addScrollView {
    UIScrollView *scrollview = [[UIScrollView alloc] initWithFrame: CGRectMake(0 , self.view.frame.size.height * 0.17, self.view.frame.size.width, self.view.frame.size.height * 0.83)];
    NSInteger viewcount= 4;
    NSMutableArray *colors = [NSMutableArray arrayWithObjects:[UIColor redColor], [UIColor colorNamed:@"home"], [UIColor blackColor], [UIColor blueColor], nil];
       for(int i = 0; i< viewcount; i++) {
          CGFloat x = i * self.view.frame.size.width;
          UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x, 0,self.view.frame.size.width, self .view.frame.size.height* 0.83)];
          view.backgroundColor = colors[i];
           if(i==1){
               TableViewController *tableView = [[TableViewController alloc] init];
               [tableView cofigureTableView:view];
           }
          [scrollview addSubview:view];
       }
    [scrollview setClipsToBounds:NO];
    [scrollview setPagingEnabled:YES];
    scrollview.contentSize = CGSizeMake(self.view.frame.size.width * viewcount, self.view.frame.size.height*0.83);
    [self.view addSubview:scrollview];
    CGRect frame = scrollview.frame;
    frame.origin.x = frame.size.width;
    frame.origin.y = 0;
    [scrollview scrollRectToVisible:frame animated:YES];
    [scrollview setShowsHorizontalScrollIndicator:NO];
    [scrollview setBounces:NO];
    
}

@end
