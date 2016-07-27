import Foundation
import UIKit
import AVFoundation
import TextToSpeechV1
import SpeechToTextV1
//import NaturalLanguageClassifierV1
import LTMorphingLabel

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = UIColor.blackColor()
        var imagesNames: [String] = []
        for i in 1...84 {
               imagesNames.append("logo-"+String(i)+" (dragged).png")
        }
        var images = [UIImage]()

        for i in 0..<imagesNames.count{
            
            images.append(UIImage(named: imagesNames[i])!)
        }

        imageView.animationImages = images
        imageView.animationDuration = 6.199
        imageView.startAnimating()
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




