require 'i18n'

module I18n
  
  def self.scoped(scope=nil)
    I18n::Scope.new(scope)
  end
  
  class Scope
    
    def initialize(scope=[])
      @scope = Array(scope)
    end
    attr_reader :scope
    
    def method_missing(method_name, *args, &block)
      # we only match something that looks like a key
      if method_name.to_s =~ /^[A-Za-z0-9_]+$/
        self.scoped(method_name)
      else
        super(method_name, *args, &block)
      end
    end
    
    def t(value)
      I18n.t(value, :scope => self.scope)
    end
    
    def to_s
      I18n.t(translation_key)
    end
    
    def scoped(key)
      next_scope = self.scope.dup
      next_scope << key
      I18n::Scope.new(next_scope)
    end
    
    def translation_key
      self.scope.map{|s| s.to_s }.join(".")
    end
    
  end
  
end
      