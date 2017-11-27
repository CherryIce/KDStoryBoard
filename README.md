# KDStoryBoard

1.删除Main本身的ViewController 拉UITabBarController


2.删除UITabBarController自带的Item,拉需要的功能界面数，创建对应的控制器，加导航栏(Editor - Embed in - nav)，与UITabBarController建立连线(viewcontrollers)


3.自定义导航栏，UITabBarController


4.控制器之间跳转用show(iOS8+)


5.不同模块创建不同的storyboard:


主storyboard用[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]创建(Main即自定义名称)


用[[UIStoryboard storyboardWithName:@"xxxxboard" bundle:nil] instantiateViewControllerWithIdentifier:@"currentStoryboardID"](xxxxboard即自定义名称,currentStoryboardID自定义ID)
