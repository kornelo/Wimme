//
//  EventsDatabase.swift
//  Wimme
//
//  Created by Młody-MBP on 11.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//

import Foundation
import FirebaseDatabase

class EventsDatabase {
    
    static func addNewEventToFIR(newEvent: EventProperties) {
        var ref:DatabaseReference!
        ref = Database.database().reference()
        let refEventList = ref.child("eventsList").childByAutoId()
        let newEventData = [
            "creator": newEvent.creator,
            "date": newEvent.date,
            "place": newEvent.place,
            "title": newEvent.title,
            "description": newEvent.description,
            "xEventLocalization": newEvent.eventLocalization.xVariable,
            "yEventLocalization": newEvent.eventLocalization.yVariable,
            "zEventLocalization": newEvent.eventLocalization.zVariable,
            "pictureUrl": newEvent.pictureUrl
            
            ] as [String : Any]
        refEventList.setValue(newEventData)
    }
}
