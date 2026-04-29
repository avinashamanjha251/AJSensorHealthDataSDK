# AJSensorHealthDataManager

`AJSensorHealthDataManager` is the central SDK interface for accessing sensor-based physical activity and health metrics. It acts as a façade over internal data collection services, enforcing input validation, date range constraints, and configuration dependencies.

## 🚀 Features

- 🚶‍♂️ **Step Tracking**: Daily totals, weekly aggregations, and monthly averages.
- 🏃‍♂️ **Live Updates**: Stream real-time step counts directly to your UI.
- 🔥 **Derived Health Metrics**: Distance (km), active minutes, and estimated active calories burned.
- 📊 **Advanced Analytics**: Activity volume scoring, sedentary behavior detection, and session aggregation.

---

## 🛠️ Setup & Initialization

### 1. Access the Singleton
`AJSensorHealthDataManager` is designed as a singleton. Always use the shared instance:

```swift
import AJSensorHealthData

let manager = AJSensorHealthDataManager.shared
```

### 2. Configure User Data (Required)
Some calculations—such as distance, calories, and activity sessions—require physical characteristics of the user to ensure accuracy.

```swift
let config = AJUserConfiguration(
    weightKg: 75.0,
    heightCm: 180.0,
    ageYears: 30,
    gender: .male // options: .male, .female, .other
)

manager.setupUserConfiguration(config)
```
> [!IMPORTANT]
> Ensure `setupUserConfiguration` is called before querying advanced metrics, otherwise an error (`SensorDataError.userConfigurationMissing`) will be returned.

---

## 📡 Sensor Control

Manage background or live tracking via the following APIs:

### Start Sensor
```swift
manager.startSensor { result in
    switch result {
    case .success(let isTracking):
        print("Sensor tracking started: \(isTracking)")
    case .failure(let error):
        print("Error starting tracking: \(error)")
    }
}
```

### Real-Time Step Streaming
```swift
// Start
manager.startLiveStepUpdates { stepCount in
    print("Updated Steps: \(stepCount)")
}

// Stop
manager.stopLiveStepUpdates()
```

---

## 📊 Core Physical Metrics

Most metric fetchers return results wrapped in the `SMSensorDataResult<T>` container, which includes the value, optional error, and a `fetchedAt` timestamp.

### Daily Steps
```swift
manager.fetchDailySteps(startDate: startDate, endDate: endDate) { result in
    if let steps = result.value {
        print("Daily steps: \(steps)")
    }
}
```

### Weekly & Monthly Steps
- `fetchWeeklyTotalSteps(startDate:endDate:completion:)` (Up to 7 days)
- `fetchMonthlyAvgSteps(startDate:endDate:completion:)` (Up to 31 days)

### Distance & Active Calories
*(Requires User Configuration)*
```swift
manager.fetchDistanceKm(startDate: startDate, endDate: endDate) { result in
    print("Distance: \(result.value ?? 0.0) km")
}

manager.fetchCaloriesBurnedActive(startDate: startDate, endDate: endDate) { result in
    print("Calories: \(result.value ?? 0.0) kcal")
}
```

---

## 🧠 Advanced & Derived Insights

### Complete Insights Summary
Obtain a unified dataset containing core, derived, and lifestyle metrics in a single asynchronous call.

```swift
manager.fetchCompleteInsights(startDate: start, endDate: end) { insights, errors in
    if let insights = insights {
        print(insights.description)
    }
}
```

#### What's included in `AJCompleteInsights`?
- **Core Metrics**: steps, distance, calories, session counts.
- **Derived Metrics**: `avgStepsPerDay`, `stepsVariability`, `activityVolumeScore`.
- **Advanced Behavior**: `sedentaryMinutes`, `lightActiveMinutes`, `vigorousMinutes`.

### Aggregated Session Counts
Fetch segmented sessions grouped by low-latency state detection:
```swift
manager.fetchActivitySessionsCount(startDate: start, endDate: end) { result, sessions in
    print("Total Sessions: \(result.value ?? 0)")
    for session in sessions {
        print("Session: \(session.activityType), Duration: \(session.duration)s")
    }
}
```

---

## ⚠️ Key Constraints
- Date ranges for aggregation queries must not exceed the maximum configured span (e.g., `weekly` up to 7 days, `monthly` up to 31 days).
- The user must grant appropriate iOS core motion permissions for background processing.
