require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

def show_contact
  read_contacts.map{ |contact| { contact[:name] => contact[:phone] } }
end

def include_1
  contact = read_contacts.select {|x| x[:"phone"].include?("+1")}
end


puts show_contact
puts include_1
