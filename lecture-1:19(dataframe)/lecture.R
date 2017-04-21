data()
data("Seatbelts")

print(Seatbelts)

seatbelts <- data.frame(Seatbelts)

seatbelts[seatbelts$drivers > 1600,]
