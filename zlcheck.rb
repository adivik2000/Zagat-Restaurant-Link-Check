require 'rubygems'
require 'scrubyt'

google_data = Scrubyt::Extractor.define do
  fetch 'http://www.zagat.com/Search/Results.aspx?Nf=LatLong|GCLT+25.773899,-80.193901+20&N=120&VID=8&Nr=OR%28Item+Status:Active,Item+Status:Temporarily+Closed%29&Ns=Rest%20Food%20Raw|1'
  
  #link_title "//a[@class='l']", :write_text => true do
    #link_url
  #end

  name 'Palme d\'Or'
end

google_data.to_xml.write($stdout, 1);

#p google_data.to_hash
