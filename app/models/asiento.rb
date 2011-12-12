class Asiento < ActiveRecord::Base
  validates :fecha, :tipo, :monto, :presence => true
  belongs_to :categorium
  belongs_to :tipo
  belongs_to :cuentum
  self.per_page = 10
<<<<<<< HEAD
  scope :cuentas, lambda {|cuentum_id| where "'asientos'.'cuentum_id' = ?", cuentum_id}
=======
  scope :descen, order('fecha DESC, id DESC')
  scope :ascen, order('fecha ASC, id ASC')
>>>>>>> master
end
