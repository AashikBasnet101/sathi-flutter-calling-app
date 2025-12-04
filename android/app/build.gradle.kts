plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.sathi"

    // You can keep a numeric compileSdk or use flutter.compileSdkVersion if available
    compileSdk = 36

    // If flutter.ndkVersion is available in your build environment, keep it; otherwise remove this line.
    // ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    // Recommended way: use jvmTarget as a string.
    // Newer Kotlin toolchains prefer kotlin.jvmToolchain(17) but this is compatible.
    kotlinOptions {
        jvmTarget = "17"
    }

    defaultConfig {
        applicationId = "com.example.sathi"
        // Use the flutter-provided properties if available; otherwise replace with literal ints/strings.
        // If flutter.* properties are not available in this context, replace them with concrete values.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // Keep debug signing for development; replace with real signing in production.
            signingConfig = signingConfigs.getByName("debug")

            // Kotlin DSL correct call for proguard files:
            proguardFiles(
                getDefaultProguardFile("proguard-android.txt"),
                "proguard-rules.pro"
            )
        }
    }

    // If you use packagingOptions or flavorDimensions, add them here as needed.
}

flutter {
    source = "../.."
}

dependencies {
    // Use the Kotlin stdlib without an undefined kotlin_version variable.
    implementation("org.jetbrains.kotlin:kotlin-stdlib-jdk8")
}
