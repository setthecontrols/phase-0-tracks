rock_show = {
    venue: {
        balcony: {
            seating: {
                seats: 20,
                standing_room: 30
            },
            ammeneties: [
                "bar",
                "kitchen",
            ]

        },
        floor: {
            seating: {
                seats: 15,
                standing_room: 50
            },
            ammeneties: [
                "bar",
                "kitchen",
                "mechanical_bull"
            ]            
        },    
    },
    bands: [
        "Pins Of Light",
        "Suepernaut",
        "Joy"
    ]
}

p rock_show

p rock_show[:venue][:balcony][:seating]

p rock_show[:venue][:floor][:ammeneties]
