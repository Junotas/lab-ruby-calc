class Calculator
    def add(a, b)
      a + b
    end
  
    def subtract(a, b)
      a - b
    end
  
    def multiply(a, b)
      a * b
    end
  
    def divide(a, b)
      return "Error: Division by zero" if b == 0
      a.to_f / b
    end
    
    def square_root(a)
      return "Error: Negative number" if a < 0
      Math.sqrt(a)
    end
  
    def exponentiate(a, b)
      a**b
    end
  
    def sine(a)
      Math.sin(a)
    end
  
    def cosine(a)
      Math.cos(a)
    end
  
    def tangent(a)
      Math.tan(a)
    end
  end
  