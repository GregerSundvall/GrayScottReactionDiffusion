




local buffer1
local buffer2
local buffers = {}
local nextBuffer = 2
local dA = 1.0
local bB = 0.5
local feed = 0.055
local k = 0.062
local windowWidth = love.graphics.getWidth()
local windowHeight = love.graphics.getHeight()


local function InitBuffer(value)
    local buffer = {}
    for i = 1, windowWidth do
        buffer[i] = {}
        for j = 1, windowHeight do
            buffer[i][j] = value
        end
    end
    return buffer
end

function love.load()
    buffer1 = InitBuffer(0)
    buffer2 = InitBuffer(0)
    buffers[1] = buffer1
    buffers[2] = buffer2

end

function love.update()
    nextBuffer = ((nextBuffer) % 2) + 1

end

function love.draw()
    local buffer = buffers[nextBuffer]
    for i = 1, windowWidth do
        for j = 1, windowHeight do
            local point = {i, j -0.5, buffer[i][j], buffer[i][j], buffer[i][j], buffer[i][j]}
            love.graphics.points(point)
        end
    end
end


