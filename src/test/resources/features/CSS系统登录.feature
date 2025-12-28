Feature: CSS系统登录
  Background: 打开浏览器
    Given 打开目标浏览器

  @SampleTests
  Scenario: CSS系统登录
    When 导航到 "http://172.17.123.65:8080/oauth/login"
    Then 断言浏览器的 "title" 属性包含 "login"
    When 输入 "1347409283111@novogene.com" 到通过 "text": "邮箱" 找到的元素中
    When 输入 "password1" 到通过 "text": "密码" 找到的元素中
    And 按下 "Enter" 到通过 "text": "登入" 找到的元素中
    Then 断言浏览器的 "title" 属性包含 "home"
    Then 关闭当前窗口