# encoding: utf-8

dani = User.create!(:name => 'Dani', :rol => 'admin')
silvink = User.create!(:name => 'Silvink', :rol => 'admin')

bucolicas = Publisher.create!(:slug => 'bucolicas', :name => 'Las Bucólicas, Ediciones', :email => 'ediciones@bucolicas.cc',
                              :header_url => '/header.jpg')





elsur = Book.create!(:publisher => bucolicas, :slug => 'elsur-instrucciones', :name => 'El sur, instrucciones de uso', :art_url => '/elsur_portada.jpg')

['ITINERARIO DEL EMPODERAMIENTO POSSIBLE', 'ARQUETIPO DE UNA PLAGA',
'PUENTES QUE AMANECEN MIENTRAS DORMIMOS', 'EL DENTISTA ZURDO',
'LA SOMBRA DE ANIKO', '¿POR QUÉ NO HABLAMOS TODOS DE MARION?',
'LA VIDA AFRICANA', 'LA VIDA LONDINENSE', 'MEDIANA', 'SAN JUAN',
'PRIMAVERAS EXQUISITAS', 'MANO'].each do |name|
  Chapter.create!(:publisher => bucolicas, :parent => elsur, :name => name)
end
