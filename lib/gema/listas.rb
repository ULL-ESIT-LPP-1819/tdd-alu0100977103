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
    
end