userdata = userdata or {}
userdata.ant = userdata.ant or {}

function print_table(t)
    for key, value in pairs(t) do
        print(string.format('[%s] → %s', tostring(key), tostring(value)))
    end
end

function userdata.ant.get_title(h)
    h = utilities.parsers.settings_to_hash(h)

    if h['title'] ~= nil then
        return h['title']
    elseif h['n'] ~= nil then
        return h['n'] .. ' ant.'
    else
        return 'Ant.'
    end
end

function userdata.ant.printcolor(text)
    text = text
        :gsub('/', '\\rubrum{/}')
        :gsub('%*', '\\rubrum{*}')
--      :gsub('+', '\\rubrum{†}')
    tex.print(text)
end

function userdata.ant.doant(h, s, text)
    tex.print('\\rubrum{' .. userdata.ant.get_title(h) .. '}')
    userdata.ant.printcolor(text)
    tex.print('\\par')

--  print_table(utilities.parsers.settings_to_set(s))
    join = utilities.parsers.settings_to_set(s)['join']

    text = join and text:gsub('~*%*', '') or text:gsub('%*', '/')
    text = text:gsub('~*\\cont', '')
    userdata.ant.text = text
end

function userdata.ant.doantr()
    tex.print('\\rubrum{Ant.}')
    userdata.ant.printcolor(userdata.ant.text)
end

-- vim: ts=4 sts=4 sw=4 et
