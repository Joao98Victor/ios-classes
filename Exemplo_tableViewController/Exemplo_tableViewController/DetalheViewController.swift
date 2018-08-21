import UIKit

class DetalheViewController: UIViewController {

    
    @IBOutlet weak var lblNomeAnimal: UILabel!
    @IBOutlet weak var lblPaisAnimal: UILabel!
    @IBOutlet weak var ImagemAnimal: UIImageView!
    
    var nomeAnimal:String = ""
    var paisAnimal:String = ""
    var image:UIImage? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNomeAnimal.text = nomeAnimal
        lblPaisAnimal.text = paisAnimal
        ImagemAnimal.image = imagem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
