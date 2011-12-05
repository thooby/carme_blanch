class Asiento < ActiveRecord::Base
  validates :fecha, :tipo, :monto, :presence => true
  belongs_to :categorium
  belongs_to :tipo
end
