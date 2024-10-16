//
//  PrayerTimeView.swift
//  NamazTime
//
//  Created by Rehnuma Reza(Deepty) on 9/10/24.
//

import SwiftUI

struct PrayerTimeView: View {
    var prayerTimeViewModel = PrayerTimeViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(prayerTimeViewModel.prayerData, id: \.name) { prayer in
                    PrayerTimeRow(prayerTime: prayer)
                    
                }
                
            }
            .navigationTitle("Today's Prayers")
            .navigationBarTitleDisplayMode(.large)
            
        }
        
       
    }
}

struct Card<Content: View>: View {
    @ViewBuilder var content: Content
    
    var body: some View {
        VStack {
            content
        }
        .padding(5)
        .background(Color.gray.gradient, in: .rect(cornerRadius: 10))
    }
    
}

#Preview {
    PrayerTimeView()
}
