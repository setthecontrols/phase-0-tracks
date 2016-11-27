


ROCK_SHOW = {
    venue: {
        balcony: {
            seating: {
                seats: {
                  seat_1: 'sold',
                  seat_2: 'sold',
                  seat_3: 'sold',
                  seat_4: 'sold',
                  seat_5: 'sold',
                  seat_6: 'sold',
                  seat_7: 'sold',
                  seat_8: 'sold',
                  seat_9: 'sold',
                  seat_10: 'sold',
                  seat_11: 'sold',
                  seat_12: 'sold',
                  seat_13: 'sold',
                  seat_14: 'sold',
                  seat_15: 'sold',
                  seat_16: 'sold',
                  seat_17: 'sold',
                  seat_18: 'sold',
                  seat_19: 'sold',
                  seat_20: 'sold'
                },
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
    impending_lineups: {
      20161129 => ["Pins Of Light", "Suepernaut","Joy"]
      },
    old_lineups: {

    }
}


p ROCK_SHOW[:venue][:floor][:ammeneties][2]
  ROCK_SHOW[:impending_lineups][20161130] = ["Owl", "Hazzard's Cure", "Set The Controls"]
p ROCK_SHOW[:impending_lineups][20161130][2]
p "The club has all you need and the some: #{ROCK_SHOW[:venue][:floor][:ammeneties][0..-1]}"


def reset_seat_status
  ROCK_SHOW[:venue][:balcony][:seating][:seats].each do
    | seat_num, status| 
    ROCK_SHOW[seat_num] = "available"
  end
  p ROCK_SHOW
end
# reset_seat_status






