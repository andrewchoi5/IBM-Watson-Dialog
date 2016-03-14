

import Foundation
import UIKit
import AVFoundation
//
//extension UIView {
//    func fadeTransition(duration:CFTimeInterval) {
//        let animation:CATransition = CATransition()
//        animation.timingFunction = CAMediaTimingFunction(name:
//            kCAMediaTimingFunctionEaseInEaseOut)
//        animation.type = kCATransitionFade
//        animation.duration = duration
//        self.layer.addAnimation(animation, forKey: kCATransitionFade)
//    }
//}

class SecondViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var siriImageView: UIImageView!
    
    
    @IBOutlet var hello: UILabel!
    @IBOutlet var watson2: UILabel!
    @IBOutlet var watson3: UILabel!
    @IBOutlet var watson4: UILabel!
    @IBOutlet var watson5: UILabel!
    @IBOutlet var watson6: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blackColor()
        
        hello.hidden = true
        watson2.hidden = true
        watson3.hidden = true
        watson4.hidden = true
        watson5.hidden = true
        watson6.hidden = true
        
        var imagesNames: [String] = []
        for i in 1...84 {
            imagesNames.append("logo-"+String(i)+" (dragged).png")
        }
        var images = [UIImage]()
        for i in 0..<imagesNames.count{
            images.append(UIImage(named: imagesNames[i])!)
        }
        imageView.animationImages = images
        imageView.animationDuration = 6.2
        imageView.startAnimating()
        
        
        
//        var siriImagesNames: [String] = []
//        for i in 1...203 {
//            siriImagesNames.append("voice-"+String(i)+" (dragged).tiff")
//        }
//        var siriImages = [UIImage]()
//        for i in 0..<siriImagesNames.count{
//            siriImages.append(UIImage(named: siriImagesNames[i])!)
//        }s
//        siriImageView.animationImages = siriImages
//        siriImageView.animationDuration = 6.2
//        siriImageView.startAnimating()
        
        
        
        
        watsonSpeak()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func watsonSpeak(){
        let s1 = "Good Afternoon Andrew, How may I help you today"
        let s2 = "Are you a student? I'll have to see if you're eligible for an SPC Card."
        let s3 = "Okay. Are you looking for a card with yearly fee or no fee"
        let s4 = "Do you need travel points"
        let s5 = "Is there a particular brand you’re looking for"
        let s6 = "Excellent, here are the best options I’ve found."
//        let s = "안녕하세요? 제 이름은 최유진이고, 새해 신입인턴으로 입사하게된 아이오에스안드로이드 개발자입니다. " +
//        "이번계기로 이 어플을 만드는데 참여를 하게 되어서, 영광이라고 생각합니다. " + "야 이, 게이같은, 씨발놈아, 너는 나한테 몇대를 맞아야 정신차릴래 "
        let utterance1 = AVSpeechUtterance(string: s1)
        let utterance2 = AVSpeechUtterance(string: s2)
        let utterance3 = AVSpeechUtterance(string: s3)
        let utterance4 = AVSpeechUtterance(string: s4)
        let utterance5 = AVSpeechUtterance(string: s5)
        let utterance6 = AVSpeechUtterance(string: s6)
//        let utterance7 = AVSpeechUtterance(string: s7)
        utterance1.voice = AVSpeechSynthesisVoice(language: "en-US") //ko-KR, en-US
        utterance2.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance3.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance4.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance5.voice = AVSpeechSynthesisVoice(language: "en-US")
        utterance6.voice = AVSpeechSynthesisVoice(language: "en-US")
//        utterance7.voice = AVSpeechSynthesisVoice(language: "en-US")
//        utterance1.preUtteranceDelay = 3
        
//        utterance1.postUtteranceDelay = 2
//        utterance2.postUtteranceDelay = 2
//        utterance3.postUtteranceDelay = 2
//        utterance4.postUtteranceDelay = 2
//        utterance5.postUtteranceDelay = 2
//        utterance6.postUtteranceDelay = 2

        utterance1.pitchMultiplier = 1.3
        utterance2.pitchMultiplier = 1.3
        utterance3.pitchMultiplier = 1.3
        utterance4.pitchMultiplier = 1.3
        utterance5.pitchMultiplier = 1.3
        utterance6.pitchMultiplier = 1.3
//        utterance7.pitchMultiplier = 1.3
        
        let synthesizer = AVSpeechSynthesizer()
        let d:Double = 6.0
        let s:CGFloat = 17
        
        
       
        delay(0.1){
            
            self.hello.text = ""
//            self.hello.font = UIFont(name: hello., size: 20)
            //Apple SD Gothic Neo Regular 17.0
            self.hello.hidden = false
            self.hello.fadeOut(completion: {
                (finished: Bool) -> Void in
                self.hello.text = "Good afternoon Andrew, how may I help you today?"
                self.hello.font = UIFont(name: "Apple SD Gothic Neo", size: s)
                self.hello.fadeIn()
                synthesizer.speakUtterance(utterance1)
            })        
            delay(d) {
               
                self.watson2.text = ""
                self.watson2.hidden = false
                self.watson2.fadeOut(completion: {
                    (finished: Bool) -> Void in
                    self.watson2.text = "Are you a student? I'll have to see if you're eligible for an SPC Card."
                    self.watson2.font = UIFont(name: "Apple SD Gothic Neo", size: s)
                    self.watson2.fadeIn()
                    synthesizer.speakUtterance(utterance2)
                })
                delay(d) {
                   
                    self.watson3.text = ""
                    self.watson3.hidden = false
                    self.watson3.fadeOut(completion: {
                        (finished: Bool) -> Void in
                        self.watson3.text = "Okay. Are you looking for a card with yearly fee or no fee?"
                        self.watson3.font = UIFont(name: "Apple SD Gothic Neo", size: s)
                        self.watson3.fadeIn()
                        synthesizer.speakUtterance(utterance3)
                    })
                    delay(d) {
                       
                        self.watson4.text = ""
                        self.watson4.hidden = false
                        self.watson4.fadeOut(completion: {
                            (finished: Bool) -> Void in
                            self.watson4.text = "I see, will you require some travel points?"
                            self.watson4.font = UIFont(name: "Apple SD Gothic Neo", size: s)
                            self.watson4.fadeIn()
                            synthesizer.speakUtterance(utterance4)
                            
                        })
                        delay(d) {
                            self.watson5.text = ""
                            self.watson5.hidden = false
                            self.watson5.fadeOut(completion: {
                                (finished: Bool) -> Void in
                                self.watson5.text = "Is there a particular brand that you are looking for?"
                                self.watson5.font = UIFont(name: "Apple SD Gothic Neo", size: s)
                                self.watson5.fadeIn()
                                synthesizer.speakUtterance(utterance5)
                            })
                            delay(d) {
                                self.watson6.text = ""
                                self.watson6.hidden = false
                                self.watson6.fadeOut(completion: {
                                    (finished: Bool) -> Void in
                                    self.watson6.text = "Excellent, here are the best options I’ve found."
                                    self.watson6.font = UIFont(name: "Apple SD Gothic Neo", size: s)
                                    self.watson6.fadeIn()
                                    synthesizer.speakUtterance(utterance6)
                                })
                            }
                        }
                    }
                }
            }
        }
//        synthesizer.speakUtterance(utterance6)
//        synthesizer.speakUtterance(utterance7)
    }
    
}






// MARK: Utility functions

func delay(delay: Double, closure: ()->()) {
    
    // A handy bit of code created by Matt Neuburg, author of a lot of books including
    // iOS Programming Fundamentals with Swift (O'Reilly 2015).
    // See his reply in Stack Overflow for details:
    // http://stackoverflow.com/questions/24034544/dispatch-after-gcd-in-swift/24318861#24318861
    //
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


