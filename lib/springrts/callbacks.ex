defmodule SpringRTS.Callbacks do
    import SpringRTS.Helper, only: :functions
    def cheats_isEnabled(engine) do
        send engine, {:callback, :Cheats_isEnabled, self()}
        receive_response
    end
    def cheats_isOnlyPassive(engine) do
        send engine, {:callback, :Cheats_isOnlyPassive, self()}
        receive_response
    end
    def cheats_setEnabled(engine, enable) do
        send engine, {:callback, :Cheats_setEnabled, enable, self()}
        receive_response
    end
    def cheats_setEventsEnabled(engine, enabled) do
        send engine, {:callback, :Cheats_setEventsEnabled, enabled, self()}
        receive_response
    end
    def dataDirs_Roots_allocatePath(engine, relPath, writeable, create, dir) do
        send engine, {:callback, :DataDirs_Roots_allocatePath, relPath, writeable, create, dir, self()}
        receive_response
    end
    def dataDirs_Roots_getDir(engine, path, path_sizeMax \\ 100, dirIndex) do
        send engine, {:callback, :DataDirs_Roots_getDir, path, path_sizeMax, dirIndex, self()}
        receive_response
    end
    def dataDirs_Roots_getSize(engine) do
        send engine, {:callback, :DataDirs_Roots_getSize, self()}
        receive_response
    end
    def dataDirs_Roots_locatePath(engine, path, path_sizeMax \\ 100, relPath, writeable, create, dir) do
        send engine, {:callback, :DataDirs_Roots_locatePath, path, path_sizeMax, relPath, writeable, create, dir, self()}
        receive_response
    end
    def dataDirs_allocatePath(engine, relPath, writeable, create, dir, common) do
        send engine, {:callback, :DataDirs_allocatePath, relPath, writeable, create, dir, common, self()}
        receive_response
    end
    def dataDirs_getConfigDir(engine) do
        send engine, {:callback, :DataDirs_getConfigDir, self()}
        receive_response
    end
    def dataDirs_getPathSeparator(engine) do
        send engine, {:callback, :DataDirs_getPathSeparator, self()}
        receive_response
    end
    def dataDirs_getWriteableDir(engine) do
        send engine, {:callback, :DataDirs_getWriteableDir, self()}
        receive_response
    end
    def dataDirs_locatePath(engine, path, path_sizeMax \\ 100, relPath, writeable, create, dir, common) do
        send engine, {:callback, :DataDirs_locatePath, path, path_sizeMax, relPath, writeable, create, dir, common, self()}
        receive_response
    end
    def debug_GraphDrawer_isEnabled(engine) do
        send engine, {:callback, :Debug_GraphDrawer_isEnabled, self()}
        receive_response
    end
    def economy_getCurrent(engine, resourceId) do
        send engine, {:callback, :Economy_getCurrent, resourceId, self()}
        receive_response
    end
    def economy_getExcess(engine, resourceId) do
        send engine, {:callback, :Economy_getExcess, resourceId, self()}
        receive_response
    end
    def economy_getIncome(engine, resourceId) do
        send engine, {:callback, :Economy_getIncome, resourceId, self()}
        receive_response
    end
    def economy_getPull(engine, resourceId) do
        send engine, {:callback, :Economy_getPull, resourceId, self()}
        receive_response
    end
    def economy_getReceived(engine, resourceId) do
        send engine, {:callback, :Economy_getReceived, resourceId, self()}
        receive_response
    end
    def economy_getSent(engine, resourceId) do
        send engine, {:callback, :Economy_getSent, resourceId, self()}
        receive_response
    end
    def economy_getShare(engine, resourceId) do
        send engine, {:callback, :Economy_getShare, resourceId, self()}
        receive_response
    end
    def economy_getStorage(engine, resourceId) do
        send engine, {:callback, :Economy_getStorage, resourceId, self()}
        receive_response
    end
    def economy_getUsage(engine, resourceId) do
        send engine, {:callback, :Economy_getUsage, resourceId, self()}
        receive_response
    end
    def engine_Version_getAdditional(engine) do
        send engine, {:callback, :Engine_Version_getAdditional, self()}
        receive_response
    end
    def engine_Version_getBranch(engine) do
        send engine, {:callback, :Engine_Version_getBranch, self()}
        receive_response
    end
    def engine_Version_getBuildTime(engine) do
        send engine, {:callback, :Engine_Version_getBuildTime, self()}
        receive_response
    end
    def engine_Version_getCommits(engine) do
        send engine, {:callback, :Engine_Version_getCommits, self()}
        receive_response
    end
    def engine_Version_getFull(engine) do
        send engine, {:callback, :Engine_Version_getFull, self()}
        receive_response
    end
    def engine_Version_getHash(engine) do
        send engine, {:callback, :Engine_Version_getHash, self()}
        receive_response
    end
    def engine_Version_getMajor(engine) do
        send engine, {:callback, :Engine_Version_getMajor, self()}
        receive_response
    end
    def engine_Version_getMinor(engine) do
        send engine, {:callback, :Engine_Version_getMinor, self()}
        receive_response
    end
    def engine_Version_getNormal(engine) do
        send engine, {:callback, :Engine_Version_getNormal, self()}
        receive_response
    end
    def engine_Version_getPatchset(engine) do
        send engine, {:callback, :Engine_Version_getPatchset, self()}
        receive_response
    end
    def engine_Version_getSync(engine) do
        send engine, {:callback, :Engine_Version_getSync, self()}
        receive_response
    end
    def engine_Version_isRelease(engine) do
        send engine, {:callback, :Engine_Version_isRelease, self()}
        receive_response
    end
    def engine_handleCommand(engine, toId, commandId, commandTopic, commandData) do
        send engine, {:callback, :Engine_handleCommand, toId, commandId, commandTopic, commandData, self()}
        receive_response
    end
    def featureDef_getContainedResource(engine, featureDefId, resourceId) do
        send engine, {:callback, :FeatureDef_getContainedResource, featureDefId, resourceId, self()}
        receive_response
    end
    def featureDef_getCustomParams(engine, featureDefId, keys, values) do
        send engine, {:callback, :FeatureDef_getCustomParams, featureDefId, keys, values, self()}
        receive_response
    end
    def featureDef_getDeathFeature(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getDeathFeature, featureDefId, self()}
        receive_response
    end
    def featureDef_getDescription(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getDescription, featureDefId, self()}
        receive_response
    end
    def featureDef_getDrawType(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getDrawType, featureDefId, self()}
        receive_response
    end
    def featureDef_getFileName(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getFileName, featureDefId, self()}
        receive_response
    end
    def featureDef_getMass(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getMass, featureDefId, self()}
        receive_response
    end
    def featureDef_getMaxHealth(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getMaxHealth, featureDefId, self()}
        receive_response
    end
    def featureDef_getModelName(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getModelName, featureDefId, self()}
        receive_response
    end
    def featureDef_getName(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getName, featureDefId, self()}
        receive_response
    end
    def featureDef_getReclaimTime(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getReclaimTime, featureDefId, self()}
        receive_response
    end
    def featureDef_getResurrectable(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getResurrectable, featureDefId, self()}
        receive_response
    end
    def featureDef_getSmokeTime(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getSmokeTime, featureDefId, self()}
        receive_response
    end
    def featureDef_getXSize(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getXSize, featureDefId, self()}
        receive_response
    end
    def featureDef_getZSize(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_getZSize, featureDefId, self()}
        receive_response
    end
    def featureDef_isBlocking(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_isBlocking, featureDefId, self()}
        receive_response
    end
    def featureDef_isBurnable(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_isBurnable, featureDefId, self()}
        receive_response
    end
    def featureDef_isDestructable(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_isDestructable, featureDefId, self()}
        receive_response
    end
    def featureDef_isFloating(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_isFloating, featureDefId, self()}
        receive_response
    end
    def featureDef_isGeoThermal(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_isGeoThermal, featureDefId, self()}
        receive_response
    end
    def featureDef_isNoSelect(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_isNoSelect, featureDefId, self()}
        receive_response
    end
    def featureDef_isReclaimable(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_isReclaimable, featureDefId, self()}
        receive_response
    end
    def featureDef_isUpright(engine, featureDefId) do
        send engine, {:callback, :FeatureDef_isUpright, featureDefId, self()}
        receive_response
    end
    def feature_getDef(engine, featureId) do
        send engine, {:callback, :Feature_getDef, featureId, self()}
        receive_response
    end
    def feature_getHealth(engine, featureId) do
        send engine, {:callback, :Feature_getHealth, featureId, self()}
        receive_response
    end
    def feature_getPosition(engine, featureId) do
        send engine, {:callback, :Feature_getPosition, featureId, self()}
        receive_response
    end
    def feature_getReclaimLeft(engine, featureId) do
        send engine, {:callback, :Feature_getReclaimLeft, featureId, self()}
        receive_response
    end
    def file_getContent(engine, fileName, buffer, bufferLen) do
        send engine, {:callback, :File_getContent, fileName, buffer, bufferLen, self()}
        receive_response
    end
    def file_getSize(engine, fileName) do
        send engine, {:callback, :File_getSize, fileName, self()}
        receive_response
    end
    def gameRulesParam_getName(engine, gameRulesParamId) do
        send engine, {:callback, :GameRulesParam_getName, gameRulesParamId, self()}
        receive_response
    end
    def gameRulesParam_getValueFloat(engine, gameRulesParamId) do
        send engine, {:callback, :GameRulesParam_getValueFloat, gameRulesParamId, self()}
        receive_response
    end
    def gameRulesParam_getValueString(engine, gameRulesParamId) do
        send engine, {:callback, :GameRulesParam_getValueString, gameRulesParamId, self()}
        receive_response
    end
    def game_getAiInterfaceVersion(engine) do
        send engine, {:callback, :Game_getAiInterfaceVersion, self()}
        receive_response
    end
    def game_getCategoriesFlag(engine, categoryNames) do
        send engine, {:callback, :Game_getCategoriesFlag, categoryNames, self()}
        receive_response
    end
    def game_getCategoryFlag(engine, categoryName) do
        send engine, {:callback, :Game_getCategoryFlag, categoryName, self()}
        receive_response
    end
    def game_getCategoryName(engine, categoryFlag, name, name_sizeMax \\ 100) do
        send engine, {:callback, :Game_getCategoryName, categoryFlag, name, name_sizeMax, self()}
        receive_response
    end
    def game_getCurrentFrame(engine) do
        send engine, {:callback, :Game_getCurrentFrame, self()}
        receive_response
    end
    def game_getGameRulesParamById(engine, rulesParamId) do
        send engine, {:callback, :Game_getGameRulesParamById, rulesParamId, self()}
        receive_response
    end
    def game_getGameRulesParamByName(engine, rulesParamName) do
        send engine, {:callback, :Game_getGameRulesParamByName, rulesParamName, self()}
        receive_response
    end
    def game_getGameRulesParams(engine, paramIds_sizeMax \\ 100) do
        send engine, {:callback, :Game_getGameRulesParams, paramIds_sizeMax, self()}
        receive_response
    end
    def game_getMode(engine) do
        send engine, {:callback, :Game_getMode, self()}
        receive_response
    end
    def game_getMyAllyTeam(engine) do
        send engine, {:callback, :Game_getMyAllyTeam, self()}
        receive_response
    end
    def game_getMyTeam(engine) do
        send engine, {:callback, :Game_getMyTeam, self()}
        receive_response
    end
    def game_getPlayerTeam(engine, playerId) do
        send engine, {:callback, :Game_getPlayerTeam, playerId, self()}
        receive_response
    end
    def game_getSetupScript(engine) do
        send engine, {:callback, :Game_getSetupScript, self()}
        receive_response
    end
    def game_getSpeedFactor(engine) do
        send engine, {:callback, :Game_getSpeedFactor, self()}
        receive_response
    end
    def game_getTeamAllyTeam(engine, otherTeamId) do
        send engine, {:callback, :Game_getTeamAllyTeam, otherTeamId, self()}
        receive_response
    end
    def game_getTeamColor(engine, otherTeamId, return_colorS3_out) do
        send engine, {:callback, :Game_getTeamColor, otherTeamId, return_colorS3_out, self()}
        receive_response
    end
    def game_getTeamIncomeMultiplier(engine, otherTeamId) do
        send engine, {:callback, :Game_getTeamIncomeMultiplier, otherTeamId, self()}
        receive_response
    end
    def game_getTeamResourceCurrent(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourceCurrent, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceExcess(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourceExcess, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceIncome(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourceIncome, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourcePull(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourcePull, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceReceived(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourceReceived, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceSent(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourceSent, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceShare(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourceShare, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceStorage(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourceStorage, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceUsage(engine, otherTeamId, resourceId) do
        send engine, {:callback, :Game_getTeamResourceUsage, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamSide(engine, otherTeamId) do
        send engine, {:callback, :Game_getTeamSide, otherTeamId, self()}
        receive_response
    end
    def game_getTeams(engine) do
        send engine, {:callback, :Game_getTeams, self()}
        receive_response
    end
    def game_isAllied(engine, firstAllyTeamId, secondAllyTeamId) do
        send engine, {:callback, :Game_isAllied, firstAllyTeamId, secondAllyTeamId, self()}
        receive_response
    end
    def game_isDebugModeEnabled(engine) do
        send engine, {:callback, :Game_isDebugModeEnabled, self()}
        receive_response
    end
    def game_isExceptionHandlingEnabled(engine) do
        send engine, {:callback, :Game_isExceptionHandlingEnabled, self()}
        receive_response
    end
    def game_isPaused(engine) do
        send engine, {:callback, :Game_isPaused, self()}
        receive_response
    end
    def group_OrderPreview_getId(engine, groupId) do
        send engine, {:callback, :Group_OrderPreview_getId, groupId, self()}
        receive_response
    end
    def group_OrderPreview_getOptions(engine, groupId) do
        send engine, {:callback, :Group_OrderPreview_getOptions, groupId, self()}
        receive_response
    end
    def group_OrderPreview_getParams(engine, groupId, params, params_sizeMax \\ 100) do
        send engine, {:callback, :Group_OrderPreview_getParams, groupId, params, params_sizeMax, self()}
        receive_response
    end
    def group_OrderPreview_getTag(engine, groupId) do
        send engine, {:callback, :Group_OrderPreview_getTag, groupId, self()}
        receive_response
    end
    def group_OrderPreview_getTimeOut(engine, groupId) do
        send engine, {:callback, :Group_OrderPreview_getTimeOut, groupId, self()}
        receive_response
    end
    def group_SupportedCommand_getId(engine, groupId, supportedCommandId) do
        send engine, {:callback, :Group_SupportedCommand_getId, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_SupportedCommand_getName(engine, groupId, supportedCommandId) do
        send engine, {:callback, :Group_SupportedCommand_getName, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_SupportedCommand_getParams(engine, groupId, supportedCommandId, params, params_sizeMax \\ 100) do
        send engine, {:callback, :Group_SupportedCommand_getParams, groupId, supportedCommandId, params, params_sizeMax, self()}
        receive_response
    end
    def group_SupportedCommand_getToolTip(engine, groupId, supportedCommandId) do
        send engine, {:callback, :Group_SupportedCommand_getToolTip, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_SupportedCommand_isDisabled(engine, groupId, supportedCommandId) do
        send engine, {:callback, :Group_SupportedCommand_isDisabled, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_SupportedCommand_isShowUnique(engine, groupId, supportedCommandId) do
        send engine, {:callback, :Group_SupportedCommand_isShowUnique, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_getSupportedCommands(engine, groupId) do
        send engine, {:callback, :Group_getSupportedCommands, groupId, self()}
        receive_response
    end
    def group_isSelected(engine, groupId) do
        send engine, {:callback, :Group_isSelected, groupId, self()}
        receive_response
    end
    def gui_Camera_getDirection(engine) do
        send engine, {:callback, :Gui_Camera_getDirection, self()}
        receive_response
    end
    def gui_Camera_getPosition(engine) do
        send engine, {:callback, :Gui_Camera_getPosition, self()}
        receive_response
    end
    def gui_getScreenX(engine) do
        send engine, {:callback, :Gui_getScreenX, self()}
        receive_response
    end
    def gui_getScreenY(engine) do
        send engine, {:callback, :Gui_getScreenY, self()}
        receive_response
    end
    def gui_getViewRange(engine) do
        send engine, {:callback, :Gui_getViewRange, self()}
        receive_response
    end
    def log_exception(engine, msg, severety, die) do
        send engine, {:callback, :Log_exception, msg, severety, die, self()}
        receive_response
    end
    def log_log(engine, msg) do
        send engine, {:callback, :Log_log, msg, self()}
        receive_response
    end
    def map_Line_getColor(engine, lineId, return_colorS3_out) do
        send engine, {:callback, :Map_Line_getColor, lineId, return_colorS3_out, self()}
        receive_response
    end
    def map_Line_getFirstPosition(engine, lineId) do
        send engine, {:callback, :Map_Line_getFirstPosition, lineId, self()}
        receive_response
    end
    def map_Line_getSecondPosition(engine, lineId) do
        send engine, {:callback, :Map_Line_getSecondPosition, lineId, self()}
        receive_response
    end
    def map_Point_getColor(engine, pointId, return_colorS3_out) do
        send engine, {:callback, :Map_Point_getColor, pointId, return_colorS3_out, self()}
        receive_response
    end
    def map_Point_getLabel(engine, pointId) do
        send engine, {:callback, :Map_Point_getLabel, pointId, self()}
        receive_response
    end
    def map_Point_getPosition(engine, pointId) do
        send engine, {:callback, :Map_Point_getPosition, pointId, self()}
        receive_response
    end
    def map_findClosestBuildSite(engine, unitDefId, pos_posF3, searchRadius, minDist, facing) do
        send engine, {:callback, :Map_findClosestBuildSite, unitDefId, pos_posF3, searchRadius, minDist, facing, self()}
        receive_response
    end
    def map_getChecksum(engine) do
        send engine, {:callback, :Map_getChecksum, self()}
        receive_response
    end
    def map_getCornersHeightMap(engine, cornerHeights, cornerHeights_sizeMax \\ 100) do
        send engine, {:callback, :Map_getCornersHeightMap, cornerHeights, cornerHeights_sizeMax, self()}
        receive_response
    end
    def map_getCurWind(engine) do
        send engine, {:callback, :Map_getCurWind, self()}
        receive_response
    end
    def map_getElevationAt(engine, x, z) do
        send engine, {:callback, :Map_getElevationAt, x, z, self()}
        receive_response
    end
    def map_getExtractorRadius(engine, resourceId) do
        send engine, {:callback, :Map_getExtractorRadius, resourceId, self()}
        receive_response
    end
    def map_getGravity(engine) do
        send engine, {:callback, :Map_getGravity, self()}
        receive_response
    end
    def map_getHash(engine) do
        send engine, {:callback, :Map_getHash, self()}
        receive_response
    end
    def map_getHeight(engine) do
        send engine, {:callback, :Map_getHeight, self()}
        receive_response
    end
    def map_getHeightMap(engine, heights, heights_sizeMax \\ 100) do
        send engine, {:callback, :Map_getHeightMap, heights, heights_sizeMax, self()}
        receive_response
    end
    def map_getHumanName(engine) do
        send engine, {:callback, :Map_getHumanName, self()}
        receive_response
    end
    def map_getJammerMap(engine, jammerValues, jammerValues_sizeMax \\ 100) do
        send engine, {:callback, :Map_getJammerMap, jammerValues, jammerValues_sizeMax, self()}
        receive_response
    end
    def map_getLines(engine, includeAllies) do
        send engine, {:callback, :Map_getLines, includeAllies, self()}
        receive_response
    end
    def map_getLosMap(engine, losValues, losValues_sizeMax \\ 100) do
        send engine, {:callback, :Map_getLosMap, losValues, losValues_sizeMax, self()}
        receive_response
    end
    def map_getMaxHeight(engine) do
        send engine, {:callback, :Map_getMaxHeight, self()}
        receive_response
    end
    def map_getMaxResource(engine, resourceId) do
        send engine, {:callback, :Map_getMaxResource, resourceId, self()}
        receive_response
    end
    def map_getMaxWind(engine) do
        send engine, {:callback, :Map_getMaxWind, self()}
        receive_response
    end
    def map_getMinHeight(engine) do
        send engine, {:callback, :Map_getMinHeight, self()}
        receive_response
    end
    def map_getMinWind(engine) do
        send engine, {:callback, :Map_getMinWind, self()}
        receive_response
    end
    def map_getMousePos(engine) do
        send engine, {:callback, :Map_getMousePos, self()}
        receive_response
    end
    def map_getName(engine) do
        send engine, {:callback, :Map_getName, self()}
        receive_response
    end
    def map_getPoints(engine, includeAllies) do
        send engine, {:callback, :Map_getPoints, includeAllies, self()}
        receive_response
    end
    def map_getRadarMap(engine, radarValues, radarValues_sizeMax \\ 100) do
        send engine, {:callback, :Map_getRadarMap, radarValues, radarValues_sizeMax, self()}
        receive_response
    end
    def map_getResourceMapRaw(engine, resourceId, resources, resources_sizeMax \\ 100) do
        send engine, {:callback, :Map_getResourceMapRaw, resourceId, resources, resources_sizeMax, self()}
        receive_response
    end
    def map_getResourceMapSpotsAverageIncome(engine, resourceId) do
        send engine, {:callback, :Map_getResourceMapSpotsAverageIncome, resourceId, self()}
        receive_response
    end
    def map_getResourceMapSpotsNearest(engine, resourceId, pos_posF3) do
        send engine, {:callback, :Map_getResourceMapSpotsNearest, resourceId, pos_posF3, self()}
        receive_response
    end
    def map_getResourceMapSpotsPositions(engine, resourceId, spots_AposF3, spots_AposF3_sizeMax \\ 100) do
        send engine, {:callback, :Map_getResourceMapSpotsPositions, resourceId, spots_AposF3, spots_AposF3_sizeMax, self()}
        receive_response
    end
    def map_getSlopeMap(engine, slopes, slopes_sizeMax \\ 100) do
        send engine, {:callback, :Map_getSlopeMap, slopes, slopes_sizeMax, self()}
        receive_response
    end
    def map_getStartPos(engine) do
        send engine, {:callback, :Map_getStartPos, self()}
        receive_response
    end
    def map_getTidalStrength(engine) do
        send engine, {:callback, :Map_getTidalStrength, self()}
        receive_response
    end
    def map_getWaterDamage(engine) do
        send engine, {:callback, :Map_getWaterDamage, self()}
        receive_response
    end
    def map_getWidth(engine) do
        send engine, {:callback, :Map_getWidth, self()}
        receive_response
    end
    def map_isPosInCamera(engine, pos_posF3, radius) do
        send engine, {:callback, :Map_isPosInCamera, pos_posF3, radius, self()}
        receive_response
    end
    def map_isPossibleToBuildAt(engine, unitDefId, pos_posF3, facing) do
        send engine, {:callback, :Map_isPossibleToBuildAt, unitDefId, pos_posF3, facing, self()}
        receive_response
    end
    def mod_getAirLosMul(engine) do
        send engine, {:callback, :Mod_getAirLosMul, self()}
        receive_response
    end
    def mod_getAirMipLevel(engine) do
        send engine, {:callback, :Mod_getAirMipLevel, self()}
        receive_response
    end
    def mod_getAllowTeamColors(engine) do
        send engine, {:callback, :Mod_getAllowTeamColors, self()}
        receive_response
    end
    def mod_getCaptureEnergyCostFactor(engine) do
        send engine, {:callback, :Mod_getCaptureEnergyCostFactor, self()}
        receive_response
    end
    def mod_getConstructionDecay(engine) do
        send engine, {:callback, :Mod_getConstructionDecay, self()}
        receive_response
    end
    def mod_getConstructionDecaySpeed(engine) do
        send engine, {:callback, :Mod_getConstructionDecaySpeed, self()}
        receive_response
    end
    def mod_getConstructionDecayTime(engine) do
        send engine, {:callback, :Mod_getConstructionDecayTime, self()}
        receive_response
    end
    def mod_getDescription(engine) do
        send engine, {:callback, :Mod_getDescription, self()}
        receive_response
    end
    def mod_getFileName(engine) do
        send engine, {:callback, :Mod_getFileName, self()}
        receive_response
    end
    def mod_getFireAtCrashing(engine) do
        send engine, {:callback, :Mod_getFireAtCrashing, self()}
        receive_response
    end
    def mod_getFireAtKilled(engine) do
        send engine, {:callback, :Mod_getFireAtKilled, self()}
        receive_response
    end
    def mod_getFlankingBonusModeDefault(engine) do
        send engine, {:callback, :Mod_getFlankingBonusModeDefault, self()}
        receive_response
    end
    def mod_getHash(engine) do
        send engine, {:callback, :Mod_getHash, self()}
        receive_response
    end
    def mod_getHumanName(engine) do
        send engine, {:callback, :Mod_getHumanName, self()}
        receive_response
    end
    def mod_getLosMipLevel(engine) do
        send engine, {:callback, :Mod_getLosMipLevel, self()}
        receive_response
    end
    def mod_getLosMul(engine) do
        send engine, {:callback, :Mod_getLosMul, self()}
        receive_response
    end
    def mod_getMultiReclaim(engine) do
        send engine, {:callback, :Mod_getMultiReclaim, self()}
        receive_response
    end
    def mod_getMutator(engine) do
        send engine, {:callback, :Mod_getMutator, self()}
        receive_response
    end
    def mod_getReclaimAllowAllies(engine) do
        send engine, {:callback, :Mod_getReclaimAllowAllies, self()}
        receive_response
    end
    def mod_getReclaimAllowEnemies(engine) do
        send engine, {:callback, :Mod_getReclaimAllowEnemies, self()}
        receive_response
    end
    def mod_getReclaimFeatureEnergyCostFactor(engine) do
        send engine, {:callback, :Mod_getReclaimFeatureEnergyCostFactor, self()}
        receive_response
    end
    def mod_getReclaimMethod(engine) do
        send engine, {:callback, :Mod_getReclaimMethod, self()}
        receive_response
    end
    def mod_getReclaimUnitEfficiency(engine) do
        send engine, {:callback, :Mod_getReclaimUnitEfficiency, self()}
        receive_response
    end
    def mod_getReclaimUnitEnergyCostFactor(engine) do
        send engine, {:callback, :Mod_getReclaimUnitEnergyCostFactor, self()}
        receive_response
    end
    def mod_getReclaimUnitMethod(engine) do
        send engine, {:callback, :Mod_getReclaimUnitMethod, self()}
        receive_response
    end
    def mod_getRepairEnergyCostFactor(engine) do
        send engine, {:callback, :Mod_getRepairEnergyCostFactor, self()}
        receive_response
    end
    def mod_getRequireSonarUnderWater(engine) do
        send engine, {:callback, :Mod_getRequireSonarUnderWater, self()}
        receive_response
    end
    def mod_getResurrectEnergyCostFactor(engine) do
        send engine, {:callback, :Mod_getResurrectEnergyCostFactor, self()}
        receive_response
    end
    def mod_getShortName(engine) do
        send engine, {:callback, :Mod_getShortName, self()}
        receive_response
    end
    def mod_getTransportAir(engine) do
        send engine, {:callback, :Mod_getTransportAir, self()}
        receive_response
    end
    def mod_getTransportGround(engine) do
        send engine, {:callback, :Mod_getTransportGround, self()}
        receive_response
    end
    def mod_getTransportHover(engine) do
        send engine, {:callback, :Mod_getTransportHover, self()}
        receive_response
    end
    def mod_getTransportShip(engine) do
        send engine, {:callback, :Mod_getTransportShip, self()}
        receive_response
    end
    def mod_getVersion(engine) do
        send engine, {:callback, :Mod_getVersion, self()}
        receive_response
    end
    def resource_getName(engine, resourceId) do
        send engine, {:callback, :Resource_getName, resourceId, self()}
        receive_response
    end
    def resource_getOptimum(engine, resourceId) do
        send engine, {:callback, :Resource_getOptimum, resourceId, self()}
        receive_response
    end
    def skirmishAI_Info_getDescription(engine, infoIndex) do
        send engine, {:callback, :SkirmishAI_Info_getDescription, infoIndex, self()}
        receive_response
    end
    def skirmishAI_Info_getKey(engine, infoIndex) do
        send engine, {:callback, :SkirmishAI_Info_getKey, infoIndex, self()}
        receive_response
    end
    def skirmishAI_Info_getSize(engine) do
        send engine, {:callback, :SkirmishAI_Info_getSize, self()}
        receive_response
    end
    def skirmishAI_Info_getValue(engine, infoIndex) do
        send engine, {:callback, :SkirmishAI_Info_getValue, infoIndex, self()}
        receive_response
    end
    def skirmishAI_Info_getValueByKey(engine, key) do
        send engine, {:callback, :SkirmishAI_Info_getValueByKey, key, self()}
        receive_response
    end
    def skirmishAI_OptionValues_getKey(engine, optionIndex) do
        send engine, {:callback, :SkirmishAI_OptionValues_getKey, optionIndex, self()}
        receive_response
    end
    def skirmishAI_OptionValues_getSize(engine) do
        send engine, {:callback, :SkirmishAI_OptionValues_getSize, self()}
        receive_response
    end
    def skirmishAI_OptionValues_getValue(engine, optionIndex) do
        send engine, {:callback, :SkirmishAI_OptionValues_getValue, optionIndex, self()}
        receive_response
    end
    def skirmishAI_OptionValues_getValueByKey(engine, key) do
        send engine, {:callback, :SkirmishAI_OptionValues_getValueByKey, key, self()}
        receive_response
    end
    def skirmishAI_getTeamId(engine) do
        send engine, {:callback, :SkirmishAI_getTeamId, self()}
        receive_response
    end
    def skirmishAIs_getMax(engine) do
        send engine, {:callback, :SkirmishAIs_getMax, self()}
        receive_response
    end
    def skirmishAIs_getSize(engine) do
        send engine, {:callback, :SkirmishAIs_getSize, self()}
        receive_response
    end
    def team_TeamRulesParam_getName(engine, teamId, teamRulesParamId) do
        send engine, {:callback, :Team_TeamRulesParam_getName, teamId, teamRulesParamId, self()}
        receive_response
    end
    def team_TeamRulesParam_getValueFloat(engine, teamId, teamRulesParamId) do
        send engine, {:callback, :Team_TeamRulesParam_getValueFloat, teamId, teamRulesParamId, self()}
        receive_response
    end
    def team_TeamRulesParam_getValueString(engine, teamId, teamRulesParamId) do
        send engine, {:callback, :Team_TeamRulesParam_getValueString, teamId, teamRulesParamId, self()}
        receive_response
    end
    def team_getTeamRulesParamById(engine, teamId, rulesParamId) do
        send engine, {:callback, :Team_getTeamRulesParamById, teamId, rulesParamId, self()}
        receive_response
    end
    def team_getTeamRulesParamByName(engine, teamId, rulesParamName) do
        send engine, {:callback, :Team_getTeamRulesParamByName, teamId, rulesParamName, self()}
        receive_response
    end
    def team_getTeamRulesParams(engine, teamId, paramIds_sizeMax \\ 100) do
        send engine, {:callback, :Team_getTeamRulesParams, teamId, paramIds_sizeMax, self()}
        receive_response
    end
    def team_hasAIController(engine, teamId) do
        send engine, {:callback, :Team_hasAIController, teamId, self()}
        receive_response
    end
    def teams_getSize(engine) do
        send engine, {:callback, :Teams_getSize, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getDir(engine, unitDefId) do
        send engine, {:callback, :UnitDef_FlankingBonus_getDir, unitDefId, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getMax(engine, unitDefId) do
        send engine, {:callback, :UnitDef_FlankingBonus_getMax, unitDefId, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getMin(engine, unitDefId) do
        send engine, {:callback, :UnitDef_FlankingBonus_getMin, unitDefId, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getMobilityAdd(engine, unitDefId) do
        send engine, {:callback, :UnitDef_FlankingBonus_getMobilityAdd, unitDefId, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getMode(engine, unitDefId) do
        send engine, {:callback, :UnitDef_FlankingBonus_getMode, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getCrushStrength(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getCrushStrength, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getDepth(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getDepth, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getDepthMod(engine, unitDefId, height) do
        send engine, {:callback, :UnitDef_MoveData_getDepthMod, unitDefId, height, self()}
        receive_response
    end
    def unitDef_MoveData_getFollowGround(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getFollowGround, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxAcceleration(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getMaxAcceleration, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxBreaking(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getMaxBreaking, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxSlope(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getMaxSlope, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getMaxSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxTurnRate(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getMaxTurnRate, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMoveType(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getMoveType, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getName(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getName, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getPathType(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getPathType, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getSlopeMod(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getSlopeMod, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getSpeedModClass(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getSpeedModClass, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getTerrainClass(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getTerrainClass, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getXSize(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getXSize, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getZSize(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_getZSize, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_isSubMarine(engine, unitDefId) do
        send engine, {:callback, :UnitDef_MoveData_isSubMarine, unitDefId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getBadTargetCategory(engine, unitDefId, weaponMountId) do
        send engine, {:callback, :UnitDef_WeaponMount_getBadTargetCategory, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getFuelUsage(engine, unitDefId, weaponMountId) do
        send engine, {:callback, :UnitDef_WeaponMount_getFuelUsage, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getMainDir(engine, unitDefId, weaponMountId) do
        send engine, {:callback, :UnitDef_WeaponMount_getMainDir, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getMaxAngleDif(engine, unitDefId, weaponMountId) do
        send engine, {:callback, :UnitDef_WeaponMount_getMaxAngleDif, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getName(engine, unitDefId, weaponMountId) do
        send engine, {:callback, :UnitDef_WeaponMount_getName, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getOnlyTargetCategory(engine, unitDefId, weaponMountId) do
        send engine, {:callback, :UnitDef_WeaponMount_getOnlyTargetCategory, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getSlavedTo(engine, unitDefId, weaponMountId) do
        send engine, {:callback, :UnitDef_WeaponMount_getSlavedTo, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getWeaponDef(engine, unitDefId, weaponMountId) do
        send engine, {:callback, :UnitDef_WeaponMount_getWeaponDef, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_canManualFire(engine, unitDefId) do
        send engine, {:callback, :UnitDef_canManualFire, unitDefId, self()}
        receive_response
    end
    def unitDef_getAiHint(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getAiHint, unitDefId, self()}
        receive_response
    end
    def unitDef_getAirLosRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getAirLosRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getArmorType(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getArmorType, unitDefId, self()}
        receive_response
    end
    def unitDef_getArmoredMultiple(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getArmoredMultiple, unitDefId, self()}
        receive_response
    end
    def unitDef_getAutoHeal(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getAutoHeal, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildAngle(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getBuildAngle, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildDistance(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getBuildDistance, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildOptions(engine, unitDefId, unitDefIds_sizeMax \\ 100) do
        send engine, {:callback, :UnitDef_getBuildOptions, unitDefId, unitDefIds_sizeMax, self()}
        receive_response
    end
    def unitDef_getBuildSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getBuildSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildTime(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getBuildTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildingDecalDecaySpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getBuildingDecalDecaySpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildingDecalSizeX(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getBuildingDecalSizeX, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildingDecalSizeY(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getBuildingDecalSizeY, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildingDecalType(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getBuildingDecalType, unitDefId, self()}
        receive_response
    end
    def unitDef_getCaptureSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getCaptureSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getCategory(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getCategory, unitDefId, self()}
        receive_response
    end
    def unitDef_getCategoryString(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getCategoryString, unitDefId, self()}
        receive_response
    end
    def unitDef_getCloakCost(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getCloakCost, unitDefId, self()}
        receive_response
    end
    def unitDef_getCloakCostMoving(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getCloakCostMoving, unitDefId, self()}
        receive_response
    end
    def unitDef_getCobId(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getCobId, unitDefId, self()}
        receive_response
    end
    def unitDef_getCost(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getCost, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getCustomParams(engine, unitDefId, keys, values) do
        send engine, {:callback, :UnitDef_getCustomParams, unitDefId, keys, values, self()}
        receive_response
    end
    def unitDef_getDeathExplosion(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getDeathExplosion, unitDefId, self()}
        receive_response
    end
    def unitDef_getDecloakDistance(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getDecloakDistance, unitDefId, self()}
        receive_response
    end
    def unitDef_getDecoyDef(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getDecoyDef, unitDefId, self()}
        receive_response
    end
    def unitDef_getDlHoverFactor(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getDlHoverFactor, unitDefId, self()}
        receive_response
    end
    def unitDef_getDrag(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getDrag, unitDefId, self()}
        receive_response
    end
    def unitDef_getExtractsResource(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getExtractsResource, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getFallSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFallSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getFileName(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFileName, unitDefId, self()}
        receive_response
    end
    def unitDef_getFireState(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFireState, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareDelay(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFlareDelay, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareDropVector(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFlareDropVector, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareEfficiency(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFlareEfficiency, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareReloadTime(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFlareReloadTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareSalvoDelay(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFlareSalvoDelay, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareSalvoSize(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFlareSalvoSize, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareTime(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFlareTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getFrontToSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getFrontToSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getGaia(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getGaia, unitDefId, self()}
        receive_response
    end
    def unitDef_getHealth(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getHealth, unitDefId, self()}
        receive_response
    end
    def unitDef_getHeight(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getHeight, unitDefId, self()}
        receive_response
    end
    def unitDef_getHighTrajectoryType(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getHighTrajectoryType, unitDefId, self()}
        receive_response
    end
    def unitDef_getHumanName(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getHumanName, unitDefId, self()}
        receive_response
    end
    def unitDef_getIdleAutoHeal(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getIdleAutoHeal, unitDefId, self()}
        receive_response
    end
    def unitDef_getIdleTime(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getIdleTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getJammerRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getJammerRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getKamikazeDist(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getKamikazeDist, unitDefId, self()}
        receive_response
    end
    def unitDef_getLoadingRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getLoadingRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getLosHeight(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getLosHeight, unitDefId, self()}
        receive_response
    end
    def unitDef_getLosRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getLosRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getMakesResource(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getMakesResource, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getMass(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMass, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxAcceleration(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxAcceleration, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxAileron(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxAileron, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxBank(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxBank, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxDeceleration(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxDeceleration, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxElevator(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxElevator, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxFuel(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxFuel, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxHeightDif(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxHeightDif, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxPitch(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxPitch, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxRepairSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxRepairSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxRudder(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxRudder, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxSlope(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxSlope, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxThisUnit(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxThisUnit, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxWaterDepth(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxWaterDepth, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxWeaponRange(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMaxWeaponRange, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinAirBasePower(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMinAirBasePower, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinCollisionSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMinCollisionSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinTransportMass(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMinTransportMass, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinTransportSize(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMinTransportSize, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinWaterDepth(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMinWaterDepth, unitDefId, self()}
        receive_response
    end
    def unitDef_getMoveState(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMoveState, unitDefId, self()}
        receive_response
    end
    def unitDef_getMyGravity(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getMyGravity, unitDefId, self()}
        receive_response
    end
    def unitDef_getName(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getName, unitDefId, self()}
        receive_response
    end
    def unitDef_getNoChaseCategory(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getNoChaseCategory, unitDefId, self()}
        receive_response
    end
    def unitDef_getPower(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getPower, unitDefId, self()}
        receive_response
    end
    def unitDef_getRadarRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getRadarRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getReclaimSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getReclaimSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getRefuelTime(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getRefuelTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getRepairSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getRepairSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getResourceExtractorRange(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getResourceExtractorRange, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getResourceMake(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getResourceMake, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getResurrectSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getResurrectSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getSeismicRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSeismicRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getSeismicSignature(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSeismicSignature, unitDefId, self()}
        receive_response
    end
    def unitDef_getSelfDCountdown(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSelfDCountdown, unitDefId, self()}
        receive_response
    end
    def unitDef_getSelfDExplosion(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSelfDExplosion, unitDefId, self()}
        receive_response
    end
    def unitDef_getShieldDef(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getShieldDef, unitDefId, self()}
        receive_response
    end
    def unitDef_getSlideTolerance(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSlideTolerance, unitDefId, self()}
        receive_response
    end
    def unitDef_getSonarJamRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSonarJamRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getSonarRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSonarRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getSpeedToFront(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getSpeedToFront, unitDefId, self()}
        receive_response
    end
    def unitDef_getStockpileDef(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getStockpileDef, unitDefId, self()}
        receive_response
    end
    def unitDef_getStorage(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getStorage, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getTechLevel(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTechLevel, unitDefId, self()}
        receive_response
    end
    def unitDef_getTerraformSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTerraformSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getTidalResourceGenerator(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getTidalResourceGenerator, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getTooltip(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTooltip, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackOffset(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTrackOffset, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackStrength(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTrackStrength, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackStretch(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTrackStretch, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackType(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTrackType, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackWidth(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTrackWidth, unitDefId, self()}
        receive_response
    end
    def unitDef_getTransportCapacity(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTransportCapacity, unitDefId, self()}
        receive_response
    end
    def unitDef_getTransportMass(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTransportMass, unitDefId, self()}
        receive_response
    end
    def unitDef_getTransportSize(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTransportSize, unitDefId, self()}
        receive_response
    end
    def unitDef_getTransportUnloadMethod(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTransportUnloadMethod, unitDefId, self()}
        receive_response
    end
    def unitDef_getTurnInPlaceDistance(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTurnInPlaceDistance, unitDefId, self()}
        receive_response
    end
    def unitDef_getTurnInPlaceSpeedLimit(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTurnInPlaceSpeedLimit, unitDefId, self()}
        receive_response
    end
    def unitDef_getTurnRadius(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTurnRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getTurnRate(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getTurnRate, unitDefId, self()}
        receive_response
    end
    def unitDef_getType(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getType, unitDefId, self()}
        receive_response
    end
    def unitDef_getUnitFallSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getUnitFallSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getUnloadSpread(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getUnloadSpread, unitDefId, self()}
        receive_response
    end
    def unitDef_getUpkeep(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getUpkeep, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getVerticalSpeed(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getVerticalSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getWantedHeight(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getWantedHeight, unitDefId, self()}
        receive_response
    end
    def unitDef_getWaterline(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getWaterline, unitDefId, self()}
        receive_response
    end
    def unitDef_getWeaponMounts(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getWeaponMounts, unitDefId, self()}
        receive_response
    end
    def unitDef_getWindResourceGenerator(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_getWindResourceGenerator, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getWingAngle(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getWingAngle, unitDefId, self()}
        receive_response
    end
    def unitDef_getWingDrag(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getWingDrag, unitDefId, self()}
        receive_response
    end
    def unitDef_getWreckName(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getWreckName, unitDefId, self()}
        receive_response
    end
    def unitDef_getXSize(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getXSize, unitDefId, self()}
        receive_response
    end
    def unitDef_getYardMap(engine, unitDefId, facing, yardMap, yardMap_sizeMax \\ 100) do
        send engine, {:callback, :UnitDef_getYardMap, unitDefId, facing, yardMap, yardMap_sizeMax, self()}
        receive_response
    end
    def unitDef_getZSize(engine, unitDefId) do
        send engine, {:callback, :UnitDef_getZSize, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToAssist(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToAssist, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToAttack(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToAttack, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToCapture(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToCapture, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToCloak(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToCloak, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToCrash(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToCrash, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToDropFlare(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToDropFlare, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToFight(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToFight, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToFireControl(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToFireControl, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToFly(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToFly, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToGuard(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToGuard, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToHover(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToHover, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToKamikaze(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToKamikaze, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToLoopbackAttack(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToLoopbackAttack, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToMove(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToMove, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToPatrol(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToPatrol, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToReclaim(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToReclaim, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToRepair(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToRepair, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToRepeat(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToRepeat, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToRestore(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToRestore, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToResurrect(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToResurrect, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToSelfD(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToSelfD, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToSelfRepair(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToSelfRepair, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToSubmerge(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAbleToSubmerge, unitDefId, self()}
        receive_response
    end
    def unitDef_isActivateWhenBuilt(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isActivateWhenBuilt, unitDefId, self()}
        receive_response
    end
    def unitDef_isAirBase(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAirBase, unitDefId, self()}
        receive_response
    end
    def unitDef_isAirStrafe(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAirStrafe, unitDefId, self()}
        receive_response
    end
    def unitDef_isAssistable(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isAssistable, unitDefId, self()}
        receive_response
    end
    def unitDef_isBuildRange3D(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isBuildRange3D, unitDefId, self()}
        receive_response
    end
    def unitDef_isBuilder(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isBuilder, unitDefId, self()}
        receive_response
    end
    def unitDef_isCapturable(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isCapturable, unitDefId, self()}
        receive_response
    end
    def unitDef_isCollide(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isCollide, unitDefId, self()}
        receive_response
    end
    def unitDef_isCommander(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isCommander, unitDefId, self()}
        receive_response
    end
    def unitDef_isDecloakOnFire(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isDecloakOnFire, unitDefId, self()}
        receive_response
    end
    def unitDef_isDecloakSpherical(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isDecloakSpherical, unitDefId, self()}
        receive_response
    end
    def unitDef_isDontLand(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isDontLand, unitDefId, self()}
        receive_response
    end
    def unitDef_isFactoryHeadingTakeoff(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isFactoryHeadingTakeoff, unitDefId, self()}
        receive_response
    end
    def unitDef_isFeature(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isFeature, unitDefId, self()}
        receive_response
    end
    def unitDef_isFirePlatform(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isFirePlatform, unitDefId, self()}
        receive_response
    end
    def unitDef_isFloater(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isFloater, unitDefId, self()}
        receive_response
    end
    def unitDef_isFullHealthFactory(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isFullHealthFactory, unitDefId, self()}
        receive_response
    end
    def unitDef_isHideDamage(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isHideDamage, unitDefId, self()}
        receive_response
    end
    def unitDef_isHoldSteady(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isHoldSteady, unitDefId, self()}
        receive_response
    end
    def unitDef_isHoverAttack(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isHoverAttack, unitDefId, self()}
        receive_response
    end
    def unitDef_isLeaveTracks(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isLeaveTracks, unitDefId, self()}
        receive_response
    end
    def unitDef_isLevelGround(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isLevelGround, unitDefId, self()}
        receive_response
    end
    def unitDef_isMoveDataAvailable(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isMoveDataAvailable, unitDefId, self()}
        receive_response
    end
    def unitDef_isNeedGeo(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isNeedGeo, unitDefId, self()}
        receive_response
    end
    def unitDef_isNotTransportable(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isNotTransportable, unitDefId, self()}
        receive_response
    end
    def unitDef_isOnOffable(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isOnOffable, unitDefId, self()}
        receive_response
    end
    def unitDef_isPushResistant(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isPushResistant, unitDefId, self()}
        receive_response
    end
    def unitDef_isReclaimable(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isReclaimable, unitDefId, self()}
        receive_response
    end
    def unitDef_isReleaseHeld(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isReleaseHeld, unitDefId, self()}
        receive_response
    end
    def unitDef_isShowPlayerName(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isShowPlayerName, unitDefId, self()}
        receive_response
    end
    def unitDef_isSonarStealth(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isSonarStealth, unitDefId, self()}
        receive_response
    end
    def unitDef_isSquareResourceExtractor(engine, unitDefId, resourceId) do
        send engine, {:callback, :UnitDef_isSquareResourceExtractor, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_isStartCloaked(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isStartCloaked, unitDefId, self()}
        receive_response
    end
    def unitDef_isStealth(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isStealth, unitDefId, self()}
        receive_response
    end
    def unitDef_isStrafeToAttack(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isStrafeToAttack, unitDefId, self()}
        receive_response
    end
    def unitDef_isTargetingFacility(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isTargetingFacility, unitDefId, self()}
        receive_response
    end
    def unitDef_isTransportByEnemy(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isTransportByEnemy, unitDefId, self()}
        receive_response
    end
    def unitDef_isTurnInPlace(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isTurnInPlace, unitDefId, self()}
        receive_response
    end
    def unitDef_isUpright(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isUpright, unitDefId, self()}
        receive_response
    end
    def unitDef_isUseBuildingGroundDecal(engine, unitDefId) do
        send engine, {:callback, :UnitDef_isUseBuildingGroundDecal, unitDefId, self()}
        receive_response
    end
    def unit_CurrentCommand_getId(engine, unitId, commandId) do
        send engine, {:callback, :Unit_CurrentCommand_getId, unitId, commandId, self()}
        receive_response
    end
    def unit_CurrentCommand_getOptions(engine, unitId, commandId) do
        send engine, {:callback, :Unit_CurrentCommand_getOptions, unitId, commandId, self()}
        receive_response
    end
    def unit_CurrentCommand_getParams(engine, unitId, commandId, params, params_sizeMax \\ 100) do
        send engine, {:callback, :Unit_CurrentCommand_getParams, unitId, commandId, params, params_sizeMax, self()}
        receive_response
    end
    def unit_CurrentCommand_getTag(engine, unitId, commandId) do
        send engine, {:callback, :Unit_CurrentCommand_getTag, unitId, commandId, self()}
        receive_response
    end
    def unit_CurrentCommand_getTimeOut(engine, unitId, commandId) do
        send engine, {:callback, :Unit_CurrentCommand_getTimeOut, unitId, commandId, self()}
        receive_response
    end
    def unit_CurrentCommand_getType(engine, unitId) do
        send engine, {:callback, :Unit_CurrentCommand_getType, unitId, self()}
        receive_response
    end
    def unit_SupportedCommand_getId(engine, unitId, supportedCommandId) do
        send engine, {:callback, :Unit_SupportedCommand_getId, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_SupportedCommand_getName(engine, unitId, supportedCommandId) do
        send engine, {:callback, :Unit_SupportedCommand_getName, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_SupportedCommand_getParams(engine, unitId, supportedCommandId, params, params_sizeMax \\ 100) do
        send engine, {:callback, :Unit_SupportedCommand_getParams, unitId, supportedCommandId, params, params_sizeMax, self()}
        receive_response
    end
    def unit_SupportedCommand_getToolTip(engine, unitId, supportedCommandId) do
        send engine, {:callback, :Unit_SupportedCommand_getToolTip, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_SupportedCommand_isDisabled(engine, unitId, supportedCommandId) do
        send engine, {:callback, :Unit_SupportedCommand_isDisabled, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_SupportedCommand_isShowUnique(engine, unitId, supportedCommandId) do
        send engine, {:callback, :Unit_SupportedCommand_isShowUnique, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_UnitRulesParam_getName(engine, unitId, unitRulesParamId) do
        send engine, {:callback, :Unit_UnitRulesParam_getName, unitId, unitRulesParamId, self()}
        receive_response
    end
    def unit_UnitRulesParam_getValueFloat(engine, unitId, unitRulesParamId) do
        send engine, {:callback, :Unit_UnitRulesParam_getValueFloat, unitId, unitRulesParamId, self()}
        receive_response
    end
    def unit_UnitRulesParam_getValueString(engine, unitId, unitRulesParamId) do
        send engine, {:callback, :Unit_UnitRulesParam_getValueString, unitId, unitRulesParamId, self()}
        receive_response
    end
    def unit_Weapon_getDef(engine, unitId, weaponId) do
        send engine, {:callback, :Unit_Weapon_getDef, unitId, weaponId, self()}
        receive_response
    end
    def unit_Weapon_getRange(engine, unitId, weaponId) do
        send engine, {:callback, :Unit_Weapon_getRange, unitId, weaponId, self()}
        receive_response
    end
    def unit_Weapon_getReloadFrame(engine, unitId, weaponId) do
        send engine, {:callback, :Unit_Weapon_getReloadFrame, unitId, weaponId, self()}
        receive_response
    end
    def unit_Weapon_getReloadTime(engine, unitId, weaponId) do
        send engine, {:callback, :Unit_Weapon_getReloadTime, unitId, weaponId, self()}
        receive_response
    end
    def unit_getAiHint(engine, unitId) do
        send engine, {:callback, :Unit_getAiHint, unitId, self()}
        receive_response
    end
    def unit_getAllyTeam(engine, unitId) do
        send engine, {:callback, :Unit_getAllyTeam, unitId, self()}
        receive_response
    end
    def unit_getBuildingFacing(engine, unitId) do
        send engine, {:callback, :Unit_getBuildingFacing, unitId, self()}
        receive_response
    end
    def unit_getCurrentCommands(engine, unitId) do
        send engine, {:callback, :Unit_getCurrentCommands, unitId, self()}
        receive_response
    end
    def unit_getCurrentFuel(engine, unitId) do
        send engine, {:callback, :Unit_getCurrentFuel, unitId, self()}
        receive_response
    end
    def unit_getDef(engine, unitId) do
        send engine, {:callback, :Unit_getDef, unitId, self()}
        receive_response
    end
    def unit_getExperience(engine, unitId) do
        send engine, {:callback, :Unit_getExperience, unitId, self()}
        receive_response
    end
    def unit_getGroup(engine, unitId) do
        send engine, {:callback, :Unit_getGroup, unitId, self()}
        receive_response
    end
    def unit_getHealth(engine, unitId) do
        send engine, {:callback, :Unit_getHealth, unitId, self()}
        receive_response
    end
    def unit_getLastUserOrderFrame(engine, unitId) do
        send engine, {:callback, :Unit_getLastUserOrderFrame, unitId, self()}
        receive_response
    end
    def unit_getLimit(engine) do
        send engine, {:callback, :Unit_getLimit, self()}
        receive_response
    end
    def unit_getMax(engine) do
        send engine, {:callback, :Unit_getMax, self()}
        receive_response
    end
    def unit_getMaxHealth(engine, unitId) do
        send engine, {:callback, :Unit_getMaxHealth, unitId, self()}
        receive_response
    end
    def unit_getMaxRange(engine, unitId) do
        send engine, {:callback, :Unit_getMaxRange, unitId, self()}
        receive_response
    end
    def unit_getMaxSpeed(engine, unitId) do
        send engine, {:callback, :Unit_getMaxSpeed, unitId, self()}
        receive_response
    end
    def unit_getPos(engine, unitId) do
        send engine, {:callback, :Unit_getPos, unitId, self()}
        receive_response
    end
    def unit_getPower(engine, unitId) do
        send engine, {:callback, :Unit_getPower, unitId, self()}
        receive_response
    end
    def unit_getResourceMake(engine, unitId, resourceId) do
        send engine, {:callback, :Unit_getResourceMake, unitId, resourceId, self()}
        receive_response
    end
    def unit_getResourceUse(engine, unitId, resourceId) do
        send engine, {:callback, :Unit_getResourceUse, unitId, resourceId, self()}
        receive_response
    end
    def unit_getSpeed(engine, unitId) do
        send engine, {:callback, :Unit_getSpeed, unitId, self()}
        receive_response
    end
    def unit_getStockpile(engine, unitId) do
        send engine, {:callback, :Unit_getStockpile, unitId, self()}
        receive_response
    end
    def unit_getStockpileQueued(engine, unitId) do
        send engine, {:callback, :Unit_getStockpileQueued, unitId, self()}
        receive_response
    end
    def unit_getSupportedCommands(engine, unitId) do
        send engine, {:callback, :Unit_getSupportedCommands, unitId, self()}
        receive_response
    end
    def unit_getTeam(engine, unitId) do
        send engine, {:callback, :Unit_getTeam, unitId, self()}
        receive_response
    end
    def unit_getUnitRulesParamById(engine, unitId, rulesParamId) do
        send engine, {:callback, :Unit_getUnitRulesParamById, unitId, rulesParamId, self()}
        receive_response
    end
    def unit_getUnitRulesParamByName(engine, unitId, rulesParamName) do
        send engine, {:callback, :Unit_getUnitRulesParamByName, unitId, rulesParamName, self()}
        receive_response
    end
    def unit_getUnitRulesParams(engine, unitId, paramIds_sizeMax \\ 100) do
        send engine, {:callback, :Unit_getUnitRulesParams, unitId, paramIds_sizeMax, self()}
        receive_response
    end
    def unit_getVel(engine, unitId) do
        send engine, {:callback, :Unit_getVel, unitId, self()}
        receive_response
    end
    def unit_getWeapon(engine, unitId, weaponMountId) do
        send engine, {:callback, :Unit_getWeapon, unitId, weaponMountId, self()}
        receive_response
    end
    def unit_getWeapons(engine, unitId) do
        send engine, {:callback, :Unit_getWeapons, unitId, self()}
        receive_response
    end
    def unit_isActivated(engine, unitId) do
        send engine, {:callback, :Unit_isActivated, unitId, self()}
        receive_response
    end
    def unit_isBeingBuilt(engine, unitId) do
        send engine, {:callback, :Unit_isBeingBuilt, unitId, self()}
        receive_response
    end
    def unit_isCloaked(engine, unitId) do
        send engine, {:callback, :Unit_isCloaked, unitId, self()}
        receive_response
    end
    def unit_isNeutral(engine, unitId) do
        send engine, {:callback, :Unit_isNeutral, unitId, self()}
        receive_response
    end
    def unit_isParalyzed(engine, unitId) do
        send engine, {:callback, :Unit_isParalyzed, unitId, self()}
        receive_response
    end
    def weaponDef_Damage_getCraterBoost(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Damage_getCraterBoost, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getCraterMult(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Damage_getCraterMult, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getImpulseBoost(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Damage_getImpulseBoost, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getImpulseFactor(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Damage_getImpulseFactor, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getParalyzeDamageTime(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Damage_getParalyzeDamageTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getTypes(engine, weaponDefId, types, types_sizeMax \\ 100) do
        send engine, {:callback, :WeaponDef_Damage_getTypes, weaponDefId, types, types_sizeMax, self()}
        receive_response
    end
    def weaponDef_Shield_getAlpha(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getAlpha, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getBadColor(engine, weaponDefId, return_colorS3_out) do
        send engine, {:callback, :WeaponDef_Shield_getBadColor, weaponDefId, return_colorS3_out, self()}
        receive_response
    end
    def weaponDef_Shield_getForce(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getForce, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getGoodColor(engine, weaponDefId, return_colorS3_out) do
        send engine, {:callback, :WeaponDef_Shield_getGoodColor, weaponDefId, return_colorS3_out, self()}
        receive_response
    end
    def weaponDef_Shield_getInterceptType(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getInterceptType, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getMaxSpeed(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getMaxSpeed, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getPower(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getPower, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getPowerRegen(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getPowerRegen, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getPowerRegenResource(engine, weaponDefId, resourceId) do
        send engine, {:callback, :WeaponDef_Shield_getPowerRegenResource, weaponDefId, resourceId, self()}
        receive_response
    end
    def weaponDef_Shield_getRadius(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getRadius, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getRechargeDelay(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getRechargeDelay, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getResourceUse(engine, weaponDefId, resourceId) do
        send engine, {:callback, :WeaponDef_Shield_getResourceUse, weaponDefId, resourceId, self()}
        receive_response
    end
    def weaponDef_Shield_getStartingPower(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_Shield_getStartingPower, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getAccuracy(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getAccuracy, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getAreaOfEffect(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getAreaOfEffect, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getBeamTime(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getBeamTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getBounceRebound(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getBounceRebound, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getBounceSlip(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getBounceSlip, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCameraShake(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getCameraShake, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCegTag(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getCegTag, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCollisionFlags(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getCollisionFlags, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCollisionSize(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getCollisionSize, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCoreThickness(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getCoreThickness, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCost(engine, weaponDefId, resourceId) do
        send engine, {:callback, :WeaponDef_getCost, weaponDefId, resourceId, self()}
        receive_response
    end
    def weaponDef_getCoverageRange(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getCoverageRange, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCustomParams(engine, weaponDefId, keys, values) do
        send engine, {:callback, :WeaponDef_getCustomParams, weaponDefId, keys, values, self()}
        receive_response
    end
    def weaponDef_getCylinderTargetting(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getCylinderTargetting, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDance(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getDance, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDescription(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getDescription, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDuration(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getDuration, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDynDamageExp(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getDynDamageExp, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDynDamageMin(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getDynDamageMin, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDynDamageRange(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getDynDamageRange, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getEdgeEffectiveness(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getEdgeEffectiveness, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getExplosionSpeed(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getExplosionSpeed, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getFalloffRate(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getFalloffRate, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getFileName(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getFileName, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getFireStarter(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getFireStarter, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getFlightTime(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getFlightTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getGraphicsType(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getGraphicsType, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getHeightBoostFactor(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getHeightBoostFactor, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getHeightMod(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getHeightMod, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getHighTrajectory(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getHighTrajectory, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getIntensity(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getIntensity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getInterceptedByShieldType(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getInterceptedByShieldType, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getInterceptor(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getInterceptor, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getLaserFlareSize(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getLaserFlareSize, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getLeadBonus(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getLeadBonus, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getLeadLimit(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getLeadLimit, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getLodDistance(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getLodDistance, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMaxAngle(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getMaxAngle, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMaxVelocity(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getMaxVelocity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMinIntensity(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getMinIntensity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMovingAccuracy(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getMovingAccuracy, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMyGravity(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getMyGravity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getName(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getName, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getNumBounce(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getNumBounce, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getNumDamageTypes(engine) do
        send engine, {:callback, :WeaponDef_getNumDamageTypes, self()}
        receive_response
    end
    def weaponDef_getOnlyTargetCategory(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getOnlyTargetCategory, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getPredictBoost(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getPredictBoost, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getProjectileSpeed(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getProjectileSpeed, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getProjectilesPerShot(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getProjectilesPerShot, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getProximityPriority(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getProximityPriority, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getRange(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getRange, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getReload(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getReload, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSalvoDelay(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getSalvoDelay, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSalvoSize(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getSalvoSize, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSize(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getSize, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSizeGrowth(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getSizeGrowth, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSprayAngle(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getSprayAngle, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getStartVelocity(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getStartVelocity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getStockpileTime(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getStockpileTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTargetBorder(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getTargetBorder, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTargetMoveError(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getTargetMoveError, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTargetable(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getTargetable, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getThickness(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getThickness, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTrajectoryHeight(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getTrajectoryHeight, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTurnRate(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getTurnRate, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getType(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getType, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getUpTime(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getUpTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getVisibleShieldHitFrames(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getVisibleShieldHitFrames, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getWeaponAcceleration(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getWeaponAcceleration, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getWobble(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_getWobble, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isAbleToAttackGround(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isAbleToAttackGround, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isAvoidFeature(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isAvoidFeature, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isAvoidFriendly(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isAvoidFriendly, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isAvoidNeutral(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isAvoidNeutral, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isBeamBurst(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isBeamBurst, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isDropped(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isDropped, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isDynDamageInverted(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isDynDamageInverted, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isExteriorShield(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isExteriorShield, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isFireSubmersed(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isFireSubmersed, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isFixedLauncher(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isFixedLauncher, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isGravityAffected(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isGravityAffected, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isGroundBounce(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isGroundBounce, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isImpactOnly(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isImpactOnly, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isLargeBeamLaser(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isLargeBeamLaser, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isManualFire(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isManualFire, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isNoAutoTarget(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isNoAutoTarget, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isNoExplode(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isNoExplode, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isNoSelfDamage(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isNoSelfDamage, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isOnlyForward(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isOnlyForward, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isParalyzer(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isParalyzer, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSelfExplode(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isSelfExplode, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isShield(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isShield, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isShieldRepulser(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isShieldRepulser, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSmartShield(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isSmartShield, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSoundTrigger(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isSoundTrigger, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isStockpileable(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isStockpileable, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSubMissile(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isSubMissile, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSweepFire(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isSweepFire, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isTracks(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isTracks, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isTurret(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isTurret, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isVisibleShield(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isVisibleShield, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isVisibleShieldRepulse(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isVisibleShieldRepulse, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isWaterBounce(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isWaterBounce, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isWaterWeapon(engine, weaponDefId) do
        send engine, {:callback, :WeaponDef_isWaterWeapon, weaponDefId, self()}
        receive_response
    end
    def getAllyTeams(engine, teamIds_sizeMax \\ 100) do
        send engine, {:callback, :getAllyTeams, teamIds_sizeMax, self()}
        receive_response
    end
    def getEnemyTeams(engine, teamIds_sizeMax \\ 100) do
        send engine, {:callback, :getEnemyTeams, teamIds_sizeMax, self()}
        receive_response
    end
    def getEnemyUnits(engine, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getEnemyUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getEnemyUnitsIn(engine, pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getEnemyUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def getEnemyUnitsInRadarAndLos(engine, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getEnemyUnitsInRadarAndLos, unitIds_sizeMax, self()}
        receive_response
    end
    def getFeatureDefs(engine, featureDefIds_sizeMax \\ 100) do
        send engine, {:callback, :getFeatureDefs, featureDefIds_sizeMax, self()}
        receive_response
    end
    def getFeatures(engine, featureIds_sizeMax \\ 100) do
        send engine, {:callback, :getFeatures, featureIds_sizeMax, self()}
        receive_response
    end
    def getFeaturesIn(engine, pos_posF3, radius, featureIds_sizeMax \\ 100) do
        send engine, {:callback, :getFeaturesIn, pos_posF3, radius, featureIds_sizeMax, self()}
        receive_response
    end
    def getFriendlyUnits(engine, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getFriendlyUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getFriendlyUnitsIn(engine, pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getFriendlyUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def getGroups(engine, groupIds_sizeMax \\ 100) do
        send engine, {:callback, :getGroups, groupIds_sizeMax, self()}
        receive_response
    end
    def getNeutralUnits(engine, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getNeutralUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getNeutralUnitsIn(engine, pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getNeutralUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def getResourceByName(engine, resourceName) do
        send engine, {:callback, :getResourceByName, resourceName, self()}
        receive_response
    end
    def getResources(engine) do
        send engine, {:callback, :getResources, self()}
        receive_response
    end
    def getSelectedUnits(engine, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getSelectedUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getTeamUnits(engine, unitIds_sizeMax \\ 100) do
        send engine, {:callback, :getTeamUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getUnitDefByName(engine, unitName) do
        send engine, {:callback, :getUnitDefByName, unitName, self()}
        receive_response
    end
    def getUnitDefs(engine, unitDefIds_sizeMax \\ 100) do
        send engine, {:callback, :getUnitDefs, unitDefIds_sizeMax, self()}
        receive_response
    end
    def getWeaponDefByName(engine, weaponDefName) do
        send engine, {:callback, :getWeaponDefByName, weaponDefName, self()}
        receive_response
    end
    def getWeaponDefs(engine) do
        send engine, {:callback, :getWeaponDefs, self()}
        receive_response
    end
end
