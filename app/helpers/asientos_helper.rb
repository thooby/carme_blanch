module AsientosHelper
  def estado_caja(asientos)
    @caja=0
    asientos.each do |asiento|
      if asiento.tipo_id == 1 then
        @caja += asiento.monto.to_i
      elsif asiento.tipo_id == 2 then
        @caja -= asiento.monto.to_i
      end
    end
    @caja
  end     
end
