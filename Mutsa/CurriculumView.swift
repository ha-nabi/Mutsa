//
//  CurriculumView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct CurriculumView: View {
    
    @StateObject var vm = CurriculumModel()
    
    var body: some View {
        NavigationStack{
            List {
                Section {
                    ForEach(vm.curriculums.filter { $0.category == .preLearning }) { curriculum in
                        NavigationLink {
                            CurriculumCellView(curriculum: curriculum)
                        } label: {
                            VStack(alignment: .leading) {
                                Text("[Live 강의]")
                                    .font(.footnote)
                                    .foregroundStyle(.gray)
                                    .padding(.bottom, 1)
                                Text(curriculum.title)
                            }
                        }
                    }
                    
                    
                } header: {
                    Text(Curriculum.Category.preLearning.rawValue)
                        .font(.title2)
                        .foregroundStyle(.black)
                }
                
                Section {
                    ForEach(vm.curriculums.filter { $0.category == .mainCurriculum }) { curriculum in
                        NavigationLink {
                            CurriculumCellView(curriculum: curriculum)
                        } label: {
                            VStack(alignment: .leading) {
                                Text(curriculum.title)
                            }
                        }
                    }
                    
                    
                } header: {
                    Text(Curriculum.Category.mainCurriculum.rawValue)
                        .font(.title2)
                        .foregroundStyle(.black)
                }
                
                Section {
                    ForEach(vm.curriculums.filter { $0.category == .project }) { curriculum in
                        NavigationLink {
                            CurriculumCellView(curriculum: curriculum)
                        } label: {
                            VStack(alignment: .leading) {
                                Text(curriculum.title)
                            }
                        }
                    }
                    
                    
                } header: {
                    Text(Curriculum.Category.project.rawValue)
                        .font(.title2)
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    CurriculumView()
}

