//
//  ContentView.swift
//  iOS15Tests
//
//  Created by Stephen Wall on 9/2/21.
//

import SwiftUI

struct ContentView: View {
  enum Page: String, CaseIterable {
    case textFieldStyle
    case pullToRefresh
    case asyncAwaitPullRefresh
    case searchable
    case swipeActions
    case swipeActions2
    case material
    case asyncImage
    case keyboardFocus
    case badges
    case modalSheet
    case markdown
    case alerts
    case confirmation
    case menu
    case foregroundStyle
    case listSeparators
    
    var description: String {
      switch self {
      case .textFieldStyle: return "Text Field Styles"
      case .pullToRefresh: return "Pull to Refresh"
      case .asyncAwaitPullRefresh: return "Async/Await Pull Refresh"
      case .searchable: return "Searchable"
      case .swipeActions: return "Swipe Actions"
      case .swipeActions2: return "Swipe Action Calculator"
      case .material: return "Material Background"
      case .asyncImage: return "Async Image"
      case .keyboardFocus: return "Keyboard Focus State"
      case .badges: return "Badges"
      case .modalSheet: return "Modal Sheet"
      case .markdown: return "Markdown Text"
      case .alerts: return "Alerts & Buttons"
      case .confirmation: return "Confirmation Dialog"
      case .menu: return "Menus"
      case .foregroundStyle: return "Foreground Styles"
      case .listSeparators: return "List Separators"
      }
    }
  }
  
    var body: some View {
      NavigationView {
        List(Page.allCases, id: \.self) { page in
          NavigationLink(destination: getPageView(for: page)) {
            HStack {
              Text(page.description)
              Spacer()
            }
          }
        }
        .navigationTitle("What's new in iOS 15")
      }
    }
  
  @ViewBuilder
  func getPageView(for page: Page) -> some View {
    switch page {
    case .textFieldStyle: TextFieldStyleView()
    case .pullToRefresh: PullToRefreshView()
    case .asyncAwaitPullRefresh: AsyncAwaitView()
    case .searchable: SearchableView()
    case .swipeActions: SwipeActionsView()
    case .swipeActions2: SwipeActionsView2()
    case .material: MaterialView()
    case .asyncImage: AsyncImageView()
    case .keyboardFocus: KeyboardFocusView()
    case .badges: BadgesView()
    case .modalSheet: ModalSheetView()
    case .markdown: MarkdownView()
    case .alerts: AlertsView()
    case .confirmation: ConfirmationView()
    case .menu: MenuView()
    case .foregroundStyle: ForegroundStyleView()
    case .listSeparators: ListSeparatorView()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
