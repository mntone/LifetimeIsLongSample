import SwiftUI

struct ContentView: View {
	@ObservedObject
	private var content: ItemViewModel

	init(_ content: ItemViewModel) {
		self.content = content
	}

	var body: some View {
		Text("\(content.id)")
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView(ItemViewModel(id: 0))
	}
}
