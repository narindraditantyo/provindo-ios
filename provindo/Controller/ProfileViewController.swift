
import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var imgProfile: UIImageView!
    @IBOutlet weak var txtName: UILabel!
    @IBOutlet weak var txtEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
        
        txtName.text = "Gregorius Agung Narindra Aditantyo"
        txtEmail.text = "narindra.aditantyo@gmail.com"
        imgProfile.image = UIImage(named: "profile_photo")
        
        imgProfile.layer.cornerRadius = 8
        imgProfile.clipsToBounds = true
    }

}
