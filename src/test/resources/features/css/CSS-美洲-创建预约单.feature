Feature: CSS系统登录


  Background:
    Given  打开目标浏览器
    When 导航到"http://172.17.123.64:8080/oauth/login"
    Then 判断浏览器的"CurrentUrl"属性包含"login"
    Then 输入"usbrazil1212@novogene.com"到通过"name": "username"找到的元素中
    Then 输入"Novo1233"到通过"name": "password"找到的元素中
    Then 点击通过"xpath": "//button[contains(text(), '登入')]"找到的元素
    Then 判断浏览器的"CurrentUrl"属性包含"home"


  @SampleTests
  Scenario: CSS系统 创建预约单
    When 点击通过"xpath": "//button[contains(text(), '送样申请')]"找到的元素
    Then 点击通过"xpath": "//button[.//img[contains(@src, 'operation') and @alt='operation']]"找到的元素
    Then 点击通过"xpath": "//button[contains(text(), '预约取样')]"找到的元素
    Then 点击通过"xpath": "//button[contains(text(), '添加批次单')]"找到的元素
    When 输入"Z251230003"到通过"xpath": "//div[@class='project-search' and @id='area']//input[@type='text']"找到的元素中
    Then 按下"Enter"到通过"xpath": "//input[@value='Z251230003']"找到的元素中
    Then 点击通过"xpath": "//tr[.//span[normalize-space(text())='Z251230003']]//span[@class='ant-checkbox']"找到的元素
    Then 点击通过"xpath": "//button[contains(text(), 'Confirm')]"找到的元素










    And  关闭当前窗口



