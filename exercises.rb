class Employee
  attr_reader :name, :title, :salary, :boss
  attr_accessor :subordinate


  def initialize(name = "Bill", title = "CEO", salary = 500000, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    @subordinate = []
  end

  def boss=(boss)
    return if self.boss == boss

    if self.boss
      self.boss.subordinate.delete(self)
    end

    @boss = boss
    self.boss.subordinate << self
  end

  def add_sub(sub)
    sub.boss = self
  end

  def remove_sub(sub)
    sub.boss = nil
  end

  def bonus(multiplier)
    @salary * multiplier
  end

end
