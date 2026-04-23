# AJSensorHealthData SDK

A powerful, privacy-focused iOS SDK for tracking health metrics without relying on HealthKit. It uses device sensors (Motion Activity & Pedometer) to provide activity and sleep data.

## Features

- 🏃‍♂️ **Activity Tracking**: Steps, distance, and calories burned.
- 😴 **Sleep Inference**: Motion-based sleep duration detection.
- 🔒 **Privacy First**: No HealthKit permissions required.
- 📦 **Lightweight**: Distributed as a binary XCFramework.

## Requirements

- iOS 14.0+
- Swift 5.9+
- Xcode 15+

## Installation

### Swift Package Manager

1. In Xcode, go to **File → Add Package Dependencies**.
2. Enter the URL:
   ```
   https://github.com/avinashamanjha251/AJSensorHealthDataSDK
   ```
3. Set the dependency rule to **Up to Next Major Version** or **Exact**.

## Usage

### 1. Configure the SDK

Before fetching data, you must provide user metrics for accurate calculations.

```swift
import AJSensorHealthData

let config = AJUserConfiguration(
    gender: .male,
    age: 25,
    heightCm: 175,
    weightKg: 70
)

AJSensorHealthManager.shared.setupUserConfiguration(config)
```

### 2. Start Sensor Updates

```swift
AJSensorHealthManager.shared.startSensor { result in
    switch result {
    case .success:
        print("Sensors started successfully")
    case .failure(let error):
        print("Failed to start sensors: \(error)")
    }
}
```

### 3. Fetch Activity History (Last 7 Days)

```swift
AJSensorHealthManager.shared.fetchLastSevenDayActivityHistory { result in
    switch result {
    case .success(let history):
        for day in history {
            print("Date: \(day.date), Steps: \(day.stepCount), Calories: \(day.calories)")
        }
    case .failure(let error):
        print("Error fetching activity: \(error)")
    }
}
```

### 4. Fetch Sleep History (Last 7 Days)

```swift
AJSensorHealthManager.shared.fetchLastSevenDaySleepHistory { result in
    switch result {
    case .success(let sleepData):
        for sleep in sleepData {
            print("Date: \(sleep.date), Total Sleep: \(sleep.totalSleepInHours) hours")
        }
    case .failure(let error):
        print("Error fetching sleep data: \(error)")
    }
}
```

### 5. Stop Updates

```swift
AJSensorHealthManager.shared.stopUpdates()
```

## License

Private — All rights reserved.
