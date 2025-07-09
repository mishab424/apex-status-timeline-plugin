prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>1000001
,p_default_application_id=>144
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ASSENTADEV'
);
end;
/
 
prompt APPLICATION 144 - sample_apps
--
-- Application Export:
--   Application:     144
--   Name:            sample_apps
--   Date and Time:   09:27 Wednesday July 9, 2025
--   Exported By:     MISHAB
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 78550658679798422
--   Manifest End
--   Version:         24.2.6
--   Instance ID:     7828741953581541
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/temp_plug
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(78550658679798422)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'TEMP_PLUG'
,p_display_name=>'Status Timeline'
,p_supported_component_types=>'REPORT'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#new horizontal.css',
'',
'<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">',
'<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">  '))
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">',
'<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">  ',
'',
'',
'<ul class="timeline">',
'    {if APEX$IS_LAZY_LOADING/}',
'        <li class="timeline-item #STATUS#">',
'        <div class="timeline-content">',
'            <div class="loader-placeholder">Loading...</div>',
'            {if REMARKS/}',
'            <div class="loader-placeholder"></div>',
'            {endif/}',
'        </div>',
'        </li>',
'  {else/}',
'        <div class="timeline">',
'            <div class="timeline-item">',
'                <div class="timeline-icon #ICON_BG#" style="background:#ICON_BG#;"><i class="#ICON#"></i></div>',
'                <div class="timeline-content">',
'                <div class="timeline-date #BG_COLOUR#" style="background:#BG_COLOUR#;">#UPDATED_ON# <BR> by #UPDATED_BY#</div>',
'                <div class="timeline-details">',
'                    <h3>#STAGE_NAME#</h3>',
'                    <p>#REMARKS#</p>',
'                </div>',
'            </div>',
'        </div>',
'        ',
'  {endif/}',
'</ul>  ',
''))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>#APEX$ROWS#</ul>',
''))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li #APEX$ROW_IDENTIFICATION#>#APEX$PARTIAL#</li>',
''))
,p_report_placeholder_count=>3
,p_substitute_attributes=>true
,p_version_scn=>39535344921196
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(78557893819870103)
,p_plugin_id=>wwv_flow_imp.id(78550658679798422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'STATUS'
,p_prompt=>'Status'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(78558496579871767)
,p_plugin_id=>wwv_flow_imp.id(78550658679798422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_static_id=>'REMARKS'
,p_prompt=>'Remarks'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(78559023054874211)
,p_plugin_id=>wwv_flow_imp.id(78550658679798422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_static_id=>'STAGE_NAME'
,p_prompt=>'Stage Name'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(78559669608876273)
,p_plugin_id=>wwv_flow_imp.id(78550658679798422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_static_id=>'UPDATED_ON'
,p_prompt=>'Updated On'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'DATE'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(78560211663877840)
,p_plugin_id=>wwv_flow_imp.id(78550658679798422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_static_id=>'UPDATED_BY'
,p_prompt=>'Updated By'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(78570892077103157)
,p_plugin_id=>wwv_flow_imp.id(78550658679798422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_static_id=>'ICON'
,p_prompt=>'Icon'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_column_data_types=>'VARCHAR2:CLOB'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(78619215483069919)
,p_plugin_id=>wwv_flow_imp.id(78550658679798422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_static_id=>'ICON_BG'
,p_prompt=>'Icon Bg'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(78619821373070738)
,p_plugin_id=>wwv_flow_imp.id(78550658679798422)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_static_id=>'BG_COLOUR'
,p_prompt=>'Bg Colour'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
