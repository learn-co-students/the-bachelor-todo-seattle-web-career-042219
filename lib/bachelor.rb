def get_first_name_of_season_winner(data, season)
  data[season].find{|contestant| contestant["status"] == "Winner"}["name"].split.first
end

def get_contestant_name(data, occupation)
  data.values.flatten.find { |contestant| contestant["occupation"] == occupation}["name"]
end

def count_contestants_by_hometown(data, hometown)
  data.values.flatten.count {|contestant| contestant["hometown"] == hometown}
end

def get_occupation(data, hometown)
  data.values.flatten.find { |person| person["hometown"] == hometown}["occupation"]
end

def get_average_age_for_season(data, season)
  age = 0
  contestants = 0
  data[season].each do |contestant_hash|
    age += (contestant_hash["age"]).to_i
    contestants += 1
  end
  (age / contestants.to_f).round(0)
end
