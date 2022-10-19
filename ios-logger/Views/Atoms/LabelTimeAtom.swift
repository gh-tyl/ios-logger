import SwiftUI

struct LabelTimeAtom: View {
    @StateObject var vm = LabelTimeAtomVM()

    var body: some View {
        Text(vm.currentDatetime)
            .frame(maxWidth: .infinity)
            .padding()
            .onAppear(perform: {
                vm.timer = Timer.scheduledTimer(withTimeInterval: vm.timeInterval, repeats: vm.isRepeat) {_ in
                    vm.currentDatetime = GetCurrentDatetime()
                }
            })
            .onDisappear(perform: {
                vm.timer?.invalidate()
                vm.timer = nil
            })
    }
}

extension LabelTimeAtom {
    @MainActor class LabelTimeAtomVM: ObservableObject {
        @Published var currentDatetime = GetCurrentDatetime()
        @Published var timer: Timer?
        @Published var timeInterval: TimeInterval = 1.0
        @Published var isRepeat: Bool = true
    }
}

struct LabelTimeAtom_Previews: PreviewProvider {
    static var previews: some View {
        LabelTimeAtom()
            .previewLayout(.sizeThatFits)
    }
}
