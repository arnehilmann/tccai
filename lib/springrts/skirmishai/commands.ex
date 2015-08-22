defmodule SpringRTS.SkirmishAI.Commands do
    import SpringRTS.SkirmishAI.Helper, only: [receive_response: 0]
    import TccAI, only: [cnode: 0]
    def call_lua_rules(inData, inSize) do
        send cnode, {:command, :COMMAND_CALL_LUA_RULES, inData, inSize, self()}
        receive_response
    end
    def call_lua_ui(inData, inSize) do
        send cnode, {:command, :COMMAND_CALL_LUA_UI, inData, inSize, self()}
        receive_response
    end
    def cheats_give_me_new_unit(unitDefId, pos_posF3) do
        send cnode, {:command, :COMMAND_CHEATS_GIVE_ME_NEW_UNIT, unitDefId, pos_posF3, self()}
        receive_response
    end
    def cheats_give_me_resource(resourceId, amount) do
        send cnode, {:command, :COMMAND_CHEATS_GIVE_ME_RESOURCE, resourceId, amount, self()}
        receive_response
    end
    def cheats_set_my_income_multiplier(factor) do
        send cnode, {:command, :COMMAND_CHEATS_SET_MY_INCOME_MULTIPLIER, factor, self()}
        receive_response
    end
    def debug_drawer_graph_line_add_point(lineId, x, y) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_LINE_ADD_POINT, lineId, x, y, self()}
        receive_response
    end
    def debug_drawer_graph_line_delete_points(lineId, numPoints) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_LINE_DELETE_POINTS, lineId, numPoints, self()}
        receive_response
    end
    def debug_drawer_graph_line_set_color(lineId, color_colorS3) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_LINE_SET_COLOR, lineId, color_colorS3, self()}
        receive_response
    end
    def debug_drawer_graph_line_set_label(lineId, label) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_LINE_SET_LABEL, lineId, label, self()}
        receive_response
    end
    def debug_drawer_graph_set_pos(x, y) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_SET_POS, x, y, self()}
        receive_response
    end
    def debug_drawer_graph_set_size(w, h) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_GRAPH_SET_SIZE, w, h, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_add(texData, w, h) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_ADD, texData, w, h, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_delete(overlayTextureId) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_DELETE, overlayTextureId, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_set_label(overlayTextureId, label) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_SET_LABEL, overlayTextureId, label, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_set_pos(overlayTextureId, x, y) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_SET_POS, overlayTextureId, x, y, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_set_size(overlayTextureId, w, h) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_SET_SIZE, overlayTextureId, w, h, self()}
        receive_response
    end
    def debug_drawer_overlaytexture_update(overlayTextureId, texData, x, y, w, h) do
        send cnode, {:command, :COMMAND_DEBUG_DRAWER_OVERLAYTEXTURE_UPDATE, overlayTextureId, texData, x, y, w, h, self()}
        receive_response
    end
    def drawer_add_notification(pos_posF3, color_colorS3, alpha) do
        send cnode, {:command, :COMMAND_DRAWER_ADD_NOTIFICATION, pos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_draw_unit(toDrawUnitDefId, pos_posF3, rotation, lifeTime, teamId, transparent, drawBorder, facing) do
        send cnode, {:command, :COMMAND_DRAWER_DRAW_UNIT, toDrawUnitDefId, pos_posF3, rotation, lifeTime, teamId, transparent, drawBorder, facing, self()}
        receive_response
    end
    def drawer_figure_create_line(pos1_posF3, pos2_posF3, width, arrow, lifeTime, figureGroupId) do
        send cnode, {:command, :COMMAND_DRAWER_FIGURE_CREATE_LINE, pos1_posF3, pos2_posF3, width, arrow, lifeTime, figureGroupId, self()}
        receive_response
    end
    def drawer_figure_create_spline(pos1_posF3, pos2_posF3, pos3_posF3, pos4_posF3, width, arrow, lifeTime, figureGroupId) do
        send cnode, {:command, :COMMAND_DRAWER_FIGURE_CREATE_SPLINE, pos1_posF3, pos2_posF3, pos3_posF3, pos4_posF3, width, arrow, lifeTime, figureGroupId, self()}
        receive_response
    end
    def drawer_figure_delete(figureGroupId) do
        send cnode, {:command, :COMMAND_DRAWER_FIGURE_DELETE, figureGroupId, self()}
        receive_response
    end
    def drawer_figure_set_color(figureGroupId, color_colorS3, alpha) do
        send cnode, {:command, :COMMAND_DRAWER_FIGURE_SET_COLOR, figureGroupId, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_line_add(posFrom_posF3, posTo_posF3) do
        send cnode, {:command, :COMMAND_DRAWER_LINE_ADD, posFrom_posF3, posTo_posF3, self()}
        receive_response
    end
    def drawer_path_break(endPos_posF3, color_colorS3, alpha) do
        send cnode, {:command, :COMMAND_DRAWER_PATH_BREAK, endPos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_path_draw_icon_at_last_pos(cmdId) do
        send cnode, {:command, :COMMAND_DRAWER_PATH_DRAW_ICON_AT_LAST_POS, cmdId, self()}
        receive_response
    end
    def drawer_path_draw_line(endPos_posF3, color_colorS3, alpha) do
        send cnode, {:command, :COMMAND_DRAWER_PATH_DRAW_LINE, endPos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_path_draw_line_and_icon(cmdId, endPos_posF3, color_colorS3, alpha) do
        send cnode, {:command, :COMMAND_DRAWER_PATH_DRAW_LINE_AND_ICON, cmdId, endPos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_path_finish(iAmUseless) do
        send cnode, {:command, :COMMAND_DRAWER_PATH_FINISH, iAmUseless, self()}
        receive_response
    end
    def drawer_path_restart(sameColor) do
        send cnode, {:command, :COMMAND_DRAWER_PATH_RESTART, sameColor, self()}
        receive_response
    end
    def drawer_path_start(pos_posF3, color_colorS3, alpha) do
        send cnode, {:command, :COMMAND_DRAWER_PATH_START, pos_posF3, color_colorS3, alpha, self()}
        receive_response
    end
    def drawer_point_add(pos_posF3, label) do
        send cnode, {:command, :COMMAND_DRAWER_POINT_ADD, pos_posF3, label, self()}
        receive_response
    end
    def drawer_point_remove(pos_posF3) do
        send cnode, {:command, :COMMAND_DRAWER_POINT_REMOVE, pos_posF3, self()}
        receive_response
    end
    def group_create() do
        send cnode, {:command, :COMMAND_GROUP_CREATE, self()}
        receive_response
    end
    def group_erase(groupId) do
        send cnode, {:command, :COMMAND_GROUP_ERASE, groupId, self()}
        receive_response
    end
    def path_free(pathId) do
        send cnode, {:command, :COMMAND_PATH_FREE, pathId, self()}
        receive_response
    end
    def path_get_approximate_length(start_posF3, end_posF3, pathType, goalRadius) do
        send cnode, {:command, :COMMAND_PATH_GET_APPROXIMATE_LENGTH, start_posF3, end_posF3, pathType, goalRadius, self()}
        receive_response
    end
    def path_get_next_waypoint(pathId) do
        send cnode, {:command, :COMMAND_PATH_GET_NEXT_WAYPOINT, pathId, self()}
        receive_response
    end
    def path_init(start_posF3, end_posF3, pathType, goalRadius) do
        send cnode, {:command, :COMMAND_PATH_INIT, start_posF3, end_posF3, pathType, goalRadius, self()}
        receive_response
    end
    def pause(enable, reason) do
        send cnode, {:command, :COMMAND_PAUSE, enable, reason, self()}
        receive_response
    end
    def send_resources(resourceId, amount, receivingTeamId) do
        send cnode, {:command, :COMMAND_SEND_RESOURCES, resourceId, amount, receivingTeamId, self()}
        receive_response
    end
    def send_start_pos(ready, pos_posF3) do
        send cnode, {:command, :COMMAND_SEND_START_POS, ready, pos_posF3, self()}
        receive_response
    end
    def send_text_message(text, zone) do
        send cnode, {:command, :COMMAND_SEND_TEXT_MESSAGE, text, zone, self()}
        receive_response
    end
    def send_units(unitIds, unitIds_size, receivingTeamId) do
        send cnode, {:command, :COMMAND_SEND_UNITS, unitIds, unitIds_size, receivingTeamId, self()}
        receive_response
    end
    def set_last_pos_message(pos_posF3) do
        send cnode, {:command, :COMMAND_SET_LAST_POS_MESSAGE, pos_posF3, self()}
        receive_response
    end
    def trace_ray(rayPos_posF3, rayDir_posF3, srcUnitId, flags) do
        send cnode, {:command, :COMMAND_TRACE_RAY, rayPos_posF3, rayDir_posF3, srcUnitId, flags, self()}
        receive_response
    end
    def trace_ray_feature(rayPos_posF3, rayDir_posF3, srcUnitId, flags) do
        send cnode, {:command, :COMMAND_TRACE_RAY_FEATURE, rayPos_posF3, rayDir_posF3, srcUnitId, flags, self()}
        receive_response
    end
    def unit_ai_select(unitId, groupId, options, timeOut) do
        send cnode, {:command, :COMMAND_UNIT_AI_SELECT, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_attack(unitId, groupId, options, timeOut, toAttackUnitId) do
        send cnode, {:command, :COMMAND_UNIT_ATTACK, unitId, groupId, options, timeOut, toAttackUnitId, self()}
        receive_response
    end
    def unit_attack_area(unitId, groupId, options, timeOut, toAttackPos_posF3, radius) do
        send cnode, {:command, :COMMAND_UNIT_ATTACK_AREA, unitId, groupId, options, timeOut, toAttackPos_posF3, radius, self()}
        receive_response
    end
    def unit_build(unitId, groupId, options, timeOut, toBuildUnitDefId, buildPos_posF3, facing) do
        send cnode, {:command, :COMMAND_UNIT_BUILD, unitId, groupId, options, timeOut, toBuildUnitDefId, buildPos_posF3, facing, self()}
        receive_response
    end
    def unit_capture(unitId, groupId, options, timeOut, toCaptureUnitId) do
        send cnode, {:command, :COMMAND_UNIT_CAPTURE, unitId, groupId, options, timeOut, toCaptureUnitId, self()}
        receive_response
    end
    def unit_capture_area(unitId, groupId, options, timeOut, pos_posF3, radius) do
        send cnode, {:command, :COMMAND_UNIT_CAPTURE_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_cloak(unitId, groupId, options, timeOut, cloak) do
        send cnode, {:command, :COMMAND_UNIT_CLOAK, unitId, groupId, options, timeOut, cloak, self()}
        receive_response
    end
    def unit_custom(unitId, groupId, options, timeOut, cmdId, params, params_size) do
        send cnode, {:command, :COMMAND_UNIT_CUSTOM, unitId, groupId, options, timeOut, cmdId, params, params_size, self()}
        receive_response
    end
    def unit_d_gun(unitId, groupId, options, timeOut, toAttackUnitId) do
        send cnode, {:command, :COMMAND_UNIT_D_GUN, unitId, groupId, options, timeOut, toAttackUnitId, self()}
        receive_response
    end
    def unit_d_gun_pos(unitId, groupId, options, timeOut, pos_posF3) do
        send cnode, {:command, :COMMAND_UNIT_D_GUN_POS, unitId, groupId, options, timeOut, pos_posF3, self()}
        receive_response
    end
    def unit_fight(unitId, groupId, options, timeOut, toPos_posF3) do
        send cnode, {:command, :COMMAND_UNIT_FIGHT, unitId, groupId, options, timeOut, toPos_posF3, self()}
        receive_response
    end
    def unit_group_add(unitId, groupId, options, timeOut, toGroupId) do
        send cnode, {:command, :COMMAND_UNIT_GROUP_ADD, unitId, groupId, options, timeOut, toGroupId, self()}
        receive_response
    end
    def unit_group_clear(unitId, groupId, options, timeOut) do
        send cnode, {:command, :COMMAND_UNIT_GROUP_CLEAR, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_guard(unitId, groupId, options, timeOut, toGuardUnitId) do
        send cnode, {:command, :COMMAND_UNIT_GUARD, unitId, groupId, options, timeOut, toGuardUnitId, self()}
        receive_response
    end
    def unit_load_onto(unitId, groupId, options, timeOut, transporterUnitId) do
        send cnode, {:command, :COMMAND_UNIT_LOAD_ONTO, unitId, groupId, options, timeOut, transporterUnitId, self()}
        receive_response
    end
    def unit_load_units(unitId, groupId, options, toLoadUnitIds, toLoadUnitIds_size) do
        send cnode, {:command, :COMMAND_UNIT_LOAD_UNITS, unitId, groupId, options, toLoadUnitIds, toLoadUnitIds_size, self()}
        receive_response
    end
    def unit_load_units_area(unitId, groupId, options, timeOut, pos_posF3, radius) do
        send cnode, {:command, :COMMAND_UNIT_LOAD_UNITS_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_move(unitId, groupId, options, timeOut, toPos_posF3) do
        send cnode, {:command, :COMMAND_UNIT_MOVE, unitId, groupId, options, timeOut, toPos_posF3, self()}
        receive_response
    end
    def unit_patrol(unitId, groupId, options, timeOut, toPos_posF3) do
        send cnode, {:command, :COMMAND_UNIT_PATROL, unitId, groupId, options, timeOut, toPos_posF3, self()}
        receive_response
    end
    def unit_reclaim_area(unitId, groupId, options, timeOut, pos_posF3, radius) do
        send cnode, {:command, :COMMAND_UNIT_RECLAIM_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_reclaim_feature(unitId, groupId, options, timeOut, toReclaimFeatureId) do
        send cnode, {:command, :COMMAND_UNIT_RECLAIM_FEATURE, unitId, groupId, options, timeOut, toReclaimFeatureId, self()}
        receive_response
    end
    def unit_reclaim_unit(unitId, groupId, options, timeOut, toReclaimUnitId) do
        send cnode, {:command, :COMMAND_UNIT_RECLAIM_UNIT, unitId, groupId, options, timeOut, toReclaimUnitId, self()}
        receive_response
    end
    def unit_repair(unitId, groupId, options, timeOut, toRepairUnitId) do
        send cnode, {:command, :COMMAND_UNIT_REPAIR, unitId, groupId, options, timeOut, toRepairUnitId, self()}
        receive_response
    end
    def unit_restore_area(unitId, groupId, options, timeOut, pos_posF3, radius) do
        send cnode, {:command, :COMMAND_UNIT_RESTORE_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_resurrect(unitId, groupId, options, timeOut, toResurrectFeatureId) do
        send cnode, {:command, :COMMAND_UNIT_RESURRECT, unitId, groupId, options, timeOut, toResurrectFeatureId, self()}
        receive_response
    end
    def unit_resurrect_area(unitId, groupId, options, timeOut, pos_posF3, radius) do
        send cnode, {:command, :COMMAND_UNIT_RESURRECT_AREA, unitId, groupId, options, timeOut, pos_posF3, radius, self()}
        receive_response
    end
    def unit_self_destroy(unitId, groupId, options, timeOut) do
        send cnode, {:command, :COMMAND_UNIT_SELF_DESTROY, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_set_auto_repair_level(unitId, groupId, options, timeOut, autoRepairLevel) do
        send cnode, {:command, :COMMAND_UNIT_SET_AUTO_REPAIR_LEVEL, unitId, groupId, options, timeOut, autoRepairLevel, self()}
        receive_response
    end
    def unit_set_base(unitId, groupId, options, timeOut, basePos_posF3) do
        send cnode, {:command, :COMMAND_UNIT_SET_BASE, unitId, groupId, options, timeOut, basePos_posF3, self()}
        receive_response
    end
    def unit_set_fire_state(unitId, groupId, options, timeOut, fireState) do
        send cnode, {:command, :COMMAND_UNIT_SET_FIRE_STATE, unitId, groupId, options, timeOut, fireState, self()}
        receive_response
    end
    def unit_set_idle_mode(unitId, groupId, options, timeOut, idleMode) do
        send cnode, {:command, :COMMAND_UNIT_SET_IDLE_MODE, unitId, groupId, options, timeOut, idleMode, self()}
        receive_response
    end
    def unit_set_move_state(unitId, groupId, options, timeOut, moveState) do
        send cnode, {:command, :COMMAND_UNIT_SET_MOVE_STATE, unitId, groupId, options, timeOut, moveState, self()}
        receive_response
    end
    def unit_set_on_off(unitId, groupId, options, timeOut, on) do
        send cnode, {:command, :COMMAND_UNIT_SET_ON_OFF, unitId, groupId, options, timeOut, on, self()}
        receive_response
    end
    def unit_set_repeat(unitId, groupId, options, timeOut, repeat) do
        send cnode, {:command, :COMMAND_UNIT_SET_REPEAT, unitId, groupId, options, timeOut, repeat, self()}
        receive_response
    end
    def unit_set_trajectory(unitId, groupId, options, timeOut, trajectory) do
        send cnode, {:command, :COMMAND_UNIT_SET_TRAJECTORY, unitId, groupId, options, timeOut, trajectory, self()}
        receive_response
    end
    def unit_set_wanted_max_speed(unitId, groupId, options, timeOut, wantedMaxSpeed) do
        send cnode, {:command, :COMMAND_UNIT_SET_WANTED_MAX_SPEED, unitId, groupId, options, timeOut, wantedMaxSpeed, self()}
        receive_response
    end
    def unit_stockpile(unitId, groupId, options, timeOut) do
        send cnode, {:command, :COMMAND_UNIT_STOCKPILE, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_stop(unitId, groupId, options, timeOut) do
        send cnode, {:command, :COMMAND_UNIT_STOP, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_unload_unit(unitId, groupId, options, timeOut, toPos_posF3, toUnloadUnitId) do
        send cnode, {:command, :COMMAND_UNIT_UNLOAD_UNIT, unitId, groupId, options, timeOut, toPos_posF3, toUnloadUnitId, self()}
        receive_response
    end
    def unit_unload_units_area(unitId, groupId, options, timeOut, toPos_posF3, radius) do
        send cnode, {:command, :COMMAND_UNIT_UNLOAD_UNITS_AREA, unitId, groupId, options, timeOut, toPos_posF3, radius, self()}
        receive_response
    end
    def unit_wait(unitId, groupId, options, timeOut) do
        send cnode, {:command, :COMMAND_UNIT_WAIT, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_wait_death(unitId, groupId, options, timeOut, toDieUnitId) do
        send cnode, {:command, :COMMAND_UNIT_WAIT_DEATH, unitId, groupId, options, timeOut, toDieUnitId, self()}
        receive_response
    end
    def unit_wait_gather(unitId, groupId, options, timeOut) do
        send cnode, {:command, :COMMAND_UNIT_WAIT_GATHER, unitId, groupId, options, timeOut, self()}
        receive_response
    end
    def unit_wait_squad(unitId, groupId, options, timeOut, numUnits) do
        send cnode, {:command, :COMMAND_UNIT_WAIT_SQUAD, unitId, groupId, options, timeOut, numUnits, self()}
        receive_response
    end
    def unit_wait_time(unitId, groupId, options, timeOut, time) do
        send cnode, {:command, :COMMAND_UNIT_WAIT_TIME, unitId, groupId, options, timeOut, time, self()}
        receive_response
    end
end
