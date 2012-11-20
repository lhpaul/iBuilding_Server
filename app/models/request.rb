class Request
  include Mongoid::Document
  field :ip, type: String
  field :date, type: DateTime
end
