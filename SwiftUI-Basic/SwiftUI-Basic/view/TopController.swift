import SwiftUI

struct TopController: View {
    
    static var todyaDateformat: DateFormatter = {
        let formater = DateFormatter()
        formater.dateFormat = "YYYY년 MM월 dd일"
        
        return formater
    }()
    
    var today = Date()
    
    var body: some View {
        HStack {
            Image(systemName: "chevron.left")
                .font(.system(size: 30))
                .padding(35)
            
            
            VStack {
                Text(today, formatter: TopController.todyaDateformat)
                    .font(.system(size: 20))
                    .fontWeight(.ultraLight)
                    .padding(5)
                    
                
                Text("식단표")
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
            }
            Image(systemName: "chevron.right")
                .font(.system(size: 30))
                .padding(35)
        }
    }
}

struct TopController_Previews: PreviewProvider {
    static var previews: some View {
        TopController()
    }
}
