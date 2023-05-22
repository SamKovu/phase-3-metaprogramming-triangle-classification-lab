class Triangle
 
   attr_accessor :side1, :side2 , :side3

  def initialize(side_1,side_2,side_3)
    @side1=side_1
    @side2=side_2
    @side3=side_3
  end

  def kind
    
    if (self.side1+self.side2>self.side3 && self.side1+self.side3>self.side2 && self.side2+self.side3>self.side1) && (self.side1>0 && self.side2>0 && self.side3>0)
   
        if (self.side1==self.side2 && self.side2==self.side3)
          :equilateral 
        elsif (self.side1!=self.side2 && self.side2!=self.side3 && self.side1!=self.side3) 
          :scalene 
        elsif (self.side1==self.side2 || self.side2==self.side3 || self.side1==self.side3)
          :isosceles
        end

    else
     
      raise TriangleError
        
    end
 
  end

  
   
  class TriangleError < StandardError

  end


end
