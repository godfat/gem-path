
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
    if gem_path = find_gem_path(name)
      say(gem_path)

    # find the require file
    elsif path = Gem.find_files("#{name}.rb").first
      # favor gem first (e.g. rake gem)
      if gem_path = Gem.path.find{ |p|
           break $1 if path =~ %r{(#{p}(/[^/]+){2})}
         }
        say(gem_path)
      else
        say(path)
      end
    else
      alert_error("#{name} not found")
      terminate_interaction(1)
    end
  end

  def find_gem_path name
    gem_path = Gem.path.find do |base|
      gem_path = $LOAD_PATH.find do |path|
        platforms = [
          'ruby',
          sitearch,
          *univeral_darwin
        ].map(&Regexp.method(:escape)).join('|')

        gem_path = path[
          %r{\A#{base}/
             (?:bundler/)?
             gems/
             #{name}\-[^/-]+(?:\-(?:#{platforms}))?/
          }x
        ]
        break gem_path if gem_path
      end
      break gem_path if gem_path
    end
    gem_path.chop if gem_path
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

  def sitearch
    @sitearch ||= RbConfig::CONFIG['sitearch']
  end

  def univeral_darwin
    if sitearch.include?('darwin')
      'universal-darwin'
    end
  end
end
