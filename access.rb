# class Box
#     # constructor method
#     def initialize(w,h)
#        @width, @height = w, h
#     end
 
#     # instance method by default it is public
#     def getArea
#        getWidth() * getHeight
#     end
 
#     # define private accessor methods
#     def getWidth
#        @width
#     end
#     def getHeight
#        @height
#     end
#     # make them private
#     private :getWidth, :getHeight
 
#     # instance method to print area
#     def printArea
#        @area = getWidth() * getHeight
#        puts "Big box area is : #@area"
#     end
#     # make it protected
#     protected :printArea
#  end
 
#  # create an object
#  box = Box.new(10, 20)
 
#  # call instance methods
# #  a = box.getArea()
# #  puts "Area of the box is : #{a}"
 
#  # try to call protected or methods
#  box.printArea()


class Sample
    public
    def method1
        puts "This is public method"
    end
    private
    def method2
        puts "This is private method"
    end
    protected
    def method3
        puts "This is protected method"
    end
    public
    def method4
        method2
        method3
    end

    def method5
        obj = Sample.new
        obj.method3
    end
end

 s =Sample.new
 
 s.method1
 s.method5