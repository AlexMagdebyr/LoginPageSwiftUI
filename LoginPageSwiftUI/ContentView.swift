import SwiftUI

struct ContentView: View {
    
    @State private var index = 0
    
    var body: some View {
        GeometryReader { _ in
            
            VStack {
                Image("apple")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .padding(.top, 100)
                
                ZStack {
                    SignUp(index: $index)
                        .zIndex(Double(self.index))
                    Login(index: $index)
                }
                
                HStack(spacing: 15) {
                    Rectangle()
                        .fill(Color(.black))
                        .frame(height: 1)
                    
                    Text("Or")
                    
                    Rectangle()
                        .fill(Color(.black))
                        .frame(height: 1)
                }
                .padding(.horizontal, 30)
                .padding(.top, 50)
                
                HStack {
                    Button {
                        //
                    } label: {
                        Image("Telegram")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }
                    
                    Button {
                        //
                    } label: {
                        Image("VK")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }
                    
                    Button {
                        //
                    } label: {
                        Image("Youtube")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                    }
                    

                }
                .padding(.top, 30)
            }
            .padding(.vertical)
        }
        .background(Image("image").resizable().edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
