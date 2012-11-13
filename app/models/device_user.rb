class DeviceUser
  include Mongoid::Document
    field :id_dispositivo, type: String
    field :id_user, type: String

    attr_accessible :id_dispositivo, :id_user

end
