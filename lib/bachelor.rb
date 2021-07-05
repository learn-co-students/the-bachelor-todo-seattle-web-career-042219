require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  first_name = ""
  data.each do |season_num, info|
    if season_num == season
      info.each_with_index do |contestants, i|
        if contestants["status"] == "Winner"
          full_name = contestants["name"]
          split_name = full_name.split(" ")
          first_name = split_name[0]
        end
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season_num, info|
    info.each_with_index do |contestants, i|
      if contestants["occupation"] == occupation
        name = contestants["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  index = 0
  data.each do |season_num, info|
    info.each_with_index do |contestants, i|
      if contestants["hometown"] == hometown
        index += 1
      end
    end
  end
  index
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_num, info|
    info.each_with_index do |contestants, i|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data.each do |season_num, info|
    if season_num == season
      info.each_with_index do |contestants, i|
        age_array << contestants["age"]
      end
    end
  end
  average(age_array)
end

def average(array)
  mean = 0
  array.each do |x|
    mean += x.to_i
  end
  average = mean.to_f / array.length
  average.round

end
