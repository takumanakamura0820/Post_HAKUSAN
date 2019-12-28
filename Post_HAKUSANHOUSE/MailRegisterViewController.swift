//
//  MailRegisterViewController.swift
//  PostApp_HAKUSANHOUSE
//
//  Created by 青山奈津美 on 2019/10/21.
//  Copyright © 2019 natsumiii.net. All rights reserved.
//
import UIKit
class MailRegisterViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource,UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource{
    
    
    var foldingFlg1 = false
    var foldingFlg2 = false
    var foldingFlg3 = false    //部品の接続
    @IBOutlet var roomPickerView:UIPickerView? = UIPickerView()
    @IBOutlet var namePickerView:UIPickerView! = UIPickerView()
    @IBOutlet var luggageNumberTextField: UITextField! = UITextField()
    //追加＆接続
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    //部屋番号リスト
    var roomNumberList2: NSMutableArray = ["201","202","203","204","205","206","207","208","209","210"]
    var roomNumberList3: NSMutableArray = ["301","302","303","304","305","306","307","308","309","310"]
    var roomNumberList4: NSMutableArray = ["401","402","403","404","405","406","407","408","409","410"]
    var roomNumberList5 = ["501","502","503","504","505","506","507","508","509","510"]
    var roomNumberList6 = ["601","602","603","604","605","606","607","608","609","610"]
    var roomNumberList7 = ["701","702","703","704","705","706","707","708","709","710"]
    var roomNumberList8 = ["801","802","803","804","805","806","807","808","809","810"]
    
    var roomNameList = ["A:Natsumi Aoyama","B:Ryutaro Suda","C:Yuki Mori","D:Shuntaro Yanagida"]
    
    var floorNumber = 0
    var roomNumber = 0
    var selectedRoomNumber = ""
    
    var laggageNumber : String = ""
    var laggageType : String = ""
    var storedAt : String = ""
//    var roomNumber : String = ""
    var roomName : String = ""
    //追加
    var section1: Dictionary = [String:NSMutableArray]()
    var section2: Dictionary = [String:NSMutableArray]()
    var section3: Dictionary = [String:NSMutableArray]()
    var sections: Array = [Dictionary<String,NSMutableArray>]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Delegate設定
        roomPickerView?.delegate = self
        roomPickerView?.dataSource = self
        roomPickerView?.tag = 1
        namePickerView.delegate = self
        namePickerView.dataSource = self
        namePickerView.tag = 2

        luggageNumberTextField.delegate = self
        
        
        section1 = ["2F":roomNumberList2]
        section2 = ["3F":roomNumberList3]
        section3 = ["4F":roomNumberList4]
        // セクションを配列に設定する。
               sections.append(section1)
               sections.append(section2)
               sections.append(section3)
               
               // デリゲートを設定する。
               myTableView.delegate = self
               myTableView.dataSource = self
    }
    
    // UIPickerViewの列の数
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    // UIPickerViewの行数(リストの数)
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 1 {// <<<<<<<<<<　変更
            if floorNumber == 2{
                 return roomNumberList2.count
            
            }else if floorNumber == 3{
                return roomNumberList3.count
            }else if floorNumber == 4{
                return roomNumberList4.count
            }else if floorNumber == 5{
                return roomNumberList5.count
            }else if floorNumber == 6{
                return roomNumberList6.count
            }else if floorNumber == 7{
                return roomNumberList7.count
            }else{
                print(roomPickerView!)
                return roomNumberList8.count
            }
           
        } else {//pickerView.tagが２（つまり右側のドラムロールの行数の指定）
            print(roomPickerView!)
            return roomNameList.count
          
        }
        
    }
    
    // UIPickerViewの内
    func pickerView(_ pickerView: UIPickerView,
                    titleForRow row: Int,
                    forComponent component: Int) -> String? {
        
        if pickerView.tag == 1 {    // <<<<<<<<<<　変更
            if floorNumber == 2{
                return roomNumberList2[row] as! String
            }else if floorNumber == 3{
                return roomNumberList3[row] as! String
            }else if floorNumber == 4{
                return roomNumberList4[row] as! String
            }else if roomNumber == 5{
                return roomNumberList5[row]
            }else if floorNumber == 6{
                return roomNumberList6[row]
            }else if floorNumber == 7{
                return roomNumberList7[row]
            }else{
                print(namePickerView!)
                return roomNumberList8[row]
            }
            
        } else {
                print(namePickerView!)
                return roomNameList[row]
        }
        
    }
    // ドラムロール選択時
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedRoomNumber = roomNameList[row]
        print(roomNumber)
    }
    
    
    @IBAction func didPushedBoxButton(){
        laggageType = "Box"
        print(laggageType)
    }
    
    @IBAction func didPushePostButton(){
        laggageType = "Post"
        print(laggageType)
    }
    
    @IBAction func RoomNumberName(){
        print(RoomNumberName)
        
    }
    
    @IBAction func didPusheFile(){
        storedAt = "File"
        print(storedAt)
    }
    
    @IBAction func didPusheShelf(){
        storedAt = "Shelf"
        print(storedAt)


    //画面遷移＆値渡し
       
        //didPushedRegisterperformSeguedidPushedRegisterPerformSegue
        //(withIdentifier: "toNext", sender: nil)

//    prepare()メソッドはSegueが実行される前にされる前に呼び出されるメソッド
//        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        

    // ③遷移先ViewCntrollerの取得
//    let nextView = segue.destination as! ConfirmViewController
        //self.performSegue(withIdentifier:"toSecond",sender:kill)
    
    // ④値の設定
    //遷移先画面のインスタンス変数にテキストボックスの値を設定する
//    nextView.passedLuggegeNumber = luggageNumberTextField.text!
    //nextView.passedLuggegeType = self.laggageType
    //nextView.passedStoredAt = self.storedAt
           }

func logOut(){
        let storyboard = UIStoryboard(name:"LogIn",bundle: Bundle.main)
        let rootViewController = storyboard.instantiateViewController(withIdentifier: "RootNavigationController")
        
        UIApplication.shared.keyWindow?.rootViewController = rootViewController
        //
        //ログイン状態の保持
        let ud = UserDefaults.standard
        ud.set(false, forKey: "isLogin")
        
        ud.synchronize()
    }
    
    @IBAction func floor2(){
        floorNumber = 2
        print(floorNumber)
    }
    @IBAction func floor3(){
        floorNumber = 3
    }
    @IBAction func floor4(){
        floorNumber = 4
    }
    @IBAction func floor5(){
        floorNumber = 5
    }
    @IBAction func floor6(){
        floorNumber = 6
    }
    @IBAction func floor7(){
        floorNumber = 7
    }
    @IBAction func floor28(){
        floorNumber = 8
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! ConfirmViewController
        laggageNumber = (luggageNumberTextField.text)!
        nextVC.passedLuggegeNumber = laggageNumber
        nextVC.passedLuggegeType = laggageType
        
        //PickerViewで選択されている値を取得
        roomPickerView?.numberOfRows(inComponent: 0)
        namePickerView.numberOfRows(inComponent: 0)
        nextVC.passedRoomNumber = String()
        nextVC.passedStoredAt = storedAt

    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        // セクションのヘッダとなるビューを作成する。
        let myView: UIView = UIView()
        let label:UILabel = UILabel()
        for (key) in sections[section].keys
        {
            label.text = key
        }
        label.sizeToFit()
        label.textColor = UIColor.black
        myView.addSubview(label)
        myView.backgroundColor = UIColor.green
        
        // セクションのビューに対応する番号を設定する。
        myView.tag = section
        // セクションのビューにタップジェスチャーを設定する。
//        myView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.tapHeader(gestureRecognizer:))))
        
        return myView
    }
    
    // セクションの数を返す。
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.sections.count
    }
    
    // セルの数を返す。
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // テーブルビューのセル数の設定する。
        switch section {
        case 0:
            return foldingFlg1 ? 0 : self.roomNumberList2.count
        case 1:
            return foldingFlg2 ? 0 : self.roomNumberList3.count
        case 2:
            return foldingFlg3 ? 0 : self.roomNumberList4.count
        default:
            return 0
        }
    }
    
    // セルを返す。
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルにテキストを出力する。
        let cell = tableView.dequeueReusableCell(withIdentifier:  "cell", for:indexPath as IndexPath)
        for (value) in sections[indexPath.section].values
        {
            cell.textLabel?.text = value[indexPath.row] as? String
        }
        
        return cell
    }
    
    // テーブルビューをスワイプしてデータを削除する。
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteButton: UITableViewRowAction = UITableViewRowAction(style: .normal, title: "削除") { (action, index) -> Void in
            for (value) in self.sections[indexPath.section].values
            {
                value.removeObject(at: indexPath.row)
            }
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
        deleteButton.backgroundColor = UIColor.red
        
        return [deleteButton]
    }
    @IBAction func segmentChanged(sender: AnyObject) {
        //セグメントが変更されたときの処理
        //選択されているセグメントのインデックス
        let selectedIndex = segmentedControl.selectedSegmentIndex
        //選択されたインデックスの文字列を取得してラベルに設定
//        section1.keys = segmentedControl.titleForSegmentAtIndex(selectedIndex)
    }
    
}
