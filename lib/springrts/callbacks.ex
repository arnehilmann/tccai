defmodule SpringRTS.Callbacks do
    @moduledoc false
    import SpringRTS.Helper, only: :functions

    defmodule Cheats do
        @moduledoc false
        def is_enabled do
            send Application.get_env(SpringRTS, :engine), {:callback, :Cheats_isEnabled, self()}
            receive_response
        end
        def is_only_passive do
            send Application.get_env(SpringRTS, :engine), {:callback, :Cheats_isOnlyPassive, self()}
            receive_response
        end
        def set_enabled(enable) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Cheats_setEnabled, enable, self()}
            receive_response
        end
        def set_events_enabled(enabled) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Cheats_setEventsEnabled, enabled, self()}
            receive_response
        end
    end

    defmodule DataDirs do
        @moduledoc false
        def roots_allocate_path(relPath, writeable, create, dir) do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_Roots_allocatePath, relPath, writeable, create, dir, self()}
            receive_response
        end
        def roots_get_dir(path, path_sizeMax \\ 100, dirIndex) do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_Roots_getDir, path, path_sizeMax, dirIndex, self()}
            receive_response
        end
        def roots_get_size do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_Roots_getSize, self()}
            receive_response
        end
        def roots_locate_path(path, path_sizeMax \\ 100, relPath, writeable, create, dir) do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_Roots_locatePath, path, path_sizeMax, relPath, writeable, create, dir, self()}
            receive_response
        end
        def allocate_path(relPath, writeable, create, dir, common) do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_allocatePath, relPath, writeable, create, dir, common, self()}
            receive_response
        end
        def get_config_dir do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_getConfigDir, self()}
            receive_response
        end
        def get_path_separator do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_getPathSeparator, self()}
            receive_response
        end
        def get_writeable_dir do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_getWriteableDir, self()}
            receive_response
        end
        def locate_path(path, path_sizeMax \\ 100, relPath, writeable, create, dir, common) do
            send Application.get_env(SpringRTS, :engine), {:callback, :DataDirs_locatePath, path, path_sizeMax, relPath, writeable, create, dir, common, self()}
            receive_response
        end
    end

    defmodule Debug do
        @moduledoc false
        def graph_drawer_is_enabled do
            send Application.get_env(SpringRTS, :engine), {:callback, :Debug_GraphDrawer_isEnabled, self()}
            receive_response
        end
    end

    defmodule Economy do
        @moduledoc false
        def get_current(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getCurrent, resourceId, self()}
            receive_response
        end
        def get_excess(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getExcess, resourceId, self()}
            receive_response
        end
        def get_income(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getIncome, resourceId, self()}
            receive_response
        end
        def get_pull(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getPull, resourceId, self()}
            receive_response
        end
        def get_received(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getReceived, resourceId, self()}
            receive_response
        end
        def get_sent(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getSent, resourceId, self()}
            receive_response
        end
        def get_share(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getShare, resourceId, self()}
            receive_response
        end
        def get_storage(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getStorage, resourceId, self()}
            receive_response
        end
        def get_usage(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Economy_getUsage, resourceId, self()}
            receive_response
        end
    end

    defmodule Engine do
        @moduledoc false
        def version_get_additional do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getAdditional, self()}
            receive_response
        end
        def version_get_branch do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getBranch, self()}
            receive_response
        end
        def version_get_build_time do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getBuildTime, self()}
            receive_response
        end
        def version_get_commits do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getCommits, self()}
            receive_response
        end
        def version_get_full do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getFull, self()}
            receive_response
        end
        def version_get_hash do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getHash, self()}
            receive_response
        end
        def version_get_major do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getMajor, self()}
            receive_response
        end
        def version_get_minor do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getMinor, self()}
            receive_response
        end
        def version_get_normal do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getNormal, self()}
            receive_response
        end
        def version_get_patchset do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getPatchset, self()}
            receive_response
        end
        def version_get_sync do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_getSync, self()}
            receive_response
        end
        def version_is_release do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_Version_isRelease, self()}
            receive_response
        end
        def execute_command(unitId, groupId, commandData) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_executeCommand, unitId, groupId, commandData, self()}
            receive_response
        end
        def handle_command(toId, commandId, commandTopic, commandData) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Engine_handleCommand, toId, commandId, commandTopic, commandData, self()}
            receive_response
        end
    end

    defmodule FeatureDef do
        @moduledoc false
        def get_contained_resource(featureDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getContainedResource, featureDefId, resourceId, self()}
            receive_response
        end
        def get_custom_params(featureDefId, keys, values) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getCustomParams, featureDefId, keys, values, self()}
            receive_response
        end
        def get_death_feature(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getDeathFeature, featureDefId, self()}
            receive_response
        end
        def get_description(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getDescription, featureDefId, self()}
            receive_response
        end
        def get_draw_type(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getDrawType, featureDefId, self()}
            receive_response
        end
        def get_file_name(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getFileName, featureDefId, self()}
            receive_response
        end
        def get_mass(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getMass, featureDefId, self()}
            receive_response
        end
        def get_max_health(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getMaxHealth, featureDefId, self()}
            receive_response
        end
        def get_model_name(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getModelName, featureDefId, self()}
            receive_response
        end
        def get_name(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getName, featureDefId, self()}
            receive_response
        end
        def get_reclaim_time(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getReclaimTime, featureDefId, self()}
            receive_response
        end
        def get_resurrectable(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getResurrectable, featureDefId, self()}
            receive_response
        end
        def get_smoke_time(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getSmokeTime, featureDefId, self()}
            receive_response
        end
        def get_xsize(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getXSize, featureDefId, self()}
            receive_response
        end
        def get_zsize(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_getZSize, featureDefId, self()}
            receive_response
        end
        def is_blocking(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_isBlocking, featureDefId, self()}
            receive_response
        end
        def is_burnable(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_isBurnable, featureDefId, self()}
            receive_response
        end
        def is_destructable(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_isDestructable, featureDefId, self()}
            receive_response
        end
        def is_floating(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_isFloating, featureDefId, self()}
            receive_response
        end
        def is_geo_thermal(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_isGeoThermal, featureDefId, self()}
            receive_response
        end
        def is_no_select(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_isNoSelect, featureDefId, self()}
            receive_response
        end
        def is_reclaimable(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_isReclaimable, featureDefId, self()}
            receive_response
        end
        def is_upright(featureDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :FeatureDef_isUpright, featureDefId, self()}
            receive_response
        end
    end

    defmodule Feature do
        @moduledoc false
        def get_def(featureId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Feature_getDef, featureId, self()}
            receive_response
        end
        def get_health(featureId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Feature_getHealth, featureId, self()}
            receive_response
        end
        def get_position(featureId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Feature_getPosition, featureId, self()}
            receive_response
        end
        def get_reclaim_left(featureId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Feature_getReclaimLeft, featureId, self()}
            receive_response
        end
    end

    defmodule File do
        @moduledoc false
        def get_content(fileName, buffer, bufferLen) do
            send Application.get_env(SpringRTS, :engine), {:callback, :File_getContent, fileName, buffer, bufferLen, self()}
            receive_response
        end
        def get_size(fileName) do
            send Application.get_env(SpringRTS, :engine), {:callback, :File_getSize, fileName, self()}
            receive_response
        end
    end

    defmodule GameRulesParam do
        @moduledoc false
        def get_name(gameRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :GameRulesParam_getName, gameRulesParamId, self()}
            receive_response
        end
        def get_value_float(gameRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :GameRulesParam_getValueFloat, gameRulesParamId, self()}
            receive_response
        end
        def get_value_string(gameRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :GameRulesParam_getValueString, gameRulesParamId, self()}
            receive_response
        end
    end

    defmodule Game do
        @moduledoc false
        def get_ai_interface_version do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getAiInterfaceVersion, self()}
            receive_response
        end
        def get_categories_flag(categoryNames) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getCategoriesFlag, categoryNames, self()}
            receive_response
        end
        def get_category_flag(categoryName) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getCategoryFlag, categoryName, self()}
            receive_response
        end
        def get_category_name(categoryFlag, name, name_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getCategoryName, categoryFlag, name, name_sizeMax, self()}
            receive_response
        end
        def get_current_frame do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getCurrentFrame, self()}
            receive_response
        end
        def get_game_rules_param_by_id(rulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getGameRulesParamById, rulesParamId, self()}
            receive_response
        end
        def get_game_rules_param_by_name(rulesParamName) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getGameRulesParamByName, rulesParamName, self()}
            receive_response
        end
        def get_game_rules_params(paramIds_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getGameRulesParams, paramIds_sizeMax, self()}
            receive_response
        end
        def get_mode do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getMode, self()}
            receive_response
        end
        def get_my_ally_team do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getMyAllyTeam, self()}
            receive_response
        end
        def get_my_team do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getMyTeam, self()}
            receive_response
        end
        def get_player_team(playerId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getPlayerTeam, playerId, self()}
            receive_response
        end
        def get_setup_script do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getSetupScript, self()}
            receive_response
        end
        def get_speed_factor do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getSpeedFactor, self()}
            receive_response
        end
        def get_team_ally_team(otherTeamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamAllyTeam, otherTeamId, self()}
            receive_response
        end
        def get_team_color(otherTeamId, return_colorS3_out) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamColor, otherTeamId, return_colorS3_out, self()}
            receive_response
        end
        def get_team_income_multiplier(otherTeamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamIncomeMultiplier, otherTeamId, self()}
            receive_response
        end
        def get_team_resource_current(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourceCurrent, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_resource_excess(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourceExcess, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_resource_income(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourceIncome, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_resource_pull(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourcePull, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_resource_received(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourceReceived, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_resource_sent(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourceSent, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_resource_share(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourceShare, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_resource_storage(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourceStorage, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_resource_usage(otherTeamId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamResourceUsage, otherTeamId, resourceId, self()}
            receive_response
        end
        def get_team_side(otherTeamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeamSide, otherTeamId, self()}
            receive_response
        end
        def get_teams do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_getTeams, self()}
            receive_response
        end
        def is_allied(firstAllyTeamId, secondAllyTeamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_isAllied, firstAllyTeamId, secondAllyTeamId, self()}
            receive_response
        end
        def is_debug_mode_enabled do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_isDebugModeEnabled, self()}
            receive_response
        end
        def is_exception_handling_enabled do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_isExceptionHandlingEnabled, self()}
            receive_response
        end
        def is_paused do
            send Application.get_env(SpringRTS, :engine), {:callback, :Game_isPaused, self()}
            receive_response
        end
    end

    defmodule Group do
        @moduledoc false
        def order_preview_get_id(groupId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_OrderPreview_getId, groupId, self()}
            receive_response
        end
        def order_preview_get_options(groupId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_OrderPreview_getOptions, groupId, self()}
            receive_response
        end
        def order_preview_get_params(groupId, params_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_OrderPreview_getParams, groupId, params_sizeMax, self()}
            receive_response
        end
        def order_preview_get_tag(groupId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_OrderPreview_getTag, groupId, self()}
            receive_response
        end
        def order_preview_get_time_out(groupId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_OrderPreview_getTimeOut, groupId, self()}
            receive_response
        end
        def supported_command_get_id(groupId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_SupportedCommand_getId, groupId, supportedCommandId, self()}
            receive_response
        end
        def supported_command_get_name(groupId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_SupportedCommand_getName, groupId, supportedCommandId, self()}
            receive_response
        end
        def supported_command_get_params(groupId, supportedCommandId, params_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_SupportedCommand_getParams, groupId, supportedCommandId, params_sizeMax, self()}
            receive_response
        end
        def supported_command_get_tool_tip(groupId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_SupportedCommand_getToolTip, groupId, supportedCommandId, self()}
            receive_response
        end
        def supported_command_is_disabled(groupId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_SupportedCommand_isDisabled, groupId, supportedCommandId, self()}
            receive_response
        end
        def supported_command_is_show_unique(groupId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_SupportedCommand_isShowUnique, groupId, supportedCommandId, self()}
            receive_response
        end
        def get_supported_commands(groupId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_getSupportedCommands, groupId, self()}
            receive_response
        end
        def is_selected(groupId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Group_isSelected, groupId, self()}
            receive_response
        end
    end

    defmodule Gui do
        @moduledoc false
        def camera_get_direction do
            send Application.get_env(SpringRTS, :engine), {:callback, :Gui_Camera_getDirection, self()}
            receive_response
        end
        def camera_get_position do
            send Application.get_env(SpringRTS, :engine), {:callback, :Gui_Camera_getPosition, self()}
            receive_response
        end
        def get_screen_x do
            send Application.get_env(SpringRTS, :engine), {:callback, :Gui_getScreenX, self()}
            receive_response
        end
        def get_screen_y do
            send Application.get_env(SpringRTS, :engine), {:callback, :Gui_getScreenY, self()}
            receive_response
        end
        def get_view_range do
            send Application.get_env(SpringRTS, :engine), {:callback, :Gui_getViewRange, self()}
            receive_response
        end
    end

    defmodule Log do
        @moduledoc false
        def exception(msg, severety, die) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Log_exception, msg, severety, die, self()}
            receive_response
        end
        def log(msg) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Log_log, msg, self()}
            receive_response
        end
    end

    defmodule Map do
        @moduledoc false
        def line_get_color(lineId, return_colorS3_out) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_Line_getColor, lineId, return_colorS3_out, self()}
            receive_response
        end
        def line_get_first_position(lineId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_Line_getFirstPosition, lineId, self()}
            receive_response
        end
        def line_get_second_position(lineId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_Line_getSecondPosition, lineId, self()}
            receive_response
        end
        def point_get_color(pointId, return_colorS3_out) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_Point_getColor, pointId, return_colorS3_out, self()}
            receive_response
        end
        def point_get_label(pointId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_Point_getLabel, pointId, self()}
            receive_response
        end
        def point_get_position(pointId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_Point_getPosition, pointId, self()}
            receive_response
        end
        def find_closest_build_site(unitDefId, pos_posF3, searchRadius, minDist, facing) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_findClosestBuildSite, unitDefId, pos_posF3, searchRadius, minDist, facing, self()}
            receive_response
        end
        def get_air_los_map(airLosValues_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getAirLosMap, airLosValues_sizeMax, self()}
            receive_response
        end
        def get_checksum do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getChecksum, self()}
            receive_response
        end
        def get_corners_height_map(cornerHeights_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getCornersHeightMap, cornerHeights_sizeMax, self()}
            receive_response
        end
        def get_cur_wind do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getCurWind, self()}
            receive_response
        end
        def get_elevation_at(x, z) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getElevationAt, x, z, self()}
            receive_response
        end
        def get_extractor_radius(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getExtractorRadius, resourceId, self()}
            receive_response
        end
        def get_gravity do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getGravity, self()}
            receive_response
        end
        def get_hardness do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getHardness, self()}
            receive_response
        end
        def get_hardness_mod_map(hardMods_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getHardnessModMap, hardMods_sizeMax, self()}
            receive_response
        end
        def get_hash do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getHash, self()}
            receive_response
        end
        def get_height do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getHeight, self()}
            receive_response
        end
        def get_height_map(heights_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getHeightMap, heights_sizeMax, self()}
            receive_response
        end
        def get_human_name do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getHumanName, self()}
            receive_response
        end
        def get_jammer_map(jammerValues_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getJammerMap, jammerValues_sizeMax, self()}
            receive_response
        end
        def get_lines(includeAllies) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getLines, includeAllies, self()}
            receive_response
        end
        def get_los_map(losValues_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getLosMap, losValues_sizeMax, self()}
            receive_response
        end
        def get_max_height do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getMaxHeight, self()}
            receive_response
        end
        def get_max_resource(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getMaxResource, resourceId, self()}
            receive_response
        end
        def get_max_wind do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getMaxWind, self()}
            receive_response
        end
        def get_min_height do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getMinHeight, self()}
            receive_response
        end
        def get_min_wind do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getMinWind, self()}
            receive_response
        end
        def get_mouse_pos do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getMousePos, self()}
            receive_response
        end
        def get_name do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getName, self()}
            receive_response
        end
        def get_points(includeAllies) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getPoints, includeAllies, self()}
            receive_response
        end
        def get_radar_map(radarValues_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getRadarMap, radarValues_sizeMax, self()}
            receive_response
        end
        def get_resource_map_raw(resourceId, resources_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getResourceMapRaw, resourceId, resources_sizeMax, self()}
            receive_response
        end
        def get_resource_map_spots_average_income(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getResourceMapSpotsAverageIncome, resourceId, self()}
            receive_response
        end
        def get_resource_map_spots_nearest(resourceId, pos_posF3) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getResourceMapSpotsNearest, resourceId, pos_posF3, self()}
            receive_response
        end
        def get_resource_map_spots_positions(resourceId, spots_AposF3_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getResourceMapSpotsPositions, resourceId, spots_AposF3_sizeMax, self()}
            receive_response
        end
        def get_seismic_map(seismicValues_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getSeismicMap, seismicValues_sizeMax, self()}
            receive_response
        end
        def get_slope_map(slopes_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getSlopeMap, slopes_sizeMax, self()}
            receive_response
        end
        def get_sonar_jammer_map(sonarJammerValues_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getSonarJammerMap, sonarJammerValues_sizeMax, self()}
            receive_response
        end
        def get_sonar_map(sonarValues_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getSonarMap, sonarValues_sizeMax, self()}
            receive_response
        end
        def get_speed_mod_map(speedModClass, speedMods_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getSpeedModMap, speedModClass, speedMods_sizeMax, self()}
            receive_response
        end
        def get_start_pos do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getStartPos, self()}
            receive_response
        end
        def get_tidal_strength do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getTidalStrength, self()}
            receive_response
        end
        def get_water_damage do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getWaterDamage, self()}
            receive_response
        end
        def get_width do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_getWidth, self()}
            receive_response
        end
        def is_deformable do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_isDeformable, self()}
            receive_response
        end
        def is_pos_in_camera(pos_posF3, radius) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_isPosInCamera, pos_posF3, radius, self()}
            receive_response
        end
        def is_possible_to_build_at(unitDefId, pos_posF3, facing) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Map_isPossibleToBuildAt, unitDefId, pos_posF3, facing, self()}
            receive_response
        end
    end

    defmodule Mod do
        @moduledoc false
        def get_air_mip_level do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getAirMipLevel, self()}
            receive_response
        end
        def get_allow_team_colors do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getAllowTeamColors, self()}
            receive_response
        end
        def get_capture_energy_cost_factor do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getCaptureEnergyCostFactor, self()}
            receive_response
        end
        def get_construction_decay do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getConstructionDecay, self()}
            receive_response
        end
        def get_construction_decay_speed do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getConstructionDecaySpeed, self()}
            receive_response
        end
        def get_construction_decay_time do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getConstructionDecayTime, self()}
            receive_response
        end
        def get_description do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getDescription, self()}
            receive_response
        end
        def get_file_name do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getFileName, self()}
            receive_response
        end
        def get_fire_at_crashing do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getFireAtCrashing, self()}
            receive_response
        end
        def get_fire_at_killed do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getFireAtKilled, self()}
            receive_response
        end
        def get_flanking_bonus_mode_default do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getFlankingBonusModeDefault, self()}
            receive_response
        end
        def get_hash do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getHash, self()}
            receive_response
        end
        def get_human_name do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getHumanName, self()}
            receive_response
        end
        def get_los_mip_level do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getLosMipLevel, self()}
            receive_response
        end
        def get_multi_reclaim do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getMultiReclaim, self()}
            receive_response
        end
        def get_mutator do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getMutator, self()}
            receive_response
        end
        def get_reclaim_allow_allies do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getReclaimAllowAllies, self()}
            receive_response
        end
        def get_reclaim_allow_enemies do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getReclaimAllowEnemies, self()}
            receive_response
        end
        def get_reclaim_feature_energy_cost_factor do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getReclaimFeatureEnergyCostFactor, self()}
            receive_response
        end
        def get_reclaim_method do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getReclaimMethod, self()}
            receive_response
        end
        def get_reclaim_unit_efficiency do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getReclaimUnitEfficiency, self()}
            receive_response
        end
        def get_reclaim_unit_energy_cost_factor do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getReclaimUnitEnergyCostFactor, self()}
            receive_response
        end
        def get_reclaim_unit_method do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getReclaimUnitMethod, self()}
            receive_response
        end
        def get_repair_energy_cost_factor do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getRepairEnergyCostFactor, self()}
            receive_response
        end
        def get_require_sonar_under_water do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getRequireSonarUnderWater, self()}
            receive_response
        end
        def get_resurrect_energy_cost_factor do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getResurrectEnergyCostFactor, self()}
            receive_response
        end
        def get_short_name do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getShortName, self()}
            receive_response
        end
        def get_transport_air do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getTransportAir, self()}
            receive_response
        end
        def get_transport_ground do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getTransportGround, self()}
            receive_response
        end
        def get_transport_hover do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getTransportHover, self()}
            receive_response
        end
        def get_transport_ship do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getTransportShip, self()}
            receive_response
        end
        def get_version do
            send Application.get_env(SpringRTS, :engine), {:callback, :Mod_getVersion, self()}
            receive_response
        end
    end

    defmodule Resource do
        @moduledoc false
        def get_name(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Resource_getName, resourceId, self()}
            receive_response
        end
        def get_optimum(resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Resource_getOptimum, resourceId, self()}
            receive_response
        end
    end

    defmodule SkirmishAI do
        @moduledoc false
        def info_get_description(infoIndex) do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_Info_getDescription, infoIndex, self()}
            receive_response
        end
        def info_get_key(infoIndex) do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_Info_getKey, infoIndex, self()}
            receive_response
        end
        def info_get_size do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_Info_getSize, self()}
            receive_response
        end
        def info_get_value(infoIndex) do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_Info_getValue, infoIndex, self()}
            receive_response
        end
        def info_get_value_by_key(key) do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_Info_getValueByKey, key, self()}
            receive_response
        end
        def option_values_get_key(optionIndex) do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_OptionValues_getKey, optionIndex, self()}
            receive_response
        end
        def option_values_get_size do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_OptionValues_getSize, self()}
            receive_response
        end
        def option_values_get_value(optionIndex) do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_OptionValues_getValue, optionIndex, self()}
            receive_response
        end
        def option_values_get_value_by_key(key) do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_OptionValues_getValueByKey, key, self()}
            receive_response
        end
        def get_team_id do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAI_getTeamId, self()}
            receive_response
        end
    end

    defmodule SkirmishAIs do
        @moduledoc false
        def get_max do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAIs_getMax, self()}
            receive_response
        end
        def get_size do
            send Application.get_env(SpringRTS, :engine), {:callback, :SkirmishAIs_getSize, self()}
            receive_response
        end
    end

    defmodule Team do
        @moduledoc false
        def team_rules_param_get_name(teamId, teamRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Team_TeamRulesParam_getName, teamId, teamRulesParamId, self()}
            receive_response
        end
        def team_rules_param_get_value_float(teamId, teamRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Team_TeamRulesParam_getValueFloat, teamId, teamRulesParamId, self()}
            receive_response
        end
        def team_rules_param_get_value_string(teamId, teamRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Team_TeamRulesParam_getValueString, teamId, teamRulesParamId, self()}
            receive_response
        end
        def get_team_rules_param_by_id(teamId, rulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Team_getTeamRulesParamById, teamId, rulesParamId, self()}
            receive_response
        end
        def get_team_rules_param_by_name(teamId, rulesParamName) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Team_getTeamRulesParamByName, teamId, rulesParamName, self()}
            receive_response
        end
        def get_team_rules_params(teamId, paramIds_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Team_getTeamRulesParams, teamId, paramIds_sizeMax, self()}
            receive_response
        end
        def has_aicontroller(teamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Team_hasAIController, teamId, self()}
            receive_response
        end
    end

    defmodule Teams do
        @moduledoc false
        def get_size do
            send Application.get_env(SpringRTS, :engine), {:callback, :Teams_getSize, self()}
            receive_response
        end
    end

    defmodule UnitDef do
        @moduledoc false
        def flanking_bonus_get_dir(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_FlankingBonus_getDir, unitDefId, self()}
            receive_response
        end
        def flanking_bonus_get_max(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_FlankingBonus_getMax, unitDefId, self()}
            receive_response
        end
        def flanking_bonus_get_min(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_FlankingBonus_getMin, unitDefId, self()}
            receive_response
        end
        def flanking_bonus_get_mobility_add(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_FlankingBonus_getMobilityAdd, unitDefId, self()}
            receive_response
        end
        def flanking_bonus_get_mode(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_FlankingBonus_getMode, unitDefId, self()}
            receive_response
        end
        def move_data_get_crush_strength(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getCrushStrength, unitDefId, self()}
            receive_response
        end
        def move_data_get_depth(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getDepth, unitDefId, self()}
            receive_response
        end
        def move_data_get_depth_mod(unitDefId, height) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getDepthMod, unitDefId, height, self()}
            receive_response
        end
        def move_data_get_follow_ground(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getFollowGround, unitDefId, self()}
            receive_response
        end
        def move_data_get_max_acceleration(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getMaxAcceleration, unitDefId, self()}
            receive_response
        end
        def move_data_get_max_breaking(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getMaxBreaking, unitDefId, self()}
            receive_response
        end
        def move_data_get_max_slope(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getMaxSlope, unitDefId, self()}
            receive_response
        end
        def move_data_get_max_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getMaxSpeed, unitDefId, self()}
            receive_response
        end
        def move_data_get_max_turn_rate(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getMaxTurnRate, unitDefId, self()}
            receive_response
        end
        def move_data_get_move_type(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getMoveType, unitDefId, self()}
            receive_response
        end
        def move_data_get_name(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getName, unitDefId, self()}
            receive_response
        end
        def move_data_get_path_type(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getPathType, unitDefId, self()}
            receive_response
        end
        def move_data_get_slope_mod(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getSlopeMod, unitDefId, self()}
            receive_response
        end
        def move_data_get_speed_mod_class(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getSpeedModClass, unitDefId, self()}
            receive_response
        end
        def move_data_get_terrain_class(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getTerrainClass, unitDefId, self()}
            receive_response
        end
        def move_data_get_xsize(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getXSize, unitDefId, self()}
            receive_response
        end
        def move_data_get_zsize(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_getZSize, unitDefId, self()}
            receive_response
        end
        def move_data_is_sub_marine(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_MoveData_isSubMarine, unitDefId, self()}
            receive_response
        end
        def weapon_mount_get_bad_target_category(unitDefId, weaponMountId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_WeaponMount_getBadTargetCategory, unitDefId, weaponMountId, self()}
            receive_response
        end
        def weapon_mount_get_main_dir(unitDefId, weaponMountId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_WeaponMount_getMainDir, unitDefId, weaponMountId, self()}
            receive_response
        end
        def weapon_mount_get_max_angle_dif(unitDefId, weaponMountId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_WeaponMount_getMaxAngleDif, unitDefId, weaponMountId, self()}
            receive_response
        end
        def weapon_mount_get_name(unitDefId, weaponMountId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_WeaponMount_getName, unitDefId, weaponMountId, self()}
            receive_response
        end
        def weapon_mount_get_only_target_category(unitDefId, weaponMountId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_WeaponMount_getOnlyTargetCategory, unitDefId, weaponMountId, self()}
            receive_response
        end
        def weapon_mount_get_slaved_to(unitDefId, weaponMountId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_WeaponMount_getSlavedTo, unitDefId, weaponMountId, self()}
            receive_response
        end
        def weapon_mount_get_weapon_def(unitDefId, weaponMountId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_WeaponMount_getWeaponDef, unitDefId, weaponMountId, self()}
            receive_response
        end
        def can_manual_fire(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_canManualFire, unitDefId, self()}
            receive_response
        end
        def get_ai_hint(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getAiHint, unitDefId, self()}
            receive_response
        end
        def get_air_los_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getAirLosRadius, unitDefId, self()}
            receive_response
        end
        def get_armor_type(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getArmorType, unitDefId, self()}
            receive_response
        end
        def get_armored_multiple(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getArmoredMultiple, unitDefId, self()}
            receive_response
        end
        def get_auto_heal(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getAutoHeal, unitDefId, self()}
            receive_response
        end
        def get_build_angle(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildAngle, unitDefId, self()}
            receive_response
        end
        def get_build_distance(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildDistance, unitDefId, self()}
            receive_response
        end
        def get_build_options(unitDefId, unitDefIds_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildOptions, unitDefId, unitDefIds_sizeMax, self()}
            receive_response
        end
        def get_build_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildSpeed, unitDefId, self()}
            receive_response
        end
        def get_build_time(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildTime, unitDefId, self()}
            receive_response
        end
        def get_building_decal_decay_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildingDecalDecaySpeed, unitDefId, self()}
            receive_response
        end
        def get_building_decal_size_x(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildingDecalSizeX, unitDefId, self()}
            receive_response
        end
        def get_building_decal_size_y(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildingDecalSizeY, unitDefId, self()}
            receive_response
        end
        def get_building_decal_type(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getBuildingDecalType, unitDefId, self()}
            receive_response
        end
        def get_capture_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getCaptureSpeed, unitDefId, self()}
            receive_response
        end
        def get_category(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getCategory, unitDefId, self()}
            receive_response
        end
        def get_category_string(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getCategoryString, unitDefId, self()}
            receive_response
        end
        def get_cloak_cost(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getCloakCost, unitDefId, self()}
            receive_response
        end
        def get_cloak_cost_moving(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getCloakCostMoving, unitDefId, self()}
            receive_response
        end
        def get_cob_id(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getCobId, unitDefId, self()}
            receive_response
        end
        def get_cost(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getCost, unitDefId, resourceId, self()}
            receive_response
        end
        def get_custom_params(unitDefId, keys, values) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getCustomParams, unitDefId, keys, values, self()}
            receive_response
        end
        def get_death_explosion(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getDeathExplosion, unitDefId, self()}
            receive_response
        end
        def get_decloak_distance(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getDecloakDistance, unitDefId, self()}
            receive_response
        end
        def get_decoy_def(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getDecoyDef, unitDefId, self()}
            receive_response
        end
        def get_dl_hover_factor(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getDlHoverFactor, unitDefId, self()}
            receive_response
        end
        def get_drag(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getDrag, unitDefId, self()}
            receive_response
        end
        def get_extracts_resource(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getExtractsResource, unitDefId, resourceId, self()}
            receive_response
        end
        def get_fall_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFallSpeed, unitDefId, self()}
            receive_response
        end
        def get_file_name(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFileName, unitDefId, self()}
            receive_response
        end
        def get_fire_state(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFireState, unitDefId, self()}
            receive_response
        end
        def get_flare_delay(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFlareDelay, unitDefId, self()}
            receive_response
        end
        def get_flare_drop_vector(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFlareDropVector, unitDefId, self()}
            receive_response
        end
        def get_flare_efficiency(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFlareEfficiency, unitDefId, self()}
            receive_response
        end
        def get_flare_reload_time(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFlareReloadTime, unitDefId, self()}
            receive_response
        end
        def get_flare_salvo_delay(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFlareSalvoDelay, unitDefId, self()}
            receive_response
        end
        def get_flare_salvo_size(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFlareSalvoSize, unitDefId, self()}
            receive_response
        end
        def get_flare_time(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFlareTime, unitDefId, self()}
            receive_response
        end
        def get_front_to_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getFrontToSpeed, unitDefId, self()}
            receive_response
        end
        def get_gaia(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getGaia, unitDefId, self()}
            receive_response
        end
        def get_health(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getHealth, unitDefId, self()}
            receive_response
        end
        def get_height(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getHeight, unitDefId, self()}
            receive_response
        end
        def get_high_trajectory_type(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getHighTrajectoryType, unitDefId, self()}
            receive_response
        end
        def get_human_name(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getHumanName, unitDefId, self()}
            receive_response
        end
        def get_idle_auto_heal(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getIdleAutoHeal, unitDefId, self()}
            receive_response
        end
        def get_idle_time(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getIdleTime, unitDefId, self()}
            receive_response
        end
        def get_jammer_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getJammerRadius, unitDefId, self()}
            receive_response
        end
        def get_kamikaze_dist(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getKamikazeDist, unitDefId, self()}
            receive_response
        end
        def get_loading_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getLoadingRadius, unitDefId, self()}
            receive_response
        end
        def get_los_height(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getLosHeight, unitDefId, self()}
            receive_response
        end
        def get_los_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getLosRadius, unitDefId, self()}
            receive_response
        end
        def get_makes_resource(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMakesResource, unitDefId, resourceId, self()}
            receive_response
        end
        def get_mass(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMass, unitDefId, self()}
            receive_response
        end
        def get_max_acceleration(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxAcceleration, unitDefId, self()}
            receive_response
        end
        def get_max_aileron(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxAileron, unitDefId, self()}
            receive_response
        end
        def get_max_bank(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxBank, unitDefId, self()}
            receive_response
        end
        def get_max_deceleration(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxDeceleration, unitDefId, self()}
            receive_response
        end
        def get_max_elevator(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxElevator, unitDefId, self()}
            receive_response
        end
        def get_max_height_dif(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxHeightDif, unitDefId, self()}
            receive_response
        end
        def get_max_pitch(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxPitch, unitDefId, self()}
            receive_response
        end
        def get_max_repair_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxRepairSpeed, unitDefId, self()}
            receive_response
        end
        def get_max_rudder(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxRudder, unitDefId, self()}
            receive_response
        end
        def get_max_slope(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxSlope, unitDefId, self()}
            receive_response
        end
        def get_max_this_unit(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxThisUnit, unitDefId, self()}
            receive_response
        end
        def get_max_water_depth(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxWaterDepth, unitDefId, self()}
            receive_response
        end
        def get_max_weapon_range(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMaxWeaponRange, unitDefId, self()}
            receive_response
        end
        def get_min_collision_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMinCollisionSpeed, unitDefId, self()}
            receive_response
        end
        def get_min_transport_mass(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMinTransportMass, unitDefId, self()}
            receive_response
        end
        def get_min_transport_size(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMinTransportSize, unitDefId, self()}
            receive_response
        end
        def get_min_water_depth(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMinWaterDepth, unitDefId, self()}
            receive_response
        end
        def get_move_state(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMoveState, unitDefId, self()}
            receive_response
        end
        def get_my_gravity(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getMyGravity, unitDefId, self()}
            receive_response
        end
        def get_name(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getName, unitDefId, self()}
            receive_response
        end
        def get_no_chase_category(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getNoChaseCategory, unitDefId, self()}
            receive_response
        end
        def get_power(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getPower, unitDefId, self()}
            receive_response
        end
        def get_radar_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getRadarRadius, unitDefId, self()}
            receive_response
        end
        def get_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getRadius, unitDefId, self()}
            receive_response
        end
        def get_reclaim_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getReclaimSpeed, unitDefId, self()}
            receive_response
        end
        def get_repair_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getRepairSpeed, unitDefId, self()}
            receive_response
        end
        def get_resource_extractor_range(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getResourceExtractorRange, unitDefId, resourceId, self()}
            receive_response
        end
        def get_resource_make(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getResourceMake, unitDefId, resourceId, self()}
            receive_response
        end
        def get_resurrect_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getResurrectSpeed, unitDefId, self()}
            receive_response
        end
        def get_seismic_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSeismicRadius, unitDefId, self()}
            receive_response
        end
        def get_seismic_signature(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSeismicSignature, unitDefId, self()}
            receive_response
        end
        def get_self_dcountdown(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSelfDCountdown, unitDefId, self()}
            receive_response
        end
        def get_self_dexplosion(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSelfDExplosion, unitDefId, self()}
            receive_response
        end
        def get_shield_def(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getShieldDef, unitDefId, self()}
            receive_response
        end
        def get_slide_tolerance(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSlideTolerance, unitDefId, self()}
            receive_response
        end
        def get_sonar_jam_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSonarJamRadius, unitDefId, self()}
            receive_response
        end
        def get_sonar_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSonarRadius, unitDefId, self()}
            receive_response
        end
        def get_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSpeed, unitDefId, self()}
            receive_response
        end
        def get_speed_to_front(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getSpeedToFront, unitDefId, self()}
            receive_response
        end
        def get_stockpile_def(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getStockpileDef, unitDefId, self()}
            receive_response
        end
        def get_storage(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getStorage, unitDefId, resourceId, self()}
            receive_response
        end
        def get_tech_level(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTechLevel, unitDefId, self()}
            receive_response
        end
        def get_terraform_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTerraformSpeed, unitDefId, self()}
            receive_response
        end
        def get_tidal_resource_generator(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTidalResourceGenerator, unitDefId, resourceId, self()}
            receive_response
        end
        def get_tooltip(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTooltip, unitDefId, self()}
            receive_response
        end
        def get_track_offset(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTrackOffset, unitDefId, self()}
            receive_response
        end
        def get_track_strength(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTrackStrength, unitDefId, self()}
            receive_response
        end
        def get_track_stretch(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTrackStretch, unitDefId, self()}
            receive_response
        end
        def get_track_type(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTrackType, unitDefId, self()}
            receive_response
        end
        def get_track_width(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTrackWidth, unitDefId, self()}
            receive_response
        end
        def get_transport_capacity(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTransportCapacity, unitDefId, self()}
            receive_response
        end
        def get_transport_mass(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTransportMass, unitDefId, self()}
            receive_response
        end
        def get_transport_size(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTransportSize, unitDefId, self()}
            receive_response
        end
        def get_transport_unload_method(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTransportUnloadMethod, unitDefId, self()}
            receive_response
        end
        def get_turn_in_place_distance(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTurnInPlaceDistance, unitDefId, self()}
            receive_response
        end
        def get_turn_in_place_speed_limit(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTurnInPlaceSpeedLimit, unitDefId, self()}
            receive_response
        end
        def get_turn_radius(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTurnRadius, unitDefId, self()}
            receive_response
        end
        def get_turn_rate(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getTurnRate, unitDefId, self()}
            receive_response
        end
        def get_type(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getType, unitDefId, self()}
            receive_response
        end
        def get_unit_fall_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getUnitFallSpeed, unitDefId, self()}
            receive_response
        end
        def get_unload_spread(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getUnloadSpread, unitDefId, self()}
            receive_response
        end
        def get_upkeep(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getUpkeep, unitDefId, resourceId, self()}
            receive_response
        end
        def get_vertical_speed(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getVerticalSpeed, unitDefId, self()}
            receive_response
        end
        def get_wanted_height(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getWantedHeight, unitDefId, self()}
            receive_response
        end
        def get_waterline(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getWaterline, unitDefId, self()}
            receive_response
        end
        def get_weapon_mounts(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getWeaponMounts, unitDefId, self()}
            receive_response
        end
        def get_wind_resource_generator(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getWindResourceGenerator, unitDefId, resourceId, self()}
            receive_response
        end
        def get_wing_angle(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getWingAngle, unitDefId, self()}
            receive_response
        end
        def get_wing_drag(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getWingDrag, unitDefId, self()}
            receive_response
        end
        def get_wreck_name(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getWreckName, unitDefId, self()}
            receive_response
        end
        def get_xsize(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getXSize, unitDefId, self()}
            receive_response
        end
        def get_yard_map(unitDefId, facing, yardMap_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getYardMap, unitDefId, facing, yardMap_sizeMax, self()}
            receive_response
        end
        def get_zsize(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_getZSize, unitDefId, self()}
            receive_response
        end
        def is_able_to_assist(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToAssist, unitDefId, self()}
            receive_response
        end
        def is_able_to_attack(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToAttack, unitDefId, self()}
            receive_response
        end
        def is_able_to_capture(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToCapture, unitDefId, self()}
            receive_response
        end
        def is_able_to_cloak(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToCloak, unitDefId, self()}
            receive_response
        end
        def is_able_to_crash(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToCrash, unitDefId, self()}
            receive_response
        end
        def is_able_to_drop_flare(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToDropFlare, unitDefId, self()}
            receive_response
        end
        def is_able_to_fight(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToFight, unitDefId, self()}
            receive_response
        end
        def is_able_to_fire_control(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToFireControl, unitDefId, self()}
            receive_response
        end
        def is_able_to_fly(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToFly, unitDefId, self()}
            receive_response
        end
        def is_able_to_guard(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToGuard, unitDefId, self()}
            receive_response
        end
        def is_able_to_hover(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToHover, unitDefId, self()}
            receive_response
        end
        def is_able_to_kamikaze(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToKamikaze, unitDefId, self()}
            receive_response
        end
        def is_able_to_loopback_attack(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToLoopbackAttack, unitDefId, self()}
            receive_response
        end
        def is_able_to_move(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToMove, unitDefId, self()}
            receive_response
        end
        def is_able_to_patrol(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToPatrol, unitDefId, self()}
            receive_response
        end
        def is_able_to_reclaim(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToReclaim, unitDefId, self()}
            receive_response
        end
        def is_able_to_repair(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToRepair, unitDefId, self()}
            receive_response
        end
        def is_able_to_repeat(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToRepeat, unitDefId, self()}
            receive_response
        end
        def is_able_to_restore(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToRestore, unitDefId, self()}
            receive_response
        end
        def is_able_to_resurrect(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToResurrect, unitDefId, self()}
            receive_response
        end
        def is_able_to_self_d(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToSelfD, unitDefId, self()}
            receive_response
        end
        def is_able_to_self_repair(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToSelfRepair, unitDefId, self()}
            receive_response
        end
        def is_able_to_submerge(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAbleToSubmerge, unitDefId, self()}
            receive_response
        end
        def is_activate_when_built(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isActivateWhenBuilt, unitDefId, self()}
            receive_response
        end
        def is_air_base(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAirBase, unitDefId, self()}
            receive_response
        end
        def is_air_strafe(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAirStrafe, unitDefId, self()}
            receive_response
        end
        def is_assistable(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isAssistable, unitDefId, self()}
            receive_response
        end
        def is_build_range3_d(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isBuildRange3D, unitDefId, self()}
            receive_response
        end
        def is_builder(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isBuilder, unitDefId, self()}
            receive_response
        end
        def is_capturable(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isCapturable, unitDefId, self()}
            receive_response
        end
        def is_collide(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isCollide, unitDefId, self()}
            receive_response
        end
        def is_commander(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isCommander, unitDefId, self()}
            receive_response
        end
        def is_decloak_on_fire(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isDecloakOnFire, unitDefId, self()}
            receive_response
        end
        def is_decloak_spherical(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isDecloakSpherical, unitDefId, self()}
            receive_response
        end
        def is_dont_land(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isDontLand, unitDefId, self()}
            receive_response
        end
        def is_factory_heading_takeoff(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isFactoryHeadingTakeoff, unitDefId, self()}
            receive_response
        end
        def is_feature(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isFeature, unitDefId, self()}
            receive_response
        end
        def is_fire_platform(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isFirePlatform, unitDefId, self()}
            receive_response
        end
        def is_floater(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isFloater, unitDefId, self()}
            receive_response
        end
        def is_full_health_factory(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isFullHealthFactory, unitDefId, self()}
            receive_response
        end
        def is_hide_damage(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isHideDamage, unitDefId, self()}
            receive_response
        end
        def is_hold_steady(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isHoldSteady, unitDefId, self()}
            receive_response
        end
        def is_hover_attack(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isHoverAttack, unitDefId, self()}
            receive_response
        end
        def is_leave_tracks(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isLeaveTracks, unitDefId, self()}
            receive_response
        end
        def is_level_ground(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isLevelGround, unitDefId, self()}
            receive_response
        end
        def is_move_data_available(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isMoveDataAvailable, unitDefId, self()}
            receive_response
        end
        def is_need_geo(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isNeedGeo, unitDefId, self()}
            receive_response
        end
        def is_not_transportable(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isNotTransportable, unitDefId, self()}
            receive_response
        end
        def is_on_offable(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isOnOffable, unitDefId, self()}
            receive_response
        end
        def is_push_resistant(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isPushResistant, unitDefId, self()}
            receive_response
        end
        def is_reclaimable(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isReclaimable, unitDefId, self()}
            receive_response
        end
        def is_release_held(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isReleaseHeld, unitDefId, self()}
            receive_response
        end
        def is_show_player_name(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isShowPlayerName, unitDefId, self()}
            receive_response
        end
        def is_sonar_stealth(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isSonarStealth, unitDefId, self()}
            receive_response
        end
        def is_square_resource_extractor(unitDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isSquareResourceExtractor, unitDefId, resourceId, self()}
            receive_response
        end
        def is_start_cloaked(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isStartCloaked, unitDefId, self()}
            receive_response
        end
        def is_stealth(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isStealth, unitDefId, self()}
            receive_response
        end
        def is_strafe_to_attack(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isStrafeToAttack, unitDefId, self()}
            receive_response
        end
        def is_targeting_facility(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isTargetingFacility, unitDefId, self()}
            receive_response
        end
        def is_transport_by_enemy(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isTransportByEnemy, unitDefId, self()}
            receive_response
        end
        def is_turn_in_place(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isTurnInPlace, unitDefId, self()}
            receive_response
        end
        def is_upright(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isUpright, unitDefId, self()}
            receive_response
        end
        def is_use_building_ground_decal(unitDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :UnitDef_isUseBuildingGroundDecal, unitDefId, self()}
            receive_response
        end
    end

    defmodule Unit do
        @moduledoc false
        def current_command_get_id(unitId, commandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_CurrentCommand_getId, unitId, commandId, self()}
            receive_response
        end
        def current_command_get_options(unitId, commandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_CurrentCommand_getOptions, unitId, commandId, self()}
            receive_response
        end
        def current_command_get_params(unitId, commandId, params_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_CurrentCommand_getParams, unitId, commandId, params_sizeMax, self()}
            receive_response
        end
        def current_command_get_tag(unitId, commandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_CurrentCommand_getTag, unitId, commandId, self()}
            receive_response
        end
        def current_command_get_time_out(unitId, commandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_CurrentCommand_getTimeOut, unitId, commandId, self()}
            receive_response
        end
        def current_command_get_type(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_CurrentCommand_getType, unitId, self()}
            receive_response
        end
        def supported_command_get_id(unitId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_SupportedCommand_getId, unitId, supportedCommandId, self()}
            receive_response
        end
        def supported_command_get_name(unitId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_SupportedCommand_getName, unitId, supportedCommandId, self()}
            receive_response
        end
        def supported_command_get_params(unitId, supportedCommandId, params_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_SupportedCommand_getParams, unitId, supportedCommandId, params_sizeMax, self()}
            receive_response
        end
        def supported_command_get_tool_tip(unitId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_SupportedCommand_getToolTip, unitId, supportedCommandId, self()}
            receive_response
        end
        def supported_command_is_disabled(unitId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_SupportedCommand_isDisabled, unitId, supportedCommandId, self()}
            receive_response
        end
        def supported_command_is_show_unique(unitId, supportedCommandId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_SupportedCommand_isShowUnique, unitId, supportedCommandId, self()}
            receive_response
        end
        def unit_rules_param_get_name(unitId, unitRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_UnitRulesParam_getName, unitId, unitRulesParamId, self()}
            receive_response
        end
        def unit_rules_param_get_value_float(unitId, unitRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_UnitRulesParam_getValueFloat, unitId, unitRulesParamId, self()}
            receive_response
        end
        def unit_rules_param_get_value_string(unitId, unitRulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_UnitRulesParam_getValueString, unitId, unitRulesParamId, self()}
            receive_response
        end
        def weapon_get_def(unitId, weaponId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_Weapon_getDef, unitId, weaponId, self()}
            receive_response
        end
        def weapon_get_range(unitId, weaponId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_Weapon_getRange, unitId, weaponId, self()}
            receive_response
        end
        def weapon_get_reload_frame(unitId, weaponId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_Weapon_getReloadFrame, unitId, weaponId, self()}
            receive_response
        end
        def weapon_get_reload_time(unitId, weaponId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_Weapon_getReloadTime, unitId, weaponId, self()}
            receive_response
        end
        def weapon_get_shield_power(unitId, weaponId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_Weapon_getShieldPower, unitId, weaponId, self()}
            receive_response
        end
        def weapon_is_shield_enabled(unitId, weaponId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_Weapon_isShieldEnabled, unitId, weaponId, self()}
            receive_response
        end
        def get_ai_hint(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getAiHint, unitId, self()}
            receive_response
        end
        def get_ally_team(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getAllyTeam, unitId, self()}
            receive_response
        end
        def get_building_facing(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getBuildingFacing, unitId, self()}
            receive_response
        end
        def get_current_commands(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getCurrentCommands, unitId, self()}
            receive_response
        end
        def get_def(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getDef, unitId, self()}
            receive_response
        end
        def get_experience(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getExperience, unitId, self()}
            receive_response
        end
        def get_group(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getGroup, unitId, self()}
            receive_response
        end
        def get_health(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getHealth, unitId, self()}
            receive_response
        end
        def get_last_user_order_frame(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getLastUserOrderFrame, unitId, self()}
            receive_response
        end
        def get_limit do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getLimit, self()}
            receive_response
        end
        def get_max do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getMax, self()}
            receive_response
        end
        def get_max_health(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getMaxHealth, unitId, self()}
            receive_response
        end
        def get_max_range(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getMaxRange, unitId, self()}
            receive_response
        end
        def get_max_speed(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getMaxSpeed, unitId, self()}
            receive_response
        end
        def get_pos(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getPos, unitId, self()}
            receive_response
        end
        def get_power(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getPower, unitId, self()}
            receive_response
        end
        def get_resource_make(unitId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getResourceMake, unitId, resourceId, self()}
            receive_response
        end
        def get_resource_use(unitId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getResourceUse, unitId, resourceId, self()}
            receive_response
        end
        def get_speed(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getSpeed, unitId, self()}
            receive_response
        end
        def get_stockpile(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getStockpile, unitId, self()}
            receive_response
        end
        def get_stockpile_queued(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getStockpileQueued, unitId, self()}
            receive_response
        end
        def get_supported_commands(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getSupportedCommands, unitId, self()}
            receive_response
        end
        def get_team(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getTeam, unitId, self()}
            receive_response
        end
        def get_unit_rules_param_by_id(unitId, rulesParamId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getUnitRulesParamById, unitId, rulesParamId, self()}
            receive_response
        end
        def get_unit_rules_param_by_name(unitId, rulesParamName) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getUnitRulesParamByName, unitId, rulesParamName, self()}
            receive_response
        end
        def get_unit_rules_params(unitId, paramIds_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getUnitRulesParams, unitId, paramIds_sizeMax, self()}
            receive_response
        end
        def get_vel(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getVel, unitId, self()}
            receive_response
        end
        def get_weapon(unitId, weaponMountId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getWeapon, unitId, weaponMountId, self()}
            receive_response
        end
        def get_weapons(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_getWeapons, unitId, self()}
            receive_response
        end
        def is_activated(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_isActivated, unitId, self()}
            receive_response
        end
        def is_being_built(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_isBeingBuilt, unitId, self()}
            receive_response
        end
        def is_cloaked(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_isCloaked, unitId, self()}
            receive_response
        end
        def is_neutral(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_isNeutral, unitId, self()}
            receive_response
        end
        def is_paralyzed(unitId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :Unit_isParalyzed, unitId, self()}
            receive_response
        end
    end

    defmodule WeaponDef do
        @moduledoc false
        def damage_get_crater_boost(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Damage_getCraterBoost, weaponDefId, self()}
            receive_response
        end
        def damage_get_crater_mult(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Damage_getCraterMult, weaponDefId, self()}
            receive_response
        end
        def damage_get_impulse_boost(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Damage_getImpulseBoost, weaponDefId, self()}
            receive_response
        end
        def damage_get_impulse_factor(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Damage_getImpulseFactor, weaponDefId, self()}
            receive_response
        end
        def damage_get_paralyze_damage_time(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Damage_getParalyzeDamageTime, weaponDefId, self()}
            receive_response
        end
        def damage_get_types(weaponDefId, types_sizeMax \\ 100) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Damage_getTypes, weaponDefId, types_sizeMax, self()}
            receive_response
        end
        def shield_get_alpha(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getAlpha, weaponDefId, self()}
            receive_response
        end
        def shield_get_bad_color(weaponDefId, return_colorS3_out) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getBadColor, weaponDefId, return_colorS3_out, self()}
            receive_response
        end
        def shield_get_force(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getForce, weaponDefId, self()}
            receive_response
        end
        def shield_get_good_color(weaponDefId, return_colorS3_out) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getGoodColor, weaponDefId, return_colorS3_out, self()}
            receive_response
        end
        def shield_get_intercept_type(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getInterceptType, weaponDefId, self()}
            receive_response
        end
        def shield_get_max_speed(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getMaxSpeed, weaponDefId, self()}
            receive_response
        end
        def shield_get_power(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getPower, weaponDefId, self()}
            receive_response
        end
        def shield_get_power_regen(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getPowerRegen, weaponDefId, self()}
            receive_response
        end
        def shield_get_power_regen_resource(weaponDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getPowerRegenResource, weaponDefId, resourceId, self()}
            receive_response
        end
        def shield_get_radius(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getRadius, weaponDefId, self()}
            receive_response
        end
        def shield_get_recharge_delay(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getRechargeDelay, weaponDefId, self()}
            receive_response
        end
        def shield_get_resource_use(weaponDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getResourceUse, weaponDefId, resourceId, self()}
            receive_response
        end
        def shield_get_starting_power(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_Shield_getStartingPower, weaponDefId, self()}
            receive_response
        end
        def get_accuracy(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getAccuracy, weaponDefId, self()}
            receive_response
        end
        def get_area_of_effect(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getAreaOfEffect, weaponDefId, self()}
            receive_response
        end
        def get_beam_time(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getBeamTime, weaponDefId, self()}
            receive_response
        end
        def get_bounce_rebound(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getBounceRebound, weaponDefId, self()}
            receive_response
        end
        def get_bounce_slip(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getBounceSlip, weaponDefId, self()}
            receive_response
        end
        def get_camera_shake(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCameraShake, weaponDefId, self()}
            receive_response
        end
        def get_ceg_tag(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCegTag, weaponDefId, self()}
            receive_response
        end
        def get_collision_flags(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCollisionFlags, weaponDefId, self()}
            receive_response
        end
        def get_collision_size(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCollisionSize, weaponDefId, self()}
            receive_response
        end
        def get_core_thickness(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCoreThickness, weaponDefId, self()}
            receive_response
        end
        def get_cost(weaponDefId, resourceId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCost, weaponDefId, resourceId, self()}
            receive_response
        end
        def get_coverage_range(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCoverageRange, weaponDefId, self()}
            receive_response
        end
        def get_custom_params(weaponDefId, keys, values) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCustomParams, weaponDefId, keys, values, self()}
            receive_response
        end
        def get_cylinder_targetting(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getCylinderTargetting, weaponDefId, self()}
            receive_response
        end
        def get_dance(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getDance, weaponDefId, self()}
            receive_response
        end
        def get_description(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getDescription, weaponDefId, self()}
            receive_response
        end
        def get_duration(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getDuration, weaponDefId, self()}
            receive_response
        end
        def get_dyn_damage_exp(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getDynDamageExp, weaponDefId, self()}
            receive_response
        end
        def get_dyn_damage_min(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getDynDamageMin, weaponDefId, self()}
            receive_response
        end
        def get_dyn_damage_range(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getDynDamageRange, weaponDefId, self()}
            receive_response
        end
        def get_edge_effectiveness(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getEdgeEffectiveness, weaponDefId, self()}
            receive_response
        end
        def get_explosion_speed(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getExplosionSpeed, weaponDefId, self()}
            receive_response
        end
        def get_falloff_rate(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getFalloffRate, weaponDefId, self()}
            receive_response
        end
        def get_file_name(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getFileName, weaponDefId, self()}
            receive_response
        end
        def get_fire_starter(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getFireStarter, weaponDefId, self()}
            receive_response
        end
        def get_flight_time(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getFlightTime, weaponDefId, self()}
            receive_response
        end
        def get_graphics_type(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getGraphicsType, weaponDefId, self()}
            receive_response
        end
        def get_height_boost_factor(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getHeightBoostFactor, weaponDefId, self()}
            receive_response
        end
        def get_height_mod(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getHeightMod, weaponDefId, self()}
            receive_response
        end
        def get_high_trajectory(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getHighTrajectory, weaponDefId, self()}
            receive_response
        end
        def get_intensity(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getIntensity, weaponDefId, self()}
            receive_response
        end
        def get_intercepted_by_shield_type(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getInterceptedByShieldType, weaponDefId, self()}
            receive_response
        end
        def get_interceptor(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getInterceptor, weaponDefId, self()}
            receive_response
        end
        def get_laser_flare_size(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getLaserFlareSize, weaponDefId, self()}
            receive_response
        end
        def get_lead_bonus(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getLeadBonus, weaponDefId, self()}
            receive_response
        end
        def get_lead_limit(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getLeadLimit, weaponDefId, self()}
            receive_response
        end
        def get_lod_distance(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getLodDistance, weaponDefId, self()}
            receive_response
        end
        def get_max_angle(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getMaxAngle, weaponDefId, self()}
            receive_response
        end
        def get_max_velocity(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getMaxVelocity, weaponDefId, self()}
            receive_response
        end
        def get_min_intensity(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getMinIntensity, weaponDefId, self()}
            receive_response
        end
        def get_moving_accuracy(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getMovingAccuracy, weaponDefId, self()}
            receive_response
        end
        def get_my_gravity(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getMyGravity, weaponDefId, self()}
            receive_response
        end
        def get_name(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getName, weaponDefId, self()}
            receive_response
        end
        def get_num_bounce(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getNumBounce, weaponDefId, self()}
            receive_response
        end
        def get_num_damage_types do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getNumDamageTypes, self()}
            receive_response
        end
        def get_only_target_category(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getOnlyTargetCategory, weaponDefId, self()}
            receive_response
        end
        def get_predict_boost(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getPredictBoost, weaponDefId, self()}
            receive_response
        end
        def get_projectile_speed(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getProjectileSpeed, weaponDefId, self()}
            receive_response
        end
        def get_projectiles_per_shot(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getProjectilesPerShot, weaponDefId, self()}
            receive_response
        end
        def get_proximity_priority(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getProximityPriority, weaponDefId, self()}
            receive_response
        end
        def get_range(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getRange, weaponDefId, self()}
            receive_response
        end
        def get_reload(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getReload, weaponDefId, self()}
            receive_response
        end
        def get_salvo_delay(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getSalvoDelay, weaponDefId, self()}
            receive_response
        end
        def get_salvo_size(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getSalvoSize, weaponDefId, self()}
            receive_response
        end
        def get_size(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getSize, weaponDefId, self()}
            receive_response
        end
        def get_size_growth(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getSizeGrowth, weaponDefId, self()}
            receive_response
        end
        def get_spray_angle(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getSprayAngle, weaponDefId, self()}
            receive_response
        end
        def get_start_velocity(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getStartVelocity, weaponDefId, self()}
            receive_response
        end
        def get_stockpile_time(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getStockpileTime, weaponDefId, self()}
            receive_response
        end
        def get_target_border(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getTargetBorder, weaponDefId, self()}
            receive_response
        end
        def get_target_move_error(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getTargetMoveError, weaponDefId, self()}
            receive_response
        end
        def get_targetable(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getTargetable, weaponDefId, self()}
            receive_response
        end
        def get_thickness(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getThickness, weaponDefId, self()}
            receive_response
        end
        def get_trajectory_height(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getTrajectoryHeight, weaponDefId, self()}
            receive_response
        end
        def get_turn_rate(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getTurnRate, weaponDefId, self()}
            receive_response
        end
        def get_type(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getType, weaponDefId, self()}
            receive_response
        end
        def get_up_time(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getUpTime, weaponDefId, self()}
            receive_response
        end
        def get_visible_shield_hit_frames(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getVisibleShieldHitFrames, weaponDefId, self()}
            receive_response
        end
        def get_weapon_acceleration(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getWeaponAcceleration, weaponDefId, self()}
            receive_response
        end
        def get_wobble(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_getWobble, weaponDefId, self()}
            receive_response
        end
        def is_able_to_attack_ground(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isAbleToAttackGround, weaponDefId, self()}
            receive_response
        end
        def is_avoid_feature(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isAvoidFeature, weaponDefId, self()}
            receive_response
        end
        def is_avoid_friendly(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isAvoidFriendly, weaponDefId, self()}
            receive_response
        end
        def is_avoid_neutral(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isAvoidNeutral, weaponDefId, self()}
            receive_response
        end
        def is_beam_burst(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isBeamBurst, weaponDefId, self()}
            receive_response
        end
        def is_dropped(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isDropped, weaponDefId, self()}
            receive_response
        end
        def is_dyn_damage_inverted(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isDynDamageInverted, weaponDefId, self()}
            receive_response
        end
        def is_exterior_shield(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isExteriorShield, weaponDefId, self()}
            receive_response
        end
        def is_fire_submersed(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isFireSubmersed, weaponDefId, self()}
            receive_response
        end
        def is_fixed_launcher(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isFixedLauncher, weaponDefId, self()}
            receive_response
        end
        def is_gravity_affected(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isGravityAffected, weaponDefId, self()}
            receive_response
        end
        def is_ground_bounce(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isGroundBounce, weaponDefId, self()}
            receive_response
        end
        def is_impact_only(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isImpactOnly, weaponDefId, self()}
            receive_response
        end
        def is_large_beam_laser(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isLargeBeamLaser, weaponDefId, self()}
            receive_response
        end
        def is_manual_fire(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isManualFire, weaponDefId, self()}
            receive_response
        end
        def is_no_auto_target(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isNoAutoTarget, weaponDefId, self()}
            receive_response
        end
        def is_no_explode(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isNoExplode, weaponDefId, self()}
            receive_response
        end
        def is_no_self_damage(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isNoSelfDamage, weaponDefId, self()}
            receive_response
        end
        def is_only_forward(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isOnlyForward, weaponDefId, self()}
            receive_response
        end
        def is_paralyzer(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isParalyzer, weaponDefId, self()}
            receive_response
        end
        def is_self_explode(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isSelfExplode, weaponDefId, self()}
            receive_response
        end
        def is_shield(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isShield, weaponDefId, self()}
            receive_response
        end
        def is_shield_repulser(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isShieldRepulser, weaponDefId, self()}
            receive_response
        end
        def is_smart_shield(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isSmartShield, weaponDefId, self()}
            receive_response
        end
        def is_sound_trigger(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isSoundTrigger, weaponDefId, self()}
            receive_response
        end
        def is_stockpileable(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isStockpileable, weaponDefId, self()}
            receive_response
        end
        def is_sub_missile(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isSubMissile, weaponDefId, self()}
            receive_response
        end
        def is_sweep_fire(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isSweepFire, weaponDefId, self()}
            receive_response
        end
        def is_tracks(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isTracks, weaponDefId, self()}
            receive_response
        end
        def is_turret(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isTurret, weaponDefId, self()}
            receive_response
        end
        def is_visible_shield(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isVisibleShield, weaponDefId, self()}
            receive_response
        end
        def is_visible_shield_repulse(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isVisibleShieldRepulse, weaponDefId, self()}
            receive_response
        end
        def is_water_bounce(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isWaterBounce, weaponDefId, self()}
            receive_response
        end
        def is_water_weapon(weaponDefId) do
            send Application.get_env(SpringRTS, :engine), {:callback, :WeaponDef_isWaterWeapon, weaponDefId, self()}
            receive_response
        end
    end
    def get_ally_teams(teamIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getAllyTeams, teamIds_sizeMax, self()}
        receive_response
    end
    def get_enemy_teams(teamIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getEnemyTeams, teamIds_sizeMax, self()}
        receive_response
    end
    def get_enemy_units(unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getEnemyUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def get_enemy_units_in(pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getEnemyUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def get_enemy_units_in_radar_and_los(unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getEnemyUnitsInRadarAndLos, unitIds_sizeMax, self()}
        receive_response
    end
    def get_feature_defs(featureDefIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getFeatureDefs, featureDefIds_sizeMax, self()}
        receive_response
    end
    def get_features(featureIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getFeatures, featureIds_sizeMax, self()}
        receive_response
    end
    def get_features_in(pos_posF3, radius, featureIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getFeaturesIn, pos_posF3, radius, featureIds_sizeMax, self()}
        receive_response
    end
    def get_friendly_units(unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getFriendlyUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def get_friendly_units_in(pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getFriendlyUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def get_groups(groupIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getGroups, groupIds_sizeMax, self()}
        receive_response
    end
    def get_neutral_units(unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getNeutralUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def get_neutral_units_in(pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getNeutralUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def get_resource_by_name(resourceName) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getResourceByName, resourceName, self()}
        receive_response
    end
    def get_resources do
        send Application.get_env(SpringRTS, :engine), {:callback, :getResources, self()}
        receive_response
    end
    def get_selected_units(unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getSelectedUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def get_team_units(unitIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getTeamUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def get_unit_def_by_name(unitName) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getUnitDefByName, unitName, self()}
        receive_response
    end
    def get_unit_defs(unitDefIds_sizeMax \\ 100) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getUnitDefs, unitDefIds_sizeMax, self()}
        receive_response
    end
    def get_weapon_def_by_name(weaponDefName) do
        send Application.get_env(SpringRTS, :engine), {:callback, :getWeaponDefByName, weaponDefName, self()}
        receive_response
    end
    def get_weapon_defs do
        send Application.get_env(SpringRTS, :engine), {:callback, :getWeaponDefs, self()}
        receive_response
    end
end
