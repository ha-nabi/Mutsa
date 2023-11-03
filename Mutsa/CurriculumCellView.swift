//
//  CurriculumCellView..swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct CurriculumCellView: View {
    
    let curriculum: Curriculum
    
    var body: some View {
        ScrollView(.vertical) {
            HStack {
                VStack(alignment: .leading) {
                    
                    ForEach(0..<curriculum.subCurriculum.count, id: \.self) { i in
                        if curriculum.subCurriculum[i].subTitle != "" {
                            Text(curriculum.subCurriculum[i].subTitle)
                                .font(.title3)
                                .bold()
                                .padding(.top, 10)
                                .padding(.bottom, 3)
                            
                        }
                        ForEach(0..<curriculum.subCurriculum[i].subDetail.count, id: \.self) { j in
                            Text("\(j+1). \(curriculum.subCurriculum[i].subDetail[j])")
                                .padding(5)
                        }
                        Spacer()
                            .frame(height: 20)
                    }
                }
                Spacer()
                
            }
            .navigationTitle(curriculum.title)
            .padding()
        }

    }
}
//
//#Preview {
//
////    CurriculumCellView(curriculum: Curriculum(title: "CS기초", subCurriculum: [
////        SubCurriculum(subTitle: "", subDetail: ["플레이그라운드를 통한 코딩의 이해", "기초 자료구조 & 알고리즘 이해", "Git & GitHub 이해 및 실습"])
////    ]))
//    NavigationStack {
//
//        CurriculumCellView(curriculum: Curriculum(title: "UI/UX 기초", subCurriculum: [
//            SubCurriculum(subTitle: "타이포그래피 기초", subDetail: ["타입에 대한 이해", "조형 원리에 따른 텍스트 운용 방법"]),
//            SubCurriculum(subTitle: "색체학", subDetail: ["색채 체계 원리", "배색 및 색상 사용 원리"]),
//            SubCurriculum(subTitle: "UX 기초", subDetail: ["UX디자인 기초개념", "사용자 인터페이스와 사용성 이해", "사용자 경험 향상을 위한 요소 이해", "올바른 사용자 인터랙션의 구성 요소"]),
//            SubCurriculum(subTitle: "HIG(Human Interface Guideline)", subDetail: ["애플 HIG 이해", "앱스토어 등록 반려 사유 검토"])
//        ]))
//    }
//}
