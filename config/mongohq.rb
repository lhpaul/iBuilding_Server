# gem install mongo bson_ext json
require 'mongo'
require 'uri'
require 'json'

def get_connection
  return @db_connection if @db_connection
  db = URI.parse(ENV['MONGOHQ_URL'])
  db_name = db.path.gsub(/^\//, '')
  @db_connection = Mongo::Connection.new(db.host, db.port).db(db_name)
  @db_connection.authenticate(db.user, db.password) unless (db.user.nil? || db.user.nil?)
  @db_connection
end

db = get_connection

puts "Collections"
puts "==========="
collections = db.collection_names
puts collections

last_collection = collections[-1]
coll = db.collection(last_collection)

# just show 5
docs = coll.find().limit(5)

puts "\nDocuments in #{last_collection}"
puts "  #{docs.count()} documents(s) found"
puts "=========================="
docs.each{ |doc| puts doc.to_json }