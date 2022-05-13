//
//  RankingViewController.swift
//  barabaragame
//
//  Created by SayukiYamada on 2022/05/13.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var rankingLabel1: UILabel! //1位のスコアを表示するラベル
    @IBOutlet var rankingLabel2: UILabel! //2位のスコアを表示するラベル
    @IBOutlet var rankingLabel3: UILabel! //3位のスコアを表示するラベル

    let defaults: UserDefaults = UserDefaults.standard //スコアの保存をするための変数
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //score１というキーの値を取得して表示
        rankingLabel1.text = String(defaults.integer(forKey: "score1"))
        //score2というキーの値を取得して表示
        rankingLabel2.text = String(defaults.integer(forKey: "score2"))
        //score3というキーの値を取得して表示
        rankingLabel3.text = String(defaults.integer(forKey: "score3"))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toTop(){
        self.dismiss(animated: true,completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
