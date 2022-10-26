




local buffer = {}
--local backBuffer
--local buffers = {}
--local nextBuffer = 2
local dA = 1.0
local bB = 0.5
local feed = 0.055
local k = 0.062
local windowWidth = love.graphics.getWidth()
local windowHeight = love.graphics.getHeight()


local function InitBuffer(value)
    --local buffer = {}
    for i = 1, windowWidth do
        buffer[i] = {}
        for j = 1, windowHeight do
            buffer[i][j] = value
        end
    end
end

function love.load()
    InitBuffer(1)
    --backBuffer = InitBuffer(0)
    --buffers[1] = buffer1
    --buffers[2] = buffer2


end

function love.update()
    --nextBuffer = ((nextBuffer) % 2) + 1
    --for i = 1, windowWidth do
    --    for j = 1, windowHeight do
    --        buffer[i][j] = buffer[i][j] * 0.009
    --    end
    --end


    --buffer = backBuffer
end

function love.draw()
    --local buffer = buffers[nextBuffer]
    points = {}
    for i = 1, windowWidth do
        for j = 1, windowHeight do
            local point = {i, j, buffer[i][j], buffer[i][j], buffer[i][j], 1}
            points[i*j] = point
            --love.graphics.points(i, j, 0.5, 0.5, 0.5, 1)
        end
    end
    love.graphics.points(points)
end


