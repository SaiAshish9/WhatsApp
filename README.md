## Status Bar Light Content Appearance

```
1. Project -> Target -> Deployment Info -> Status Bar Style -> Light
2. At Info.plist, set `View controller-based status bar appearance` equal to `NO`
```

## Custom Fonts Integration

```
1. Place your fonts directory inside the parent one.

2. Go to info.plist and add `Fonts provided by application` string array of .ttf files 

3. At AppDelegate.m, place following code:
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    NSLog(@"%@", [UIFont familyNames]);
    return YES;
}
```