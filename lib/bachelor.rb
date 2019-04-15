require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season][0]["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  contestant_name = ""
  data.each do |season, people|
	people.each do |contestant|
		if contestant["occupation"] == occupation
			contestant_name = contestant["name"]
		end
	end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestant_count = 0
  data.each do |season, people|
	people.each do |contestant|
		if contestant["hometown"] == hometown
			contestant_count += 1
		end
	end
  end
  contestant_count
end

def get_occupation(data, hometown)
  # code here
  contestant_occ = ""
  data.each do |season, people|
	people.each do |contestant|
		if contestant["hometown"] == hometown && contestant_occ == ""
			contestant_occ = contestant["occupation"]
		end
	end
  end
  contestant_occ
end

def get_average_age_for_season(data, season)
  # code here
  contestant_count = 0
  contestant_combined_age = 0
  data[season].each do |contestant|
		contestant_combined_age += contestant["age"].to_f
		contestant_count += 1
  end
  (contestant_combined_age / contestant_count).round
end
