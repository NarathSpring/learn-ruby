# Defind a Class
class User
  def initialize(name="此用户没有设置姓名", id=0)
    @name = name
    @id = id
  end
  def show()
    puts "User: #{@name}"
    puts "Id: #{@id}"
  end
end

anomymous = User.new()
anomymous.show()

benny = User.new("周大财", 1)
benny.show()

fever = User.new("黄家民", 2)
fever.show()


# instance_methods(all:boolean) 
  # true 表示显示对象所有属性
  # false 表示只显示对象的方法

class Game 
  def initialize(name="猛汉世界", price="249")
    @name = name
    @price = price
  end
  def show()
    puts "游戏名：#{@name}"
    puts "价格：#{@price}"
  end
  def show2()
  end
  def show3()
  end
end

puts Game.instance_methods(false)
# 问题：打印出来的函数顺序有没有特定的意义？


# respond_to?/send
  # usage
    # if instance.respond_to?(method)
    #   instance.send(methos)
    # end

mario = Game.new("Mario", 299)
if mario.respond_to?("show")
  mario.send("show")
end


# attr_accessor 定义可供外部访问的属性

class Animal
  attr_accessor :name
  def initialize(name = "长臂猿")
    @name = name
  end
  def show()
    puts "这是#{@name}"
  end
end
tiger = Animal.new("老虎")
tiger.show() # 这是老虎
tiger.name = "非洲虎"
tiger.show() # 这是非洲虎


# static method 静态方法只能被类自身访问，类的实例访问则会报错

class Subway

  def initialize(name)
    @name = name
  end

  def show ()
    puts @name
  end

  def self.fnSelf
    puts "使用 self. 定义静态方法"
  end

  def Subway.fnSubway
    puts "使用 函数名. 定义静态方法"
  end

  class << Subway
    def classSubway
      puts "使用 class<<函数名 定义静态方法"
    end
  end

  class << self
    def classSelf
      puts "使用 class<<self 定义静态方法"
    end
  end
end

Subway.fnSelf
Subway.fnSubway
Subway.classSubway
Subway.classSelf

# 或者可以使用 :: 调用静态方法

xx = Subway.new('西乡')
=begin
  以下操作全部报错，因为实例xx无法访问类的静态方法
  xx.fnSelf
  xx.fnSubway
  xx.classSubway
  xx.classSelf
=end


# 类的继承 子类可以访问父类的所有方法

class Fish < Animal
  def show()
    puts "鱼类在这里, 我是 #{@name}"
  end
end

puts f = Fish.new("f").show()
