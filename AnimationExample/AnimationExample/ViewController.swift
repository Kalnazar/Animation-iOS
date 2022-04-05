import UIKit

class ViewController: UIViewController {

    @IBOutlet var targetImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func animatePressed(_ sender: UIButton) {
        switch sender.tag{
        case 0:
            UIView.animate(withDuration: 1){
                self.targetImage.alpha = 0
            }
        case 1:
            UIView.animate(withDuration: 1){
                self.targetImage.alpha = 1
            }
        case 2:
            UIView.animate(withDuration: 1){
                self.targetImage.center = CGPoint(x: self.view.bounds.width, y: 0)
            }
        case 3:
            UIView.animate(withDuration: 1){
                self.targetImage.center = CGPoint(x: self.view.bounds.width/2, y: self.view.bounds.height/2)
            }
        case 4:
            UIView.animate(withDuration: 1){
                self.targetImage.transform = CGAffineTransform(scaleX: 2, y: 2)
            }
        case 5:
            UIView.animate(withDuration: 1){
                self.targetImage.transform = CGAffineTransform(scaleX: 1, y: 1)
            }
        default:
            break
        }
    }
}

