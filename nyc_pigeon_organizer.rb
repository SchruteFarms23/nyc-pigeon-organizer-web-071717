require 'pry'

def nyc_pigeon_organizer(data)
	new_hash = {}
	data.each do |attr,value|
		value.each do |stat,pigeon|
			pigeon.each do |name|
				new_hash[name] = {} unless new_hash[name]
				if new_hash[name][attr]
					new_hash[name][attr] << stat.to_s
				else
					new_hash[name][attr] = [stat.to_s]
				end
			end
		end
	end
	new_hash
end
