//
//  ContentView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            introduceListView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("강사 및 멘토")
                }.tag(1)
            MainView()
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("이전 기수 활동")
                }.tag(2)
            CurriculumView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("커리큘럼")
                }.tag(3)
        }
        .accentColor(.orange)
    }
}

#Preview {
    ContentView()
}
