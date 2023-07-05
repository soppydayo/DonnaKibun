//
//  ViewController.swift
//  DonnaKibun
//
//  Created by 白川創大 on 2023/07/04.
//

import UIKit

class ViewController: UIViewController {
    
    // 似顔絵を選択したかどうかのフラグ
    var isAvatarSelected = false
    
    @IBOutlet var happyButton: UIButton!
    @IBOutlet var goodButton: UIButton!
    @IBOutlet var averageButton: UIButton!
    @IBOutlet var poorButton: UIButton!
    @IBOutlet var badButton: UIButton!
    
    @IBOutlet var saveButton: UIButton!
    @IBOutlet var leaveButton: UIButton!
    @IBOutlet var discardButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        saveButton.layer.cornerRadius = 10
        leaveButton.layer.cornerRadius = 10
        
        // Do any additional setup after loading the view.
        
        // ボタンの初期状態を設定する
        saveButton.isEnabled = false
        leaveButton.isEnabled = false
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 1日2回の遷移チェックを行う
        checkDailyTransition()
    }
    
    // 似顔絵ボタンがタップされた時の処理
    @IBAction func happyButtonTapped(_ sender: UIButton) {
        // 似顔絵が選択されたことを示すフラグを立てる
        isAvatarSelected = true
        
        // 選択された似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        happyButton.tintColor = .yellow
        
        // 選択外の似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        goodButton.tintColor = .systemBlue
        averageButton.tintColor = .systemBlue
        poorButton.tintColor = .systemBlue
        badButton.tintColor = .systemBlue
        
        // ボタンの有効/無効状態を更新する
        updateButtonState()
    }
    
    @IBAction func goodButtonTapped(_ sender: UIButton) {
        // 似顔絵が選択されたことを示すフラグを立てる
        isAvatarSelected = true
        
        // 選択された似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        goodButton.tintColor = .yellow
        
        // 選択外の似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        happyButton.tintColor = .systemBlue
        averageButton.tintColor = .systemBlue
        poorButton.tintColor = .systemBlue
        badButton.tintColor = .systemBlue
        
        // ボタンの有効/無効状態を更新する
        updateButtonState()
    }
    @IBAction func avarageButtonTapped(_ sender: UIButton) {
        // 似顔絵が選択されたことを示すフラグを立てる
        isAvatarSelected = true
        
        // 選択された似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        averageButton.tintColor = .yellow
        
        // 選択外の似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        happyButton.tintColor = .systemBlue
        goodButton.tintColor = .systemBlue
        poorButton.tintColor = .systemBlue
        badButton.tintColor = .systemBlue
        
        // ボタンの有効/無効状態を更新する
        updateButtonState()
    }
    
    @IBAction func poorButtonTapped(_ sender: UIButton) {
        // 似顔絵が選択されたことを示すフラグを立てる
        isAvatarSelected = true
        
        // 選択された似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        poorButton.tintColor = .yellow
        
        // 選択外の似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        happyButton.tintColor = .systemBlue
        goodButton.tintColor = .systemBlue
        averageButton.tintColor = .systemBlue
        badButton.tintColor = .systemBlue
        
        // ボタンの有効/無効状態を更新する
        updateButtonState()
    }
    
    @IBAction func badButtonTapped(_ sender: UIButton) {
        // 似顔絵が選択されたことを示すフラグを立てる
        isAvatarSelected = true
        
        // 選択された似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        badButton.tintColor = .yellow
        
        // 選択外の似顔絵ボタンのティントカラーを変更するなど、選択したことが分かるようにする処理を追加する
        happyButton.tintColor = .systemBlue
        goodButton.tintColor = .systemBlue
        averageButton.tintColor = .systemBlue
        poorButton.tintColor = .systemBlue
        
        // ボタンの有効/無効状態を更新する
        updateButtonState()
    }
    // 保存ボタンがタップされた時の処理
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        // 保存処理を実行する
        
        // 保存完了のメッセージを表示するなど、適切なフィードバック処理を追加する
        
        // ボタンの有効/無効状態を更新する
        updateButtonState()
    }
    
    // 退席ボタンがタップされた時の処理
    @IBAction func leaveButtonTapped(_ sender: UIButton) {
        // 退席処理を実行する
        
        
    }
    
    // 破棄ボタンがタップされた時の処理
    @IBAction func discardButtonTapped(_ sender: UIButton) {
        // 似顔絵選択を破棄する処理を実行する
        
        // 破棄確認のアラートを表示する
        showDiscardConfirmationAlert()
    }
    
    // ボタンの有効/無効状態を更新する
    func updateButtonState() {
        // 似顔絵が選択されている場合
        if isAvatarSelected {
            saveButton.isEnabled = true
            leaveButton.isEnabled = true
        } else {
            saveButton.isEnabled = false
            leaveButton.isEnabled = false
            
        }
    }
    
    // 退席確認のアラートを表示する
    func showDiscardConfirmationAlert() {
        
        
        // 破棄確認のアラートを表示する
        let alertController = UIAlertController(title: "気分が登録されていません", message: "本当に画面を閉じますか？", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: nil)
        let leaveAction = UIAlertAction(title: "閉じる", style: .destructive) { (_) in
            // 退席処理を実行する
            
            // 画面を閉じるなど、適切な処理を追加する
        }
        
        alertController.addAction(cancelAction)
        alertController.addAction(leaveAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    // ホーム画面への遷移処理
    func navigateToHomeScreen() {
        // ホーム画面への遷移コードを記述する
        // 例: let homeViewController = HomeViewController()
        //     navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    func checkDailyTransition() {
        let calendar = Calendar.current
        let now = Date()
        let components = calendar.dateComponents([.hour], from: now)
        
        if let hour = components.hour {
            // 午前中に遷移
            if hour >= 6 && hour < 12 {
                navigateToHomeScreen()
            }
            
            // 午後に遷移
            if hour >= 12 && hour < 18 {
                navigateToHomeScreen()
            }
        }
    }
}


