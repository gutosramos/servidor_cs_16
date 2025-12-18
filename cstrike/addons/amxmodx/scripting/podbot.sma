#include <amxmodx>

public plugin_init()
{
    register_plugin("PodBot Control", "1.0", "Bots United");

    register_clcmd("pb", "pb_cmd");
    register_clcmd("amx_pbmenu", "pb_menu");
}

public pb_cmd(id)
{
    server_cmd("pb %s", read_args());
    return PLUGIN_HANDLED;
}

public pb_menu(id)
{
    server_cmd("pb menu");
    return PLUGIN_HANDLED;
}
