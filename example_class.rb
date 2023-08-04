class ExampleClass
    # instance method
    def print_hello
        puts'Hello Friends welcome to ruby on rails'
    end

    # class method
    def self.class_method_example
        puts'Hello Friends welcome to ruby on rails'
    end

end

obj1 = ExampleClass.new
# instance method calling
obj1.print_hello

# class method calling
ExampleClass.class_method_example