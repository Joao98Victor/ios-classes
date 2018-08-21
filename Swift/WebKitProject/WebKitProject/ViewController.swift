import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var meuWebKit: WKWebView!
    @IBOutlet weak var meuActivity: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuWebKit.navigationDelegate = self
        meuActivity.startAnimating()
        
        let url = URL(string:"https://www.vive.com/us")
        let request = URLRequest(url:url!)
        meuWebKit.load(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        meuActivity.stopAnimating()
        meuActivity.isHidden = true
    }
    
}

