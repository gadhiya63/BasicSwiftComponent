//
//  ViewController.swift
//  BasicComponent
//
//  Created by tringapps, Inc. on 9/19/14.
//  Copyright (c) 2014 tringapps, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

//    required init(coder aDecoder: NSCoder) {
//        //fatalError("init(coder:) has not been implemented")
//    }
    
    @IBOutlet var tableView: UITableView!
    var items: [String] = ["Pankaj", "Gadhiya", "Tringapps", "Pankaj", "Gadhiya", "Tringapps", "Pankaj", "Gadhiya", "Tringapps"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //register table cell class
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        //Add UIButton on view
        addButtonOnView()
        
        //add UILabel on view
        addLableOnView()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK:-  button code
    
    func addButtonOnView(){
        
        var button = UIButton.buttonWithType(UIButtonType.System) as UIButton
        button.frame = CGRectMake(20, 40, self.view.frame.width - 40, 50)
        button.backgroundColor = UIColor.grayColor()
        button.setTitle("Custom Button", forState: UIControlState.Normal)
        button.addTarget(self, action: "ButtonClickEvent:", forControlEvents: UIControlEvents.TouchUpInside)
        button.addTarget(self, action: "ButtonClickEvent", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(button);
    }
    
    //button event
    func ButtonClickEvent(sender: UIButton!){
        println("ButtonClickEvent")
    }
    func ButtonClickEvent(){
        println("ButtonClickEvent WithOut Sender")
    }
  
    //MARK: label
    func addLableOnView(){
        
        var label: UILabel = UILabel()
        label.frame = CGRectMake(20, 110, self.view.frame.width - 40, 50)
        label.backgroundColor = UIColor.blueColor()
        label.textColor = UIColor.whiteColor()
        label.textAlignment = NSTextAlignment.Center
        label.text = "Custom Label"
        self.view.addSubview(label)
        
    }
    
    //MARK: table view methods
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        println("You selected cell #\(indexPath.row)!")
    }
    
}

