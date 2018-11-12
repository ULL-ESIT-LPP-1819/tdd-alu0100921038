class Lista
    attr_reader :head, :tail
    Node = Struct.new(:datos, :sig, :prev)
    
    def initialize(var)
        node = Node.new(var, nil, nil)
        @head = node
        @tail = node
    end

     def push_back(var)
        node = Node.new(var, nil, @tail)
        if(@tail != nil)
            @tail.sig = node
        end
        @tail = node
    end
end
