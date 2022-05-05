class ScrapeAllrecipesService
  def initialize(keyword)
    @keyword = keyword
    @view = View.new
  end

  def call
    url = "https://www.allrecipes.com/search/results/?wt=#{@keyword}"
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    imports = []
    doc.search('.fixed-recipe-card').first(5).each do |card|
      name = card.search('h3').text.strip
      link = card.search('h3 a').first.attribute('href').value
      imports << { name: name, link: link }
    end
    @view.display_recipe_names(imports.map { |import| import[:name] })
    index = @view.ask_index
    url = imports[index][:link]
    doc = Nokogiri::HTML(open(url), nil, 'utf-8')
    name = imports[index][:name]
    description = doc.search('.recipe-summary').text.strip
    prep_time = doc.search('.recipe-meta-item-body')[2].text.strip
    rating = doc.search('.review-star-text').first.text.strip.match(/Rating: (\d\.\d\d) stars/)[1].to_f.round
    return Recipe.new(name, description, rating, prep_time)
  end
end
