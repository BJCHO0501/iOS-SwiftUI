import SwiftUI

struct MyTextfileld: View {
    @State private var text: String = ""
    @State private var passText: String = ""
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                TextField("입력", text: $text)
                    .autocapitalization(.none) //앞글자 자동 대문자 방지
                    .disableAutocorrection(true) //자동완성 방지
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 16)
                
                Button(action: {
                    self.text = ""
                }) {
                    if(self.text.count > 0) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.system(size: 25))
                            .foregroundColor(.gray)
                    }
                } //삭제 버튼
            }
            
            SecureField("비빌번호", text: $passText) //보안 텍스트 필드
                .autocapitalization(.none) //앞글자 자동 대문자 방지
                .disableAutocorrection(true) //자동완성 방지
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal, 16)

            Text("비번: \(passText)")
        }
        
    }
}

struct MyTextfileld_Previews: PreviewProvider {
    static var previews: some View {
        MyTextfileld()
    }
}
