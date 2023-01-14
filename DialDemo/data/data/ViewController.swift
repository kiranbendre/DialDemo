//
//  ViewController.swift
//  data
//
//  Created by Iphone XR on 06/01/23.
//

import UIKit
import MSCircularSlider
import JOCircularSlider
class ViewController: UIViewController, MSCircularSliderProtocol {
    
    
   
    let myNewView = UIView()
    let circularView = UIView()
    var knobSlider = MSCircularSlider()
    var circularSlider = CircularSlider()
    let valueLabel = UILabel()
    var currentValue = 0
    var currentRevolutions = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 33.0/255, green: 40.0/255, blue: 64.0/255, alpha: 1.0)
        
        
        MYView()
       // LabelUI()
       
    }
    
    @objc func circularsliderValueDidChange (_ sender: CircularSlider){
        print("circularslider value changed")
        print(circularSlider.value)
        //circularSlider.value = sender.value
        self.valueLabel.text = "\(sender.value) %"

    }
   func MYView(){
        myNewView.frame = CGRect(x: 45, y: 220, width: 300, height: 300)
        myNewView.backgroundColor = .black
        myNewView.layer.cornerRadius = 5
        myNewView.layer.masksToBounds = true
        myNewView.layer.cornerRadius = self.myNewView.bounds.height / 2
        self.view.addSubview(myNewView)
       
        
        LabelUI()
//       outerSlider()
       Circle()
    }
        func Circle(){
            circularView.backgroundColor = UIColor(red: 63.0/255, green: 70.0/255, blue: 100.0/255, alpha: 1.0)
            circularView.frame = CGRect(x: 90, y: 270, width: 200, height: 200)
            circularView.layer.cornerRadius = 5
            circularView.layer.masksToBounds = true
            circularView.layer.cornerRadius = circularView.bounds.height/2
            self.view.addSubview(circularView)
          
            outerSlider()
            KnobUI()
        }
            func KnobUI(){
//                knobSlider = MSCircularSlider()
                knobSlider.frame = CGRect(x: view.center.x - 80, y: view.center.y - 130, width: 150, height:150)
                knobSlider.currentValue = 100
                knobSlider.maximumAngle = 240
                knobSlider.lineWidth = 12
                knobSlider.clipsToBounds = true
                knobSlider.filledLineCap = .round
                knobSlider.filledColor = .clear
                knobSlider.unfilledColor = .clear
                knobSlider.slidingDirection = .none
                knobSlider.handleRotatable = true
                knobSlider.handleEnlargementPoints = 15
                knobSlider.isHidden = false
                knobSlider.backgroundColor = .clear
                knobSlider.handleColor = .red
                knobSlider.delegate = self
                knobSlider.addTarget(self, action: #selector(knobsliderValueDidChange), for:.valueChanged)
                view.addSubview(knobSlider)
                }
    
            @objc func knobsliderValueDidChange(_ sender: MSCircularSlider!){
                //print("Knobslider value changed")
                //print(knobSlider.currentValue)
               //self.valueLabel.text = "\(sender.currentValue) %"

               }
    func outerSlider(){
        circularSlider.frame = CGRect(x: view.center.x - 120, y: view.center.y - 170, width: 230, height:230)
        circularSlider.startAngle = 160
        circularSlider.endAngle = 50
        circularSlider.minimumValue = 0
        circularSlider.maximumValue = 100
        circularSlider.setLabelText(" 0 %")
        circularSlider.minidotColor = .clear
        circularSlider.maxidotMaxColor = .clear
        circularSlider.maxidotOffColor = .clear
        circularSlider.maxidotOnColor = .clear
        circularSlider.minidotHighlightColor = .clear
        circularSlider.pointerColor1 = .clear
        circularSlider.pointerColor2 = .clear
        circularSlider.highlightColor = .clear
        circularSlider.color1 = .clear
        circularSlider.color2 =  .clear
        circularSlider.color3 = .clear
        circularSlider.color4 = .clear
        circularSlider.backgroundColor = .clear
        circularSlider.pointerDistanceFromInnerCircleEdge = -30
        circularSlider.pointerSizeMultiplier = 0.40
        circularSlider.isClockwise = true
        circularSlider.addTarget(self, action: #selector(circularsliderValueDidChange), for:.valueChanged)
        view.addSubview(circularSlider)
        //valueLabel
    }
        
        func LabelUI(){
            valueLabel.text = "0"
            valueLabel.textColor = .white
            valueLabel.numberOfLines = 0
            valueLabel.textAlignment = .center
            valueLabel.sizeToFit()
            valueLabel.backgroundColor = UIColor.clear
            valueLabel.frame = CGRect(x: 160, y: 330, width: 60, height: 60)
            self.view.addSubview(valueLabel)
            KnobUI()
            }
    
    }











//    func superview(){
//        slider = MSCircularSlider()
//        slider.frame = CGRect(x: view.center.x - 120, y: view.center.y - 170, width: 230, height:230)
//        slider.currentValue = 60
//        slider.maximumAngle = 300.0
//        slider.lineWidth = 10
//
//        //slider.minimumValue = 0
//        //slider.maximumValue = 100
//        slider.filledColor = .systemMint
//        slider.unfilledColor = .clear
//        slider.handleType = .mediumCircle
//
//        //slider.delegate = self
//        //slider.handleColor = UIColor(red: 35 / 255.0, green: 69 / 255.0, blue: 96 / 255.0, alpha: 1.0)
//        slider.addTarget(self, action: #selector(sliderValueDidChange), for:.valueChanged)
//        view.addSubview(slider)
//
//    }
//    @objc func sliderValueDidChange(_ sender: MSCircularSlider!){
//        print("Slider value changed")
// circularSlider.pointerDistanceFromInnerCircleEdge = -30
//circularSlider.pointerSizeMultiplier = 0.40
//    }
