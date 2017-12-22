require 'java'

class MyEntity
  include QueryHelpers
  attr_accessor :entity

  def initialize(entity)
    @entity = entity
  end

  def get_total
    entity_types(self.entity).total_results
    # if I return just hardcoded value e.g. 10, totals print [10,10] which is excpeted
  end    

end


class ParrallelStuff 
  attr_accessor :entity
  include java.util.concurrent.Callable 

  def initialize(entity)
    @entity = entity
  end
 
  def call
    MyEntity.new(self.entity).get_total       
  end
  
end


tasks  = []
executor = java.util.concurrent.Executors::newFixedThreadPool(2)

entities = ['Employees', 'Tickets']

entities.each do | e | 
  task = executor.submit(ParrallelStuff.new(e))
  tasks << task
end

totals = []
tasks.each do | t | 
  totals << t.get()
end

totals