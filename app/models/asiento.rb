class Asiento < ActiveRecord::Base
  belongs_to :categorium
  belongs_to :tipo
end
