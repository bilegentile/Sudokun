//
//  Record.swift
//  Sudokun
//
//  Created by Beniamino Gentile on 04/04/24.
//  Copyright © 2024 Beniamino Gentile. All rights reserved.
//

import Foundation
import CoreData

public class Record: NSManagedObject, Identifiable {
	@NSManaged public var date : Date?
	@NSManaged public var timeElapsed : Int32
	@NSManaged public var errors : Int16
	@NSManaged public var victory : Bool
}

extension Record {
	static func getAllRecords() -> NSFetchRequest<Record> {
		let request: NSFetchRequest<Record> = Record.fetchRequest() as!
		NSFetchRequest<Record>
		
		let sortDescriptor = NSSortDescriptor(key: "date", ascending: true)
		
		request.sortDescriptors = [sortDescriptor]
		
		return request
	}
}
