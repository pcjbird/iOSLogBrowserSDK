# 版本更新日志

## pcjbird 2025-11-24 Version:1.0.8 Build:20251124002

- 修复了 telnet 服务器日志格式的问题。

## pcjbird 2025-11-24 Version:1.0.7 Build:20251124001

- 修复了日志内容中 `<` 和 `>` 被浏览器解析为 HTML 标签的问题，现在它们被转义为 `&lt;` 和 `&gt;`。

## pcjbird 2025-11-03 Version:1.0.6 Build:20251103001

- 优化了日志级别的颜色映射。

## pcjbird 2025-10-10 Version:1.0.5 Build:20251010001

- SDK 初始化选项现在支持 `showQueueNameInBrowser`。

## pcjbird 2025-03-23 Version:1.0.4 Build:20250323001

- SDK 初始化选项现在支持 `consoleLoggerFormatString`。

## pcjbird 2024-11-18 Version:1.0.3 Build:20241118003

- 将日志等级的样式配置迁移至 HTML 模版中，实现暗黑模式下的日志显示效果优化。

## pcjbird 2024-11-18 Version:1.0.2 Build:20241118002

- 从 SDK 公共头文件中移除了对 `XLFacility` 头文件的依赖，现在您需要在自己的项目中直接导入这些头文件以获得更好的模块化和灵活性。

## pcjbird 2024-11-18 Version:1.0.1 Build:20241118001

- 首次发布 SDK 版本
