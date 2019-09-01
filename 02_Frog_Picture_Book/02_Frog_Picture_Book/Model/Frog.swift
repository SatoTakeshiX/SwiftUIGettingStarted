//
//  Frog.swift
//  02_Frog_Picture_Book
//
//  Created by satoutakeshi on 2019/09/01.
//  Copyright © 2019 satoutakeshi. All rights reserved.
//

import Foundation

struct Frog: Identifiable {
    let id: String = UUID().uuidString
    var name: String //名前
    var imageName: String //画像
    var place: String //生息地
    var hasPoison: Bool //有毒か？
    var description: String //説明
}

let sampleFrogs: [Frog] = [
    Frog(name: "アカメガエル",
         imageName: "Red-Eyed-Tree-Frog",
         place: "グアテマラ、コスタリカ、ニカラグア、パナマ、ホンジュラス、メキシコ",
         hasPoison: false,
         description: " 熱帯雨林や二次林に生息する。夜行性で、昼間は葉に止まって休む。食性は動物食で、昆虫類、節足動物、小型のカエル等を食べる。"),
    Frog(name: "トノサマガエル",
         imageName: "Dark-Spotted-Frog",
         place: "日本、中国、朝鮮半島、ロシア",
         hasPoison: false,
         description: "後肢が長く、跳躍力が強い。背面の皮膚は比較的滑らか。体色はオスは背面が茶褐色から緑色、メスは灰白色。背中線上に明瞭な白または黄色の線がある。背面に黒い斑紋があり、斑紋同士がつながっていることが多い。"),
    Frog(name: "アマガエル",
         imageName: "Tree-Frog",
         place: "日本、朝鮮半島、中国東部",
         hasPoison: false,
         description: "食性は肉食性で、小さな昆虫類やクモ類を捕食する。樹上での生活に適応していて、水辺の植物の上や森林などに生息する。春から秋まで活動し、冬は温度差の少ない地中で冬眠する。"),
    Frog(name: "ヤドクガエル", imageName: "Poison-Dart-Frog", place: "北アメリカ大陸南部、南アメリカ大陸、ハワイ", hasPoison: true, description: "毒はアルカロイド系の神経毒で、20μgで人間の大人を死に至らしめるというバトラコトキシンのほか、ヒストリオニコトキシン、プミリオトキシン等を持つ種がある。低地の熱帯雨林から高山の雲霧林等に分布する。食性は動物食で昆虫類、節足動物等を食べる。")
    
]
