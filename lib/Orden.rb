# Metodo para ordenar una array mediante for con ordenamiento por insercion
# @return [Array] Array ordenado
def ordenForMenus (array)
    ordenado = []
    for node in array
        if ordenado.empty?
            ordenado.push(node)
        else
            indice = 0
            while indice < ordenado.length
                aporteActual = (node.collect { |alimento| alimento.valor_energetico}).reduce(:+)
                aporteSiguiente = (ordenado[indice].collect { |alimento| alimento.valor_energetico}).reduce(:+)
                if aporteActual <= aporteSiguiente
                    ordenado.insert(indice, node)
                    break
                elsif indice == ordenado.length-1
                    ordenado.insert(indice+1, node)
                    break
                end
                indice+=1
            end
        end
    end
    return ordenado
end

# Metodo para ordenar una array mediante each con ordenamiento por insercion
# @return [Array] Array ordenado
def ordenEachMenus (array)
    ordenado = []
    array.each do
        |node|
        if ordenado.empty?
            ordenado.push(node)
        else
            indice = 0
            while indice < ordenado.length
                aporteActual = (node.collect { |alimento| alimento.valor_energetico}).reduce(:+)
                aporteSiguiente = (ordenado[indice].collect { |alimento| alimento.valor_energetico}).reduce(:+)
                if aporteActual <= aporteSiguiente
                    ordenado.insert(indice, node)
                    break
                elsif indice == ordenado.length-1
                    ordenado.insert(indice+1, node)
                    break
                end
                indice+=1
            end
        end
    end
    return ordenado
end
