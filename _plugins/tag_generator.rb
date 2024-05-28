module Jekyll
  class TagPageGenerator < Generator
    safe true
    priority :low

    def generate(site)
      site.tags.each do |tag_name, tag_data|
        generate_tag_page(site, tag_name, tag_data, 'tags-list', 'tag_page_list.html')
        generate_tag_page(site, tag_name, tag_data, 'tags-cloud', 'tag_page_cloud.html')
      end
    end

    private

    def generate_tag_page(site, tag_name, tag_data, page_type, template)
      path = File.join(page_type, tag_name["name"].to_s)
      FileUtils.mkdir_p(File.join(site.dest, path))
      site.pages << TagPage.new(site, site.source, path, tag_name, tag_data, template)
    end
  end

  class TagPage < Page
    def initialize(site, base, dir, tag_name, tag_data, template)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      self.process(@name)
      self.read_yaml(File.join(base, 'templates/_layouts'), template)
      self.data['tag'] = tag_name["name"].to_s
      self.data['lang'] = tag_name['lang'].to_s
      self.data['title'] = 'Tags - ' + tag_name["name"].to_s
    end
  end
end
