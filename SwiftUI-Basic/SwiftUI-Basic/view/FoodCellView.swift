import SwiftUI

struct FoodCellView: View {
    
    let foodArr: [String] = ["아침", "점심", "저녁"]
    
    var body: some View {
        
        VStack {
            ForEach(0..<3, id: \.self) { i in
                VStack(alignment: .leading) {
                    HStack {
                        Text(foodArr[i])
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                            .foregroundColor(.cyan)
                            .padding(EdgeInsets(top: 15, leading: 30, bottom: 0, trailing: 0))
                        Spacer()
                    }
                    
                    Text("dsfsdfdfsdfdfdfdf")
                        .font(.system(size: 17))
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .padding(.horizontal, 30)
                    Spacer()
                }
                .frame(width: 350, height: 150)
                .background(.white)
                .cornerRadius(10)
                .shadow(color: .gray, radius: 3, x: 2, y: 2)
                .padding(10)
            }
        }
    }
}

struct FoodCellView_Previews: PreviewProvider {
    static var previews: some View {
        FoodCellView()
    }
}
