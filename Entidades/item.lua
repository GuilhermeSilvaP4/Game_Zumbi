local item = {}

function  item.new(_type, _func, cost)
    return {
        type = _type,
        func = _func,
        cost = cost
    }
    
end

return item