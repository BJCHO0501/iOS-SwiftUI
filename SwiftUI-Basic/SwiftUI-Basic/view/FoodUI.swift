import SwiftUI

struct FoodUI: View {
    var body: some View {
        VStack {
            VStack {
                TopController()
                FoodCellView()
                    .padding(.top, 20)
            }
            .padding(10)
            
            Spacer()
        }
        
    }
}

struct FoodUI_Previews: PreviewProvider {
    static var previews: some View {
        FoodUI()
    }
}
