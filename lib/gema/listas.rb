#Clase que genera listas doblemente enlazadas
class LinkedList
    
    include Enumerable
    
    attr_accessor :Node
    
    #Constructor de una lista doblemente enlazada
    def initialize
        @Node = Struct.new(:value, :next, :prev)
		@head = nil
        @tail = nil
    end
    
    #Ver que valores vas a comparar de la lista
    def what(v)
        @v=v
    end
    
    #Mostrar los valores de la cabeza de la lista
    def to_s
        "#{@head.value}"
    end
    
    def sort_for
        tmp = map{|x| x.gasto_total}
        orden = []
        orden.push(tmp[0])
    
        for i in (1..length-1)
            for j in (0..i)
                if(orden[j] >= tmp[i])
                    orden.insert(j,tmp[i])
                break
                elsif(orden[orden.length - 1] <= tmp[i])
                    orden.push(tmp[i])
                break
                end
            end
        end
    
        orden
    end
    
    def sort_each
        tmp = map{ |x| x.gasto_total}
        i = 0
        tmp.each do |x|
        a = x
        i1 = i
        j = i1 + 1
    
            tmp[j..tmp.length - 1].each do |y|
                if (a > y)
                    a = y
                    i1 = j
                end
                j+=1
            end
    
            tmp[i1] = x
            tmp[i] = a
            i+=1
        end
    
            tmp
    end
    
    #Sirve para recorrer la lista, enumerable
    def each(&block)
        node = @Node.new(nil,nil,nil)
        node = @head

        while !(node.nil?)
            yield node.value

        node = node.next
        end
    end
    
    def insert_val(value)

        node = @Node.new(value, nil, @tail)

        @head = node if @head.nil?
        @tail.next = node unless @tail.nil?

        @tail = node

    end
    
    #Insertar varios elementos
    def insert_set(others)
	    for i in (0.. others.length-1)
	        insert_by_end(others[i])
	    end
	end
    
    #Insertar al final de la lista un objeto
    def insert_by_end(value)
		if @head.nil?
			@head = @Node.new(value, nil, nil)
			@tail = @head
		else
			@tail[:next] = @Node.new(value, nil, @tail)
			@tail = @tail[:next]
		end
    end
    
    #Insertar al comienzo de la lista
    def insert_by_begin(value)
		if @head.nil?
			@head = @Node.new(value, nil, nil)
			@tail = @head
		else
			@head[:prev] = @Node.new(value, @head, nil)
			@head = @head[:prev]
		end
    end
    
    #Extraer al comienzo de la lista
    def extract_by_begin()
        if @head == @tail
        		@head, @tail = nil
        else
                @head = @head[:next]
        		@tail = @tail[:prev]
        		@tail[:next] = nil
        end
    end
    
    #Tamaño
    def length
        size = 0
        node = @head

        while !(node.nil?)
            size = size + 1
            node = node.next
        end

        size
    end
	
    #/? comandos

end