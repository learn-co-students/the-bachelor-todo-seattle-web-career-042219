require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestant_data|
    if season_num == season
      contestant_data.each do |hash|
        if hash["status"] == "Winner"
          full_name = hash["name"].split(" ")
          return full_name[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, contestant_data|
    contestant_data.each do |hash|
      hash.each do |type, value|
        if value == occupation
          return hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_num, contestant_data|
    contestant_data.each do |hash|
      hash.each do |type, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_num, contestant_data|
    contestant_data.each do |hash|
      hash.each do |type, value|
        if value == hometown
          return hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  counter = 0
  data.each do |season_num, contestant_data|
    if season_num == season
      contestant_data.each do |hash|
        age_total += hash["age"].to_f
        counter += 1
      end
    end
  end
  (age_total / counter).round
end
