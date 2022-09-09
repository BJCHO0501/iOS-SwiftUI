import SwiftUI

struct MyList: View {
    var body: some View {
        List {
            Section(header: Text("헤더입니다")) {
               Text("내용입니다")
            }
            .listRowInsets(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10)) //간격 커스텀으로 설정
            .listRowBackground(Color.gray) //백그라운드 색설정
            
            
            Section(header: Text("다른 헤더입니다")) {
                ForEach(1...10, id: \.self) { index in
                    Text("리스트 \(index)")
                } //foreach
            }
        } .listStyle(.insetGrouped) //리스트 스타일
    }
}

struct MyList_Previews: PreviewProvider {
    static var previews: some View {
        MyList()
    }
}
