#import "AppDelegate.h"
#import "MiniMaxArrayConverter.h"
#import "T1Array.h"
#import "BillCounter.h"
#import "Parser.h"
#import "PalindromeSolver.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //task1
    MiniMaxArrayConverter*task1 =[[MiniMaxArrayConverter alloc] init];
    NSLog(@"%@",[task1 convertFromArray:(@[@1, @2, @33, @44, @4, @22, @3])]);
    //task2
    T1Array*task2 = [[T1Array alloc] init];
    NSLog(@"%@",[task2 convertToHappy:(@[@1, @2, @33, @44, @4, @22, @3])]);
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    [self.window setRootViewController: [UIViewController new]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {}
- (void)applicationDidEnterBackground:(UIApplication *)application {}
- (void)applicationWillEnterForeground:(UIApplication *)application {}
- (void)applicationDidBecomeActive:(UIApplication *)application {}
- (void)applicationWillTerminate:(UIApplication *)application {}
@end
