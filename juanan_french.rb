###############################################################################
# START HERE: Tutorial for scraping pages behind form, using the
# very powerful mechanize library. Documentation is here: 
# http://mechanize.rubyforge.org/mechanize/
###############################################################################
require 'rubygems'
require 'nokogiri'
require 'mechanize'
require 'open-uri'


# We're scraping the National Lottery grants form. You can
# replace this with the URL you're interested in.
url = "http://www.legifrance.gouv.fr/initRechJuriConst.do"
agent = Mechanize.new
page = agent.get(url)

#--------------------------------------------------------------------------------------
# Loop through all the forms on the page, and print some information about each one.
# This should work with your own URL.
#--------------------------------------------------------------------------------------
page.forms.each do |f|
  puts "--------------------"
  puts "Form name : " + f.name
  # loop through the controls in the form
  puts "Controls:"
  f.fields.each do |field|
    if field.node["type"]
      puts " - (name, type, value) = ('#{field.node["name"]}', '#{field.node["type"]}', '#{field.node["value"]}')"
    elsif field.node.name == 'select'
      puts " - (name, type, value) = ('#{field.node["name"]}', '#{field.node.name}', '#{field.options[0]}')"
      # loop through all the options in any select (drop-down) controls
      field.options.each do |opt|
         puts " - - - (value) = #{opt}"
      end
    else
      puts " - (type) ="
    end
  end
end
##--------------------------------------------------------------------------------------
## Next, let's submit the main form.
##--------------------------------------------------------------------------------------
## First, tell mechanize which form to submit.
#page.form_with(:name => 'aspnetForm') do |f|
#  # Set the fields: here we're looking for grants by Arts Council England in London
#  f["ctl00$phMainContent$lbDistributingBody"] = ["AE"]
#  f["ctl00$phMainContent$lbGeographicalArea"] = ["London"]
  # and submit the form
#  search_results = agent.submit(f, f.buttons.first)
  # We can now start processing it as normal
# h1_tags = Nokogiri::HTML(search_results.body).css('span#ctl00_phMainContent_grantSearchResults_labelResultsCount')
#  puts "Number of results =  #{h1_tags.text}"
# end
###############################################################################
# START HERE: Tutorial for scraping pages behind form, using the
# very powerful mechanize library. Documentation is here: 
# http://mechanize.rubyforge.org/mechanize/
###############################################################################
require 'rubygems'
require 'nokogiri'
require 'mechanize'
require 'open-uri'


# We're scraping the National Lottery grants form. You can
# replace this with the URL you're interested in.
url = "http://www.legifrance.gouv.fr/initRechJuriConst.do"
agent = Mechanize.new
page = agent.get(url)

#--------------------------------------------------------------------------------------
# Loop through all the forms on the page, and print some information about each one.
# This should work with your own URL.
#--------------------------------------------------------------------------------------
page.forms.each do |f|
  puts "--------------------"
  puts "Form name : " + f.name
  # loop through the controls in the form
  puts "Controls:"
  f.fields.each do |field|
    if field.node["type"]
      puts " - (name, type, value) = ('#{field.node["name"]}', '#{field.node["type"]}', '#{field.node["value"]}')"
    elsif field.node.name == 'select'
      puts " - (name, type, value) = ('#{field.node["name"]}', '#{field.node.name}', '#{field.options[0]}')"
      # loop through all the options in any select (drop-down) controls
      field.options.each do |opt|
         puts " - - - (value) = #{opt}"
      end
    else
      puts " - (type) ="
    end
  end
end
##--------------------------------------------------------------------------------------
## Next, let's submit the main form.
##--------------------------------------------------------------------------------------
## First, tell mechanize which form to submit.
#page.form_with(:name => 'aspnetForm') do |f|
#  # Set the fields: here we're looking for grants by Arts Council England in London
#  f["ctl00$phMainContent$lbDistributingBody"] = ["AE"]
#  f["ctl00$phMainContent$lbGeographicalArea"] = ["London"]
  # and submit the form
#  search_results = agent.submit(f, f.buttons.first)
  # We can now start processing it as normal
# h1_tags = Nokogiri::HTML(search_results.body).css('span#ctl00_phMainContent_grantSearchResults_labelResultsCount')
#  puts "Number of results =  #{h1_tags.text}"
# end
###############################################################################
# START HERE: Tutorial for scraping pages behind form, using the
# very powerful mechanize library. Documentation is here: 
# http://mechanize.rubyforge.org/mechanize/
###############################################################################
require 'rubygems'
require 'nokogiri'
require 'mechanize'
require 'open-uri'


# We're scraping the National Lottery grants form. You can
# replace this with the URL you're interested in.
url = "http://www.legifrance.gouv.fr/initRechJuriConst.do"
agent = Mechanize.new
page = agent.get(url)

#--------------------------------------------------------------------------------------
# Loop through all the forms on the page, and print some information about each one.
# This should work with your own URL.
#--------------------------------------------------------------------------------------
page.forms.each do |f|
  puts "--------------------"
  puts "Form name : " + f.name
  # loop through the controls in the form
  puts "Controls:"
  f.fields.each do |field|
    if field.node["type"]
      puts " - (name, type, value) = ('#{field.node["name"]}', '#{field.node["type"]}', '#{field.node["value"]}')"
    elsif field.node.name == 'select'
      puts " - (name, type, value) = ('#{field.node["name"]}', '#{field.node.name}', '#{field.options[0]}')"
      # loop through all the options in any select (drop-down) controls
      field.options.each do |opt|
         puts " - - - (value) = #{opt}"
      end
    else
      puts " - (type) ="
    end
  end
end
##--------------------------------------------------------------------------------------
## Next, let's submit the main form.
##--------------------------------------------------------------------------------------
## First, tell mechanize which form to submit.
#page.form_with(:name => 'aspnetForm') do |f|
#  # Set the fields: here we're looking for grants by Arts Council England in London
#  f["ctl00$phMainContent$lbDistributingBody"] = ["AE"]
#  f["ctl00$phMainContent$lbGeographicalArea"] = ["London"]
  # and submit the form
#  search_results = agent.submit(f, f.buttons.first)
  # We can now start processing it as normal
# h1_tags = Nokogiri::HTML(search_results.body).css('span#ctl00_phMainContent_grantSearchResults_labelResultsCount')
#  puts "Number of results =  #{h1_tags.text}"
# end
###############################################################################
# START HERE: Tutorial for scraping pages behind form, using the
# very powerful mechanize library. Documentation is here: 
# http://mechanize.rubyforge.org/mechanize/
###############################################################################
require 'rubygems'
require 'nokogiri'
require 'mechanize'
require 'open-uri'


# We're scraping the National Lottery grants form. You can
# replace this with the URL you're interested in.
url = "http://www.legifrance.gouv.fr/initRechJuriConst.do"
agent = Mechanize.new
page = agent.get(url)

#--------------------------------------------------------------------------------------
# Loop through all the forms on the page, and print some information about each one.
# This should work with your own URL.
#--------------------------------------------------------------------------------------
page.forms.each do |f|
  puts "--------------------"
  puts "Form name : " + f.name
  # loop through the controls in the form
  puts "Controls:"
  f.fields.each do |field|
    if field.node["type"]
      puts " - (name, type, value) = ('#{field.node["name"]}', '#{field.node["type"]}', '#{field.node["value"]}')"
    elsif field.node.name == 'select'
      puts " - (name, type, value) = ('#{field.node["name"]}', '#{field.node.name}', '#{field.options[0]}')"
      # loop through all the options in any select (drop-down) controls
      field.options.each do |opt|
         puts " - - - (value) = #{opt}"
      end
    else
      puts " - (type) ="
    end
  end
end
##--------------------------------------------------------------------------------------
## Next, let's submit the main form.
##--------------------------------------------------------------------------------------
## First, tell mechanize which form to submit.
#page.form_with(:name => 'aspnetForm') do |f|
#  # Set the fields: here we're looking for grants by Arts Council England in London
#  f["ctl00$phMainContent$lbDistributingBody"] = ["AE"]
#  f["ctl00$phMainContent$lbGeographicalArea"] = ["London"]
  # and submit the form
#  search_results = agent.submit(f, f.buttons.first)
  # We can now start processing it as normal
# h1_tags = Nokogiri::HTML(search_results.body).css('span#ctl00_phMainContent_grantSearchResults_labelResultsCount')
#  puts "Number of results =  #{h1_tags.text}"
# end
