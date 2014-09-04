# Curso web scraping básico

html = ScraperWiki.scrape("http://web.archive.org/web/20110514112442/http://unstats.un.org/unsd/demographic/products/socind/education.htm")
puts html


puts "*****************Sacamos todas las tablas del html**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table').each do |row|
  puts row
end


puts "*****************Sacamos solo la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]').each do |row|
  puts row
end

puts "*****************Sacamos solo las filas de la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr').each do |row|
  puts row
end


puts "*****************Sacamos solo las filas de la tabla del html que nos interesa que contengan datos**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|
  puts row
end


puts "*****************Sacamos la primera columna de la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|
  puts row.css('td')[0].text
  puts row.css('td')[1]
  puts row.css('td')[2]
  puts row.css('td')[3]
  puts row.css('td')[4]
end



puts "*****************Guardamos los datos en variables**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|   
  $pais= row.css('td')[0].text   
  $fecha= row.css('td')[1].text   
  $dato= row.css('td')[4].text
  puts $pais
  puts $fecha
  puts $dato
end



puts "*****************Guardamos los datos en la base de datos de scraperwiki**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|   
  $pais= row.css('td')[0].text   
  $fecha= row.css('td')[1].text   
  $dato= row.css('td')[4].text
  puts $pais
  puts $fecha
  puts $dato
  record = {}        
  record['Pais']= $pais
  record['Fecha'] = $fecha
  record['Dato'] = $dato
  ScraperWiki.save_sqlite(["Pais"], record)
end


# Curso web scraping básico

html = ScraperWiki.scrape("http://web.archive.org/web/20110514112442/http://unstats.un.org/unsd/demographic/products/socind/education.htm")
puts html


puts "*****************Sacamos todas las tablas del html**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table').each do |row|
  puts row
end


puts "*****************Sacamos solo la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]').each do |row|
  puts row
end

puts "*****************Sacamos solo las filas de la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr').each do |row|
  puts row
end


puts "*****************Sacamos solo las filas de la tabla del html que nos interesa que contengan datos**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|
  puts row
end


puts "*****************Sacamos la primera columna de la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|
  puts row.css('td')[0].text
  puts row.css('td')[1]
  puts row.css('td')[2]
  puts row.css('td')[3]
  puts row.css('td')[4]
end



puts "*****************Guardamos los datos en variables**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|   
  $pais= row.css('td')[0].text   
  $fecha= row.css('td')[1].text   
  $dato= row.css('td')[4].text
  puts $pais
  puts $fecha
  puts $dato
end



puts "*****************Guardamos los datos en la base de datos de scraperwiki**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|   
  $pais= row.css('td')[0].text   
  $fecha= row.css('td')[1].text   
  $dato= row.css('td')[4].text
  puts $pais
  puts $fecha
  puts $dato
  record = {}        
  record['Pais']= $pais
  record['Fecha'] = $fecha
  record['Dato'] = $dato
  ScraperWiki.save_sqlite(["Pais"], record)
end


# Curso web scraping básico

html = ScraperWiki.scrape("http://web.archive.org/web/20110514112442/http://unstats.un.org/unsd/demographic/products/socind/education.htm")
puts html


puts "*****************Sacamos todas las tablas del html**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table').each do |row|
  puts row
end


puts "*****************Sacamos solo la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]').each do |row|
  puts row
end

puts "*****************Sacamos solo las filas de la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr').each do |row|
  puts row
end


puts "*****************Sacamos solo las filas de la tabla del html que nos interesa que contengan datos**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|
  puts row
end


puts "*****************Sacamos la primera columna de la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|
  puts row.css('td')[0].text
  puts row.css('td')[1]
  puts row.css('td')[2]
  puts row.css('td')[3]
  puts row.css('td')[4]
end



puts "*****************Guardamos los datos en variables**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|   
  $pais= row.css('td')[0].text   
  $fecha= row.css('td')[1].text   
  $dato= row.css('td')[4].text
  puts $pais
  puts $fecha
  puts $dato
end



puts "*****************Guardamos los datos en la base de datos de scraperwiki**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|   
  $pais= row.css('td')[0].text   
  $fecha= row.css('td')[1].text   
  $dato= row.css('td')[4].text
  puts $pais
  puts $fecha
  puts $dato
  record = {}        
  record['Pais']= $pais
  record['Fecha'] = $fecha
  record['Dato'] = $dato
  ScraperWiki.save_sqlite(["Pais"], record)
end


# Curso web scraping básico

html = ScraperWiki.scrape("http://web.archive.org/web/20110514112442/http://unstats.un.org/unsd/demographic/products/socind/education.htm")
puts html


puts "*****************Sacamos todas las tablas del html**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table').each do |row|
  puts row
end


puts "*****************Sacamos solo la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]').each do |row|
  puts row
end

puts "*****************Sacamos solo las filas de la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr').each do |row|
  puts row
end


puts "*****************Sacamos solo las filas de la tabla del html que nos interesa que contengan datos**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|
  puts row
end


puts "*****************Sacamos la primera columna de la tabla del html que nos interesa**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|
  puts row.css('td')[0].text
  puts row.css('td')[1]
  puts row.css('td')[2]
  puts row.css('td')[3]
  puts row.css('td')[4]
end



puts "*****************Guardamos los datos en variables**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|   
  $pais= row.css('td')[0].text   
  $fecha= row.css('td')[1].text   
  $dato= row.css('td')[4].text
  puts $pais
  puts $fecha
  puts $dato
end



puts "*****************Guardamos los datos en la base de datos de scraperwiki**********************************"
require 'nokogiri'
doc = Nokogiri::HTML(html, nil, 'utf-8')
doc.search('table[@align="left"]> tr[@class="tcont"]').each do |row|   
  $pais= row.css('td')[0].text   
  $fecha= row.css('td')[1].text   
  $dato= row.css('td')[4].text
  puts $pais
  puts $fecha
  puts $dato
  record = {}        
  record['Pais']= $pais
  record['Fecha'] = $fecha
  record['Dato'] = $dato
  ScraperWiki.save_sqlite(["Pais"], record)
end


