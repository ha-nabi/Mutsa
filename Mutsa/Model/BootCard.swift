//
//  BootCard.swift
//  Mutsa
//
//  Created by 백대홍 on 11/2/23.
//

import Foundation
import SwiftUI

// 부트캠핑 Model
struct BootCard: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var subTitle: String
    var image: String
}


var BootCards: [BootCard] = [
    .init(title: "부트캠핑", subTitle: "bootcamping", image: "boot"),
    .init(title: "", subTitle: "", image: "boot1"),
    .init(title: "", subTitle: "", image: "boot2"),
    .init(title: "", subTitle: "", image: "boot3"),
    .init(title: "", subTitle: "", image: "boot4")
]

// 깃 스페이스 Model
struct GitCard: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var subTitle: String
    var image: String
}


var GitCards: [GitCard] = [
    .init(title: "깃스페이스", subTitle: "gitspace", image: "git"),
    .init(title: "", subTitle: "", image: "git1"),
    .init(title: "", subTitle: "", image: "git2"),
    .init(title: "", subTitle: "", image: "git3"),
    .init(title: "", subTitle: "", image: "git4")
]

// 바틀즈 Model
struct BottlesCard: Identifiable, Hashable {
    var id: UUID = .init()
    var title: String
    var subTitle: String
    var image: String
}


var BottlesCards: [BottlesCard] = [
    .init(title: "바틀즈", subTitle: "bottles", image: "bottles"),
    .init(title: "", subTitle: "", image: "bottles1"),
    .init(title: "", subTitle: "", image: "bottles2"),
    .init(title: "", subTitle: "", image: "bottles3"),
    .init(title: "", subTitle: "", image: "bottles4"),
    .init(title: "", subTitle: "", image: "bottles5")
]
