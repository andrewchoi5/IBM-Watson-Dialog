import Foundation
import UIKit
import AVFoundation
import WatsonDeveloperCloud
import LTMorphingLabel
import SwiftSiriWaveformView
class SecondViewController: UIViewController {
    var timer:NSTimer?
    var change:CGFloat = 0.01
    
    var player: AVAudioPlayer?
    
    let s:CGFloat = 18
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var hello: LTMorphingLabel!
    @IBOutlet var audioView: SwiftSiriWaveformView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.audioView.density = 1.0
        self.view.backgroundColor = UIColor.blackColor()
//        audioView.amplitude = 0.2
        self.hello.text = " "
        self.hello.morphingEffect = .Evaporate
        self.hello.hidden = false
//        self.hello.font = hello.font.fontWithSize(50)
        self.hello.font = UIFont(name: "Optima", size: s) //Apple SD Gothic Neo
        
        var imagesNames: [String] = []
        for i in 1...84 {
            imagesNames.append("logo-"+String(i)+" (dragged).png")
        }
        var images = [UIImage]()
        for i in 0..<imagesNames.count{
            images.append(UIImage(named: imagesNames[i])!)
        }
        imageView.animationImages = images
        imageView.animationDuration = 4.8
        imageView.startAnimating()
        watsonSpeak()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    internal func watsonSpeak(){
        let tts = TextToSpeech(username: "94e76655-04d0-4f25-9498-3708b3de514a", password: "KrQzpIRpuoyD") //IBM Bluemix service
        let s1 = "Good afternoon there! How may I help you today?"
        let s2 = "I can help reduce your monthly interest payments. Would you like to do so?"
        let s3 = "Your line of credit with lower interest rate has some room on it, we can transfer $1700 of debt from your credit card to it, thus reducing your monthly payments by $23."
        let s4 = "Done! How else can I help you today?"
        let s5 = "Would you like it to have airmiles, rewards, cashback or anything?"
        let s6 = "Okay, let’s see what I can find for you."
        let utterance1 = AVSpeechUtterance(string: s1)
//        let utterance7 = AVSpeechUtterance(string: s7)
        utterance1.voice = AVSpeechSynthesisVoice(language: "en-US") //ko-KR, en-US
//        utterance7.voice = AVSpeechSynthesisVoice(language: "en-US")
//        utterance1.preUtteranceDelay = 3
//        utterance1.postUtteranceDelay = 2
//        let waveformjs = waveform.stringByEvaluatingJavaScriptFromString("mainFunction.js")
        _ = NSHomeDirectory()
        utterance1.pitchMultiplier = 1.3
        
        _ = AVSpeechSynthesizer()
//        let d:Double = 2.0
        
        delay(3.0){ //1st
              self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "zeroAudioView:", userInfo: nil, repeats: true)

            
                self.hello.text = s1
//                self.hello.font = UIFont(name: "Apple SD Gothic Neo", size: self.s)
                self.hello.fadeIn()
                
                tts.synthesize(s1) { //GB_Kate //US_Allison //US_Lisa
                    data, error in
                    if let audio = data {
                        do {
                            self.player = try AVAudioPlayer(data: audio)
                            self.player!.play()
                        } catch {
                            print("Couldn't create player.")
                        }
                    }
                }
            delay(3.0){ // 1.5st
                self.timer?.invalidate()
//                self.timer = nil
                self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "refreshAudioView:", userInfo: nil, repeats: true)
                delay(6.0) { //2nd
                    self.timer?.invalidate()
//                    self.timer = nil
//                    self.audioView.amplitude = 0.0
                    self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "zeroAudioView:", userInfo: nil, repeats: true)
                        self.hello.text = s2
                        tts.synthesize("I can help reduce your monthly interest payments. Would you like to do so?") {
                            data, error in
                            if let audio = data {
                                do {
                                    self.player = try AVAudioPlayer(data: audio)
                                    self.player!.play()
                                } catch {
                                    print("Couldn't create player.")
                                }
                            }
                        }
                    delay(4.0){ //2.5nd delay
                        self.timer?.invalidate()
//                        self.timer = nil
                        self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "refreshAudioView:", userInfo: nil, repeats: true)
                        delay(5.0) { //3rd
                            self.timer?.invalidate()
//                            self.timer = nil
                            self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "zeroAudioView:", userInfo: nil, repeats: true)
                                self.hello.text = s3
                                tts.synthesize(s3) {//en-US_AllisonVoice
                                    data, error in
                                    if let audio = data {
                                        do {
                                            self.player = try AVAudioPlayer(data: audio)
                                            self.player!.play()
                                        } catch {
                                            print("Couldn't create player.")
                                        }
                                    }
                                }
                            delay(11.0){//3.5rd delay
                                self.timer?.invalidate()
//                                self.timer = nil
                                self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "refreshAudioView:", userInfo: nil, repeats: true)
                                delay(5.0) { //4th
                                    self.timer?.invalidate()
                                    self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "zeroAudioView:", userInfo: nil, repeats: true)
                                    self.hello.text = s4
                                    tts.synthesize(s4) {//en-US_AllisonVoice
                                        data, error in
                                        if let audio = data {
                                            do {
                                                self.player = try AVAudioPlayer(data: audio)
                                                self.player!.play()
                                            } catch {
                                                print("Couldn't create player.")
                                            }
                                        }
                                    }
                                    delay(3.0){//4.5th
                                        self.timer?.invalidate()
//                                        self.timer = nil
                                        self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "refreshAudioView:", userInfo: nil, repeats: true)
                                        delay(5.0) { //5th
                                            self.timer?.invalidate()
                                            self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "zeroAudioView:", userInfo: nil, repeats: true)
                                            self.hello.text = s5
                                            tts.synthesize(s5) {//en-US_AllisonVoice
                                                data, error in
                                                if let audio = data {
                                                    do {
                                                        self.player = try AVAudioPlayer(data: audio)
                                                        self.player!.play()
                                                    } catch {
                                                        print("Couldn't create player.")
                                                    }
                                                }
                                            }
                                            delay(5.0){//5.5th
                                                self.timer?.invalidate()
                                                self.timer = nil
                                                self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "refreshAudioView:", userInfo: nil, repeats: true)
                                                delay(5.0) { //6th
                                                    self.timer?.invalidate()
                                                    self.timer = NSTimer.scheduledTimerWithTimeInterval(0.009, target: self, selector: "zeroAudioView:", userInfo: nil, repeats: true)
                                                    self.hello.text = s6
                                                    tts.synthesize(s6) {//en-US_AllisonVoice
                                                        data, error in
                                                        if let audio = data {
                                                            do {
                                                                self.player = try AVAudioPlayer(data: audio)
                                                                self.player!.play()
                                                            } catch {
                                                                print("Couldn't create player.")
                                                            }
                                                        }
                                                    }
                                                }//last delay 6th
                                            }//5.5th delay
                                        }// 5th delay
                                    }//4.5th delay
                                }// 4th delay
                            }//3.5rd delay
                        }// 3rd delay
                    }//2.5nd delay
                }// 2nd delay
            }//1.5st delay
        }//1st delay
    }// internal func watsonSpeak
    
    internal func refreshAudioView(_:NSTimer) {
        self.audioView.amplitude = 0.2//comment it out?
        if self.audioView.amplitude <= self.audioView.idleAmplitude || self.audioView.amplitude > 1.0 {
            self.change *= -1.0
        }
        
        // Simply set the amplitude to whatever you need and the view will update itself.
        self.audioView.amplitude += self.change
    }
    internal func zeroAudioView(_:NSTimer) {
        //        self.audioView.amplitude = 1.0//comment it out?
        if self.audioView.amplitude <= self.audioView.idleAmplitude || self.audioView.amplitude > 1.0 {
            self.change *= -1.0
        }
        
        // Simply set the amplitude to whatever you need and the view will update itself.
        self.audioView.amplitude = 0.0
    }
}
// MARK: Utility functions
func delay(delay: Double, closure: ()->()) {
    // A handy bit of code created by Matt Neuburg, author of a lot of books including
    // iOS Programming Fundamentals with Swift (O'Reilly 2015).
    // See his reply in Stack Overflow for details:
    // http://stackoverflow.com/questions/24034544/dispatch-after-gcd-in-swift/24318861#24318861
    // The secret sauce is Grand Central Dispatch's (GCD) dispatch_after() function.
    // Ray Wenderlich has a good tutorial on GCD at:
    // http://www.raywenderlich.com/79149/grand-central-dispatch-tutorial-swift-part-1
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(),
        closure
    )
}
func randomIntUpToButNotIncluding(count: Int) -> Int {
    return Int(arc4random_uniform(UInt32(count)))
}


