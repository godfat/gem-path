
class Gem::Commands::PathCommand < Gem::Command
  def description
    'Find the path for a given gem or require path'
  end

  def initialize
    super('path', description)
  end

  def execute
    name, version = extract!(options[:args])

    # find the exact gem
    if path_gem = find_path_gem(name)
      say(path_gem)

    # find the require file
    elsif path = Gem.find_files("#{name}.rb").first
      # favor gem first (e.g. rake gem)
      if path_gem = Gem.path.find{ |p|
           break $1 if path =~ %r{(#{p}(/[^/]+){2})}
         }
        say(path_gem)
      else
        say(path)
      end
    else
      alert_error("#{name} not found")
      terminate_interaction(1)
    end
  end

  private
  def extract! args
    gem(*args)
    args
  rescue LoadError => e
    if args.size > 1 # terminate if we're asking a specific gem version
      alert_error(e.message)
      terminate_interaction(1)
    else
      args # this could be a require path, go on searching
    end
  end

  def find_path_gem name
    path_gem = Gem.path.find do |base|
      path_gem = $LOAD_PATH.find do |path|
                   path_gem = path[%r{#{base}/gems/#{name}\-[^/-]+/}]
                   break path_gem if path_gem
                 end
      break path_gem if path_gem
    end
    path_gem[0...-1] if path_gem
  end
end
