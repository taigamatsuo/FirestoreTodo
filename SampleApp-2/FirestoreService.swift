//
//  FirestoreService.swift
//  SampleApp-2
//
//  Created by 松尾大雅 on 2020/09/13.
//  Copyright © 2020 litech. All rights reserved.
//

import Foundation
import Firebase
import FirebaseFirestore

class FirestoreService {
    
    private init() {}
    static let shared = FirestoreService()
    
    
    let userReference = Firestore.firestore().collection("users")
    
    func configure() {
        FirebaseApp.configure()
    }
    
    func create() {
        let parameters:[String:Any] = [ "name":"Taiga", "age":22]
        
        userReference.addDocument(data: parameters)
    }
    
    func read(){
        
        let userReference = Firestore.firestore().collection("users")
        
        userReference.addSnapshotListener{(snapshot , _)in
            guard let snapshot = snapshot else {return}
            for document in snapshot.documents {
                print(document.data())
            }
        }
    }
    
    func update(){
        
        let userReference = Firestore.firestore().collection("users")
        
        userReference.document("").setData(["age" : 1 , "name" : "matsuo"])
    }
    
    func delete(){
        
        let userReference = Firestore.firestore().collection("users")
        
        userReference.document("").delete()
    }
    
    
    
}
