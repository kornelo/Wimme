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
            "title": newEvent.title,
            "date": newEvent.date,
            "place": newEvent.place,
            "creator": newEvent.creator,
            "description": newEvent.description,
            "xEventLocalization": newEvent.eventLocalization.xVariable,
            "yEventLocalization": newEvent.eventLocalization.yVariable,
            "zEventLocalization": newEvent.eventLocalization.zVariable,
            "pictureUrl": newEvent.pictureUrl,
            "participants": newEvent.participantsList,
            "maxNumberOfParticipants": newEvent.maxNumberOfParticipants,
            "resignationTime": newEvent.resignationTime,
            "categoryName": newEvent.eventCategory.categoryName,
            "categoryPicUrl": newEvent.eventCategory.pictureUrl
            ] as [String : Any]
        refEventList.setValue(newEventData)
    }
    
    static func getEventInfo(eventTitle: String) -> eventCategory {
        var ref:DatabaseReference!
        ref = Database.database().reference()
    }
}
