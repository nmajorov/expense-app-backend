--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS fkdc4897cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS fkdc34197cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS fk_user_group_user;
ALTER TABLE IF EXISTS ONLY public.user_federation_config DROP CONSTRAINT IF EXISTS fk_t13hpu1j94r2ebpekr39x5eu5;
ALTER TABLE IF EXISTS ONLY public.realm_supported_locales DROP CONSTRAINT IF EXISTS fk_supported_locales_realm;
ALTER TABLE IF EXISTS ONLY public.role_attribute DROP CONSTRAINT IF EXISTS fk_role_attribute_id;
ALTER TABLE IF EXISTS ONLY public.resource_uris DROP CONSTRAINT IF EXISTS fk_resource_server_uris;
ALTER TABLE IF EXISTS ONLY public.required_action_provider DROP CONSTRAINT IF EXISTS fk_req_act_realm;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS fk_realm_cli_scope;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS fk_r_def_cli_scope_scope;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS fk_r_def_cli_scope_realm;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper_config DROP CONSTRAINT IF EXISTS fk_pmconfig;
ALTER TABLE IF EXISTS ONLY public.credential DROP CONSTRAINT IF EXISTS fk_pfyr0glasqyl0dei3kl69r6v0;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS fk_pcm_realm;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS fk_p56ctinxxb9gsk57fo49f9tac;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS fk_p3rh9grku11kqfrs4fltt7rnq;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS fk_ouse064plmlr732lxjcn1q5f1;
ALTER TABLE IF EXISTS ONLY public.client_default_roles DROP CONSTRAINT IF EXISTS fk_nuilts7klwqw2h8m2b5joytky;
ALTER TABLE IF EXISTS ONLY public.web_origins DROP CONSTRAINT IF EXISTS fk_lojpho213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.idp_mapper_config DROP CONSTRAINT IF EXISTS fk_idpmconfig;
ALTER TABLE IF EXISTS ONLY public.identity_provider_mapper DROP CONSTRAINT IF EXISTS fk_idpm_realm;
ALTER TABLE IF EXISTS ONLY public.realm_events_listeners DROP CONSTRAINT IF EXISTS fk_h846o4h0w8epx5nxev9f5y69j;
ALTER TABLE IF EXISTS ONLY public.realm_enabled_event_types DROP CONSTRAINT IF EXISTS fk_h846o4h0w8epx5nwedrf5y69j;
ALTER TABLE IF EXISTS ONLY public.realm_default_roles DROP CONSTRAINT IF EXISTS fk_h4wpd7w4hsoolni3h0sw7btje;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS fk_group_role_role;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS fk_group_role_group;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS fk_group_realm;
ALTER TABLE IF EXISTS ONLY public.group_attribute DROP CONSTRAINT IF EXISTS fk_group_attribute_group;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS fk_grntcsnt_user;
ALTER TABLE IF EXISTS ONLY public.user_consent_client_scope DROP CONSTRAINT IF EXISTS fk_grntcsnt_clsc_usc;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS fk_gr7thllb9lu8q4vqa4524jjy8;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS fk_frsrso213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS fk_frsrps213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS fk_frsrpp213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS fk_frsrpos53xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS fk_frsrpos13xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS fk_frsrpo213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrpo2128cx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS fk_frsrpass3xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS fk_frsrpas14xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog84sspmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog83sspmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS fk_frsrho213xcx4wnkog82sspmt;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS fk_frsrasp13xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS fk_frsr5s213xcx4wnkog82ssrfy;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS fk_fedmapperpm_realm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS fk_fedmapperpm_fedprv;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper_config DROP CONSTRAINT IF EXISTS fk_fedmapper_cfg;
ALTER TABLE IF EXISTS ONLY public.realm_default_roles DROP CONSTRAINT IF EXISTS fk_evudb1ppw84oxfax2drs03icc;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS fk_def_groups_realm;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS fk_def_groups_group;
ALTER TABLE IF EXISTS ONLY public.component DROP CONSTRAINT IF EXISTS fk_component_realm;
ALTER TABLE IF EXISTS ONLY public.component_config DROP CONSTRAINT IF EXISTS fk_component_config;
ALTER TABLE IF EXISTS ONLY public.client_initial_access DROP CONSTRAINT IF EXISTS fk_client_init_acc_realm;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS fk_cli_scope_mapper;
ALTER TABLE IF EXISTS ONLY public.client_user_session_note DROP CONSTRAINT IF EXISTS fk_cl_usr_ses_note;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS fk_cl_scope_rm_scope;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS fk_cl_scope_rm_role;
ALTER TABLE IF EXISTS ONLY public.client_scope_attributes DROP CONSTRAINT IF EXISTS fk_cl_scope_attr_scope;
ALTER TABLE IF EXISTS ONLY public.client_scope_client DROP CONSTRAINT IF EXISTS fk_c_cli_scope_scope;
ALTER TABLE IF EXISTS ONLY public.client_scope_client DROP CONSTRAINT IF EXISTS fk_c_cli_scope_client;
ALTER TABLE IF EXISTS ONLY public.user_role_mapping DROP CONSTRAINT IF EXISTS fk_c4fqv34p1mbylloxang7b1q3l;
ALTER TABLE IF EXISTS ONLY public.client_session DROP CONSTRAINT IF EXISTS fk_b4ao2vcvat6ukau74wbwtfqo1;
ALTER TABLE IF EXISTS ONLY public.authenticator_config DROP CONSTRAINT IF EXISTS fk_auth_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_flow DROP CONSTRAINT IF EXISTS fk_auth_flow_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS fk_auth_exec_realm;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS fk_auth_exec_flow;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS fk_a63wvekftu8jo1pnj81e7mce2;
ALTER TABLE IF EXISTS ONLY public.realm_attribute DROP CONSTRAINT IF EXISTS fk_8shxd6l3e9atqukacxgpffptw;
ALTER TABLE IF EXISTS ONLY public.client_default_roles DROP CONSTRAINT IF EXISTS fk_8aelwnibji49avxsrtuf6xjow;
ALTER TABLE IF EXISTS ONLY public.realm_smtp_config DROP CONSTRAINT IF EXISTS fk_70ej8xdxgxd0b9hh6180irr0o;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS fk_6vyqfe4cn4wlq8r6kt5vdsj5c;
ALTER TABLE IF EXISTS ONLY public.user_required_action DROP CONSTRAINT IF EXISTS fk_6qj3w1jw9cvafhe19bwsiuvmd;
ALTER TABLE IF EXISTS ONLY public.user_attribute DROP CONSTRAINT IF EXISTS fk_5hrm2vlf9ql5fu043kqepovbr;
ALTER TABLE IF EXISTS ONLY public.resource_attribute DROP CONSTRAINT IF EXISTS fk_5hrm2vlf9ql5fu022kqepovbr;
ALTER TABLE IF EXISTS ONLY public.realm_required_credential DROP CONSTRAINT IF EXISTS fk_5hg65lybevavkqfki3kponh9v;
ALTER TABLE IF EXISTS ONLY public.client_session_prot_mapper DROP CONSTRAINT IF EXISTS fk_33a8sgqw18i532811v7o2dk89;
ALTER TABLE IF EXISTS ONLY public.user_federation_provider DROP CONSTRAINT IF EXISTS fk_1fj32f6ptolw2qy60cd8n01e8;
ALTER TABLE IF EXISTS ONLY public.redirect_uris DROP CONSTRAINT IF EXISTS fk_1burs8pb4ouj97h5wuppahv9f;
ALTER TABLE IF EXISTS ONLY public.client_session_role DROP CONSTRAINT IF EXISTS fk_11b7sgqw18i532811v7o2dv76;
ALTER TABLE IF EXISTS ONLY public.user_session_note DROP CONSTRAINT IF EXISTS fk5edfb00ff51d3472;
ALTER TABLE IF EXISTS ONLY public.client_session_note DROP CONSTRAINT IF EXISTS fk5edfb00ff51c2736;
ALTER TABLE IF EXISTS ONLY public.client_node_registrations DROP CONSTRAINT IF EXISTS fk4129723ba992f594;
ALTER TABLE IF EXISTS ONLY public.federated_identity DROP CONSTRAINT IF EXISTS fk404288b92ef007a6;
ALTER TABLE IF EXISTS ONLY public.client_attributes DROP CONSTRAINT IF EXISTS fk3c47c64beacca966;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS fk2b4ebc52ae5c3b34;
ALTER TABLE IF EXISTS ONLY public.client_session_auth_status DROP CONSTRAINT IF EXISTS auth_status_constraint;
ALTER TABLE IF EXISTS ONLY expenses.expenses DROP CONSTRAINT IF EXISTS expenses_fk_report_fkey;
DROP INDEX IF EXISTS public.idx_web_orig_client;
DROP INDEX IF EXISTS public.idx_usr_fed_prv_realm;
DROP INDEX IF EXISTS public.idx_usr_fed_map_realm;
DROP INDEX IF EXISTS public.idx_usr_fed_map_fed_prv;
DROP INDEX IF EXISTS public.idx_user_role_mapping;
DROP INDEX IF EXISTS public.idx_user_reqactions;
DROP INDEX IF EXISTS public.idx_user_group_mapping;
DROP INDEX IF EXISTS public.idx_user_email;
DROP INDEX IF EXISTS public.idx_user_credential;
DROP INDEX IF EXISTS public.idx_user_consent;
DROP INDEX IF EXISTS public.idx_user_attribute;
DROP INDEX IF EXISTS public.idx_usconsent_clscope;
DROP INDEX IF EXISTS public.idx_us_sess_id_on_cl_sess;
DROP INDEX IF EXISTS public.idx_update_time;
DROP INDEX IF EXISTS public.idx_scope_policy_policy;
DROP INDEX IF EXISTS public.idx_scope_mapping_role;
DROP INDEX IF EXISTS public.idx_role_clscope;
DROP INDEX IF EXISTS public.idx_role_attribute;
DROP INDEX IF EXISTS public.idx_res_srv_scope_res_srv;
DROP INDEX IF EXISTS public.idx_res_srv_res_res_srv;
DROP INDEX IF EXISTS public.idx_res_serv_pol_res_serv;
DROP INDEX IF EXISTS public.idx_res_scope_scope;
DROP INDEX IF EXISTS public.idx_res_policy_policy;
DROP INDEX IF EXISTS public.idx_req_act_prov_realm;
DROP INDEX IF EXISTS public.idx_redir_uri_client;
DROP INDEX IF EXISTS public.idx_realm_supp_local_realm;
DROP INDEX IF EXISTS public.idx_realm_master_adm_cli;
DROP INDEX IF EXISTS public.idx_realm_evt_types_realm;
DROP INDEX IF EXISTS public.idx_realm_evt_list_realm;
DROP INDEX IF EXISTS public.idx_realm_def_roles_realm;
DROP INDEX IF EXISTS public.idx_realm_def_grp_realm;
DROP INDEX IF EXISTS public.idx_realm_clscope;
DROP INDEX IF EXISTS public.idx_realm_attr_realm;
DROP INDEX IF EXISTS public.idx_protocol_mapper_client;
DROP INDEX IF EXISTS public.idx_offline_uss_createdon;
DROP INDEX IF EXISTS public.idx_keycloak_role_realm;
DROP INDEX IF EXISTS public.idx_keycloak_role_client;
DROP INDEX IF EXISTS public.idx_ident_prov_realm;
DROP INDEX IF EXISTS public.idx_id_prov_mapp_realm;
DROP INDEX IF EXISTS public.idx_group_role_mapp_group;
DROP INDEX IF EXISTS public.idx_group_attr_group;
DROP INDEX IF EXISTS public.idx_fu_role_mapping_ru;
DROP INDEX IF EXISTS public.idx_fu_role_mapping;
DROP INDEX IF EXISTS public.idx_fu_required_action_ru;
DROP INDEX IF EXISTS public.idx_fu_required_action;
DROP INDEX IF EXISTS public.idx_fu_group_membership_ru;
DROP INDEX IF EXISTS public.idx_fu_group_membership;
DROP INDEX IF EXISTS public.idx_fu_credential_ru;
DROP INDEX IF EXISTS public.idx_fu_credential;
DROP INDEX IF EXISTS public.idx_fu_consent_ru;
DROP INDEX IF EXISTS public.idx_fu_consent;
DROP INDEX IF EXISTS public.idx_fu_cnsnt_ext;
DROP INDEX IF EXISTS public.idx_fu_attribute;
DROP INDEX IF EXISTS public.idx_fedidentity_user;
DROP INDEX IF EXISTS public.idx_fedidentity_feduser;
DROP INDEX IF EXISTS public.idx_event_time;
DROP INDEX IF EXISTS public.idx_defcls_scope;
DROP INDEX IF EXISTS public.idx_defcls_realm;
DROP INDEX IF EXISTS public.idx_composite_child;
DROP INDEX IF EXISTS public.idx_composite;
DROP INDEX IF EXISTS public.idx_component_realm;
DROP INDEX IF EXISTS public.idx_component_provider_type;
DROP INDEX IF EXISTS public.idx_compo_config_compo;
DROP INDEX IF EXISTS public.idx_clscope_role;
DROP INDEX IF EXISTS public.idx_clscope_protmap;
DROP INDEX IF EXISTS public.idx_clscope_cl;
DROP INDEX IF EXISTS public.idx_clscope_attrs;
DROP INDEX IF EXISTS public.idx_client_session_session;
DROP INDEX IF EXISTS public.idx_client_init_acc_realm;
DROP INDEX IF EXISTS public.idx_client_id;
DROP INDEX IF EXISTS public.idx_client_def_roles_client;
DROP INDEX IF EXISTS public.idx_cl_clscope;
DROP INDEX IF EXISTS public.idx_auth_flow_realm;
DROP INDEX IF EXISTS public.idx_auth_exec_realm_flow;
DROP INDEX IF EXISTS public.idx_auth_exec_flow;
DROP INDEX IF EXISTS public.idx_auth_config_realm;
DROP INDEX IF EXISTS public.idx_assoc_pol_assoc_pol_id;
DROP INDEX IF EXISTS public.flyway_schema_history_s_idx;
DROP INDEX IF EXISTS expenses.flyway_schema_history_s_idx;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS uk_ru8tt6t700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS uk_orvsdmla56612eaefiq6wl5oi;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS uk_jkuwuvd56ontgsuhogm8uewrt;
ALTER TABLE IF EXISTS ONLY public.realm_default_roles DROP CONSTRAINT IF EXISTS uk_h4wpd7w4hsoolni3h0sw7btje;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS uk_frsrst700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS uk_frsrpt700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS uk_frsr6t700s9v50bu18ws5pmt;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS uk_frsr6t700s9v50bu18ws5ha6;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS uk_dykn684sl8up1crfei6eckhd7;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS uk_cli_scope;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS uk_b71cjlbenv945rb6gcon438at;
ALTER TABLE IF EXISTS ONLY public.client_default_roles DROP CONSTRAINT IF EXISTS uk_8aelwnibji49avxsrtuf6xjow;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS uk_2daelwnibji49avxsrtuf6xj33;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS sibling_names;
ALTER TABLE IF EXISTS ONLY public.resource_attribute DROP CONSTRAINT IF EXISTS res_attr_pk;
ALTER TABLE IF EXISTS ONLY public.default_client_scope DROP CONSTRAINT IF EXISTS r_def_cli_scope_bind;
ALTER TABLE IF EXISTS ONLY public.client_scope_role_mapping DROP CONSTRAINT IF EXISTS pk_template_scope;
ALTER TABLE IF EXISTS ONLY public.resource_server DROP CONSTRAINT IF EXISTS pk_resource_server;
ALTER TABLE IF EXISTS ONLY public.databasechangeloglock DROP CONSTRAINT IF EXISTS pk_databasechangeloglock;
ALTER TABLE IF EXISTS ONLY public.client_scope DROP CONSTRAINT IF EXISTS pk_cli_template;
ALTER TABLE IF EXISTS ONLY public.client_scope_attributes DROP CONSTRAINT IF EXISTS pk_cl_tmpl_attr;
ALTER TABLE IF EXISTS ONLY public.flyway_schema_history DROP CONSTRAINT IF EXISTS flyway_schema_history_pk;
ALTER TABLE IF EXISTS ONLY public.web_origins DROP CONSTRAINT IF EXISTS constraint_web_origins;
ALTER TABLE IF EXISTS ONLY public.user_session_note DROP CONSTRAINT IF EXISTS constraint_usn_pk;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS constraint_user_group;
ALTER TABLE IF EXISTS ONLY public.user_attribute DROP CONSTRAINT IF EXISTS constraint_user_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.role_attribute DROP CONSTRAINT IF EXISTS constraint_role_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.resource_uris DROP CONSTRAINT IF EXISTS constraint_resour_uris_pk;
ALTER TABLE IF EXISTS ONLY public.user_required_action DROP CONSTRAINT IF EXISTS constraint_required_action;
ALTER TABLE IF EXISTS ONLY public.required_action_provider DROP CONSTRAINT IF EXISTS constraint_req_act_prv_pk;
ALTER TABLE IF EXISTS ONLY public.required_action_config DROP CONSTRAINT IF EXISTS constraint_req_act_cfg_pk;
ALTER TABLE IF EXISTS ONLY public.redirect_uris DROP CONSTRAINT IF EXISTS constraint_redirect_uris;
ALTER TABLE IF EXISTS ONLY public.realm_default_roles DROP CONSTRAINT IF EXISTS constraint_realm_default_roles;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper_config DROP CONSTRAINT IF EXISTS constraint_pmconfig;
ALTER TABLE IF EXISTS ONLY public.protocol_mapper DROP CONSTRAINT IF EXISTS constraint_pcm;
ALTER TABLE IF EXISTS ONLY public.offline_user_session DROP CONSTRAINT IF EXISTS constraint_offl_us_ses_pk2;
ALTER TABLE IF EXISTS ONLY public.offline_client_session DROP CONSTRAINT IF EXISTS constraint_offl_cl_ses_pk3;
ALTER TABLE IF EXISTS ONLY public.migration_model DROP CONSTRAINT IF EXISTS constraint_migmod;
ALTER TABLE IF EXISTS ONLY public.idp_mapper_config DROP CONSTRAINT IF EXISTS constraint_idpmconfig;
ALTER TABLE IF EXISTS ONLY public.identity_provider_mapper DROP CONSTRAINT IF EXISTS constraint_idpm;
ALTER TABLE IF EXISTS ONLY public.group_role_mapping DROP CONSTRAINT IF EXISTS constraint_group_role;
ALTER TABLE IF EXISTS ONLY public.group_attribute DROP CONSTRAINT IF EXISTS constraint_group_attribute_pk;
ALTER TABLE IF EXISTS ONLY public.keycloak_group DROP CONSTRAINT IF EXISTS constraint_group;
ALTER TABLE IF EXISTS ONLY public.user_consent DROP CONSTRAINT IF EXISTS constraint_grntcsnt_pm;
ALTER TABLE IF EXISTS ONLY public.user_consent_client_scope DROP CONSTRAINT IF EXISTS constraint_grntcsnt_clsc_pm;
ALTER TABLE IF EXISTS ONLY public.fed_user_consent_cl_scope DROP CONSTRAINT IF EXISTS constraint_fgrntcsnt_clsc_pm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper DROP CONSTRAINT IF EXISTS constraint_fedmapperpm;
ALTER TABLE IF EXISTS ONLY public.user_federation_mapper_config DROP CONSTRAINT IF EXISTS constraint_fedmapper_cfg_pm;
ALTER TABLE IF EXISTS ONLY public.user_entity DROP CONSTRAINT IF EXISTS constraint_fb;
ALTER TABLE IF EXISTS ONLY public.scope_policy DROP CONSTRAINT IF EXISTS constraint_farsrsps;
ALTER TABLE IF EXISTS ONLY public.resource_scope DROP CONSTRAINT IF EXISTS constraint_farsrsp;
ALTER TABLE IF EXISTS ONLY public.resource_server_scope DROP CONSTRAINT IF EXISTS constraint_farsrs;
ALTER TABLE IF EXISTS ONLY public.resource_policy DROP CONSTRAINT IF EXISTS constraint_farsrpp;
ALTER TABLE IF EXISTS ONLY public.associated_policy DROP CONSTRAINT IF EXISTS constraint_farsrpap;
ALTER TABLE IF EXISTS ONLY public.resource_server_policy DROP CONSTRAINT IF EXISTS constraint_farsrp;
ALTER TABLE IF EXISTS ONLY public.resource_server_resource DROP CONSTRAINT IF EXISTS constraint_farsr;
ALTER TABLE IF EXISTS ONLY public.resource_server_perm_ticket DROP CONSTRAINT IF EXISTS constraint_fapmt;
ALTER TABLE IF EXISTS ONLY public.user_federation_config DROP CONSTRAINT IF EXISTS constraint_f9;
ALTER TABLE IF EXISTS ONLY public.credential DROP CONSTRAINT IF EXISTS constraint_f;
ALTER TABLE IF EXISTS ONLY public.realm_smtp_config DROP CONSTRAINT IF EXISTS constraint_e;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS constraint_dpc;
ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS constraint_d;
ALTER TABLE IF EXISTS ONLY public.client_session_prot_mapper DROP CONSTRAINT IF EXISTS constraint_cs_pmp_pk;
ALTER TABLE IF EXISTS ONLY public.composite_role DROP CONSTRAINT IF EXISTS constraint_composite_role;
ALTER TABLE IF EXISTS ONLY public.user_role_mapping DROP CONSTRAINT IF EXISTS constraint_c;
ALTER TABLE IF EXISTS ONLY public.client_session_auth_status DROP CONSTRAINT IF EXISTS constraint_auth_status_pk;
ALTER TABLE IF EXISTS ONLY public.authenticator_config DROP CONSTRAINT IF EXISTS constraint_auth_pk;
ALTER TABLE IF EXISTS ONLY public.authentication_flow DROP CONSTRAINT IF EXISTS constraint_auth_flow_pk;
ALTER TABLE IF EXISTS ONLY public.authentication_execution DROP CONSTRAINT IF EXISTS constraint_auth_exec_pk;
ALTER TABLE IF EXISTS ONLY public.authenticator_config_entry DROP CONSTRAINT IF EXISTS constraint_auth_cfg_pk;
ALTER TABLE IF EXISTS ONLY public.admin_event_entity DROP CONSTRAINT IF EXISTS constraint_admin_event_entity;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS constraint_a;
ALTER TABLE IF EXISTS ONLY public.realm_required_credential DROP CONSTRAINT IF EXISTS constraint_92;
ALTER TABLE IF EXISTS ONLY public.realm_attribute DROP CONSTRAINT IF EXISTS constraint_9;
ALTER TABLE IF EXISTS ONLY public.client_node_registrations DROP CONSTRAINT IF EXISTS constraint_84;
ALTER TABLE IF EXISTS ONLY public.scope_mapping DROP CONSTRAINT IF EXISTS constraint_81;
ALTER TABLE IF EXISTS ONLY public.client_session DROP CONSTRAINT IF EXISTS constraint_8;
ALTER TABLE IF EXISTS ONLY public.client DROP CONSTRAINT IF EXISTS constraint_7;
ALTER TABLE IF EXISTS ONLY public.client_session_note DROP CONSTRAINT IF EXISTS constraint_5e;
ALTER TABLE IF EXISTS ONLY public.user_federation_provider DROP CONSTRAINT IF EXISTS constraint_5c;
ALTER TABLE IF EXISTS ONLY public.user_session DROP CONSTRAINT IF EXISTS constraint_57;
ALTER TABLE IF EXISTS ONLY public.client_session_role DROP CONSTRAINT IF EXISTS constraint_5;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS constraint_4a;
ALTER TABLE IF EXISTS ONLY public.federated_identity DROP CONSTRAINT IF EXISTS constraint_40;
ALTER TABLE IF EXISTS ONLY public.event_entity DROP CONSTRAINT IF EXISTS constraint_4;
ALTER TABLE IF EXISTS ONLY public.client_attributes DROP CONSTRAINT IF EXISTS constraint_3c;
ALTER TABLE IF EXISTS ONLY public.identity_provider DROP CONSTRAINT IF EXISTS constraint_2b;
ALTER TABLE IF EXISTS ONLY public.realm_supported_locales DROP CONSTRAINT IF EXISTS constr_realm_supported_locales;
ALTER TABLE IF EXISTS ONLY public.realm_events_listeners DROP CONSTRAINT IF EXISTS constr_realm_events_listeners;
ALTER TABLE IF EXISTS ONLY public.realm_enabled_event_types DROP CONSTRAINT IF EXISTS constr_realm_enabl_event_types;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS constr_realm_default_groups;
ALTER TABLE IF EXISTS ONLY public.federated_user DROP CONSTRAINT IF EXISTS constr_federated_user;
ALTER TABLE IF EXISTS ONLY public.fed_user_role_mapping DROP CONSTRAINT IF EXISTS constr_fed_user_role;
ALTER TABLE IF EXISTS ONLY public.fed_user_group_membership DROP CONSTRAINT IF EXISTS constr_fed_user_group;
ALTER TABLE IF EXISTS ONLY public.fed_user_credential DROP CONSTRAINT IF EXISTS constr_fed_user_cred_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_consent DROP CONSTRAINT IF EXISTS constr_fed_user_consent_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_attribute DROP CONSTRAINT IF EXISTS constr_fed_user_attr_pk;
ALTER TABLE IF EXISTS ONLY public.fed_user_required_action DROP CONSTRAINT IF EXISTS constr_fed_required_action;
ALTER TABLE IF EXISTS ONLY public.component DROP CONSTRAINT IF EXISTS constr_component_pk;
ALTER TABLE IF EXISTS ONLY public.component_config DROP CONSTRAINT IF EXISTS constr_component_config_pk;
ALTER TABLE IF EXISTS ONLY public.client_default_roles DROP CONSTRAINT IF EXISTS constr_client_default_roles;
ALTER TABLE IF EXISTS ONLY public.client_user_session_note DROP CONSTRAINT IF EXISTS constr_cl_usr_ses_note;
ALTER TABLE IF EXISTS ONLY public.broker_link DROP CONSTRAINT IF EXISTS constr_broker_link_pk;
ALTER TABLE IF EXISTS ONLY public.realm_default_groups DROP CONSTRAINT IF EXISTS con_group_id_def_groups;
ALTER TABLE IF EXISTS ONLY public.client_initial_access DROP CONSTRAINT IF EXISTS cnstr_client_init_acc_pk;
ALTER TABLE IF EXISTS ONLY public.client_scope_client DROP CONSTRAINT IF EXISTS c_cli_scope_bind;
ALTER TABLE IF EXISTS ONLY public.client_auth_flow_bindings DROP CONSTRAINT IF EXISTS c_cli_flow_bind;
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS "UK_J3RWUVD56ONTGSUHOGM184WW2-2";
ALTER TABLE IF EXISTS ONLY public.username_login_failure DROP CONSTRAINT IF EXISTS "CONSTRAINT_17-2";
ALTER TABLE IF EXISTS ONLY expenses.report DROP CONSTRAINT IF EXISTS report_pkey;
ALTER TABLE IF EXISTS ONLY expenses.flyway_schema_history DROP CONSTRAINT IF EXISTS flyway_schema_history_pk;
ALTER TABLE IF EXISTS ONLY expenses.expenses DROP CONSTRAINT IF EXISTS expenses_pkey;
ALTER TABLE IF EXISTS expenses.expenses ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS public.web_origins;
DROP TABLE IF EXISTS public.username_login_failure;
DROP TABLE IF EXISTS public.user_session_note;
DROP TABLE IF EXISTS public.user_session;
DROP TABLE IF EXISTS public.user_role_mapping;
DROP TABLE IF EXISTS public.user_required_action;
DROP TABLE IF EXISTS public.user_group_membership;
DROP TABLE IF EXISTS public.user_federation_provider;
DROP TABLE IF EXISTS public.user_federation_mapper_config;
DROP TABLE IF EXISTS public.user_federation_mapper;
DROP TABLE IF EXISTS public.user_federation_config;
DROP TABLE IF EXISTS public.user_entity;
DROP TABLE IF EXISTS public.user_consent_client_scope;
DROP TABLE IF EXISTS public.user_consent;
DROP TABLE IF EXISTS public.user_attribute;
DROP TABLE IF EXISTS public.scope_policy;
DROP TABLE IF EXISTS public.scope_mapping;
DROP TABLE IF EXISTS public.role_attribute;
DROP TABLE IF EXISTS public.resource_uris;
DROP TABLE IF EXISTS public.resource_server_scope;
DROP TABLE IF EXISTS public.resource_server_resource;
DROP TABLE IF EXISTS public.resource_server_policy;
DROP TABLE IF EXISTS public.resource_server_perm_ticket;
DROP TABLE IF EXISTS public.resource_server;
DROP TABLE IF EXISTS public.resource_scope;
DROP TABLE IF EXISTS public.resource_policy;
DROP TABLE IF EXISTS public.resource_attribute;
DROP TABLE IF EXISTS public.required_action_provider;
DROP TABLE IF EXISTS public.required_action_config;
DROP TABLE IF EXISTS public.redirect_uris;
DROP TABLE IF EXISTS public.realm_supported_locales;
DROP TABLE IF EXISTS public.realm_smtp_config;
DROP TABLE IF EXISTS public.realm_required_credential;
DROP TABLE IF EXISTS public.realm_events_listeners;
DROP TABLE IF EXISTS public.realm_enabled_event_types;
DROP TABLE IF EXISTS public.realm_default_roles;
DROP TABLE IF EXISTS public.realm_default_groups;
DROP TABLE IF EXISTS public.realm_attribute;
DROP TABLE IF EXISTS public.realm;
DROP TABLE IF EXISTS public.protocol_mapper_config;
DROP TABLE IF EXISTS public.protocol_mapper;
DROP TABLE IF EXISTS public.policy_config;
DROP TABLE IF EXISTS public.offline_user_session;
DROP TABLE IF EXISTS public.offline_client_session;
DROP TABLE IF EXISTS public.migration_model;
DROP TABLE IF EXISTS public.keycloak_role;
DROP TABLE IF EXISTS public.keycloak_group;
DROP TABLE IF EXISTS public.idp_mapper_config;
DROP TABLE IF EXISTS public.identity_provider_mapper;
DROP TABLE IF EXISTS public.identity_provider_config;
DROP TABLE IF EXISTS public.identity_provider;
DROP TABLE IF EXISTS public.group_role_mapping;
DROP TABLE IF EXISTS public.group_attribute;
DROP TABLE IF EXISTS public.flyway_schema_history;
DROP TABLE IF EXISTS public.federated_user;
DROP TABLE IF EXISTS public.federated_identity;
DROP TABLE IF EXISTS public.fed_user_role_mapping;
DROP TABLE IF EXISTS public.fed_user_required_action;
DROP TABLE IF EXISTS public.fed_user_group_membership;
DROP TABLE IF EXISTS public.fed_user_credential;
DROP TABLE IF EXISTS public.fed_user_consent_cl_scope;
DROP TABLE IF EXISTS public.fed_user_consent;
DROP TABLE IF EXISTS public.fed_user_attribute;
DROP TABLE IF EXISTS public.event_entity;
DROP TABLE IF EXISTS public.default_client_scope;
DROP TABLE IF EXISTS public.databasechangeloglock;
DROP TABLE IF EXISTS public.databasechangelog;
DROP TABLE IF EXISTS public.credential;
DROP TABLE IF EXISTS public.composite_role;
DROP TABLE IF EXISTS public.component_config;
DROP TABLE IF EXISTS public.component;
DROP TABLE IF EXISTS public.client_user_session_note;
DROP TABLE IF EXISTS public.client_session_role;
DROP TABLE IF EXISTS public.client_session_prot_mapper;
DROP TABLE IF EXISTS public.client_session_note;
DROP TABLE IF EXISTS public.client_session_auth_status;
DROP TABLE IF EXISTS public.client_session;
DROP TABLE IF EXISTS public.client_scope_role_mapping;
DROP TABLE IF EXISTS public.client_scope_client;
DROP TABLE IF EXISTS public.client_scope_attributes;
DROP TABLE IF EXISTS public.client_scope;
DROP TABLE IF EXISTS public.client_node_registrations;
DROP TABLE IF EXISTS public.client_initial_access;
DROP TABLE IF EXISTS public.client_default_roles;
DROP TABLE IF EXISTS public.client_auth_flow_bindings;
DROP TABLE IF EXISTS public.client_attributes;
DROP TABLE IF EXISTS public.client;
DROP TABLE IF EXISTS public.broker_link;
DROP TABLE IF EXISTS public.authenticator_config_entry;
DROP TABLE IF EXISTS public.authenticator_config;
DROP TABLE IF EXISTS public.authentication_flow;
DROP TABLE IF EXISTS public.authentication_execution;
DROP TABLE IF EXISTS public.associated_policy;
DROP TABLE IF EXISTS public.admin_event_entity;
DROP TABLE IF EXISTS expenses.report;
DROP TABLE IF EXISTS expenses.flyway_schema_history;
DROP SEQUENCE IF EXISTS expenses.expenses_id_seq;
DROP TABLE IF EXISTS expenses.expenses;
DROP EXTENSION IF EXISTS plpgsql;
DROP SCHEMA IF EXISTS public;
DROP SCHEMA IF EXISTS expenses;
--
-- Name: expenses; Type: SCHEMA; Schema: -; Owner: keycloack
--

CREATE SCHEMA expenses;


ALTER SCHEMA expenses OWNER TO keycloack;

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: expenses; Type: TABLE; Schema: expenses; Owner: keycloack
--

CREATE TABLE expenses.expenses (
    id integer NOT NULL,
    description character varying(250) NOT NULL,
    amount numeric(15,6),
    created date,
    tstamp timestamp without time zone DEFAULT now(),
    fk_report integer
);


ALTER TABLE expenses.expenses OWNER TO keycloack;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: expenses; Owner: keycloack
--

CREATE SEQUENCE expenses.expenses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE expenses.expenses_id_seq OWNER TO keycloack;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: expenses; Owner: keycloack
--

ALTER SEQUENCE expenses.expenses_id_seq OWNED BY expenses.expenses.id;


--
-- Name: flyway_schema_history; Type: TABLE; Schema: expenses; Owner: keycloack
--

CREATE TABLE expenses.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE expenses.flyway_schema_history OWNER TO keycloack;

--
-- Name: report; Type: TABLE; Schema: expenses; Owner: keycloack
--

CREATE TABLE expenses.report (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created date,
    tstamp timestamp without time zone DEFAULT now()
);


ALTER TABLE expenses.report OWNER TO keycloack;

--
-- Name: admin_event_entity; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.admin_event_entity (
    id character varying(36) NOT NULL,
    admin_event_time bigint,
    realm_id character varying(255),
    operation_type character varying(255),
    auth_realm_id character varying(255),
    auth_client_id character varying(255),
    auth_user_id character varying(255),
    ip_address character varying(255),
    resource_path character varying(2550),
    representation text,
    error character varying(255),
    resource_type character varying(64)
);


ALTER TABLE public.admin_event_entity OWNER TO keycloack;

--
-- Name: associated_policy; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.associated_policy (
    policy_id character varying(36) NOT NULL,
    associated_policy_id character varying(36) NOT NULL
);


ALTER TABLE public.associated_policy OWNER TO keycloack;

--
-- Name: authentication_execution; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.authentication_execution (
    id character varying(36) NOT NULL,
    alias character varying(255),
    authenticator character varying(36),
    realm_id character varying(36),
    flow_id character varying(36),
    requirement integer,
    priority integer,
    authenticator_flow boolean DEFAULT false NOT NULL,
    auth_flow_id character varying(36),
    auth_config character varying(36)
);


ALTER TABLE public.authentication_execution OWNER TO keycloack;

--
-- Name: authentication_flow; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.authentication_flow (
    id character varying(36) NOT NULL,
    alias character varying(255),
    description character varying(255),
    realm_id character varying(36),
    provider_id character varying(36) DEFAULT 'basic-flow'::character varying NOT NULL,
    top_level boolean DEFAULT false NOT NULL,
    built_in boolean DEFAULT false NOT NULL
);


ALTER TABLE public.authentication_flow OWNER TO keycloack;

--
-- Name: authenticator_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.authenticator_config (
    id character varying(36) NOT NULL,
    alias character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.authenticator_config OWNER TO keycloack;

--
-- Name: authenticator_config_entry; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.authenticator_config_entry (
    authenticator_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.authenticator_config_entry OWNER TO keycloack;

--
-- Name: broker_link; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.broker_link (
    identity_provider character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL,
    broker_user_id character varying(255),
    broker_username character varying(255),
    token text,
    user_id character varying(255) NOT NULL
);


ALTER TABLE public.broker_link OWNER TO keycloack;

--
-- Name: client; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client (
    id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    full_scope_allowed boolean DEFAULT false NOT NULL,
    client_id character varying(255),
    not_before integer,
    public_client boolean DEFAULT false NOT NULL,
    secret character varying(255),
    base_url character varying(255),
    bearer_only boolean DEFAULT false NOT NULL,
    management_url character varying(255),
    surrogate_auth_required boolean DEFAULT false NOT NULL,
    realm_id character varying(36),
    protocol character varying(255),
    node_rereg_timeout integer DEFAULT 0,
    frontchannel_logout boolean DEFAULT false NOT NULL,
    consent_required boolean DEFAULT false NOT NULL,
    name character varying(255),
    service_accounts_enabled boolean DEFAULT false NOT NULL,
    client_authenticator_type character varying(255),
    root_url character varying(255),
    description character varying(255),
    registration_token character varying(255),
    standard_flow_enabled boolean DEFAULT true NOT NULL,
    implicit_flow_enabled boolean DEFAULT false NOT NULL,
    direct_access_grants_enabled boolean DEFAULT false NOT NULL,
    always_display_in_console boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client OWNER TO keycloack;

--
-- Name: client_attributes; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_attributes (
    client_id character varying(36) NOT NULL,
    value character varying(4000),
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_attributes OWNER TO keycloack;

--
-- Name: client_auth_flow_bindings; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_auth_flow_bindings (
    client_id character varying(36) NOT NULL,
    flow_id character varying(36),
    binding_name character varying(255) NOT NULL
);


ALTER TABLE public.client_auth_flow_bindings OWNER TO keycloack;

--
-- Name: client_default_roles; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_default_roles (
    client_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.client_default_roles OWNER TO keycloack;

--
-- Name: client_initial_access; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_initial_access (
    id character varying(36) NOT NULL,
    realm_id character varying(36) NOT NULL,
    "timestamp" integer,
    expiration integer,
    count integer,
    remaining_count integer
);


ALTER TABLE public.client_initial_access OWNER TO keycloack;

--
-- Name: client_node_registrations; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_node_registrations (
    client_id character varying(36) NOT NULL,
    value integer,
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_node_registrations OWNER TO keycloack;

--
-- Name: client_scope; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_scope (
    id character varying(36) NOT NULL,
    name character varying(255),
    realm_id character varying(36),
    description character varying(255),
    protocol character varying(255)
);


ALTER TABLE public.client_scope OWNER TO keycloack;

--
-- Name: client_scope_attributes; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_scope_attributes (
    scope_id character varying(36) NOT NULL,
    value character varying(2048),
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_scope_attributes OWNER TO keycloack;

--
-- Name: client_scope_client; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_scope_client (
    client_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client_scope_client OWNER TO keycloack;

--
-- Name: client_scope_role_mapping; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_scope_role_mapping (
    scope_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.client_scope_role_mapping OWNER TO keycloack;

--
-- Name: client_session; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_session (
    id character varying(36) NOT NULL,
    client_id character varying(36),
    redirect_uri character varying(255),
    state character varying(255),
    "timestamp" integer,
    session_id character varying(36),
    auth_method character varying(255),
    realm_id character varying(255),
    auth_user_id character varying(36),
    current_action character varying(36)
);


ALTER TABLE public.client_session OWNER TO keycloack;

--
-- Name: client_session_auth_status; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_session_auth_status (
    authenticator character varying(36) NOT NULL,
    status integer,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_auth_status OWNER TO keycloack;

--
-- Name: client_session_note; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_session_note (
    name character varying(255) NOT NULL,
    value character varying(255),
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_note OWNER TO keycloack;

--
-- Name: client_session_prot_mapper; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_session_prot_mapper (
    protocol_mapper_id character varying(36) NOT NULL,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_prot_mapper OWNER TO keycloack;

--
-- Name: client_session_role; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_session_role (
    role_id character varying(255) NOT NULL,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_role OWNER TO keycloack;

--
-- Name: client_user_session_note; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.client_user_session_note (
    name character varying(255) NOT NULL,
    value character varying(2048),
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_user_session_note OWNER TO keycloack;

--
-- Name: component; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.component (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_id character varying(36),
    provider_id character varying(36),
    provider_type character varying(255),
    realm_id character varying(36),
    sub_type character varying(255)
);


ALTER TABLE public.component OWNER TO keycloack;

--
-- Name: component_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.component_config (
    id character varying(36) NOT NULL,
    component_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(4000)
);


ALTER TABLE public.component_config OWNER TO keycloack;

--
-- Name: composite_role; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.composite_role (
    composite character varying(36) NOT NULL,
    child_role character varying(36) NOT NULL
);


ALTER TABLE public.composite_role OWNER TO keycloack;

--
-- Name: credential; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    user_id character varying(36),
    created_date bigint,
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer
);


ALTER TABLE public.credential OWNER TO keycloack;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.databasechangelog (
    id character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    filename character varying(255) NOT NULL,
    dateexecuted timestamp without time zone NOT NULL,
    orderexecuted integer NOT NULL,
    exectype character varying(10) NOT NULL,
    md5sum character varying(35),
    description character varying(255),
    comments character varying(255),
    tag character varying(255),
    liquibase character varying(20),
    contexts character varying(255),
    labels character varying(255),
    deployment_id character varying(10)
);


ALTER TABLE public.databasechangelog OWNER TO keycloack;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO keycloack;

--
-- Name: default_client_scope; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.default_client_scope (
    realm_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.default_client_scope OWNER TO keycloack;

--
-- Name: event_entity; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.event_entity (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    details_json character varying(2550),
    error character varying(255),
    ip_address character varying(255),
    realm_id character varying(255),
    session_id character varying(255),
    event_time bigint,
    type character varying(255),
    user_id character varying(255)
);


ALTER TABLE public.event_entity OWNER TO keycloack;

--
-- Name: fed_user_attribute; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.fed_user_attribute (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    value character varying(2024)
);


ALTER TABLE public.fed_user_attribute OWNER TO keycloack;

--
-- Name: fed_user_consent; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.fed_user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);


ALTER TABLE public.fed_user_consent OWNER TO keycloack;

--
-- Name: fed_user_consent_cl_scope; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.fed_user_consent_cl_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.fed_user_consent_cl_scope OWNER TO keycloack;

--
-- Name: fed_user_credential; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.fed_user_credential (
    id character varying(36) NOT NULL,
    salt bytea,
    type character varying(255),
    created_date bigint,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    user_label character varying(255),
    secret_data text,
    credential_data text,
    priority integer
);


ALTER TABLE public.fed_user_credential OWNER TO keycloack;

--
-- Name: fed_user_group_membership; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.fed_user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_group_membership OWNER TO keycloack;

--
-- Name: fed_user_required_action; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.fed_user_required_action (
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_required_action OWNER TO keycloack;

--
-- Name: fed_user_role_mapping; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.fed_user_role_mapping (
    role_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_role_mapping OWNER TO keycloack;

--
-- Name: federated_identity; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.federated_identity (
    identity_provider character varying(255) NOT NULL,
    realm_id character varying(36),
    federated_user_id character varying(255),
    federated_username character varying(255),
    token text,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_identity OWNER TO keycloack;

--
-- Name: federated_user; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.federated_user (
    id character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_user OWNER TO keycloack;

--
-- Name: flyway_schema_history; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);


ALTER TABLE public.flyway_schema_history OWNER TO keycloack;

--
-- Name: group_attribute; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.group_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_attribute OWNER TO keycloack;

--
-- Name: group_role_mapping; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.group_role_mapping (
    role_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_role_mapping OWNER TO keycloack;

--
-- Name: identity_provider; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.identity_provider (
    internal_id character varying(36) NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    provider_alias character varying(255),
    provider_id character varying(255),
    store_token boolean DEFAULT false NOT NULL,
    authenticate_by_default boolean DEFAULT false NOT NULL,
    realm_id character varying(36),
    add_token_role boolean DEFAULT true NOT NULL,
    trust_email boolean DEFAULT false NOT NULL,
    first_broker_login_flow_id character varying(36),
    post_broker_login_flow_id character varying(36),
    provider_display_name character varying(255),
    link_only boolean DEFAULT false NOT NULL
);


ALTER TABLE public.identity_provider OWNER TO keycloack;

--
-- Name: identity_provider_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.identity_provider_config (
    identity_provider_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.identity_provider_config OWNER TO keycloack;

--
-- Name: identity_provider_mapper; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.identity_provider_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    idp_alias character varying(255) NOT NULL,
    idp_mapper_name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.identity_provider_mapper OWNER TO keycloack;

--
-- Name: idp_mapper_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.idp_mapper_config (
    idp_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.idp_mapper_config OWNER TO keycloack;

--
-- Name: keycloak_group; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.keycloak_group (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_group character varying(36) NOT NULL,
    realm_id character varying(36)
);


ALTER TABLE public.keycloak_group OWNER TO keycloack;

--
-- Name: keycloak_role; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.keycloak_role (
    id character varying(36) NOT NULL,
    client_realm_constraint character varying(255),
    client_role boolean DEFAULT false NOT NULL,
    description character varying(255),
    name character varying(255),
    realm_id character varying(255),
    client character varying(36),
    realm character varying(36)
);


ALTER TABLE public.keycloak_role OWNER TO keycloack;

--
-- Name: migration_model; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.migration_model (
    id character varying(36) NOT NULL,
    version character varying(36),
    update_time bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.migration_model OWNER TO keycloack;

--
-- Name: offline_client_session; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.offline_client_session (
    user_session_id character varying(36) NOT NULL,
    client_id character varying(255) NOT NULL,
    offline_flag character varying(4) NOT NULL,
    "timestamp" integer,
    data text,
    client_storage_provider character varying(36) DEFAULT 'local'::character varying NOT NULL,
    external_client_id character varying(255) DEFAULT 'local'::character varying NOT NULL
);


ALTER TABLE public.offline_client_session OWNER TO keycloack;

--
-- Name: offline_user_session; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.offline_user_session (
    user_session_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    created_on integer NOT NULL,
    offline_flag character varying(4) NOT NULL,
    data text,
    last_session_refresh integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.offline_user_session OWNER TO keycloack;

--
-- Name: policy_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.policy_config (
    policy_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.policy_config OWNER TO keycloack;

--
-- Name: protocol_mapper; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.protocol_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    protocol character varying(255) NOT NULL,
    protocol_mapper_name character varying(255) NOT NULL,
    client_id character varying(36),
    client_scope_id character varying(36)
);


ALTER TABLE public.protocol_mapper OWNER TO keycloack;

--
-- Name: protocol_mapper_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.protocol_mapper_config (
    protocol_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.protocol_mapper_config OWNER TO keycloack;

--
-- Name: realm; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm (
    id character varying(36) NOT NULL,
    access_code_lifespan integer,
    user_action_lifespan integer,
    access_token_lifespan integer,
    account_theme character varying(255),
    admin_theme character varying(255),
    email_theme character varying(255),
    enabled boolean DEFAULT false NOT NULL,
    events_enabled boolean DEFAULT false NOT NULL,
    events_expiration bigint,
    login_theme character varying(255),
    name character varying(255),
    not_before integer,
    password_policy character varying(2550),
    registration_allowed boolean DEFAULT false NOT NULL,
    remember_me boolean DEFAULT false NOT NULL,
    reset_password_allowed boolean DEFAULT false NOT NULL,
    social boolean DEFAULT false NOT NULL,
    ssl_required character varying(255),
    sso_idle_timeout integer,
    sso_max_lifespan integer,
    update_profile_on_soc_login boolean DEFAULT false NOT NULL,
    verify_email boolean DEFAULT false NOT NULL,
    master_admin_client character varying(36),
    login_lifespan integer,
    internationalization_enabled boolean DEFAULT false NOT NULL,
    default_locale character varying(255),
    reg_email_as_username boolean DEFAULT false NOT NULL,
    admin_events_enabled boolean DEFAULT false NOT NULL,
    admin_events_details_enabled boolean DEFAULT false NOT NULL,
    edit_username_allowed boolean DEFAULT false NOT NULL,
    otp_policy_counter integer DEFAULT 0,
    otp_policy_window integer DEFAULT 1,
    otp_policy_period integer DEFAULT 30,
    otp_policy_digits integer DEFAULT 6,
    otp_policy_alg character varying(36) DEFAULT 'HmacSHA1'::character varying,
    otp_policy_type character varying(36) DEFAULT 'totp'::character varying,
    browser_flow character varying(36),
    registration_flow character varying(36),
    direct_grant_flow character varying(36),
    reset_credentials_flow character varying(36),
    client_auth_flow character varying(36),
    offline_session_idle_timeout integer DEFAULT 0,
    revoke_refresh_token boolean DEFAULT false NOT NULL,
    access_token_life_implicit integer DEFAULT 0,
    login_with_email_allowed boolean DEFAULT true NOT NULL,
    duplicate_emails_allowed boolean DEFAULT false NOT NULL,
    docker_auth_flow character varying(36),
    refresh_token_max_reuse integer DEFAULT 0,
    allow_user_managed_access boolean DEFAULT false NOT NULL,
    sso_max_lifespan_remember_me integer DEFAULT 0 NOT NULL,
    sso_idle_timeout_remember_me integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.realm OWNER TO keycloack;

--
-- Name: realm_attribute; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm_attribute (
    name character varying(255) NOT NULL,
    value character varying(255),
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_attribute OWNER TO keycloack;

--
-- Name: realm_default_groups; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm_default_groups (
    realm_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_default_groups OWNER TO keycloack;

--
-- Name: realm_default_roles; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm_default_roles (
    realm_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_default_roles OWNER TO keycloack;

--
-- Name: realm_enabled_event_types; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm_enabled_event_types (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_enabled_event_types OWNER TO keycloack;

--
-- Name: realm_events_listeners; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm_events_listeners (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_events_listeners OWNER TO keycloack;

--
-- Name: realm_required_credential; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm_required_credential (
    type character varying(255) NOT NULL,
    form_label character varying(255),
    input boolean DEFAULT false NOT NULL,
    secret boolean DEFAULT false NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_required_credential OWNER TO keycloack;

--
-- Name: realm_smtp_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm_smtp_config (
    realm_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.realm_smtp_config OWNER TO keycloack;

--
-- Name: realm_supported_locales; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.realm_supported_locales (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_supported_locales OWNER TO keycloack;

--
-- Name: redirect_uris; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.redirect_uris (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.redirect_uris OWNER TO keycloack;

--
-- Name: required_action_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.required_action_config (
    required_action_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.required_action_config OWNER TO keycloack;

--
-- Name: required_action_provider; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.required_action_provider (
    id character varying(36) NOT NULL,
    alias character varying(255),
    name character varying(255),
    realm_id character varying(36),
    enabled boolean DEFAULT false NOT NULL,
    default_action boolean DEFAULT false NOT NULL,
    provider_id character varying(255),
    priority integer
);


ALTER TABLE public.required_action_provider OWNER TO keycloack;

--
-- Name: resource_attribute; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    resource_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_attribute OWNER TO keycloack;

--
-- Name: resource_policy; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_policy (
    resource_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_policy OWNER TO keycloack;

--
-- Name: resource_scope; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_scope (
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_scope OWNER TO keycloack;

--
-- Name: resource_server; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_server (
    id character varying(36) NOT NULL,
    allow_rs_remote_mgmt boolean DEFAULT false NOT NULL,
    policy_enforce_mode character varying(15) NOT NULL,
    decision_strategy smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.resource_server OWNER TO keycloack;

--
-- Name: resource_server_perm_ticket; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_server_perm_ticket (
    id character varying(36) NOT NULL,
    owner character varying(255) NOT NULL,
    requester character varying(255) NOT NULL,
    created_timestamp bigint NOT NULL,
    granted_timestamp bigint,
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36),
    resource_server_id character varying(36) NOT NULL,
    policy_id character varying(36)
);


ALTER TABLE public.resource_server_perm_ticket OWNER TO keycloack;

--
-- Name: resource_server_policy; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_server_policy (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(255),
    type character varying(255) NOT NULL,
    decision_strategy character varying(20),
    logic character varying(20),
    resource_server_id character varying(36) NOT NULL,
    owner character varying(255)
);


ALTER TABLE public.resource_server_policy OWNER TO keycloack;

--
-- Name: resource_server_resource; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_server_resource (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255),
    icon_uri character varying(255),
    owner character varying(255) NOT NULL,
    resource_server_id character varying(36) NOT NULL,
    owner_managed_access boolean DEFAULT false NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_resource OWNER TO keycloack;

--
-- Name: resource_server_scope; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_server_scope (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    icon_uri character varying(255),
    resource_server_id character varying(36) NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_scope OWNER TO keycloack;

--
-- Name: resource_uris; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.resource_uris (
    resource_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.resource_uris OWNER TO keycloack;

--
-- Name: role_attribute; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.role_attribute (
    id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255)
);


ALTER TABLE public.role_attribute OWNER TO keycloack;

--
-- Name: scope_mapping; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.scope_mapping (
    client_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_mapping OWNER TO keycloack;

--
-- Name: scope_policy; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.scope_policy (
    scope_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_policy OWNER TO keycloack;

--
-- Name: user_attribute; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_attribute (
    name character varying(255) NOT NULL,
    value character varying(255),
    user_id character varying(36) NOT NULL,
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL
);


ALTER TABLE public.user_attribute OWNER TO keycloack;

--
-- Name: user_consent; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_consent (
    id character varying(36) NOT NULL,
    client_id character varying(255),
    user_id character varying(36) NOT NULL,
    created_date bigint,
    last_updated_date bigint,
    client_storage_provider character varying(36),
    external_client_id character varying(255)
);


ALTER TABLE public.user_consent OWNER TO keycloack;

--
-- Name: user_consent_client_scope; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_consent_client_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.user_consent_client_scope OWNER TO keycloack;

--
-- Name: user_entity; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_entity (
    id character varying(36) NOT NULL,
    email character varying(255),
    email_constraint character varying(255),
    email_verified boolean DEFAULT false NOT NULL,
    enabled boolean DEFAULT false NOT NULL,
    federation_link character varying(255),
    first_name character varying(255),
    last_name character varying(255),
    realm_id character varying(255),
    username character varying(255),
    created_timestamp bigint,
    service_account_client_link character varying(255),
    not_before integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.user_entity OWNER TO keycloack;

--
-- Name: user_federation_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_federation_config (
    user_federation_provider_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_config OWNER TO keycloack;

--
-- Name: user_federation_mapper; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_federation_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    federation_provider_id character varying(36) NOT NULL,
    federation_mapper_type character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.user_federation_mapper OWNER TO keycloack;

--
-- Name: user_federation_mapper_config; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_federation_mapper_config (
    user_federation_mapper_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_mapper_config OWNER TO keycloack;

--
-- Name: user_federation_provider; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_federation_provider (
    id character varying(36) NOT NULL,
    changed_sync_period integer,
    display_name character varying(255),
    full_sync_period integer,
    last_sync integer,
    priority integer,
    provider_name character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.user_federation_provider OWNER TO keycloack;

--
-- Name: user_group_membership; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_group_membership OWNER TO keycloack;

--
-- Name: user_required_action; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_required_action (
    user_id character varying(36) NOT NULL,
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL
);


ALTER TABLE public.user_required_action OWNER TO keycloack;

--
-- Name: user_role_mapping; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_role_mapping (
    role_id character varying(255) NOT NULL,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_role_mapping OWNER TO keycloack;

--
-- Name: user_session; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_session (
    id character varying(36) NOT NULL,
    auth_method character varying(255),
    ip_address character varying(255),
    last_session_refresh integer,
    login_username character varying(255),
    realm_id character varying(255),
    remember_me boolean DEFAULT false NOT NULL,
    started integer,
    user_id character varying(255),
    user_session_state integer,
    broker_session_id character varying(255),
    broker_user_id character varying(255)
);


ALTER TABLE public.user_session OWNER TO keycloack;

--
-- Name: user_session_note; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.user_session_note (
    user_session character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(2048)
);


ALTER TABLE public.user_session_note OWNER TO keycloack;

--
-- Name: username_login_failure; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.username_login_failure (
    realm_id character varying(36) NOT NULL,
    username character varying(255) NOT NULL,
    failed_login_not_before integer,
    last_failure bigint,
    last_ip_failure character varying(255),
    num_failures integer
);


ALTER TABLE public.username_login_failure OWNER TO keycloack;

--
-- Name: web_origins; Type: TABLE; Schema: public; Owner: keycloack
--

CREATE TABLE public.web_origins (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.web_origins OWNER TO keycloack;

--
-- Name: expenses id; Type: DEFAULT; Schema: expenses; Owner: keycloack
--

ALTER TABLE ONLY expenses.expenses ALTER COLUMN id SET DEFAULT nextval('expenses.expenses_id_seq'::regclass);


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: expenses; Owner: keycloack
--

INSERT INTO expenses.expenses VALUES (1, 'Lunch', 30.300000, '2019-07-30', '2020-10-06 15:20:13.817661', 1);
INSERT INTO expenses.expenses VALUES (2, 'Lenovo Tablet', 149.000000, '2019-07-30', '2020-10-06 15:20:13.817661', 1);
INSERT INTO expenses.expenses VALUES (3, 'Dinner', 30.300000, '2019-09-29', '2020-10-06 15:20:13.817661', 1);
INSERT INTO expenses.expenses VALUES (4, 'Book', 28.190000, '2019-09-29', '2020-10-06 15:20:13.817661', 1);
INSERT INTO expenses.expenses VALUES (5, 'TEST', 23.000000, '2020-10-06', '2020-10-06 15:39:46.905215', 1);


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: expenses; Owner: keycloack
--

SELECT pg_catalog.setval('expenses.expenses_id_seq', 5, true);


--
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: expenses; Owner: keycloack
--

INSERT INTO expenses.flyway_schema_history VALUES (0, NULL, '<< Flyway Schema Creation >>', 'SCHEMA', '"expenses"', NULL, 'keycloack', '2020-10-06 15:20:13.775308', 0, true);
INSERT INTO expenses.flyway_schema_history VALUES (1, '1.0.0', 'Quarkus', 'SQL', 'db/migration/V1.0.0__Quarkus.sql', 1558141439, 'keycloack', '2020-10-06 15:20:13.817661', 20, true);


--
-- Data for Name: report; Type: TABLE DATA; Schema: expenses; Owner: keycloack
--

INSERT INTO expenses.report VALUES (1, 'Simple Report', '2019-07-30', '2020-10-06 15:20:13.817661');


--
-- Data for Name: admin_event_entity; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.authentication_execution VALUES ('fb7c2788-03df-491e-bf4c-7d709cc7fa0b', NULL, 'auth-cookie', 'master', '33878def-a847-4f52-adae-a046ce0c6382', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('0b9fa40d-4e35-4f93-a9eb-6d3ebc5461ba', NULL, 'auth-spnego', 'master', '33878def-a847-4f52-adae-a046ce0c6382', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('972b63ce-0c2e-475b-80a5-2886cf678efa', NULL, 'identity-provider-redirector', 'master', '33878def-a847-4f52-adae-a046ce0c6382', 2, 25, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('e532baca-4d07-438d-b5ea-4c38b9db31b4', NULL, NULL, 'master', '33878def-a847-4f52-adae-a046ce0c6382', 2, 30, true, 'fe364395-6f50-49f3-a0a9-2ac478d259b2', NULL);
INSERT INTO public.authentication_execution VALUES ('863ed01f-7dc7-4088-854d-32a585a2dfeb', NULL, 'auth-username-password-form', 'master', 'fe364395-6f50-49f3-a0a9-2ac478d259b2', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('6241d9fe-472a-44a6-bed7-251ce613cdf7', NULL, NULL, 'master', 'fe364395-6f50-49f3-a0a9-2ac478d259b2', 1, 20, true, 'ebafba76-b834-4fe5-a33b-2fdaf1e48100', NULL);
INSERT INTO public.authentication_execution VALUES ('eb44cf22-5acb-475d-a409-a8a3df043c35', NULL, 'conditional-user-configured', 'master', 'ebafba76-b834-4fe5-a33b-2fdaf1e48100', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('14f36ff1-6c9c-48e6-ac7a-d888aa6bd303', NULL, 'auth-otp-form', 'master', 'ebafba76-b834-4fe5-a33b-2fdaf1e48100', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('5dd8be36-9c0a-46ca-8005-51e55958ba7a', NULL, 'direct-grant-validate-username', 'master', 'd332e9bd-fe23-4387-9195-bf21432d934c', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('3676764f-24a2-4d73-83f7-808bd2d18f21', NULL, 'direct-grant-validate-password', 'master', 'd332e9bd-fe23-4387-9195-bf21432d934c', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('55c03f20-b513-4711-a427-24e94caca14d', NULL, NULL, 'master', 'd332e9bd-fe23-4387-9195-bf21432d934c', 1, 30, true, '72c4b072-6abe-4cd1-b476-9d0314119cd8', NULL);
INSERT INTO public.authentication_execution VALUES ('f8966d78-d711-431c-9e80-76ec52e5a6d6', NULL, 'conditional-user-configured', 'master', '72c4b072-6abe-4cd1-b476-9d0314119cd8', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('8437e46f-fc4f-4d3c-8cae-3a674073c872', NULL, 'direct-grant-validate-otp', 'master', '72c4b072-6abe-4cd1-b476-9d0314119cd8', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('de0fdfed-9c2d-4fa0-bd07-69ce4b30a57a', NULL, 'registration-page-form', 'master', 'c7d8856c-d93c-48cd-9da3-a5147e2c6cbd', 0, 10, true, 'eb225fb4-84f1-4337-bf5e-65e59cdf80c3', NULL);
INSERT INTO public.authentication_execution VALUES ('4a0529e7-d1df-44a1-ba9c-ad246bc9c86c', NULL, 'registration-user-creation', 'master', 'eb225fb4-84f1-4337-bf5e-65e59cdf80c3', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ad7f185b-755a-4d30-b3e4-017c0ca29d57', NULL, 'registration-profile-action', 'master', 'eb225fb4-84f1-4337-bf5e-65e59cdf80c3', 0, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c0541ea4-dc90-4c56-8f21-73e01b5a8fa0', NULL, 'registration-password-action', 'master', 'eb225fb4-84f1-4337-bf5e-65e59cdf80c3', 0, 50, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('06ca15d5-f1b7-42c6-8fb6-1708eb8321e0', NULL, 'registration-recaptcha-action', 'master', 'eb225fb4-84f1-4337-bf5e-65e59cdf80c3', 3, 60, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('86427c8e-3416-4052-8faf-440c695051d5', NULL, 'reset-credentials-choose-user', 'master', '3c2e4380-4ca7-4586-a310-0d3e670eafd6', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('5962ac54-15f3-4a8e-9025-43ce1c411ebf', NULL, 'reset-credential-email', 'master', '3c2e4380-4ca7-4586-a310-0d3e670eafd6', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('66d3dfdd-a662-49a2-b2be-1c80db79e80c', NULL, 'reset-password', 'master', '3c2e4380-4ca7-4586-a310-0d3e670eafd6', 0, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('3b8e20c4-740f-4cf6-bef2-b58059c197d1', NULL, NULL, 'master', '3c2e4380-4ca7-4586-a310-0d3e670eafd6', 1, 40, true, 'ffedde36-8855-4d1a-aca0-9e2d0965d04e', NULL);
INSERT INTO public.authentication_execution VALUES ('00d147cd-97eb-4cba-86ee-d67672a2db22', NULL, 'conditional-user-configured', 'master', 'ffedde36-8855-4d1a-aca0-9e2d0965d04e', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('9a26313f-00de-4454-8fe8-18ffe5edddce', NULL, 'reset-otp', 'master', 'ffedde36-8855-4d1a-aca0-9e2d0965d04e', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('3380dc7b-5826-4c64-8d85-7bd4b6ad8813', NULL, 'client-secret', 'master', '602aecff-2bbf-4d29-a324-90dbdcc9461c', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('26a30267-d65a-4c2b-80f3-03f9b9ff463e', NULL, 'client-jwt', 'master', '602aecff-2bbf-4d29-a324-90dbdcc9461c', 2, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('752fde3d-0846-4894-9560-672f3ddd7be3', NULL, 'client-secret-jwt', 'master', '602aecff-2bbf-4d29-a324-90dbdcc9461c', 2, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('da1e923b-e2ca-4f36-851c-b799a15acb1b', NULL, 'client-x509', 'master', '602aecff-2bbf-4d29-a324-90dbdcc9461c', 2, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('0dfc111e-68fb-4616-82e3-6b60e7e9359f', NULL, 'idp-review-profile', 'master', 'd4773b85-23c0-4972-ab4d-952e392ed833', 0, 10, false, NULL, '9f0424e5-7e39-40bf-9f14-18bd97abb636');
INSERT INTO public.authentication_execution VALUES ('bcc26ba2-855f-46e8-81c4-a495dd309563', NULL, NULL, 'master', 'd4773b85-23c0-4972-ab4d-952e392ed833', 0, 20, true, '32f769bd-415f-422b-a456-5da54bd37e94', NULL);
INSERT INTO public.authentication_execution VALUES ('1d0c0680-3203-4f45-a53a-d1f299ba6cb4', NULL, 'idp-create-user-if-unique', 'master', '32f769bd-415f-422b-a456-5da54bd37e94', 2, 10, false, NULL, '3371f80b-f338-4918-ad83-f2c5e0677983');
INSERT INTO public.authentication_execution VALUES ('0478b47b-cfe6-46d9-9899-f3083c87489f', NULL, NULL, 'master', '32f769bd-415f-422b-a456-5da54bd37e94', 2, 20, true, '180f0e8f-474a-4ede-a0ba-efcc6d7778ca', NULL);
INSERT INTO public.authentication_execution VALUES ('018edccb-ad41-4c59-b5db-9fa71394dc0e', NULL, 'idp-confirm-link', 'master', '180f0e8f-474a-4ede-a0ba-efcc6d7778ca', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('38b33986-fe0f-4adf-802d-1e2bdcecce4f', NULL, NULL, 'master', '180f0e8f-474a-4ede-a0ba-efcc6d7778ca', 0, 20, true, 'e84e9fe9-72a9-4e11-9539-50c2d682358f', NULL);
INSERT INTO public.authentication_execution VALUES ('e81ebfe5-7e2d-442a-baec-6efe492509ec', NULL, 'idp-email-verification', 'master', 'e84e9fe9-72a9-4e11-9539-50c2d682358f', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('4576a59d-2f7b-423e-bf19-06125dafca5a', NULL, NULL, 'master', 'e84e9fe9-72a9-4e11-9539-50c2d682358f', 2, 20, true, '8610994a-3e5c-4303-839d-75338adf1bcc', NULL);
INSERT INTO public.authentication_execution VALUES ('c0cc9628-1ae1-4539-ad5b-f719ef031267', NULL, 'idp-username-password-form', 'master', '8610994a-3e5c-4303-839d-75338adf1bcc', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('798fc075-4093-4300-bd8a-409089d42028', NULL, NULL, 'master', '8610994a-3e5c-4303-839d-75338adf1bcc', 1, 20, true, '24742e58-a379-48fc-8e11-7cd7ef708ad2', NULL);
INSERT INTO public.authentication_execution VALUES ('bf809934-273e-4935-b32b-944cbe3b24d8', NULL, 'conditional-user-configured', 'master', '24742e58-a379-48fc-8e11-7cd7ef708ad2', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('39d17c3d-4d8f-4d64-996a-f111067e4b2f', NULL, 'auth-otp-form', 'master', '24742e58-a379-48fc-8e11-7cd7ef708ad2', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ca59ea2f-3f47-421f-92bb-5f79d053c31a', NULL, 'http-basic-authenticator', 'master', 'eedc81b5-3749-442b-8bfd-26d05da15d41', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('44891358-7b02-49c4-bbda-d22df4897b2e', NULL, 'docker-http-basic-authenticator', 'master', 'b43ae151-9d33-4530-9f70-5a77bfe69b3c', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('6568eb93-f487-4e08-81d0-955caa6e3be3', NULL, 'no-cookie-redirect', 'master', '22db3c07-4fdb-42de-94be-1d1aa0a004ce', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('bec89242-e8cb-4bce-b6af-d30c53ecb041', NULL, NULL, 'master', '22db3c07-4fdb-42de-94be-1d1aa0a004ce', 0, 20, true, '7a43b9d7-1dd3-41fc-a541-3906661eba32', NULL);
INSERT INTO public.authentication_execution VALUES ('bd7cceb4-7e18-4b9b-801b-0640fca985ac', NULL, 'basic-auth', 'master', '7a43b9d7-1dd3-41fc-a541-3906661eba32', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('36318b2c-b6e2-462f-963f-38e413356081', NULL, 'basic-auth-otp', 'master', '7a43b9d7-1dd3-41fc-a541-3906661eba32', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a0290605-8cb4-45de-8401-0701967e9287', NULL, 'auth-spnego', 'master', '7a43b9d7-1dd3-41fc-a541-3906661eba32', 3, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c7aa8e72-2a43-4548-8ca6-0b35270c211b', NULL, 'auth-cookie', 'basic', 'bddb3009-8e26-4cb1-b243-115bae4523b2', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ce9094b0-f7d8-4f58-924b-37c53f34fb1f', NULL, 'auth-spnego', 'basic', 'bddb3009-8e26-4cb1-b243-115bae4523b2', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('0b061601-93d2-47c1-8151-1dc6733fbef7', NULL, 'identity-provider-redirector', 'basic', 'bddb3009-8e26-4cb1-b243-115bae4523b2', 2, 25, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('4d8079fd-253a-44db-b814-5e36e2780e9d', NULL, NULL, 'basic', 'bddb3009-8e26-4cb1-b243-115bae4523b2', 2, 30, true, 'f892a016-f3fd-4c47-a475-8315debf2873', NULL);
INSERT INTO public.authentication_execution VALUES ('f0009310-47bf-467e-ad1b-cb75e5c2ba65', NULL, 'auth-username-password-form', 'basic', 'f892a016-f3fd-4c47-a475-8315debf2873', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('e2b01368-e577-4ff4-92d0-c160e3862acd', NULL, NULL, 'basic', 'f892a016-f3fd-4c47-a475-8315debf2873', 1, 20, true, 'c4b7a63c-4a25-4af4-af0d-859f6d2f1180', NULL);
INSERT INTO public.authentication_execution VALUES ('c2ac0bea-f804-4ae5-8c1d-af51626a652c', NULL, 'conditional-user-configured', 'basic', 'c4b7a63c-4a25-4af4-af0d-859f6d2f1180', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('406a4e87-98be-4feb-9fa6-078d65b18366', NULL, 'auth-otp-form', 'basic', 'c4b7a63c-4a25-4af4-af0d-859f6d2f1180', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('39c3eff6-d36d-4127-ae79-17c1dc79657d', NULL, 'direct-grant-validate-username', 'basic', '6a901f8b-ad0e-47d2-8a6c-55ff288ec8b4', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c6a4f330-2aa0-48cd-8d27-651266a72c16', NULL, 'direct-grant-validate-password', 'basic', '6a901f8b-ad0e-47d2-8a6c-55ff288ec8b4', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c506b134-e6df-4c53-96ff-923babc07b19', NULL, NULL, 'basic', '6a901f8b-ad0e-47d2-8a6c-55ff288ec8b4', 1, 30, true, '4aa1a4a0-a8ff-4a2a-97da-c0ac8c0fa916', NULL);
INSERT INTO public.authentication_execution VALUES ('6f3b8342-0f7b-4528-861c-b02d73735332', NULL, 'conditional-user-configured', 'basic', '4aa1a4a0-a8ff-4a2a-97da-c0ac8c0fa916', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('d44bc9d0-e9a2-4087-8606-89a6005042f2', NULL, 'direct-grant-validate-otp', 'basic', '4aa1a4a0-a8ff-4a2a-97da-c0ac8c0fa916', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ad475fd8-1eed-4538-b798-c23b00dbb111', NULL, 'registration-page-form', 'basic', '08d61b81-f272-4a84-b393-398b3c82383a', 0, 10, true, '9fb9dd25-9427-4b21-9d54-a3fc313bcf16', NULL);
INSERT INTO public.authentication_execution VALUES ('baeff23c-51ee-4240-9d61-3decb1c38d63', NULL, 'registration-user-creation', 'basic', '9fb9dd25-9427-4b21-9d54-a3fc313bcf16', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('170fb9f2-0b64-48f0-919a-c49c450ee015', NULL, 'registration-profile-action', 'basic', '9fb9dd25-9427-4b21-9d54-a3fc313bcf16', 0, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('30ca7893-b5b1-4baf-bef3-f536715ae919', NULL, 'registration-password-action', 'basic', '9fb9dd25-9427-4b21-9d54-a3fc313bcf16', 0, 50, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('93cd1f89-b067-4d05-bb3c-6428f981874c', NULL, 'registration-recaptcha-action', 'basic', '9fb9dd25-9427-4b21-9d54-a3fc313bcf16', 3, 60, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('b31fed4e-adfd-4f35-b9cf-72aa646022df', NULL, 'reset-credentials-choose-user', 'basic', '3e31c26e-ad51-4c8b-9991-9c763c543acd', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('1ca81404-2e07-4040-9103-73b3c2ddf8ec', NULL, 'reset-credential-email', 'basic', '3e31c26e-ad51-4c8b-9991-9c763c543acd', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('59826849-6e1c-4aa0-ae61-3abbc2cdf017', NULL, 'reset-password', 'basic', '3e31c26e-ad51-4c8b-9991-9c763c543acd', 0, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('13e800b4-9562-401f-be8d-31e5849f996d', NULL, NULL, 'basic', '3e31c26e-ad51-4c8b-9991-9c763c543acd', 1, 40, true, '8f7ba4a3-0523-4182-9f53-42fba5b97663', NULL);
INSERT INTO public.authentication_execution VALUES ('729de617-314c-4278-91d6-f7dc527800c8', NULL, 'conditional-user-configured', 'basic', '8f7ba4a3-0523-4182-9f53-42fba5b97663', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a2d7b5a2-2fc5-4595-8a07-0dad4e32bc46', NULL, 'reset-otp', 'basic', '8f7ba4a3-0523-4182-9f53-42fba5b97663', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('d4fee66a-6753-440f-8760-e8249ed58673', NULL, 'client-secret', 'basic', 'e04b7e53-7c59-4d2f-a134-cc023c1bb435', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('146f60a6-6b30-44f6-b6e8-fcba13644f8f', NULL, 'client-jwt', 'basic', 'e04b7e53-7c59-4d2f-a134-cc023c1bb435', 2, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('f614b189-7565-4d6b-96d4-b6b60d434413', NULL, 'client-secret-jwt', 'basic', 'e04b7e53-7c59-4d2f-a134-cc023c1bb435', 2, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('78374c4d-e4cf-4a32-87ea-43ea919a9f9d', NULL, 'client-x509', 'basic', 'e04b7e53-7c59-4d2f-a134-cc023c1bb435', 2, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('9abb05f9-374c-4251-bf84-3eb2be2756d6', NULL, 'idp-review-profile', 'basic', 'c042e67d-ebe0-41be-b146-ff17847b170c', 0, 10, false, NULL, 'c985cee6-378d-40ba-897b-61cf7bb6d3ff');
INSERT INTO public.authentication_execution VALUES ('8a242143-f6c0-4c91-9cac-8789ef44884c', NULL, NULL, 'basic', 'c042e67d-ebe0-41be-b146-ff17847b170c', 0, 20, true, 'f58820fa-5e6d-4eff-9877-f577efe3f7bc', NULL);
INSERT INTO public.authentication_execution VALUES ('0b694b14-e6ee-442f-a396-8ff87c47e0c9', NULL, 'idp-create-user-if-unique', 'basic', 'f58820fa-5e6d-4eff-9877-f577efe3f7bc', 2, 10, false, NULL, '56f6727c-c418-494b-9104-da889acce8e1');
INSERT INTO public.authentication_execution VALUES ('ccbd8f61-d3bb-4240-b83b-80a979425be3', NULL, NULL, 'basic', 'f58820fa-5e6d-4eff-9877-f577efe3f7bc', 2, 20, true, '331d6993-442b-45a1-a9cb-87984c05e65e', NULL);
INSERT INTO public.authentication_execution VALUES ('f8c2e40a-61a2-4c02-85dc-f27e8e0289fe', NULL, 'idp-confirm-link', 'basic', '331d6993-442b-45a1-a9cb-87984c05e65e', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('8b4eded8-bf35-4af1-9443-d34b62002026', NULL, NULL, 'basic', '331d6993-442b-45a1-a9cb-87984c05e65e', 0, 20, true, '975520cb-0093-4044-b172-2ceca934c8eb', NULL);
INSERT INTO public.authentication_execution VALUES ('95226ec4-6163-4ec1-99f5-7a1e07ed611a', NULL, 'idp-email-verification', 'basic', '975520cb-0093-4044-b172-2ceca934c8eb', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ef761942-8062-4e86-85bf-9a435e4f0616', NULL, NULL, 'basic', '975520cb-0093-4044-b172-2ceca934c8eb', 2, 20, true, 'c2d90c36-4912-4d61-831c-1e745cc3fdb4', NULL);
INSERT INTO public.authentication_execution VALUES ('488be5b4-0784-481b-9a04-235996a97c3d', NULL, 'idp-username-password-form', 'basic', 'c2d90c36-4912-4d61-831c-1e745cc3fdb4', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('f00cf742-cd95-497f-99c7-68adf9558714', NULL, NULL, 'basic', 'c2d90c36-4912-4d61-831c-1e745cc3fdb4', 1, 20, true, '0223ec96-ab14-4e9a-8921-f1b42ca2fb4a', NULL);
INSERT INTO public.authentication_execution VALUES ('ccdcb82d-c349-4506-860c-c194d52c302f', NULL, 'conditional-user-configured', 'basic', '0223ec96-ab14-4e9a-8921-f1b42ca2fb4a', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('9fd636d4-afab-42ee-9d3a-2b44f34d0cc8', NULL, 'auth-otp-form', 'basic', '0223ec96-ab14-4e9a-8921-f1b42ca2fb4a', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('17730b0e-ab97-496b-8c9f-3a4ae6b89c45', NULL, 'http-basic-authenticator', 'basic', 'be303766-1f9d-40d9-b41d-cb53831884f6', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('17c7b893-b88d-4085-9ab8-025e544991b0', NULL, 'docker-http-basic-authenticator', 'basic', 'bcf69207-cbef-450a-a39f-633edcd311e8', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('f20272a6-dca3-419f-947e-5bb581a6fd7b', NULL, 'no-cookie-redirect', 'basic', '3198416a-8c09-4f56-947e-afd896bbaee4', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a0ac5fa8-3467-4f85-b979-a5743848597b', NULL, NULL, 'basic', '3198416a-8c09-4f56-947e-afd896bbaee4', 0, 20, true, '660a319b-32ce-47e5-aee4-8d2bee59fdd6', NULL);
INSERT INTO public.authentication_execution VALUES ('e2aa9762-13b1-4c9c-bf40-96bebc718806', NULL, 'basic-auth', 'basic', '660a319b-32ce-47e5-aee4-8d2bee59fdd6', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('2206debb-09d8-4cca-9408-bebbbadbb973', NULL, 'basic-auth-otp', 'basic', '660a319b-32ce-47e5-aee4-8d2bee59fdd6', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('38c1bdbc-e5e2-4fe7-bc2b-7330fa994efb', NULL, 'auth-spnego', 'basic', '660a319b-32ce-47e5-aee4-8d2bee59fdd6', 3, 30, false, NULL, NULL);


--
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.authentication_flow VALUES ('33878def-a847-4f52-adae-a046ce0c6382', 'browser', 'browser based authentication', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('fe364395-6f50-49f3-a0a9-2ac478d259b2', 'forms', 'Username, password, otp and other auth forms.', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('ebafba76-b834-4fe5-a33b-2fdaf1e48100', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('d332e9bd-fe23-4387-9195-bf21432d934c', 'direct grant', 'OpenID Connect Resource Owner Grant', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('72c4b072-6abe-4cd1-b476-9d0314119cd8', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('c7d8856c-d93c-48cd-9da3-a5147e2c6cbd', 'registration', 'registration flow', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('eb225fb4-84f1-4337-bf5e-65e59cdf80c3', 'registration form', 'registration form', 'master', 'form-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('3c2e4380-4ca7-4586-a310-0d3e670eafd6', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('ffedde36-8855-4d1a-aca0-9e2d0965d04e', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('602aecff-2bbf-4d29-a324-90dbdcc9461c', 'clients', 'Base authentication for clients', 'master', 'client-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('d4773b85-23c0-4972-ab4d-952e392ed833', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('32f769bd-415f-422b-a456-5da54bd37e94', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('180f0e8f-474a-4ede-a0ba-efcc6d7778ca', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('e84e9fe9-72a9-4e11-9539-50c2d682358f', 'Account verification options', 'Method with which to verity the existing account', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('8610994a-3e5c-4303-839d-75338adf1bcc', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('24742e58-a379-48fc-8e11-7cd7ef708ad2', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('eedc81b5-3749-442b-8bfd-26d05da15d41', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('b43ae151-9d33-4530-9f70-5a77bfe69b3c', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('22db3c07-4fdb-42de-94be-1d1aa0a004ce', 'http challenge', 'An authentication flow based on challenge-response HTTP Authentication Schemes', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('7a43b9d7-1dd3-41fc-a541-3906661eba32', 'Authentication Options', 'Authentication options.', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('bddb3009-8e26-4cb1-b243-115bae4523b2', 'browser', 'browser based authentication', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('f892a016-f3fd-4c47-a475-8315debf2873', 'forms', 'Username, password, otp and other auth forms.', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('c4b7a63c-4a25-4af4-af0d-859f6d2f1180', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('6a901f8b-ad0e-47d2-8a6c-55ff288ec8b4', 'direct grant', 'OpenID Connect Resource Owner Grant', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('4aa1a4a0-a8ff-4a2a-97da-c0ac8c0fa916', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('08d61b81-f272-4a84-b393-398b3c82383a', 'registration', 'registration flow', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('9fb9dd25-9427-4b21-9d54-a3fc313bcf16', 'registration form', 'registration form', 'basic', 'form-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('3e31c26e-ad51-4c8b-9991-9c763c543acd', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('8f7ba4a3-0523-4182-9f53-42fba5b97663', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('e04b7e53-7c59-4d2f-a134-cc023c1bb435', 'clients', 'Base authentication for clients', 'basic', 'client-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('c042e67d-ebe0-41be-b146-ff17847b170c', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('f58820fa-5e6d-4eff-9877-f577efe3f7bc', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('331d6993-442b-45a1-a9cb-87984c05e65e', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('975520cb-0093-4044-b172-2ceca934c8eb', 'Account verification options', 'Method with which to verity the existing account', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('c2d90c36-4912-4d61-831c-1e745cc3fdb4', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('0223ec96-ab14-4e9a-8921-f1b42ca2fb4a', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('be303766-1f9d-40d9-b41d-cb53831884f6', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('bcf69207-cbef-450a-a39f-633edcd311e8', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('3198416a-8c09-4f56-947e-afd896bbaee4', 'http challenge', 'An authentication flow based on challenge-response HTTP Authentication Schemes', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('660a319b-32ce-47e5-aee4-8d2bee59fdd6', 'Authentication Options', 'Authentication options.', 'basic', 'basic-flow', false, true);


--
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.authenticator_config VALUES ('9f0424e5-7e39-40bf-9f14-18bd97abb636', 'review profile config', 'master');
INSERT INTO public.authenticator_config VALUES ('3371f80b-f338-4918-ad83-f2c5e0677983', 'create unique user config', 'master');
INSERT INTO public.authenticator_config VALUES ('c985cee6-378d-40ba-897b-61cf7bb6d3ff', 'review profile config', 'basic');
INSERT INTO public.authenticator_config VALUES ('56f6727c-c418-494b-9104-da889acce8e1', 'create unique user config', 'basic');


--
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.authenticator_config_entry VALUES ('9f0424e5-7e39-40bf-9f14-18bd97abb636', 'missing', 'update.profile.on.first.login');
INSERT INTO public.authenticator_config_entry VALUES ('3371f80b-f338-4918-ad83-f2c5e0677983', 'false', 'require.password.update.after.registration');
INSERT INTO public.authenticator_config_entry VALUES ('c985cee6-378d-40ba-897b-61cf7bb6d3ff', 'missing', 'update.profile.on.first.login');
INSERT INTO public.authenticator_config_entry VALUES ('56f6727c-c418-494b-9104-da889acce8e1', 'false', 'require.password.update.after.registration');


--
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', true, true, 'master-realm', 0, false, 'c48450b7-c6d4-4bcd-b946-2d92168ef5ad', NULL, true, NULL, false, 'master', NULL, 0, false, false, 'master Realm', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', true, false, 'account', 0, false, 'fc9f3da3-2092-45c1-a80d-604d43fdc2f4', '/realms/master/account/', false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_account}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', true, false, 'account-console', 0, true, 'ca02c919-cc2d-4071-9b4e-ab2f9525abad', '/realms/master/account/', false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_account-console}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', true, false, 'broker', 0, false, '43aa5f2e-aa60-4484-b573-4a28718d3b13', NULL, false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_broker}', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', true, false, 'security-admin-console', 0, true, '7087e539-9c2d-4499-b2f0-db303fdfcc21', '/admin/master/console/', false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_security-admin-console}', false, 'client-secret', '${authAdminUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', true, false, 'admin-cli', 0, true, '72fbcfe2-9876-4475-8d52-4b5e409a92ef', NULL, false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_admin-cli}', false, 'client-secret', NULL, NULL, NULL, false, false, true, false);
INSERT INTO public.client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', true, true, 'basic-realm', 0, false, '0de68ced-a9af-4a16-a609-8ce1158a4a7f', NULL, true, NULL, false, 'master', NULL, 0, false, false, 'basic Realm', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', true, false, 'realm-management', 0, false, 'ab6e6a73-207e-46a2-9320-fca1d4280c30', NULL, true, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_realm-management}', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', true, false, 'account', 0, false, '04dacbf9-4d5b-447a-a23d-0ac269ebe63f', '/realms/basic/account/', false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_account}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', true, false, 'account-console', 0, true, 'c4f756f9-da21-44a7-824f-218258780792', '/realms/basic/account/', false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_account-console}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', true, false, 'broker', 0, false, '04efe569-61a2-4b99-9776-144a67b8fb44', NULL, false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_broker}', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', true, false, 'security-admin-console', 0, true, '56e610d5-11ea-4d0e-ba31-80089a3fcb3b', '/admin/basic/console/', false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_security-admin-console}', false, 'client-secret', '${authAdminUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', true, false, 'admin-cli', 0, true, '413ee227-3e4d-4f15-a921-294aeb97834f', NULL, false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_admin-cli}', false, 'client-secret', NULL, NULL, NULL, false, false, true, false);
INSERT INTO public.client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', true, true, 'app-react', 0, true, '02cfb564-5414-4f61-ba20-95b8b8322eb5', NULL, false, 'http://localhost:3000', false, 'basic', 'openid-connect', -1, false, false, NULL, false, 'client-secret', 'http://localhost:3000', NULL, NULL, true, false, true, false);
INSERT INTO public.client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', true, true, 'backend', 0, false, 'b530c9d1-45f0-4f30-87d2-471530534c4a', NULL, false, NULL, false, 'basic', 'openid-connect', -1, false, false, NULL, true, 'client-secret', NULL, NULL, NULL, false, false, true, false);


--
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.client_attributes VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', 'S256', 'pkce.code.challenge.method');
INSERT INTO public.client_attributes VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', 'S256', 'pkce.code.challenge.method');
INSERT INTO public.client_attributes VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', 'S256', 'pkce.code.challenge.method');
INSERT INTO public.client_attributes VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', 'S256', 'pkce.code.challenge.method');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.server.signature');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.server.signature.keyinfo.ext');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.assertion.signature');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.client.signature');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.encrypt');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.authnstatement');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.onetimeuse.condition');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml_force_name_id_format');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.multivalued.roles');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'saml.force.post.binding');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'exclude.session.state.from.auth.response');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'tls.client.certificate.bound.access.tokens');
INSERT INTO public.client_attributes VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'false', 'display.on.consent.screen');


--
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client_default_roles; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.client_default_roles VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '456fccf5-c6b4-4533-bd33-c2ad328ca885');
INSERT INTO public.client_default_roles VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '7ebb3989-fac5-4c07-82db-5b5811106821');
INSERT INTO public.client_default_roles VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', '82a28430-f709-41d6-af26-08be2c07e0d9');
INSERT INTO public.client_default_roles VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', '8087d3e2-e8ba-48f3-b795-df7150cc5dd8');


--
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.client_scope VALUES ('8eeeae43-176b-47d2-afc0-bfb50051d5cb', 'offline_access', 'master', 'OpenID Connect built-in scope: offline_access', 'openid-connect');
INSERT INTO public.client_scope VALUES ('e467318e-1417-40eb-bc71-77c5947bbb27', 'role_list', 'master', 'SAML role list', 'saml');
INSERT INTO public.client_scope VALUES ('3d593446-7d4c-4b74-aca0-c54f65d2b95c', 'profile', 'master', 'OpenID Connect built-in scope: profile', 'openid-connect');
INSERT INTO public.client_scope VALUES ('8d44d345-894d-48ba-8edd-9527b442349f', 'email', 'master', 'OpenID Connect built-in scope: email', 'openid-connect');
INSERT INTO public.client_scope VALUES ('d6a1628c-1ab3-4825-a5cf-c3558c5f6177', 'address', 'master', 'OpenID Connect built-in scope: address', 'openid-connect');
INSERT INTO public.client_scope VALUES ('db3341e6-30c7-4e75-82ea-73694cdccc99', 'phone', 'master', 'OpenID Connect built-in scope: phone', 'openid-connect');
INSERT INTO public.client_scope VALUES ('26c35a13-7654-4bd4-a90a-1c24b3ea42e3', 'roles', 'master', 'OpenID Connect scope for add user roles to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('2b6d635d-7582-4627-877f-75b52a41bd1b', 'web-origins', 'master', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('7e0334e1-5511-4209-a595-ceff179bc68d', 'microprofile-jwt', 'master', 'Microprofile - JWT built-in scope', 'openid-connect');
INSERT INTO public.client_scope VALUES ('7e90f56f-1663-446e-beda-97b5dc3f47c3', 'offline_access', 'basic', 'OpenID Connect built-in scope: offline_access', 'openid-connect');
INSERT INTO public.client_scope VALUES ('bf778e8f-203b-42e2-ae8f-022f19183365', 'role_list', 'basic', 'SAML role list', 'saml');
INSERT INTO public.client_scope VALUES ('d1c987c5-5be9-42c7-82ba-509cfd46f785', 'profile', 'basic', 'OpenID Connect built-in scope: profile', 'openid-connect');
INSERT INTO public.client_scope VALUES ('2662754e-12e2-4756-9174-8532c1446dc7', 'email', 'basic', 'OpenID Connect built-in scope: email', 'openid-connect');
INSERT INTO public.client_scope VALUES ('b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', 'address', 'basic', 'OpenID Connect built-in scope: address', 'openid-connect');
INSERT INTO public.client_scope VALUES ('28da7ca3-f9dc-4677-a119-7b1ce5385b5e', 'phone', 'basic', 'OpenID Connect built-in scope: phone', 'openid-connect');
INSERT INTO public.client_scope VALUES ('dd4bb033-5caa-457c-b5f4-d229dae39846', 'roles', 'basic', 'OpenID Connect scope for add user roles to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('6ebf1a5f-0d7d-415a-8827-01f090b7e363', 'web-origins', 'basic', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('3ee644de-d428-41e3-8a78-94c75365d25f', 'microprofile-jwt', 'basic', 'Microprofile - JWT built-in scope', 'openid-connect');


--
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.client_scope_attributes VALUES ('8eeeae43-176b-47d2-afc0-bfb50051d5cb', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('8eeeae43-176b-47d2-afc0-bfb50051d5cb', '${offlineAccessScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('e467318e-1417-40eb-bc71-77c5947bbb27', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('e467318e-1417-40eb-bc71-77c5947bbb27', '${samlRoleListScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('3d593446-7d4c-4b74-aca0-c54f65d2b95c', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('3d593446-7d4c-4b74-aca0-c54f65d2b95c', '${profileScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('3d593446-7d4c-4b74-aca0-c54f65d2b95c', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('8d44d345-894d-48ba-8edd-9527b442349f', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('8d44d345-894d-48ba-8edd-9527b442349f', '${emailScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('8d44d345-894d-48ba-8edd-9527b442349f', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('d6a1628c-1ab3-4825-a5cf-c3558c5f6177', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('d6a1628c-1ab3-4825-a5cf-c3558c5f6177', '${addressScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('d6a1628c-1ab3-4825-a5cf-c3558c5f6177', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('db3341e6-30c7-4e75-82ea-73694cdccc99', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('db3341e6-30c7-4e75-82ea-73694cdccc99', '${phoneScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('db3341e6-30c7-4e75-82ea-73694cdccc99', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('26c35a13-7654-4bd4-a90a-1c24b3ea42e3', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('26c35a13-7654-4bd4-a90a-1c24b3ea42e3', '${rolesScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('26c35a13-7654-4bd4-a90a-1c24b3ea42e3', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('2b6d635d-7582-4627-877f-75b52a41bd1b', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('2b6d635d-7582-4627-877f-75b52a41bd1b', '', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('2b6d635d-7582-4627-877f-75b52a41bd1b', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('7e0334e1-5511-4209-a595-ceff179bc68d', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('7e0334e1-5511-4209-a595-ceff179bc68d', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('7e90f56f-1663-446e-beda-97b5dc3f47c3', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('7e90f56f-1663-446e-beda-97b5dc3f47c3', '${offlineAccessScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('bf778e8f-203b-42e2-ae8f-022f19183365', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('bf778e8f-203b-42e2-ae8f-022f19183365', '${samlRoleListScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('d1c987c5-5be9-42c7-82ba-509cfd46f785', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('d1c987c5-5be9-42c7-82ba-509cfd46f785', '${profileScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('d1c987c5-5be9-42c7-82ba-509cfd46f785', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('2662754e-12e2-4756-9174-8532c1446dc7', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('2662754e-12e2-4756-9174-8532c1446dc7', '${emailScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('2662754e-12e2-4756-9174-8532c1446dc7', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', '${addressScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('28da7ca3-f9dc-4677-a119-7b1ce5385b5e', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('28da7ca3-f9dc-4677-a119-7b1ce5385b5e', '${phoneScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('28da7ca3-f9dc-4677-a119-7b1ce5385b5e', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('dd4bb033-5caa-457c-b5f4-d229dae39846', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('dd4bb033-5caa-457c-b5f4-d229dae39846', '${rolesScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('dd4bb033-5caa-457c-b5f4-d229dae39846', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('6ebf1a5f-0d7d-415a-8827-01f090b7e363', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('6ebf1a5f-0d7d-415a-8827-01f090b7e363', '', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('6ebf1a5f-0d7d-415a-8827-01f090b7e363', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('3ee644de-d428-41e3-8a78-94c75365d25f', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('3ee644de-d428-41e3-8a78-94c75365d25f', 'true', 'include.in.token.scope');


--
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', 'e467318e-1417-40eb-bc71-77c5947bbb27', true);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', 'e467318e-1417-40eb-bc71-77c5947bbb27', true);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', 'e467318e-1417-40eb-bc71-77c5947bbb27', true);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', 'e467318e-1417-40eb-bc71-77c5947bbb27', true);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', 'e467318e-1417-40eb-bc71-77c5947bbb27', true);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', 'e467318e-1417-40eb-bc71-77c5947bbb27', true);
INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '3d593446-7d4c-4b74-aca0-c54f65d2b95c', true);
INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '2b6d635d-7582-4627-877f-75b52a41bd1b', true);
INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '8d44d345-894d-48ba-8edd-9527b442349f', true);
INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '26c35a13-7654-4bd4-a90a-1c24b3ea42e3', true);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', '3d593446-7d4c-4b74-aca0-c54f65d2b95c', true);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', '2b6d635d-7582-4627-877f-75b52a41bd1b', true);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', '8d44d345-894d-48ba-8edd-9527b442349f', true);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', '26c35a13-7654-4bd4-a90a-1c24b3ea42e3', true);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', '3d593446-7d4c-4b74-aca0-c54f65d2b95c', true);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', '2b6d635d-7582-4627-877f-75b52a41bd1b', true);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', '8d44d345-894d-48ba-8edd-9527b442349f', true);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', '26c35a13-7654-4bd4-a90a-1c24b3ea42e3', true);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', '3d593446-7d4c-4b74-aca0-c54f65d2b95c', true);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', '2b6d635d-7582-4627-877f-75b52a41bd1b', true);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', '8d44d345-894d-48ba-8edd-9527b442349f', true);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', '26c35a13-7654-4bd4-a90a-1c24b3ea42e3', true);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', '3d593446-7d4c-4b74-aca0-c54f65d2b95c', true);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', '2b6d635d-7582-4627-877f-75b52a41bd1b', true);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', '8d44d345-894d-48ba-8edd-9527b442349f', true);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', '26c35a13-7654-4bd4-a90a-1c24b3ea42e3', true);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', '3d593446-7d4c-4b74-aca0-c54f65d2b95c', true);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', '2b6d635d-7582-4627-877f-75b52a41bd1b', true);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', '8d44d345-894d-48ba-8edd-9527b442349f', true);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', '26c35a13-7654-4bd4-a90a-1c24b3ea42e3', true);
INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '7e0334e1-5511-4209-a595-ceff179bc68d', false);
INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177', false);
INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '8eeeae43-176b-47d2-afc0-bfb50051d5cb', false);
INSERT INTO public.client_scope_client VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', 'db3341e6-30c7-4e75-82ea-73694cdccc99', false);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', '7e0334e1-5511-4209-a595-ceff179bc68d', false);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177', false);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', '8eeeae43-176b-47d2-afc0-bfb50051d5cb', false);
INSERT INTO public.client_scope_client VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', 'db3341e6-30c7-4e75-82ea-73694cdccc99', false);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', '7e0334e1-5511-4209-a595-ceff179bc68d', false);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177', false);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', '8eeeae43-176b-47d2-afc0-bfb50051d5cb', false);
INSERT INTO public.client_scope_client VALUES ('a2703a6e-08db-4d0c-8913-3cf97543b0f3', 'db3341e6-30c7-4e75-82ea-73694cdccc99', false);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', '7e0334e1-5511-4209-a595-ceff179bc68d', false);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177', false);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', '8eeeae43-176b-47d2-afc0-bfb50051d5cb', false);
INSERT INTO public.client_scope_client VALUES ('45929fa3-9c70-4319-a99b-2363661ddc51', 'db3341e6-30c7-4e75-82ea-73694cdccc99', false);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', '7e0334e1-5511-4209-a595-ceff179bc68d', false);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177', false);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', '8eeeae43-176b-47d2-afc0-bfb50051d5cb', false);
INSERT INTO public.client_scope_client VALUES ('a2d088c4-62f3-45db-a256-352d64eaaeb2', 'db3341e6-30c7-4e75-82ea-73694cdccc99', false);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', '7e0334e1-5511-4209-a595-ceff179bc68d', false);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177', false);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', '8eeeae43-176b-47d2-afc0-bfb50051d5cb', false);
INSERT INTO public.client_scope_client VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', 'db3341e6-30c7-4e75-82ea-73694cdccc99', false);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', 'e467318e-1417-40eb-bc71-77c5947bbb27', true);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', '3d593446-7d4c-4b74-aca0-c54f65d2b95c', true);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', '2b6d635d-7582-4627-877f-75b52a41bd1b', true);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', '8d44d345-894d-48ba-8edd-9527b442349f', true);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', '26c35a13-7654-4bd4-a90a-1c24b3ea42e3', true);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', '7e0334e1-5511-4209-a595-ceff179bc68d', false);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177', false);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', '8eeeae43-176b-47d2-afc0-bfb50051d5cb', false);
INSERT INTO public.client_scope_client VALUES ('147171d1-542f-44a0-b186-7aa080feee1d', 'db3341e6-30c7-4e75-82ea-73694cdccc99', false);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.client_scope_client VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', '3ee644de-d428-41e3-8a78-94c75365d25f', false);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.client_scope_client VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', '3ee644de-d428-41e3-8a78-94c75365d25f', false);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.client_scope_client VALUES ('f5a9cc85-fd60-43f3-b3a4-cd3627b5d9c0', '3ee644de-d428-41e3-8a78-94c75365d25f', false);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.client_scope_client VALUES ('34344398-f203-4014-b38f-7e7d448f1f0a', '3ee644de-d428-41e3-8a78-94c75365d25f', false);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.client_scope_client VALUES ('573645d5-934f-4853-bdd8-6e617ff7cb60', '3ee644de-d428-41e3-8a78-94c75365d25f', false);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.client_scope_client VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', '3ee644de-d428-41e3-8a78-94c75365d25f', false);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.client_scope_client VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', '3ee644de-d428-41e3-8a78-94c75365d25f', false);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.client_scope_client VALUES ('b58b8848-e780-438e-ba0f-c2c512c9b7a8', '3ee644de-d428-41e3-8a78-94c75365d25f', false);


--
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.client_scope_role_mapping VALUES ('8eeeae43-176b-47d2-afc0-bfb50051d5cb', '26e11c5c-6b33-4670-a9b8-cca6acddcd0e');
INSERT INTO public.client_scope_role_mapping VALUES ('7e90f56f-1663-446e-beda-97b5dc3f47c3', 'd8f3a233-72f4-4b8b-a2fe-66b6c34e0cfc');


--
-- Data for Name: client_session; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client_session_auth_status; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client_session_note; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client_session_prot_mapper; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client_session_role; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: client_user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.component VALUES ('5556f3d2-8c5e-4281-9e72-097daa02ccc9', 'Trusted Hosts', 'master', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('ba944746-e5a7-4a36-bab0-9748e66d8757', 'Consent Required', 'master', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('3e4dc842-51d4-49f2-8c6a-98420476eb32', 'Full Scope Disabled', 'master', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('7cd7bf20-15c2-44a2-bf69-b7b24f4d89da', 'Max Clients Limit', 'master', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'Allowed Protocol Mapper Types', 'master', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('405c2fe5-d0d2-4af3-bdbb-dcb54ca296c5', 'Allowed Client Scopes', 'master', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('f334656f-5258-4d17-a61e-2d37b12ed662', 'Allowed Protocol Mapper Types', 'master', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'authenticated');
INSERT INTO public.component VALUES ('94dbd1b1-cb39-4d5f-afa7-03b4e4feb6de', 'Allowed Client Scopes', 'master', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'authenticated');
INSERT INTO public.component VALUES ('f3aca198-6b5b-437c-9d5a-99f21f63037d', 'fallback-HS256', 'master', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL);
INSERT INTO public.component VALUES ('e98f1979-f87b-425a-899d-41f81b6e44f9', 'fallback-RS256', 'master', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL);
INSERT INTO public.component VALUES ('a9291c96-f771-48e3-b953-e0d1e6d829a3', 'rsa-generated', 'basic', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'basic', NULL);
INSERT INTO public.component VALUES ('4aa39107-440e-40d0-ba20-12bbd233cf39', 'hmac-generated', 'basic', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'basic', NULL);
INSERT INTO public.component VALUES ('e98742c9-6688-4238-838e-1b94e209b572', 'aes-generated', 'basic', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'basic', NULL);
INSERT INTO public.component VALUES ('3b8c9896-6e1a-465f-a0b1-ba4c77a641bf', 'Trusted Hosts', 'basic', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('3c5d530a-ce2a-457b-b9cc-32b0d5d19d35', 'Consent Required', 'basic', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('2577b53a-6f83-4793-be52-8383759e42a9', 'Full Scope Disabled', 'basic', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('6436dd87-a9fc-4a50-a1fe-cbcef2414d9a', 'Max Clients Limit', 'basic', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'Allowed Protocol Mapper Types', 'basic', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('3cc3229f-6a95-4549-b295-21c4aabe7ac1', 'Allowed Client Scopes', 'basic', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'Allowed Protocol Mapper Types', 'basic', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'authenticated');
INSERT INTO public.component VALUES ('d2cd6b13-858b-4a4d-a920-74b9f198414a', 'Allowed Client Scopes', 'basic', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'authenticated');


--
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.component_config VALUES ('266fbae6-9f9f-4e5e-82b9-9423560c28e4', '5556f3d2-8c5e-4281-9e72-097daa02ccc9', 'client-uris-must-match', 'true');
INSERT INTO public.component_config VALUES ('862cf658-eea9-4862-b49c-e9484ccbf524', '5556f3d2-8c5e-4281-9e72-097daa02ccc9', 'host-sending-registration-request-must-match', 'true');
INSERT INTO public.component_config VALUES ('25f29157-38d5-45c3-834a-3155bc13283f', 'a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('a9d5c635-8a64-4ac9-a863-a7568be259e1', 'a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('b773bba1-e998-4e56-8cc1-dd693783adbf', 'a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('13b3a80b-4e9a-4fb2-9a8d-fbf880eeea28', 'a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('293f69a5-494c-4047-9043-8b4d12dd2238', 'a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('35120e21-61d0-4891-bcb4-9a0e16d271b0', 'a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('786ac674-8143-4a50-a04b-8e044b2e39b1', 'a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('67e4f6b9-03a3-4350-be99-714e716acc5e', 'a6feb5ba-21ed-4b13-abfa-dc524f1f712a', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('dd0123ed-6761-489d-a833-bbb8c01e38e3', '7cd7bf20-15c2-44a2-bf69-b7b24f4d89da', 'max-clients', '200');
INSERT INTO public.component_config VALUES ('4abb5e85-b236-45f5-83f3-04be82004c1e', '405c2fe5-d0d2-4af3-bdbb-dcb54ca296c5', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('c27ac128-a513-40b3-b9f6-bd9d4c7d9958', '94dbd1b1-cb39-4d5f-afa7-03b4e4feb6de', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('198d25e9-5218-4bad-a0c9-ab9771e5daed', 'f334656f-5258-4d17-a61e-2d37b12ed662', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('3d588b26-f5c5-4753-8eda-33c504092ad2', 'f334656f-5258-4d17-a61e-2d37b12ed662', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('0d1de5b3-86e9-4402-8935-5d290a4b2c4f', 'f334656f-5258-4d17-a61e-2d37b12ed662', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('4360e014-3ef3-4c6f-8777-cac4cf3b23fe', 'f334656f-5258-4d17-a61e-2d37b12ed662', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('75ec32be-aa23-4c71-ad2f-8daf8ba1002d', 'f334656f-5258-4d17-a61e-2d37b12ed662', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('9ee3bd1a-6119-4c2a-b21c-deff7412c368', 'f334656f-5258-4d17-a61e-2d37b12ed662', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('7ab83812-32b3-473d-a777-cdc04e75b9e9', 'f334656f-5258-4d17-a61e-2d37b12ed662', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('e344df13-0a52-40d7-8533-428f684def42', 'f334656f-5258-4d17-a61e-2d37b12ed662', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('2cdafe73-2483-4360-afec-4c91d82df874', 'f3aca198-6b5b-437c-9d5a-99f21f63037d', 'kid', '37be9c65-ded3-4771-9438-c60f0a8fc7d1');
INSERT INTO public.component_config VALUES ('a8423bc3-9006-4207-b919-93bde13f0ee1', 'f3aca198-6b5b-437c-9d5a-99f21f63037d', 'secret', 'BkBXIChb-F_ew_Oem_TtXclWp7cRbgRgYwlom1y5Iwym5x7gULe8WKDfdefeusFIJ5YDxZlSjf0bUJALUNR5Jw');
INSERT INTO public.component_config VALUES ('357f8d4b-a6d3-4ec1-945e-02fc2f6560fc', 'f3aca198-6b5b-437c-9d5a-99f21f63037d', 'priority', '-100');
INSERT INTO public.component_config VALUES ('c613c704-d3e7-4b23-bcf0-1ce2a612dea2', 'f3aca198-6b5b-437c-9d5a-99f21f63037d', 'algorithm', 'HS256');
INSERT INTO public.component_config VALUES ('8c2e0793-995e-4f9c-9ef7-d64956059d30', 'e98f1979-f87b-425a-899d-41f81b6e44f9', 'priority', '-100');
INSERT INTO public.component_config VALUES ('e92e3c09-6173-4c93-9afd-fedbd22e7a9b', 'e98f1979-f87b-425a-899d-41f81b6e44f9', 'privateKey', 'MIIEowIBAAKCAQEAgeKvGx4mylG/D9ynk2aWkuLWFlgUTeeeuf0sCORT0Q8dHx+Xd43lX0IGT3iVCo1XiZBfG102vWyn+YLXtdXt7MpzQ9Lkvzef8yP3CWIMQKgmr1gqnVDefLNcTrgXWT4j+WS//xWnVBDK2/QGmyux4ogTprAPv8GiPrFnjxi5bb32uPN90mTpdC4RrpU58Xl9ypBFE9j0BSSC7n2oTwBnmEVKCjuWniXqdpDsQWK+ghKs7Jl3zWGIEyVklwruPxMifEjA4ska89mLhqtjN4XUTQfHtUexF+VDkf5xD7IxjSIJNdQZ8ou2v0pBlEPWu+o7HO8ems5JI11tw7dCuvmmxwIDAQABAoIBAGldqGmaSyODrzhB61uDNJFSHRShPU95n2UIAanw+CG3Xgt6iFh/LtzY5d+gVV/rC2FYUh8Tvi1qsNWTlEQ5mLqn/Vu/ALwydro6qdPdy0zEXCWQo3ldOi/1HOPrKV3HME3Hso1PVp+2w6otSxKkHrlDZJWrbAtGHMU5C2alSv+/m8HbzCEzQHLzM7nrAzy0gyDKrfiglQQ7KhpExbNWTAbUuvvpvFTo70aG/wg4IrY2Q3lWlQE2i/myRofUkbZhpwIfPrub/Fog0cwnYnfZCNG/o8UPeMlRwmSZsbQgE73Vv7ifpL9Nd0skCRQePff+CsKBYsU/hDSc/EjidoZyiAkCgYEAwWkTvfLwa92aYcAo5PmbVfmBYG1pyuCSwNPKpU/wO5b8aNbkLTzXPT376I5gfq8o1biQgAI1GBsgW21ig+8O+64vWt5tAGRzabOcvlcNVgPJE/dzTveppMMX8gdRdQhfmhKRC+/KILSk0yP0M1A5kys8Rnaw2srfAwooQ+W/x3sCgYEAq+rvZ11e4bRuzK/nZeKodknX8XnxpkREVn3+ev7QEzYArTtZuMUdj4wsMJD0dEAFaL6aCeAt/Km1el4V1BLlKLo4igGrYGT4rtteCy3uKzD4JHxrNx4Y3Zn54rQQl8dwIU2XMFua7n+opF99dF2MOvHWaa/f7KDhOG5DuOgz1iUCgYAz5K2XWYeIaXzynUxbo106RCeiZ7jq5jZ55lmI4Vnjoy82MfIm8RwPIoJkc08Qro6WSV77+ZulTCHyZfb4zzuF68Zo6yTz5f/RbI+xwkmhuoJJCSu3FFxACNhz5+LDM+vyuuiP+1aQT+epfwwWeH/6LK+PeGkbSzNq7V7AWPSL4QKBgQCTeip9JV/rhvk1pgB/Kn0RXC9e+xkNZKqq99KCeGzOzhiugqdpFc9SARE3aGIMB4+cV0WVCzbn9D22B1f6YWssEPPHj78QJg4fEhgOxwv1CUEVK5Zd5fe2wgvXKljBm1jZeNIlra+uwNxOhYv9cvKE7kjcyP7y4t/RpOV7jdZJ8QKBgDlbZUg8JMrLGO2aOhuLe71/jM5ZYC4GykZzQZT+M8bC0GuSbW8PlJf7LFP3KvQb/3SsP9QBv8JiuARWdg/jvJyYDfkL9KNf+OfkASx7ch+MJlqpJuer55Mbh9CYMysRhxoL1ByxivRPKJdd2EAtWOk4DJO6ELdU5wXQQ6SiXtze');
INSERT INTO public.component_config VALUES ('619e5b28-ad2d-475c-9f20-89b2c1c523c1', 'e98f1979-f87b-425a-899d-41f81b6e44f9', 'algorithm', 'RS256');
INSERT INTO public.component_config VALUES ('7e88e3d7-f23e-4159-9b22-8294ed28761d', 'e98f1979-f87b-425a-899d-41f81b6e44f9', 'certificate', 'MIICmzCCAYMCBgF0/XwqezANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjAxMDA2MTAzNTA3WhcNMzAxMDA2MTAzNjQ3WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCB4q8bHibKUb8P3KeTZpaS4tYWWBRN5565/SwI5FPRDx0fH5d3jeVfQgZPeJUKjVeJkF8bXTa9bKf5gte11e3synND0uS/N5/zI/cJYgxAqCavWCqdUN58s1xOuBdZPiP5ZL//FadUEMrb9AabK7HiiBOmsA+/waI+sWePGLltvfa4833SZOl0LhGulTnxeX3KkEUT2PQFJILufahPAGeYRUoKO5aeJep2kOxBYr6CEqzsmXfNYYgTJWSXCu4/EyJ8SMDiyRrz2YuGq2M3hdRNB8e1R7EX5UOR/nEPsjGNIgk11Bnyi7a/SkGUQ9a76jsc7x6azkkjXW3Dt0K6+abHAgMBAAEwDQYJKoZIhvcNAQELBQADggEBABavKQW8gxYZbIBFhNgN3flOFxb8raVJ/2K5Wbhsgqz8VFl/+y175tmNut1r+eX7uiph9WHdTSwd0GlKp5paehZ0SFcReJ9PjY2WDCV0cN+1YUZ+EMxjbtU+g1uYvOF0W81i2JOaG1yjN30ZRSDwORAv+gUL6XCbwNjPFTOyRstqpr+UohaQXQj2xTnTPKm+fqtgfh26XtQtuztE0cIfCBEpV0QWrMU8uYPniBFxd74+kh/7LQEPv0Op7jJfv4y+M1+Wz5nQFFUanzOJT2MxljOzf/qC4BMI3c1uPL+HZjBeGRPlPHHl7K1rsZa1StFU4MQq4A6yJJHzsdd2837QMBc=');
INSERT INTO public.component_config VALUES ('4f66188b-c35f-425f-a698-01d7395fc21a', '4aa39107-440e-40d0-ba20-12bbd233cf39', 'priority', '100');
INSERT INTO public.component_config VALUES ('22e84458-d5b7-4668-ba52-709c205493db', '4aa39107-440e-40d0-ba20-12bbd233cf39', 'secret', 'tRNfp88W8G-c6Fv77AJ3GcM4YKvTVZGfyWIkWQ9aVU1wVAGWnFlmBFGef5chLl7Nyl3u-ljaiG1LmJIhWGtsdQ');
INSERT INTO public.component_config VALUES ('20ce458e-d6b8-410b-a3a5-b31c837b6d50', '4aa39107-440e-40d0-ba20-12bbd233cf39', 'kid', '7ee2a71a-0f0c-4263-97cb-8a5d5b90479d');
INSERT INTO public.component_config VALUES ('856abb44-f5f6-46e6-a38c-2d7f08c092d9', '4aa39107-440e-40d0-ba20-12bbd233cf39', 'algorithm', 'HS256');
INSERT INTO public.component_config VALUES ('45be0f32-71a7-4ea1-bda3-2422f28adb4b', 'a9291c96-f771-48e3-b953-e0d1e6d829a3', 'certificate', 'MIICmTCCAYECBgF0/XxZNjANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAViYXNpYzAeFw0yMDEwMDYxMDM1MTlaFw0zMDEwMDYxMDM2NTlaMBAxDjAMBgNVBAMMBWJhc2ljMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnk2CzNG5jpHWbkIPAhj8koZuL2BJbxDedskRX4WULApXH2Fvb6m8AfUzRP+YMTxVZ7ztVx1aMymW8NMh5/aapiLhyYJSW6xcA+fqwb0A7Rv5LZdlLN4KT4vMZdbQRYLe3XIjsubRUVo/nKr7r8kauvVHVc6LwVaSgvNbbK21rpXtyDUjU28nYm5CZ98MDwp8XCuknk+fckUacCIp3mj/5ZyaDUOxnEbvcFVAT7m0cCBkVghIxIeGtFPLnquSfYo3Iep939m5znKmzHzqClpXOLPc2io1PqRToql695SAKEzbD1Ld1zwyX5S+ZHnaSFuO7z3U+aQqYy/YofHhYv6xRwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCVeel7hf5IR3Cr0MO1zURMvapQ+ycKOKLRVs1XHCTbrVnUKyJ+HIQPOCioeKnzgRpeAFqNKMW35ZFU7hGYsv504g2uCdn44YuHeXGN5c0bCShXWcUv8WR7q2/721B186uSjXzFh00vhCHHugjZzgpjKGNFOFkMM2uluYqf8P2VU14AOAkpg7mbUAmhXAizJi7P+0Z6WktVKIBVN+BlvTxYJ0bMEtfXNmTUoToWjBphhifg/TbJ9tP4kRvmZgy1ZOPsmgN3BMpxQZK8kfWGjrzHPnSUHBn3rXzQYZUkN3ubOzQuBi9Rf62UYpVdksSFnvzTobpBimkiHNyddXIzIygB');
INSERT INTO public.component_config VALUES ('78e59618-4ccb-4ee0-a318-70fccbff1ad6', 'a9291c96-f771-48e3-b953-e0d1e6d829a3', 'priority', '100');
INSERT INTO public.component_config VALUES ('33af90ca-9cc1-4a8c-b69f-bf4eb6163f1d', 'a9291c96-f771-48e3-b953-e0d1e6d829a3', 'privateKey', 'MIIEogIBAAKCAQEAnk2CzNG5jpHWbkIPAhj8koZuL2BJbxDedskRX4WULApXH2Fvb6m8AfUzRP+YMTxVZ7ztVx1aMymW8NMh5/aapiLhyYJSW6xcA+fqwb0A7Rv5LZdlLN4KT4vMZdbQRYLe3XIjsubRUVo/nKr7r8kauvVHVc6LwVaSgvNbbK21rpXtyDUjU28nYm5CZ98MDwp8XCuknk+fckUacCIp3mj/5ZyaDUOxnEbvcFVAT7m0cCBkVghIxIeGtFPLnquSfYo3Iep939m5znKmzHzqClpXOLPc2io1PqRToql695SAKEzbD1Ld1zwyX5S+ZHnaSFuO7z3U+aQqYy/YofHhYv6xRwIDAQABAoIBAG9Adg5PziJ+J77xOe71dHvdcg5lkvY1WsMMZ+ND03BoC/aH2XMWTITruA5juqfPiQ4Q3pP8kuml7uhs2UVWMDVWCmw95Hd82GX+VSO3GrGImUQLRBWWLpTc4NcpctGHOe1TS/ds8+pCjLYkDCHsKZb+zhVlxR4pI2pYcQYdxrNcm/zSkLhoFiMrT4YTCwAna4IM3HmTky12SKIHcBNi84Q3h4rQjKx8xIf/1Aad/VWYQDC4g15lHtRP2JEg79GOLTekP+inzziABvrWZpX/SSLBouBDfkaUbTA/XDaxMpgKnRk1+azl5FOUTF13Nz10QZ6D1LfN3byOsMAn8S2yG5ECgYEAyZ+47ZfXx8ULH9GLFIE7F7SiEN1dQf4i5fzRZOkD8f0W90366Hf80m4VERyy3DbB+QsVO1hSoBksTurTfpU4XwGIGkPg5HhFjG548HjzxxwJ8J3OAZocifPHwLFT7lUEeGabinuxQm1dvzOz5sQ19SAjrL4KLB7FG7wC4L+M8LsCgYEAyP7cvH3hLCCvs34/Jq5P7E+gcNLPf/EvaSEhpXM3PRGaPFzyrkdakjGdo9SPMBF/HRsIo9hSfGRQLe/xMhMhCfOIVPmbbxMxXQzCCRWTWD2Y8F8kMbgaP3gNcilz7nOY1vXCDyRzwLRN1IybuibZfenierJJzUwNMnMY3uFBbuUCgYBZcJEIVKNT6wTUSI/5uJoOGgMKmCgWbjXs8AmzSeqGHk9hxSXYmeF9N3gA70ooheHmKBRzDusYOhJ9r43CSU+IVZWakSHiN7giY58ijYUWfkmqg1YvP74JNCsYP5GL2ArznhDBjb1ESl+bwcO8Sq3k3yz0JBk/GSc29mAQcuiCoQKBgChUazovD+Vo0Zh0dntucn76IzlAM356iIbRrQyjp6vLQmVmSROLIbM/3V+oIOsGN7lBWWR23WY0QppVENJ5YCG9CdfzFasd8MO48Z4dBCmqgmuIy5xmUm31yszjYG2yKDLJsRyUtd0u0Icbh4u8i9tl+Jmh+IkG/4bl7VGbZSO5AoGAVyuRHFCZJxUNIDkwWV10fqmN+m6SBtvOBWw6DZYrC8mUD80iRfVp/xSFcTYrAMd+YajDZmCH0TTqGdP0jUgrwMEl+6qhN0GJXwmUcx/9AZInCtr1F6cjgSFK8Sou50IotzoBlLBQh0a48tDCPykxXLpd0gg5gS+HN3MKdoRFXxs=');
INSERT INTO public.component_config VALUES ('b821a40e-a2e9-469f-bb6e-14320728b601', 'e98742c9-6688-4238-838e-1b94e209b572', 'priority', '100');
INSERT INTO public.component_config VALUES ('4847af27-9c4c-487f-b740-35f916a711bf', 'e98742c9-6688-4238-838e-1b94e209b572', 'kid', '1482d2d8-f2ca-439a-8118-2e43e4aee83c');
INSERT INTO public.component_config VALUES ('8dd5ccf3-8a7c-4f1f-a7a8-20f5ee27d162', 'e98742c9-6688-4238-838e-1b94e209b572', 'secret', '-9zuV4kS7Xfz7FJfdccuiQ');
INSERT INTO public.component_config VALUES ('257e2faf-122f-4974-a5e2-3e98904e5bff', 'c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('3b802dd3-1e51-4b05-a1f2-71a52a7d0d59', 'c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('10ed1153-b0ad-4160-a3a6-c4566c31cefe', 'c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('86eebe4a-0dac-4e1a-9ad5-b8222c7d9f2d', 'c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('25807362-ea74-4c5b-8b81-01eaed541352', 'c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('4ff0ddaf-08e0-4f67-bc22-a17c08381f7b', 'c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('6c03e5f6-d616-420b-874d-52f11e18379b', 'c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('20a9e871-8dc2-495e-8f3f-27770a2ce5fc', 'c92ebf65-aae5-437f-86f9-c2a1d4c06f5c', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('7f5d182d-a643-4a85-930f-245f8f711c39', '6436dd87-a9fc-4a50-a1fe-cbcef2414d9a', 'max-clients', '200');
INSERT INTO public.component_config VALUES ('f79f0c36-6066-4f94-862e-120638c48ee4', '3cc3229f-6a95-4549-b295-21c4aabe7ac1', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('77cee6d1-196e-4fcc-a1a3-491d1c1afd6f', 'd2cd6b13-858b-4a4d-a920-74b9f198414a', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('0237224f-bc3b-429d-a19d-893e65df9a33', '3b8c9896-6e1a-465f-a0b1-ba4c77a641bf', 'client-uris-must-match', 'true');
INSERT INTO public.component_config VALUES ('cd82af58-b3ac-4a2f-9f19-fcf677e19e5f', '3b8c9896-6e1a-465f-a0b1-ba4c77a641bf', 'host-sending-registration-request-must-match', 'true');
INSERT INTO public.component_config VALUES ('e3afdd4f-c927-4740-bebc-8b1141148df0', 'f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('da7c2e63-1790-4690-84dc-1aaf2c572df3', 'f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('44c22552-3935-477a-84f0-c373fe24bc70', 'f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('48cdce8c-ff04-49f6-962e-adb939ec2562', 'f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('a9caa8f4-93fd-4252-bf9d-c9e89bfbbfdc', 'f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('e3387a42-896a-4132-a30d-24c929bb8348', 'f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('a98855c1-bf87-4db9-84b5-15dca8a60128', 'f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('ca21c9c6-b8e7-4079-af3e-db24f60636c9', 'f3117517-be74-4eb6-aba5-c6caecdd5cc7', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');


--
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '3505f20d-b931-4ac3-bad0-03c49a0dab0a');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'c5020a6e-66d0-46c3-8c93-74ec72acb34a');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '2841dc22-dfa2-4067-9d51-5f606a1e44f0');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'a83c0ba4-5e40-451f-a492-3d80c65bcbac');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '3343adb5-267d-49c4-919e-62f6aedf98a3');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'dcf1ae63-0b9c-430c-a745-281971be8e28');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'dc3ce564-73b6-4463-9191-1dc58a3d4198');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'c86f7fb9-4991-4755-a617-1439e2b8d503');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '4f8bad2a-613b-4fb2-ae0c-7e5be9812eb0');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '81f0ce36-661c-4182-92a2-f184884f6a10');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '2e486323-ef45-4942-8ba9-c415284ca613');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'd53d77dc-0ac2-4943-a188-ea25e4727d9a');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '521e5b7b-4f00-4686-8c42-3b0aea531b4e');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'c5e54897-e834-46a0-b4d7-42085ff3031f');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '4e3b81d9-cd1f-4160-b3a5-fe05e889fc0d');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'a620cc9c-81f4-450e-9fb8-46f09f646c1f');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '0dd04958-6b28-4bd2-a3c3-396c28c669e9');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '6e352f18-3427-4dc9-b535-e73edd9334c4');
INSERT INTO public.composite_role VALUES ('3343adb5-267d-49c4-919e-62f6aedf98a3', 'a620cc9c-81f4-450e-9fb8-46f09f646c1f');
INSERT INTO public.composite_role VALUES ('a83c0ba4-5e40-451f-a492-3d80c65bcbac', '4e3b81d9-cd1f-4160-b3a5-fe05e889fc0d');
INSERT INTO public.composite_role VALUES ('a83c0ba4-5e40-451f-a492-3d80c65bcbac', '6e352f18-3427-4dc9-b535-e73edd9334c4');
INSERT INTO public.composite_role VALUES ('7ebb3989-fac5-4c07-82db-5b5811106821', '7aac82db-f9cf-4c32-a282-061030d7d390');
INSERT INTO public.composite_role VALUES ('d957c3da-8936-42e2-86a7-781f608ac056', '0cccc9eb-3cf1-427b-b3a1-406bcaa24c23');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'f62113b8-c5ae-4068-a745-e3be2ff410f3');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '2964d4f1-4f16-48f5-a41d-0b0465bde487');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '16cf1181-0300-44e9-ae97-6bcb2c5f6853');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'eb00f7f6-027f-4ea8-9399-27a14a9e438e');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '1e803b75-d53a-4299-b264-36f4d18f4718');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '8e801293-c240-4dae-a765-b3377941f4b1');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'd64af374-3bd9-4949-93ed-f6940ff9c608');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'b799fb73-0f19-4873-8cf5-4bf3e9f8856d');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '81fda435-8045-4d4b-86e0-14accf24c35c');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '969f0ebd-7f28-45de-8117-a7454d19c49a');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '55098256-565e-4615-91c7-d50dcd467bb3');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '9981bdb7-b159-4f32-b0f7-d60768a03add');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '95ce601b-002f-4e6c-ac93-06c844655f1b');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '6b6ee384-b5aa-4b79-bedb-7aea82d53412');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'de1ea9db-12a3-4255-b977-bb956c1f9f0f');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'f3cd07af-edc3-4d5a-b5fc-dd0a226fe7bf');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '142576fe-e0f9-40cc-8f48-cedc84b1f84a');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '4f95d3ad-d7b8-4506-aa57-64b5d2aae30b');
INSERT INTO public.composite_role VALUES ('1e803b75-d53a-4299-b264-36f4d18f4718', 'f3cd07af-edc3-4d5a-b5fc-dd0a226fe7bf');
INSERT INTO public.composite_role VALUES ('eb00f7f6-027f-4ea8-9399-27a14a9e438e', 'de1ea9db-12a3-4255-b977-bb956c1f9f0f');
INSERT INTO public.composite_role VALUES ('eb00f7f6-027f-4ea8-9399-27a14a9e438e', '4f95d3ad-d7b8-4506-aa57-64b5d2aae30b');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '9be2fbc9-7351-484b-87ca-0aeb9025e258');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '4210d5f1-346d-4275-8e0c-34c54b7312b8');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '5b83fb74-3c25-46b7-85be-dc74285c78dc');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '627c5e6b-90a2-4770-bb63-7c0ff0cdd5e2');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', 'a01520e8-8e0b-4917-8e60-ca8a240facae');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', 'dba2715c-6172-4f58-93b8-3ce47d0115e7');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '2291134f-f8b1-4a7e-860e-4ea370c5362c');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '1d545ac7-f150-4aa1-a4d7-f337064b9e64');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '7c044694-cae6-4010-a584-5570606cff44');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '4bb24103-4377-4b56-928e-0836b8a191eb');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '13819f30-8464-484d-a3c0-3240d8056750');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '1dc6e8d6-bcad-408d-a502-6bcdccacfac4');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', 'b75d5b61-6c9c-494c-9bb0-031b83e0f288');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', 'ca562c5b-5d0b-4f0c-93a9-327761985b60');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '0fb624e1-be14-4cfa-a48e-553e7153cb6c');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', 'fcbbeace-a1ed-4263-b3c3-1c0f2d5190f9');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', 'def639d5-fad8-4ef9-9543-742d99950b30');
INSERT INTO public.composite_role VALUES ('627c5e6b-90a2-4770-bb63-7c0ff0cdd5e2', '0fb624e1-be14-4cfa-a48e-553e7153cb6c');
INSERT INTO public.composite_role VALUES ('5b83fb74-3c25-46b7-85be-dc74285c78dc', 'def639d5-fad8-4ef9-9543-742d99950b30');
INSERT INTO public.composite_role VALUES ('5b83fb74-3c25-46b7-85be-dc74285c78dc', 'ca562c5b-5d0b-4f0c-93a9-327761985b60');
INSERT INTO public.composite_role VALUES ('8087d3e2-e8ba-48f3-b795-df7150cc5dd8', 'b09d0d4e-5133-4057-afda-857205b23364');
INSERT INTO public.composite_role VALUES ('68f7b0d1-5d78-4e37-96db-b386b385a7e3', '44fcd244-4012-4348-86c5-01f67bcd1d2b');
INSERT INTO public.composite_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '97e5b926-4ebe-4200-ae92-bde0cdbb7acd');
INSERT INTO public.composite_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '7fc71fa4-435e-42d0-b823-59664712e53c');


--
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.credential VALUES ('424ec215-7499-4a09-a09e-eb87fa89d15e', NULL, 'password', '41267900-ef49-428f-aeab-876c8f3e5cf2', 1601980599537, NULL, '{"value":"eeDPvu0HAEqIVjpA3CgFoLo0zUPzEVjyaEZNS+P9XGiTEJpxCnPJOKhNH4+gy34MHurfkzYuyifJ0K2MQcHCkw==","salt":"iDNLF/aVB87ftGUJep0DgQ=="}', '{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}', 10);
INSERT INTO public.credential VALUES ('c08c1d4d-436f-49fe-a8f9-4a433007be44', NULL, 'password', '6ad201eb-aa52-4053-8736-7457b38c491e', 1601980648604, NULL, '{"value":"jpiytcrIr7BdVppDIlRkOOA4jsVXZD97KNxOBzEQt2NrbTkGCocA4mNolDxJJlGMp4nt6vUdbFOok80xMLtq1w==","salt":"JquRbYkQZ/+8VAIsrKC/Cw=="}', '{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}', 10);
INSERT INTO public.credential VALUES ('1693a74a-84c2-4be9-8a0c-7e0f1dee17d9', NULL, 'password', '0fbcd5c1-2dbe-4750-99ba-2441dd65cd66', 1601980717390, NULL, '{"value":"jrKh7uGStC0eTdpbYHCnhrp6fPv8ao4ImERO3oN3PDAb/MAzSs1GC3dCDh4J5mZarsRlB3cYMQnSyKs9yZ/+6A==","salt":"sGD9NmYeLSmV17UCbrtJ9Q=="}', '{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}', 10);
INSERT INTO public.credential VALUES ('ebfde77e-0b80-4b72-bb4a-0c4938f6c186', NULL, 'password', 'd25f8d35-54df-4048-9010-0dd9523c1f51', 1601980817377, NULL, '{"value":"jvACpfPQqiuZ0y4/B6MtdPjensgA5g6lUKkaCMnSKcQJ2P7xE0KZquFK7H5373DL4NRnwVnG1avfqHKrYdRVYw==","salt":"vQ2UfFOy+vE2s7b4yRc2OA=="}', '{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}', 10);


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.databasechangelog VALUES ('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.0.0.Final.xml', '2020-10-06 10:36:34.100035', 1, 'EXECUTED', '7:4e70412f24a3f382c82183742ec79317', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/db2-jpa-changelog-1.0.0.Final.xml', '2020-10-06 10:36:34.110366', 2, 'MARK_RAN', '7:cb16724583e9675711801c6875114f28', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.1.0.Beta1', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Beta1.xml', '2020-10-06 10:36:34.147856', 3, 'EXECUTED', '7:0310eb8ba07cec616460794d42ade0fa', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.1.0.Final', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Final.xml', '2020-10-06 10:36:34.152317', 4, 'EXECUTED', '7:5d25857e708c3233ef4439df1f93f012', 'renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/jpa-changelog-1.2.0.Beta1.xml', '2020-10-06 10:36:34.247813', 5, 'EXECUTED', '7:c7a54a1041d58eb3817a4a883b4d4e84', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.Beta1.xml', '2020-10-06 10:36:34.252296', 6, 'MARK_RAN', '7:2e01012df20974c1c2a605ef8afe25b7', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.2.0.CR1.xml', '2020-10-06 10:36:34.324477', 7, 'EXECUTED', '7:0f08df48468428e0f30ee59a8ec01a41', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.CR1.xml', '2020-10-06 10:36:34.328347', 8, 'MARK_RAN', '7:a77ea2ad226b345e7d689d366f185c8c', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Final', 'keycloak', 'META-INF/jpa-changelog-1.2.0.Final.xml', '2020-10-06 10:36:34.332812', 9, 'EXECUTED', '7:a3377a2059aefbf3b90ebb4c4cc8e2ab', 'update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.3.0.xml', '2020-10-06 10:36:34.670797', 10, 'EXECUTED', '7:04c1dbedc2aa3e9756d1a1668e003451', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.4.0.xml', '2020-10-06 10:36:34.781879', 11, 'EXECUTED', '7:36ef39ed560ad07062d956db861042ba', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.4.0', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.4.0.xml', '2020-10-06 10:36:34.787278', 12, 'MARK_RAN', '7:d909180b2530479a716d3f9c9eaea3d7', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.5.0.xml', '2020-10-06 10:36:34.884307', 13, 'EXECUTED', '7:cf12b04b79bea5152f165eb41f3955f6', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from15', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2020-10-06 10:36:34.921377', 14, 'EXECUTED', '7:7e32c8f05c755e8675764e7d5f514509', 'addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from16-pre', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2020-10-06 10:36:34.923867', 15, 'MARK_RAN', '7:980ba23cc0ec39cab731ce903dd01291', 'delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from16', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2020-10-06 10:36:34.926177', 16, 'MARK_RAN', '7:2fa220758991285312eb84f3b4ff5336', 'dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.6.1', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2020-10-06 10:36:34.928506', 17, 'EXECUTED', '7:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.7.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.7.0.xml', '2020-10-06 10:36:34.991187', 18, 'EXECUTED', '7:91ace540896df890cc00a0490ee52bbc', 'createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.8.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.8.0.xml', '2020-10-06 10:36:35.045243', 19, 'EXECUTED', '7:c31d1646dfa2618a9335c00e07f89f24', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.8.0-2', 'keycloak', 'META-INF/jpa-changelog-1.8.0.xml', '2020-10-06 10:36:35.050512', 20, 'EXECUTED', '7:df8bc21027a4f7cbbb01f6344e89ce07', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part1', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-10-06 10:36:35.423818', 45, 'EXECUTED', '7:6a48ce645a3525488a90fbf76adf3bb3', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.8.0', 'mposolda@redhat.com', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2020-10-06 10:36:35.053171', 21, 'MARK_RAN', '7:f987971fe6b37d963bc95fee2b27f8df', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.8.0-2', 'keycloak', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2020-10-06 10:36:35.055977', 22, 'MARK_RAN', '7:df8bc21027a4f7cbbb01f6344e89ce07', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.9.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.9.0.xml', '2020-10-06 10:36:35.070297', 23, 'EXECUTED', '7:ed2dc7f799d19ac452cbcda56c929e47', 'update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.9.1', 'keycloak', 'META-INF/jpa-changelog-1.9.1.xml', '2020-10-06 10:36:35.074712', 24, 'EXECUTED', '7:80b5db88a5dda36ece5f235be8757615', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.9.1', 'keycloak', 'META-INF/db2-jpa-changelog-1.9.1.xml', '2020-10-06 10:36:35.076603', 25, 'MARK_RAN', '7:1437310ed1305a9b93f8848f301726ce', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('1.9.2', 'keycloak', 'META-INF/jpa-changelog-1.9.2.xml', '2020-10-06 10:36:35.098137', 26, 'EXECUTED', '7:b82ffb34850fa0836be16deefc6a87c4', 'createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-2.0.0', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.0.0.xml', '2020-10-06 10:36:35.149256', 27, 'EXECUTED', '7:9cc98082921330d8d9266decdd4bd658', 'createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-2.5.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.5.1.xml', '2020-10-06 10:36:35.152948', 28, 'EXECUTED', '7:03d64aeed9cb52b969bd30a7ac0db57e', 'update tableName=RESOURCE_SERVER_POLICY', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.1.0-KEYCLOAK-5461', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.1.0.xml', '2020-10-06 10:36:35.196586', 29, 'EXECUTED', '7:f1f9fd8710399d725b780f463c6b21cd', 'createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.2.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.2.0.xml', '2020-10-06 10:36:35.207146', 30, 'EXECUTED', '7:53188c3eb1107546e6f765835705b6c1', 'addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.3.0.xml', '2020-10-06 10:36:35.220212', 31, 'EXECUTED', '7:d6e6f3bc57a0c5586737d1351725d4d4', 'createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.4.0.xml', '2020-10-06 10:36:35.224434', 32, 'EXECUTED', '7:454d604fbd755d9df3fd9c6329043aa5', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2020-10-06 10:36:35.229961', 33, 'EXECUTED', '7:57e98a3077e29caf562f7dbf80c72600', 'customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unicode-oracle', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2020-10-06 10:36:35.231925', 34, 'MARK_RAN', '7:e4c7e8f2256210aee71ddc42f538b57a', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unicode-other-dbs', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2020-10-06 10:36:35.250373', 35, 'EXECUTED', '7:09a43c97e49bc626460480aa1379b522', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.5.0-duplicate-email-support', 'slawomir@dabek.name', 'META-INF/jpa-changelog-2.5.0.xml', '2020-10-06 10:36:35.27056', 36, 'EXECUTED', '7:26bfc7c74fefa9126f2ce702fb775553', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unique-group-names', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2020-10-06 10:36:35.277651', 37, 'EXECUTED', '7:a161e2ae671a9020fff61e996a207377', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('2.5.1', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.1.xml', '2020-10-06 10:36:35.281688', 38, 'EXECUTED', '7:37fc1781855ac5388c494f1442b3f717', 'addColumn tableName=FED_USER_CONSENT', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.0.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-3.0.0.xml', '2020-10-06 10:36:35.291323', 39, 'EXECUTED', '7:13a27db0dae6049541136adad7261d27', 'addColumn tableName=IDENTITY_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2020-10-06 10:36:35.293122', 40, 'MARK_RAN', '7:550300617e3b59e8af3a6294df8248a3', 'addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix-with-keycloak-5416', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2020-10-06 10:36:35.294805', 41, 'MARK_RAN', '7:e3a9482b8931481dc2772a5c07c44f17', 'dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix-offline-sessions', 'hmlnarik', 'META-INF/jpa-changelog-3.2.0.xml', '2020-10-06 10:36:35.298887', 42, 'EXECUTED', '7:72b07d85a2677cb257edb02b408f332d', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fixed', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2020-10-06 10:36:35.381742', 43, 'EXECUTED', '7:a72a7858967bd414835d19e04d880312', 'addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.3.0', 'keycloak', 'META-INF/jpa-changelog-3.3.0.xml', '2020-10-06 10:36:35.418256', 44, 'EXECUTED', '7:94edff7cf9ce179e7e85f0cd78a3cf2c', 'addColumn tableName=USER_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-10-06 10:36:35.429025', 46, 'EXECUTED', '7:e64b5dcea7db06077c6e57d3b9e5ca14', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-10-06 10:36:35.431373', 47, 'MARK_RAN', '7:fd8cf02498f8b1e72496a20afc75178c', 'dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-10-06 10:36:35.456841', 48, 'EXECUTED', '7:542794f25aa2b1fbabb7e577d6646319', 'addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authn-3.4.0.CR1-refresh-token-max-reuse', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-10-06 10:36:35.470178', 49, 'EXECUTED', '7:edad604c882df12f74941dac3cc6d650', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.4.0', 'keycloak', 'META-INF/jpa-changelog-3.4.0.xml', '2020-10-06 10:36:35.505613', 50, 'EXECUTED', '7:0f88b78b7b46480eb92690cbf5e44900', 'addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.4.0-KEYCLOAK-5230', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-3.4.0.xml', '2020-10-06 10:36:35.529234', 51, 'EXECUTED', '7:d560e43982611d936457c327f872dd59', 'createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.4.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-3.4.1.xml', '2020-10-06 10:36:35.533595', 52, 'EXECUTED', '7:c155566c42b4d14ef07059ec3b3bbd8e', 'modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.4.2', 'keycloak', 'META-INF/jpa-changelog-3.4.2.xml', '2020-10-06 10:36:35.537024', 53, 'EXECUTED', '7:b40376581f12d70f3c89ba8ddf5b7dea', 'update tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('3.4.2-KEYCLOAK-5172', 'mkanis@redhat.com', 'META-INF/jpa-changelog-3.4.2.xml', '2020-10-06 10:36:35.539898', 54, 'EXECUTED', '7:a1132cc395f7b95b3646146c2e38f168', 'update tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-6335', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2020-10-06 10:36:35.546706', 55, 'EXECUTED', '7:d8dc5d89c789105cfa7ca0e82cba60af', 'createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.0.0-CLEANUP-UNUSED-TABLE', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2020-10-06 10:36:35.552184', 56, 'EXECUTED', '7:7822e0165097182e8f653c35517656a3', 'dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-6228', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2020-10-06 10:36:35.589874', 57, 'EXECUTED', '7:c6538c29b9c9a08f9e9ea2de5c2b6375', 'dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-5579-fixed', 'mposolda@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2020-10-06 10:36:35.728144', 58, 'EXECUTED', '7:6d4893e36de22369cf73bcb051ded875', 'dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-4.0.0.CR1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.CR1.xml', '2020-10-06 10:36:35.772142', 59, 'EXECUTED', '7:57960fc0b0f0dd0563ea6f8b2e4a1707', 'createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-4.0.0.Beta3', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.Beta3.xml', '2020-10-06 10:36:35.778858', 60, 'EXECUTED', '7:2b4b8bff39944c7097977cc18dbceb3b', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-4.2.0.Final', 'mhajas@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2020-10-06 10:36:35.78817', 61, 'EXECUTED', '7:2aa42a964c59cd5b8ca9822340ba33a8', 'createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-4.2.0.Final-KEYCLOAK-9944', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2020-10-06 10:36:35.795092', 62, 'EXECUTED', '7:9ac9e58545479929ba23f4a3087a0346', 'addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.2.0-KEYCLOAK-6313', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.2.0.xml', '2020-10-06 10:36:35.799699', 63, 'EXECUTED', '7:14d407c35bc4fe1976867756bcea0c36', 'addColumn tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.3.0-KEYCLOAK-7984', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.3.0.xml', '2020-10-06 10:36:35.803656', 64, 'EXECUTED', '7:241a8030c748c8548e346adee548fa93', 'update tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-7950', 'psilva@redhat.com', 'META-INF/jpa-changelog-4.6.0.xml', '2020-10-06 10:36:35.808054', 65, 'EXECUTED', '7:7d3182f65a34fcc61e8d23def037dc3f', 'update tableName=RESOURCE_SERVER_RESOURCE', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-8377', 'keycloak', 'META-INF/jpa-changelog-4.6.0.xml', '2020-10-06 10:36:35.829091', 66, 'EXECUTED', '7:b30039e00a0b9715d430d1b0636728fa', 'createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-8555', 'gideonray@gmail.com', 'META-INF/jpa-changelog-4.6.0.xml', '2020-10-06 10:36:35.838025', 67, 'EXECUTED', '7:3797315ca61d531780f8e6f82f258159', 'createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.7.0-KEYCLOAK-1267', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.7.0.xml', '2020-10-06 10:36:35.875719', 68, 'EXECUTED', '7:c7aa4c8d9573500c2d347c1941ff0301', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.7.0-KEYCLOAK-7275', 'keycloak', 'META-INF/jpa-changelog-4.7.0.xml', '2020-10-06 10:36:35.901048', 69, 'EXECUTED', '7:b207faee394fc074a442ecd42185a5dd', 'renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('4.8.0-KEYCLOAK-8835', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.8.0.xml', '2020-10-06 10:36:35.908617', 70, 'EXECUTED', '7:ab9a9762faaba4ddfa35514b212c4922', 'addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('authz-7.0.0-KEYCLOAK-10443', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-7.0.0.xml', '2020-10-06 10:36:35.919586', 71, 'EXECUTED', '7:b9710f74515a6ccb51b72dc0d19df8c4', 'addColumn tableName=RESOURCE_SERVER', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('8.0.0-adding-credential-columns', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-10-06 10:36:35.928201', 72, 'EXECUTED', '7:ec9707ae4d4f0b7452fee20128083879', 'addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('8.0.0-updating-credential-data-not-oracle', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-10-06 10:36:35.935486', 73, 'EXECUTED', '7:03b3f4b264c3c68ba082250a80b74216', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('8.0.0-updating-credential-data-oracle', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-10-06 10:36:35.938003', 74, 'MARK_RAN', '7:64c5728f5ca1f5aa4392217701c4fe23', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('8.0.0-credential-cleanup-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-10-06 10:36:35.950376', 75, 'EXECUTED', '7:b48da8c11a3d83ddd6b7d0c8c2219345', 'dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('8.0.0-resource-tag-support', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-10-06 10:36:35.959661', 76, 'EXECUTED', '7:a73379915c23bfad3e8f5c6d5c0aa4bd', 'addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.0-always-display-client', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2020-10-06 10:36:35.970154', 77, 'EXECUTED', '7:39e0073779aba192646291aa2332493d', 'addColumn tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.0-drop-constraints-for-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2020-10-06 10:36:35.972203', 78, 'MARK_RAN', '7:81f87368f00450799b4bf42ea0b3ec34', 'dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.0-increase-column-size-federated-fk', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2020-10-06 10:36:35.986952', 79, 'EXECUTED', '7:20b37422abb9fb6571c618148f013a15', 'modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.0-recreate-constraints-after-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2020-10-06 10:36:35.989146', 80, 'MARK_RAN', '7:1970bb6cfb5ee800736b95ad3fb3c78a', 'addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.1-add-index-to-client.client_id', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-10-06 10:36:35.99466', 81, 'EXECUTED', '7:45d9b25fc3b455d522d8dcc10a0f4c80', 'createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-10-06 10:36:35.996616', 82, 'MARK_RAN', '7:890ae73712bc187a66c2813a724d037f', 'dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-add-not-null-constraint', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-10-06 10:36:36.00009', 83, 'EXECUTED', '7:0a211980d27fafe3ff50d19a3a29b538', 'addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-10-06 10:36:36.002003', 84, 'MARK_RAN', '7:a161e2ae671a9020fff61e996a207377', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('9.0.1-add-index-to-events', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-10-06 10:36:36.007764', 85, 'EXECUTED', '7:01c49302201bdf815b0a18d1f98a55dc', 'createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1980593874');
INSERT INTO public.databasechangelog VALUES ('map-remove-ri', 'keycloak', 'META-INF/jpa-changelog-11.0.0.xml', '2020-10-06 10:36:36.012338', 86, 'EXECUTED', '7:3dace6b144c11f53f1ad2c0361279b86', 'dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9', '', NULL, '3.5.4', NULL, NULL, '1980593874');


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.databasechangeloglock VALUES (1, false, NULL, NULL);
INSERT INTO public.databasechangeloglock VALUES (1000, false, NULL, NULL);
INSERT INTO public.databasechangeloglock VALUES (1001, false, NULL, NULL);


--
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.default_client_scope VALUES ('master', '8eeeae43-176b-47d2-afc0-bfb50051d5cb', false);
INSERT INTO public.default_client_scope VALUES ('master', 'e467318e-1417-40eb-bc71-77c5947bbb27', true);
INSERT INTO public.default_client_scope VALUES ('master', '3d593446-7d4c-4b74-aca0-c54f65d2b95c', true);
INSERT INTO public.default_client_scope VALUES ('master', '8d44d345-894d-48ba-8edd-9527b442349f', true);
INSERT INTO public.default_client_scope VALUES ('master', 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177', false);
INSERT INTO public.default_client_scope VALUES ('master', 'db3341e6-30c7-4e75-82ea-73694cdccc99', false);
INSERT INTO public.default_client_scope VALUES ('master', '26c35a13-7654-4bd4-a90a-1c24b3ea42e3', true);
INSERT INTO public.default_client_scope VALUES ('master', '2b6d635d-7582-4627-877f-75b52a41bd1b', true);
INSERT INTO public.default_client_scope VALUES ('master', '7e0334e1-5511-4209-a595-ceff179bc68d', false);
INSERT INTO public.default_client_scope VALUES ('basic', '7e90f56f-1663-446e-beda-97b5dc3f47c3', false);
INSERT INTO public.default_client_scope VALUES ('basic', 'bf778e8f-203b-42e2-ae8f-022f19183365', true);
INSERT INTO public.default_client_scope VALUES ('basic', 'd1c987c5-5be9-42c7-82ba-509cfd46f785', true);
INSERT INTO public.default_client_scope VALUES ('basic', '2662754e-12e2-4756-9174-8532c1446dc7', true);
INSERT INTO public.default_client_scope VALUES ('basic', 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95', false);
INSERT INTO public.default_client_scope VALUES ('basic', '28da7ca3-f9dc-4677-a119-7b1ce5385b5e', false);
INSERT INTO public.default_client_scope VALUES ('basic', 'dd4bb033-5caa-457c-b5f4-d229dae39846', true);
INSERT INTO public.default_client_scope VALUES ('basic', '6ebf1a5f-0d7d-415a-8827-01f090b7e363', true);
INSERT INTO public.default_client_scope VALUES ('basic', '3ee644de-d428-41e3-8a78-94c75365d25f', false);


--
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.flyway_schema_history VALUES (1, '1.0.0', '<< Flyway Baseline >>', 'BASELINE', '<< Flyway Baseline >>', NULL, 'null', '2020-10-06 13:18:48.552536', 0, true);


--
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.keycloak_role VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', 'master', false, '${role_admin}', 'admin', 'master', NULL, 'master');
INSERT INTO public.keycloak_role VALUES ('3505f20d-b931-4ac3-bad0-03c49a0dab0a', 'master', false, '${role_create-realm}', 'create-realm', 'master', NULL, 'master');
INSERT INTO public.keycloak_role VALUES ('c5020a6e-66d0-46c3-8c93-74ec72acb34a', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_create-client}', 'create-client', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('2841dc22-dfa2-4067-9d51-5f606a1e44f0', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_view-realm}', 'view-realm', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('a83c0ba4-5e40-451f-a492-3d80c65bcbac', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_view-users}', 'view-users', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('3343adb5-267d-49c4-919e-62f6aedf98a3', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_view-clients}', 'view-clients', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('dcf1ae63-0b9c-430c-a745-281971be8e28', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_view-events}', 'view-events', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('dc3ce564-73b6-4463-9191-1dc58a3d4198', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_view-identity-providers}', 'view-identity-providers', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('c86f7fb9-4991-4755-a617-1439e2b8d503', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_view-authorization}', 'view-authorization', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('4f8bad2a-613b-4fb2-ae0c-7e5be9812eb0', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_manage-realm}', 'manage-realm', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('81f0ce36-661c-4182-92a2-f184884f6a10', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_manage-users}', 'manage-users', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('2e486323-ef45-4942-8ba9-c415284ca613', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_manage-clients}', 'manage-clients', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('d53d77dc-0ac2-4943-a188-ea25e4727d9a', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_manage-events}', 'manage-events', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('521e5b7b-4f00-4686-8c42-3b0aea531b4e', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_manage-identity-providers}', 'manage-identity-providers', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('c5e54897-e834-46a0-b4d7-42085ff3031f', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_manage-authorization}', 'manage-authorization', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('4e3b81d9-cd1f-4160-b3a5-fe05e889fc0d', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_query-users}', 'query-users', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('a620cc9c-81f4-450e-9fb8-46f09f646c1f', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_query-clients}', 'query-clients', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('0dd04958-6b28-4bd2-a3c3-396c28c669e9', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_query-realms}', 'query-realms', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('6e352f18-3427-4dc9-b535-e73edd9334c4', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_query-groups}', 'query-groups', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('456fccf5-c6b4-4533-bd33-c2ad328ca885', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', true, '${role_view-profile}', 'view-profile', 'master', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', NULL);
INSERT INTO public.keycloak_role VALUES ('7ebb3989-fac5-4c07-82db-5b5811106821', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', true, '${role_manage-account}', 'manage-account', 'master', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', NULL);
INSERT INTO public.keycloak_role VALUES ('7aac82db-f9cf-4c32-a282-061030d7d390', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', true, '${role_manage-account-links}', 'manage-account-links', 'master', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', NULL);
INSERT INTO public.keycloak_role VALUES ('d1649d0d-1424-4076-9d4b-3e277303f9a2', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', true, '${role_view-applications}', 'view-applications', 'master', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', NULL);
INSERT INTO public.keycloak_role VALUES ('0cccc9eb-3cf1-427b-b3a1-406bcaa24c23', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', true, '${role_view-consent}', 'view-consent', 'master', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', NULL);
INSERT INTO public.keycloak_role VALUES ('d957c3da-8936-42e2-86a7-781f608ac056', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', true, '${role_manage-consent}', 'manage-consent', 'master', 'fb19ff79-345b-4df2-a627-b9209fc0db3c', NULL);
INSERT INTO public.keycloak_role VALUES ('f9242801-1312-4ee7-aa55-ba39459bec25', '45929fa3-9c70-4319-a99b-2363661ddc51', true, '${role_read-token}', 'read-token', 'master', '45929fa3-9c70-4319-a99b-2363661ddc51', NULL);
INSERT INTO public.keycloak_role VALUES ('f62113b8-c5ae-4068-a745-e3be2ff410f3', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', true, '${role_impersonation}', 'impersonation', 'master', 'a2d088c4-62f3-45db-a256-352d64eaaeb2', NULL);
INSERT INTO public.keycloak_role VALUES ('26e11c5c-6b33-4670-a9b8-cca6acddcd0e', 'master', false, '${role_offline-access}', 'offline_access', 'master', NULL, 'master');
INSERT INTO public.keycloak_role VALUES ('2d9e9f25-c726-4433-a0e6-27fa38244517', 'master', false, '${role_uma_authorization}', 'uma_authorization', 'master', NULL, 'master');
INSERT INTO public.keycloak_role VALUES ('2964d4f1-4f16-48f5-a41d-0b0465bde487', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_create-client}', 'create-client', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('16cf1181-0300-44e9-ae97-6bcb2c5f6853', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_view-realm}', 'view-realm', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('eb00f7f6-027f-4ea8-9399-27a14a9e438e', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_view-users}', 'view-users', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('1e803b75-d53a-4299-b264-36f4d18f4718', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_view-clients}', 'view-clients', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('8e801293-c240-4dae-a765-b3377941f4b1', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_view-events}', 'view-events', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('d64af374-3bd9-4949-93ed-f6940ff9c608', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_view-identity-providers}', 'view-identity-providers', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('b799fb73-0f19-4873-8cf5-4bf3e9f8856d', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_view-authorization}', 'view-authorization', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('81fda435-8045-4d4b-86e0-14accf24c35c', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_manage-realm}', 'manage-realm', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('969f0ebd-7f28-45de-8117-a7454d19c49a', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_manage-users}', 'manage-users', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('55098256-565e-4615-91c7-d50dcd467bb3', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_manage-clients}', 'manage-clients', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('9981bdb7-b159-4f32-b0f7-d60768a03add', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_manage-events}', 'manage-events', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('95ce601b-002f-4e6c-ac93-06c844655f1b', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_manage-identity-providers}', 'manage-identity-providers', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('6b6ee384-b5aa-4b79-bedb-7aea82d53412', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_manage-authorization}', 'manage-authorization', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('de1ea9db-12a3-4255-b977-bb956c1f9f0f', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_query-users}', 'query-users', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('f3cd07af-edc3-4d5a-b5fc-dd0a226fe7bf', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_query-clients}', 'query-clients', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('142576fe-e0f9-40cc-8f48-cedc84b1f84a', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_query-realms}', 'query-realms', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('4f95d3ad-d7b8-4506-aa57-64b5d2aae30b', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_query-groups}', 'query-groups', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_realm-admin}', 'realm-admin', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('9be2fbc9-7351-484b-87ca-0aeb9025e258', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_create-client}', 'create-client', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('4210d5f1-346d-4275-8e0c-34c54b7312b8', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_view-realm}', 'view-realm', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('5b83fb74-3c25-46b7-85be-dc74285c78dc', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_view-users}', 'view-users', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('627c5e6b-90a2-4770-bb63-7c0ff0cdd5e2', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_view-clients}', 'view-clients', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('a01520e8-8e0b-4917-8e60-ca8a240facae', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_view-events}', 'view-events', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('dba2715c-6172-4f58-93b8-3ce47d0115e7', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_view-identity-providers}', 'view-identity-providers', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('2291134f-f8b1-4a7e-860e-4ea370c5362c', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_view-authorization}', 'view-authorization', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('1d545ac7-f150-4aa1-a4d7-f337064b9e64', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_manage-realm}', 'manage-realm', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('7c044694-cae6-4010-a584-5570606cff44', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_manage-users}', 'manage-users', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('4bb24103-4377-4b56-928e-0836b8a191eb', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_manage-clients}', 'manage-clients', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('13819f30-8464-484d-a3c0-3240d8056750', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_manage-events}', 'manage-events', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('1dc6e8d6-bcad-408d-a502-6bcdccacfac4', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_manage-identity-providers}', 'manage-identity-providers', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('b75d5b61-6c9c-494c-9bb0-031b83e0f288', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_manage-authorization}', 'manage-authorization', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('ca562c5b-5d0b-4f0c-93a9-327761985b60', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_query-users}', 'query-users', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('0fb624e1-be14-4cfa-a48e-553e7153cb6c', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_query-clients}', 'query-clients', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('fcbbeace-a1ed-4263-b3c3-1c0f2d5190f9', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_query-realms}', 'query-realms', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('def639d5-fad8-4ef9-9543-742d99950b30', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_query-groups}', 'query-groups', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('82a28430-f709-41d6-af26-08be2c07e0d9', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', true, '${role_view-profile}', 'view-profile', 'basic', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', NULL);
INSERT INTO public.keycloak_role VALUES ('8087d3e2-e8ba-48f3-b795-df7150cc5dd8', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', true, '${role_manage-account}', 'manage-account', 'basic', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', NULL);
INSERT INTO public.keycloak_role VALUES ('b09d0d4e-5133-4057-afda-857205b23364', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', true, '${role_manage-account-links}', 'manage-account-links', 'basic', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', NULL);
INSERT INTO public.keycloak_role VALUES ('9d669bdb-1a17-45b9-a8f0-2469a72b5252', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', true, '${role_view-applications}', 'view-applications', 'basic', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', NULL);
INSERT INTO public.keycloak_role VALUES ('44fcd244-4012-4348-86c5-01f67bcd1d2b', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', true, '${role_view-consent}', 'view-consent', 'basic', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', NULL);
INSERT INTO public.keycloak_role VALUES ('68f7b0d1-5d78-4e37-96db-b386b385a7e3', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', true, '${role_manage-consent}', 'manage-consent', 'basic', '9641d4ab-65cc-4495-b1fc-b9c446d516ec', NULL);
INSERT INTO public.keycloak_role VALUES ('97e5b926-4ebe-4200-ae92-bde0cdbb7acd', '147171d1-542f-44a0-b186-7aa080feee1d', true, '${role_impersonation}', 'impersonation', 'master', '147171d1-542f-44a0-b186-7aa080feee1d', NULL);
INSERT INTO public.keycloak_role VALUES ('7fc71fa4-435e-42d0-b823-59664712e53c', '573645d5-934f-4853-bdd8-6e617ff7cb60', true, '${role_impersonation}', 'impersonation', 'basic', '573645d5-934f-4853-bdd8-6e617ff7cb60', NULL);
INSERT INTO public.keycloak_role VALUES ('c456eb88-d71a-4e8e-bf6e-7852f6fc1869', '34344398-f203-4014-b38f-7e7d448f1f0a', true, '${role_read-token}', 'read-token', 'basic', '34344398-f203-4014-b38f-7e7d448f1f0a', NULL);
INSERT INTO public.keycloak_role VALUES ('d8f3a233-72f4-4b8b-a2fe-66b6c34e0cfc', 'basic', false, '${role_offline-access}', 'offline_access', 'basic', NULL, 'basic');
INSERT INTO public.keycloak_role VALUES ('3bcf380d-eea3-4e5c-abc0-3c86fb7b603c', 'basic', false, '${role_uma_authorization}', 'uma_authorization', 'basic', NULL, 'basic');


--
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.migration_model VALUES ('gstk0', '11.0.2', 1601980598);


--
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.protocol_mapper VALUES ('6ae425b1-fffa-4b7d-9b05-b9cf5d1409b4', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', '8d948212-8e06-4645-a938-6cd42d9451ca', NULL);
INSERT INTO public.protocol_mapper VALUES ('5804709c-d94e-4733-8336-0063f710dbd0', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '4d960123-869a-4294-a38b-5f61f7f9667d', NULL);
INSERT INTO public.protocol_mapper VALUES ('ed018d6f-39fc-4415-9f4d-3af94e821fd6', 'role list', 'saml', 'saml-role-list-mapper', NULL, 'e467318e-1417-40eb-bc71-77c5947bbb27');
INSERT INTO public.protocol_mapper VALUES ('0b7ba4be-c160-4983-89cd-5b1d4d514e9c', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('8423172d-55e5-4eaa-9d0a-88be8f152440', 'family name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('09a6c9c3-36fc-41f4-b36e-b543741754c2', 'given name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('93b7af9d-b797-4e99-8c7c-376995847a0e', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('1678b8db-b68c-4f3d-b071-6e48e814185b', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('aaa76fa1-4595-4ce7-82cb-49a2fe8d00cb', 'username', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('7b887429-e327-4a1f-938e-250603df8e63', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('f003d10d-f7d2-4cea-b527-9991405ff44a', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('bda443d5-32ed-4d8a-a964-acadec0c0278', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('48dfba98-853f-4c5d-a351-d6fc55ac13f6', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('2a1c70f1-3a27-4d1b-a95c-a40e3106285a', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('0de60c0d-de2a-44d8-b4ca-27838040c165', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('00e3ffad-e8ec-435d-80a3-347e953131b5', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('a539fac4-c421-48f8-9a50-9b9cea9cf265', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '3d593446-7d4c-4b74-aca0-c54f65d2b95c');
INSERT INTO public.protocol_mapper VALUES ('688570da-4a5d-4567-ab21-09422c93fe90', 'email', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '8d44d345-894d-48ba-8edd-9527b442349f');
INSERT INTO public.protocol_mapper VALUES ('f4fb8086-bcbf-48ae-be09-c79849590cbd', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '8d44d345-894d-48ba-8edd-9527b442349f');
INSERT INTO public.protocol_mapper VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'address', 'openid-connect', 'oidc-address-mapper', NULL, 'd6a1628c-1ab3-4825-a5cf-c3558c5f6177');
INSERT INTO public.protocol_mapper VALUES ('a92ee41b-6f98-4f7e-90ac-cb0f43fcaa83', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'db3341e6-30c7-4e75-82ea-73694cdccc99');
INSERT INTO public.protocol_mapper VALUES ('315117f2-4c4c-448d-b50a-8896289e180b', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'db3341e6-30c7-4e75-82ea-73694cdccc99');
INSERT INTO public.protocol_mapper VALUES ('70ac6a83-dba7-43d6-918a-11291a889ef6', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '26c35a13-7654-4bd4-a90a-1c24b3ea42e3');
INSERT INTO public.protocol_mapper VALUES ('dc3c1951-63bd-4052-8e31-d7252ba7dfcb', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, '26c35a13-7654-4bd4-a90a-1c24b3ea42e3');
INSERT INTO public.protocol_mapper VALUES ('ba1a0074-d09c-46b6-932a-635019937f7d', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, '26c35a13-7654-4bd4-a90a-1c24b3ea42e3');
INSERT INTO public.protocol_mapper VALUES ('bdb1955a-c8fe-4a28-aa8d-5de7611aa6c2', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, '2b6d635d-7582-4627-877f-75b52a41bd1b');
INSERT INTO public.protocol_mapper VALUES ('7f08a523-fcbc-42f0-b28a-2f3e87113b1c', 'upn', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '7e0334e1-5511-4209-a595-ceff179bc68d');
INSERT INTO public.protocol_mapper VALUES ('ab75ff75-0fda-41ca-9152-08bf9f79673f', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '7e0334e1-5511-4209-a595-ceff179bc68d');
INSERT INTO public.protocol_mapper VALUES ('72c4502a-2e21-4964-b536-3e75b4ab9924', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', '21c7a827-4822-4707-9da4-e47acf42ea5a', NULL);
INSERT INTO public.protocol_mapper VALUES ('61073b94-4803-44bc-9b55-63ef54935000', 'role list', 'saml', 'saml-role-list-mapper', NULL, 'bf778e8f-203b-42e2-ae8f-022f19183365');
INSERT INTO public.protocol_mapper VALUES ('a0a13d2a-d291-4215-b14b-4a5291ff724b', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('a16c2edc-3b4b-460d-a450-d44507941de1', 'family name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('92b277c5-8013-49dc-93d6-2b8fc321493e', 'given name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('ce65162f-a9f0-48e9-a038-ac0c23b38296', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('e2778212-f386-42e2-be1c-617f195d054a', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('57166571-95fa-4839-9d94-4ae9fcf8cbd7', 'username', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('8efc2a83-913e-4768-afbb-57d16fea8728', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('3211d6a5-3f40-424e-a597-849b081e88b0', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('18f8cd98-e90f-4aec-85e7-741f769e7e55', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('3ac7d63e-b6c7-45a0-aa82-64449ceda37f', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('db68523f-5b84-40e3-9d4f-aeddb50bfa0a', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('8f0a9056-d263-4b73-8bc2-9f46b1679573', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('f598a72c-0cbd-4728-a1b7-5e76f887b5b7', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('5064c989-c677-41be-b059-e717947a56be', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'd1c987c5-5be9-42c7-82ba-509cfd46f785');
INSERT INTO public.protocol_mapper VALUES ('7762b4d2-20f4-49af-83ac-7e60ddbf2a1b', 'email', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '2662754e-12e2-4756-9174-8532c1446dc7');
INSERT INTO public.protocol_mapper VALUES ('de3e8deb-6048-40e1-89fd-bd5e9ff6143e', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '2662754e-12e2-4756-9174-8532c1446dc7');
INSERT INTO public.protocol_mapper VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'address', 'openid-connect', 'oidc-address-mapper', NULL, 'b7eeca40-a0f1-4c7f-aaf1-c60a90297b95');
INSERT INTO public.protocol_mapper VALUES ('74533c98-7102-442b-bc9f-ce286df00449', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '28da7ca3-f9dc-4677-a119-7b1ce5385b5e');
INSERT INTO public.protocol_mapper VALUES ('4186e508-3bae-457a-b191-0c86a0be136e', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '28da7ca3-f9dc-4677-a119-7b1ce5385b5e');
INSERT INTO public.protocol_mapper VALUES ('c2f2c81d-4640-4f70-8c4c-42d61a55bc98', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'dd4bb033-5caa-457c-b5f4-d229dae39846');
INSERT INTO public.protocol_mapper VALUES ('4bf485ba-345f-42e3-bd3a-c0630fcb25a3', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, 'dd4bb033-5caa-457c-b5f4-d229dae39846');
INSERT INTO public.protocol_mapper VALUES ('54b98ba7-af05-4d49-b39b-80fd2f1e9d9c', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, 'dd4bb033-5caa-457c-b5f4-d229dae39846');
INSERT INTO public.protocol_mapper VALUES ('48089017-c399-4138-ad7e-f28cce00a89d', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, '6ebf1a5f-0d7d-415a-8827-01f090b7e363');
INSERT INTO public.protocol_mapper VALUES ('6509c0af-b711-426a-89dd-f0226fd50fd6', 'upn', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '3ee644de-d428-41e3-8a78-94c75365d25f');
INSERT INTO public.protocol_mapper VALUES ('8d83c691-7e21-41a0-975e-03e632ca9a68', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '3ee644de-d428-41e3-8a78-94c75365d25f');
INSERT INTO public.protocol_mapper VALUES ('7a9380d1-3001-4ce8-969a-abd7daea58df', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '3570f3bf-fdf4-4304-bdd6-dcb957c39e93', NULL);
INSERT INTO public.protocol_mapper VALUES ('2ab03750-0afd-412d-ad44-8e1404b07c3a', 'Client ID', 'openid-connect', 'oidc-usersessionmodel-note-mapper', 'b58b8848-e780-438e-ba0f-c2c512c9b7a8', NULL);
INSERT INTO public.protocol_mapper VALUES ('9f3cf479-a1a6-4761-966a-9e225d376a62', 'Client Host', 'openid-connect', 'oidc-usersessionmodel-note-mapper', 'b58b8848-e780-438e-ba0f-c2c512c9b7a8', NULL);
INSERT INTO public.protocol_mapper VALUES ('760477ad-bb8a-4961-8aaf-c4828fb34f95', 'Client IP Address', 'openid-connect', 'oidc-usersessionmodel-note-mapper', 'b58b8848-e780-438e-ba0f-c2c512c9b7a8', NULL);


--
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.protocol_mapper_config VALUES ('5804709c-d94e-4733-8336-0063f710dbd0', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5804709c-d94e-4733-8336-0063f710dbd0', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('5804709c-d94e-4733-8336-0063f710dbd0', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5804709c-d94e-4733-8336-0063f710dbd0', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5804709c-d94e-4733-8336-0063f710dbd0', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('5804709c-d94e-4733-8336-0063f710dbd0', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('ed018d6f-39fc-4415-9f4d-3af94e821fd6', 'false', 'single');
INSERT INTO public.protocol_mapper_config VALUES ('ed018d6f-39fc-4415-9f4d-3af94e821fd6', 'Basic', 'attribute.nameformat');
INSERT INTO public.protocol_mapper_config VALUES ('ed018d6f-39fc-4415-9f4d-3af94e821fd6', 'Role', 'attribute.name');
INSERT INTO public.protocol_mapper_config VALUES ('0b7ba4be-c160-4983-89cd-5b1d4d514e9c', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('0b7ba4be-c160-4983-89cd-5b1d4d514e9c', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('0b7ba4be-c160-4983-89cd-5b1d4d514e9c', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8423172d-55e5-4eaa-9d0a-88be8f152440', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8423172d-55e5-4eaa-9d0a-88be8f152440', 'lastName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8423172d-55e5-4eaa-9d0a-88be8f152440', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8423172d-55e5-4eaa-9d0a-88be8f152440', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8423172d-55e5-4eaa-9d0a-88be8f152440', 'family_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8423172d-55e5-4eaa-9d0a-88be8f152440', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('09a6c9c3-36fc-41f4-b36e-b543741754c2', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('09a6c9c3-36fc-41f4-b36e-b543741754c2', 'firstName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('09a6c9c3-36fc-41f4-b36e-b543741754c2', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('09a6c9c3-36fc-41f4-b36e-b543741754c2', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('09a6c9c3-36fc-41f4-b36e-b543741754c2', 'given_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('09a6c9c3-36fc-41f4-b36e-b543741754c2', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('93b7af9d-b797-4e99-8c7c-376995847a0e', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('93b7af9d-b797-4e99-8c7c-376995847a0e', 'middleName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('93b7af9d-b797-4e99-8c7c-376995847a0e', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('93b7af9d-b797-4e99-8c7c-376995847a0e', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('93b7af9d-b797-4e99-8c7c-376995847a0e', 'middle_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('93b7af9d-b797-4e99-8c7c-376995847a0e', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('1678b8db-b68c-4f3d-b071-6e48e814185b', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('1678b8db-b68c-4f3d-b071-6e48e814185b', 'nickname', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('1678b8db-b68c-4f3d-b071-6e48e814185b', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('1678b8db-b68c-4f3d-b071-6e48e814185b', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('1678b8db-b68c-4f3d-b071-6e48e814185b', 'nickname', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('1678b8db-b68c-4f3d-b071-6e48e814185b', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('aaa76fa1-4595-4ce7-82cb-49a2fe8d00cb', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('aaa76fa1-4595-4ce7-82cb-49a2fe8d00cb', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('aaa76fa1-4595-4ce7-82cb-49a2fe8d00cb', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('aaa76fa1-4595-4ce7-82cb-49a2fe8d00cb', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('aaa76fa1-4595-4ce7-82cb-49a2fe8d00cb', 'preferred_username', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('aaa76fa1-4595-4ce7-82cb-49a2fe8d00cb', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('7b887429-e327-4a1f-938e-250603df8e63', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7b887429-e327-4a1f-938e-250603df8e63', 'profile', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('7b887429-e327-4a1f-938e-250603df8e63', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7b887429-e327-4a1f-938e-250603df8e63', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7b887429-e327-4a1f-938e-250603df8e63', 'profile', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('7b887429-e327-4a1f-938e-250603df8e63', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('f003d10d-f7d2-4cea-b527-9991405ff44a', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f003d10d-f7d2-4cea-b527-9991405ff44a', 'picture', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('f003d10d-f7d2-4cea-b527-9991405ff44a', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f003d10d-f7d2-4cea-b527-9991405ff44a', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f003d10d-f7d2-4cea-b527-9991405ff44a', 'picture', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('f003d10d-f7d2-4cea-b527-9991405ff44a', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('bda443d5-32ed-4d8a-a964-acadec0c0278', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('bda443d5-32ed-4d8a-a964-acadec0c0278', 'website', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('bda443d5-32ed-4d8a-a964-acadec0c0278', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('bda443d5-32ed-4d8a-a964-acadec0c0278', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('bda443d5-32ed-4d8a-a964-acadec0c0278', 'website', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('bda443d5-32ed-4d8a-a964-acadec0c0278', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('48dfba98-853f-4c5d-a351-d6fc55ac13f6', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('48dfba98-853f-4c5d-a351-d6fc55ac13f6', 'gender', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('48dfba98-853f-4c5d-a351-d6fc55ac13f6', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('48dfba98-853f-4c5d-a351-d6fc55ac13f6', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('48dfba98-853f-4c5d-a351-d6fc55ac13f6', 'gender', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('48dfba98-853f-4c5d-a351-d6fc55ac13f6', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('2a1c70f1-3a27-4d1b-a95c-a40e3106285a', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2a1c70f1-3a27-4d1b-a95c-a40e3106285a', 'birthdate', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('2a1c70f1-3a27-4d1b-a95c-a40e3106285a', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2a1c70f1-3a27-4d1b-a95c-a40e3106285a', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2a1c70f1-3a27-4d1b-a95c-a40e3106285a', 'birthdate', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('2a1c70f1-3a27-4d1b-a95c-a40e3106285a', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('0de60c0d-de2a-44d8-b4ca-27838040c165', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('0de60c0d-de2a-44d8-b4ca-27838040c165', 'zoneinfo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('0de60c0d-de2a-44d8-b4ca-27838040c165', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('0de60c0d-de2a-44d8-b4ca-27838040c165', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('0de60c0d-de2a-44d8-b4ca-27838040c165', 'zoneinfo', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('0de60c0d-de2a-44d8-b4ca-27838040c165', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('00e3ffad-e8ec-435d-80a3-347e953131b5', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('00e3ffad-e8ec-435d-80a3-347e953131b5', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('00e3ffad-e8ec-435d-80a3-347e953131b5', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('00e3ffad-e8ec-435d-80a3-347e953131b5', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('00e3ffad-e8ec-435d-80a3-347e953131b5', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('00e3ffad-e8ec-435d-80a3-347e953131b5', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('a539fac4-c421-48f8-9a50-9b9cea9cf265', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a539fac4-c421-48f8-9a50-9b9cea9cf265', 'updatedAt', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('a539fac4-c421-48f8-9a50-9b9cea9cf265', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a539fac4-c421-48f8-9a50-9b9cea9cf265', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a539fac4-c421-48f8-9a50-9b9cea9cf265', 'updated_at', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('a539fac4-c421-48f8-9a50-9b9cea9cf265', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('688570da-4a5d-4567-ab21-09422c93fe90', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('688570da-4a5d-4567-ab21-09422c93fe90', 'email', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('688570da-4a5d-4567-ab21-09422c93fe90', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('688570da-4a5d-4567-ab21-09422c93fe90', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('688570da-4a5d-4567-ab21-09422c93fe90', 'email', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('688570da-4a5d-4567-ab21-09422c93fe90', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('f4fb8086-bcbf-48ae-be09-c79849590cbd', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f4fb8086-bcbf-48ae-be09-c79849590cbd', 'emailVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('f4fb8086-bcbf-48ae-be09-c79849590cbd', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f4fb8086-bcbf-48ae-be09-c79849590cbd', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f4fb8086-bcbf-48ae-be09-c79849590cbd', 'email_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('f4fb8086-bcbf-48ae-be09-c79849590cbd', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'formatted', 'user.attribute.formatted');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'country', 'user.attribute.country');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'postal_code', 'user.attribute.postal_code');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'street', 'user.attribute.street');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'region', 'user.attribute.region');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('221dc5c2-3110-4fa0-b34c-11dc4c891df3', 'locality', 'user.attribute.locality');
INSERT INTO public.protocol_mapper_config VALUES ('a92ee41b-6f98-4f7e-90ac-cb0f43fcaa83', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a92ee41b-6f98-4f7e-90ac-cb0f43fcaa83', 'phoneNumber', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('a92ee41b-6f98-4f7e-90ac-cb0f43fcaa83', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a92ee41b-6f98-4f7e-90ac-cb0f43fcaa83', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a92ee41b-6f98-4f7e-90ac-cb0f43fcaa83', 'phone_number', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('a92ee41b-6f98-4f7e-90ac-cb0f43fcaa83', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('315117f2-4c4c-448d-b50a-8896289e180b', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('315117f2-4c4c-448d-b50a-8896289e180b', 'phoneNumberVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('315117f2-4c4c-448d-b50a-8896289e180b', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('315117f2-4c4c-448d-b50a-8896289e180b', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('315117f2-4c4c-448d-b50a-8896289e180b', 'phone_number_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('315117f2-4c4c-448d-b50a-8896289e180b', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('70ac6a83-dba7-43d6-918a-11291a889ef6', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('70ac6a83-dba7-43d6-918a-11291a889ef6', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('70ac6a83-dba7-43d6-918a-11291a889ef6', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('70ac6a83-dba7-43d6-918a-11291a889ef6', 'realm_access.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('70ac6a83-dba7-43d6-918a-11291a889ef6', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('dc3c1951-63bd-4052-8e31-d7252ba7dfcb', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('dc3c1951-63bd-4052-8e31-d7252ba7dfcb', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('dc3c1951-63bd-4052-8e31-d7252ba7dfcb', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('dc3c1951-63bd-4052-8e31-d7252ba7dfcb', 'resource_access.${client_id}.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('dc3c1951-63bd-4052-8e31-d7252ba7dfcb', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('7f08a523-fcbc-42f0-b28a-2f3e87113b1c', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7f08a523-fcbc-42f0-b28a-2f3e87113b1c', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('7f08a523-fcbc-42f0-b28a-2f3e87113b1c', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7f08a523-fcbc-42f0-b28a-2f3e87113b1c', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7f08a523-fcbc-42f0-b28a-2f3e87113b1c', 'upn', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('7f08a523-fcbc-42f0-b28a-2f3e87113b1c', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('ab75ff75-0fda-41ca-9152-08bf9f79673f', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('ab75ff75-0fda-41ca-9152-08bf9f79673f', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('ab75ff75-0fda-41ca-9152-08bf9f79673f', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('ab75ff75-0fda-41ca-9152-08bf9f79673f', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('ab75ff75-0fda-41ca-9152-08bf9f79673f', 'groups', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('ab75ff75-0fda-41ca-9152-08bf9f79673f', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('61073b94-4803-44bc-9b55-63ef54935000', 'false', 'single');
INSERT INTO public.protocol_mapper_config VALUES ('61073b94-4803-44bc-9b55-63ef54935000', 'Basic', 'attribute.nameformat');
INSERT INTO public.protocol_mapper_config VALUES ('61073b94-4803-44bc-9b55-63ef54935000', 'Role', 'attribute.name');
INSERT INTO public.protocol_mapper_config VALUES ('a0a13d2a-d291-4215-b14b-4a5291ff724b', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a0a13d2a-d291-4215-b14b-4a5291ff724b', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a0a13d2a-d291-4215-b14b-4a5291ff724b', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a16c2edc-3b4b-460d-a450-d44507941de1', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a16c2edc-3b4b-460d-a450-d44507941de1', 'lastName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('a16c2edc-3b4b-460d-a450-d44507941de1', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a16c2edc-3b4b-460d-a450-d44507941de1', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a16c2edc-3b4b-460d-a450-d44507941de1', 'family_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('a16c2edc-3b4b-460d-a450-d44507941de1', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('92b277c5-8013-49dc-93d6-2b8fc321493e', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('92b277c5-8013-49dc-93d6-2b8fc321493e', 'firstName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('92b277c5-8013-49dc-93d6-2b8fc321493e', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('92b277c5-8013-49dc-93d6-2b8fc321493e', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('92b277c5-8013-49dc-93d6-2b8fc321493e', 'given_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('92b277c5-8013-49dc-93d6-2b8fc321493e', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('ce65162f-a9f0-48e9-a038-ac0c23b38296', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('ce65162f-a9f0-48e9-a038-ac0c23b38296', 'middleName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('ce65162f-a9f0-48e9-a038-ac0c23b38296', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('ce65162f-a9f0-48e9-a038-ac0c23b38296', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('ce65162f-a9f0-48e9-a038-ac0c23b38296', 'middle_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('ce65162f-a9f0-48e9-a038-ac0c23b38296', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('e2778212-f386-42e2-be1c-617f195d054a', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e2778212-f386-42e2-be1c-617f195d054a', 'nickname', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('e2778212-f386-42e2-be1c-617f195d054a', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e2778212-f386-42e2-be1c-617f195d054a', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e2778212-f386-42e2-be1c-617f195d054a', 'nickname', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('e2778212-f386-42e2-be1c-617f195d054a', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('57166571-95fa-4839-9d94-4ae9fcf8cbd7', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('57166571-95fa-4839-9d94-4ae9fcf8cbd7', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('57166571-95fa-4839-9d94-4ae9fcf8cbd7', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('57166571-95fa-4839-9d94-4ae9fcf8cbd7', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('57166571-95fa-4839-9d94-4ae9fcf8cbd7', 'preferred_username', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('57166571-95fa-4839-9d94-4ae9fcf8cbd7', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8efc2a83-913e-4768-afbb-57d16fea8728', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8efc2a83-913e-4768-afbb-57d16fea8728', 'profile', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8efc2a83-913e-4768-afbb-57d16fea8728', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8efc2a83-913e-4768-afbb-57d16fea8728', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8efc2a83-913e-4768-afbb-57d16fea8728', 'profile', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8efc2a83-913e-4768-afbb-57d16fea8728', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('3211d6a5-3f40-424e-a597-849b081e88b0', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3211d6a5-3f40-424e-a597-849b081e88b0', 'picture', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('3211d6a5-3f40-424e-a597-849b081e88b0', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3211d6a5-3f40-424e-a597-849b081e88b0', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3211d6a5-3f40-424e-a597-849b081e88b0', 'picture', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('3211d6a5-3f40-424e-a597-849b081e88b0', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('18f8cd98-e90f-4aec-85e7-741f769e7e55', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('18f8cd98-e90f-4aec-85e7-741f769e7e55', 'website', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('18f8cd98-e90f-4aec-85e7-741f769e7e55', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('18f8cd98-e90f-4aec-85e7-741f769e7e55', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('18f8cd98-e90f-4aec-85e7-741f769e7e55', 'website', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('18f8cd98-e90f-4aec-85e7-741f769e7e55', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('3ac7d63e-b6c7-45a0-aa82-64449ceda37f', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3ac7d63e-b6c7-45a0-aa82-64449ceda37f', 'gender', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('3ac7d63e-b6c7-45a0-aa82-64449ceda37f', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3ac7d63e-b6c7-45a0-aa82-64449ceda37f', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3ac7d63e-b6c7-45a0-aa82-64449ceda37f', 'gender', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('3ac7d63e-b6c7-45a0-aa82-64449ceda37f', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('db68523f-5b84-40e3-9d4f-aeddb50bfa0a', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('db68523f-5b84-40e3-9d4f-aeddb50bfa0a', 'birthdate', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('db68523f-5b84-40e3-9d4f-aeddb50bfa0a', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('db68523f-5b84-40e3-9d4f-aeddb50bfa0a', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('db68523f-5b84-40e3-9d4f-aeddb50bfa0a', 'birthdate', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('db68523f-5b84-40e3-9d4f-aeddb50bfa0a', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8f0a9056-d263-4b73-8bc2-9f46b1679573', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8f0a9056-d263-4b73-8bc2-9f46b1679573', 'zoneinfo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8f0a9056-d263-4b73-8bc2-9f46b1679573', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8f0a9056-d263-4b73-8bc2-9f46b1679573', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8f0a9056-d263-4b73-8bc2-9f46b1679573', 'zoneinfo', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8f0a9056-d263-4b73-8bc2-9f46b1679573', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('f598a72c-0cbd-4728-a1b7-5e76f887b5b7', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f598a72c-0cbd-4728-a1b7-5e76f887b5b7', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('f598a72c-0cbd-4728-a1b7-5e76f887b5b7', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f598a72c-0cbd-4728-a1b7-5e76f887b5b7', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f598a72c-0cbd-4728-a1b7-5e76f887b5b7', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('f598a72c-0cbd-4728-a1b7-5e76f887b5b7', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('5064c989-c677-41be-b059-e717947a56be', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5064c989-c677-41be-b059-e717947a56be', 'updatedAt', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('5064c989-c677-41be-b059-e717947a56be', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5064c989-c677-41be-b059-e717947a56be', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5064c989-c677-41be-b059-e717947a56be', 'updated_at', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('5064c989-c677-41be-b059-e717947a56be', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('7762b4d2-20f4-49af-83ac-7e60ddbf2a1b', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7762b4d2-20f4-49af-83ac-7e60ddbf2a1b', 'email', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('7762b4d2-20f4-49af-83ac-7e60ddbf2a1b', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7762b4d2-20f4-49af-83ac-7e60ddbf2a1b', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7762b4d2-20f4-49af-83ac-7e60ddbf2a1b', 'email', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('7762b4d2-20f4-49af-83ac-7e60ddbf2a1b', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('de3e8deb-6048-40e1-89fd-bd5e9ff6143e', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('de3e8deb-6048-40e1-89fd-bd5e9ff6143e', 'emailVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('de3e8deb-6048-40e1-89fd-bd5e9ff6143e', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('de3e8deb-6048-40e1-89fd-bd5e9ff6143e', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('de3e8deb-6048-40e1-89fd-bd5e9ff6143e', 'email_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('de3e8deb-6048-40e1-89fd-bd5e9ff6143e', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'formatted', 'user.attribute.formatted');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'country', 'user.attribute.country');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'postal_code', 'user.attribute.postal_code');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'street', 'user.attribute.street');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'region', 'user.attribute.region');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e76b4de1-60b7-40d7-b592-a803f61df14f', 'locality', 'user.attribute.locality');
INSERT INTO public.protocol_mapper_config VALUES ('74533c98-7102-442b-bc9f-ce286df00449', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('74533c98-7102-442b-bc9f-ce286df00449', 'phoneNumber', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('74533c98-7102-442b-bc9f-ce286df00449', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('74533c98-7102-442b-bc9f-ce286df00449', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('74533c98-7102-442b-bc9f-ce286df00449', 'phone_number', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('74533c98-7102-442b-bc9f-ce286df00449', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('4186e508-3bae-457a-b191-0c86a0be136e', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('4186e508-3bae-457a-b191-0c86a0be136e', 'phoneNumberVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('4186e508-3bae-457a-b191-0c86a0be136e', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('4186e508-3bae-457a-b191-0c86a0be136e', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('4186e508-3bae-457a-b191-0c86a0be136e', 'phone_number_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('4186e508-3bae-457a-b191-0c86a0be136e', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('c2f2c81d-4640-4f70-8c4c-42d61a55bc98', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('c2f2c81d-4640-4f70-8c4c-42d61a55bc98', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('c2f2c81d-4640-4f70-8c4c-42d61a55bc98', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c2f2c81d-4640-4f70-8c4c-42d61a55bc98', 'realm_access.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('c2f2c81d-4640-4f70-8c4c-42d61a55bc98', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('4bf485ba-345f-42e3-bd3a-c0630fcb25a3', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('4bf485ba-345f-42e3-bd3a-c0630fcb25a3', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('4bf485ba-345f-42e3-bd3a-c0630fcb25a3', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('4bf485ba-345f-42e3-bd3a-c0630fcb25a3', 'resource_access.${client_id}.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('4bf485ba-345f-42e3-bd3a-c0630fcb25a3', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('6509c0af-b711-426a-89dd-f0226fd50fd6', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6509c0af-b711-426a-89dd-f0226fd50fd6', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('6509c0af-b711-426a-89dd-f0226fd50fd6', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6509c0af-b711-426a-89dd-f0226fd50fd6', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6509c0af-b711-426a-89dd-f0226fd50fd6', 'upn', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('6509c0af-b711-426a-89dd-f0226fd50fd6', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8d83c691-7e21-41a0-975e-03e632ca9a68', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('8d83c691-7e21-41a0-975e-03e632ca9a68', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8d83c691-7e21-41a0-975e-03e632ca9a68', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8d83c691-7e21-41a0-975e-03e632ca9a68', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8d83c691-7e21-41a0-975e-03e632ca9a68', 'groups', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8d83c691-7e21-41a0-975e-03e632ca9a68', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('7a9380d1-3001-4ce8-969a-abd7daea58df', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7a9380d1-3001-4ce8-969a-abd7daea58df', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('7a9380d1-3001-4ce8-969a-abd7daea58df', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7a9380d1-3001-4ce8-969a-abd7daea58df', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7a9380d1-3001-4ce8-969a-abd7daea58df', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('7a9380d1-3001-4ce8-969a-abd7daea58df', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('2ab03750-0afd-412d-ad44-8e1404b07c3a', 'clientId', 'user.session.note');
INSERT INTO public.protocol_mapper_config VALUES ('2ab03750-0afd-412d-ad44-8e1404b07c3a', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2ab03750-0afd-412d-ad44-8e1404b07c3a', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2ab03750-0afd-412d-ad44-8e1404b07c3a', 'clientId', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('2ab03750-0afd-412d-ad44-8e1404b07c3a', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('9f3cf479-a1a6-4761-966a-9e225d376a62', 'clientHost', 'user.session.note');
INSERT INTO public.protocol_mapper_config VALUES ('9f3cf479-a1a6-4761-966a-9e225d376a62', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9f3cf479-a1a6-4761-966a-9e225d376a62', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9f3cf479-a1a6-4761-966a-9e225d376a62', 'clientHost', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('9f3cf479-a1a6-4761-966a-9e225d376a62', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('760477ad-bb8a-4961-8aaf-c4828fb34f95', 'clientAddress', 'user.session.note');
INSERT INTO public.protocol_mapper_config VALUES ('760477ad-bb8a-4961-8aaf-c4828fb34f95', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('760477ad-bb8a-4961-8aaf-c4828fb34f95', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('760477ad-bb8a-4961-8aaf-c4828fb34f95', 'clientAddress', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('760477ad-bb8a-4961-8aaf-c4828fb34f95', 'String', 'jsonType.label');


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.realm VALUES ('master', 60, 300, 60, NULL, NULL, NULL, true, false, 0, NULL, 'master', 0, NULL, false, false, false, false, 'EXTERNAL', 1800, 36000, false, false, 'a2d088c4-62f3-45db-a256-352d64eaaeb2', 1800, false, NULL, false, false, false, false, 0, 1, 30, 6, 'HmacSHA1', 'totp', '33878def-a847-4f52-adae-a046ce0c6382', 'c7d8856c-d93c-48cd-9da3-a5147e2c6cbd', 'd332e9bd-fe23-4387-9195-bf21432d934c', '3c2e4380-4ca7-4586-a310-0d3e670eafd6', '602aecff-2bbf-4d29-a324-90dbdcc9461c', 2592000, false, 900, true, false, 'b43ae151-9d33-4530-9f70-5a77bfe69b3c', 0, false, 0, 0);
INSERT INTO public.realm VALUES ('basic', 60, 300, 300, NULL, NULL, NULL, true, false, 0, NULL, 'basic', 0, NULL, false, false, false, false, 'EXTERNAL', 1800, 36000, false, false, '147171d1-542f-44a0-b186-7aa080feee1d', 1800, false, NULL, false, false, false, false, 0, 1, 30, 6, 'HmacSHA1', 'totp', 'bddb3009-8e26-4cb1-b243-115bae4523b2', '08d61b81-f272-4a84-b393-398b3c82383a', '6a901f8b-ad0e-47d2-8a6c-55ff288ec8b4', '3e31c26e-ad51-4c8b-9991-9c763c543acd', 'e04b7e53-7c59-4d2f-a134-cc023c1bb435', 2592000, false, 900, true, false, 'bcf69207-cbef-450a-a39f-633edcd311e8', 0, false, 0, 0);


--
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.realm_attribute VALUES ('_browser_header.contentSecurityPolicyReportOnly', '', 'master');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xContentTypeOptions', 'nosniff', 'master');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xRobotsTag', 'none', 'master');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xFrameOptions', 'SAMEORIGIN', 'master');
INSERT INTO public.realm_attribute VALUES ('_browser_header.contentSecurityPolicy', 'frame-src ''self''; frame-ancestors ''self''; object-src ''none'';', 'master');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xXSSProtection', '1; mode=block', 'master');
INSERT INTO public.realm_attribute VALUES ('_browser_header.strictTransportSecurity', 'max-age=31536000; includeSubDomains', 'master');
INSERT INTO public.realm_attribute VALUES ('bruteForceProtected', 'false', 'master');
INSERT INTO public.realm_attribute VALUES ('permanentLockout', 'false', 'master');
INSERT INTO public.realm_attribute VALUES ('maxFailureWaitSeconds', '900', 'master');
INSERT INTO public.realm_attribute VALUES ('minimumQuickLoginWaitSeconds', '60', 'master');
INSERT INTO public.realm_attribute VALUES ('waitIncrementSeconds', '60', 'master');
INSERT INTO public.realm_attribute VALUES ('quickLoginCheckMilliSeconds', '1000', 'master');
INSERT INTO public.realm_attribute VALUES ('maxDeltaTimeSeconds', '43200', 'master');
INSERT INTO public.realm_attribute VALUES ('failureFactor', '30', 'master');
INSERT INTO public.realm_attribute VALUES ('displayName', 'Keycloak', 'master');
INSERT INTO public.realm_attribute VALUES ('displayNameHtml', '<div class="kc-logo-text"><span>Keycloak</span></div>', 'master');
INSERT INTO public.realm_attribute VALUES ('offlineSessionMaxLifespanEnabled', 'false', 'master');
INSERT INTO public.realm_attribute VALUES ('offlineSessionMaxLifespan', '5184000', 'master');
INSERT INTO public.realm_attribute VALUES ('_browser_header.contentSecurityPolicyReportOnly', '', 'basic');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xContentTypeOptions', 'nosniff', 'basic');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xRobotsTag', 'none', 'basic');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xFrameOptions', 'SAMEORIGIN', 'basic');
INSERT INTO public.realm_attribute VALUES ('_browser_header.contentSecurityPolicy', 'frame-src ''self''; frame-ancestors ''self''; object-src ''none'';', 'basic');
INSERT INTO public.realm_attribute VALUES ('_browser_header.xXSSProtection', '1; mode=block', 'basic');
INSERT INTO public.realm_attribute VALUES ('_browser_header.strictTransportSecurity', 'max-age=31536000; includeSubDomains', 'basic');
INSERT INTO public.realm_attribute VALUES ('bruteForceProtected', 'false', 'basic');
INSERT INTO public.realm_attribute VALUES ('permanentLockout', 'false', 'basic');
INSERT INTO public.realm_attribute VALUES ('maxFailureWaitSeconds', '900', 'basic');
INSERT INTO public.realm_attribute VALUES ('minimumQuickLoginWaitSeconds', '60', 'basic');
INSERT INTO public.realm_attribute VALUES ('waitIncrementSeconds', '60', 'basic');
INSERT INTO public.realm_attribute VALUES ('quickLoginCheckMilliSeconds', '1000', 'basic');
INSERT INTO public.realm_attribute VALUES ('maxDeltaTimeSeconds', '43200', 'basic');
INSERT INTO public.realm_attribute VALUES ('failureFactor', '30', 'basic');
INSERT INTO public.realm_attribute VALUES ('offlineSessionMaxLifespanEnabled', 'false', 'basic');
INSERT INTO public.realm_attribute VALUES ('offlineSessionMaxLifespan', '5184000', 'basic');
INSERT INTO public.realm_attribute VALUES ('actionTokenGeneratedByAdminLifespan', '43200', 'basic');
INSERT INTO public.realm_attribute VALUES ('actionTokenGeneratedByUserLifespan', '300', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyRpEntityName', 'keycloak', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicySignatureAlgorithms', 'ES256', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyRpId', '', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyAttestationConveyancePreference', 'not specified', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyAuthenticatorAttachment', 'not specified', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyRequireResidentKey', 'not specified', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyUserVerificationRequirement', 'not specified', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyCreateTimeout', '0', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyAvoidSameAuthenticatorRegister', 'false', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyRpEntityNamePasswordless', 'keycloak', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicySignatureAlgorithmsPasswordless', 'ES256', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyRpIdPasswordless', '', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyAttestationConveyancePreferencePasswordless', 'not specified', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyAuthenticatorAttachmentPasswordless', 'not specified', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyRequireResidentKeyPasswordless', 'not specified', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyUserVerificationRequirementPasswordless', 'not specified', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyCreateTimeoutPasswordless', '0', 'basic');
INSERT INTO public.realm_attribute VALUES ('webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless', 'false', 'basic');


--
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: realm_default_roles; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.realm_default_roles VALUES ('master', '26e11c5c-6b33-4670-a9b8-cca6acddcd0e');
INSERT INTO public.realm_default_roles VALUES ('master', '2d9e9f25-c726-4433-a0e6-27fa38244517');
INSERT INTO public.realm_default_roles VALUES ('basic', 'd8f3a233-72f4-4b8b-a2fe-66b6c34e0cfc');
INSERT INTO public.realm_default_roles VALUES ('basic', '3bcf380d-eea3-4e5c-abc0-3c86fb7b603c');


--
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.realm_events_listeners VALUES ('master', 'jboss-logging');
INSERT INTO public.realm_events_listeners VALUES ('basic', 'jboss-logging');


--
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.realm_required_credential VALUES ('password', 'password', true, true, 'master');
INSERT INTO public.realm_required_credential VALUES ('password', 'password', true, true, 'basic');


--
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.redirect_uris VALUES ('fb19ff79-345b-4df2-a627-b9209fc0db3c', '/realms/master/account/*');
INSERT INTO public.redirect_uris VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', '/realms/master/account/*');
INSERT INTO public.redirect_uris VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', '/admin/master/console/*');
INSERT INTO public.redirect_uris VALUES ('9641d4ab-65cc-4495-b1fc-b9c446d516ec', '/realms/basic/account/*');
INSERT INTO public.redirect_uris VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', '/realms/basic/account/*');
INSERT INTO public.redirect_uris VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', '/admin/basic/console/*');
INSERT INTO public.redirect_uris VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', 'http://localhost:3000/*');


--
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.required_action_provider VALUES ('f8f44264-57e4-49c5-9fba-f44aac895143', 'VERIFY_EMAIL', 'Verify Email', 'master', true, false, 'VERIFY_EMAIL', 50);
INSERT INTO public.required_action_provider VALUES ('f0a85756-8153-4715-aa90-92ec2cb71ec6', 'UPDATE_PROFILE', 'Update Profile', 'master', true, false, 'UPDATE_PROFILE', 40);
INSERT INTO public.required_action_provider VALUES ('824639ab-a7e8-4ae0-bf8d-876b70a656f9', 'CONFIGURE_TOTP', 'Configure OTP', 'master', true, false, 'CONFIGURE_TOTP', 10);
INSERT INTO public.required_action_provider VALUES ('2d7d2a50-c53c-428e-902e-6c608a512a65', 'UPDATE_PASSWORD', 'Update Password', 'master', true, false, 'UPDATE_PASSWORD', 30);
INSERT INTO public.required_action_provider VALUES ('d31611f8-5a3b-47ba-8b9e-a4004effb38b', 'terms_and_conditions', 'Terms and Conditions', 'master', false, false, 'terms_and_conditions', 20);
INSERT INTO public.required_action_provider VALUES ('d4180be4-9398-4609-918e-8648e85f63a2', 'update_user_locale', 'Update User Locale', 'master', true, false, 'update_user_locale', 1000);
INSERT INTO public.required_action_provider VALUES ('269e653d-74a1-467e-8793-e340c4679c5a', 'VERIFY_EMAIL', 'Verify Email', 'basic', true, false, 'VERIFY_EMAIL', 50);
INSERT INTO public.required_action_provider VALUES ('1eafd1f9-22d2-471c-9da5-d76520fbf1d7', 'UPDATE_PROFILE', 'Update Profile', 'basic', true, false, 'UPDATE_PROFILE', 40);
INSERT INTO public.required_action_provider VALUES ('3dfa58ab-f1b2-49ff-9ce4-7dd47cfc318d', 'CONFIGURE_TOTP', 'Configure OTP', 'basic', true, false, 'CONFIGURE_TOTP', 10);
INSERT INTO public.required_action_provider VALUES ('8da01c25-948f-4c02-819c-c12d01af1390', 'UPDATE_PASSWORD', 'Update Password', 'basic', true, false, 'UPDATE_PASSWORD', 30);
INSERT INTO public.required_action_provider VALUES ('cd72200c-4398-45ba-bd21-00f1518d02dd', 'terms_and_conditions', 'Terms and Conditions', 'basic', false, false, 'terms_and_conditions', 20);
INSERT INTO public.required_action_provider VALUES ('6f80844d-9547-4941-aa99-ae6cc687e00e', 'update_user_locale', 'Update User Locale', 'basic', true, false, 'update_user_locale', 1000);


--
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.scope_mapping VALUES ('8d948212-8e06-4645-a938-6cd42d9451ca', '7ebb3989-fac5-4c07-82db-5b5811106821');
INSERT INTO public.scope_mapping VALUES ('21c7a827-4822-4707-9da4-e47acf42ea5a', '8087d3e2-e8ba-48f3-b795-df7150cc5dd8');


--
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.user_entity VALUES ('41267900-ef49-428f-aeab-876c8f3e5cf2', NULL, 'b19184f8-4ce1-4f84-9205-a71fe1501e57', false, true, NULL, NULL, NULL, 'master', 'admin', 1601980599400, NULL, 0);
INSERT INTO public.user_entity VALUES ('6ad201eb-aa52-4053-8736-7457b38c491e', NULL, 'b2e5e9d1-4111-4c82-bcb6-f10c51bf9cd2', false, true, NULL, NULL, NULL, 'basic', 'admin', 1601980635661, NULL, 0);
INSERT INTO public.user_entity VALUES ('0fbcd5c1-2dbe-4750-99ba-2441dd65cd66', 'nmajorov@redhat.com', 'nmajorov@redhat.com', false, true, NULL, 'Nikolaj', 'Majorov', 'basic', 'niko', 1601980706178, NULL, 0);
INSERT INTO public.user_entity VALUES ('d25f8d35-54df-4048-9010-0dd9523c1f51', 'alice@oxford.ak.uk', 'alice@oxford.ak.uk', false, true, NULL, 'Alice', 'Fromwonderland', 'basic', 'alice', 1601980802850, NULL, 0);
INSERT INTO public.user_entity VALUES ('c5276a22-311c-46d7-916a-557f70168eaa', NULL, 'e3e4cae2-3804-4be7-b376-d96fef9a958f', false, true, NULL, NULL, NULL, 'basic', 'service-account-backend', 1601981713595, 'b58b8848-e780-438e-ba0f-c2c512c9b7a8', 0);


--
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.user_role_mapping VALUES ('26e11c5c-6b33-4670-a9b8-cca6acddcd0e', '41267900-ef49-428f-aeab-876c8f3e5cf2');
INSERT INTO public.user_role_mapping VALUES ('2d9e9f25-c726-4433-a0e6-27fa38244517', '41267900-ef49-428f-aeab-876c8f3e5cf2');
INSERT INTO public.user_role_mapping VALUES ('7ebb3989-fac5-4c07-82db-5b5811106821', '41267900-ef49-428f-aeab-876c8f3e5cf2');
INSERT INTO public.user_role_mapping VALUES ('456fccf5-c6b4-4533-bd33-c2ad328ca885', '41267900-ef49-428f-aeab-876c8f3e5cf2');
INSERT INTO public.user_role_mapping VALUES ('aa5f0d2a-f08c-4370-ab0b-04fb0745aa9a', '41267900-ef49-428f-aeab-876c8f3e5cf2');
INSERT INTO public.user_role_mapping VALUES ('82a28430-f709-41d6-af26-08be2c07e0d9', '6ad201eb-aa52-4053-8736-7457b38c491e');
INSERT INTO public.user_role_mapping VALUES ('3bcf380d-eea3-4e5c-abc0-3c86fb7b603c', '6ad201eb-aa52-4053-8736-7457b38c491e');
INSERT INTO public.user_role_mapping VALUES ('d8f3a233-72f4-4b8b-a2fe-66b6c34e0cfc', '6ad201eb-aa52-4053-8736-7457b38c491e');
INSERT INTO public.user_role_mapping VALUES ('8087d3e2-e8ba-48f3-b795-df7150cc5dd8', '6ad201eb-aa52-4053-8736-7457b38c491e');
INSERT INTO public.user_role_mapping VALUES ('39f97e61-2b41-4058-8421-60e36b7f63c9', '6ad201eb-aa52-4053-8736-7457b38c491e');
INSERT INTO public.user_role_mapping VALUES ('82a28430-f709-41d6-af26-08be2c07e0d9', '0fbcd5c1-2dbe-4750-99ba-2441dd65cd66');
INSERT INTO public.user_role_mapping VALUES ('3bcf380d-eea3-4e5c-abc0-3c86fb7b603c', '0fbcd5c1-2dbe-4750-99ba-2441dd65cd66');
INSERT INTO public.user_role_mapping VALUES ('d8f3a233-72f4-4b8b-a2fe-66b6c34e0cfc', '0fbcd5c1-2dbe-4750-99ba-2441dd65cd66');
INSERT INTO public.user_role_mapping VALUES ('8087d3e2-e8ba-48f3-b795-df7150cc5dd8', '0fbcd5c1-2dbe-4750-99ba-2441dd65cd66');
INSERT INTO public.user_role_mapping VALUES ('82a28430-f709-41d6-af26-08be2c07e0d9', 'd25f8d35-54df-4048-9010-0dd9523c1f51');
INSERT INTO public.user_role_mapping VALUES ('3bcf380d-eea3-4e5c-abc0-3c86fb7b603c', 'd25f8d35-54df-4048-9010-0dd9523c1f51');
INSERT INTO public.user_role_mapping VALUES ('d8f3a233-72f4-4b8b-a2fe-66b6c34e0cfc', 'd25f8d35-54df-4048-9010-0dd9523c1f51');
INSERT INTO public.user_role_mapping VALUES ('8087d3e2-e8ba-48f3-b795-df7150cc5dd8', 'd25f8d35-54df-4048-9010-0dd9523c1f51');
INSERT INTO public.user_role_mapping VALUES ('82a28430-f709-41d6-af26-08be2c07e0d9', 'c5276a22-311c-46d7-916a-557f70168eaa');
INSERT INTO public.user_role_mapping VALUES ('3bcf380d-eea3-4e5c-abc0-3c86fb7b603c', 'c5276a22-311c-46d7-916a-557f70168eaa');
INSERT INTO public.user_role_mapping VALUES ('d8f3a233-72f4-4b8b-a2fe-66b6c34e0cfc', 'c5276a22-311c-46d7-916a-557f70168eaa');
INSERT INTO public.user_role_mapping VALUES ('8087d3e2-e8ba-48f3-b795-df7150cc5dd8', 'c5276a22-311c-46d7-916a-557f70168eaa');


--
-- Data for Name: user_session; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: username_login_failure; Type: TABLE DATA; Schema: public; Owner: keycloack
--



--
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: keycloack
--

INSERT INTO public.web_origins VALUES ('4d960123-869a-4294-a38b-5f61f7f9667d', '+');
INSERT INTO public.web_origins VALUES ('3570f3bf-fdf4-4304-bdd6-dcb957c39e93', '+');
INSERT INTO public.web_origins VALUES ('3a8404b9-3532-43de-8553-f015bdebfd2e', 'http://localhost:3000');


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: expenses; Owner: keycloack
--

ALTER TABLE ONLY expenses.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- Name: flyway_schema_history flyway_schema_history_pk; Type: CONSTRAINT; Schema: expenses; Owner: keycloack
--

ALTER TABLE ONLY expenses.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);


--
-- Name: report report_pkey; Type: CONSTRAINT; Schema: expenses; Owner: keycloack
--

ALTER TABLE ONLY expenses.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (id);


--
-- Name: username_login_failure CONSTRAINT_17-2; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.username_login_failure
    ADD CONSTRAINT "CONSTRAINT_17-2" PRIMARY KEY (realm_id, username);


--
-- Name: keycloak_role UK_J3RWUVD56ONTGSUHOGM184WW2-2; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT "UK_J3RWUVD56ONTGSUHOGM184WW2-2" UNIQUE (name, client_realm_constraint);


--
-- Name: client_auth_flow_bindings c_cli_flow_bind; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_auth_flow_bindings
    ADD CONSTRAINT c_cli_flow_bind PRIMARY KEY (client_id, binding_name);


--
-- Name: client_scope_client c_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT c_cli_scope_bind PRIMARY KEY (client_id, scope_id);


--
-- Name: client_initial_access cnstr_client_init_acc_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT cnstr_client_init_acc_pk PRIMARY KEY (id);


--
-- Name: realm_default_groups con_group_id_def_groups; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT con_group_id_def_groups UNIQUE (group_id);


--
-- Name: broker_link constr_broker_link_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.broker_link
    ADD CONSTRAINT constr_broker_link_pk PRIMARY KEY (identity_provider, user_id);


--
-- Name: client_user_session_note constr_cl_usr_ses_note; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_user_session_note
    ADD CONSTRAINT constr_cl_usr_ses_note PRIMARY KEY (client_session, name);


--
-- Name: client_default_roles constr_client_default_roles; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_default_roles
    ADD CONSTRAINT constr_client_default_roles PRIMARY KEY (client_id, role_id);


--
-- Name: component_config constr_component_config_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT constr_component_config_pk PRIMARY KEY (id);


--
-- Name: component constr_component_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT constr_component_pk PRIMARY KEY (id);


--
-- Name: fed_user_required_action constr_fed_required_action; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.fed_user_required_action
    ADD CONSTRAINT constr_fed_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: fed_user_attribute constr_fed_user_attr_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.fed_user_attribute
    ADD CONSTRAINT constr_fed_user_attr_pk PRIMARY KEY (id);


--
-- Name: fed_user_consent constr_fed_user_consent_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.fed_user_consent
    ADD CONSTRAINT constr_fed_user_consent_pk PRIMARY KEY (id);


--
-- Name: fed_user_credential constr_fed_user_cred_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.fed_user_credential
    ADD CONSTRAINT constr_fed_user_cred_pk PRIMARY KEY (id);


--
-- Name: fed_user_group_membership constr_fed_user_group; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.fed_user_group_membership
    ADD CONSTRAINT constr_fed_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: fed_user_role_mapping constr_fed_user_role; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.fed_user_role_mapping
    ADD CONSTRAINT constr_fed_user_role PRIMARY KEY (role_id, user_id);


--
-- Name: federated_user constr_federated_user; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.federated_user
    ADD CONSTRAINT constr_federated_user PRIMARY KEY (id);


--
-- Name: realm_default_groups constr_realm_default_groups; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT constr_realm_default_groups PRIMARY KEY (realm_id, group_id);


--
-- Name: realm_enabled_event_types constr_realm_enabl_event_types; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT constr_realm_enabl_event_types PRIMARY KEY (realm_id, value);


--
-- Name: realm_events_listeners constr_realm_events_listeners; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT constr_realm_events_listeners PRIMARY KEY (realm_id, value);


--
-- Name: realm_supported_locales constr_realm_supported_locales; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT constr_realm_supported_locales PRIMARY KEY (realm_id, value);


--
-- Name: identity_provider constraint_2b; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT constraint_2b PRIMARY KEY (internal_id);


--
-- Name: client_attributes constraint_3c; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT constraint_3c PRIMARY KEY (client_id, name);


--
-- Name: event_entity constraint_4; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.event_entity
    ADD CONSTRAINT constraint_4 PRIMARY KEY (id);


--
-- Name: federated_identity constraint_40; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT constraint_40 PRIMARY KEY (identity_provider, user_id);


--
-- Name: realm constraint_4a; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT constraint_4a PRIMARY KEY (id);


--
-- Name: client_session_role constraint_5; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session_role
    ADD CONSTRAINT constraint_5 PRIMARY KEY (client_session, role_id);


--
-- Name: user_session constraint_57; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_session
    ADD CONSTRAINT constraint_57 PRIMARY KEY (id);


--
-- Name: user_federation_provider constraint_5c; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT constraint_5c PRIMARY KEY (id);


--
-- Name: client_session_note constraint_5e; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session_note
    ADD CONSTRAINT constraint_5e PRIMARY KEY (client_session, name);


--
-- Name: client constraint_7; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT constraint_7 PRIMARY KEY (id);


--
-- Name: client_session constraint_8; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session
    ADD CONSTRAINT constraint_8 PRIMARY KEY (id);


--
-- Name: scope_mapping constraint_81; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT constraint_81 PRIMARY KEY (client_id, role_id);


--
-- Name: client_node_registrations constraint_84; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT constraint_84 PRIMARY KEY (client_id, name);


--
-- Name: realm_attribute constraint_9; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT constraint_9 PRIMARY KEY (name, realm_id);


--
-- Name: realm_required_credential constraint_92; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT constraint_92 PRIMARY KEY (realm_id, type);


--
-- Name: keycloak_role constraint_a; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT constraint_a PRIMARY KEY (id);


--
-- Name: admin_event_entity constraint_admin_event_entity; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.admin_event_entity
    ADD CONSTRAINT constraint_admin_event_entity PRIMARY KEY (id);


--
-- Name: authenticator_config_entry constraint_auth_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.authenticator_config_entry
    ADD CONSTRAINT constraint_auth_cfg_pk PRIMARY KEY (authenticator_id, name);


--
-- Name: authentication_execution constraint_auth_exec_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT constraint_auth_exec_pk PRIMARY KEY (id);


--
-- Name: authentication_flow constraint_auth_flow_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT constraint_auth_flow_pk PRIMARY KEY (id);


--
-- Name: authenticator_config constraint_auth_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT constraint_auth_pk PRIMARY KEY (id);


--
-- Name: client_session_auth_status constraint_auth_status_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session_auth_status
    ADD CONSTRAINT constraint_auth_status_pk PRIMARY KEY (client_session, authenticator);


--
-- Name: user_role_mapping constraint_c; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT constraint_c PRIMARY KEY (role_id, user_id);


--
-- Name: composite_role constraint_composite_role; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT constraint_composite_role PRIMARY KEY (composite, child_role);


--
-- Name: client_session_prot_mapper constraint_cs_pmp_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session_prot_mapper
    ADD CONSTRAINT constraint_cs_pmp_pk PRIMARY KEY (client_session, protocol_mapper_id);


--
-- Name: identity_provider_config constraint_d; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT constraint_d PRIMARY KEY (identity_provider_id, name);


--
-- Name: policy_config constraint_dpc; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT constraint_dpc PRIMARY KEY (policy_id, name);


--
-- Name: realm_smtp_config constraint_e; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT constraint_e PRIMARY KEY (realm_id, name);


--
-- Name: credential constraint_f; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT constraint_f PRIMARY KEY (id);


--
-- Name: user_federation_config constraint_f9; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT constraint_f9 PRIMARY KEY (user_federation_provider_id, name);


--
-- Name: resource_server_perm_ticket constraint_fapmt; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT constraint_fapmt PRIMARY KEY (id);


--
-- Name: resource_server_resource constraint_farsr; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT constraint_farsr PRIMARY KEY (id);


--
-- Name: resource_server_policy constraint_farsrp; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT constraint_farsrp PRIMARY KEY (id);


--
-- Name: associated_policy constraint_farsrpap; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT constraint_farsrpap PRIMARY KEY (policy_id, associated_policy_id);


--
-- Name: resource_policy constraint_farsrpp; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT constraint_farsrpp PRIMARY KEY (resource_id, policy_id);


--
-- Name: resource_server_scope constraint_farsrs; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT constraint_farsrs PRIMARY KEY (id);


--
-- Name: resource_scope constraint_farsrsp; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT constraint_farsrsp PRIMARY KEY (resource_id, scope_id);


--
-- Name: scope_policy constraint_farsrsps; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT constraint_farsrsps PRIMARY KEY (scope_id, policy_id);


--
-- Name: user_entity constraint_fb; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT constraint_fb PRIMARY KEY (id);


--
-- Name: user_federation_mapper_config constraint_fedmapper_cfg_pm; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT constraint_fedmapper_cfg_pm PRIMARY KEY (user_federation_mapper_id, name);


--
-- Name: user_federation_mapper constraint_fedmapperpm; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT constraint_fedmapperpm PRIMARY KEY (id);


--
-- Name: fed_user_consent_cl_scope constraint_fgrntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.fed_user_consent_cl_scope
    ADD CONSTRAINT constraint_fgrntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent_client_scope constraint_grntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT constraint_grntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent constraint_grntcsnt_pm; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT constraint_grntcsnt_pm PRIMARY KEY (id);


--
-- Name: keycloak_group constraint_group; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT constraint_group PRIMARY KEY (id);


--
-- Name: group_attribute constraint_group_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT constraint_group_attribute_pk PRIMARY KEY (id);


--
-- Name: group_role_mapping constraint_group_role; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT constraint_group_role PRIMARY KEY (role_id, group_id);


--
-- Name: identity_provider_mapper constraint_idpm; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT constraint_idpm PRIMARY KEY (id);


--
-- Name: idp_mapper_config constraint_idpmconfig; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT constraint_idpmconfig PRIMARY KEY (idp_mapper_id, name);


--
-- Name: migration_model constraint_migmod; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT constraint_migmod PRIMARY KEY (id);


--
-- Name: offline_client_session constraint_offl_cl_ses_pk3; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.offline_client_session
    ADD CONSTRAINT constraint_offl_cl_ses_pk3 PRIMARY KEY (user_session_id, client_id, client_storage_provider, external_client_id, offline_flag);


--
-- Name: offline_user_session constraint_offl_us_ses_pk2; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.offline_user_session
    ADD CONSTRAINT constraint_offl_us_ses_pk2 PRIMARY KEY (user_session_id, offline_flag);


--
-- Name: protocol_mapper constraint_pcm; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT constraint_pcm PRIMARY KEY (id);


--
-- Name: protocol_mapper_config constraint_pmconfig; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT constraint_pmconfig PRIMARY KEY (protocol_mapper_id, name);


--
-- Name: realm_default_roles constraint_realm_default_roles; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_default_roles
    ADD CONSTRAINT constraint_realm_default_roles PRIMARY KEY (realm_id, role_id);


--
-- Name: redirect_uris constraint_redirect_uris; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT constraint_redirect_uris PRIMARY KEY (client_id, value);


--
-- Name: required_action_config constraint_req_act_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.required_action_config
    ADD CONSTRAINT constraint_req_act_cfg_pk PRIMARY KEY (required_action_id, name);


--
-- Name: required_action_provider constraint_req_act_prv_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT constraint_req_act_prv_pk PRIMARY KEY (id);


--
-- Name: user_required_action constraint_required_action; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT constraint_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: resource_uris constraint_resour_uris_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT constraint_resour_uris_pk PRIMARY KEY (resource_id, value);


--
-- Name: role_attribute constraint_role_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT constraint_role_attribute_pk PRIMARY KEY (id);


--
-- Name: user_attribute constraint_user_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT constraint_user_attribute_pk PRIMARY KEY (id);


--
-- Name: user_group_membership constraint_user_group; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT constraint_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: user_session_note constraint_usn_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_session_note
    ADD CONSTRAINT constraint_usn_pk PRIMARY KEY (user_session, name);


--
-- Name: web_origins constraint_web_origins; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT constraint_web_origins PRIMARY KEY (client_id, value);


--
-- Name: flyway_schema_history flyway_schema_history_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);


--
-- Name: client_scope_attributes pk_cl_tmpl_attr; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT pk_cl_tmpl_attr PRIMARY KEY (scope_id, name);


--
-- Name: client_scope pk_cli_template; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT pk_cli_template PRIMARY KEY (id);


--
-- Name: databasechangeloglock pk_databasechangeloglock; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);


--
-- Name: resource_server pk_resource_server; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server
    ADD CONSTRAINT pk_resource_server PRIMARY KEY (id);


--
-- Name: client_scope_role_mapping pk_template_scope; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT pk_template_scope PRIMARY KEY (scope_id, role_id);


--
-- Name: default_client_scope r_def_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT r_def_cli_scope_bind PRIMARY KEY (realm_id, scope_id);


--
-- Name: resource_attribute res_attr_pk; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT res_attr_pk PRIMARY KEY (id);


--
-- Name: keycloak_group sibling_names; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT sibling_names UNIQUE (realm_id, parent_group, name);


--
-- Name: identity_provider uk_2daelwnibji49avxsrtuf6xj33; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT uk_2daelwnibji49avxsrtuf6xj33 UNIQUE (provider_alias, realm_id);


--
-- Name: client_default_roles uk_8aelwnibji49avxsrtuf6xjow; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_default_roles
    ADD CONSTRAINT uk_8aelwnibji49avxsrtuf6xjow UNIQUE (role_id);


--
-- Name: client uk_b71cjlbenv945rb6gcon438at; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT uk_b71cjlbenv945rb6gcon438at UNIQUE (realm_id, client_id);


--
-- Name: client_scope uk_cli_scope; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT uk_cli_scope UNIQUE (realm_id, name);


--
-- Name: user_entity uk_dykn684sl8up1crfei6eckhd7; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_dykn684sl8up1crfei6eckhd7 UNIQUE (realm_id, email_constraint);


--
-- Name: resource_server_resource uk_frsr6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5ha6 UNIQUE (name, owner, resource_server_id);


--
-- Name: resource_server_perm_ticket uk_frsr6t700s9v50bu18ws5pmt; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5pmt UNIQUE (owner, requester, resource_server_id, resource_id, scope_id);


--
-- Name: resource_server_policy uk_frsrpt700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT uk_frsrpt700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: resource_server_scope uk_frsrst700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT uk_frsrst700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: realm_default_roles uk_h4wpd7w4hsoolni3h0sw7btje; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_default_roles
    ADD CONSTRAINT uk_h4wpd7w4hsoolni3h0sw7btje UNIQUE (role_id);


--
-- Name: user_consent uk_jkuwuvd56ontgsuhogm8uewrt; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_jkuwuvd56ontgsuhogm8uewrt UNIQUE (client_id, client_storage_provider, external_client_id, user_id);


--
-- Name: realm uk_orvsdmla56612eaefiq6wl5oi; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT uk_orvsdmla56612eaefiq6wl5oi UNIQUE (name);


--
-- Name: user_entity uk_ru8tt6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_ru8tt6t700s9v50bu18ws5ha6 UNIQUE (realm_id, username);


--
-- Name: flyway_schema_history_s_idx; Type: INDEX; Schema: expenses; Owner: keycloack
--

CREATE INDEX flyway_schema_history_s_idx ON expenses.flyway_schema_history USING btree (success);


--
-- Name: flyway_schema_history_s_idx; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);


--
-- Name: idx_assoc_pol_assoc_pol_id; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_assoc_pol_assoc_pol_id ON public.associated_policy USING btree (associated_policy_id);


--
-- Name: idx_auth_config_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_auth_config_realm ON public.authenticator_config USING btree (realm_id);


--
-- Name: idx_auth_exec_flow; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_auth_exec_flow ON public.authentication_execution USING btree (flow_id);


--
-- Name: idx_auth_exec_realm_flow; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_auth_exec_realm_flow ON public.authentication_execution USING btree (realm_id, flow_id);


--
-- Name: idx_auth_flow_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_auth_flow_realm ON public.authentication_flow USING btree (realm_id);


--
-- Name: idx_cl_clscope; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_cl_clscope ON public.client_scope_client USING btree (scope_id);


--
-- Name: idx_client_def_roles_client; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_client_def_roles_client ON public.client_default_roles USING btree (client_id);


--
-- Name: idx_client_id; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_client_id ON public.client USING btree (client_id);


--
-- Name: idx_client_init_acc_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_client_init_acc_realm ON public.client_initial_access USING btree (realm_id);


--
-- Name: idx_client_session_session; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_client_session_session ON public.client_session USING btree (session_id);


--
-- Name: idx_clscope_attrs; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_clscope_attrs ON public.client_scope_attributes USING btree (scope_id);


--
-- Name: idx_clscope_cl; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_clscope_cl ON public.client_scope_client USING btree (client_id);


--
-- Name: idx_clscope_protmap; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_clscope_protmap ON public.protocol_mapper USING btree (client_scope_id);


--
-- Name: idx_clscope_role; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_clscope_role ON public.client_scope_role_mapping USING btree (scope_id);


--
-- Name: idx_compo_config_compo; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_compo_config_compo ON public.component_config USING btree (component_id);


--
-- Name: idx_component_provider_type; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_component_provider_type ON public.component USING btree (provider_type);


--
-- Name: idx_component_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_component_realm ON public.component USING btree (realm_id);


--
-- Name: idx_composite; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_composite ON public.composite_role USING btree (composite);


--
-- Name: idx_composite_child; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_composite_child ON public.composite_role USING btree (child_role);


--
-- Name: idx_defcls_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_defcls_realm ON public.default_client_scope USING btree (realm_id);


--
-- Name: idx_defcls_scope; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_defcls_scope ON public.default_client_scope USING btree (scope_id);


--
-- Name: idx_event_time; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_event_time ON public.event_entity USING btree (realm_id, event_time);


--
-- Name: idx_fedidentity_feduser; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fedidentity_feduser ON public.federated_identity USING btree (federated_user_id);


--
-- Name: idx_fedidentity_user; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fedidentity_user ON public.federated_identity USING btree (user_id);


--
-- Name: idx_fu_attribute; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_attribute ON public.fed_user_attribute USING btree (user_id, realm_id, name);


--
-- Name: idx_fu_cnsnt_ext; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_cnsnt_ext ON public.fed_user_consent USING btree (user_id, client_storage_provider, external_client_id);


--
-- Name: idx_fu_consent; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_consent ON public.fed_user_consent USING btree (user_id, client_id);


--
-- Name: idx_fu_consent_ru; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_consent_ru ON public.fed_user_consent USING btree (realm_id, user_id);


--
-- Name: idx_fu_credential; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_credential ON public.fed_user_credential USING btree (user_id, type);


--
-- Name: idx_fu_credential_ru; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_credential_ru ON public.fed_user_credential USING btree (realm_id, user_id);


--
-- Name: idx_fu_group_membership; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_group_membership ON public.fed_user_group_membership USING btree (user_id, group_id);


--
-- Name: idx_fu_group_membership_ru; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_group_membership_ru ON public.fed_user_group_membership USING btree (realm_id, user_id);


--
-- Name: idx_fu_required_action; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_required_action ON public.fed_user_required_action USING btree (user_id, required_action);


--
-- Name: idx_fu_required_action_ru; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_required_action_ru ON public.fed_user_required_action USING btree (realm_id, user_id);


--
-- Name: idx_fu_role_mapping; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_role_mapping ON public.fed_user_role_mapping USING btree (user_id, role_id);


--
-- Name: idx_fu_role_mapping_ru; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_fu_role_mapping_ru ON public.fed_user_role_mapping USING btree (realm_id, user_id);


--
-- Name: idx_group_attr_group; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_group_attr_group ON public.group_attribute USING btree (group_id);


--
-- Name: idx_group_role_mapp_group; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_group_role_mapp_group ON public.group_role_mapping USING btree (group_id);


--
-- Name: idx_id_prov_mapp_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_id_prov_mapp_realm ON public.identity_provider_mapper USING btree (realm_id);


--
-- Name: idx_ident_prov_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_ident_prov_realm ON public.identity_provider USING btree (realm_id);


--
-- Name: idx_keycloak_role_client; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_keycloak_role_client ON public.keycloak_role USING btree (client);


--
-- Name: idx_keycloak_role_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_keycloak_role_realm ON public.keycloak_role USING btree (realm);


--
-- Name: idx_offline_uss_createdon; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_offline_uss_createdon ON public.offline_user_session USING btree (created_on);


--
-- Name: idx_protocol_mapper_client; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_protocol_mapper_client ON public.protocol_mapper USING btree (client_id);


--
-- Name: idx_realm_attr_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_realm_attr_realm ON public.realm_attribute USING btree (realm_id);


--
-- Name: idx_realm_clscope; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_realm_clscope ON public.client_scope USING btree (realm_id);


--
-- Name: idx_realm_def_grp_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_realm_def_grp_realm ON public.realm_default_groups USING btree (realm_id);


--
-- Name: idx_realm_def_roles_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_realm_def_roles_realm ON public.realm_default_roles USING btree (realm_id);


--
-- Name: idx_realm_evt_list_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_realm_evt_list_realm ON public.realm_events_listeners USING btree (realm_id);


--
-- Name: idx_realm_evt_types_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_realm_evt_types_realm ON public.realm_enabled_event_types USING btree (realm_id);


--
-- Name: idx_realm_master_adm_cli; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_realm_master_adm_cli ON public.realm USING btree (master_admin_client);


--
-- Name: idx_realm_supp_local_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_realm_supp_local_realm ON public.realm_supported_locales USING btree (realm_id);


--
-- Name: idx_redir_uri_client; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_redir_uri_client ON public.redirect_uris USING btree (client_id);


--
-- Name: idx_req_act_prov_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_req_act_prov_realm ON public.required_action_provider USING btree (realm_id);


--
-- Name: idx_res_policy_policy; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_res_policy_policy ON public.resource_policy USING btree (policy_id);


--
-- Name: idx_res_scope_scope; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_res_scope_scope ON public.resource_scope USING btree (scope_id);


--
-- Name: idx_res_serv_pol_res_serv; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_res_serv_pol_res_serv ON public.resource_server_policy USING btree (resource_server_id);


--
-- Name: idx_res_srv_res_res_srv; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_res_srv_res_res_srv ON public.resource_server_resource USING btree (resource_server_id);


--
-- Name: idx_res_srv_scope_res_srv; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_res_srv_scope_res_srv ON public.resource_server_scope USING btree (resource_server_id);


--
-- Name: idx_role_attribute; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_role_attribute ON public.role_attribute USING btree (role_id);


--
-- Name: idx_role_clscope; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_role_clscope ON public.client_scope_role_mapping USING btree (role_id);


--
-- Name: idx_scope_mapping_role; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_scope_mapping_role ON public.scope_mapping USING btree (role_id);


--
-- Name: idx_scope_policy_policy; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_scope_policy_policy ON public.scope_policy USING btree (policy_id);


--
-- Name: idx_update_time; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_update_time ON public.migration_model USING btree (update_time);


--
-- Name: idx_us_sess_id_on_cl_sess; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_us_sess_id_on_cl_sess ON public.offline_client_session USING btree (user_session_id);


--
-- Name: idx_usconsent_clscope; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_usconsent_clscope ON public.user_consent_client_scope USING btree (user_consent_id);


--
-- Name: idx_user_attribute; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_user_attribute ON public.user_attribute USING btree (user_id);


--
-- Name: idx_user_consent; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_user_consent ON public.user_consent USING btree (user_id);


--
-- Name: idx_user_credential; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_user_credential ON public.credential USING btree (user_id);


--
-- Name: idx_user_email; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_user_email ON public.user_entity USING btree (email);


--
-- Name: idx_user_group_mapping; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_user_group_mapping ON public.user_group_membership USING btree (user_id);


--
-- Name: idx_user_reqactions; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_user_reqactions ON public.user_required_action USING btree (user_id);


--
-- Name: idx_user_role_mapping; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_user_role_mapping ON public.user_role_mapping USING btree (user_id);


--
-- Name: idx_usr_fed_map_fed_prv; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_usr_fed_map_fed_prv ON public.user_federation_mapper USING btree (federation_provider_id);


--
-- Name: idx_usr_fed_map_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_usr_fed_map_realm ON public.user_federation_mapper USING btree (realm_id);


--
-- Name: idx_usr_fed_prv_realm; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_usr_fed_prv_realm ON public.user_federation_provider USING btree (realm_id);


--
-- Name: idx_web_orig_client; Type: INDEX; Schema: public; Owner: keycloack
--

CREATE INDEX idx_web_orig_client ON public.web_origins USING btree (client_id);


--
-- Name: expenses expenses_fk_report_fkey; Type: FK CONSTRAINT; Schema: expenses; Owner: keycloack
--

ALTER TABLE ONLY expenses.expenses
    ADD CONSTRAINT expenses_fk_report_fkey FOREIGN KEY (fk_report) REFERENCES expenses.report(id);


--
-- Name: client_session_auth_status auth_status_constraint; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session_auth_status
    ADD CONSTRAINT auth_status_constraint FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: identity_provider fk2b4ebc52ae5c3b34; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT fk2b4ebc52ae5c3b34 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_attributes fk3c47c64beacca966; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT fk3c47c64beacca966 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: federated_identity fk404288b92ef007a6; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT fk404288b92ef007a6 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_node_registrations fk4129723ba992f594; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT fk4129723ba992f594 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: client_session_note fk5edfb00ff51c2736; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session_note
    ADD CONSTRAINT fk5edfb00ff51c2736 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: user_session_note fk5edfb00ff51d3472; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_session_note
    ADD CONSTRAINT fk5edfb00ff51d3472 FOREIGN KEY (user_session) REFERENCES public.user_session(id);


--
-- Name: client_session_role fk_11b7sgqw18i532811v7o2dv76; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session_role
    ADD CONSTRAINT fk_11b7sgqw18i532811v7o2dv76 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: redirect_uris fk_1burs8pb4ouj97h5wuppahv9f; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT fk_1burs8pb4ouj97h5wuppahv9f FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: user_federation_provider fk_1fj32f6ptolw2qy60cd8n01e8; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT fk_1fj32f6ptolw2qy60cd8n01e8 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_session_prot_mapper fk_33a8sgqw18i532811v7o2dk89; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session_prot_mapper
    ADD CONSTRAINT fk_33a8sgqw18i532811v7o2dk89 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: realm_required_credential fk_5hg65lybevavkqfki3kponh9v; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT fk_5hg65lybevavkqfki3kponh9v FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_attribute fk_5hrm2vlf9ql5fu022kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu022kqepovbr FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: user_attribute fk_5hrm2vlf9ql5fu043kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu043kqepovbr FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: user_required_action fk_6qj3w1jw9cvafhe19bwsiuvmd; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT fk_6qj3w1jw9cvafhe19bwsiuvmd FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: keycloak_role fk_6vyqfe4cn4wlq8r6kt5vdsj5c; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT fk_6vyqfe4cn4wlq8r6kt5vdsj5c FOREIGN KEY (realm) REFERENCES public.realm(id);


--
-- Name: realm_smtp_config fk_70ej8xdxgxd0b9hh6180irr0o; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT fk_70ej8xdxgxd0b9hh6180irr0o FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_default_roles fk_8aelwnibji49avxsrtuf6xjow; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_default_roles
    ADD CONSTRAINT fk_8aelwnibji49avxsrtuf6xjow FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_attribute fk_8shxd6l3e9atqukacxgpffptw; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT fk_8shxd6l3e9atqukacxgpffptw FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: composite_role fk_a63wvekftu8jo1pnj81e7mce2; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_a63wvekftu8jo1pnj81e7mce2 FOREIGN KEY (composite) REFERENCES public.keycloak_role(id);


--
-- Name: authentication_execution fk_auth_exec_flow; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_flow FOREIGN KEY (flow_id) REFERENCES public.authentication_flow(id);


--
-- Name: authentication_execution fk_auth_exec_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authentication_flow fk_auth_flow_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT fk_auth_flow_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authenticator_config fk_auth_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT fk_auth_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_session fk_b4ao2vcvat6ukau74wbwtfqo1; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_session
    ADD CONSTRAINT fk_b4ao2vcvat6ukau74wbwtfqo1 FOREIGN KEY (session_id) REFERENCES public.user_session(id);


--
-- Name: user_role_mapping fk_c4fqv34p1mbylloxang7b1q3l; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT fk_c4fqv34p1mbylloxang7b1q3l FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_scope_client fk_c_cli_scope_client; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT fk_c_cli_scope_client FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: client_scope_client fk_c_cli_scope_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT fk_c_cli_scope_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope_attributes fk_cl_scope_attr_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT fk_cl_scope_attr_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope_role_mapping fk_cl_scope_rm_role; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_role FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: client_scope_role_mapping fk_cl_scope_rm_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_user_session_note fk_cl_usr_ses_note; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_user_session_note
    ADD CONSTRAINT fk_cl_usr_ses_note FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: protocol_mapper fk_cli_scope_mapper; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_cli_scope_mapper FOREIGN KEY (client_scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_initial_access fk_client_init_acc_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT fk_client_init_acc_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: component_config fk_component_config; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT fk_component_config FOREIGN KEY (component_id) REFERENCES public.component(id);


--
-- Name: component fk_component_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT fk_component_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_default_groups fk_def_groups_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: realm_default_groups fk_def_groups_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_default_roles fk_evudb1ppw84oxfax2drs03icc; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_default_roles
    ADD CONSTRAINT fk_evudb1ppw84oxfax2drs03icc FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_mapper_config fk_fedmapper_cfg; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT fk_fedmapper_cfg FOREIGN KEY (user_federation_mapper_id) REFERENCES public.user_federation_mapper(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_fedprv; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_fedprv FOREIGN KEY (federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: associated_policy fk_frsr5s213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsr5s213xcx4wnkog82ssrfy FOREIGN KEY (associated_policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrasp13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrasp13xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog82sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82sspmt FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_resource fk_frsrho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog83sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog83sspmt FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog84sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog84sspmt FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: associated_policy fk_frsrpas14xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsrpas14xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrpass3xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrpass3xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_perm_ticket fk_frsrpo2128cx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrpo2128cx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_policy fk_frsrpo213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT fk_frsrpo213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_scope fk_frsrpos13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrpos13xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpos53xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpos53xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpp213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpp213xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_scope fk_frsrps213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrps213xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_scope fk_frsrso213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT fk_frsrso213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: composite_role fk_gr7thllb9lu8q4vqa4524jjy8; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_gr7thllb9lu8q4vqa4524jjy8 FOREIGN KEY (child_role) REFERENCES public.keycloak_role(id);


--
-- Name: user_consent_client_scope fk_grntcsnt_clsc_usc; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT fk_grntcsnt_clsc_usc FOREIGN KEY (user_consent_id) REFERENCES public.user_consent(id);


--
-- Name: user_consent fk_grntcsnt_user; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT fk_grntcsnt_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: group_attribute fk_group_attribute_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT fk_group_attribute_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: keycloak_group fk_group_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT fk_group_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: group_role_mapping fk_group_role_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: group_role_mapping fk_group_role_role; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_role FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_default_roles fk_h4wpd7w4hsoolni3h0sw7btje; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_default_roles
    ADD CONSTRAINT fk_h4wpd7w4hsoolni3h0sw7btje FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_enabled_event_types fk_h846o4h0w8epx5nwedrf5y69j; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT fk_h846o4h0w8epx5nwedrf5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_events_listeners fk_h846o4h0w8epx5nxev9f5y69j; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT fk_h846o4h0w8epx5nxev9f5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: identity_provider_mapper fk_idpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT fk_idpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: idp_mapper_config fk_idpmconfig; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT fk_idpmconfig FOREIGN KEY (idp_mapper_id) REFERENCES public.identity_provider_mapper(id);


--
-- Name: web_origins fk_lojpho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: client_default_roles fk_nuilts7klwqw2h8m2b5joytky; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_default_roles
    ADD CONSTRAINT fk_nuilts7klwqw2h8m2b5joytky FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: scope_mapping fk_ouse064plmlr732lxjcn1q5f1; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: scope_mapping fk_p3rh9grku11kqfrs4fltt7rnq; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_p3rh9grku11kqfrs4fltt7rnq FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: client fk_p56ctinxxb9gsk57fo49f9tac; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT fk_p56ctinxxb9gsk57fo49f9tac FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: protocol_mapper fk_pcm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_pcm_realm FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: credential fk_pfyr0glasqyl0dei3kl69r6v0; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT fk_pfyr0glasqyl0dei3kl69r6v0 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: protocol_mapper_config fk_pmconfig; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT fk_pmconfig FOREIGN KEY (protocol_mapper_id) REFERENCES public.protocol_mapper(id);


--
-- Name: default_client_scope fk_r_def_cli_scope_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: default_client_scope fk_r_def_cli_scope_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope fk_realm_cli_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT fk_realm_cli_scope FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: required_action_provider fk_req_act_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT fk_req_act_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_uris fk_resource_server_uris; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT fk_resource_server_uris FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: role_attribute fk_role_attribute_id; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT fk_role_attribute_id FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_supported_locales fk_supported_locales_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT fk_supported_locales_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_config fk_t13hpu1j94r2ebpekr39x5eu5; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT fk_t13hpu1j94r2ebpekr39x5eu5 FOREIGN KEY (user_federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_group_membership fk_user_group_user; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT fk_user_group_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: policy_config fkdc34197cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT fkdc34197cf864c4e43 FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: identity_provider_config fkdc4897cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: keycloack
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT fkdc4897cf864c4e43 FOREIGN KEY (identity_provider_id) REFERENCES public.identity_provider(internal_id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

