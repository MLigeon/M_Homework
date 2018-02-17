require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

def display_contacts(contacts)
  contacts.map do |name , phone|
  puts "#{name} => #{phone}"
end

display_contacts

end
