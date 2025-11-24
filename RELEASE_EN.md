# RELEASES

## pcjbird 2025-11-24 Version:1.0.8 Build:20251124002

- Fixed telnet server logger format issue.

## pcjbird 2025-11-24 Version:1.0.7 Build:20251124001

- Fixed an issue where `<` and `>` in log content were parsed as HTML tags by the browser; they are now escaped to `&lt;` and `&gt;`.

## pcjbird 2025-11-03 Version:1.0.6 Build:20251103001

- Refined color mapping for log levels.

## pcjbird 2025-10-10 Version:1.0.5 Build:20251010001

- SDK initial options now support `showQueueNameInBrowser`.

## pcjbird 2025-03-23 Version:1.0.4 Build:20250323001

- SDK initial options now support `consoleLoggerFormatString`.

## pcjbird 2024-11-18 Version:1.0.3 Build:20241118003

- Migrated log level styling configurations to HTML template to optimize log display effects in dark mode.

## pcjbird 2024-11-18 Version:1.0.2 Build:20241118002

- Removed dependency on `XLFacility` header files from SDK public headers, now import these headers directly in your own projects for better modularity and flexibility.

## pcjbird 2024-11-18 Version:1.0.1 Build:20241118001

- First release of the SDK version.
