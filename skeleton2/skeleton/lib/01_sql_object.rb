require_relative 'db_connection'
require 'active_support/inflector'
# NB: the attr_accessor we wrote in phase 0 is NOT used in the rest
# of this project. It was only a warm up.

class SQLObject
  def self.columns
    # ...
    #table = self.table_name
    arr = DBConnection.execute2(<<-SQL)
      SELECT
        *
      FROM
        #{self.table_name}
    SQL
    arr[0].map {|ele| ele.to_sym}
  end

  def self.finalize!

  end

  def self.table_name=(table_name)
    # ...
    table = self.table_name
    table = table_name
  end

  def self.table_name
    # ...
    # name = self.downcase.split
    # name = name.join("", "_")
    name = ("#{self}s").downcase.split.join("_")
  end

  def self.all
    # ...
  end

  def self.parse_all(results)
    # ...
  end

  def self.find(id)
    # ...
  end

  def initialize(params = {})
    # ...
    @table_name = SQLObject.table_name
  end

  def attributes
    # ...
  end

  def attribute_values
    # ...
  end

  def insert
    # ...
  end

  def update
    # ...
  end

  def save
    # ...
  end
end
