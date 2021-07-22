////
////  ContentView.swift
////  registrationPageFirebase
////
////  Created by Aleksander Kulikov on 19.06.2021.
////
//
//import SwiftUI
//
//struct ContentView: View {
//
//    @State var index = 0
//
//    var body: some View {
//        GeometryReader { _ in
//            VStack {
//                Image("TMDB")
//                    .resizable()
//                    .frame(width: 85, height: 85)
//                ZStack {
//
//                    SingUp(index: self.$index)
//
//                    .zIndex(Double(self.index))
//
//                    Login(index: self.$index)
//
//                }
//                HStack(spacing: 15) {
//                    Rectangle()
//                        .fill(Color.init(.blue))
//                        .frame(height: 1)
//
//                    Text("WELCOM")
//                        .bold()
//                        .foregroundColor(.blue)
//
//
//                    Rectangle()
//                        .fill(Color.init(.blue))
//                        .frame(height: 1)
//                }
//                .padding(.horizontal, 30)
//                .padding(.top, 80)
//
//                HStack(spacing:25) {
//                    //Соц. Сети
//                }
//            }
//        }.padding(.vertical)
//        .background(Color(.black).edgesIgnoringSafeArea(.all))
//
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct CShape: Shape {
//
//    func path(in rect: CGRect) -> Path {
//
//
//        return Path { path in
//            path.move(to: CGPoint(x: rect.width, y: 130))
//            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
//            path.addLine(to: CGPoint(x: 0, y: rect.height))
//            path.addLine(to: CGPoint(x: 0, y: 0))
//        }
//    }
//}
//
//struct CShape1: Shape {
//
//    func path(in rect: CGRect) -> Path {
//
//
//        return Path { path in
//            path.move(to: CGPoint(x: 0, y: 130))
//            path.addLine(to: CGPoint(x: 0, y: rect.height))
//            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
//            path.addLine(to: CGPoint(x: rect.width, y: 0))
//        }
//    }
//}
//
//struct Login: View {
//    var lg = LoginController()
//
//
//
//    @State var email = ""
//    @State var passw = ""
//    @Binding var index: Int
//
//    var body: some View {
//        ZStack(alignment: .bottom) {
//            VStack {
//                HStack {
//
//                    VStack(spacing: 10) {
//                        Text("Login")
//                            .foregroundColor(self.index == 0 ? .white : .gray)
//                            .font(.title)
//                            .fontWeight(.bold)
//
//                        Capsule()
//                            .fill(self.index == 0 ? Color.blue : Color.clear)
//                            .frame(width: 100, height: 5)
//                    }
//                    Spacer()
//                } .padding(.top, 30)
//
//                VStack {
//                    HStack(spacing: 15) {
//                        Image(systemName: "envelope.fill")
//                            .foregroundColor(.black)
//                        TextField("Email Address", text: self.$email)
//                    }
//                    Divider()
//                        .background(Color.black.opacity(1))
//                }.padding(.horizontal)
//                .padding(.top, 40)
//
//                VStack {
//                    HStack(spacing: 15) {
//                        Image(systemName: "eye.slash.fill")
//                            .foregroundColor(.black)
//                        SecureField("Password", text: self.$passw)
//                    }
//
//                    Divider()
//                        .background(Color.black.opacity(1))
//                }.padding(.horizontal)
//                .padding(.top, 30)
//
//                HStack {
//                    Spacer(minLength: 0)
//                    Button(action: {
//
//                    }) {
//                        Text("Forget Password?")
//                            .foregroundColor(Color.white.opacity(0.6))
//                    }
//                }.padding(.horizontal)
//                .padding(.top, 30)
//            }.padding()
//            .padding(.bottom, 65)
//            .background(Color(.gray))
//            .clipShape(CShape())
//            .contentShape(CShape())
//            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
//            .onTapGesture {
//                self.index = 0
//            }
//            .cornerRadius(35)
//            .padding(.horizontal, 20)
//
//            Button(action: {
//                self.lg.loginUser()
//            }) {
//                Text("LOGIN")
//                    .foregroundColor(.white)
//                    .fontWeight(.bold)
//                    .padding(.vertical)
//                    .padding(.horizontal, 50)
//                    .background(Color(.gray))
//                    .clipShape(Capsule())
//                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: 5)
//
//            }
//            .shadow(radius: 15)
//            .offset(y: 20)
//            .opacity(self.index == 0 ? 1 : 0)
//        }
//    }
//}
//
//struct SingUp: View {
//
//    @State var email = ""
//    @State var passw = ""
//    @State var rePassw = ""
//    @Binding var index: Int
//
//
//    var body: some View {
//        ZStack(alignment: .bottom) {
//            VStack {
//                HStack {
//                    Spacer(minLength: 0)
//
//                    VStack(spacing: 10) {
//                        Text("SignUp")
//                            .foregroundColor(self.index == 1 ? .white : .gray)
//                            .font(.title)
//                            .fontWeight(.bold)
//
//                        Capsule()
//                            .fill(self.index == 1 ? Color.blue : Color.clear)
//                            .frame(width: 100, height: 5)
//
//                    }
//                }
//                .padding(.top, 30)
//
//
//                VStack {
//                    HStack(spacing: 15) {
//                        Image(systemName: "envelope.fill")
//                            .foregroundColor(.black)
//                        TextField("Email Address", text: self.$email)
//                    }
//                    Divider()
//                        .background(Color.white.opacity(1))
//                }.padding(.horizontal)
//                .padding(.top, 40)
//
//                VStack {
//                    HStack(spacing: 15) {
//                        Image(systemName: "eye.slash.fill")
//                            .foregroundColor(.black)
//                        SecureField("Password", text: self.$passw)
//                    }
//                    Divider()
//                        .background(Color.white.opacity(1))
//                }.padding(.horizontal)
//                .padding(.top, 30)
//
//
//
//
//                VStack {
//                    HStack(spacing: 15) {
//                        Image(systemName: "eye.slash.fill")
//                            .foregroundColor(.black)
//                        SecureField("Password", text: self.$rePassw)
//                    }
//                    Divider().background(Color.white.opacity(1))
//                }.padding(.horizontal)
//                .padding(.top, 30)
//
//            }.padding()
//            .padding(.bottom, 65)
//            .background(Color(.opaqueSeparator))
//            .clipShape(CShape1())
//            .contentShape(CShape1())
//            .shadow(color: Color.black.opacity(0.3), radius: 5, x: 0, y: -5)
//            .onTapGesture {
//                self.index = 1
//            }
//            .cornerRadius(35)
//            .padding(.horizontal, 20)
//
//            Button(action: {
//                //
//            })  {
//                Text("SIGNUP")
//                    .foregroundColor(.white)
//                    .fontWeight(.bold)
//                    .padding(.vertical)
//                    .padding(.horizontal, 50)
//                    .clipShape(Capsule())
//                    .background(Color(.opaqueSeparator))
//
//                    .shadow(color: Color.white.opacity(0.1), radius: 5, x: 0, y: -5)
//                    .cornerRadius(35)
//            }
//            .offset(y: 25)
//            .opacity(self.index == 1 ? 1 : 0)
//            .shadow(radius: 15)
//
//        }
//    }
//
//}
//
//
//
