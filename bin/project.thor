class Project < Thor
  desc "create TEMPLATE ID NAME", "Create the project boilerplate from TEMPLATE using ID and NAME"
  method_option :shortdesc, :aliases => "-sd", :desc => "Short Description"
  def create(template, id, name)
    puts "template: #{template}"
    puts "id:       #{id}"
    puts "name:     #{name}"
    short_description = options[:shortdesc]
    if short_description
      puts "short description: #{short_description}"
    else
      puts "short description: #{name} is a #{template}"
    end
  end
end