import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    private let service = UserService()
    private var userData: User?
    
    @IBInspectable private var email: String? {
        get {
            return userNameTextField.text
        }
        set {
            userNameTextField.text = newValue
        }
    }
    
    @IBInspectable private var password: String? {
        get {
            return passwordTextField.text
        }
        set {
            passwordTextField.text = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        
    }
    
    //MARK:- Button Actions
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        openHomeScreen()
//        let requestData = LoginRequest.BodyData(email: email ?? "", password: password ?? "")
//        let request = LoginRequest(bodyData: requestData)
//
//        service.login(request: request) {[weak self] (user) in
//            self?.userData = user
//            self?.openHomeScreen()
//        } onFailure: {[weak self] (error) in
//            self?.showErrorMessage(error: error)
//        }
    }
    
    @IBAction func forgotPasswordBtnTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func signupButtonTapped(_ sender: UIButton) {
        openSignupScreen()
    }
    
    //MARK: - Helper Methods
    private func openHomeScreen() {
        navigationController?.pushViewController(HomeVC.instantiate(), animated: true)
    }
    
    private func showErrorMessage(error: String) {
        
    }
    
    private func openSignupScreen() {
        navigationController?.pushViewController(SignupVC.instantiate(), animated: true)
    }
    
}

