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