require "pry"

def get_first_name_of_season_winner(data, season)
  winner = data[season].find do |person|
    person["status"] == "Winner" 
  end
  winner["name"].split(" ").first
end

def get_contestant_name(data, occupation)
 data.each do |season, contestants|
  answer = contestants.each do |contestant|
    if contestant["occupation"] == occupation 
      return contestant["name"]
    end
  end
 end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    answer = contestants.each do |contestant|
      if contestant["hometown"] == hometown 
        counter +=1
      end
    end
   end
   counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    answer = contestants.each do |contestant|
      if contestant["hometown"] == hometown 
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  contestant_age_ar=[]
  data[season].each do |contestant|
      contestant_age_ar << contestant["age"].to_i
    end
  (contestant_age_ar.sum/contestant_age_ar.size.to_f).round(0)
end
