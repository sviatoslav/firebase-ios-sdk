// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import PackageDescription
import class Foundation.ProcessInfo

let firebaseVersion = "8.16.0"

let package = Package(
  name: "Firebase",
  platforms: [.iOS(.v11), .macOS(.v10_12), .tvOS(.v12), .watchOS(.v7)],
  products: [
    .library(
      name: "FirebaseAnalytics",
      targets: ["FirebaseAnalyticsTarget"]
    ),
    .library(
      name: "FirebaseAnalyticsWithoutAdIdSupport",
      targets: ["FirebaseAnalyticsWithoutAdIdSupportTarget"]
    ),
    .library(
      name: "FirebaseAnalyticsSwift-Beta",
      targets: ["FirebaseAnalyticsSwiftTarget"]
    ),
    .library(
      name: "FirebaseAuth",
      targets: ["FirebaseAuth"]
    ),
    .library(
      name: "FirebaseAppCheck",
      targets: ["FirebaseAppCheck"]
    ),
    .library(
      name: "FirebaseAppDistribution-Beta",
      targets: ["FirebaseAppDistributionTarget"]
    ),
    .library(
      name: "FirebaseAuthCombine-Community",
      targets: ["FirebaseAuthCombineSwift"]
    ),
    .library(
      name: "FirebaseFirestoreCombine-Community",
      targets: ["FirebaseFirestoreCombineSwift"]
    ),
    .library(
      name: "FirebaseFunctionsCombine-Community",
      targets: ["FirebaseFunctionsCombineSwift"]
    ),
    .library(
      name: "FirebaseStorageCombine-Community",
      targets: ["FirebaseStorageCombineSwift"]
    ),
    .library(
      name: "FirebaseCrashlytics",
      targets: ["FirebaseCrashlytics"]
    ),
    .library(
      name: "FirebaseDatabase",
      targets: ["FirebaseDatabase"]
    ),
    .library(
      name: "FirebaseDatabaseSwift-Beta",
      targets: ["FirebaseDatabaseSwift"]
    ),
    .library(
      name: "FirebaseDynamicLinks",
      targets: ["FirebaseDynamicLinksTarget"]
    ),
    .library(
      name: "FirebaseFirestore",
      targets: ["FirebaseFirestoreTarget"]
    ),
    .library(
      name: "FirebaseFirestoreSwift-Beta",
      targets: ["FirebaseFirestoreSwiftTarget"]
    ),
    .library(
      name: "FirebaseFunctions",
      targets: ["FirebaseFunctions"]
    ),
    .library(
      name: "FirebaseFunctionsSwift-Beta",
      targets: ["FirebaseFunctionsSwift"]
    ),
    .library(
      name: "FirebaseInAppMessaging-Beta",
      targets: ["FirebaseInAppMessagingTarget"]
    ),
    .library(
      name: "FirebaseInAppMessagingSwift-Beta",
      targets: ["FirebaseInAppMessagingSwift"]
    ),
    .library(
      name: "FirebaseInstallations",
      targets: ["FirebaseInstallations"]
    ),
    .library(
      name: "FirebaseMessaging",
      targets: ["FirebaseMessaging"]
    ),
    .library(
      name: "FirebasePerformance",
      targets: ["FirebasePerformanceTarget"]
    ),
    .library(
      name: "FirebaseRemoteConfig",
      targets: ["FirebaseRemoteConfig"]
    ),
    .library(
      name: "FirebaseRemoteConfigSwift-Beta",
      targets: ["FirebaseRemoteConfigSwift"]
    ),
    .library(
      name: "FirebaseStorage",
      targets: ["FirebaseStorage"]
    ),
    .library(
      name: "FirebaseStorageSwift-Beta",
      targets: ["FirebaseStorageSwift"]
    ),
    .library(
      name: "GULAppDelegateSwizzler",
      targets: ["GoogleUtilitiesAppDelegateSwizzler"]
    ),
    .library(
      name: "GULEnvironment",
      targets: ["GoogleUtilitiesEnvironment"]
    ),
    .library(
      name: "GULLogger",
      targets: ["GoogleUtilitiesLogger"]
    ),
    .library(
      name: "GULISASwizzler",
      targets: ["GoogleUtilitiesISASwizzler"]
    ),
    .library(
      name: "GULMethodSwizzler",
      targets: ["GoogleUtilitiesMethodSwizzler"]
    ),
    .library(
      name: "GULNetwork",
      targets: ["GoogleUtilitiesNetwork"]
    ),
    .library(
      name: "GULNSData",
      targets: ["GoogleUtilitiesNSData"]
    ),
    .library(
      name: "GULReachability",
      targets: ["GoogleUtilitiesReachability"]
    ),
    .library(
      name: "GULSwizzlerTestHelpers",
      targets: ["GoogleUtilitiesSwizzlerTestHelpers"]
    ),
    .library(
      name: "GULUserDefaults",
      targets: ["GoogleUtilitiesUserDefaults"]
    ),
    .library(
      name: "GoogleDataTransport",
      targets: ["GoogleDataTransport"]
    ),
  ],
  dependencies: [
    .package(
      name: "Promises",
      url: "https://github.com/google/promises.git",
      "1.2.8" ..< "3.0.0"
    ),
    .package(
      name: "SwiftProtobuf",
      url: "https://github.com/apple/swift-protobuf.git",
      "1.15.0" ..< "2.0.0"
    ),
    .package(
      name: "GTMSessionFetcher",
      url: "https://github.com/google/gtm-session-fetcher.git",
      "1.5.0" ..< "2.0.0"
    ),
    .package(
      name: "nanopb",
      url: "https://github.com/firebase/nanopb.git",
      "2.30908.0" ..< "2.30909.0"
    ),
    .package(
      name: "abseil",
      url: "https://github.com/firebase/abseil-cpp-SwiftPM.git",
      "0.20220203.1" ..< "0.20220204.0"
    ),
    .package(
      name: "gRPC",
      url: "https://github.com/grpc/grpc-ios.git",
      "1.44.0-grpc" ..< "1.45.0-grpc"
    ),
    .package(
      name: "OCMock",
      url: "https://github.com/erikdoe/ocmock.git",
      .revision("c5eeaa6dde7c308a5ce48ae4d4530462dd3a1110")
    ),
    .package(
      name: "leveldb",
      url: "https://github.com/firebase/leveldb.git",
      "1.22.2" ..< "1.23.0"
    ),
    .package(
      name: "GCDWebServer",
      url: "https://github.com/SlaunchaMan/GCDWebServer.git",
      .revision("935e2736044e71e5341663c3cc9a335ba6867a2b")
    ),
    // Branches need a force update with a run with the revision set like below.
    //   .package(url: "https://github.com/paulb777/nanopb.git", .revision("564392bd87bd093c308a3aaed3997466efb95f74"))
  ],
  targets: [
    .target(
      name: "Firebase",
      path: "CoreOnly/Sources",
      publicHeadersPath: "./"
    ),
    .target(
      name: "FirebaseCore",
      dependencies: [
        "Firebase",
        "FirebaseCoreDiagnostics",
        "GoogleUtilitiesEnvironment",
        "GoogleUtilitiesLogger",
      ],
      path: "FirebaseCore/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../.."),
        .define("Firebase_VERSION", to: firebaseVersion),
        // TODO: - Add support for cflags cSetting so that we can set the -fno-autolink option
      ],
      linkerSettings: [
        .linkedFramework("UIKit", .when(platforms: [.iOS, .tvOS])),
        .linkedFramework("AppKit", .when(platforms: [.macOS])),
      ]
    ),
    .testTarget(
      name: "CoreUnit",
      dependencies: ["FirebaseCore", "SharedTestUtilities", "OCMock"],
      path: "FirebaseCore/Tests/Unit",
      exclude: ["Resources/GoogleService-Info.plist"],
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),
    .target(
      name: "FirebaseCoreDiagnostics",
      dependencies: [
        "GoogleDataTransport",
        "GoogleUtilitiesEnvironment",
        "GoogleUtilitiesLogger",
        .product(name: "nanopb", package: "nanopb"),
      ],
      path: "Firebase/CoreDiagnostics/FIRCDLibrary",
      publicHeadersPath: ".",
      cSettings: [
        .headerSearchPath("../../.."),
        .define("PB_FIELD_32BIT", to: "1"),
        .define("PB_NO_PACKED_STRUCTS", to: "1"),
        .define("PB_ENABLE_MALLOC", to: "1"),
      ]
    ),
    .target(
      name: "FirebaseABTesting",
      dependencies: ["FirebaseCore"],
      path: "FirebaseABTesting/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .testTarget(
      name: "ABTestingUnit",
      dependencies: ["FirebaseABTesting", "OCMock"],
      path: "FirebaseABTesting/Tests/Unit",
      resources: [.process("Resources")],
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),

    .target(
      name: "FirebaseAnalyticsTarget",
      dependencies: [.target(name: "FirebaseAnalyticsWrapper",
                             condition: .when(platforms: [.iOS, .macOS, .tvOS]))],
      path: "SwiftPM-PlatformExclude/FirebaseAnalyticsWrap"
    ),

    .target(
      name: "FirebaseAnalyticsWrapper",
      dependencies: [
        .target(name: "FirebaseAnalytics", condition: .when(platforms: [.iOS, .macOS, .tvOS])),
        "FirebaseCore",
        "FirebaseInstallations",
        "GoogleUtilitiesAppDelegateSwizzler",
        "GoogleUtilitiesMethodSwizzler",
        "GoogleUtilitiesNSData",
        "GoogleUtilitiesNetwork",
        .product(name: "nanopb", package: "nanopb"),
      ],
      path: "FirebaseAnalyticsWrapper",
      linkerSettings: [
        .linkedLibrary("sqlite3"),
        .linkedLibrary("c++"),
        .linkedLibrary("z"),
        .linkedFramework("StoreKit"),
      ]
    ),
    .binaryTarget(
      name: "FirebaseAnalytics",
      url: "https://dl.google.com/firebase/ios/swiftpm/8.15.0/FirebaseAnalytics.zip",
      checksum: "9d075b16e9e32e2328afdee11bba33ef075ba7be106312a14c5601310d6ecd92"
    ),
    .target(
      name: "FirebaseAnalyticsSwiftTarget",
      dependencies: [.target(name: "FirebaseAnalyticsSwift",
                             condition: .when(platforms: [.iOS, .macOS, .tvOS]))],
      path: "SwiftPM-PlatformExclude/FirebaseAnalyticsSwiftWrap"
    ),
    .target(
      name: "FirebaseAnalyticsSwift",
      dependencies: ["FirebaseAnalyticsWrapper"],
      path: "FirebaseAnalyticsSwift/Sources"
    ),

    .target(
      name: "FirebaseAnalyticsWithoutAdIdSupportTarget",
      dependencies: [.target(name: "FirebaseAnalyticsWithoutAdIdSupportWrapper",
                             condition: .when(platforms: [.iOS, .macOS, .tvOS]))],
      path: "SwiftPM-PlatformExclude/FirebaseAnalyticsWithoutAdIdSupportWrap"
    ),
    .target(
      name: "FirebaseAnalyticsWithoutAdIdSupportWrapper",
      dependencies: [
        .target(name: "FirebaseAnalytics", condition: .when(platforms: [.iOS, .macOS, .tvOS])),
        "FirebaseCore",
        "FirebaseInstallations",
        "GoogleUtilitiesAppDelegateSwizzler",
        "GoogleUtilitiesMethodSwizzler",
        "GoogleUtilitiesNSData",
        "GoogleUtilitiesNetwork",
        .product(name: "nanopb", package: "nanopb"),
      ],
      path: "FirebaseAnalyticsWithoutAdIdSupportWrapper",
      linkerSettings: [
        .linkedLibrary("sqlite3"),
        .linkedLibrary("c++"),
        .linkedLibrary("z"),
        .linkedFramework("StoreKit"),
      ]
    ),

    .target(
      name: "FirebaseAppDistributionTarget",
      dependencies: [.target(name: "FirebaseAppDistribution",
                             condition: .when(platforms: [.iOS]))],
      path: "SwiftPM-PlatformExclude/FirebaseAppDistributionWrap"
    ),
    .target(
      name: "FirebaseAppDistribution",
      dependencies: [
        "FirebaseCore",
        "FirebaseInstallations",
        "GoogleDataTransport",
        "GoogleUtilitiesAppDelegateSwizzler",
        "GoogleUtilitiesUserDefaults",
      ],
      path: "FirebaseAppDistribution/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .testTarget(
      name: "AppDistributionUnit",
      dependencies: ["FirebaseAppDistribution", "OCMock"],
      path: "FirebaseAppDistribution/Tests/Unit",
      resources: [.process("Resources")],
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),

    .target(
      name: "FirebaseAuth",
      dependencies: [
        "FirebaseCore",
        "GoogleUtilitiesAppDelegateSwizzler",
        "GoogleUtilitiesEnvironment",
        .product(name: "GTMSessionFetcherCore", package: "GTMSessionFetcher"),
      ],
      path: "FirebaseAuth/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ],
      linkerSettings: [
        .linkedFramework("Security"),
        .linkedFramework("SafariServices", .when(platforms: [.iOS])),
      ]
    ),
    .testTarget(
      name: "AuthUnit",
      dependencies: ["FirebaseAuth", "OCMock"],
      path: "FirebaseAuth/Tests/Unit",
      exclude: [
        "FIRAuthKeychainServicesTests.m", // TODO: figure out SPM keychain testing
        "FIRAuthTests.m",
        "FIRUserTests.m",
      ],
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),
    .target(
      name: "FirebaseAuthCombineSwift",
      dependencies: ["FirebaseAuth"],
      path: "FirebaseCombineSwift/Sources/Auth"
    ),
    .target(
      name: "FirebaseFirestoreCombineSwift",
      dependencies: [
        "FirebaseFirestore",
        "FirebaseFirestoreSwift",
      ],
      path: "FirebaseCombineSwift/Sources/Firestore"
    ),
    .target(
      name: "FirebaseStorageCombineSwift",
      dependencies: [
        "FirebaseStorage",
        "FirebaseStorageSwift",
      ],
      path: "FirebaseCombineSwift/Sources/Storage"
    ),
    .target(
      name: "FirebaseCrashlytics",
      dependencies: ["FirebaseCore", "FirebaseInstallations",
                     "GoogleDataTransport",
                     "GoogleUtilitiesEnvironment",
                     .product(name: "FBLPromises", package: "Promises"),
                     .product(name: "nanopb", package: "nanopb")],
      path: "Crashlytics",
      exclude: [
        "run",
        "CHANGELOG.md",
        "LICENSE",
        "README.md",
        "ProtoSupport/",
        "UnitTests/",
        "generate_project.sh",
        "upload-symbols",
        "third_party/libunwind/LICENSE",
      ],
      sources: [
        "Crashlytics/",
        "Protogen/",
        "Shared/",
        "third_party/libunwind/dwarf.h",
      ],
      publicHeadersPath: "Crashlytics/Public",
      cSettings: [
        .headerSearchPath(".."),
        .define("DISPLAY_VERSION", to: firebaseVersion),
        .define("CLS_SDK_NAME", to: "Crashlytics iOS SDK", .when(platforms: [.iOS])),
        .define("CLS_SDK_NAME", to: "Crashlytics macOS SDK", .when(platforms: [.macOS])),
        .define("CLS_SDK_NAME", to: "Crashlytics tvOS SDK", .when(platforms: [.tvOS])),
        .define("CLS_SDK_NAME", to: "Crashlytics watchOS SDK", .when(platforms: [.watchOS])),
        .define("PB_FIELD_32BIT", to: "1"),
        .define("PB_NO_PACKED_STRUCTS", to: "1"),
        .define("PB_ENABLE_MALLOC", to: "1"),
      ],
      linkerSettings: [
        .linkedFramework("Security"),
        .linkedFramework("SystemConfiguration", .when(platforms: [.iOS, .macOS, .tvOS])),
      ]
    ),

    .target(
      name: "FirebaseDatabase",
      dependencies: [
        "FirebaseCore",
        "leveldb",
      ],
      path: "FirebaseDatabase/Sources",
      exclude: [
        "third_party/Wrap-leveldb/LICENSE",
        "third_party/SocketRocket/LICENSE",
        "third_party/FImmutableSortedDictionary/LICENSE",
        "third_party/SocketRocket/aa2297808c225710e267afece4439c256f6efdb3",
      ],
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ],
      linkerSettings: [
        .linkedFramework("CFNetwork"),
        .linkedFramework("Security"),
        .linkedFramework("SystemConfiguration", .when(platforms: [.iOS, .macOS, .tvOS])),
        .linkedFramework("WatchKit", .when(platforms: [.watchOS])),
      ]
    ),
    .testTarget(
      name: "DatabaseUnit",
      dependencies: ["FirebaseDatabase", "OCMock", "SharedTestUtilities"],
      path: "FirebaseDatabase/Tests/",
      exclude: [
        // Disable Swift tests as mixed targets are not supported (Xcode 12.4).
        "Unit/Swift",
        "Integration/",
      ],
      resources: [.process("Resources")],
      cSettings: [
        .headerSearchPath("../.."),
      ]
    ),
    .testTarget(
      name: "DatabaseUnitSwift",
      dependencies: ["FirebaseDatabase"],
      path: "FirebaseDatabase/Tests/Unit/Swift",
      cSettings: [
        .headerSearchPath("../.."),
      ]
    ),
    .target(
      name: "FirebaseDatabaseSwift",
      dependencies: ["FirebaseDatabase", "FirebaseSharedSwift"],
      path: "FirebaseDatabaseSwift/Sources"
    ),
    .testTarget(
      name: "FirebaseDatabaseSwiftTests",
      dependencies: ["FirebaseDatabase", "FirebaseDatabaseSwift"],
      path: "FirebaseDatabaseSwift/Tests/"
    ),
    .target(
      name: "FirebaseSharedSwift",
      path: "FirebaseSharedSwift/Sources",
      exclude: [
        "third_party/FirebaseDataEncoder/LICENSE",
        "third_party/FirebaseDataEncoder/METADATA",
      ]
    ),
    .testTarget(
      name: "FirebaseSharedSwiftTests",
      dependencies: ["FirebaseSharedSwift"],
      path: "FirebaseSharedSwift/Tests/"
    ),
    .target(
      name: "FirebaseDynamicLinksTarget",
      dependencies: [.target(name: "FirebaseDynamicLinks",
                             condition: .when(platforms: [.iOS]))],
      path: "SwiftPM-PlatformExclude/FirebaseDynamicLinksWrap"
    ),

    .target(
      name: "FirebaseDynamicLinks",
      dependencies: ["FirebaseCore"],
      path: "FirebaseDynamicLinks/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
        .define("FIRDynamicLinks3P", to: "1"),
        .define("GIN_SCION_LOGGING", to: "1"),
      ],
      linkerSettings: [
        .linkedFramework("QuartzCore"),
      ]
    ),

    .target(
      name: "FirebaseFirestoreTarget",
      dependencies: [.target(name: "FirebaseFirestore",
                             condition: .when(platforms: [.iOS, .tvOS, .macOS]))],
      path: "SwiftPM-PlatformExclude/FirebaseFirestoreWrap"
    ),

    .target(
      name: "FirebaseFirestore",
      dependencies: [
        "FirebaseCore",
        "leveldb",
        .product(name: "nanopb", package: "nanopb"),
        .product(name: "abseil", package: "abseil"),
        .product(name: "gRPC-cpp", package: "gRPC"),
      ],
      path: "Firestore",
      exclude: [
        "CHANGELOG.md",
        "CMakeLists.txt",
        "Example/",
        "LICENSE",
        "Protos/CMakeLists.txt",
        "Protos/Podfile",
        "Protos/README.md",
        "Protos/build_protos.py",
        "Protos/cpp/",
        "Protos/lib/",
        "Protos/nanopb_cpp_generator.py",
        "Protos/protos/",
        "README.md",
        "Source/CMakeLists.txt",
        "Swift/",
        "core/CMakeLists.txt",
        "core/src/util/config_detected.h.in",
        "core/test/",
        "fuzzing/",
        "test.sh",
        // Swift PM doesn't recognize hpp files, so we're relying on search paths
        // to find third_party/nlohmann_json/json.hpp.
        "third_party/",

        // Exclude alternate implementations for other platforms
        "core/src/remote/connectivity_monitor_noop.cc",
        "core/src/util/filesystem_win.cc",
        "core/src/util/log_stdio.cc",
        "core/src/util/secure_random_openssl.cc",
      ],
      sources: [
        "Source/",
        "Protos/nanopb/",
        "core/include/",
        "core/src",
      ],
      publicHeadersPath: "Source/Public",
      cSettings: [
        .headerSearchPath("../"),
        .headerSearchPath("Source/Public/FirebaseFirestore"),
        .headerSearchPath("Protos/nanopb"),
        .define("PB_FIELD_32BIT", to: "1"),
        .define("PB_NO_PACKED_STRUCTS", to: "1"),
        .define("PB_ENABLE_MALLOC", to: "1"),
        .define("FIRFirestore_VERSION", to: firebaseVersion),
      ],
      linkerSettings: [
        .linkedFramework("SystemConfiguration", .when(platforms: [.iOS, .macOS, .tvOS])),
        .linkedFramework("UIKit", .when(platforms: [.iOS, .tvOS])),
        .linkedLibrary("c++"),
      ]
    ),

    .target(
      name: "FirebaseFirestoreSwiftTarget",
      dependencies: [.target(name: "FirebaseFirestoreSwift",
                             condition: .when(platforms: [.iOS, .tvOS, .macOS]))],
      path: "SwiftPM-PlatformExclude/FirebaseFirestoreSwiftWrap"
    ),

    .target(
      name: "FirebaseFirestoreSwift",
      dependencies: ["FirebaseFirestore"],
      path: "Firestore",
      exclude: [
        "CHANGELOG.md",
        "CMakeLists.txt",
        "Example/",
        "LICENSE",
        "Protos/",
        "README.md",
        "Source/",
        "core/",
        "fuzzing/",
        "test.sh",
        "Swift/CHANGELOG.md",
        "Swift/README.md",
        "Swift/Tests/",
        "third_party/nlohmann_json",
        "third_party/FirestoreEncoder/LICENSE",
        "third_party/FirestoreEncoder/METADATA",
      ],
      sources: [
        "Swift/Source/",
        "third_party/FirestoreEncoder/",
      ]
    ),

    // MARK: - Firebase Functions

    .target(
      name: "FirebaseFunctions",
      dependencies: [
        "FirebaseCore",
        .product(name: "GTMSessionFetcherCore", package: "GTMSessionFetcher"),
      ],
      path: "FirebaseFunctions/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .target(
      name: "FirebaseFunctionsSwift",
      dependencies: [
        "FirebaseFunctions",
        "FirebaseSharedSwift",
      ],
      path: "FirebaseFunctionsSwift/Sources"
    ),
    .testTarget(
      name: "FirebaseFunctionsSwiftUnit",
      dependencies: ["FirebaseFunctionsSwift",
                     "FirebaseFunctionsTestingSupport",
                     "SharedTestUtilities"],
      path: "FirebaseFunctionsSwift/Tests"
    ),
    .target(
      name: "FirebaseFunctionsCombineSwift",
      dependencies: ["FirebaseFunctions"],
      path: "FirebaseCombineSwift/Sources/Functions"
    ),
    .testTarget(
      name: "FunctionsCombineUnit",
      dependencies: ["FirebaseFunctionsCombineSwift",
                     "FirebaseFunctionsTestingSupport",
                     "SharedTestUtilities"],
      path: "FirebaseFunctions/Tests/CombineUnit"
    ),
    .testTarget(
      name: "FunctionsUnit",
      dependencies: ["FirebaseFunctions",
                     "SharedTestUtilities"],
      path: "FirebaseFunctions/Tests/Unit",
      cSettings: [
        .headerSearchPath("../../../"),
      ]
    ),
    .testTarget(
      name: "FunctionsUnitSwift",
      dependencies: ["FirebaseFunctions"],
      path: "FirebaseFunctions/Tests/SwiftUnit"
    ),
    .testTarget(
      name: "FunctionsIntegration",
      dependencies: ["FirebaseFunctions",
                     "SharedTestUtilities"],
      path: "FirebaseFunctions/Tests/Integration",
      cSettings: [
        .headerSearchPath("../../../"),
      ]
    ),
    .testTarget(
      name: "FunctionsSwiftIntegration",
      dependencies: ["FirebaseFunctions",
                     "FirebaseFunctionsTestingSupport",
                     "SharedTestUtilities"],
      path: "FirebaseFunctions/Tests/SwiftIntegration"
    ),
    .target(
      name: "FirebaseFunctionsTestingSupport",
      dependencies: ["FirebaseFunctions"],
      path: "FirebaseTestingSupport/Functions/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),

    // MARK: - Firebase In App Messaging

    .target(
      name: "FirebaseInAppMessagingTarget",
      dependencies: [
        .target(name: "FirebaseInAppMessaging", condition: .when(platforms: [.iOS, .tvOS])),
      ],
      path: "SwiftPM-PlatformExclude/FirebaseInAppMessagingWrap"
    ),

    .target(
      name: "FirebaseInAppMessaging",
      dependencies: [
        "FirebaseCore",
        "FirebaseInstallations",
        "FirebaseABTesting",
        "GoogleUtilitiesEnvironment",
        .product(name: "nanopb", package: "nanopb"),
        .target(name: "FirebaseInAppMessaging_iOS", condition: .when(platforms: [.iOS])),
      ],
      path: "FirebaseInAppMessaging/Sources",
      exclude: [
        "DefaultUI/CHANGELOG.md",
        "DefaultUI/README.md",
      ],
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
        .define("PB_FIELD_32BIT", to: "1"),
        .define("PB_NO_PACKED_STRUCTS", to: "1"),
        .define("PB_ENABLE_MALLOC", to: "1"),
      ]
    ),

    .target(
      name: "FirebaseInAppMessaging_iOS",
      path: "FirebaseInAppMessaging/iOS",
      resources: [.process("Resources")]
    ),

    .target(
      name: "FirebaseInAppMessagingSwift",
      dependencies: ["FirebaseInAppMessaging"],
      path: "FirebaseInAppMessaging/Swift/Source"
    ),

    .target(
      name: "FirebaseInstallations",
      dependencies: [
        "FirebaseCore",
        .product(name: "FBLPromises", package: "Promises"),
        "GoogleUtilitiesEnvironment",
        "GoogleUtilitiesUserDefaults",
      ],
      path: "FirebaseInstallations/Source/Library",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../../"),
      ],
      linkerSettings: [
        .linkedFramework("Security"),
      ]
    ),
    
    .target(
      name: "FirebaseMessaging",
      dependencies: [
        "FirebaseCore",
        "FirebaseInstallations",
        "GoogleUtilitiesAppDelegateSwizzler",
        "GoogleUtilitiesEnvironment",
        "GoogleUtilitiesReachability",
        "GoogleUtilitiesUserDefaults",
        "GoogleDataTransport",
        .product(name: "nanopb", package: "nanopb"),
      ],
      path: "FirebaseMessaging/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
        .define("PB_FIELD_32BIT", to: "1"),
        .define("PB_NO_PACKED_STRUCTS", to: "1"),
        .define("PB_ENABLE_MALLOC", to: "1"),
      ],
      linkerSettings: [
        .linkedFramework("SystemConfiguration", .when(platforms: [.iOS, .macOS, .tvOS])),
      ]
    ),
    .testTarget(
      name: "MessagingUnit",
      dependencies: ["FirebaseMessaging", "SharedTestUtilities", "OCMock"],
      path: "FirebaseMessaging/Tests/UnitTests",
      exclude: [
        "FIRMessagingContextManagerServiceTest.m", // TODO: Adapt its NSBundle usage to SPM.
      ],
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),

    .target(
      name: "FirebasePerformanceTarget",
      dependencies: [.target(name: "FirebasePerformance",
                             condition: .when(platforms: [.iOS, .tvOS]))],
      path: "SwiftPM-PlatformExclude/FirebasePerformanceWrap"
    ),
    .target(
      name: "FirebasePerformance",
      dependencies: [
        "FirebaseCore",
        "FirebaseInstallations",
        "FirebaseRemoteConfig",
        "GoogleDataTransport",
        "GoogleUtilitiesEnvironment",
        "GoogleUtilitiesISASwizzler",
        "GoogleUtilitiesMethodSwizzler",
        "GoogleUtilitiesUserDefaults",
        .product(name: "nanopb", package: "nanopb"),
      ],
      path: "FirebasePerformance/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
        .define("PB_FIELD_32BIT", to: "1"),
        .define("PB_NO_PACKED_STRUCTS", to: "1"),
        .define("PB_ENABLE_MALLOC", to: "1"),
        .define("FIRPerformance_LIB_VERSION", to: firebaseVersion),
      ],
      linkerSettings: [
        .linkedFramework("SystemConfiguration", .when(platforms: [.iOS, .tvOS])),
        .linkedFramework("MobileCoreServices", .when(platforms: [.iOS, .tvOS])),
        .linkedFramework("QuartzCore", .when(platforms: [.iOS, .tvOS])),
      ]
    ),
    .testTarget(
      name: "PerformanceUnit",
      dependencies: [
        "FirebasePerformanceTarget",
        "OCMock",
        "SharedTestUtilities",
        "GCDWebServer",
      ],
      path: "FirebasePerformance/Tests/Unit",
      resources: [
        .process("FPRURLFilterTests-Info.plist"),
        .process("Server/smallDownloadFile"),
        .process("Server/bigDownloadFile"),
      ],
      cSettings: [
        .headerSearchPath("../../.."),
        .define("PB_FIELD_32BIT", to: "1"),
        .define("PB_NO_PACKED_STRUCTS", to: "1"),
        .define("PB_ENABLE_MALLOC", to: "1"),
      ]
    ),

    .target(
      name: "SharedTestUtilities",
      dependencies: ["FirebaseCore", "OCMock"],
      path: "SharedTestUtilities",
      publicHeadersPath: "./",
      cSettings: [
        .headerSearchPath("../"),
      ]
    ),

    // MARK: - Firebase Remote Config

    .target(
      name: "FirebaseRemoteConfig",
      dependencies: [
        "FirebaseCore",
        "FirebaseABTesting",
        "FirebaseInstallations",
        "GoogleUtilitiesNSData",
      ],
      path: "FirebaseRemoteConfig/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .testTarget(
      name: "RemoteConfigUnit",
      dependencies: ["FirebaseRemoteConfig", "OCMock"],
      path: "FirebaseRemoteConfig/Tests/Unit",
      exclude: [
        // Need to be evaluated/ported to RC V2.
        "RCNConfigAnalyticsTest.m",
        "RCNConfigSettingsTest.m",
        "RCNConfigTest.m",
        "RCNRemoteConfig+FIRAppTest.m",
        "RCNThrottlingTests.m",
      ],
      resources: [
        .process("SecondApp-GoogleService-Info.plist"),
        .process("Defaults-testInfo.plist"),
        .process("TestABTPayload.txt"),
      ],
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),
    .target(
      name: "FirebaseRemoteConfigSwift",
      dependencies: [
        "FirebaseRemoteConfig",
        "FirebaseSharedSwift",
      ],
      path: "FirebaseRemoteConfigSwift/Sources"
    ),
    .testTarget(
      name: "RemoteConfigFakeConsole",
      dependencies: ["FirebaseRemoteConfigSwift",
                     "RemoteConfigFakeConsoleObjC"],
      path: "FirebaseRemoteConfigSwift/Tests",
      exclude: [
        "AccessToken.json",
        "README.md",
        "ObjC/",
      ],
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .target(
      name: "RemoteConfigFakeConsoleObjC",
      dependencies: ["OCMock"],
      path: "FirebaseRemoteConfigSwift/Tests/ObjC",
      publicHeadersPath: ".",
      cSettings: [
        .headerSearchPath("../../../"),
      ]
    ),

    // MARK: - Firebase Storage

    .target(
      name: "FirebaseStorage",
      dependencies: [
        "FirebaseCore",
        .product(name: "GTMSessionFetcherCore", package: "GTMSessionFetcher"),
      ],
      path: "FirebaseStorage/Sources",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ],
      linkerSettings: [
        .linkedFramework("MobileCoreServices", .when(platforms: [.iOS])),
        .linkedFramework("CoreServices", .when(platforms: [.macOS])),
      ]
    ),
    .testTarget(
      name: "StorageUnit",
      dependencies: ["FirebaseStorage", "OCMock", "SharedTestUtilities"],
      path: "FirebaseStorage/Tests/Unit",
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),
    .target(
      name: "FirebaseStorageSwift",
      dependencies: ["FirebaseStorage"],
      path: "FirebaseStorageSwift/Sources"
    ),
    .testTarget(
      name: "swift-test",
      dependencies: [
        "Firebase",
        "FirebaseAuth",
        "FirebaseAppCheck",
        "FirebaseABTesting",
        .target(name: "FirebaseAppDistribution",
                condition: .when(platforms: [.iOS])),
        "FirebaseAuthCombineSwift",
        "FirebaseFirestoreCombineSwift",
        "FirebaseFunctionsCombineSwift",
        "FirebaseStorageCombineSwift",
        "FirebaseCrashlytics",
        "FirebaseCore",
        "FirebaseDatabase",
        "FirebaseDynamicLinks",
        "FirebaseFirestore",
        "FirebaseFirestoreSwift",
        "FirebaseFunctions",
        "FirebaseInAppMessaging",
        .target(name: "FirebaseInAppMessagingSwift",
                condition: .when(platforms: [.iOS, .tvOS])),
        "FirebaseInstallations",
        "FirebaseMessaging",
        .target(name: "FirebasePerformance",
                condition: .when(platforms: [.iOS, .tvOS])),
        "FirebaseRemoteConfig",
        "FirebaseStorage",
        "FirebaseStorageSwift",
        .product(name: "nanopb", package: "nanopb"),
      ],
      path: "SwiftPMTests/swift-test"
    ),
    .testTarget(
      name: "analytics-import-test",
      dependencies: [
        "FirebaseAnalyticsSwiftTarget",
        "FirebaseAnalyticsWrapper",
        "Firebase",
      ],
      path: "SwiftPMTests/analytics-import-test"
    ),
    .testTarget(
      name: "objc-import-test",
      dependencies: [
        "Firebase",
        "FirebaseAuth",
        "FirebaseABTesting",
        "FirebaseAppCheck",
        .target(name: "FirebaseAppDistribution",
                condition: .when(platforms: [.iOS])),
        "FirebaseCrashlytics",
        "FirebaseCore",
        "FirebaseDatabase",
        "FirebaseDynamicLinks",
        "FirebaseFirestore",
        "FirebaseFunctions",
        "FirebaseInAppMessaging",
        "FirebaseInstallations",
        "FirebaseMessaging",
        .target(name: "FirebasePerformance",
                condition: .when(platforms: [.iOS, .tvOS])),
        "FirebaseRemoteConfig",
        "FirebaseStorage",
      ],
      path: "SwiftPMTests/objc-import-test"
    ),
    .testTarget(
      name: "version-test",
      dependencies: [
        "FirebaseCore",
      ],
      path: "SwiftPMTests/version-test",
      cSettings: [
        .define("FIR_VERSION", to: firebaseVersion),
      ]
    ),

    // MARK: - Firebase App Check

    .target(name: "FirebaseAppCheck",
            dependencies: [
              "FirebaseCore",
              .product(name: "FBLPromises", package: "Promises"),
              "GoogleUtilitiesEnvironment",
            ],
            path: "FirebaseAppCheck/Sources",
            exclude: [
              "Interop/CMakeLists.txt",
            ],
            publicHeadersPath: "Public",
            cSettings: [
              .headerSearchPath("../.."),
            ],
            linkerSettings: [
              .linkedFramework("DeviceCheck", .when(platforms: [.iOS, .macOS, .tvOS])),
            ]),
    .testTarget(
      name: "AppCheckUnit",
      dependencies: ["FirebaseAppCheck", "OCMock", "SharedTestUtilities"],
      path: "FirebaseAppCheck/Tests",
      exclude: [
        // Disable Swift tests as mixed targets are not supported (Xcode 12.3).
        "Unit/Swift",

        // Disable Keychain dependent tests as they require a host application on iOS.
        "Integration",
        "Unit/AppAttestProvider/Storage/FIRAppAttestArtifactStorageTests.m",
        "Unit/Core/FIRAppCheckIntegrationTests.m",
        "Unit/Core/FIRAppCheckStorageTests.m",
      ],
      resources: [
        .process("Fixture"),
      ],
      cSettings: [
        .headerSearchPath("../.."),
      ]
    ),
    .testTarget(
      name: "AppCheckUnitSwift",
      dependencies: ["FirebaseAppCheck"],
      path: "FirebaseAppCheck/Tests/Unit/Swift",
      cSettings: [
        .headerSearchPath("../.."),
      ]
    ),

    // MARK: Testing support

    .target(
      name: "FirebaseFirestoreTestingSupport",
      dependencies: ["FirebaseFirestore"],
      path: "FirebaseTestingSupport/Firestore/Sources",
      publicHeadersPath: "./",
      cSettings: [
        .headerSearchPath("../../.."),
        .headerSearchPath("../../../Firestore/Source/Public/FirebaseFirestore"),
      ]
    ),
    .testTarget(
      name: "FirestoreTestingSupportTests",
      dependencies: ["FirebaseFirestoreTestingSupport"],
      path: "FirebaseTestingSupport/Firestore/Tests",
      cSettings: [
        .headerSearchPath("../../.."),
      ]
    ),
    .target(
      name: "GoogleUtilitiesAppDelegateSwizzler",
      dependencies: ["GoogleUtilitiesEnvironment",
                     "GoogleUtilitiesLogger",
                     "GoogleUtilitiesNetwork"],
      path: "GoogleUtilities",
      exclude: [
        "AppDelegateSwizzler/README.md",
        "Environment/",
        "Network/",
        "ISASwizzler/",
        "Logger/",
        "MethodSwizzler/",
        "NSData+zlib/",
        "Reachability",
        "SwizzlerTestHelpers/",
        "Tests",
        "UserDefaults/",
      ],
      sources: [
        "AppDelegateSwizzler/",
        "Common/",
      ],
      publicHeadersPath: "AppDelegateSwizzler/Public",
      cSettings: [
        .headerSearchPath("../"),
      ]
    ),
    .target(
      name: "GoogleUtilitiesEnvironment",
      dependencies: [.product(name: "FBLPromises", package: "Promises")],
      path: "GoogleUtilities/Environment",
      exclude: ["third_party/LICENSE"],
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),

    .target(
      name: "GoogleUtilitiesLogger",
      dependencies: ["GoogleUtilitiesEnvironment"],
      path: "GoogleUtilities/Logger",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),

    .target(
      name: "GoogleUtilitiesISASwizzler",
      dependencies: ["GoogleUtilitiesLogger"],
      path: "GoogleUtilities/ISASwizzler",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),

    .target(
      name: "GoogleUtilitiesMethodSwizzler",
      dependencies: ["GoogleUtilitiesLogger"],
      path: "GoogleUtilities/MethodSwizzler",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .target(
      name: "GoogleUtilitiesNetwork",
      dependencies: ["GoogleUtilitiesLogger",
                     "GoogleUtilitiesNSData",
                     "GoogleUtilitiesReachability"],
      path: "GoogleUtilities/Network",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../.."),
      ]
    ),
    .target(
      name: "GoogleUtilitiesNSData",
      path: "GoogleUtilities/NSData+zlib",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../.."),
      ],
      linkerSettings: [
        .linkedLibrary("z"),
      ]
    ),
    .target(
      name: "GoogleUtilitiesReachability",
      dependencies: ["GoogleUtilitiesLogger"],
      path: "GoogleUtilities/Reachability",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .target(
      name: "GoogleUtilitiesUserDefaults",
      dependencies: ["GoogleUtilitiesLogger"],
      path: "GoogleUtilities/UserDefaults",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .target(
      name: "GoogleUtilitiesSwizzlerTestHelpers",
      dependencies: ["GoogleUtilitiesMethodSwizzler"],
      path: "GoogleUtilities/SwizzlerTestHelpers",
      publicHeadersPath: "Public",
      cSettings: [
        .headerSearchPath("../../"),
      ]
    ),
    .target(
      name: "GoogleDataTransport",
      dependencies: [
        .product(name: "nanopb", package: "nanopb"),
        .product(name: "FBLPromises", package: "Promises"),
        "GoogleUtilitiesEnvironment",
      ],
      path: "GoogleDataTransport",
      exclude: [
        "generate_project.sh",
        "GDTCCTWatchOSTestApp/",
        "GDTWatchOSTestApp/",
        "GDTCCTTestApp/",
        "GDTTestApp/",
        "GDTCCTTests/",
        "GDTCORTests/",
        "ProtoSupport/",
      ],
      sources: [
        "GDTCORLibrary",
        "GDTCCTLibrary",
      ],
      publicHeadersPath: "GDTCORLibrary/Public",
      cSettings: [
        .headerSearchPath("../"),
        .define("GDTCOR_VERSION", to: "0.0.1"),
        .define("PB_FIELD_32BIT", to: "1"),
        .define("PB_NO_PACKED_STRUCTS", to: "1"),
        .define("PB_ENABLE_MALLOC", to: "1"),
      ],
      linkerSettings: [
        .linkedFramework("SystemConfiguration", .when(platforms: [.iOS, .macOS, .tvOS, .catalyst])),
        .linkedFramework("CoreTelephony", .when(platforms: [.macOS, .iOS, .catalyst])),
      ]
    ),
  ],
  cLanguageStandard: .c99,
  cxxLanguageStandard: CXXLanguageStandard.gnucxx14
)

extension Platform {
  static var catalyst: Self {
    #if swift(>=5.5)
      return Self.macCatalyst
    #else
      return Self.macOS
    #endif // swift(>=5.5)
  }
}
