import SwiftUI

struct MyText: View {
    
    static let todayDateFormater: DateFormatter = {
        let formater = DateFormatter()
        formater.dateFormat = "YYYY년 M월 d일 H시 MM분 SS초"
        return formater
    }()
    
    var today = Date()
    
    var body: some View {
        VStack {
            Text("폰트 사이즈!")
                .font(.system(size: 40))

            
            Text("Text")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.")
            .tracking(2) //글자들의 거리
                .font(.system(.body, design: .serif))
                .fontWeight(.medium)
                .multilineTextAlignment(.center) //텍스트 정렬 위치
                .lineLimit(nil) // 라인 수 nil하면 멀티러인
                .lineSpacing(5) //글자 라인 공간
                .truncationMode(.tail) //글자가 잘리는 위치
                .shadow(color: Color.red, radius: 4, x: 0, y: 0) //그림자
            
                .padding([.horizontal, .vertical], 10)
                .background(Color.gray)
                .cornerRadius(8)
                .foregroundColor(Color.white)
                .padding(1) //밖 패팅
                .background(Color.black)
                .cornerRadius(10)
                .padding(10)
                .shadow(color: Color.gray, radius: 10, x: 5, y: 5)
            
            Text("\(today, formatter: MyText.todayDateFormater)") // 날자 포멧
                .font(.system(size: 15))
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
                .padding(5)
            
        }
    }
}

struct MyText_Previews: PreviewProvider {
    static var previews: some View {
        MyText()
    }
}
