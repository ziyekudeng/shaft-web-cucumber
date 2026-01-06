# shaft-web-cucumber
基于SHAFT_ENGINE的Web自动化测试项目，集成Cucumber BDD框架

## 项目配置信息
- 项目名称: shaft-web-cucumber
- Group ID: io.github.ziyekudeng
- 版本: 1.0.0
- JDK版本: 21
- Maven版本: 3.9.12
- SHAFT_ENGINE版本: 9.4.20251220
- Cucumber版本: 7.14.0

## 项目依赖配置

### 核心依赖
- SHAFT_ENGINE: 核心测试框架，版本9.4.20251220
- cucumber-java: Cucumber Java支持，版本7.14.0，作用域为compile
- aspectjweaver: AOP支持库，版本1.9.24

### 构建插件
- maven-compiler-plugin: 版本3.11.0，配置支持JDK 21
- maven-resources-plugin: 版本3.3.1
- maven-surefire-plugin: 版本3.5.4，集成Cucumber支持

## 构建配置
项目使用Maven进行构建，支持以下配置：
- 编译配置：使用UTF-8编码，JDK 21，最大内存10240m，初始内存1024m
- 资源配置：使用UTF-8编码
- 测试配置：默认使用cucumber-test profile，支持JaCoCo代码覆盖率，测试失败不中断构建，无测试用例时不失败
- AspectJ代理配置：自动注入aspectjweaver代理以支持SHAFT_ENGINE功能

## 使用说明
1. 确保已安装JDK 21和Maven 3.9.12或更高版本
2. 克隆项目到本地
3. 使用以下命令运行测试：
   ```bash
   mvn clean test
   ```
4. 如需安装项目到本地仓库，可以使用：
   ```bash
   mvn clean install
   ```

## 项目结构
- src/main/java/com/shaft/cucumber: SHAFT内置Cucumber步骤定义
- src/main/java/com/shaft/listeners: Cucumber测试监听器
- src/main/resources: 主要资源文件，包括properties配置
- src/test/java: 测试代码，包括Cucumber测试运行器和步骤定义
- src/test/resources: 测试资源和测试数据文件
- pom.xml: Maven项目配置文件

## SHAFT_ENGINE custom.properties 配置参数清单及当前项目优化配置

### 1. Web GUI 配置（性能优化配置）
- `targetBrowserName` - 目标浏览器名称，当前设置为 `chrome`（支持 chrome/firefox/edge/safari 等）
- `headlessExecution` - 无头模式运行，当前设置为 `true`（提升执行速度）
- `pageLoadStrategy` - 页面加载策略，当前设置为 `eager`（等待DOM加载而非所有资源，提升速度）
- `incognitoMode` - 隐私模式启动，当前设置为 `true`（避免缓存影响测试）
- `driverDownloader_chromeDriverVersion` - ChromeDriver版本，当前设置为 `143.0.7499.170`
- `forceBrowserDownload` - 强制下载浏览器驱动，当前设置为 `false`（优先使用本地驱动）
- `isMobileEmulation` - 启用移动端模拟，当前设置为 `false`（桌面端测试）
- `baseURL` - 测试基础URL，当前为空（需根据实际项目填写）
- `browserWindowWidth` - 浏览器窗口宽度（非无头模式生效）
- `browserWindowHeight` - 浏览器窗口高度（非无头模式生效）
- `readinessState` - 页面就绪状态检测策略，当前设置为 `complete`

### 2. 截图配置（性能优化配置）
- `screenshotParams_whenToTakeAScreenshot` - 截图触发时机，当前设置为 `OnFailure`（仅测试失败时截图，提升性能）
- `screenshotParams_screenshotType` - 截图类型，当前设置为 `Viewport`（仅当前可视区域截图，提升性能）
- `screenshotParams_highlightElements` - 截图时高亮操作元素，当前设置为 `true`（便于定位问题）
- `screenshotParams_watermark` - 截图添加水印，当前设置为 `true`（包含测试时间、用例名称等信息）

### 3. 视频录制配置（性能优化配置）
- `videoParams_recordVideo` - 录制测试过程视频，当前设置为 `false`（关闭以提升性能）
- `videoParams_scope` - 视频录制范围，当前设置为 `Test`（每个测试用例单独录制）

### 4. 动态GIF生成配置（性能优化配置）
- `createAnimatedGif` - 基于测试截图生成GIF动图，当前设置为 `false`（关闭以提升性能）
- `animatedGif_frameDelay` - GIF动图帧延迟时间，当前设置为 `500`（毫秒）

### 5. Allure报告配置（SHAFT_ENGINE 9.4.20251220版本要求）
- `allure.accumulateHistory` - 累积历史测试报告数据，当前设置为 `false`（仅保留当前运行结果）
- `allure.cleanResultsDirectory` - 生成报告前清空结果目录，当前设置为 `true`（避免历史数据干扰）
- `allure.generateArchive` - 生成Allure报告压缩包，当前设置为 `false`（便于分享/存档）
- `allure.automaticallyOpen` - 报告生成后自动打开浏览器，当前设置为 `true`（便于查看报告）
- `allure.accumulateReports` - 累积多轮测试报告数据，当前设置为 `false`（覆盖模式）
- `allure.commandline.download.url` - Allure命令行工具下载URL，当前设置为 `https://repo1.maven.org/maven2/io/qameta/allure/allure-commandline/2.35.1/allure-commandline-2.35.1.zip`（SHAFT_ENGINE 9.4.20251220版本要求）
- `shaft.cucumber.disableAllureDownload` - 禁用Allure自动下载，当前设置为 `false`（启用自动下载，SHAFT_ENGINE 9.4.20251220版本要求）
- `allure.attach.testscreenshot.gif` - 在Allure报告中附加测试截图GIF，当前设置为 `false`（提升性能）

### 6. Cucumber相关配置（当前项目配置）
- `cucumber.glue` - 步骤定义包路径，当前设置为 `customCucumberSteps, com.shaft.cucumber`（与pom.xml和cucumber.properties保持一致）
- `cucumber.features` - 特性文件路径，当前设置为 `src/test/resources`（Cucumber配置，与pom.xml保持一致）

### 7. 系统环境配置
- 项目使用UTF-8编码（在pom.xml和properties文件中统一配置）

## 性能优化说明
当前项目已应用以下性能优化措施以提升Cucumber测试执行速度：
1. 启用headlessExecution=true - 无头模式运行浏览器，显著提升执行速度
2. 设置pageLoadStrategy=eager - 仅等待DOM加载而非所有资源，减少等待时间
3. 关闭createAnimatedGif=false - 禁用GIF生成，减少I/O操作
4. 设置screenshotParams_screenshotType=Viewport - 仅截图可视区域，减少处理时间
5. 关闭videoParams_recordVideo=false - 关闭视频录制，减少资源消耗
6. 设置screenshotParams_whenToTakeAScreenshot=OnFailure - 仅失败时截图，减少截图操作

## 配置参数优先级
SHAFT_ENGINE配置参数存在以下优先级（从高到低）：
1. 代码中设置的参数
2. 命令行（CLI）设置的参数
3. 文件中设置的参数
4. 默认值

这些配置参数允许用户自定义SHAFT_ENGINE的行为，包括测试执行、报告生成、浏览器行为等各个方面。配置文件使用标准的Java Properties格式，每个参数由键值对组成，使用等号连接。