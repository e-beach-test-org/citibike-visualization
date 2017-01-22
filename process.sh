# First, I grabbed data from https://s3.amazonaws.com/tripdata/201307-201402-citibike-tripdata.zip, saved to ../data
# Install csv2geojson: npm install -g csv2geojson

head -n 10000 data/'2013-07 - Citi Bike trip data.csv' > 2013-07-piece.csv
csv2geojson 2013-07-piece.csv
node parse.js > 2013-07-piece-formatted.json
