class LinkedList
    
    attr_accessor :Node
    
    def initialize
        @Node = Struct.new(:value, :next, :prev)
		@head = nil
        @tail = nil
    end
    
    def insert_by_end(value)
		if @head.nil?
			@head = @Node.new(value, nil, nil)
			@tail = @head
		else
			@tail[:next] = @Node.new(value, nil, @tail)
			@tail = @tail[:next]
		end
    end
    
    def insert_by_begin(value)
		if @head.nil?
			@head = @Node.new(value, nil, nil)
			@tail = @head
		else
			@head[:prev] = @Node.new(value, @head, nil)
			@head = @head[:prev]
		end
    end
    
    def extract_by_begin()
        if @head == @tail
        		@head, @tail = nil
        else
        		@tail = @tail[:prev]
        		@tail[:next] = nil
        end
    end
    
    def size
        size = 0
		iterator = @head
		while (!iterator.nil?)
		    iterator = iterator[:next]
			size+=1
		end 
    end
    
    def get_sal
        super()
    end
	
    #/? comandos

end