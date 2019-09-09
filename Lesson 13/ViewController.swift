import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var firstPersonImage: UIImageView!
    @IBOutlet weak var secondPersonImage: UIImageView!
    @IBOutlet weak var thirdPersonImage: UIImageView!
    @IBOutlet weak var fourthPersonImage: UIImageView!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var thirdNameLabel: UILabel!
    @IBOutlet weak var fourthNameLabel: UILabel!
    @IBOutlet weak var mainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.customizeUserView()
    }
    
    
    @IBAction func mainButtonPressed(_ sender: UIButton) {
        let nextPerson = UserManager.shared.usersArray[UserManager.shared.checkIndex()]
        self.fourthPersonImage.image = self.thirdPersonImage.image
        self.thirdPersonImage.image = self.secondPersonImage.image
        self.secondPersonImage.image = self.firstPersonImage.image
        self.firstPersonImage.image = nextPerson.photo
        
        self.fourthNameLabel.text = self.thirdNameLabel.text
        self.thirdNameLabel.text = self.secondNameLabel.text
        self.secondNameLabel.text = self.firstNameLabel.text
        self.firstNameLabel.text = nextPerson.name
    }
    
    func customizeUserView(){
        let cornerRadius = self.firstPersonImage.frame.width/2
        self.firstPersonImage.layer.cornerRadius = cornerRadius
        self.secondPersonImage.layer.cornerRadius = cornerRadius
        self.thirdPersonImage.layer.cornerRadius = cornerRadius
        self.fourthPersonImage.layer.cornerRadius = cornerRadius
        self.firstPersonImage.contentMode = .scaleAspectFill
        self.firstPersonImage.clipsToBounds = true
        self.secondPersonImage.contentMode = .scaleAspectFill
        self.secondPersonImage.clipsToBounds = true
        self.thirdPersonImage.contentMode = .scaleAspectFill
        self.thirdPersonImage.clipsToBounds = true
        self.fourthPersonImage.contentMode = .scaleAspectFill
        self.fourthPersonImage.clipsToBounds = true
    }
    
}
