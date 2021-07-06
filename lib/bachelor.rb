require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data.map do |season_num, contestant_array|
    if season_num == season
      contestant_array.map do |contestant|
        #binding.pry
        if contestant["status"] == "Winner"
          contestant["name"]
        end
      end
    end
  end.flatten.compact.join(" ").split.first
end

def get_contestant_name(data, occupation)
  # code here
  data.map do |season_num, contestant_array|
    contestant_array.map do |contestant|
      #binding.pry
      if contestant["occupation"] == occupation
        contestant["name"]
      end
    end
  end.flatten.compact.join(" ")
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.map do |season_num, contestant_array|
    contestant_array.map do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  new_array = []
  data.map do |season_num, contestant_array|
    contestant_array.map do |contestant|
      if contestant["hometown"] == hometown
        new_array.push(contestant["occupation"])
      end
    end
  end
  new_array[0]
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  number_contestants = 0
  data.map do |season_num, contestant_array|
    if season_num == season
    contestant_array.map do |contestant|
      total_age = total_age + contestant["age"].to_f
      number_contestants += 1
      #binding.pry
      end
    end
  end
  #binding.pry
  (total_age/number_contestants.to_f).round
end
