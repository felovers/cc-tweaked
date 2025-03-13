-- Please note that this code can also be found in paste bin using the link below
-- pastebin.com/dbqzyMz8
-- Or you can use the command below on your terminal
-- pastebin get dbqzyMz8 'name for your file'

while true do
    b = require 'bigfont'
    
    redstone.setOutput('Left', false)

    monitor = peripheral.wrap('top')
    term.redirect(monitor)
    monitor.clear()
    monitor.setTextColour(colors.white)
    w, h = monitor.getSize() 

    function pos(...) return monitor.setCursorPos(...) end

    pos(1, 4)
    monitor.write('Para passar responda a seguinte')
    pos(1, 5)
    monitor.write('pergunta corretamente:')
    pos(1, 7)
    monitor.write('Qual dos tipos abaixo tem o tipo Fada')
    pos(1, 8)
    monitor.write('como FRAQUEZA?')

    pos(1, 13)
    monitor.write('Lutador')
    pos(10, 13)
    monitor.write('Veneno')
    pos(19, 13)
    monitor.write('Pedra')
    pos(28, 13)
    monitor.write('Fantasma')

    while true do
        event, side, xPos, yPos = os.pullEvent('monitor_touch')
        if xPos >= 1 and xPos <= 9 and yPos == 13 then
            monitor.clear()
            pos(9, 9)
            sleep(2)
            monitor.setTextColour(colors.green)
            b.bigWrite('ACERTOU!')
            redstone.setOutput('Left', true)
            sleep(10)
            break
        else
            monitor.clear()
            pos(11, 9)
            sleep(2)
            monitor.setTextColour(colors.red)
            b.bigWrite('ERRADO!')
            sleep(2)
            break
        end
    end
end
