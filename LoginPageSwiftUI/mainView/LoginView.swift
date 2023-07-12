import SwiftUI

struct Login: View {
    
    @State var email = ""
    
    @State var password = ""
    
    @Binding var index : Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    VStack(spacing: 10) {
                        Text("Login")
                            .foregroundColor(self.index == 0 ? .black : .gray)
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Capsule()
                            .fill(self.index == 0 ? .blue : .clear)
                            .frame(width: 150, height: 5)
                    }
                    
                    Spacer()
                }
                .padding(.top, 30)
                
                VStack {
                    HStack {
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
                
                HStack {
                    Spacer(minLength: 0)
                    
                    Button {
                        //
                    } label: {
                        Text("Forget Password?")
                            .foregroundColor(.black.opacity(0.6))
                    }
                    
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
            }
            .padding()
            .padding(.bottom, 65)
            .background(.white)
            .clipShape(LoginCShape())
            .contentShape(LoginCShape())
            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: -5)
            .onTapGesture {
                self.index = 0
            }
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
            Button {
                //
            } label: {
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(.black)
                    .clipShape(Capsule())
                    .shadow(color: .blue.opacity(0.1), radius: 5, x: 0, y: 5)
            }
            .offset(y: 25)
            .opacity(self.index == 0 ? 1 :0)
        }
    }
}
