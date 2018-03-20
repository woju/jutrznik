userdata = userdata or {}
userdata.ant = userdata.ant or {}

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
    tex.print(text)
end

function userdata.ant.doant(h, s, text)
    tex.print('\\rubrum{' .. userdata.ant.get_title(h) .. '}')
    userdata.ant.printcolor(text)
    tex.print('\\par')

    join = utilities.parsers.settings_to_set(s)['join']

    if join then
        userdata.ant.text = text:gsub('~*%*', '')
    else
        userdata.ant.text = text:gsub('%*', '/')
    end
end

function userdata.ant.doantr()
    tex.print('\\rubrum{Ant.}')
    userdata.ant.printcolor(userdata.ant.text)
end
