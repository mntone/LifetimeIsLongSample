import SwiftUI

final class ItemsViewModel: ObservableObject, Identifiable {
	let content: [ItemViewModel]

	#if DEBUG
	init() {
		self.content = [
			ItemViewModel(id: 0),
			ItemViewModel(id: 1),
			ItemViewModel(id: 2),
			ItemViewModel(id: 3),
			ItemViewModel(id: 4),
			ItemViewModel(id: 5),
		]
	}
	#endif

	init(_ content: [ItemViewModel]) {
		self.content = content
	}
}
