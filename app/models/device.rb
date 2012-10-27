class Device
  include Mongoid::Document
  field :name, type: String
  field :ip, type: String
end
