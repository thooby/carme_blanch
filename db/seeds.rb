# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
require 'digest' 
new_user = User.create([{
  :id => 1,
  :email => 'admin', 
  :password => 'admin', 
  :password_confirmation => 'admin',
  :role => 'admin'}])  
  new_user.save
  User.create(:email => "admin", :role => "admin@example.com")
var_confs = VarConf.create([{:id => 1, :titulo =>'Versión genérica', :name_foto => 'carme.gif'}])
tipos = Tipo.create([{:id =>1, :descripcion => 'Ingreso'},{:id => 2, :descripcion => 'Gasto'}])