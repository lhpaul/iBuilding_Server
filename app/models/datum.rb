class Datum
  include Mongoid::Document
  field :id_dispositivo, type: Integer
  field :tipo, type: String
  field :data, type: String
  field :date, type: DateTime

  attr_accessible :id_dispositivo, :tipo, :data, :date

  
end
