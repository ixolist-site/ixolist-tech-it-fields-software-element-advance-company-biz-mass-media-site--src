module Jekyll
  class TagPageGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.tags.each do |tag_name, tag_data|
        path = File.join('tags', tag_name["name"].to_s)
        FileUtils.mkdir_p(File.join(site.dest, path))
        site.pages << TagPage.new(site, site.source, path, tag_name, tag_data)
      end
    end
  end

  class TagPage < Page
    def initialize(site, base, dir, tag_name, tag_data)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, 'templates/_layouts'), 'tag_page.html')
      self.data['tag'] = tag_name["name"].to_s
      # Удалите следующую строку, если у вас нет отдельного поля 'lang' для тегов
      self.data['lang'] = tag_name['lang'].to_s
      self.data['title'] = 'Tags - ' + tag_name['name'].to_s
    end
  end
end
