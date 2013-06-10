class Project < Thor
  include Thor::Actions

  def self.source_root
    File.dirname(__FILE__)
  end

  desc "create TEMPLATE ID NAME", "Create the project boilerplate from TEMPLATE using ID and NAME"
  method_option :shortdesc, :aliases => "-sd", :desc => "Short Description"
  def create(template, id, name)
    puts "template: #{template}"
    @template=template
    puts "id:       #{id}"
    @id=id
    puts "name:     #{name}"
    @name=name
    short_description = options[:shortdesc]
    if short_description
      puts "short description: #{short_description}"
    else
      puts "short description: #{name} is a #{template}"
    end
    Dir.glob("../templates/#{template}/*.tt") do |f|
      output = File.basename(f, '.tt')
      puts "template: #{f}"
      puts "output:   #{id}/#{output}"
      template(f, "#{id}/#{output}")
    end
  end
end