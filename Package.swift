// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let coreBasic: Target = .binaryTarget(name: "FaceCoreBasic", url: "https://pods.regulaforensics.com/FaceCoreBasic/6.1.584/FaceCoreBasic-6.1.584.zip", checksum: "02f81ca211389961e23f06ea3ea918dc38add174d850da2fe5f5830baee0315b")
let coreMatch: Target = .binaryTarget(name: "FaceCoreMatch", url: "https://pods.regulaforensics.com/FaceCoreMatch/6.1.583/FaceCoreMatch-6.1.583.zip", checksum: "80ba61560140e155162665f234d7370bd3ce6a0b33520a5548036654655c8477")
let faceSDK: Target = .binaryTarget(name: "FaceSDK", url: "https://pods.regulaforensics.com/FaceSDK/6.1.1825/FaceSDK-6.1.1825.zip", checksum: "9b313d81bf540035f0bcd059ec5612fe517fd841746225486f397c6c65a88719")
let regulaCommon: Target = .binaryTarget(name: "RegulaCommon", url: "https://pods.regulaforensics.com/RegulaCommon/7.2.487/RegulaCommon-7.2.487.zip", checksum: "79e401a8cfc0a16751479bccfca645709037e0afd6c78f653b765fc846ad0220")

let package = Package(
    name: "FaceSDKPackage",
    products: [
        .library(name: "FaceCoreBasic", targets: ["FaceCoreBasic"]),
        .library(name: "FaceCoreMatch", targets: ["FaceCoreMatch"]),
        .library(name: "FaceSDK", targets: ["FaceSDK", "RegulaCommon"]),
    ],
    targets: [
        coreBasic,
        coreMatch,
        faceSDK,
        regulaCommon
    ]
)
