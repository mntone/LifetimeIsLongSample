import SwiftUI

final class ItemViewModel: ObservableObject, Identifiable {
	let id: UInt8

	init(id: UInt8) {
		self.id = id
	}
}
