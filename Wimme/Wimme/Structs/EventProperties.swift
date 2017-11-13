//
//  Category.swift
//  Wimme
//
//  Created by Młody-MBP on 11.11.2017.
//  Copyright © 2017 DudEski. All rights reserved.
//
import Foundation

struct EventProperties {
    private(set) public var creator: Profile
    private(set) public var date: Date
    private(set) public var place: String
    private(set) public var title: String
    private(set) public var description: String
    private(set) public var eventLocalization: EventLocalization
    private(set) public var pictureUrl: URL?
    private(set) public var participantsList: Array<Profile>
    private(set) public var maxNumberOfParticipants: Int
    private(set) public var resignationTime: Date
    private(set) public var eventComment: String
    private(set) public var eventCategory: EventCategory
    
    init(creator: Profile, date: Date, place: String, title: String, description: String, eventLocalization: EventLocalization, pictureUrl: URL? = nil, participantsList: Array<Profile>, maxNumberOfParticipants: Int, resignationTime: Date, eventComment: String, eventCategory: EventCategory) {
        self.creator = creator
        self.date = date
        self.place = place
        self.title = title
        self.description = description
        self.eventLocalization = eventLocalization
        self.pictureUrl = pictureUrl
        self.participantsList = participantsList
        self.maxNumberOfParticipants = maxNumberOfParticipants
        self.resignationTime = resignationTime
        self.eventComment = eventComment
        self.eventCategory = eventCategory
    }
}
