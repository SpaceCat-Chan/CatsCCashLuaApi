local api = {}
api.admin = {}

function api.get_bal(name)
    return bal --u32
end

function api.get_log(name, password)
    return log --[[
        [
            {
                "from":string
                "to":string
                "amount":u32
                "time":u64
            }
        ] | nil
    ]]
end

function api.send_funds(name, password, target, amount)
    return new_bal --u32
end

function api.verify_password(name, password)
    return was_correct --bool (derived from status code)
end



function api.change_password(name, old_password, new_password)
    return success -- bool (derived from status code)
end

function api.admin.change_password(admin_name, admin_password, user_name, user_password)
    return success -- bool (derived from status code)
end

function api.admin.set_bal(admin_name, admin_password, user_name, new_bal)
    return success -- bool (derived from status code)
end

function api.admin.impact_bal(admin_name, admin_password, user_name, amount)
    return new_bal -- u32
end



function api.admin.close(admin_name, admin_password)
    return success -- bool (derived from status code)
end

function api.user_exists(name)
    return exists -- bool (derived from status code)
end

function api.admin.verify_password(admin_name, admin_password)
    return success -- bool (derived from status code)
end

function api.admin.prune_users(admin_name, admin_password, amount, opt_time)
    return amount_deleted -- u64
end

function api.properties()
    return properties --[[
        {
            "version":u64,
            "max_log":u64,
            "return_on_del":string|nil
        }
    ]]
end



-- unfinished api
function api.register(name, password)

end

function api.admin.create_user(admin_name, admin_password, name, password, balance)

end

function api.delete_self(name, password)

end

function api.admin.delete_user(admin_name, admin_password, user_name)

end