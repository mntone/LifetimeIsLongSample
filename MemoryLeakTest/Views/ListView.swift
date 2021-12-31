import SwiftUI

struct ListView: View {
	@StateObject
	private var content: ItemsViewModel = ItemsViewModel()

	var body: some View {
		NavigationView {
			List {
				ForEach(content.content) { (item: ItemViewModel) in
					NavigationLink {
						LazyView(ContentView(ItemViewModel(id: item.id)))
					} label: {
						Text("\(item.id)")
					}
				}
			}
			.navigationTitle("Memory Leak Test")
		}

		// MARK: Magic word to remove memory leak

		// .navigationViewStyle(.stack)
	}
}

struct ListView_Previews: PreviewProvider {
	static var previews: some View {
		ListView()
	}
}
