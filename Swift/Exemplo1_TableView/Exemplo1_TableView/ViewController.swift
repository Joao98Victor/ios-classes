import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var minhaTabela: UITableView!
    
    let animal = ["Girafa","Rinoceronte","Leão", "Urso", "Elefante"]
    let fotos = ["girafa.png","rino.png","leao.png","urso.png","ele.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        celula.textLabel?.text = animal[indexPath.row]
        celula.imageView?.image = UIImage(named: fotos[indexPath.row])
        return celula
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let roda = UIImageView(image:UIImage(named: "rodape.png"))
        return roda
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cabec = UIImageView(image:UIImage(named: "cabecalho.png"))
        return cabec
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let msg = "Você clicou no animal \(animal[indexPath.row])"
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertControllerStyle.alert
        )
        
        alerta.addAction(UIAlertAction(
            title: "Ok",
            style: UIAlertActionStyle.default,
            handler: {
                (action) in tableView.deselectRow(at: indexPath, animated: true)
        }))
        
        present(alerta, animated: true, completion: nil)
    }
}

