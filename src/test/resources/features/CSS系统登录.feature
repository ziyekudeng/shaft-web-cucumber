# language: zh-CN
功能: CSS系统登录


  背景:
    给  打开目标浏览器

  @SampleTests
  场景: CSS系统登录
    当   导航到"http://172.17.123.65:8080/oauth/login"
    那么 判断浏览器的"title"属性包含"login"
    当   输入"1347409283111@novogene.com"到通过 "text": "邮箱" 找到的元素中
    当   输入"password1"到通过"text": "密码" 找到的元素中
    并且  按下"Enter" 到通过"text": "登入" 找到的元素中
    那么  判断浏览器的"title"属性包含 "home"
    那么  关闭当前窗口