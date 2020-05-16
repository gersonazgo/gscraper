require_relative 'lib/gscraper'

first_page = 1
last_page = 2
crawl_url = 'https://pubmed.ncbi.nlm.nih.gov/?term=covid&filter=species.humans&size=200'

(first_page..last_page).each do |page|
  @gscraper.visit "#{crawl_url}&page=#{page}"
  @gscraper.click_link_or_button 'Save'
  @gscraper.select 'CSV', from: 'Format'
  @gscraper.click_link_or_button 'Create file'
end

