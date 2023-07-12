import SwiftUI

struct SignUp: View {
    
    @State var email = ""
    
    @State var password = ""
    
    @State var repass = ""
    
    @Binding var index : Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    VStack(spacing: 10) {
                        Text("SignUp")
                            .foregroundColor(self.index == 1 ? .black : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 1 ? .blue : .clear)
                            .frame(width: 150, height: 5)
                    }
                    
                    Spacer()
                }
                .padding(.top, 30)
                .padding(.leading, 200)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "envelope.fill")
                            .foregroundColor(.black)
                        TextField("Email Adress", text: $email)
                    }
                    
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.black)
                        SecureField("Password", text: $password)
                    }
                    
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                VStack {
                    HStack(spacing: 15) {
                        Image(systemName: "eye.slash.fill")
                            .foregroundColor(.black)
                        SecureField("Password", text: $repass)
                    }
                    
                    Divider()
                        .background(.white.opacity(0.5))
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(.white)
            .clipShape(SignUpCShape())
            .contentShape(SignUpCShape())
            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 1
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
            Button {
                //
            } label: {
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(.black)
                    .clipShape(Capsule())
                    .shadow(color: .blue.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            .offset(y: 25)
            .opacity(self.index == 1 ? 1 :0)
        }
    }
}
