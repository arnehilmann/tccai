defmodule SpringRTS.Commands do
    import SpringRTS.Helper, only: :functions
    def call_lua_rules(engine, inData, inSize) do
        send engine, {:command, :COMMAND_CALL_LUA_RULES, inData, inSize, self()}
        receive_response
    end
    def call_lua_ui(engine, inData, inSize) do
        send engine, {:command, :COMMAND_CALL_LUA_UI, inData, inSize, self()}
        receive_response
    end
    def cheats_give_me_new_unit(engine, unitDefId, pos_posF3) do
        send engine, {:command, :COMMAND_CHEATS_GIVE_ME_NEW_UNIT, unitDefId, pos_posF3, self()}
        receive_response
    end
    def cheats_give_me_resource(engine, resourceId, amount) do
        send engine, {:command, :COMMAND_CHEATS_GIVE_ME_RESOURCE, resourceId, amount, self()}
        receive_response
    end
    def cheats_set_my_income_multiplier(engine, factor) do
        send engine, {:command, :COMMAND_CHEATS_SET_MY_INCOME_MULTIPLIER, factor, self()}
        receive_response
    end
    def debug_drawer_graph_line_add_point(engine, lineId, x, y) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_LINE_ADD_POINT, lineId, x, y, self()}
        receive_response
    end
    def debug_drawer_graph_line_delete_points(engine, lineId, numPoints) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_LINE_DELETE_POINTS, lineId, numPoints, self()}
        receive_response
    end
    def debug_drawer_graph_line_set_color(engine, lineId, color_colorS3) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_LINE_SET_COLOR, lineId, color_colorS3, self()}
        receive_response
    end
    def debug_drawer_graph_line_set_label(engine, lineId, label) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_LINE_SET_LABEL, lineId, label, self()}
        receive_response
    end
    def debug_drawer_graph_set_pos(engine, x, y) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_SET_POS, x, y, self()}
        receive_response
    end
    def debug_drawer_graph_set_size(engine, w, h) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_SET_SIZE, w, h, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_add(engine, texData, w, h) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_ADD, texData, w, h, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_delete(engine, overlayTextureId) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_DELETE, overlayTextureId, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_set_label(engine, overlayTextureId, label) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_SET_LABEL, overlayTextureId, label, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_set_pos(engine, overlayTextureId, x, y) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_SET_POS, overlayTextureId, x, y, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_set_size(engine, overlayTextureId, w, h) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_SET_SIZE, overlayTextureId, w, h, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_update(engine, overlayTextureId, texData, x, y, w, h) do
        send engine, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_UPDATE, overlayTextureId, texData, x, y, w, h, self()}
        receive_response
    end
    def drawer_add_notification(engine, pos_posF3, color_colorS3, alpha) do
        send engine, {:command, :COMMAND_DRAWER_ADD_NOTIFICATION, pos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_draw_unit(engine, toDrawUnitDefId, pos_posF3, rotation, lifeTime, teamId, transparent, drawBorder, facing) do
        send engine, {:command, :COMMAND_DRAWER_DRAW_UNIT, toDrawUnitDefId, pos_posF3, rotation, lifeTime, teamId, transparent, drawBorder, facing, self()}
        receive_response
    end
    def drawer_figure_create_line(engine, pos1_posF3, pos2_posF3, width, arrow, lifeTime, figureGroupId) do
        send engine, {:command, :COMMAND_DRAWER_FIGURE_CREATE_LINE, pos1_posF3, pos2_posF3, width, arrow, lifeTime, figureGroupId, self()}
        receive_response
    end
    def drawer_figure_create_spline(engine, pos1_posF3, pos2_posF3, pos3_posF3, pos4_posF3, width, arrow, lifeTime, figureGroupId) do
        send engine, {:command, :COMMAND_DRAWER_FIGURE_CREATE_SPLINE, pos1_posF3, pos2_posF3, pos3_posF3, pos4_posF3, width, arrow, lifeTime, figureGroupId, self()}
        receive_response
    end
    def drawer_figure_delete(engine, figureGroupId) do
        send engine, {:command, :COMMAND_DRAWER_FIGURE_DELETE, figureGroupId, self()}
        receive_response
    end
    def drawer_figure_set_color(engine, figureGroupId, color_colorS3, alpha) do
        send engine, {:command, :COMMAND_DRAWER_FIGURE_SET_COLOR, figureGroupId, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_line_add(engine, posFrom_posF3, posTo_posF3) do
        send engine, {:command, :COMMAND_DRAWER_LINE_ADD, posFrom_posF3, posTo_posF3, self()}
        receive_response
    end
    def drawer_path_break(engine, endPos_posF3, color_colorS3, alpha) do
        send engine, {:command, :COMMAND_DRAWER_PATH_BREAK, endPos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_path_draw_icon_at_last_pos(engine, cmdId) do
        send engine, {:command, :COMMAND_DRAWER_PATH_DRAW_ICON_AT_LAST_POS, cmdId, self()}
        receive_response
    end
    def drawer_path_draw_line(engine, endPos_posF3, color_colorS3, alpha) do
        send engine, {:command, :COMMAND_DRAWER_PATH_DRAW_LINE, endPos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_path_draw_line_and_icon(engine, cmdId, endPos_posF3, color_colorS3, alpha) do
        send engine, {:command, :COMMAND_DRAWER_PATH_DRAW_LINE_AND_ICON, cmdId, endPos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_path_finish(engine, iAmUseless) do
        send engine, {:command, :COMMAND_DRAWER_PATH_FINISH, iAmUseless, self()}
        receive_response
    end
    def drawer_path_restart(engine, sameColor) do
        send engine, {:command, :COMMAND_DRAWER_PATH_RESTART, sameColor, self()}
        receive_response
    end
    def drawer_path_start(engine, pos_posF3, color_colorS3, alpha) do
        send engine, {:command, :COMMAND_DRAWER_PATH_START, pos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_point_add(engine, pos_posF3, label) do
        send engine, {:command, :COMMAND_DRAWER_POINT_ADD, pos_posF3, label, self()}
        receive_response
    end
    def drawer_point_remove(engine, pos_posF3) do
        send engine, {:command, :COMMAND_DRAWER_POINT_REMOVE, pos_posF3, self()}
        receive_response
    end
    def group_create(engine) do
        send engine, {:command, :COMMAND_GROUP_CREATE, self()}
        receive_response
    end
    def group_erase(engine, groupId) do
        send engine, {:command, :COMMAND_GROUP_ERASE, groupId, self()}
        receive_response
    end
    def path_free(engine, pathId) do
        send engine, {:command, :COMMAND_PATH_FREE, pathId, self()}
        receive_response
    end
    def path_get_approximate_length(engine, start_posF3, end_posF3, pathType, goalRadius) do
        send engine, {:command, :COMMAND_PATH_GET_APPROXIMATE_LENGTH, start_posF3, end_posF3, pathType, goalRadius, self()}
        receive_response
    end
    def path_get_next_waypoint(engine, pathId) do
        send engine, {:command, :COMMAND_PATH_GET_NEXT_WAYPOINT, pathId, self()}
        receive_response
    end
    def path_init(engine, start_posF3, end_posF3, pathType, goalRadius) do
        send engine, {:command, :COMMAND_PATH_INIT, start_posF3, end_posF3, pathType, goalRadius, self()}
        receive_response
    end
    def pause(engine, enable, reason) do
        send engine, {:command, :COMMAND_PAUSE, enable, reason, self()}
        receive_response
    end
    def send_resources(engine, resourceId, amount, receivingTeamId) do
        send engine, {:command, :COMMAND_SEND_RESOURCES, resourceId, amount, receivingTeamId, self()}
        receive_response
    end
    def send_start_pos(engine, ready, pos_posF3) do
        send engine, {:command, :COMMAND_SEND_START_POS, ready, pos_posF3, self()}
        receive_response
    end
    def send_text_message(engine, text, zone) do
        send engine, {:command, :COMMAND_SEND_TEXT_MESSAGE, text, zone, self()}
        receive_response
    end
    def send_units(engine, unitIds, unitIds_size, receivingTeamId) do
        send engine, {:command, :COMMAND_SEND_UNITS, unitIds, unitIds_size, receivingTeamId, self()}
        receive_response
    end
    def set_last_pos_message(engine, pos_posF3) do
        send engine, {:command, :COMMAND_SET_LAST_POS_MESSAGE, pos_posF3, self()}
        receive_response
    end
    def trace_ray(engine, rayPos_posF3, rayDir_posF3, srcUnitId, flags) do
        send engine, {:command, :COMMAND_TRACE_RAY, rayPos_posF3, rayDir_posF3, srcUnitId, flags, self()}
        receive_response
    end
    def trace_ray_feature(engine, rayPos_posF3, rayDir_posF3, srcUnitId, flags) do
        send engine, {:command, :COMMAND_TRACE_RAY_FEATURE, rayPos_posF3, rayDir_posF3, srcUnitId, flags, self()}
        receive_response
    end
    def unit_ai_select(engine, unitId, groupId, options, timeOut) do
        send engine, {:command, :COMMAND_UNIT_AI_SELECT, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_attack(engine, unitId, groupId, options, timeOut, toAttackUnitId) do
        send engine, {:command, :COMMAND_UNIT_ATTACK, unitId, groupId, options, timeOut, toAttackUnitId, self()}
        receive_response
    end
    def unit_attack_area(engine, unitId, groupId, options, timeOut, toAttackPos_posF3, radius) do
        send engine, {:command, :COMMAND_UNIT_ATTACK_AREA, unitId, groupId, options, timeOut, toAttackPos_posF3, radius, self()}
        receive_response
    end
    def unit_build(engine, unitId, groupId, options, timeOut, toBuildUnitDefId, buildPos_posF3, facing) do
        send engine, {:command, :COMMAND_UNIT_BUILD, unitId, groupId, options, timeOut, toBuildUnitDefId, buildPos_posF3, facing, self()}
        receive_response
    end
    def unit_capture(engine, unitId, groupId, options, timeOut, toCaptureUnitId) do
        send engine, {:command, :COMMAND_UNIT_CAPTURE, unitId, groupId, options, timeOut, toCaptureUnitId, self()}
        receive_response
    end
    def unit_capture_area(engine, unitId, groupId, options, timeOut, pos_posF3, radius) do
        send engine, {:command, :COMMAND_UNIT_CAPTURE_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_cloak(engine, unitId, groupId, options, timeOut, cloak) do
        send engine, {:command, :COMMAND_UNIT_CLOAK, unitId, groupId, options, timeOut, cloak, self()}
        receive_response
    end
    def unit_custom(engine, unitId, groupId, options, timeOut, cmdId, params, params_size) do
        send engine, {:command, :COMMAND_UNIT_CUSTOM, unitId, groupId, options, timeOut, cmdId, params, params_size, self()}
        receive_response
    end
    def unit_d_gun(engine, unitId, groupId, options, timeOut, toAttackUnitId) do
        send engine, {:command, :COMMAND_UNIT_D_GUN, unitId, groupId, options, timeOut, toAttackUnitId, self()}
        receive_response
    end
    def unit_d_gun_pos(engine, unitId, groupId, options, timeOut, pos_posF3) do
        send engine, {:command, :COMMAND_UNIT_D_GUN_POS, unitId, groupId, options, timeOut, pos_posF3, self()}
        receive_response
    end
    def unit_fight(engine, unitId, groupId, options, timeOut, toPos_posF3) do
        send engine, {:command, :COMMAND_UNIT_FIGHT, unitId, groupId, options, timeOut, toPos_posF3, self()}
        receive_response
    end
    def unit_group_add(engine, unitId, groupId, options, timeOut, toGroupId) do
        send engine, {:command, :COMMAND_UNIT_GROUP_ADD, unitId, groupId, options, timeOut, toGroupId, self()}
        receive_response
    end
    def unit_group_clear(engine, unitId, groupId, options, timeOut) do
        send engine, {:command, :COMMAND_UNIT_GROUP_CLEAR, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_guard(engine, unitId, groupId, options, timeOut, toGuardUnitId) do
        send engine, {:command, :COMMAND_UNIT_GUARD, unitId, groupId, options, timeOut, toGuardUnitId, self()}
        receive_response
    end
    def unit_load_onto(engine, unitId, groupId, options, timeOut, transporterUnitId) do
        send engine, {:command, :COMMAND_UNIT_LOAD_ONTO, unitId, groupId, options, timeOut, transporterUnitId, self()}
        receive_response
    end
    def unit_load_units(engine, unitId, groupId, options, toLoadUnitIds, toLoadUnitIds_size) do
        send engine, {:command, :COMMAND_UNIT_LOAD_UNITS, unitId, groupId, options, toLoadUnitIds, toLoadUnitIds_size, self()}
        receive_response
    end
    def unit_load_units_area(engine, unitId, groupId, options, timeOut, pos_posF3, radius) do
        send engine, {:command, :COMMAND_UNIT_LOAD_UNITS_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_move(engine, unitId, groupId, options, timeOut, toPos_posF3) do
        send engine, {:command, :COMMAND_UNIT_MOVE, unitId, groupId, options, timeOut, toPos_posF3, self()}
        receive_response
    end
    def unit_patrol(engine, unitId, groupId, options, timeOut, toPos_posF3) do
        send engine, {:command, :COMMAND_UNIT_PATROL, unitId, groupId, options, timeOut, toPos_posF3, self()}
        receive_response
    end
    def unit_reclaim_area(engine, unitId, groupId, options, timeOut, pos_posF3, radius) do
        send engine, {:command, :COMMAND_UNIT_RECLAIM_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_reclaim_feature(engine, unitId, groupId, options, timeOut, toReclaimFeatureId) do
        send engine, {:command, :COMMAND_UNIT_RECLAIM_FEATURE, unitId, groupId, options, timeOut, toReclaimFeatureId, self()}
        receive_response
    end
    def unit_reclaim_unit(engine, unitId, groupId, options, timeOut, toReclaimUnitId) do
        send engine, {:command, :COMMAND_UNIT_RECLAIM_UNIT, unitId, groupId, options, timeOut, toReclaimUnitId, self()}
        receive_response
    end
    def unit_repair(engine, unitId, groupId, options, timeOut, toRepairUnitId) do
        send engine, {:command, :COMMAND_UNIT_REPAIR, unitId, groupId, options, timeOut, toRepairUnitId, self()}
        receive_response
    end
    def unit_restore_area(engine, unitId, groupId, options, timeOut, pos_posF3, radius) do
        send engine, {:command, :COMMAND_UNIT_RESTORE_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_resurrect(engine, unitId, groupId, options, timeOut, toResurrectFeatureId) do
        send engine, {:command, :COMMAND_UNIT_RESURRECT, unitId, groupId, options, timeOut, toResurrectFeatureId, self()}
        receive_response
    end
    def unit_resurrect_area(engine, unitId, groupId, options, timeOut, pos_posF3, radius) do
        send engine, {:command, :COMMAND_UNIT_RESURRECT_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_self_destroy(engine, unitId, groupId, options, timeOut) do
        send engine, {:command, :COMMAND_UNIT_SELF_DESTROY, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_set_auto_repair_level(engine, unitId, groupId, options, timeOut, autoRepairLevel) do
        send engine, {:command, :COMMAND_UNIT_SET_AUTO_REPAIR_LEVEL, unitId, groupId, options, timeOut, autoRepairLevel, self()}
        receive_response
    end
    def unit_set_base(engine, unitId, groupId, options, timeOut, basePos_posF3) do
        send engine, {:command, :COMMAND_UNIT_SET_BASE, unitId, groupId, options, timeOut, basePos_posF3, self()}
        receive_response
    end
    def unit_set_fire_state(engine, unitId, groupId, options, timeOut, fireState) do
        send engine, {:command, :COMMAND_UNIT_SET_FIRE_STATE, unitId, groupId, options, timeOut, fireState, self()}
        receive_response
    end
    def unit_set_idle_mode(engine, unitId, groupId, options, timeOut, idleMode) do
        send engine, {:command, :COMMAND_UNIT_SET_IDLE_MODE, unitId, groupId, options, timeOut, idleMode, self()}
        receive_response
    end
    def unit_set_move_state(engine, unitId, groupId, options, timeOut, moveState) do
        send engine, {:command, :COMMAND_UNIT_SET_MOVE_STATE, unitId, groupId, options, timeOut, moveState, self()}
        receive_response
    end
    def unit_set_on_off(engine, unitId, groupId, options, timeOut, on) do
        send engine, {:command, :COMMAND_UNIT_SET_ON_OFF, unitId, groupId, options, timeOut, on, self()}
        receive_response
    end
    def unit_set_repeat(engine, unitId, groupId, options, timeOut, repeat) do
        send engine, {:command, :COMMAND_UNIT_SET_REPEAT, unitId, groupId, options, timeOut, repeat, self()}
        receive_response
    end
    def unit_set_trajectory(engine, unitId, groupId, options, timeOut, trajectory) do
        send engine, {:command, :COMMAND_UNIT_SET_TRAJECTORY, unitId, groupId, options, timeOut, trajectory, self()}
        receive_response
    end
    def unit_set_wanted_max_speed(engine, unitId, groupId, options, timeOut, wantedMaxSpeed) do
        send engine, {:command, :COMMAND_UNIT_SET_WANTED_MAX_SPEED, unitId, groupId, options, timeOut, wantedMaxSpeed, self()}
        receive_response
    end
    def unit_stockpile(engine, unitId, groupId, options, timeOut) do
        send engine, {:command, :COMMAND_UNIT_STOCKPILE, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_stop(engine, unitId, groupId, options, timeOut) do
        send engine, {:command, :COMMAND_UNIT_STOP, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_unload_unit(engine, unitId, groupId, options, timeOut, toPos_posF3, toUnloadUnitId) do
        send engine, {:command, :COMMAND_UNIT_UNLOAD_UNIT, unitId, groupId, options, timeOut, toPos_posF3, toUnloadUnitId, self()}
        receive_response
    end
    def unit_unload_units_area(engine, unitId, groupId, options, timeOut, toPos_posF3, radius) do
        send engine, {:command, :COMMAND_UNIT_UNLOAD_UNITS_AREA, unitId, groupId, options, timeOut, toPos_posF3, radius, self()}
        receive_response
    end
    def unit_wait(engine, unitId, groupId, options, timeOut) do
        send engine, {:command, :COMMAND_UNIT_WAIT, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_wait_death(engine, unitId, groupId, options, timeOut, toDieUnitId) do
        send engine, {:command, :COMMAND_UNIT_WAIT_DEATH, unitId, groupId, options, timeOut, toDieUnitId, self()}
        receive_response
    end
    def unit_wait_gather(engine, unitId, groupId, options, timeOut) do
        send engine, {:command, :COMMAND_UNIT_WAIT_GATHER, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_wait_squad(engine, unitId, groupId, options, timeOut, numUnits) do
        send engine, {:command, :COMMAND_UNIT_WAIT_SQUAD, unitId, groupId, options, timeOut, numUnits, self()}
        receive_response
    end
    def unit_wait_time(engine, unitId, groupId, options, timeOut, time) do
        send engine, {:command, :COMMAND_UNIT_WAIT_TIME, unitId, groupId, options, timeOut, time, self()}
        receive_response
    end
end
