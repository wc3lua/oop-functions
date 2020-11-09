function newClass()
    local child = {}
    setmetatable(child, {__index = child})
    return child
end

function newObject(class)
    local obj = {}
    setmetatable(obj, class)
    class.__index = class
    return obj
end

function extendedClass(parent)
    local child = {}
    setmetatable(child, {__index = parent})
    return child
end