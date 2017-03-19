//
//  moreVC.swift
//  BHKWise
//
//  Created by Sawkan on 3/18/17.
//  Copyright © 2017 Sawkan Internet Private Limited. All rights reserved.
//


import UIKit
import MessageUI

class moreVC: UITableViewController , MFMailComposeViewControllerDelegate {
    
    let lblcolor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 1)
        setupNavigation()
        loadTable()
        
    }
    
    
    
    
    var myAccountCell: UITableViewCell = UITableViewCell()
    var quickTourcell: UITableViewCell = UITableViewCell()
    var sampleReportCell: UITableViewCell = UITableViewCell()
    var helpDeskCell: UITableViewCell = UITableViewCell()
    var shareAppCell: UITableViewCell = UITableViewCell()
    var rateusCell: UITableViewCell = UITableViewCell()
    var aboutusCell: UITableViewCell = UITableViewCell()
    var sendFeedbackCell: UITableViewCell = UITableViewCell()
    var creditCell: UITableViewCell = UITableViewCell()
    
    
    var myAccountlbl: UILabel = UILabel()
    var quickTourlbl: UILabel = UILabel()
    var sampleReportlbl: UILabel = UILabel()
    var helpDesklbl: UILabel = UILabel()
    var shareApplbl: UILabel = UILabel()
    var rateuslbl: UILabel = UILabel()
    var aboutuslbl: UILabel = UILabel()
    var sendFeedbacklbl: UILabel = UILabel()
    var creditlbl: UILabel = UILabel()
    
    
    var myAccountImg: UIImageView = UIImageView()
    var quickTourImg: UIImageView = UIImageView()
    var sampleReportImg: UIImageView = UIImageView()
    var helpDeskImg: UIImageView = UIImageView()
    var shareAppImg: UIImageView = UIImageView()
    var rateusImg: UIImageView = UIImageView()
    var aboutusImg: UIImageView = UIImageView()
    var sendFeedbackImg: UIImageView = UIImageView()
    var creditImg: UIImageView = UIImageView()
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 1
        case 1: return 3
        case 2: return 2
        case 3: return 2
        case 4: return 1
            
        default: fatalError("Unknown number of sections")
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                return self.myAccountCell
            default: fatalError("Unknown number of sections")
                
            }
            
        case 1:
            switch indexPath.row {
            case 0:
                return self.quickTourcell
            case 1:
                return self.sampleReportCell
            case 2:
                return self.helpDeskCell
            default: fatalError("Unknown number of sections")
                
            }
            
        case 2:
            switch indexPath.row {
            case 0:
                return self.shareAppCell
            case 1:
                return self.rateusCell
                
            default: fatalError("Unknown number of sections")
                
            }
            
        case 3:
            switch indexPath.row {
            case 0:
                return self.aboutusCell
            case 1:
                return self.sendFeedbackCell
                
            default: fatalError("Unknown number of sections")
                
            }
            
        case 4:
            switch indexPath.row {
            case 0:
                return self.creditCell
            default: fatalError("Unknown number of sections")
                
            }
            
            
        default: fatalError("Unknown number of sections")
            
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                handlemyAccount()
            default:
                fatalError("cell select")
            }
            
        case 1:
            switch indexPath.row {
            case 0:
                handlemyAccount()
            case 1:
                handlemyAccount()
            case 2:
                handlehelpdesk()
            default:
                fatalError("cell select")
            }
            
            
        case 2:
            switch indexPath.row {
            case 0:
                handleshare()
            case 1:
                handlemyAccount()
            
            default:
                fatalError("cell select")
            }
            
            
            
        case 3:
            switch indexPath.row {
            case 0:
                handleabout()
            case 1:
                handlefeedback()
                
            default:
                fatalError("cell select")
            }
            
            
            
            
        case 4:
            switch indexPath.row {
            case 0:
                handlemyAccount()
           
            default:
                fatalError("cell select")
            }


        default:
            fatalError("cell select")
        }
    }
}




extension moreVC {
    
    func setupNavigation(){
        navigationItem.title = "More"
        self.tableView = UITableView(frame: self.tableView.frame, style: .grouped)
        
        
    }
    
    
    
    func handlemyAccount(){
        
        let new = accountVC()
        self.navigationController?.pushViewController(new, animated: false)
    }
    
    
    func handlehelpdesk(){
        
       let new = helpDeskVC()
        self.navigationController?.pushViewController(new, animated: true)
    }
    
    
    func handlefeedback(){
      
        
      
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients(["info@bhkwise.com"])
            mail.setSubject("BHK Wise feedback from iOS App.")
            mail.setMessageBody("Please type your feedback...", isHTML: false)
            
            present(mail, animated: true)
        } else {
            // show failure alert
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
    
    
    
    
    func handleabout(){
        
        let new = UINavigationController(rootViewController: aboutusVC())
        self.present(new, animated: true, completion: nil)
    }
    
    
    func handleshare(){
        
      let shareapp = UIActivityViewController(activityItems: ["Check out my BHK Wise iOS App on App Store" as NSString], applicationActivities: nil)
        self.present(shareapp, animated: true, completion: nil)
        }
        
     
    
        
    
    
    func loadTable(){
        
        
        self.myAccountCell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.myAccountCell.accessoryType = .disclosureIndicator
        
        
        self.myAccountlbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.myAccountlbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.myAccountlbl.textAlignment = .left
        self.myAccountlbl.text = "My account"
        
        self.myAccountlbl.textColor = lblcolor
        
        self.myAccountImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 25, height: 25))
        self.myAccountImg.image = UIImage(named: "myaccount")
        self.myAccountImg.contentMode  = .scaleAspectFit
        
        self.myAccountCell.addSubview(myAccountImg)
        self.myAccountCell.addSubview(self.myAccountlbl)
        
        
        
        self.quickTourcell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.quickTourcell.accessoryType = .disclosureIndicator
        
        self.quickTourlbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.quickTourlbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.quickTourlbl.textAlignment = .left
        self.quickTourlbl.text = "Quick tour"
        
        self.quickTourlbl.textColor = lblcolor
        
        self.quickTourImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 32, height: 32))
        self.quickTourImg.image = UIImage(named: "quicktour")
        self.quickTourImg.contentMode  = .scaleAspectFit
        
        self.quickTourcell.addSubview(quickTourImg)
        self.quickTourcell.addSubview(self.quickTourlbl)
        
        
        
        
        self.sampleReportCell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.sampleReportCell.accessoryType = .disclosureIndicator
        
        self.sampleReportlbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.sampleReportlbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.sampleReportlbl.textAlignment = .left
        self.sampleReportlbl.text = "Sample report"
        
        self.sampleReportlbl.textColor = lblcolor
        
        self.sampleReportImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 32, height: 32))
        self.sampleReportImg.image = UIImage(named: "samplereport")
        self.sampleReportImg.contentMode  = .scaleAspectFit
        
        self.sampleReportCell.addSubview(sampleReportImg)
        self.sampleReportCell.addSubview(self.sampleReportlbl)
        
        
        
        
        
        self.helpDeskCell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.helpDeskCell.accessoryType = .disclosureIndicator
        self.helpDeskCell.target(forAction: #selector(handlehelpdesk), withSender: self)
        
        self.helpDesklbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.helpDesklbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.helpDesklbl.textAlignment = .left
        self.helpDesklbl.text = "Help desk"
        
        self.helpDesklbl.textColor = lblcolor
        
        self.helpDeskImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 32, height: 32))
        self.helpDeskImg.image = UIImage(named: "helpdesk")
        self.helpDeskImg.contentMode  = .scaleAspectFit
        
        self.helpDeskCell.addSubview(helpDeskImg)
        self.helpDeskCell.addSubview(self.helpDesklbl)
        
        
        
        
        self.shareAppCell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.shareAppCell.accessoryType = .disclosureIndicator
        self.shareAppCell.target(forAction: #selector(handleshare), withSender: self)
        
        self.shareApplbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.shareApplbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.shareApplbl.textAlignment = .left
        self.shareApplbl.text = "Share app"
        self.shareApplbl.textColor = lblcolor
        
        self.shareAppImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 32, height: 32))
        self.shareAppImg.image = UIImage(named: "share")
        self.shareAppImg.contentMode  = .scaleAspectFit
        
        self.shareAppCell.addSubview(shareAppImg)
        self.shareAppCell.addSubview(self.shareApplbl)
        
        
        
        
        self.rateusCell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.rateusCell.accessoryType = .disclosureIndicator
        
        self.rateuslbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.rateuslbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.rateuslbl.textAlignment = .left
        self.rateuslbl.text = "Rate us"
        
        self.rateuslbl.textColor = lblcolor
        
        self.rateusImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 32, height: 32))
        self.rateusImg.image = UIImage(named: "rateus")
        self.rateusImg.contentMode  = .scaleAspectFit
        
        self.rateusCell.addSubview(rateusImg)
        self.rateusCell.addSubview(self.rateuslbl)
        
        
        
        
        self.aboutusCell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.aboutusCell.accessoryType = .disclosureIndicator
        self.aboutusCell.target(forAction: #selector(handleabout), withSender: self)
        self.aboutuslbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.aboutuslbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.aboutuslbl.textAlignment = .left
        self.aboutuslbl.text = "About us"
        self.aboutuslbl.textColor = lblcolor
        
        self.aboutusImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 32, height: 32))
        self.aboutusImg.image = UIImage(named: "aboutus")
        self.aboutusImg.contentMode  = .scaleAspectFit
        
        self.aboutusCell.addSubview(aboutusImg)
        self.aboutusCell.addSubview(self.aboutuslbl)
        
        
        
        
        self.sendFeedbackCell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.sendFeedbackCell.accessoryType = .disclosureIndicator
        self.sendFeedbackCell.target(forAction: #selector(handlefeedback), withSender: self)
        
        self.sendFeedbacklbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.sendFeedbacklbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.sendFeedbacklbl.textAlignment = .left
        self.sendFeedbacklbl.text = "Feedback"
        self.sendFeedbacklbl.textColor = lblcolor
        
        self.sendFeedbackImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 32, height: 32))
        self.sendFeedbackImg.image = UIImage(named: "feedback")
        self.sendFeedbackImg.contentMode  = .scaleAspectFit
        
        self.sendFeedbackCell.addSubview(sendFeedbackImg)
        self.sendFeedbackCell.addSubview(self.sendFeedbacklbl)
        
        
        
        
        self.creditCell.backgroundColor = UIColor(red: 240/255, green: 240/255, blue: 240/255, alpha: 1)
        self.creditCell.accessoryType = .disclosureIndicator
        
        self.creditlbl = UILabel(frame: CGRect(x: 88, y: 9, width: 125, height: 28))
        self.creditlbl.font = UIFont(name: "SFNSDisplay-Medium", size: 12)
        self.creditlbl.textAlignment = .left
        self.creditlbl.text = "Credit"
        self.creditlbl.textColor = lblcolor
        
        self.creditImg  = UIImageView(frame: CGRect(x: 12, y: 9, width: 32, height: 32))
        self.creditImg.image = UIImage(named: "credit")
        self.creditImg.contentMode  = .scaleAspectFit
        
        self.creditCell.addSubview(creditImg)
        self.creditCell.addSubview(self.creditlbl)
        
        
    }
    
    
    
    
}





