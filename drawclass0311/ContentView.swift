//
//  ContentView.swift
//  drawclass0311
//
//  Created by 潘昱任 on 2020/3/11.
//  Copyright © 2020 ntouyujen. All rights reserved.
//

import SwiftUI

struct Star: Shape {
    func path(in rect: CGRect)-> Path{
        Path{(path) in
            path.move(to: CGPoint(x: rect.width, y:0))
            path.addQuadCurve(to: CGPoint(x:0, y: rect.height), control: CGPoint(x: rect.width / 30, y: rect.height / 30))
            path.addQuadCurve(to: CGPoint(x: rect.width, y:0), control: CGPoint(x: rect.width * 20 / 20, y: rect.height * 15 / 20))
            path.closeSubpath()
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack{
            Group{
                Image("kbgi")
                    .resizable()
                Path{(path) in
                    //臉型
                    path.move(to: CGPoint(x:80, y:180))
                    path.addCurve(to: CGPoint(x:330, y:180), control1: CGPoint(x:-120, y:500), control2: CGPoint(x:540, y:500))
                    //左耳
                    path.move(to: CGPoint(x:80, y:180))
                    path.addQuadCurve(to: CGPoint(x:160, y:180),control: CGPoint(x:50, y:50))
                    //頭頂
                    path.move(to: CGPoint(x:160, y:180))
                    path.addQuadCurve(to: CGPoint(x:250, y:180), control: CGPoint(x:208, y:150))
                    //右耳
                    path.move(to: CGPoint(x:250, y:180))
                    path.addQuadCurve(to: CGPoint(x:330, y:180),control: CGPoint(x:360, y:50))
                }
                .fill(Color.white)
                //.fill(Color.green)
            }
            
            
            Group{
                //蝴蝶結中
                Path(ellipseIn: CGRect(x:250, y:180, width: 50, height: 50))
                    .fill(Color.red)
                //.fill(Color.blue)
                
                Path{(path) in
                    //蝴蝶結左
                    path.move(to: CGPoint(x:275, y:185))
                    path.addCurve(to: CGPoint(x:260, y:220), control1: CGPoint(x:220, y:50), control2: CGPoint(x:130, y:270))
                    //蝴蝶結右
                    path.move(to: CGPoint(x:290, y:188))
                    path.addCurve(to: CGPoint(x:280, y:225), control1: CGPoint(x:420, y:100), control2: CGPoint(x:370, y:350))
                }
                .fill(Color.red)
            }
            
            
            Group{
                //身體左
                Path{(path) in
                    path.move(to: CGPoint(x:150, y:412))
                    path.addLine(to: CGPoint(x:135, y:600))
                    path.addLine(to: CGPoint(x:260, y:415))
                }
                .fill(Color.blue)
                //.fill(Color.purple)
                
                //身體右
                Path{(path) in
                    path.move(to: CGPoint(x:135, y:600))
                    path.addQuadCurve(to: CGPoint(x:260, y:415), control: CGPoint(x:425, y:633))
                }
                .fill(Color.blue)
                //.fill(Color.pink)
            }
            
            Group{
                //左大腳
                Path{(path) in
                    path.move(to: CGPoint(x:143, y:500))
                    path.addCurve(to: CGPoint(x:135, y:600), control1: CGPoint(x:40, y:450), control2: CGPoint(x:20, y:600))
                }
                .fill(Color.white)
                //.fill(Color.yellow)
                
                //右小腳
                Path{(path) in
                    path.move(to: CGPoint(x:320, y:530))
                    path.addQuadCurve(to: CGPoint(x:260, y:600), control: CGPoint(x:450, y:600))
                }
                .fill(Color.white)
                //.fill(Color.orange)
                
                //手臂
                Path(ellipseIn: CGRect(x:90, y:430, width: 120, height: 60))
                    .fill(Color.white)
                //手指
                Path(ellipseIn: CGRect(x:110, y:418, width: 30, height: 30))
                    .fill(Color.white)
            }
            
            Group{
                //左上鬍鬚
                Path{(path) in
                    path.move(to: CGPoint(x:10, y:270))
                    path.addLine(to: CGPoint(x:100, y:290))
                }
                //.stroke(Color.black, lineWidth: 3)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 7, lineCap: .round, dash: [8]))
                
                //左中鬍鬚
                Path{(path) in
                    path.move(to: CGPoint(x:10, y:300))
                    path.addLine(to: CGPoint(x:100, y:300))
                }
                //.stroke(Color.black, lineWidth: 3)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 7, lineCap: .round, dash: [5]))
                
                //左下鬍鬚
                Path{(path) in
                    path.move(to: CGPoint(x:10, y:330))
                    path.addLine(to: CGPoint(x:100, y:310))
                }
                //.stroke(Color.black, lineWidth: 3)
                .stroke(Color.green, style: StrokeStyle(lineWidth: 7, lineCap: .round, dash: [10]))
                
                //右上鬍鬚
                Path{(path) in
                    path.move(to: CGPoint(x:315, y:290))
                    path.addLine(to: CGPoint(x:405, y:270))
                }
                //.stroke(Color.black, lineWidth: 3)
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 7, lineCap: .round, dash: [8]))
                
                //右中鬍鬚
                Path{(path) in
                    path.move(to: CGPoint(x:315, y:300))
                    path.addLine(to: CGPoint(x:405, y:300))
                }
                //.stroke(Color.black, lineWidth: 3)
                .stroke(Color.red, style: StrokeStyle(lineWidth: 7, lineCap: .round, dash: [5]))
                
                //右下鬍鬚
                Path{(path) in
                    path.move(to: CGPoint(x:315, y:310))
                    path.addLine(to: CGPoint(x:405, y:330))
                }
                //.stroke(Color.black, lineWidth: 3)
                .stroke(Color.green, style: StrokeStyle(lineWidth: 7, lineCap: .round, dash: [10]))
                
                //左眼
                Path(ellipseIn: CGRect(x:130, y:290, width: 30, height: 40))
                    .fill(Color.black)
                
                //右眼
                Path(ellipseIn: CGRect(x:255, y:290, width: 30, height: 40))
                    .fill(Color.black)
                
                //鼻子
                Path(ellipseIn: CGRect(x:190, y:330, width: 40, height: 30))
                    .fill(Color.yellow)
            }
            
            StarView(positionX: 180, positionY: 550, rotationDegrees: 2, width: 40)
            StarView(positionX: 180, positionY: 550, rotationDegrees: -85, width: 40)
            StarView(positionX: 250, positionY: 480, rotationDegrees: 2, width: 40)
            StarView(positionX: 250, positionY: 480, rotationDegrees: -85, width: 40)
            
            Text("彼得潘本人真是帥")
                .font(.largeTitle)
                .padding()
                .background(Color.purple)
                .cornerRadius(50)
                .offset(x:0,y:-365)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StarView: View {
    
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    var rotationDegrees: Double = 0
    var width: CGFloat
    
    var body: some View {
        Star()
            .fill(Color(red: 0, green: 1, blue: 0))
            .frame(width: width, height: width * 5 / 4)
            .rotationEffect(.degrees(rotationDegrees))
            .position(x: positionX, y:positionY)
            .shadow(radius: 15)
    }
}
