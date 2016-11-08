require 'csv'

csv_text = File.read(Rails.root.join('db','got-export.csv'))
csv =  CSV.parse(csv_text, headers:true)


def get_unique_houses(csv)
  houses = []
  csv.each { |row|
    record = row.to_hash
    houses << record['allegiances']
  }
  houses.uniq
end

unique_houses = get_unique_houses(csv)
characters = csv.map { |e| e.to_hash }

unique_houses.each { |house|
  banner = House.create(name:house)
  members = characters.select { |character| character['allegiances'] == house
  }
  members.each { |member|
    banner.characters.create(name: member['name'],
      gender: member['gender'],
      culture: member['culture'],
      born: member['born'],
      died: member['died'],
      title: member['title'],
      alias: member['alias']
    )
  }

}

#leaving behind characters with no house in the bad data

puts Character.all.count
puts House.all.count
