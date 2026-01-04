需求：此功能文件演示SHAFT_Engine内置步骤
Feature: 基础SHAFT_Engine Cucumber Web步骤

  Background: 打开浏览器
    Given 我打开目标浏览器

  @SampleTests
  Scenario: 导航到DuckDuckGo.com，并断言浏览器标题正确显示
    When 我导航到 "https://duckduckgo.com/"
    Then 我断言浏览器的 "title" 属性包含 "DuckDuckGo"
    And 我关闭当前窗口

  @SampleTests
  Scenario: 导航到DuckDuckGo.com，搜索查询，并断言logo正确显示
    When 我导航到 "https://duckduckgo.com/"
    Then 判断通过 "xpath": "//div[contains(@class,'container_fullWidth__1H_L8')]//img" 找到的元素与使用AI OpenCV的预期参考图像完全匹配
    And 我关闭当前窗口

  @SampleTests
  Scenario: 导航到DuckDuckGo.com，搜索查询，并断言第一个结果不包含意外文本
    When 我导航到 "https://duckduckgo.com/"
    And 我输入 "SHAFT_Engine" 到通过 "name": "q" 找到的元素中
    And 我按下 "Enter" 到通过 "name": "q" 找到的元素中
    Then 判断通过 "xpath": "(//article)[1]" 找到的元素的 "text" 属性不等于 "Nope"
    And 我关闭当前窗口
