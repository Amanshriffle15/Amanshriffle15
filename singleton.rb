require 'singleton'
class NotSingleton
    # 'initialize' is called everytime an instance is created
    def initialize
      puts 'This will be printed many times'
    end
  end
  
  class MySingleton
    include Singleton
  
    # 'initialize' is called everytime an instance is created
    def initialize
      puts 'This will be printed once'
    end
  end
  
  NotSingleton.new # => 'This will be printed many times' 
  NotSingleton.new # => 'This will be printed many times' 
  NotSingleton.new # => 'This will be printed many times' 
  
  MySingleton.instance # => 'This will be printed once'
  MySingleton.instance # Nothing is printed
  MySingleton.instance # Nothing is printed