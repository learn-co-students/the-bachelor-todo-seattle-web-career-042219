require 'pry'

def get_first_name_of_season_winner(data, season)
  name_array = []
  data.each do |season_key, season_info_array|
    if season_key.to_s == season
      season_info_array.each do |contestant|
        if contestant['status'] == 'Winner'
          name_array = contestant['name'].split(' ')
          return name_array[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_key, season_info_array|
    season_info_array.each do |contestant|
      return contestant['name'] if contestant['occupation'] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_key, season_info_array|
    season_info_array.each do |contestant|
      count += 1 if contestant['hometown'] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_key, season_info_array|
    season_info_array.each do |contestant|
      return contestant['occupation'] if contestant['hometown'] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  age_average = 0
  data.each do |season_key, season_info_array|
    if season_key.to_s == season
      season_info_array.each do |contestant|
        age_array.push(contestant['age'].to_f)
      end
      age_average = age_array.sum / age_array.length
      return age_average.round
    end
  end
end
