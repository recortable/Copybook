# encoding: utf-8

bucolicas = Publisher.create!(:slug => 'bucolicas', :name => 'Las Bucólicas, Ediciones', :email => 'ediciones@bucolicas.cc',
                             :header_url => '/header.jpg')

elsur = Publication.create!(:publisher => bucolicas, :name => 'El sur, instrucciones de uso', :art_rl => '/elsur_portada.jpg')