Feature: CSS系统登录


  Background:
    Given  打开目标浏览器

  @SampleTests
  Scenario: CSS系统登录
    When 导航到"http://172.17.165.171:8080/oauth/login"
    Then 判断浏览器的"CurrentUrl"属性包含"login"
    Then 输入"wd20241217@ioz.ac.cn"到通过元素属性"name": 属性值"username"找到的元素中
    Then 输入"password123"到通过元素属性"name": 属性值"password"找到的元素中
    Then 点击通过元素属性"xpath": 属性值"//button[contains(text(), '登录')]"找到的元素
    Then 判断浏览器的"CurrentUrl"属性包含"home"
    And  关闭当前窗口


