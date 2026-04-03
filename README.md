# Flutter 地理位置（geolocator）

## 简介

用 **geolocator** 检查与请求定位权限，调用 `getCurrentPosition` 后在界面显示纬度、经度。适合 LBS、打卡、天气等需要粗/精确定位的入口演示。

## 快速开始

### 环境要求

Flutter SDK。请使用带定位能力的真机或模拟器（模拟器常需模拟定位）。

### 运行

```bash
flutter pub get
flutter run
```

## 概念讲解

### 第一部分：权限流程

`checkPermission` → 若为 `denied` 则 `requestPermission`；若永久拒绝需引导用户去系统设置。Demo 把结果落成可读中文提示。

### 第二部分：Android 与 iOS 配置

工程已包含 `ACCESS_FINE_LOCATION` / `ACCESS_COARSE_LOCATION` 与 iOS `NSLocationWhenInUseUsageDescription`。缺了它们插件会默默失败或秒拒。

## 完整示例

见 `lib/main.dart`：`LocationPage` 与按钮触发 `_load`。

## 注意事项

- Web 与桌面定位行为与手机差异大，请在目标端自测。
- 后台定位、精确/模糊定位策略需按商店政策配置。

## 完整讲解（中文）

定位 API 本身不复杂，复杂的是**权限话术与失败重试**。本 Demo 把「没权限 / 正在取坐标 / 成功经纬度」串成一条用户能看懂的路径。接业务时记得：不要假设一次 `request` 就一定授权；也不要在 UI 线程做重计算，坐标拿到后该送服务器就送服务器。
