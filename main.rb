require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

def show_contact
  read_contacts.map{ |contact| { contact[:name] => contact[:phone] } }
end

def include_1
  phone_nr = read_contacts.select {|x| x[:"phone"].include?("+1")}
end

def include_org
  org = read_contacts.select {|x| x[:"email"].include?("org")}
end

def count_1
  include_1.reduce(0) do |sum, element|
  sum = include_1.count
 end
end


def count_org
   include_org.reduce(0) do |sum, element|
   sum = include_org.count
  end
end


puts show_contact
puts
puts include_1
puts
puts include_org
puts
puts count_1
puts
puts count_org
