# encoding: utf-8

dani = User.create!(:name => 'Dani', :rol => 'admin')
silvink = User.create!(:name => 'Silvink', :rol => 'admin')

bucolicas = Publisher.create!(:slug => 'bucolicas', :name => 'Autoediciones Bucólicas',
                              :email => 'ediciones@bucolicas.cc', :license_id => 1,
                              :color_body => '#FFFFFF', :color_text => '#00000', :color_links =>'#00C',
                              :color_background => '#EFEFEF')


elsur = Book.create!(:publisher => bucolicas, :slug => 'elsur-instrucciones',
                     :name => 'El sur, instrucciones de uso', :description => 'La luz del sur. El buen calor. La cerveza.\n12 Relatos de Silvia Nanclares\n12 Collages de Enrique Lafuente\nPrólogo de Carolina León')

['ITINERARIO DEL EMPODERAMIENTO POSSIBLE', 'ARQUETIPO DE UNA PLAGA',
 'PUENTES QUE AMANECEN MIENTRAS DORMIMOS', 'EL DENTISTA ZURDO',
 'LA SOMBRA DE ANIKO', '¿POR QUÉ NO HABLAMOS TODOS DE MARION?',
 'LA VIDA AFRICANA', 'LA VIDA LONDINENSE', 'MEDIANA', 'SAN JUAN',
 'PRIMAVERAS EXQUISITAS', 'MANO'].each do |name|
  Chapter.create!(:publisher => bucolicas, :parent => elsur, :name => name)
end
