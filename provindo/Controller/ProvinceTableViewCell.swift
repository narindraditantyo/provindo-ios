
import UIKit

class ProvinceTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgThumbnail: UIImageView!
    @IBOutlet weak var txtProvince: UILabel!
    @IBOutlet weak var txtCapital: UILabel!
    @IBOutlet weak var txtArea: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
