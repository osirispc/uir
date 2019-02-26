//
//  ViewController.swift
//  UIR-V1
//
//  Created by admin on 12/4/18.
//  Copyright © 2018 Osiris Ortiz. All rights reserved.
//

import UIKit
import MessageUI

extension UIViewController {
    
    func HideKeyboard() {
        let Tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboard))
        
        view.addGestureRecognizer(Tap)
        
    }
    @objc func DismissKeyboard() {
        
        view.endEditing(true)
    }
    
}

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate, UITextViewDelegate,  MFMailComposeViewControllerDelegate {

    //These functions will use the pickerView to help pick items from a list.
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == picker1 {
            return county.count
        } else if pickerView == picker2 {
            return site.count
        } else if pickerView == picker3 {
            return type.count
        } else if pickerView == picker4 {
            return noc.count
        } else if pickerView == picker5 {
            return moc.count
        } else if pickerView == picker6 {
            return doc.count
        } else if pickerView == picker7 {
           return muiLine.count
        }
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == picker1 {
            return county [row]
        } else if pickerView == picker2 {
            return site [row]
        } else if pickerView == picker3 {
            return type [row]
        } else if pickerView == picker4{
            return noc [row]
        } else if pickerView == picker5 {
            return moc [row]
        } else if pickerView == picker6 {
            return doc [row]
        } else if pickerView == picker7 {
            return muiLine [row]
        }
    
        return ""
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == picker1 {
            countyTextField.text = county[row]
            self.view.endEditing(false)
        } else if pickerView == picker2 {
            siteTextField.text = site[row]
            self.view.endEditing(false)
        } else if pickerView == picker3 {
            typeOfIncidentTextField.text = type[row]
            self.view.endEditing(false)
        } else if pickerView == picker4 {
            nocTextField.text = noc[row]
            self.view.endEditing(false)
        } else if pickerView == picker5 {
            mocTextField.text = moc[row]
            self.view.endEditing(false)
        } else if pickerView == picker6 {
            docTextField.text = doc[row]
            self.view.endEditing(false)
        } else if pickerView == picker7 {
            muiLineTextField.text = muiLine[row]
            self.view.endEditing(false)
        }
        
        
        
    }
    
    @IBOutlet weak var indName: UITextField!
    @IBOutlet weak var siteTextField: UITextField!
    @IBOutlet weak var countyTextField: UITextField!
    @IBOutlet weak var txtDatePicker: UITextField!
    @IBOutlet weak var staffNotificationTextField: UITextField!
    @IBOutlet weak var typeOfIncidentTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    @IBOutlet weak var contributingFactorsTextField: UITextView!
    @IBOutlet weak var responseTextField: UITextView!
    @IBOutlet weak var nocTextField: UITextField!
    @IBOutlet weak var mocTextField: UITextField!
    @IBOutlet weak var docTextField: UITextField!
    @IBOutlet weak var saTextField: UITextField!
    @IBOutlet weak var guardianTextField: UITextField!
    @IBOutlet weak var muiLineTextField: UITextField!
    
    @IBOutlet weak var nocTime: UITextField!
    @IBOutlet weak var mocTime: UITextField!
    @IBOutlet weak var docTime: UITextField!
    @IBOutlet weak var saTime: UITextField!
    @IBOutlet weak var gaTime: UITextField!
    @IBOutlet weak var muiTime: UITextField!
    

    
    let datePicker = UIDatePicker ()
    let datePicker2 = UIDatePicker ()
    let datePicker3 = UIDatePicker ()
    let datePicker4 = UIDatePicker ()
    let datePicker5 = UIDatePicker ()
    let datePicker6 = UIDatePicker ()
    let datePicker7 = UIDatePicker ()
    
    
    
    
    
    
    let picker1 = UIPickerView()
    let picker2 = UIPickerView()
    let picker3 = UIPickerView()
    let picker4 = UIPickerView()
    let picker5 = UIPickerView()
    let picker6 = UIPickerView()
    let picker7 = UIPickerView()
    
    
    let county = [
        "",
        "Cuyahoga",
        "Geauga",
        "Lake",
        "Lorain",
        "Medina",
        "Summit",
        "WDC"]
    let site = [
        "",
        "Locust",
        "Lane Rd",
        "1200 Resource",
        "Mayfield",
        "Akins",
        "BECPAT",
        "Beeler",
        "Beresford",
        "BRASHI",
        "Brighton",
        "Broadview Hts.",
        "Brooklyn",
        "Brookpark",
        "Brookshire",
        "Bunts",
        "Chaucer",
        "Columbia Rd.",
        "Darrow Rd.",
        "DEMCHE",
        "Donovan",
        "Eastway",
        "Franklin",
        "Green1 Down",
        "Green2 Up",
        "Greencroft",
        "Greenhurst",
        "Harbin",
        "HARLOR",
        "Harwood",
        "Herrick Park",
        "Hilltop 51",
        "Hilltop 55",
        "Home Site",
        "Hunters Manor",
        "Hyde Park",
        "Independence",
        "Ira",
        "JACLAV",
        "KENDIA",
        "Kimberly Park",
        "Lamson",
        "Lane Road",
        "Leans",
        "Lee",
        "Locust",
        "McCracken",
        "Meadow Lane",
        "MONMAR",
        "Mowbray",
        "North Church Towers",
        "Northcliff",
        "NorthRidge",
        "Off-Site Storage",
        "Other",
        "Overbrook",
        "Overlook",
        "Regency",
        "Ridgeline",
        "Ridgewood",
        "S. Broadview",
        "Seven Hills",
        "Smith",
        "Solon",
        "Stearns",
        "Summit",
        "Sycamore",
        "The Way",
        "Transportation",
        "Valley Rd",
        "Van Aken",
        "Wadsworth",
        "Wallings",
        "Walter",
        "Wesley",
        "West 45th",
        "West Ridgewood Dr.",
        "WILMAT",
        "Wyleswood Drive",
        "York",
    
    ]
    let type = [
                "",
                "Aggression by Peer ",
                "Aggression toward peer ",
                "Aggression toward staff ",
                "Behavior ",
                "Dietary Problem ",
                "Elopement ",
                "Fall ",
                "Illness ",
                "Individual to ER/Urgent Care ",
                "Injury of Known causing not requiring medical attention ",
                "Injury of unknown origin not requiring medical attention ",
                "Med Refusal ",
                "Medication error ",
                "Missing money/Property ",
                "Out of Ratio ",
                "Property Destruction ",
                "Rights violation(no risk of harm) ",
                "Seizure ",
                "Self-Injury Behavior ",
                "Vehicle Accident ",
                "Other "
                ]
    let moc = [
        "",
        "Heidi Spaeth:  216-555-5555"
        ]
    let doc = ["", "Lina Workman - 555-5555" ]
    let noc = ["", "Stace Wolf - 555-5555" ]
    let muiLine = [
            "",
            "CCBDD 440-333-6884",
            "LCBDD MUI Line 440-329-3734 (8a-4p)",
            "LCBDD MUI Line 440-282-1131 (after hours)",
            "SCBDD MUI Line 330-634-8684 (8a-4p)",
            "SCBDD MUI Line 877-271-6733 (after hours)",
            "WDC Campus Support 216-285-9851 or 216-285-9852"
            ]
    
    
    //Declare variables for loop to create CSV file
    
    var taskArr = [uirTask]()
    var task: uirTask!
   
    //Main
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.HideKeyboard()
        
        self.descriptionTextView.delegate = self
        self.contributingFactorsTextField.delegate = self
        self.responseTextField.delegate = self
        
        
        
        
        
        
        picker1.dataSource = self
        picker1.delegate = self
        
        picker2.dataSource = self
        picker2.delegate = self
        
        picker3.dataSource = self
        picker3.delegate = self
        
        picker4.dataSource = self
        picker4.delegate = self
        
        picker5.dataSource = self
        picker5.delegate = self
        
        picker6.dataSource = self
        picker6.delegate = self
        
        picker7.dataSource = self
        picker7.delegate = self
        
        
        
        
        picker1.tag = 1
        picker2.tag = 2
        picker3.tag = 3
        picker4.tag = 4
        picker5.tag = 5
        picker6.tag = 6
        picker7.tag = 7
        
        
        
        countyTextField.inputView = picker1
        siteTextField.inputView = picker2
        typeOfIncidentTextField.inputView = picker3
        nocTextField.inputView = picker4
        mocTextField.inputView = picker5
        docTextField.inputView = picker6
        muiLineTextField.inputView = picker7
        

        
        //This will add the Date Picker
        showDatePicker()
        showDatePicker2()
        showDatePicker3()
        showDatePicker4()
        showDatePicker5()
        showDatePicker6()
        showDatePicker7()
        
        
        
        
        
//Create CVS file loop
        
        task = uirTask()
        for _ in 0..<1 {
            task.dateOfIncident = "Date of Incident \(txtDatePicker.text!)"
            task.indName = "Name of Individual \(indName.text!)"
            task.locationOfIncident = "Location of Incident \(siteTextField.text!)"
            task.descpritionOfIncident = "Description \(descriptionTextView.text!)"
            task.county = "County \(countyTextField.text!)"
            taskArr.append(task!)
            
        }

    }
    
//Task Model Class
    
    class uirTask: NSObject {
        var dateOfIncident: String = ""
        var indName: String = ""
        var locationOfIncident: String = ""
        var descpritionOfIncident: String = ""
        var county: String = ""
        
 //Export Button
    }
    
    @IBAction func export(_ sender: Any) {
        creatCSV()
        
    }
    
    //This will add the Date Picker to capture the date and time.
    
    //DatePicker 1
    
    
    func showDatePicker(){
        
        //Format the date here.
        datePicker.datePickerMode = .dateAndTime
        
        
        
        
        //Set up Toolbar here.
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker));
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil);
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker));
        
        
        toolbar.setItems([doneButton, spaceButton, cancelButton], animated: false)

            txtDatePicker.inputAccessoryView = toolbar
            txtDatePicker.inputView = datePicker

        }
    
    @objc func donedatePicker(){
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy h:mm a"
        
        txtDatePicker.text = formatter.string(from: datePicker.date)
        
        self.view.endEditing(true)
    }
    
    @objc func cancelDatePicker(){
        self.view.endEditing(true)
        
    }
    
    
    
    func showDatePicker2(){
        
        //Format the date here.
        
        datePicker2.datePickerMode = .dateAndTime

        //Set up Toolbar here.
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker2));
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil);
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker2));
        
        
        toolbar.setItems([doneButton, spaceButton, cancelButton], animated: false)
        

         
         nocTime.inputAccessoryView = toolbar
         nocTime.inputView = datePicker2
         
        
        
    }
    
    @objc func donedatePicker2(){
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy h:mm a"
        
       
       nocTime.text = formatter.string(from: datePicker2.date)

        
        self.view.endEditing(true)
    }
    
    
    @objc func cancelDatePicker2(){
        self.view.endEditing(true)
        
    }
    
    func showDatePicker3(){
        
        //Format the date here.
        
        datePicker3.datePickerMode = .dateAndTime
        
        
        
        //Set up Toolbar here.
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker3));
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil);
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker3));
        
        
        toolbar.setItems([doneButton, spaceButton, cancelButton], animated: false)
        
        
        
        mocTime.inputAccessoryView = toolbar
        mocTime.inputView = datePicker3
        
        
        
    }
    
    @objc func donedatePicker3(){
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy h:mm a"
        
        
        mocTime.text = formatter.string(from: datePicker3.date)
        
        
        self.view.endEditing(true)
    }
    
    
    @objc func cancelDatePicker3(){
        self.view.endEditing(true)
        
    }
    
    func showDatePicker4(){
        
        //Format the date here.
        datePicker4.datePickerMode = .dateAndTime
        
        //Set up Toolbar here.
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker4));
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil);
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker4));
        
        
        toolbar.setItems([doneButton, spaceButton, cancelButton], animated: false)
        
        
        
        docTime.inputAccessoryView = toolbar
        docTime.inputView = datePicker4
        
        
        
    }
    
    @objc func donedatePicker4(){
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy h:mm a"
        
        
        docTime.text = formatter.string(from: datePicker4.date)
        
        
        self.view.endEditing(true)
    }
    
    
    @objc func cancelDatePicker4(){
        self.view.endEditing(true)
        
    }
    
//SA DatePicker 5
    
    func showDatePicker5(){
        
        //Format the date here.
        datePicker5.datePickerMode = .dateAndTime
        
        //Set up Toolbar here.
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker5));
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil);
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker5));
        
        
        toolbar.setItems([doneButton, spaceButton, cancelButton], animated: false)
        
        
        
        saTime.inputAccessoryView = toolbar
        saTime.inputView = datePicker5
        
        
        
    }
    
    @objc func donedatePicker5(){
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy h:mm a"
        
        
        saTime.text = formatter.string(from: datePicker5.date)
        
        
        self.view.endEditing(true)
    }
    
    
    @objc func cancelDatePicker5(){
        self.view.endEditing(true)
        
    }
    
    
    
    //GA DatePicker 6
    func showDatePicker6(){
        
        //Format the date here.
        datePicker6.datePickerMode = .dateAndTime
        
        //Set up Toolbar here.
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker6));
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil);
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker6));
        
        
        toolbar.setItems([doneButton, spaceButton, cancelButton], animated: false)
        
        
        
        gaTime.inputAccessoryView = toolbar
        gaTime.inputView = datePicker6
        
        
        
    }
    
    @objc func donedatePicker6(){
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy h:mm a"
        
        
        gaTime.text = formatter.string(from: datePicker6.date)
        
        
        self.view.endEditing(true)
    }
    
    
    @objc func cancelDatePicker6(){
        self.view.endEditing(true)
        
    }
    
    
    
    //MUI DatePicker 7
    func showDatePicker7(){
        
        //Format the date here.
        datePicker7.datePickerMode = .dateAndTime
        
        //Set up Toolbar here.
        let toolbar = UIToolbar();
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(donedatePicker7));
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil);
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(cancelDatePicker7));
        
        
        toolbar.setItems([doneButton, spaceButton, cancelButton], animated: false)
        
        
        
        muiTime.inputAccessoryView = toolbar
        muiTime.inputView = datePicker7
        
        
        
    }
    
    @objc func donedatePicker7(){
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy h:mm a"
        
        
        muiTime.text = formatter.string(from: datePicker7.date)
        
        
        self.view.endEditing(true)
    }
    
    
    @objc func cancelDatePicker7(){
        self.view.endEditing(true)
        
    }
    
    
        //Create CSV file
        
        func creatCSV() -> Void {
            
            
            let fileName = "UIR \(indName.text!).csv"
            let path = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
            var csvText = "Individual Name, Site, County, Time of Incident, Staff Notification, Type of Incident, Description of Incident, Cause & Contributing Factors, What you did, NOC, NOC Time, MOC, MOC Time, DOC, DOC Time, County/SA, County/SA Time, Guardian, Guardian Time, MUI Line, MUI Line Time\n"
            
            for _ in taskArr {
                let newLine = "\(indName.text!), \(siteTextField.text!), \(countyTextField.text!), \(txtDatePicker.text!), \(staffNotificationTextField.text!), \(typeOfIncidentTextField.text!),\(descriptionTextView.text!), \(contributingFactorsTextField.text!), \(responseTextField.text!), \(nocTextField.text!), \(nocTime.text!), \(mocTextField.text!), \(mocTime.text!),\(docTextField.text!), \(docTime.text!), \(saTextField.text!), \(saTime.text!), \(guardianTextField.text!), \(gaTime.text!), \(muiLineTextField.text!), \(muiTime.text!) \n"
                csvText.append(contentsOf: newLine)
                
            }
            
            do {
                try csvText.write(to: path!, atomically: false, encoding: String.Encoding.utf8)
                
                let vc = UIActivityViewController(activityItems: [path!], applicationActivities: [])
                
                present(vc, animated: true, completion: nil)
                
                
                
                
            } catch {
                print("Failed to create file")
                print("\(error)")
            }
            print(path ?? "not found")
            
            
            
        }

    //Send Email
    
    @IBAction func send(_ sender: Any){
            
            
            let fileName = "UIR \(indName.text!).csv"
            let path = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fileName)
            
        
            var csvText = "Individual Name, Site, County, Time of Incident, Staff Notification, Type of Incident, Description of Incident, Cause & Contributing Factors, What you did, NOC, NOC Time, MOC, MOC Time, DOC, DOC Time, County/SA, County/SA Time, Guardian, Guardian Time, MUI Line, MUI Line Time\n"
            
            for _ in taskArr {
                let newLine = "\(indName.text!), \(siteTextField.text!), \(countyTextField.text!), \(txtDatePicker.text!), \(staffNotificationTextField.text!), \(typeOfIncidentTextField.text!),\(descriptionTextView.text!), \(contributingFactorsTextField.text!), \(responseTextField.text!), \(nocTextField.text!), \(nocTime.text!), \(mocTextField.text!), \(mocTime.text!),\(docTextField.text!), \(docTime.text!), \(saTextField.text!), \(saTime.text!), \(guardianTextField.text!), \(gaTime.text!), \(muiLineTextField.text!), \(muiTime.text!) \n"
                csvText.append(contentsOf: newLine)
                
            }
            
            do {
                try csvText.write(to: path!, atomically: true, encoding: String.Encoding.utf8)
                
                //let vc = UIActivityViewController(activityItems: [path!], applicationActivities: [])
                
                //present(vc, animated: true, completion: nil)

            } catch {
                print("Failed to create file")
                print("\(error)")
            }
            print(path ?? "not found")
        
        if (MFMailComposeViewController.canSendMail()) {
            
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            
            mail.setSubject("UIR - \(indName.text!)")
            mail.setToRecipients(["osirisortiz@msn.com", "osiris.ortiz@koinoniahomes.org"])
            mail.setMessageBody("Individual Name: \(indName.text!)\n\nSite: \(siteTextField.text!)\n\nCounty: \(countyTextField.text!)\n\nTime of Incident: \(txtDatePicker.text!)\n\nStaff Notification: \(staffNotificationTextField.text!)\n\nType of Incident: \(typeOfIncidentTextField.text!)\n\nBrief Description of Incident: This UIR was investigated by \(descriptionTextView.text!)\n\n\nCause and Contributing Factors: \(contributingFactorsTextField.text!)\n\n\nWhat you/staff did immediately to protect the individuals: \(responseTextField.text!)\n\n\nNotifications (name and time):\n\nNOC: \(nocTextField.text!) \(nocTime.text!)\n\nMOC: \(mocTextField.text!) \(mocTime.text!)\n\nDOC: \(docTextField.text!) \(docTime.text!)\n\nCounty Liason/SA: \(saTextField.text!)\(saTime.text!)\n\nGuradian: \(guardianTextField.text!)\(gaTime.text!)\n\nMUI Line: \(muiLineTextField.text!) \(muiTime.text!)\n", isHTML: false)
          
            mail.addAttachmentData(NSData(contentsOf: path!)! as Data,  mimeType: "text/csv", fileName: "uir.csv")
            
                self.present(mail, animated: true, completion: nil)

        } else {
            print("Email is not configured in settings app or we are not able to send an email")
        }
            
    }

        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            switch result {
            case .cancelled:
                print("User cancelled")
                break
                
            case .saved:
                print("Mail is saved by user")
                break
                
            case .sent:
                print("Mail is sent successfully")
                break
                
            case .failed:
                print("Sending mail is failed")
                break
            default:
                break
            }
            
            controller.dismiss(animated: true)
            
        }
    
    // Read write to file

    class ReadWriteText {
        
        var DocumentDirURL:URL {
            let url = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            return url
            
        }
        func fileURL(fileName:String, fileExtension:String) -> URL {
           return DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension(fileExtension)
        }
        func writeFile(writeString:String, to fileName:String, fileExtension:String = "txt") {
            let url = fileURL(fileName: fileName, fileExtension: fileExtension)
            
            do {
                try writeString.write(to: url, atomically: true, encoding: .utf8)
            } catch let error as NSError {
                print("Failed writing to URL:\(url), Error: " + error.localizedDescription)
            }
            
        }
        
        func readFile(from fileName:String, fileExtension:String = "txt") ->String {
            var readString = ""
            let url = fileURL(fileName: fileName, fileExtension: fileExtension)
            
            do {
                readString = try String(contentsOf: url)
            } catch let error as NSError {
                print("Failed reading to URL:\(url), Error: " + error.localizedDescription)
            }
            return readString
        }
    }
    
    
    @IBAction func clear(_ sender: Any) {
        
    }

}







 
 
 
 
 
 
 
 
 
 
 
 
 

