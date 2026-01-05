# shaft-web-cucumber
基于SHAFT_ENGINE的Web自动化测试项目，集成Cucumber BDD框架

## 项目配置信息
- 项目名称: shaft-web-cucumber
- Group ID: io.github.ziyekudeng
- 版本: 1.0.0
- JDK版本: 21
- Maven版本: 3.9.12
- SHAFT_ENGINE版本: 9.4.20251220

## 项目依赖配置

### 核心依赖
- SHAFT_ENGINE: 核心测试框架，版本9.4.20251220
- aspectjweaver: AOP支持库，版本1.9.24
- surefire-testng: 测试执行引擎，版本3.5.4

### 构建插件
- maven-compiler-plugin: 版本3.11.0，配置支持JDK 21
- maven-resources-plugin: 版本3.3.1
- maven-surefire-plugin: 版本3.5.4，集成TestNG支持

## 构建配置
项目使用Maven进行构建，支持以下配置：
- 编译配置：使用UTF-8编码，JDK 21，最大内存10240m，初始内存1024m
- 资源配置：使用UTF-8编码
- 测试配置：默认使用TestNG profile，支持JaCoCo代码覆盖率，测试失败不中断构建

## 使用说明
1. 确保已安装JDK 21和Maven 3.9.12或更高版本
2. 克隆项目到本地
3. 使用以下命令运行测试：
   ```bash
   mvn clean test
   ```
4. 如需运行特定的测试配置文件，可以使用：
   ```bash
   mvn clean test -Ptestng
   ```

## 项目结构
- src/main/resources: 主要资源文件
- src/test/java: 测试代码，包括Cucumber测试运行器和步骤定义
- src/test/resources: 测试资源和测试数据文件
- pom.xml: Maven项目配置文件

## SHAFT_ENGINE custom.properties 配置参数清单

### 1. Web GUI 配置
- `baseURL` - 配置基础 URL，以便脚本可以在不同环境下运行
- `targetBrowserName` - 设置目标浏览器，支持 CHROME, FIREFOX, SAFARI, MICROSOFTEDGE
- `headlessExecution` - 设置是否在无头模式下运行测试（true/false）
- `createAnimatedGif` - 设置是否在 Allure 报告中生成动画 GIF（true/false）
- `videoParams_recordVideo` - 设置是否在 Allure 报告中录制视频（true/false）
- `forceCheckForElementVisibility` - 设置是否强制检查元素可见性（true/false）
- `forceCheckElementLocatorIsUnique` - 设置是否强制检查元素定位器唯一性（true/false）
- `forceCheckTextWasTypedCorrectly` - 设置是否强制检查文本输入正确性（true/false）
- `forceCheckNavigationWasSuccessful` - 设置是否强制检查导航成功（true/false）
- `respectBuiltInWaitsInNativeMode` - 设置本地模式下是否遵循内置等待（true/false）
- `clickUsingJavascriptWhenWebDriverClickFails` - 当 WebDriver 点击失败时，是否使用 JavaScript 点击元素（true/false）
- `defaultElementIdentificationTimeout` - 默认元素识别超时时间（秒）
- `browserNavigationTimeout` - 浏览器导航超时时间（秒）
- `pageLoadTimeout` - 页面加载超时时间（秒）

### 2. 移动 GUI 配置
- `executionAddress` - Appium 服务器地址，例如 localhost:4723
- `targetOperatingSystem` - 目标操作系统，支持 ANDROID 或 IOS
- `mobile_automationName` - Appium 自动化名称，例如 UiAutomator2（Android）或 XCUITest（iOS）
- `mobile_app` - APK 或 IPA 文件的相对路径，用于全新安装应用
- `mobile_appPackage` - 已安装应用的包名（不推荐使用）
- `mobile_appActivity` - 已安装应用的 Activity 名（不推荐使用）

### 3. API 配置
- `com.SHAFT.proxySettings` - 配置代理设置，例如 host:port
- `retryMaximumNumberOfAttempts` - 配置 SHAFT 自动重试失败 API 请求的最大次数
- `automaticallyAssertResponseStatusCode` - 设置是否自动断言响应状态码（true/false）
- `apiSocketTimeout` - API Socket 超时时间（秒）
- `apiConnectionTimeout` - API 连接超时时间（秒）
- `apiConnectionManagerTimeout` - API 连接管理器超时时间（秒）
- `swagger.validation.enabled` - 启用 Swagger/OpenAPI 契约验证（true/false）
- `swagger.validation.url` - Swagger/OpenAPI 规范文件的路径或 URL

### 4. 并行执行配置
- `SHAFT.CrossBrowserMode` - 启用跨浏览器模式，支持 off(默认), sequential, parallelized
- `maximumPerformanceMode` - 启用最大性能模式，例如 2

### 5. Cucumber相关配置
- `cucumber.messages.locale` - 设置Cucumber消息的语言（如zh-CN表示中文）
- `cucumber.glue` - 指定步骤定义包路径，多个包用逗号分隔
- `cucumber.plugin` - 配置Cucumber报告插件

### 6. Allure报告相关配置
- `shaft.cucumber.disableAllureDownload` - 是否禁用Allure自动下载（true/false）
- `allure.results.directory` - Allure结果输出目录
- `allure.commandline.download.url` - Allure命令行工具下载地址
- `allure.link.issue.pattern` - 问题链接模式
- `allure.link.tms.pattern` - 测试管理系统链接模式
- `allure.attach.testscreenshot` - 是否附加测试截图
- `allure.attach.testscreenshot.contenttype` - 截图内容类型（如png）
- `allure.attach.testlog` - 是否附加测试日志
- `allure.attach.testlog.contenttype` - 日志内容类型（如txt）
- `allure.screenshots.for.passed.steps` - 是否为通过的步骤生成截图
- `allure.screenshots.for.skipped.steps` - 是否为跳过的步骤生成截图
- `allure.screenshots.for.failed.steps` - 是否为失败的步骤生成截图
- `allure.attachments.to.include` - 要包含的附件类型
- `allure.attach.testscreenshot.gif` - 是否生成GIF截图
- `allure.download.checksums.enabled` - 是否启用下载校验

### 7. ReportPortal集成配置
- `rp.enable` - 启用/禁用ReportPortal集成（true/false）
- `rp.endpoint` - ReportPortal服务器端点URL
- `rp.api.key` - ReportPortal API密钥
- `rp.project` - ReportPortal项目名称
- `rp.launch` - ReportPortal启动名称

### 8. 系统环境配置
- `file.encoding` - 文件编码（如UTF-8）
- `sun.jnu.encoding` - Java本地编码（如UTF-8）

### 9. 测试执行相关配置
- `telemetry.enabled` - 是否启用遥测数据收集（true/false）

### 10. 其他可能的配置参数
- `shaft.browser.type` - 指定浏览器类型（如chrome, firefox等）
- `shaft.browser.headless` - 是否以无头模式运行浏览器
- `shaft.browser.width` - 浏览器窗口宽度
- `shaft.browser.height` - 浏览器窗口高度
- `shaft.timeout.implicit` - 隐式等待超时时间
- `shaft.timeout.explicit` - 显式等待超时时间
- `shaft.driver.path` - WebDriver驱动程序路径
- `shaft.video.recording.enabled` - 是否启用视频录制
- `shaft.highlight.elements` - 是否高亮操作的元素
- `shaft.screenshot.on.failure` - 失败时是否截屏
- `shaft.screenshot.on.error` - 错误时是否截屏

这些配置参数允许用户自定义SHAFT_ENGINE的行为，包括测试执行、报告生成、浏览器行为等各个方面。配置文件使用标准的Java Properties格式，每个参数由键值对组成，使用等号连接。