
defmodule TccAI.Callbacks do
    import TccAI, only: [cnode: 0]
    import TccAI.Callbacks.Helper, only: :functions
    def cheats_isEnabled() do
        send cnode, {:callback, :Cheats_isEnabled, self()}
        receive_response
    end
    def cheats_isOnlyPassive() do
        send cnode, {:callback, :Cheats_isOnlyPassive, self()}
        receive_response
    end
    def cheats_setEnabled(enable) do
        send cnode, {:callback, :Cheats_setEnabled, enable, self()}
        receive_response
    end
    def cheats_setEventsEnabled(enabled) do
        send cnode, {:callback, :Cheats_setEventsEnabled, enabled, self()}
        receive_response
    end
    def dataDirs_Roots_allocatePath(relPath, writeable, create, dir) do
        send cnode, {:callback, :DataDirs_Roots_allocatePath, relPath, writeable, create, dir, self()}
        receive_response
    end
    def dataDirs_Roots_getDir(path, path_sizeMax \\ 100, dirIndex) do
        send cnode, {:callback, :DataDirs_Roots_getDir, path, path_sizeMax, dirIndex, self()}
        receive_response
    end
    def dataDirs_Roots_getSize() do
        send cnode, {:callback, :DataDirs_Roots_getSize, self()}
        receive_response
    end
    def dataDirs_Roots_locatePath(path, path_sizeMax \\ 100, relPath, writeable, create, dir) do
        send cnode, {:callback, :DataDirs_Roots_locatePath, path, path_sizeMax, relPath, writeable, create, dir, self()}
        receive_response
    end
    def dataDirs_allocatePath(relPath, writeable, create, dir, common) do
        send cnode, {:callback, :DataDirs_allocatePath, relPath, writeable, create, dir, common, self()}
        receive_response
    end
    def dataDirs_getConfigDir() do
        send cnode, {:callback, :DataDirs_getConfigDir, self()}
        receive_response
    end
    def dataDirs_getPathSeparator() do
        send cnode, {:callback, :DataDirs_getPathSeparator, self()}
        receive_response
    end
    def dataDirs_getWriteableDir() do
        send cnode, {:callback, :DataDirs_getWriteableDir, self()}
        receive_response
    end
    def dataDirs_locatePath(path, path_sizeMax \\ 100, relPath, writeable, create, dir, common) do
        send cnode, {:callback, :DataDirs_locatePath, path, path_sizeMax, relPath, writeable, create, dir, common, self()}
        receive_response
    end
    def debug_GraphDrawer_isEnabled() do
        send cnode, {:callback, :Debug_GraphDrawer_isEnabled, self()}
        receive_response
    end
    def economy_getCurrent(resourceId) do
        send cnode, {:callback, :Economy_getCurrent, resourceId, self()}
        receive_response
    end
    def economy_getExcess(resourceId) do
        send cnode, {:callback, :Economy_getExcess, resourceId, self()}
        receive_response
    end
    def economy_getIncome(resourceId) do
        send cnode, {:callback, :Economy_getIncome, resourceId, self()}
        receive_response
    end
    def economy_getPull(resourceId) do
        send cnode, {:callback, :Economy_getPull, resourceId, self()}
        receive_response
    end
    def economy_getReceived(resourceId) do
        send cnode, {:callback, :Economy_getReceived, resourceId, self()}
        receive_response
    end
    def economy_getSent(resourceId) do
        send cnode, {:callback, :Economy_getSent, resourceId, self()}
        receive_response
    end
    def economy_getShare(resourceId) do
        send cnode, {:callback, :Economy_getShare, resourceId, self()}
        receive_response
    end
    def economy_getStorage(resourceId) do
        send cnode, {:callback, :Economy_getStorage, resourceId, self()}
        receive_response
    end
    def economy_getUsage(resourceId) do
        send cnode, {:callback, :Economy_getUsage, resourceId, self()}
        receive_response
    end
    def engine_Version_getAdditional() do
        send cnode, {:callback, :Engine_Version_getAdditional, self()}
        receive_response
    end
    def engine_Version_getBranch() do
        send cnode, {:callback, :Engine_Version_getBranch, self()}
        receive_response
    end
    def engine_Version_getBuildTime() do
        send cnode, {:callback, :Engine_Version_getBuildTime, self()}
        receive_response
    end
    def engine_Version_getCommits() do
        send cnode, {:callback, :Engine_Version_getCommits, self()}
        receive_response
    end
    def engine_Version_getFull() do
        send cnode, {:callback, :Engine_Version_getFull, self()}
        receive_response
    end
    def engine_Version_getHash() do
        send cnode, {:callback, :Engine_Version_getHash, self()}
        receive_response
    end
    def engine_Version_getMajor() do
        send cnode, {:callback, :Engine_Version_getMajor, self()}
        receive_response
    end
    def engine_Version_getMinor() do
        send cnode, {:callback, :Engine_Version_getMinor, self()}
        receive_response
    end
    def engine_Version_getNormal() do
        send cnode, {:callback, :Engine_Version_getNormal, self()}
        receive_response
    end
    def engine_Version_getPatchset() do
        send cnode, {:callback, :Engine_Version_getPatchset, self()}
        receive_response
    end
    def engine_Version_getSync() do
        send cnode, {:callback, :Engine_Version_getSync, self()}
        receive_response
    end
    def engine_Version_isRelease() do
        send cnode, {:callback, :Engine_Version_isRelease, self()}
        receive_response
    end
    def engine_handleCommand(toId, commandId, commandTopic, commandData) do
        send cnode, {:callback, :Engine_handleCommand, toId, commandId, commandTopic, commandData, self()}
        receive_response
    end
    def featureDef_getContainedResource(featureDefId, resourceId) do
        send cnode, {:callback, :FeatureDef_getContainedResource, featureDefId, resourceId, self()}
        receive_response
    end
    def featureDef_getCustomParams(featureDefId, keys, values) do
        send cnode, {:callback, :FeatureDef_getCustomParams, featureDefId, keys, values, self()}
        receive_response
    end
    def featureDef_getDeathFeature(featureDefId) do
        send cnode, {:callback, :FeatureDef_getDeathFeature, featureDefId, self()}
        receive_response
    end
    def featureDef_getDescription(featureDefId) do
        send cnode, {:callback, :FeatureDef_getDescription, featureDefId, self()}
        receive_response
    end
    def featureDef_getDrawType(featureDefId) do
        send cnode, {:callback, :FeatureDef_getDrawType, featureDefId, self()}
        receive_response
    end
    def featureDef_getFileName(featureDefId) do
        send cnode, {:callback, :FeatureDef_getFileName, featureDefId, self()}
        receive_response
    end
    def featureDef_getMass(featureDefId) do
        send cnode, {:callback, :FeatureDef_getMass, featureDefId, self()}
        receive_response
    end
    def featureDef_getMaxHealth(featureDefId) do
        send cnode, {:callback, :FeatureDef_getMaxHealth, featureDefId, self()}
        receive_response
    end
    def featureDef_getModelName(featureDefId) do
        send cnode, {:callback, :FeatureDef_getModelName, featureDefId, self()}
        receive_response
    end
    def featureDef_getName(featureDefId) do
        send cnode, {:callback, :FeatureDef_getName, featureDefId, self()}
        receive_response
    end
    def featureDef_getReclaimTime(featureDefId) do
        send cnode, {:callback, :FeatureDef_getReclaimTime, featureDefId, self()}
        receive_response
    end
    def featureDef_getResurrectable(featureDefId) do
        send cnode, {:callback, :FeatureDef_getResurrectable, featureDefId, self()}
        receive_response
    end
    def featureDef_getSmokeTime(featureDefId) do
        send cnode, {:callback, :FeatureDef_getSmokeTime, featureDefId, self()}
        receive_response
    end
    def featureDef_getXSize(featureDefId) do
        send cnode, {:callback, :FeatureDef_getXSize, featureDefId, self()}
        receive_response
    end
    def featureDef_getZSize(featureDefId) do
        send cnode, {:callback, :FeatureDef_getZSize, featureDefId, self()}
        receive_response
    end
    def featureDef_isBlocking(featureDefId) do
        send cnode, {:callback, :FeatureDef_isBlocking, featureDefId, self()}
        receive_response
    end
    def featureDef_isBurnable(featureDefId) do
        send cnode, {:callback, :FeatureDef_isBurnable, featureDefId, self()}
        receive_response
    end
    def featureDef_isDestructable(featureDefId) do
        send cnode, {:callback, :FeatureDef_isDestructable, featureDefId, self()}
        receive_response
    end
    def featureDef_isFloating(featureDefId) do
        send cnode, {:callback, :FeatureDef_isFloating, featureDefId, self()}
        receive_response
    end
    def featureDef_isGeoThermal(featureDefId) do
        send cnode, {:callback, :FeatureDef_isGeoThermal, featureDefId, self()}
        receive_response
    end
    def featureDef_isNoSelect(featureDefId) do
        send cnode, {:callback, :FeatureDef_isNoSelect, featureDefId, self()}
        receive_response
    end
    def featureDef_isReclaimable(featureDefId) do
        send cnode, {:callback, :FeatureDef_isReclaimable, featureDefId, self()}
        receive_response
    end
    def featureDef_isUpright(featureDefId) do
        send cnode, {:callback, :FeatureDef_isUpright, featureDefId, self()}
        receive_response
    end
    def feature_getDef(featureId) do
        send cnode, {:callback, :Feature_getDef, featureId, self()}
        receive_response
    end
    def feature_getHealth(featureId) do
        send cnode, {:callback, :Feature_getHealth, featureId, self()}
        receive_response
    end
    def feature_getPosition(featureId) do
        send cnode, {:callback, :Feature_getPosition, featureId, self()}
        receive_response
    end
    def feature_getReclaimLeft(featureId) do
        send cnode, {:callback, :Feature_getReclaimLeft, featureId, self()}
        receive_response
    end
    def file_getContent(fileName, buffer, bufferLen) do
        send cnode, {:callback, :File_getContent, fileName, buffer, bufferLen, self()}
        receive_response
    end
    def file_getSize(fileName) do
        send cnode, {:callback, :File_getSize, fileName, self()}
        receive_response
    end
    def gameRulesParam_getName(gameRulesParamId) do
        send cnode, {:callback, :GameRulesParam_getName, gameRulesParamId, self()}
        receive_response
    end
    def gameRulesParam_getValueFloat(gameRulesParamId) do
        send cnode, {:callback, :GameRulesParam_getValueFloat, gameRulesParamId, self()}
        receive_response
    end
    def gameRulesParam_getValueString(gameRulesParamId) do
        send cnode, {:callback, :GameRulesParam_getValueString, gameRulesParamId, self()}
        receive_response
    end
    def game_getAiInterfaceVersion() do
        send cnode, {:callback, :Game_getAiInterfaceVersion, self()}
        receive_response
    end
    def game_getCategoriesFlag(categoryNames) do
        send cnode, {:callback, :Game_getCategoriesFlag, categoryNames, self()}
        receive_response
    end
    def game_getCategoryFlag(categoryName) do
        send cnode, {:callback, :Game_getCategoryFlag, categoryName, self()}
        receive_response
    end
    def game_getCategoryName(categoryFlag, name, name_sizeMax \\ 100) do
        send cnode, {:callback, :Game_getCategoryName, categoryFlag, name, name_sizeMax, self()}
        receive_response
    end
    def game_getCurrentFrame() do
        send cnode, {:callback, :Game_getCurrentFrame, self()}
        receive_response
    end
    def game_getGameRulesParamById(rulesParamId) do
        send cnode, {:callback, :Game_getGameRulesParamById, rulesParamId, self()}
        receive_response
    end
    def game_getGameRulesParamByName(rulesParamName) do
        send cnode, {:callback, :Game_getGameRulesParamByName, rulesParamName, self()}
        receive_response
    end
    def game_getGameRulesParams(paramIds_sizeMax \\ 100) do
        send cnode, {:callback, :Game_getGameRulesParams, paramIds_sizeMax, self()}
        receive_response
    end
    def game_getMode() do
        send cnode, {:callback, :Game_getMode, self()}
        receive_response
    end
    def game_getMyAllyTeam() do
        send cnode, {:callback, :Game_getMyAllyTeam, self()}
        receive_response
    end
    def game_getMyTeam() do
        send cnode, {:callback, :Game_getMyTeam, self()}
        receive_response
    end
    def game_getPlayerTeam(playerId) do
        send cnode, {:callback, :Game_getPlayerTeam, playerId, self()}
        receive_response
    end
    def game_getSetupScript() do
        send cnode, {:callback, :Game_getSetupScript, self()}
        receive_response
    end
    def game_getSpeedFactor() do
        send cnode, {:callback, :Game_getSpeedFactor, self()}
        receive_response
    end
    def game_getTeamAllyTeam(otherTeamId) do
        send cnode, {:callback, :Game_getTeamAllyTeam, otherTeamId, self()}
        receive_response
    end
    def game_getTeamColor(otherTeamId, return_colorS3_out) do
        send cnode, {:callback, :Game_getTeamColor, otherTeamId, return_colorS3_out, self()}
        receive_response
    end
    def game_getTeamIncomeMultiplier(otherTeamId) do
        send cnode, {:callback, :Game_getTeamIncomeMultiplier, otherTeamId, self()}
        receive_response
    end
    def game_getTeamResourceCurrent(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourceCurrent, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceExcess(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourceExcess, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceIncome(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourceIncome, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourcePull(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourcePull, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceReceived(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourceReceived, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceSent(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourceSent, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceShare(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourceShare, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceStorage(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourceStorage, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamResourceUsage(otherTeamId, resourceId) do
        send cnode, {:callback, :Game_getTeamResourceUsage, otherTeamId, resourceId, self()}
        receive_response
    end
    def game_getTeamSide(otherTeamId) do
        send cnode, {:callback, :Game_getTeamSide, otherTeamId, self()}
        receive_response
    end
    def game_getTeams() do
        send cnode, {:callback, :Game_getTeams, self()}
        receive_response
    end
    def game_isAllied(firstAllyTeamId, secondAllyTeamId) do
        send cnode, {:callback, :Game_isAllied, firstAllyTeamId, secondAllyTeamId, self()}
        receive_response
    end
    def game_isDebugModeEnabled() do
        send cnode, {:callback, :Game_isDebugModeEnabled, self()}
        receive_response
    end
    def game_isExceptionHandlingEnabled() do
        send cnode, {:callback, :Game_isExceptionHandlingEnabled, self()}
        receive_response
    end
    def game_isPaused() do
        send cnode, {:callback, :Game_isPaused, self()}
        receive_response
    end
    def group_OrderPreview_getId(groupId) do
        send cnode, {:callback, :Group_OrderPreview_getId, groupId, self()}
        receive_response
    end
    def group_OrderPreview_getOptions(groupId) do
        send cnode, {:callback, :Group_OrderPreview_getOptions, groupId, self()}
        receive_response
    end
    def group_OrderPreview_getParams(groupId, params, params_sizeMax \\ 100) do
        send cnode, {:callback, :Group_OrderPreview_getParams, groupId, params, params_sizeMax, self()}
        receive_response
    end
    def group_OrderPreview_getTag(groupId) do
        send cnode, {:callback, :Group_OrderPreview_getTag, groupId, self()}
        receive_response
    end
    def group_OrderPreview_getTimeOut(groupId) do
        send cnode, {:callback, :Group_OrderPreview_getTimeOut, groupId, self()}
        receive_response
    end
    def group_SupportedCommand_getId(groupId, supportedCommandId) do
        send cnode, {:callback, :Group_SupportedCommand_getId, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_SupportedCommand_getName(groupId, supportedCommandId) do
        send cnode, {:callback, :Group_SupportedCommand_getName, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_SupportedCommand_getParams(groupId, supportedCommandId, params, params_sizeMax \\ 100) do
        send cnode, {:callback, :Group_SupportedCommand_getParams, groupId, supportedCommandId, params, params_sizeMax, self()}
        receive_response
    end
    def group_SupportedCommand_getToolTip(groupId, supportedCommandId) do
        send cnode, {:callback, :Group_SupportedCommand_getToolTip, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_SupportedCommand_isDisabled(groupId, supportedCommandId) do
        send cnode, {:callback, :Group_SupportedCommand_isDisabled, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_SupportedCommand_isShowUnique(groupId, supportedCommandId) do
        send cnode, {:callback, :Group_SupportedCommand_isShowUnique, groupId, supportedCommandId, self()}
        receive_response
    end
    def group_getSupportedCommands(groupId) do
        send cnode, {:callback, :Group_getSupportedCommands, groupId, self()}
        receive_response
    end
    def group_isSelected(groupId) do
        send cnode, {:callback, :Group_isSelected, groupId, self()}
        receive_response
    end
    def gui_Camera_getDirection() do
        send cnode, {:callback, :Gui_Camera_getDirection, self()}
        receive_response
    end
    def gui_Camera_getPosition() do
        send cnode, {:callback, :Gui_Camera_getPosition, self()}
        receive_response
    end
    def gui_getScreenX() do
        send cnode, {:callback, :Gui_getScreenX, self()}
        receive_response
    end
    def gui_getScreenY() do
        send cnode, {:callback, :Gui_getScreenY, self()}
        receive_response
    end
    def gui_getViewRange() do
        send cnode, {:callback, :Gui_getViewRange, self()}
        receive_response
    end
    def log_exception(msg, severety, die) do
        send cnode, {:callback, :Log_exception, msg, severety, die, self()}
        receive_response
    end
    def log_log(msg) do
        send cnode, {:callback, :Log_log, msg, self()}
        receive_response
    end
    def map_Line_getColor(lineId, return_colorS3_out) do
        send cnode, {:callback, :Map_Line_getColor, lineId, return_colorS3_out, self()}
        receive_response
    end
    def map_Line_getFirstPosition(lineId) do
        send cnode, {:callback, :Map_Line_getFirstPosition, lineId, self()}
        receive_response
    end
    def map_Line_getSecondPosition(lineId) do
        send cnode, {:callback, :Map_Line_getSecondPosition, lineId, self()}
        receive_response
    end
    def map_Point_getColor(pointId, return_colorS3_out) do
        send cnode, {:callback, :Map_Point_getColor, pointId, return_colorS3_out, self()}
        receive_response
    end
    def map_Point_getLabel(pointId) do
        send cnode, {:callback, :Map_Point_getLabel, pointId, self()}
        receive_response
    end
    def map_Point_getPosition(pointId) do
        send cnode, {:callback, :Map_Point_getPosition, pointId, self()}
        receive_response
    end
    def map_findClosestBuildSite(unitDefId, pos_posF3, searchRadius, minDist, facing) do
        send cnode, {:callback, :Map_findClosestBuildSite, unitDefId, pos_posF3, searchRadius, minDist, facing, self()}
        receive_response
    end
    def map_getChecksum() do
        send cnode, {:callback, :Map_getChecksum, self()}
        receive_response
    end
    def map_getCornersHeightMap(cornerHeights, cornerHeights_sizeMax \\ 100) do
        send cnode, {:callback, :Map_getCornersHeightMap, cornerHeights, cornerHeights_sizeMax, self()}
        receive_response
    end
    def map_getCurWind() do
        send cnode, {:callback, :Map_getCurWind, self()}
        receive_response
    end
    def map_getElevationAt(x, z) do
        send cnode, {:callback, :Map_getElevationAt, x, z, self()}
        receive_response
    end
    def map_getExtractorRadius(resourceId) do
        send cnode, {:callback, :Map_getExtractorRadius, resourceId, self()}
        receive_response
    end
    def map_getGravity() do
        send cnode, {:callback, :Map_getGravity, self()}
        receive_response
    end
    def map_getHash() do
        send cnode, {:callback, :Map_getHash, self()}
        receive_response
    end
    def map_getHeight() do
        send cnode, {:callback, :Map_getHeight, self()}
        receive_response
    end
    def map_getHeightMap(heights, heights_sizeMax \\ 100) do
        send cnode, {:callback, :Map_getHeightMap, heights, heights_sizeMax, self()}
        receive_response
    end
    def map_getHumanName() do
        send cnode, {:callback, :Map_getHumanName, self()}
        receive_response
    end
    def map_getJammerMap(jammerValues, jammerValues_sizeMax \\ 100) do
        send cnode, {:callback, :Map_getJammerMap, jammerValues, jammerValues_sizeMax, self()}
        receive_response
    end
    def map_getLines(includeAllies) do
        send cnode, {:callback, :Map_getLines, includeAllies, self()}
        receive_response
    end
    def map_getLosMap(losValues, losValues_sizeMax \\ 100) do
        send cnode, {:callback, :Map_getLosMap, losValues, losValues_sizeMax, self()}
        receive_response
    end
    def map_getMaxHeight() do
        send cnode, {:callback, :Map_getMaxHeight, self()}
        receive_response
    end
    def map_getMaxResource(resourceId) do
        send cnode, {:callback, :Map_getMaxResource, resourceId, self()}
        receive_response
    end
    def map_getMaxWind() do
        send cnode, {:callback, :Map_getMaxWind, self()}
        receive_response
    end
    def map_getMinHeight() do
        send cnode, {:callback, :Map_getMinHeight, self()}
        receive_response
    end
    def map_getMinWind() do
        send cnode, {:callback, :Map_getMinWind, self()}
        receive_response
    end
    def map_getMousePos() do
        send cnode, {:callback, :Map_getMousePos, self()}
        receive_response
    end
    def map_getName() do
        send cnode, {:callback, :Map_getName, self()}
        receive_response
    end
    def map_getPoints(includeAllies) do
        send cnode, {:callback, :Map_getPoints, includeAllies, self()}
        receive_response
    end
    def map_getRadarMap(radarValues, radarValues_sizeMax \\ 100) do
        send cnode, {:callback, :Map_getRadarMap, radarValues, radarValues_sizeMax, self()}
        receive_response
    end
    def map_getResourceMapRaw(resourceId, resources, resources_sizeMax \\ 100) do
        send cnode, {:callback, :Map_getResourceMapRaw, resourceId, resources, resources_sizeMax, self()}
        receive_response
    end
    def map_getResourceMapSpotsAverageIncome(resourceId) do
        send cnode, {:callback, :Map_getResourceMapSpotsAverageIncome, resourceId, self()}
        receive_response
    end
    def map_getResourceMapSpotsNearest(resourceId, pos_posF3) do
        send cnode, {:callback, :Map_getResourceMapSpotsNearest, resourceId, pos_posF3, self()}
        receive_response
    end
    def map_getResourceMapSpotsPositions(resourceId, spots_AposF3, spots_AposF3_sizeMax \\ 100) do
        send cnode, {:callback, :Map_getResourceMapSpotsPositions, resourceId, spots_AposF3, spots_AposF3_sizeMax, self()}
        receive_response
    end
    def map_getSlopeMap(slopes, slopes_sizeMax \\ 100) do
        send cnode, {:callback, :Map_getSlopeMap, slopes, slopes_sizeMax, self()}
        receive_response
    end
    def map_getStartPos() do
        send cnode, {:callback, :Map_getStartPos, self()}
        receive_response
    end
    def map_getTidalStrength() do
        send cnode, {:callback, :Map_getTidalStrength, self()}
        receive_response
    end
    def map_getWaterDamage() do
        send cnode, {:callback, :Map_getWaterDamage, self()}
        receive_response
    end
    def map_getWidth() do
        send cnode, {:callback, :Map_getWidth, self()}
        receive_response
    end
    def map_isPosInCamera(pos_posF3, radius) do
        send cnode, {:callback, :Map_isPosInCamera, pos_posF3, radius, self()}
        receive_response
    end
    def map_isPossibleToBuildAt(unitDefId, pos_posF3, facing) do
        send cnode, {:callback, :Map_isPossibleToBuildAt, unitDefId, pos_posF3, facing, self()}
        receive_response
    end
    def mod_getAirLosMul() do
        send cnode, {:callback, :Mod_getAirLosMul, self()}
        receive_response
    end
    def mod_getAirMipLevel() do
        send cnode, {:callback, :Mod_getAirMipLevel, self()}
        receive_response
    end
    def mod_getAllowTeamColors() do
        send cnode, {:callback, :Mod_getAllowTeamColors, self()}
        receive_response
    end
    def mod_getCaptureEnergyCostFactor() do
        send cnode, {:callback, :Mod_getCaptureEnergyCostFactor, self()}
        receive_response
    end
    def mod_getConstructionDecay() do
        send cnode, {:callback, :Mod_getConstructionDecay, self()}
        receive_response
    end
    def mod_getConstructionDecaySpeed() do
        send cnode, {:callback, :Mod_getConstructionDecaySpeed, self()}
        receive_response
    end
    def mod_getConstructionDecayTime() do
        send cnode, {:callback, :Mod_getConstructionDecayTime, self()}
        receive_response
    end
    def mod_getDescription() do
        send cnode, {:callback, :Mod_getDescription, self()}
        receive_response
    end
    def mod_getFileName() do
        send cnode, {:callback, :Mod_getFileName, self()}
        receive_response
    end
    def mod_getFireAtCrashing() do
        send cnode, {:callback, :Mod_getFireAtCrashing, self()}
        receive_response
    end
    def mod_getFireAtKilled() do
        send cnode, {:callback, :Mod_getFireAtKilled, self()}
        receive_response
    end
    def mod_getFlankingBonusModeDefault() do
        send cnode, {:callback, :Mod_getFlankingBonusModeDefault, self()}
        receive_response
    end
    def mod_getHash() do
        send cnode, {:callback, :Mod_getHash, self()}
        receive_response
    end
    def mod_getHumanName() do
        send cnode, {:callback, :Mod_getHumanName, self()}
        receive_response
    end
    def mod_getLosMipLevel() do
        send cnode, {:callback, :Mod_getLosMipLevel, self()}
        receive_response
    end
    def mod_getLosMul() do
        send cnode, {:callback, :Mod_getLosMul, self()}
        receive_response
    end
    def mod_getMultiReclaim() do
        send cnode, {:callback, :Mod_getMultiReclaim, self()}
        receive_response
    end
    def mod_getMutator() do
        send cnode, {:callback, :Mod_getMutator, self()}
        receive_response
    end
    def mod_getReclaimAllowAllies() do
        send cnode, {:callback, :Mod_getReclaimAllowAllies, self()}
        receive_response
    end
    def mod_getReclaimAllowEnemies() do
        send cnode, {:callback, :Mod_getReclaimAllowEnemies, self()}
        receive_response
    end
    def mod_getReclaimFeatureEnergyCostFactor() do
        send cnode, {:callback, :Mod_getReclaimFeatureEnergyCostFactor, self()}
        receive_response
    end
    def mod_getReclaimMethod() do
        send cnode, {:callback, :Mod_getReclaimMethod, self()}
        receive_response
    end
    def mod_getReclaimUnitEfficiency() do
        send cnode, {:callback, :Mod_getReclaimUnitEfficiency, self()}
        receive_response
    end
    def mod_getReclaimUnitEnergyCostFactor() do
        send cnode, {:callback, :Mod_getReclaimUnitEnergyCostFactor, self()}
        receive_response
    end
    def mod_getReclaimUnitMethod() do
        send cnode, {:callback, :Mod_getReclaimUnitMethod, self()}
        receive_response
    end
    def mod_getRepairEnergyCostFactor() do
        send cnode, {:callback, :Mod_getRepairEnergyCostFactor, self()}
        receive_response
    end
    def mod_getRequireSonarUnderWater() do
        send cnode, {:callback, :Mod_getRequireSonarUnderWater, self()}
        receive_response
    end
    def mod_getResurrectEnergyCostFactor() do
        send cnode, {:callback, :Mod_getResurrectEnergyCostFactor, self()}
        receive_response
    end
    def mod_getShortName() do
        send cnode, {:callback, :Mod_getShortName, self()}
        receive_response
    end
    def mod_getTransportAir() do
        send cnode, {:callback, :Mod_getTransportAir, self()}
        receive_response
    end
    def mod_getTransportGround() do
        send cnode, {:callback, :Mod_getTransportGround, self()}
        receive_response
    end
    def mod_getTransportHover() do
        send cnode, {:callback, :Mod_getTransportHover, self()}
        receive_response
    end
    def mod_getTransportShip() do
        send cnode, {:callback, :Mod_getTransportShip, self()}
        receive_response
    end
    def mod_getVersion() do
        send cnode, {:callback, :Mod_getVersion, self()}
        receive_response
    end
    def resource_getName(resourceId) do
        send cnode, {:callback, :Resource_getName, resourceId, self()}
        receive_response
    end
    def resource_getOptimum(resourceId) do
        send cnode, {:callback, :Resource_getOptimum, resourceId, self()}
        receive_response
    end
    def skirmishAI_Info_getDescription(infoIndex) do
        send cnode, {:callback, :SkirmishAI_Info_getDescription, infoIndex, self()}
        receive_response
    end
    def skirmishAI_Info_getKey(infoIndex) do
        send cnode, {:callback, :SkirmishAI_Info_getKey, infoIndex, self()}
        receive_response
    end
    def skirmishAI_Info_getSize() do
        send cnode, {:callback, :SkirmishAI_Info_getSize, self()}
        receive_response
    end
    def skirmishAI_Info_getValue(infoIndex) do
        send cnode, {:callback, :SkirmishAI_Info_getValue, infoIndex, self()}
        receive_response
    end
    def skirmishAI_Info_getValueByKey(key) do
        send cnode, {:callback, :SkirmishAI_Info_getValueByKey, key, self()}
        receive_response
    end
    def skirmishAI_OptionValues_getKey(optionIndex) do
        send cnode, {:callback, :SkirmishAI_OptionValues_getKey, optionIndex, self()}
        receive_response
    end
    def skirmishAI_OptionValues_getSize() do
        send cnode, {:callback, :SkirmishAI_OptionValues_getSize, self()}
        receive_response
    end
    def skirmishAI_OptionValues_getValue(optionIndex) do
        send cnode, {:callback, :SkirmishAI_OptionValues_getValue, optionIndex, self()}
        receive_response
    end
    def skirmishAI_OptionValues_getValueByKey(key) do
        send cnode, {:callback, :SkirmishAI_OptionValues_getValueByKey, key, self()}
        receive_response
    end
    def skirmishAI_getTeamId() do
        send cnode, {:callback, :SkirmishAI_getTeamId, self()}
        receive_response
    end
    def skirmishAIs_getMax() do
        send cnode, {:callback, :SkirmishAIs_getMax, self()}
        receive_response
    end
    def skirmishAIs_getSize() do
        send cnode, {:callback, :SkirmishAIs_getSize, self()}
        receive_response
    end
    def team_TeamRulesParam_getName(teamId, teamRulesParamId) do
        send cnode, {:callback, :Team_TeamRulesParam_getName, teamId, teamRulesParamId, self()}
        receive_response
    end
    def team_TeamRulesParam_getValueFloat(teamId, teamRulesParamId) do
        send cnode, {:callback, :Team_TeamRulesParam_getValueFloat, teamId, teamRulesParamId, self()}
        receive_response
    end
    def team_TeamRulesParam_getValueString(teamId, teamRulesParamId) do
        send cnode, {:callback, :Team_TeamRulesParam_getValueString, teamId, teamRulesParamId, self()}
        receive_response
    end
    def team_getTeamRulesParamById(teamId, rulesParamId) do
        send cnode, {:callback, :Team_getTeamRulesParamById, teamId, rulesParamId, self()}
        receive_response
    end
    def team_getTeamRulesParamByName(teamId, rulesParamName) do
        send cnode, {:callback, :Team_getTeamRulesParamByName, teamId, rulesParamName, self()}
        receive_response
    end
    def team_getTeamRulesParams(teamId, paramIds_sizeMax \\ 100) do
        send cnode, {:callback, :Team_getTeamRulesParams, teamId, paramIds_sizeMax, self()}
        receive_response
    end
    def team_hasAIController(teamId) do
        send cnode, {:callback, :Team_hasAIController, teamId, self()}
        receive_response
    end
    def teams_getSize() do
        send cnode, {:callback, :Teams_getSize, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getDir(unitDefId) do
        send cnode, {:callback, :UnitDef_FlankingBonus_getDir, unitDefId, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getMax(unitDefId) do
        send cnode, {:callback, :UnitDef_FlankingBonus_getMax, unitDefId, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getMin(unitDefId) do
        send cnode, {:callback, :UnitDef_FlankingBonus_getMin, unitDefId, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getMobilityAdd(unitDefId) do
        send cnode, {:callback, :UnitDef_FlankingBonus_getMobilityAdd, unitDefId, self()}
        receive_response
    end
    def unitDef_FlankingBonus_getMode(unitDefId) do
        send cnode, {:callback, :UnitDef_FlankingBonus_getMode, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getCrushStrength(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getCrushStrength, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getDepth(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getDepth, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getDepthMod(unitDefId, height) do
        send cnode, {:callback, :UnitDef_MoveData_getDepthMod, unitDefId, height, self()}
        receive_response
    end
    def unitDef_MoveData_getFollowGround(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getFollowGround, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxAcceleration(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getMaxAcceleration, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxBreaking(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getMaxBreaking, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxSlope(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getMaxSlope, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getMaxSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMaxTurnRate(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getMaxTurnRate, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getMoveType(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getMoveType, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getName(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getName, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getPathType(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getPathType, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getSlopeMod(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getSlopeMod, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getSpeedModClass(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getSpeedModClass, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getTerrainClass(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getTerrainClass, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getXSize(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getXSize, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_getZSize(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_getZSize, unitDefId, self()}
        receive_response
    end
    def unitDef_MoveData_isSubMarine(unitDefId) do
        send cnode, {:callback, :UnitDef_MoveData_isSubMarine, unitDefId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getBadTargetCategory(unitDefId, weaponMountId) do
        send cnode, {:callback, :UnitDef_WeaponMount_getBadTargetCategory, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getFuelUsage(unitDefId, weaponMountId) do
        send cnode, {:callback, :UnitDef_WeaponMount_getFuelUsage, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getMainDir(unitDefId, weaponMountId) do
        send cnode, {:callback, :UnitDef_WeaponMount_getMainDir, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getMaxAngleDif(unitDefId, weaponMountId) do
        send cnode, {:callback, :UnitDef_WeaponMount_getMaxAngleDif, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getName(unitDefId, weaponMountId) do
        send cnode, {:callback, :UnitDef_WeaponMount_getName, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getOnlyTargetCategory(unitDefId, weaponMountId) do
        send cnode, {:callback, :UnitDef_WeaponMount_getOnlyTargetCategory, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getSlavedTo(unitDefId, weaponMountId) do
        send cnode, {:callback, :UnitDef_WeaponMount_getSlavedTo, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_WeaponMount_getWeaponDef(unitDefId, weaponMountId) do
        send cnode, {:callback, :UnitDef_WeaponMount_getWeaponDef, unitDefId, weaponMountId, self()}
        receive_response
    end
    def unitDef_canManualFire(unitDefId) do
        send cnode, {:callback, :UnitDef_canManualFire, unitDefId, self()}
        receive_response
    end
    def unitDef_getAiHint(unitDefId) do
        send cnode, {:callback, :UnitDef_getAiHint, unitDefId, self()}
        receive_response
    end
    def unitDef_getAirLosRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getAirLosRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getArmorType(unitDefId) do
        send cnode, {:callback, :UnitDef_getArmorType, unitDefId, self()}
        receive_response
    end
    def unitDef_getArmoredMultiple(unitDefId) do
        send cnode, {:callback, :UnitDef_getArmoredMultiple, unitDefId, self()}
        receive_response
    end
    def unitDef_getAutoHeal(unitDefId) do
        send cnode, {:callback, :UnitDef_getAutoHeal, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildAngle(unitDefId) do
        send cnode, {:callback, :UnitDef_getBuildAngle, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildDistance(unitDefId) do
        send cnode, {:callback, :UnitDef_getBuildDistance, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildOptions(unitDefId, unitDefIds_sizeMax \\ 100) do
        send cnode, {:callback, :UnitDef_getBuildOptions, unitDefId, unitDefIds_sizeMax, self()}
        receive_response
    end
    def unitDef_getBuildSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getBuildSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildTime(unitDefId) do
        send cnode, {:callback, :UnitDef_getBuildTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildingDecalDecaySpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getBuildingDecalDecaySpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildingDecalSizeX(unitDefId) do
        send cnode, {:callback, :UnitDef_getBuildingDecalSizeX, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildingDecalSizeY(unitDefId) do
        send cnode, {:callback, :UnitDef_getBuildingDecalSizeY, unitDefId, self()}
        receive_response
    end
    def unitDef_getBuildingDecalType(unitDefId) do
        send cnode, {:callback, :UnitDef_getBuildingDecalType, unitDefId, self()}
        receive_response
    end
    def unitDef_getCaptureSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getCaptureSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getCategory(unitDefId) do
        send cnode, {:callback, :UnitDef_getCategory, unitDefId, self()}
        receive_response
    end
    def unitDef_getCategoryString(unitDefId) do
        send cnode, {:callback, :UnitDef_getCategoryString, unitDefId, self()}
        receive_response
    end
    def unitDef_getCloakCost(unitDefId) do
        send cnode, {:callback, :UnitDef_getCloakCost, unitDefId, self()}
        receive_response
    end
    def unitDef_getCloakCostMoving(unitDefId) do
        send cnode, {:callback, :UnitDef_getCloakCostMoving, unitDefId, self()}
        receive_response
    end
    def unitDef_getCobId(unitDefId) do
        send cnode, {:callback, :UnitDef_getCobId, unitDefId, self()}
        receive_response
    end
    def unitDef_getCost(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getCost, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getCustomParams(unitDefId, keys, values) do
        send cnode, {:callback, :UnitDef_getCustomParams, unitDefId, keys, values, self()}
        receive_response
    end
    def unitDef_getDeathExplosion(unitDefId) do
        send cnode, {:callback, :UnitDef_getDeathExplosion, unitDefId, self()}
        receive_response
    end
    def unitDef_getDecloakDistance(unitDefId) do
        send cnode, {:callback, :UnitDef_getDecloakDistance, unitDefId, self()}
        receive_response
    end
    def unitDef_getDecoyDef(unitDefId) do
        send cnode, {:callback, :UnitDef_getDecoyDef, unitDefId, self()}
        receive_response
    end
    def unitDef_getDlHoverFactor(unitDefId) do
        send cnode, {:callback, :UnitDef_getDlHoverFactor, unitDefId, self()}
        receive_response
    end
    def unitDef_getDrag(unitDefId) do
        send cnode, {:callback, :UnitDef_getDrag, unitDefId, self()}
        receive_response
    end
    def unitDef_getExtractsResource(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getExtractsResource, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getFallSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getFallSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getFileName(unitDefId) do
        send cnode, {:callback, :UnitDef_getFileName, unitDefId, self()}
        receive_response
    end
    def unitDef_getFireState(unitDefId) do
        send cnode, {:callback, :UnitDef_getFireState, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareDelay(unitDefId) do
        send cnode, {:callback, :UnitDef_getFlareDelay, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareDropVector(unitDefId) do
        send cnode, {:callback, :UnitDef_getFlareDropVector, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareEfficiency(unitDefId) do
        send cnode, {:callback, :UnitDef_getFlareEfficiency, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareReloadTime(unitDefId) do
        send cnode, {:callback, :UnitDef_getFlareReloadTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareSalvoDelay(unitDefId) do
        send cnode, {:callback, :UnitDef_getFlareSalvoDelay, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareSalvoSize(unitDefId) do
        send cnode, {:callback, :UnitDef_getFlareSalvoSize, unitDefId, self()}
        receive_response
    end
    def unitDef_getFlareTime(unitDefId) do
        send cnode, {:callback, :UnitDef_getFlareTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getFrontToSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getFrontToSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getGaia(unitDefId) do
        send cnode, {:callback, :UnitDef_getGaia, unitDefId, self()}
        receive_response
    end
    def unitDef_getHealth(unitDefId) do
        send cnode, {:callback, :UnitDef_getHealth, unitDefId, self()}
        receive_response
    end
    def unitDef_getHeight(unitDefId) do
        send cnode, {:callback, :UnitDef_getHeight, unitDefId, self()}
        receive_response
    end
    def unitDef_getHighTrajectoryType(unitDefId) do
        send cnode, {:callback, :UnitDef_getHighTrajectoryType, unitDefId, self()}
        receive_response
    end
    def unitDef_getHumanName(unitDefId) do
        send cnode, {:callback, :UnitDef_getHumanName, unitDefId, self()}
        receive_response
    end
    def unitDef_getIdleAutoHeal(unitDefId) do
        send cnode, {:callback, :UnitDef_getIdleAutoHeal, unitDefId, self()}
        receive_response
    end
    def unitDef_getIdleTime(unitDefId) do
        send cnode, {:callback, :UnitDef_getIdleTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getJammerRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getJammerRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getKamikazeDist(unitDefId) do
        send cnode, {:callback, :UnitDef_getKamikazeDist, unitDefId, self()}
        receive_response
    end
    def unitDef_getLoadingRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getLoadingRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getLosHeight(unitDefId) do
        send cnode, {:callback, :UnitDef_getLosHeight, unitDefId, self()}
        receive_response
    end
    def unitDef_getLosRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getLosRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getMakesResource(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getMakesResource, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getMass(unitDefId) do
        send cnode, {:callback, :UnitDef_getMass, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxAcceleration(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxAcceleration, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxAileron(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxAileron, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxBank(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxBank, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxDeceleration(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxDeceleration, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxElevator(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxElevator, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxFuel(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxFuel, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxHeightDif(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxHeightDif, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxPitch(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxPitch, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxRepairSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxRepairSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxRudder(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxRudder, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxSlope(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxSlope, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxThisUnit(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxThisUnit, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxWaterDepth(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxWaterDepth, unitDefId, self()}
        receive_response
    end
    def unitDef_getMaxWeaponRange(unitDefId) do
        send cnode, {:callback, :UnitDef_getMaxWeaponRange, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinAirBasePower(unitDefId) do
        send cnode, {:callback, :UnitDef_getMinAirBasePower, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinCollisionSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getMinCollisionSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinTransportMass(unitDefId) do
        send cnode, {:callback, :UnitDef_getMinTransportMass, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinTransportSize(unitDefId) do
        send cnode, {:callback, :UnitDef_getMinTransportSize, unitDefId, self()}
        receive_response
    end
    def unitDef_getMinWaterDepth(unitDefId) do
        send cnode, {:callback, :UnitDef_getMinWaterDepth, unitDefId, self()}
        receive_response
    end
    def unitDef_getMoveState(unitDefId) do
        send cnode, {:callback, :UnitDef_getMoveState, unitDefId, self()}
        receive_response
    end
    def unitDef_getMyGravity(unitDefId) do
        send cnode, {:callback, :UnitDef_getMyGravity, unitDefId, self()}
        receive_response
    end
    def unitDef_getName(unitDefId) do
        send cnode, {:callback, :UnitDef_getName, unitDefId, self()}
        receive_response
    end
    def unitDef_getNoChaseCategory(unitDefId) do
        send cnode, {:callback, :UnitDef_getNoChaseCategory, unitDefId, self()}
        receive_response
    end
    def unitDef_getPower(unitDefId) do
        send cnode, {:callback, :UnitDef_getPower, unitDefId, self()}
        receive_response
    end
    def unitDef_getRadarRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getRadarRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getReclaimSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getReclaimSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getRefuelTime(unitDefId) do
        send cnode, {:callback, :UnitDef_getRefuelTime, unitDefId, self()}
        receive_response
    end
    def unitDef_getRepairSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getRepairSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getResourceExtractorRange(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getResourceExtractorRange, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getResourceMake(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getResourceMake, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getResurrectSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getResurrectSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getSeismicRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getSeismicRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getSeismicSignature(unitDefId) do
        send cnode, {:callback, :UnitDef_getSeismicSignature, unitDefId, self()}
        receive_response
    end
    def unitDef_getSelfDCountdown(unitDefId) do
        send cnode, {:callback, :UnitDef_getSelfDCountdown, unitDefId, self()}
        receive_response
    end
    def unitDef_getSelfDExplosion(unitDefId) do
        send cnode, {:callback, :UnitDef_getSelfDExplosion, unitDefId, self()}
        receive_response
    end
    def unitDef_getShieldDef(unitDefId) do
        send cnode, {:callback, :UnitDef_getShieldDef, unitDefId, self()}
        receive_response
    end
    def unitDef_getSlideTolerance(unitDefId) do
        send cnode, {:callback, :UnitDef_getSlideTolerance, unitDefId, self()}
        receive_response
    end
    def unitDef_getSonarJamRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getSonarJamRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getSonarRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getSonarRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getSpeedToFront(unitDefId) do
        send cnode, {:callback, :UnitDef_getSpeedToFront, unitDefId, self()}
        receive_response
    end
    def unitDef_getStockpileDef(unitDefId) do
        send cnode, {:callback, :UnitDef_getStockpileDef, unitDefId, self()}
        receive_response
    end
    def unitDef_getStorage(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getStorage, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getTechLevel(unitDefId) do
        send cnode, {:callback, :UnitDef_getTechLevel, unitDefId, self()}
        receive_response
    end
    def unitDef_getTerraformSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getTerraformSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getTidalResourceGenerator(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getTidalResourceGenerator, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getTooltip(unitDefId) do
        send cnode, {:callback, :UnitDef_getTooltip, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackOffset(unitDefId) do
        send cnode, {:callback, :UnitDef_getTrackOffset, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackStrength(unitDefId) do
        send cnode, {:callback, :UnitDef_getTrackStrength, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackStretch(unitDefId) do
        send cnode, {:callback, :UnitDef_getTrackStretch, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackType(unitDefId) do
        send cnode, {:callback, :UnitDef_getTrackType, unitDefId, self()}
        receive_response
    end
    def unitDef_getTrackWidth(unitDefId) do
        send cnode, {:callback, :UnitDef_getTrackWidth, unitDefId, self()}
        receive_response
    end
    def unitDef_getTransportCapacity(unitDefId) do
        send cnode, {:callback, :UnitDef_getTransportCapacity, unitDefId, self()}
        receive_response
    end
    def unitDef_getTransportMass(unitDefId) do
        send cnode, {:callback, :UnitDef_getTransportMass, unitDefId, self()}
        receive_response
    end
    def unitDef_getTransportSize(unitDefId) do
        send cnode, {:callback, :UnitDef_getTransportSize, unitDefId, self()}
        receive_response
    end
    def unitDef_getTransportUnloadMethod(unitDefId) do
        send cnode, {:callback, :UnitDef_getTransportUnloadMethod, unitDefId, self()}
        receive_response
    end
    def unitDef_getTurnInPlaceDistance(unitDefId) do
        send cnode, {:callback, :UnitDef_getTurnInPlaceDistance, unitDefId, self()}
        receive_response
    end
    def unitDef_getTurnInPlaceSpeedLimit(unitDefId) do
        send cnode, {:callback, :UnitDef_getTurnInPlaceSpeedLimit, unitDefId, self()}
        receive_response
    end
    def unitDef_getTurnRadius(unitDefId) do
        send cnode, {:callback, :UnitDef_getTurnRadius, unitDefId, self()}
        receive_response
    end
    def unitDef_getTurnRate(unitDefId) do
        send cnode, {:callback, :UnitDef_getTurnRate, unitDefId, self()}
        receive_response
    end
    def unitDef_getType(unitDefId) do
        send cnode, {:callback, :UnitDef_getType, unitDefId, self()}
        receive_response
    end
    def unitDef_getUnitFallSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getUnitFallSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getUnloadSpread(unitDefId) do
        send cnode, {:callback, :UnitDef_getUnloadSpread, unitDefId, self()}
        receive_response
    end
    def unitDef_getUpkeep(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getUpkeep, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getVerticalSpeed(unitDefId) do
        send cnode, {:callback, :UnitDef_getVerticalSpeed, unitDefId, self()}
        receive_response
    end
    def unitDef_getWantedHeight(unitDefId) do
        send cnode, {:callback, :UnitDef_getWantedHeight, unitDefId, self()}
        receive_response
    end
    def unitDef_getWaterline(unitDefId) do
        send cnode, {:callback, :UnitDef_getWaterline, unitDefId, self()}
        receive_response
    end
    def unitDef_getWeaponMounts(unitDefId) do
        send cnode, {:callback, :UnitDef_getWeaponMounts, unitDefId, self()}
        receive_response
    end
    def unitDef_getWindResourceGenerator(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_getWindResourceGenerator, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_getWingAngle(unitDefId) do
        send cnode, {:callback, :UnitDef_getWingAngle, unitDefId, self()}
        receive_response
    end
    def unitDef_getWingDrag(unitDefId) do
        send cnode, {:callback, :UnitDef_getWingDrag, unitDefId, self()}
        receive_response
    end
    def unitDef_getWreckName(unitDefId) do
        send cnode, {:callback, :UnitDef_getWreckName, unitDefId, self()}
        receive_response
    end
    def unitDef_getXSize(unitDefId) do
        send cnode, {:callback, :UnitDef_getXSize, unitDefId, self()}
        receive_response
    end
    def unitDef_getYardMap(unitDefId, facing, yardMap, yardMap_sizeMax \\ 100) do
        send cnode, {:callback, :UnitDef_getYardMap, unitDefId, facing, yardMap, yardMap_sizeMax, self()}
        receive_response
    end
    def unitDef_getZSize(unitDefId) do
        send cnode, {:callback, :UnitDef_getZSize, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToAssist(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToAssist, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToAttack(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToAttack, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToCapture(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToCapture, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToCloak(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToCloak, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToCrash(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToCrash, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToDropFlare(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToDropFlare, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToFight(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToFight, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToFireControl(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToFireControl, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToFly(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToFly, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToGuard(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToGuard, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToHover(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToHover, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToKamikaze(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToKamikaze, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToLoopbackAttack(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToLoopbackAttack, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToMove(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToMove, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToPatrol(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToPatrol, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToReclaim(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToReclaim, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToRepair(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToRepair, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToRepeat(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToRepeat, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToRestore(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToRestore, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToResurrect(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToResurrect, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToSelfD(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToSelfD, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToSelfRepair(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToSelfRepair, unitDefId, self()}
        receive_response
    end
    def unitDef_isAbleToSubmerge(unitDefId) do
        send cnode, {:callback, :UnitDef_isAbleToSubmerge, unitDefId, self()}
        receive_response
    end
    def unitDef_isActivateWhenBuilt(unitDefId) do
        send cnode, {:callback, :UnitDef_isActivateWhenBuilt, unitDefId, self()}
        receive_response
    end
    def unitDef_isAirBase(unitDefId) do
        send cnode, {:callback, :UnitDef_isAirBase, unitDefId, self()}
        receive_response
    end
    def unitDef_isAirStrafe(unitDefId) do
        send cnode, {:callback, :UnitDef_isAirStrafe, unitDefId, self()}
        receive_response
    end
    def unitDef_isAssistable(unitDefId) do
        send cnode, {:callback, :UnitDef_isAssistable, unitDefId, self()}
        receive_response
    end
    def unitDef_isBuildRange3D(unitDefId) do
        send cnode, {:callback, :UnitDef_isBuildRange3D, unitDefId, self()}
        receive_response
    end
    def unitDef_isBuilder(unitDefId) do
        send cnode, {:callback, :UnitDef_isBuilder, unitDefId, self()}
        receive_response
    end
    def unitDef_isCapturable(unitDefId) do
        send cnode, {:callback, :UnitDef_isCapturable, unitDefId, self()}
        receive_response
    end
    def unitDef_isCollide(unitDefId) do
        send cnode, {:callback, :UnitDef_isCollide, unitDefId, self()}
        receive_response
    end
    def unitDef_isCommander(unitDefId) do
        send cnode, {:callback, :UnitDef_isCommander, unitDefId, self()}
        receive_response
    end
    def unitDef_isDecloakOnFire(unitDefId) do
        send cnode, {:callback, :UnitDef_isDecloakOnFire, unitDefId, self()}
        receive_response
    end
    def unitDef_isDecloakSpherical(unitDefId) do
        send cnode, {:callback, :UnitDef_isDecloakSpherical, unitDefId, self()}
        receive_response
    end
    def unitDef_isDontLand(unitDefId) do
        send cnode, {:callback, :UnitDef_isDontLand, unitDefId, self()}
        receive_response
    end
    def unitDef_isFactoryHeadingTakeoff(unitDefId) do
        send cnode, {:callback, :UnitDef_isFactoryHeadingTakeoff, unitDefId, self()}
        receive_response
    end
    def unitDef_isFeature(unitDefId) do
        send cnode, {:callback, :UnitDef_isFeature, unitDefId, self()}
        receive_response
    end
    def unitDef_isFirePlatform(unitDefId) do
        send cnode, {:callback, :UnitDef_isFirePlatform, unitDefId, self()}
        receive_response
    end
    def unitDef_isFloater(unitDefId) do
        send cnode, {:callback, :UnitDef_isFloater, unitDefId, self()}
        receive_response
    end
    def unitDef_isFullHealthFactory(unitDefId) do
        send cnode, {:callback, :UnitDef_isFullHealthFactory, unitDefId, self()}
        receive_response
    end
    def unitDef_isHideDamage(unitDefId) do
        send cnode, {:callback, :UnitDef_isHideDamage, unitDefId, self()}
        receive_response
    end
    def unitDef_isHoldSteady(unitDefId) do
        send cnode, {:callback, :UnitDef_isHoldSteady, unitDefId, self()}
        receive_response
    end
    def unitDef_isHoverAttack(unitDefId) do
        send cnode, {:callback, :UnitDef_isHoverAttack, unitDefId, self()}
        receive_response
    end
    def unitDef_isLeaveTracks(unitDefId) do
        send cnode, {:callback, :UnitDef_isLeaveTracks, unitDefId, self()}
        receive_response
    end
    def unitDef_isLevelGround(unitDefId) do
        send cnode, {:callback, :UnitDef_isLevelGround, unitDefId, self()}
        receive_response
    end
    def unitDef_isMoveDataAvailable(unitDefId) do
        send cnode, {:callback, :UnitDef_isMoveDataAvailable, unitDefId, self()}
        receive_response
    end
    def unitDef_isNeedGeo(unitDefId) do
        send cnode, {:callback, :UnitDef_isNeedGeo, unitDefId, self()}
        receive_response
    end
    def unitDef_isNotTransportable(unitDefId) do
        send cnode, {:callback, :UnitDef_isNotTransportable, unitDefId, self()}
        receive_response
    end
    def unitDef_isOnOffable(unitDefId) do
        send cnode, {:callback, :UnitDef_isOnOffable, unitDefId, self()}
        receive_response
    end
    def unitDef_isPushResistant(unitDefId) do
        send cnode, {:callback, :UnitDef_isPushResistant, unitDefId, self()}
        receive_response
    end
    def unitDef_isReclaimable(unitDefId) do
        send cnode, {:callback, :UnitDef_isReclaimable, unitDefId, self()}
        receive_response
    end
    def unitDef_isReleaseHeld(unitDefId) do
        send cnode, {:callback, :UnitDef_isReleaseHeld, unitDefId, self()}
        receive_response
    end
    def unitDef_isShowPlayerName(unitDefId) do
        send cnode, {:callback, :UnitDef_isShowPlayerName, unitDefId, self()}
        receive_response
    end
    def unitDef_isSonarStealth(unitDefId) do
        send cnode, {:callback, :UnitDef_isSonarStealth, unitDefId, self()}
        receive_response
    end
    def unitDef_isSquareResourceExtractor(unitDefId, resourceId) do
        send cnode, {:callback, :UnitDef_isSquareResourceExtractor, unitDefId, resourceId, self()}
        receive_response
    end
    def unitDef_isStartCloaked(unitDefId) do
        send cnode, {:callback, :UnitDef_isStartCloaked, unitDefId, self()}
        receive_response
    end
    def unitDef_isStealth(unitDefId) do
        send cnode, {:callback, :UnitDef_isStealth, unitDefId, self()}
        receive_response
    end
    def unitDef_isStrafeToAttack(unitDefId) do
        send cnode, {:callback, :UnitDef_isStrafeToAttack, unitDefId, self()}
        receive_response
    end
    def unitDef_isTargetingFacility(unitDefId) do
        send cnode, {:callback, :UnitDef_isTargetingFacility, unitDefId, self()}
        receive_response
    end
    def unitDef_isTransportByEnemy(unitDefId) do
        send cnode, {:callback, :UnitDef_isTransportByEnemy, unitDefId, self()}
        receive_response
    end
    def unitDef_isTurnInPlace(unitDefId) do
        send cnode, {:callback, :UnitDef_isTurnInPlace, unitDefId, self()}
        receive_response
    end
    def unitDef_isUpright(unitDefId) do
        send cnode, {:callback, :UnitDef_isUpright, unitDefId, self()}
        receive_response
    end
    def unitDef_isUseBuildingGroundDecal(unitDefId) do
        send cnode, {:callback, :UnitDef_isUseBuildingGroundDecal, unitDefId, self()}
        receive_response
    end
    def unit_CurrentCommand_getId(unitId, commandId) do
        send cnode, {:callback, :Unit_CurrentCommand_getId, unitId, commandId, self()}
        receive_response
    end
    def unit_CurrentCommand_getOptions(unitId, commandId) do
        send cnode, {:callback, :Unit_CurrentCommand_getOptions, unitId, commandId, self()}
        receive_response
    end
    def unit_CurrentCommand_getParams(unitId, commandId, params, params_sizeMax \\ 100) do
        send cnode, {:callback, :Unit_CurrentCommand_getParams, unitId, commandId, params, params_sizeMax, self()}
        receive_response
    end
    def unit_CurrentCommand_getTag(unitId, commandId) do
        send cnode, {:callback, :Unit_CurrentCommand_getTag, unitId, commandId, self()}
        receive_response
    end
    def unit_CurrentCommand_getTimeOut(unitId, commandId) do
        send cnode, {:callback, :Unit_CurrentCommand_getTimeOut, unitId, commandId, self()}
        receive_response
    end
    def unit_CurrentCommand_getType(unitId) do
        send cnode, {:callback, :Unit_CurrentCommand_getType, unitId, self()}
        receive_response
    end
    def unit_SupportedCommand_getId(unitId, supportedCommandId) do
        send cnode, {:callback, :Unit_SupportedCommand_getId, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_SupportedCommand_getName(unitId, supportedCommandId) do
        send cnode, {:callback, :Unit_SupportedCommand_getName, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_SupportedCommand_getParams(unitId, supportedCommandId, params, params_sizeMax \\ 100) do
        send cnode, {:callback, :Unit_SupportedCommand_getParams, unitId, supportedCommandId, params, params_sizeMax, self()}
        receive_response
    end
    def unit_SupportedCommand_getToolTip(unitId, supportedCommandId) do
        send cnode, {:callback, :Unit_SupportedCommand_getToolTip, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_SupportedCommand_isDisabled(unitId, supportedCommandId) do
        send cnode, {:callback, :Unit_SupportedCommand_isDisabled, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_SupportedCommand_isShowUnique(unitId, supportedCommandId) do
        send cnode, {:callback, :Unit_SupportedCommand_isShowUnique, unitId, supportedCommandId, self()}
        receive_response
    end
    def unit_UnitRulesParam_getName(unitId, unitRulesParamId) do
        send cnode, {:callback, :Unit_UnitRulesParam_getName, unitId, unitRulesParamId, self()}
        receive_response
    end
    def unit_UnitRulesParam_getValueFloat(unitId, unitRulesParamId) do
        send cnode, {:callback, :Unit_UnitRulesParam_getValueFloat, unitId, unitRulesParamId, self()}
        receive_response
    end
    def unit_UnitRulesParam_getValueString(unitId, unitRulesParamId) do
        send cnode, {:callback, :Unit_UnitRulesParam_getValueString, unitId, unitRulesParamId, self()}
        receive_response
    end
    def unit_Weapon_getDef(unitId, weaponId) do
        send cnode, {:callback, :Unit_Weapon_getDef, unitId, weaponId, self()}
        receive_response
    end
    def unit_Weapon_getRange(unitId, weaponId) do
        send cnode, {:callback, :Unit_Weapon_getRange, unitId, weaponId, self()}
        receive_response
    end
    def unit_Weapon_getReloadFrame(unitId, weaponId) do
        send cnode, {:callback, :Unit_Weapon_getReloadFrame, unitId, weaponId, self()}
        receive_response
    end
    def unit_Weapon_getReloadTime(unitId, weaponId) do
        send cnode, {:callback, :Unit_Weapon_getReloadTime, unitId, weaponId, self()}
        receive_response
    end
    def unit_getAiHint(unitId) do
        send cnode, {:callback, :Unit_getAiHint, unitId, self()}
        receive_response
    end
    def unit_getAllyTeam(unitId) do
        send cnode, {:callback, :Unit_getAllyTeam, unitId, self()}
        receive_response
    end
    def unit_getBuildingFacing(unitId) do
        send cnode, {:callback, :Unit_getBuildingFacing, unitId, self()}
        receive_response
    end
    def unit_getCurrentCommands(unitId) do
        send cnode, {:callback, :Unit_getCurrentCommands, unitId, self()}
        receive_response
    end
    def unit_getCurrentFuel(unitId) do
        send cnode, {:callback, :Unit_getCurrentFuel, unitId, self()}
        receive_response
    end
    def unit_getDef(unitId) do
        send cnode, {:callback, :Unit_getDef, unitId, self()}
        receive_response
    end
    def unit_getExperience(unitId) do
        send cnode, {:callback, :Unit_getExperience, unitId, self()}
        receive_response
    end
    def unit_getGroup(unitId) do
        send cnode, {:callback, :Unit_getGroup, unitId, self()}
        receive_response
    end
    def unit_getHealth(unitId) do
        send cnode, {:callback, :Unit_getHealth, unitId, self()}
        receive_response
    end
    def unit_getLastUserOrderFrame(unitId) do
        send cnode, {:callback, :Unit_getLastUserOrderFrame, unitId, self()}
        receive_response
    end
    def unit_getLimit() do
        send cnode, {:callback, :Unit_getLimit, self()}
        receive_response
    end
    def unit_getMax() do
        send cnode, {:callback, :Unit_getMax, self()}
        receive_response
    end
    def unit_getMaxHealth(unitId) do
        send cnode, {:callback, :Unit_getMaxHealth, unitId, self()}
        receive_response
    end
    def unit_getMaxRange(unitId) do
        send cnode, {:callback, :Unit_getMaxRange, unitId, self()}
        receive_response
    end
    def unit_getMaxSpeed(unitId) do
        send cnode, {:callback, :Unit_getMaxSpeed, unitId, self()}
        receive_response
    end
    def unit_getPos(unitId) do
        send cnode, {:callback, :Unit_getPos, unitId, self()}
        receive_response
    end
    def unit_getPower(unitId) do
        send cnode, {:callback, :Unit_getPower, unitId, self()}
        receive_response
    end
    def unit_getResourceMake(unitId, resourceId) do
        send cnode, {:callback, :Unit_getResourceMake, unitId, resourceId, self()}
        receive_response
    end
    def unit_getResourceUse(unitId, resourceId) do
        send cnode, {:callback, :Unit_getResourceUse, unitId, resourceId, self()}
        receive_response
    end
    def unit_getSpeed(unitId) do
        send cnode, {:callback, :Unit_getSpeed, unitId, self()}
        receive_response
    end
    def unit_getStockpile(unitId) do
        send cnode, {:callback, :Unit_getStockpile, unitId, self()}
        receive_response
    end
    def unit_getStockpileQueued(unitId) do
        send cnode, {:callback, :Unit_getStockpileQueued, unitId, self()}
        receive_response
    end
    def unit_getSupportedCommands(unitId) do
        send cnode, {:callback, :Unit_getSupportedCommands, unitId, self()}
        receive_response
    end
    def unit_getTeam(unitId) do
        send cnode, {:callback, :Unit_getTeam, unitId, self()}
        receive_response
    end
    def unit_getUnitRulesParamById(unitId, rulesParamId) do
        send cnode, {:callback, :Unit_getUnitRulesParamById, unitId, rulesParamId, self()}
        receive_response
    end
    def unit_getUnitRulesParamByName(unitId, rulesParamName) do
        send cnode, {:callback, :Unit_getUnitRulesParamByName, unitId, rulesParamName, self()}
        receive_response
    end
    def unit_getUnitRulesParams(unitId, paramIds_sizeMax \\ 100) do
        send cnode, {:callback, :Unit_getUnitRulesParams, unitId, paramIds_sizeMax, self()}
        receive_response
    end
    def unit_getVel(unitId) do
        send cnode, {:callback, :Unit_getVel, unitId, self()}
        receive_response
    end
    def unit_getWeapon(unitId, weaponMountId) do
        send cnode, {:callback, :Unit_getWeapon, unitId, weaponMountId, self()}
        receive_response
    end
    def unit_getWeapons(unitId) do
        send cnode, {:callback, :Unit_getWeapons, unitId, self()}
        receive_response
    end
    def unit_isActivated(unitId) do
        send cnode, {:callback, :Unit_isActivated, unitId, self()}
        receive_response
    end
    def unit_isBeingBuilt(unitId) do
        send cnode, {:callback, :Unit_isBeingBuilt, unitId, self()}
        receive_response
    end
    def unit_isCloaked(unitId) do
        send cnode, {:callback, :Unit_isCloaked, unitId, self()}
        receive_response
    end
    def unit_isNeutral(unitId) do
        send cnode, {:callback, :Unit_isNeutral, unitId, self()}
        receive_response
    end
    def unit_isParalyzed(unitId) do
        send cnode, {:callback, :Unit_isParalyzed, unitId, self()}
        receive_response
    end
    def weaponDef_Damage_getCraterBoost(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Damage_getCraterBoost, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getCraterMult(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Damage_getCraterMult, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getImpulseBoost(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Damage_getImpulseBoost, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getImpulseFactor(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Damage_getImpulseFactor, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getParalyzeDamageTime(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Damage_getParalyzeDamageTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Damage_getTypes(weaponDefId, types, types_sizeMax \\ 100) do
        send cnode, {:callback, :WeaponDef_Damage_getTypes, weaponDefId, types, types_sizeMax, self()}
        receive_response
    end
    def weaponDef_Shield_getAlpha(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getAlpha, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getBadColor(weaponDefId, return_colorS3_out) do
        send cnode, {:callback, :WeaponDef_Shield_getBadColor, weaponDefId, return_colorS3_out, self()}
        receive_response
    end
    def weaponDef_Shield_getForce(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getForce, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getGoodColor(weaponDefId, return_colorS3_out) do
        send cnode, {:callback, :WeaponDef_Shield_getGoodColor, weaponDefId, return_colorS3_out, self()}
        receive_response
    end
    def weaponDef_Shield_getInterceptType(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getInterceptType, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getMaxSpeed(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getMaxSpeed, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getPower(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getPower, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getPowerRegen(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getPowerRegen, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getPowerRegenResource(weaponDefId, resourceId) do
        send cnode, {:callback, :WeaponDef_Shield_getPowerRegenResource, weaponDefId, resourceId, self()}
        receive_response
    end
    def weaponDef_Shield_getRadius(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getRadius, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getRechargeDelay(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getRechargeDelay, weaponDefId, self()}
        receive_response
    end
    def weaponDef_Shield_getResourceUse(weaponDefId, resourceId) do
        send cnode, {:callback, :WeaponDef_Shield_getResourceUse, weaponDefId, resourceId, self()}
        receive_response
    end
    def weaponDef_Shield_getStartingPower(weaponDefId) do
        send cnode, {:callback, :WeaponDef_Shield_getStartingPower, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getAccuracy(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getAccuracy, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getAreaOfEffect(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getAreaOfEffect, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getBeamTime(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getBeamTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getBounceRebound(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getBounceRebound, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getBounceSlip(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getBounceSlip, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCameraShake(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getCameraShake, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCegTag(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getCegTag, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCollisionFlags(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getCollisionFlags, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCollisionSize(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getCollisionSize, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCoreThickness(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getCoreThickness, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCost(weaponDefId, resourceId) do
        send cnode, {:callback, :WeaponDef_getCost, weaponDefId, resourceId, self()}
        receive_response
    end
    def weaponDef_getCoverageRange(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getCoverageRange, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getCustomParams(weaponDefId, keys, values) do
        send cnode, {:callback, :WeaponDef_getCustomParams, weaponDefId, keys, values, self()}
        receive_response
    end
    def weaponDef_getCylinderTargetting(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getCylinderTargetting, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDance(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getDance, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDescription(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getDescription, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDuration(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getDuration, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDynDamageExp(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getDynDamageExp, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDynDamageMin(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getDynDamageMin, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getDynDamageRange(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getDynDamageRange, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getEdgeEffectiveness(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getEdgeEffectiveness, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getExplosionSpeed(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getExplosionSpeed, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getFalloffRate(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getFalloffRate, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getFileName(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getFileName, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getFireStarter(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getFireStarter, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getFlightTime(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getFlightTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getGraphicsType(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getGraphicsType, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getHeightBoostFactor(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getHeightBoostFactor, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getHeightMod(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getHeightMod, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getHighTrajectory(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getHighTrajectory, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getIntensity(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getIntensity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getInterceptedByShieldType(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getInterceptedByShieldType, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getInterceptor(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getInterceptor, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getLaserFlareSize(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getLaserFlareSize, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getLeadBonus(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getLeadBonus, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getLeadLimit(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getLeadLimit, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getLodDistance(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getLodDistance, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMaxAngle(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getMaxAngle, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMaxVelocity(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getMaxVelocity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMinIntensity(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getMinIntensity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMovingAccuracy(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getMovingAccuracy, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getMyGravity(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getMyGravity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getName(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getName, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getNumBounce(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getNumBounce, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getNumDamageTypes() do
        send cnode, {:callback, :WeaponDef_getNumDamageTypes, self()}
        receive_response
    end
    def weaponDef_getOnlyTargetCategory(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getOnlyTargetCategory, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getPredictBoost(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getPredictBoost, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getProjectileSpeed(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getProjectileSpeed, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getProjectilesPerShot(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getProjectilesPerShot, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getProximityPriority(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getProximityPriority, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getRange(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getRange, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getReload(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getReload, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSalvoDelay(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getSalvoDelay, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSalvoSize(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getSalvoSize, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSize(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getSize, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSizeGrowth(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getSizeGrowth, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getSprayAngle(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getSprayAngle, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getStartVelocity(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getStartVelocity, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getStockpileTime(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getStockpileTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTargetBorder(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getTargetBorder, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTargetMoveError(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getTargetMoveError, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTargetable(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getTargetable, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getThickness(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getThickness, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTrajectoryHeight(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getTrajectoryHeight, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getTurnRate(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getTurnRate, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getType(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getType, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getUpTime(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getUpTime, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getVisibleShieldHitFrames(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getVisibleShieldHitFrames, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getWeaponAcceleration(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getWeaponAcceleration, weaponDefId, self()}
        receive_response
    end
    def weaponDef_getWobble(weaponDefId) do
        send cnode, {:callback, :WeaponDef_getWobble, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isAbleToAttackGround(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isAbleToAttackGround, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isAvoidFeature(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isAvoidFeature, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isAvoidFriendly(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isAvoidFriendly, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isAvoidNeutral(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isAvoidNeutral, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isBeamBurst(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isBeamBurst, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isDropped(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isDropped, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isDynDamageInverted(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isDynDamageInverted, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isExteriorShield(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isExteriorShield, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isFireSubmersed(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isFireSubmersed, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isFixedLauncher(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isFixedLauncher, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isGravityAffected(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isGravityAffected, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isGroundBounce(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isGroundBounce, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isImpactOnly(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isImpactOnly, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isLargeBeamLaser(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isLargeBeamLaser, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isManualFire(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isManualFire, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isNoAutoTarget(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isNoAutoTarget, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isNoExplode(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isNoExplode, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isNoSelfDamage(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isNoSelfDamage, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isOnlyForward(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isOnlyForward, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isParalyzer(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isParalyzer, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSelfExplode(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isSelfExplode, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isShield(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isShield, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isShieldRepulser(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isShieldRepulser, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSmartShield(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isSmartShield, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSoundTrigger(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isSoundTrigger, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isStockpileable(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isStockpileable, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSubMissile(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isSubMissile, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isSweepFire(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isSweepFire, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isTracks(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isTracks, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isTurret(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isTurret, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isVisibleShield(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isVisibleShield, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isVisibleShieldRepulse(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isVisibleShieldRepulse, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isWaterBounce(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isWaterBounce, weaponDefId, self()}
        receive_response
    end
    def weaponDef_isWaterWeapon(weaponDefId) do
        send cnode, {:callback, :WeaponDef_isWaterWeapon, weaponDefId, self()}
        receive_response
    end
    def getAllyTeams(teamIds_sizeMax \\ 100) do
        send cnode, {:callback, :getAllyTeams, teamIds_sizeMax, self()}
        receive_response
    end
    def getEnemyTeams(teamIds_sizeMax \\ 100) do
        send cnode, {:callback, :getEnemyTeams, teamIds_sizeMax, self()}
        receive_response
    end
    def getEnemyUnits(unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getEnemyUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getEnemyUnitsIn(pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getEnemyUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def getEnemyUnitsInRadarAndLos(unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getEnemyUnitsInRadarAndLos, unitIds_sizeMax, self()}
        receive_response
    end
    def getFeatureDefs(featureDefIds_sizeMax \\ 100) do
        send cnode, {:callback, :getFeatureDefs, featureDefIds_sizeMax, self()}
        receive_response
    end
    def getFeatures(featureIds_sizeMax \\ 100) do
        send cnode, {:callback, :getFeatures, featureIds_sizeMax, self()}
        receive_response
    end
    def getFeaturesIn(pos_posF3, radius, featureIds_sizeMax \\ 100) do
        send cnode, {:callback, :getFeaturesIn, pos_posF3, radius, featureIds_sizeMax, self()}
        receive_response
    end
    def getFriendlyUnits(unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getFriendlyUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getFriendlyUnitsIn(pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getFriendlyUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def getGroups(groupIds_sizeMax \\ 100) do
        send cnode, {:callback, :getGroups, groupIds_sizeMax, self()}
        receive_response
    end
    def getNeutralUnits(unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getNeutralUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getNeutralUnitsIn(pos_posF3, radius, unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getNeutralUnitsIn, pos_posF3, radius, unitIds_sizeMax, self()}
        receive_response
    end
    def getResourceByName(resourceName) do
        send cnode, {:callback, :getResourceByName, resourceName, self()}
        receive_response
    end
    def getResources() do
        send cnode, {:callback, :getResources, self()}
        receive_response
    end
    def getSelectedUnits(unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getSelectedUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getTeamUnits(unitIds_sizeMax \\ 100) do
        send cnode, {:callback, :getTeamUnits, unitIds_sizeMax, self()}
        receive_response
    end
    def getUnitDefByName(unitName) do
        send cnode, {:callback, :getUnitDefByName, unitName, self()}
        receive_response
    end
    def getUnitDefs(unitDefIds_sizeMax \\ 100) do
        send cnode, {:callback, :getUnitDefs, unitDefIds_sizeMax, self()}
        receive_response
    end
    def getWeaponDefByName(weaponDefName) do
        send cnode, {:callback, :getWeaponDefByName, weaponDefName, self()}
        receive_response
    end
    def getWeaponDefs() do
        send cnode, {:callback, :getWeaponDefs, self()}
        receive_response
    end

end
