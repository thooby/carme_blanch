class Asiento < ActiveRecord::Base
  validates :fecha, :tipo, :monto, :presence => true
  belongs_to :categorium
  belongs_to :tipo
  belongs_to :cuentum
  self.per_page = 10
  scope :cuentas, lambda {|cuentum_id| where "'asientos'.'cuentum_id' = ?", cuentum_id}
  scope :descen, order('fecha DESC, id DESC')
  scope :ascen, order('fecha ASC, id ASC')
  scope :sel_trozo,lambda {|fech1,fech2,categorium_id,cuentum_id,tipo_id| where("(date('asientos'.'fecha') >= ?) and 
                                              (date('asientos'.'fecha') <= ?) and 
                                              ('asientos'.'categorium_id' = ?) and
                                              ('asientos'.'cuentum_id' = ?) and
                                              ('asientos'.'tipo_id' = ?)",
                                               fech1,fech2,categorium_id,cuentum_id,tipo_id)}
  
  @mes_nom = {
              1 => "Enero",
              2 => "Febrero",
              3 => "Marzo",
              4 => "Abril",
              5 => "Mayo",
              6 => "Junio",
              7 => "Julio",
              8 => "Agosto",
              9 => "Septiembre",
              10 => "Octubre",
              11 => "Noviembre",
              12 => "Diciembre"
             }
                                              
  def self.informe_hasta_dia
    gap = Date.today
    salida = ["Informe del mes de #{@mes_nom[gap.month]} hasta el dia #{gap.day}"]
    cates = Categorium.all.map{|x| [x.id,x.descripcion]}
    cuentas = Cuentum.all.map{|x| [x.id,x.nombre]}
    tipos = Tipo.all.map{|x| [x.id,x.descripcion]} 
    n = 0

    cuentas.each do |cuenta|
          @suma_total = 0
      salida  << "<h2>Cuenta #{cuenta[1]}</h2>"  
      tipos.each do |tipo| 
        suma = 0
        salida  << "<h3>#{tipo[1]}</h3>"
        cates.each do |cate|
          item = cate[1].capitalize
          valor = self.sel_trozo(gap.at_beginning_of_month,gap,cate[0],cuenta[0],tipo[0]).sum(:monto)             
          if (valor != 0)
            suma += valor
            z = [item,valor]
            salida <<z
          end
        end
        item = "<b>Sub total #{tipo[1].downcase}</b>"
        z = [item,suma]
        if tipo[1]=='Ingreso'
          @suma_total += suma
        elsif tipo[1]=='Gasto'
          @suma_total -= suma
        end
        salida <<z
      end
      salida << ['<span class="green">Saldo mensual</span>',@suma_total]
    end
    salida
  end
end
