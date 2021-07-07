require 'pry'
def get_first_name_of_season_winner(data, season)
  winner_hash = data[season].select{|contestant| contestant['status'] == 'Winner'}
  winner_hash[0]["name"].split.first
  end



def get_contestant_name(data, occupation)
  name = 'none match'
  data.each do |season, season_array|
    season_array.each do |info|

      if info["occupation"] == occupation
        name = info["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, season_array|
    season_array.each do |info_hash|
      if info_hash['hometown'] == hometown
        count +=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, actor|
     actor.each do |index|
       if index["hometown"] == hometown
         return index["occupation"]
       end
     end
   end
end


def get_average_age_for_season(data, season)
  age_array = []
  age_total = 0
  data[season].each do |index|
      age_array<< index['age']
    end
  age_array.each do |age|
    age_total += age.to_f
  end
  x = age_total/age_array.length
  x.round

end

0
