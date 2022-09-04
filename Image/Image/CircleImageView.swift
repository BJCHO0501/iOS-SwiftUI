import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size: 120))
//            .foregroundColor(Color.red)
//            .shadow(color: Color.orange, radius: 1, x: 3, y: 3)
//            .shadow(color: Color.yellow, radius: 1, x: 5, y: 5)
        Image("MyImage")
            .resizable() //핸드폰에 크기 맞추기
            .scaledToFill()
//                .aspectRatio(contentMode: .fill) //비율 맞추기
                .frame(width: 300, height: 300) //크기 설정
                .clipShape(Circle()) //클립 원으로 따기
                .shadow(color: .brown, radius: 20, x: 1, y: 1)
                .overlay(
                    Circle()
                        .foregroundColor(.red)
                        .opacity(0.13) //불투명도
                )
                .overlay(
                    Text("Snowman")
                        .font(.system(size: 50, design: .rounded))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                )
                .overlay(
                    Circle().stroke(Color.white, lineWidth: 7) //오버레이 설정
                        .padding()
                ) // 오버레이를 씌우고 선 따기
        
//                .clipped() //이미지의 크기만큼 이미지 자르기
//                .edgesIgnoringSafeArea(.all) //세이프티 에리아 무시
        
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
