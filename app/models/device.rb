class Device
  include Mongoid::Document
  field :name, type: String
  field :ip, type: String
  field :info, type: String

  attr_accessible :name, :ip

#checkear si existe el permiso
  def permisos?(id)
    if  DeviceUser.where(id_user: id.to_s , id_dipositivo: self.id.to_s).count > 0

      return true
    end

    return self.id

  end
end



