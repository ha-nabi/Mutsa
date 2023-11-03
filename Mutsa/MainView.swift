//
//  ContentView.swift
//  test
//
//  Created by 강치우 on 11/2/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {

        NavigationStack {
            VStack {
                Image("logo2")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(15)
                    .shadow(radius: 8)
                    .padding()
                
            }
            List {
                Section(header: Text("내 주변 바틀샵 정보")) {
                    NavigationLink {
                        BottlesView()
                    } label: {
                        HStack(spacing: 3) {
                            Text("바틀즈")
                                .font(.subheadline)
                                .foregroundStyle(.purple)
                            
                            Text("구경하기")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.orange)
                        }
                    }
                }
                Section(header: Text("캠핑 커뮤니티 서비스")) {
                    NavigationLink {
                        BootView()
                    } label: {
                        HStack(spacing: 3) {
                            Text("부트캠핑")
                                .font(.subheadline)
                                .foregroundStyle(.purple)
                            
                            Text("구경하기")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.orange)
                        }
                    }
                }
                Section(header: Text("스타한 레포지토리 관리 및 네트워킹")) {
                    NavigationLink {
                        GitView()
                    } label: {
                        HStack(spacing: 3) {
                            Text("깃스페이스")
                                .font(.subheadline)
                                .foregroundStyle(.purple)
                            
                            Text("구경하기")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .foregroundStyle(.orange)
                        }
                    }
                }
            }
            .navigationTitle("멋쟁이 사자처럼")
        }
        
    }
}



#Preview {
    MainView()
}
