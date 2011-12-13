module AsientosHelper
  def estado_caja(asientos)
    @caja = 0
    @lista_caja = Hash.new
    asientos.each do |asiento|
      if asiento.tipo_id == 1 then
        @caja += asiento.monto.to_d
      elsif asiento.tipo_id == 2 then
        @caja -= asiento.monto.to_d
      end
      caja = @caja
      @lista_caja[asiento.id] = caja
    end
      salida_caja = [@caja, @lista_caja]
  end
   
end
