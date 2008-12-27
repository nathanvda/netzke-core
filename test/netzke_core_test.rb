require 'test_helper'

require 'netzke-core'

# test widgets
module Netzke
  class Widget < Base
    interface :method_one, :method_two
    def initial_aggregatees
      {
        :nested_one => {:widget_class_name => 'NestedWidgetOne'},
        :nested_two => {:widget_class_name => 'NestedWidgetTwo'}
      }
    end
  
    def available_permissions
      %w(read update)
    end
    
    def initial_config
      {
        :config_uno => true,
        :config_dos => false
      }
    end
  end

  class NestedWidgetOne < Base
  end

  class NestedWidgetTwo < Base
    def initial_aggregatees
      {
        :nested => {:widget_class_name => 'DeepNestedWidget'}
      }
    end
  end

  class DeepNestedWidget < Base
  end
end

# Fake ActiveRecord
# module ActiveRecord
#   class Base
#     def find
#     end
#   end
# end

# Fake ActionController
# module ActionController
#   class Base
#   end
# end


# Logger don't open files
# class Logger
#   def initialize(*args)
#   end
# end

class NetzkeCoreTest < ActiveSupport::TestCase
  include Netzke
  
  def setup
    object = mock()
    object.stubs(:normalized_value)
    object.stubs(:normalized_value=)
    # object.stubs(:save!)
    NetzkePreference.stubs(:find).returns(object)
  end
  
  test "base class loaded" do
    assert_kind_of Netzke::Base, Netzke::Base.new
  end
  
  test "short widget class name" do
    assert_equal 'Widget', Widget.short_widget_class_name
  end
  
  test "interface" do
    widget_class = Widget
    assert_equal [:get_widget, :method_one, :method_two], widget_class.interface_points
  end

  test "aggregatees" do
    widget = Widget.new(:name => 'my_widget')
    
    # instantiate aggregatees
    nested_widget_one = widget.aggregatee_instance(:nested_one)
    nested_widget_two = widget.aggregatee_instance(:nested_two)
    deep_nested_widget = widget.aggregatee_instance(:nested_two__nested)
    
    # check the classes of aggregation instances
    assert_kind_of NestedWidgetOne, nested_widget_one
    assert_kind_of NestedWidgetTwo, nested_widget_two
    assert_kind_of DeepNestedWidget, deep_nested_widget
    
    # check the internal names of aggregation instances
    assert_equal 'my_widget', widget.id_name
    assert_equal 'my_widget__nested_one', nested_widget_one.id_name
    assert_equal 'my_widget__nested_two', nested_widget_two.id_name
    assert_equal 'my_widget__nested_two__nested', deep_nested_widget.id_name
  end
  
  test "permissions" do
    widget = Widget.new
    assert_equal({:read => true, :update => true}, widget.permissions)

    widget = Widget.new(:prohibit => :all)
    assert_equal({:read => false, :update => false}, widget.permissions)

    widget = Widget.new(:prohibit => :read)
    assert_equal({:read => false, :update => true}, widget.permissions)

    widget = Widget.new(:prohibit => [:read, :update])
    assert_equal({:read => false, :update => false}, widget.permissions)

    widget = Widget.new(:prohibit => :all, :allow => :read)
    assert_equal({:read => true, :update => false}, widget.permissions)

    widget = Widget.new(:prohibit => :all, :allow => [:read, :update])
    assert_equal({:read => true, :update => true}, widget.permissions)
  end
  
  test "default config" do
    widget = Widget.new
    assert_equal({:ext_config => {}, :config_uno => true, :config_dos => false}, widget.config)

    widget = Widget.new(:name => 'widget', :config_uno => false)
    assert_equal({:name => 'widget', :ext_config => {}, :config_uno => false, :config_dos => false}, widget.config)
  end
  
end
