require 'test_helper'

class I18nScopeTest < Test::Unit::TestCase
  
  def test_scoped_empty
    scope = I18n.scoped()
    assert_equal "", scope.translation_key
    
    scope2 = scope.something
    assert_equal "something", scope2.translation_key
  end
  
  def test_scoped_single_key
    scope = I18n.scoped(:abc)
    assert_equal "abc", scope.translation_key
  end
  
  def test_scoped_multiple_key
    scope = I18n.scoped([:abc, :def])
    assert_equal "abc.def", scope.translation_key
  end
  
  def test_chaining
    scope = I18n.scoped([:abc]).def.ghi.jkl
    assert_equal "abc.def.ghi.jkl", scope.translation_key
  end
  
  def test_chaining_is_not_in_place
    empty = I18n.scoped()
    
    scope1 = empty.abc.def
    scope2 = empty.ghi.jkl
    scope3 = scope1.mno.pqr
    
    assert_equal "",                empty.translation_key
    assert_equal "abc.def",         scope1.translation_key
    assert_equal "ghi.jkl",         scope2.translation_key
    assert_equal "abc.def.mno.pqr", scope3.translation_key
  end
  
  def test_method_missing_is_reasonable
    base = I18n.scoped(:base)
    
    assert_raise(NoMethodError) do
      base + "something with a plus"
    end
    
    assert_raise(NoMethodError) do
      base.some_question?
    end
    
    assert_raise(NoMethodError) do
      base.some_bang!
    end
    
    assert u = base._underscores_are_ok_
    assert_equal "base._underscores_are_ok_", u.translation_key
  end
  
end
    