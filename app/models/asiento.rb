class Asiento < ActiveRecord::Base
  validates :fecha, :tipo, :monto, :presence => true
  belongs_to :categorium
  belongs_to :tipo
  self.per_page = 10
end
