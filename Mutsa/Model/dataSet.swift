//
//  teacherData.swift
//  Mutsa
//
//  Created by 홍세희 on 2023/11/02.
//

import SwiftUI

struct TeacherData: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var position: String
    var oneSentence: String
    var history: String
}

struct MentorData: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var position: String
    var oneSentence: String
    var history: String
    var gitUrl: String
    var blogUrl: String
}

let teacherData: [TeacherData] = [
    TeacherData(name: "박준영", image: "jun", position: "강사", oneSentence: "사람을 변화시키는 일의 희열과 가치를 찾고 있거나 이미 알고 있는 분들과의 교류를 희망하는 프로그래머", history: "• (현)AICBM(AI+IoT+Cloud+Big Data+Mobile) 융합 프로젝트 강의/개발\n• (전) F사 서버 팀장\n• (전) N사 서버 개발\n• (전) L사 개발실장\n"),
    TeacherData(name: "튜나", image: "you", position: "강사", oneSentence: "개굴", history: "• 현) P사 대표 & M사 개발팀 총괄 부장 겸임\n• 전) B사 공동창업자, 부사장\n• 전) S사 전략기획팀 디자이너, 개발자\n• 전) A사 디지털디자인연구소 연구원, 디자이너\n")
]

let mentorData: [MentorData] = [
    MentorData(name: "박철현", image: "park", position: "멘토", oneSentence: "여러분과 개발의 즐거움을 함께할 수 있었으면 합니다.", history: "• 프리랜서 iOS 개발자\n• 롯데카드, 컬리 등에서 근무\n", gitUrl: "https://github.com/blueprajna", blogUrl: ""),
    MentorData(name: "하울", image: "howl", position: "멘토", oneSentence: "개발자에게 가장 중요한 자질은 엉덩이가 의자에 붙는 거라고 생각해요", history: "• Exlou(구 하울랩)개발 회사 CEO/CTO\n• 대림 비데 IOT, 네스앤택 모바일앱 드론 컨트롤러 개발\n", gitUrl: "https://github.com/you6878", blogUrl: "https://howlcoding.com"),
    MentorData(name: "리이오", image: "leo", position: "멘토", oneSentence: "단순히 지식을 배우는 것이 아닌 활용할 수 있는 방법을 알려주고 싶습니다.", history: "• 와디즈 IOS 개발\n•  유투브 '개발자리' 운영\n• 레츠스위프트, 아디오스, KWDC 등 커뮤니티 활동", gitUrl: "https://github.com/M1zz", blogUrl: "http://dev200ok.blogspot.com"),
    MentorData(name: "그린", image: "green", position: "멘토", oneSentence: "불확실성에 도전하는 iOS 앱 개발자입니다.", history: "• 스타트업 '정육각' 근무\n• 한화생명 iOS 앱 개발 중\n•  Mash-up 개발 동아리 IOS기수 활동 중\n", gitUrl: "https://github.com/GREENOVER", blogUrl: "https://green1229.tistory.com"),
    MentorData(name: "이소영", image: "ott", position: "멘토", oneSentence: "꿋꿋하게 내 갈 길을 가는 것! 내실을 쌓아가는 것!", history: "• 빗썸코리아에서  iOS 개발 근무 중\n• 사이드 프로젝트 '모지또' 앱 제작 중\n", gitUrl: "github.com/hohyeonmoon", blogUrl: "https://ohttios.tistory.com/"),
    MentorData(name: "문호현", image: "moon", position: "멘토", oneSentence: " 명확한 목표를 갖고 개발을 생활화해서 적당히 공부하고 사용해 봅시다.", history: "• 현) AI 스타트업에서 iOS 개발자 근무\n• 전) 리디 근무\n• 민사고, UC 버클리, 서울대 연구실\n", gitUrl: "https://github.com/hohyeonmoon", blogUrl: "https://www.hohyeonmoon.com"),
    
]

struct teacherDataView: View {

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    teacherDataView()
}
