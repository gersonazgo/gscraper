require_relative 'lib/gscrapper'

first_page = 1
last_page = 2
search_url = "https://pubmed.ncbi.nlm.nih.gov/?term=covid&filter=species.humans&size=200"

(first_page..last_page).each do |page|
  @gscrapper.visit "#{search_url}&page=#{page}"
  @gscrapper.click_link_or_button 'Save'
  @gscrapper.select 'CSV', from: 'Format'
  @gscrapper.click_link_or_button 'Create file'
end

