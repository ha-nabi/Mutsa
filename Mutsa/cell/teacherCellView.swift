//
//  teacherCellView.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct teacherCellView: View {
    var teacher: TeacherData

    var body: some View {
        HStack(spacing: 20) {
            Image(teacher.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 10) {
                Text(teacher.name)
                    .font(.system(size: 30))
                Text(teacher.position)
                    .font(.system(size: 20))
                    .foregroundStyle(Color.secondary)
//
//                Text(teacher.history)
//                    .foregroundStyle(Color.gray)
                    
            }
            .padding()
        }
    }
}

#Preview {
    teacherCellView(teacher: TeacherData(name: "박준영", image: "박준영", position: "lecturer",  oneSentence: "사람을 변화시키는 일의 희열과 가치를 찾고 있거나 이미 알고 있는 분들과의 교류를 희망하는 프로그래머", history: "-(현)AICBM(AI+IoT+Cloud+Big Data+Mobile) 융합 프로젝트 강의/개발\n - (전) F사 서버 팀장\n - (전) N사 서버 개발 \n -(전) L사 개발실장 \n"))
        .background(Color.green)
}
