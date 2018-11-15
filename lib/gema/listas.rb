class LinkedList
    def initialize
        @Node = Struct.new(:value, :next, :prev)
		@head = nil
        @tail = nil
    end
end