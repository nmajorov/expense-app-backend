--
-- PostgreSQL database dump
--

-- Dumped from database version 10.14
-- Dumped by pg_dump version 10.14

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY public.identity_provider_config DROP CONSTRAINT IF EXISTS fkdc4897cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.policy_config DROP CONSTRAINT IF EXISTS fkdc34197cf864c4e43;
ALTER TABLE IF EXISTS ONLY public.user_group_membership DROP CONSTRAINT IF EXISTS fk_user_group_user;
ALTER TABLE IF EXISTS ONLY public.realm DROP CONSTRAINT IF EXISTS fk_traf444kk6qrkms7n56aiwq5y;
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
ALTER TABLE IF EXISTS ONLY public.keycloak_role DROP CONSTRAINT IF EXISTS fk_kjho5le2c0ral09fl8cm9wfw9;
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
ALTER TABLE IF EXISTS ONLY public.oskeycloak0jbosststxtable DROP CONSTRAINT IF EXISTS oskeycloak0jbosststxtable_pkey;
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
DROP TABLE IF EXISTS public.oskeycloak0jbosststxtable;
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
DROP EXTENSION IF EXISTS plpgsql;
DROP SCHEMA IF EXISTS public;
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
-- Name: admin_event_entity; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.admin_event_entity OWNER TO keycloak;

--
-- Name: associated_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.associated_policy (
    policy_id character varying(36) NOT NULL,
    associated_policy_id character varying(36) NOT NULL
);


ALTER TABLE public.associated_policy OWNER TO keycloak;

--
-- Name: authentication_execution; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.authentication_execution OWNER TO keycloak;

--
-- Name: authentication_flow; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.authentication_flow OWNER TO keycloak;

--
-- Name: authenticator_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authenticator_config (
    id character varying(36) NOT NULL,
    alias character varying(255),
    realm_id character varying(36)
);


ALTER TABLE public.authenticator_config OWNER TO keycloak;

--
-- Name: authenticator_config_entry; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.authenticator_config_entry (
    authenticator_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.authenticator_config_entry OWNER TO keycloak;

--
-- Name: broker_link; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.broker_link OWNER TO keycloak;

--
-- Name: client; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.client OWNER TO keycloak;

--
-- Name: client_attributes; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_attributes (
    client_id character varying(36) NOT NULL,
    value character varying(4000),
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_attributes OWNER TO keycloak;

--
-- Name: client_auth_flow_bindings; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_auth_flow_bindings (
    client_id character varying(36) NOT NULL,
    flow_id character varying(36),
    binding_name character varying(255) NOT NULL
);


ALTER TABLE public.client_auth_flow_bindings OWNER TO keycloak;

--
-- Name: client_default_roles; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_default_roles (
    client_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.client_default_roles OWNER TO keycloak;

--
-- Name: client_initial_access; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_initial_access (
    id character varying(36) NOT NULL,
    realm_id character varying(36) NOT NULL,
    "timestamp" integer,
    expiration integer,
    count integer,
    remaining_count integer
);


ALTER TABLE public.client_initial_access OWNER TO keycloak;

--
-- Name: client_node_registrations; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_node_registrations (
    client_id character varying(36) NOT NULL,
    value integer,
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_node_registrations OWNER TO keycloak;

--
-- Name: client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope (
    id character varying(36) NOT NULL,
    name character varying(255),
    realm_id character varying(36),
    description character varying(255),
    protocol character varying(255)
);


ALTER TABLE public.client_scope OWNER TO keycloak;

--
-- Name: client_scope_attributes; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_attributes (
    scope_id character varying(36) NOT NULL,
    value character varying(2048),
    name character varying(255) NOT NULL
);


ALTER TABLE public.client_scope_attributes OWNER TO keycloak;

--
-- Name: client_scope_client; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_client (
    client_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.client_scope_client OWNER TO keycloak;

--
-- Name: client_scope_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_scope_role_mapping (
    scope_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.client_scope_role_mapping OWNER TO keycloak;

--
-- Name: client_session; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.client_session OWNER TO keycloak;

--
-- Name: client_session_auth_status; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session_auth_status (
    authenticator character varying(36) NOT NULL,
    status integer,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_auth_status OWNER TO keycloak;

--
-- Name: client_session_note; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session_note (
    name character varying(255) NOT NULL,
    value character varying(255),
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_note OWNER TO keycloak;

--
-- Name: client_session_prot_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session_prot_mapper (
    protocol_mapper_id character varying(36) NOT NULL,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_prot_mapper OWNER TO keycloak;

--
-- Name: client_session_role; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_session_role (
    role_id character varying(255) NOT NULL,
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_session_role OWNER TO keycloak;

--
-- Name: client_user_session_note; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.client_user_session_note (
    name character varying(255) NOT NULL,
    value character varying(2048),
    client_session character varying(36) NOT NULL
);


ALTER TABLE public.client_user_session_note OWNER TO keycloak;

--
-- Name: component; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.component OWNER TO keycloak;

--
-- Name: component_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.component_config (
    id character varying(36) NOT NULL,
    component_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(4000)
);


ALTER TABLE public.component_config OWNER TO keycloak;

--
-- Name: composite_role; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.composite_role (
    composite character varying(36) NOT NULL,
    child_role character varying(36) NOT NULL
);


ALTER TABLE public.composite_role OWNER TO keycloak;

--
-- Name: credential; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.credential OWNER TO keycloak;

--
-- Name: databasechangelog; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.databasechangelog OWNER TO keycloak;

--
-- Name: databasechangeloglock; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.databasechangeloglock (
    id integer NOT NULL,
    locked boolean NOT NULL,
    lockgranted timestamp without time zone,
    lockedby character varying(255)
);


ALTER TABLE public.databasechangeloglock OWNER TO keycloak;

--
-- Name: default_client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.default_client_scope (
    realm_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL,
    default_scope boolean DEFAULT false NOT NULL
);


ALTER TABLE public.default_client_scope OWNER TO keycloak;

--
-- Name: event_entity; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.event_entity OWNER TO keycloak;

--
-- Name: fed_user_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_attribute (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36),
    value character varying(2024)
);


ALTER TABLE public.fed_user_attribute OWNER TO keycloak;

--
-- Name: fed_user_consent; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.fed_user_consent OWNER TO keycloak;

--
-- Name: fed_user_consent_cl_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_consent_cl_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.fed_user_consent_cl_scope OWNER TO keycloak;

--
-- Name: fed_user_credential; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.fed_user_credential OWNER TO keycloak;

--
-- Name: fed_user_group_membership; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_group_membership OWNER TO keycloak;

--
-- Name: fed_user_required_action; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_required_action (
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_required_action OWNER TO keycloak;

--
-- Name: fed_user_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.fed_user_role_mapping (
    role_id character varying(36) NOT NULL,
    user_id character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    storage_provider_id character varying(36)
);


ALTER TABLE public.fed_user_role_mapping OWNER TO keycloak;

--
-- Name: federated_identity; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.federated_identity (
    identity_provider character varying(255) NOT NULL,
    realm_id character varying(36),
    federated_user_id character varying(255),
    federated_username character varying(255),
    token text,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_identity OWNER TO keycloak;

--
-- Name: federated_user; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.federated_user (
    id character varying(255) NOT NULL,
    storage_provider_id character varying(255),
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.federated_user OWNER TO keycloak;

--
-- Name: group_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.group_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_attribute OWNER TO keycloak;

--
-- Name: group_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.group_role_mapping (
    role_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.group_role_mapping OWNER TO keycloak;

--
-- Name: identity_provider; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.identity_provider OWNER TO keycloak;

--
-- Name: identity_provider_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.identity_provider_config (
    identity_provider_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.identity_provider_config OWNER TO keycloak;

--
-- Name: identity_provider_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.identity_provider_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    idp_alias character varying(255) NOT NULL,
    idp_mapper_name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.identity_provider_mapper OWNER TO keycloak;

--
-- Name: idp_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.idp_mapper_config (
    idp_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.idp_mapper_config OWNER TO keycloak;

--
-- Name: keycloak_group; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.keycloak_group (
    id character varying(36) NOT NULL,
    name character varying(255),
    parent_group character varying(36) NOT NULL,
    realm_id character varying(36)
);


ALTER TABLE public.keycloak_group OWNER TO keycloak;

--
-- Name: keycloak_role; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.keycloak_role OWNER TO keycloak;

--
-- Name: migration_model; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.migration_model (
    id character varying(36) NOT NULL,
    version character varying(36),
    update_time bigint DEFAULT 0 NOT NULL
);


ALTER TABLE public.migration_model OWNER TO keycloak;

--
-- Name: offline_client_session; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.offline_client_session OWNER TO keycloak;

--
-- Name: offline_user_session; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.offline_user_session OWNER TO keycloak;

--
-- Name: oskeycloak0jbosststxtable; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.oskeycloak0jbosststxtable (
    statetype integer NOT NULL,
    hidden integer NOT NULL,
    typename character varying(255) NOT NULL,
    uidstring character varying(255) NOT NULL,
    objectstate bytea
);


ALTER TABLE public.oskeycloak0jbosststxtable OWNER TO keycloak;

--
-- Name: policy_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.policy_config (
    policy_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value text
);


ALTER TABLE public.policy_config OWNER TO keycloak;

--
-- Name: protocol_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.protocol_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    protocol character varying(255) NOT NULL,
    protocol_mapper_name character varying(255) NOT NULL,
    client_id character varying(36),
    client_scope_id character varying(36)
);


ALTER TABLE public.protocol_mapper OWNER TO keycloak;

--
-- Name: protocol_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.protocol_mapper_config (
    protocol_mapper_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.protocol_mapper_config OWNER TO keycloak;

--
-- Name: realm; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.realm OWNER TO keycloak;

--
-- Name: realm_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_attribute (
    name character varying(255) NOT NULL,
    value character varying(255),
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_attribute OWNER TO keycloak;

--
-- Name: realm_default_groups; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_default_groups (
    realm_id character varying(36) NOT NULL,
    group_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_default_groups OWNER TO keycloak;

--
-- Name: realm_default_roles; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_default_roles (
    realm_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_default_roles OWNER TO keycloak;

--
-- Name: realm_enabled_event_types; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_enabled_event_types (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_enabled_event_types OWNER TO keycloak;

--
-- Name: realm_events_listeners; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_events_listeners (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_events_listeners OWNER TO keycloak;

--
-- Name: realm_required_credential; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_required_credential (
    type character varying(255) NOT NULL,
    form_label character varying(255),
    input boolean DEFAULT false NOT NULL,
    secret boolean DEFAULT false NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.realm_required_credential OWNER TO keycloak;

--
-- Name: realm_smtp_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_smtp_config (
    realm_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.realm_smtp_config OWNER TO keycloak;

--
-- Name: realm_supported_locales; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_supported_locales (
    realm_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.realm_supported_locales OWNER TO keycloak;

--
-- Name: redirect_uris; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.redirect_uris (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.redirect_uris OWNER TO keycloak;

--
-- Name: required_action_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.required_action_config (
    required_action_id character varying(36) NOT NULL,
    value text,
    name character varying(255) NOT NULL
);


ALTER TABLE public.required_action_config OWNER TO keycloak;

--
-- Name: required_action_provider; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.required_action_provider OWNER TO keycloak;

--
-- Name: resource_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_attribute (
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255),
    resource_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_attribute OWNER TO keycloak;

--
-- Name: resource_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_policy (
    resource_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_policy OWNER TO keycloak;

--
-- Name: resource_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_scope (
    resource_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.resource_scope OWNER TO keycloak;

--
-- Name: resource_server; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server (
    id character varying(36) NOT NULL,
    allow_rs_remote_mgmt boolean DEFAULT false NOT NULL,
    policy_enforce_mode character varying(15) NOT NULL,
    decision_strategy smallint DEFAULT 1 NOT NULL
);


ALTER TABLE public.resource_server OWNER TO keycloak;

--
-- Name: resource_server_perm_ticket; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.resource_server_perm_ticket OWNER TO keycloak;

--
-- Name: resource_server_policy; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.resource_server_policy OWNER TO keycloak;

--
-- Name: resource_server_resource; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.resource_server_resource OWNER TO keycloak;

--
-- Name: resource_server_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_server_scope (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    icon_uri character varying(255),
    resource_server_id character varying(36) NOT NULL,
    display_name character varying(255)
);


ALTER TABLE public.resource_server_scope OWNER TO keycloak;

--
-- Name: resource_uris; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.resource_uris (
    resource_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.resource_uris OWNER TO keycloak;

--
-- Name: role_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.role_attribute (
    id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(255)
);


ALTER TABLE public.role_attribute OWNER TO keycloak;

--
-- Name: scope_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.scope_mapping (
    client_id character varying(36) NOT NULL,
    role_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_mapping OWNER TO keycloak;

--
-- Name: scope_policy; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.scope_policy (
    scope_id character varying(36) NOT NULL,
    policy_id character varying(36) NOT NULL
);


ALTER TABLE public.scope_policy OWNER TO keycloak;

--
-- Name: user_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_attribute (
    name character varying(255) NOT NULL,
    value character varying(255),
    user_id character varying(36) NOT NULL,
    id character varying(36) DEFAULT 'sybase-needs-something-here'::character varying NOT NULL
);


ALTER TABLE public.user_attribute OWNER TO keycloak;

--
-- Name: user_consent; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.user_consent OWNER TO keycloak;

--
-- Name: user_consent_client_scope; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_consent_client_scope (
    user_consent_id character varying(36) NOT NULL,
    scope_id character varying(36) NOT NULL
);


ALTER TABLE public.user_consent_client_scope OWNER TO keycloak;

--
-- Name: user_entity; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.user_entity OWNER TO keycloak;

--
-- Name: user_federation_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_config (
    user_federation_provider_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_config OWNER TO keycloak;

--
-- Name: user_federation_mapper; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_mapper (
    id character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    federation_provider_id character varying(36) NOT NULL,
    federation_mapper_type character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL
);


ALTER TABLE public.user_federation_mapper OWNER TO keycloak;

--
-- Name: user_federation_mapper_config; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_federation_mapper_config (
    user_federation_mapper_id character varying(36) NOT NULL,
    value character varying(255),
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_federation_mapper_config OWNER TO keycloak;

--
-- Name: user_federation_provider; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.user_federation_provider OWNER TO keycloak;

--
-- Name: user_group_membership; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_group_membership (
    group_id character varying(36) NOT NULL,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_group_membership OWNER TO keycloak;

--
-- Name: user_required_action; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_required_action (
    user_id character varying(36) NOT NULL,
    required_action character varying(255) DEFAULT ' '::character varying NOT NULL
);


ALTER TABLE public.user_required_action OWNER TO keycloak;

--
-- Name: user_role_mapping; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_role_mapping (
    role_id character varying(255) NOT NULL,
    user_id character varying(36) NOT NULL
);


ALTER TABLE public.user_role_mapping OWNER TO keycloak;

--
-- Name: user_session; Type: TABLE; Schema: public; Owner: keycloak
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


ALTER TABLE public.user_session OWNER TO keycloak;

--
-- Name: user_session_note; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.user_session_note (
    user_session character varying(36) NOT NULL,
    name character varying(255) NOT NULL,
    value character varying(2048)
);


ALTER TABLE public.user_session_note OWNER TO keycloak;

--
-- Name: username_login_failure; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.username_login_failure (
    realm_id character varying(36) NOT NULL,
    username character varying(255) NOT NULL,
    failed_login_not_before integer,
    last_failure bigint,
    last_ip_failure character varying(255),
    num_failures integer
);


ALTER TABLE public.username_login_failure OWNER TO keycloak;

--
-- Name: web_origins; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.web_origins (
    client_id character varying(36) NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.web_origins OWNER TO keycloak;

--
-- Data for Name: admin_event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.authentication_execution VALUES ('a0d0a17b-2476-4dd2-b1c4-ec60fbd361c5', NULL, 'auth-cookie', 'master', '3ad64457-f7a4-4a90-a348-714f20457cb3', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('de1f7b62-8970-42e8-92a5-21a2e1d02596', NULL, 'auth-spnego', 'master', '3ad64457-f7a4-4a90-a348-714f20457cb3', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('50818cb7-0a44-41f7-9288-0bcfc8303fa2', NULL, 'identity-provider-redirector', 'master', '3ad64457-f7a4-4a90-a348-714f20457cb3', 2, 25, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('889bd6c7-2690-4f75-9eb8-271e84c0a3e3', NULL, NULL, 'master', '3ad64457-f7a4-4a90-a348-714f20457cb3', 2, 30, true, '224fbee0-f738-4bcb-923e-b6ef571af50b', NULL);
INSERT INTO public.authentication_execution VALUES ('4b13437d-a17d-4f22-8edf-fbd3f58871fc', NULL, 'auth-username-password-form', 'master', '224fbee0-f738-4bcb-923e-b6ef571af50b', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('24948a47-24ad-4808-a317-359848f0437c', NULL, NULL, 'master', '224fbee0-f738-4bcb-923e-b6ef571af50b', 1, 20, true, '9c3b2a33-d59a-46e0-a1c6-55f169fcf541', NULL);
INSERT INTO public.authentication_execution VALUES ('55e23a95-a5f2-4cb3-988a-a4ab0585e3d4', NULL, 'conditional-user-configured', 'master', '9c3b2a33-d59a-46e0-a1c6-55f169fcf541', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c13556e8-da50-498b-9ab9-cf0183361b42', NULL, 'auth-otp-form', 'master', '9c3b2a33-d59a-46e0-a1c6-55f169fcf541', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('b1c0ee64-4681-4510-913e-758c3a16b232', NULL, 'direct-grant-validate-username', 'master', '49d7db7f-43ed-4e91-bf66-db7efbaa7ad4', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('15d9d093-8345-4f41-b8f5-fe1569e56b68', NULL, 'direct-grant-validate-password', 'master', '49d7db7f-43ed-4e91-bf66-db7efbaa7ad4', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a88a97d9-10c7-4663-90f1-97bd7341199c', NULL, NULL, 'master', '49d7db7f-43ed-4e91-bf66-db7efbaa7ad4', 1, 30, true, '3250a657-6684-4105-9615-5e25b92bee08', NULL);
INSERT INTO public.authentication_execution VALUES ('bc103a9a-6030-4415-8360-1ca3d39b8657', NULL, 'conditional-user-configured', 'master', '3250a657-6684-4105-9615-5e25b92bee08', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('0d82e7e6-910b-4d2d-b5a2-727621a0239a', NULL, 'direct-grant-validate-otp', 'master', '3250a657-6684-4105-9615-5e25b92bee08', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('edd10981-72f4-4ff4-a649-3413a744eadd', NULL, 'registration-page-form', 'master', '37296d12-7adc-45d7-a30c-8df81d5bb54b', 0, 10, true, '99d58087-e302-49c0-9ed4-ab3093ac13d6', NULL);
INSERT INTO public.authentication_execution VALUES ('debbb2d7-de8a-4e19-8789-ef3a0d8fb363', NULL, 'registration-user-creation', 'master', '99d58087-e302-49c0-9ed4-ab3093ac13d6', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('39dd477b-0387-49f2-9e46-5b670947b932', NULL, 'registration-profile-action', 'master', '99d58087-e302-49c0-9ed4-ab3093ac13d6', 0, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('16f65fd7-2f15-4422-bead-acf396819122', NULL, 'registration-password-action', 'master', '99d58087-e302-49c0-9ed4-ab3093ac13d6', 0, 50, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('babab49c-defa-4066-8ade-002f8764458f', NULL, 'registration-recaptcha-action', 'master', '99d58087-e302-49c0-9ed4-ab3093ac13d6', 3, 60, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('adc75d0b-68d8-4aa7-915f-bf8ac859ed87', NULL, 'reset-credentials-choose-user', 'master', 'f3fbc9a3-d0e9-4635-871c-937c4280e0b2', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('49f69be6-c5f5-4018-924e-4d626cbf2e92', NULL, 'reset-credential-email', 'master', 'f3fbc9a3-d0e9-4635-871c-937c4280e0b2', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('1c71f7a5-57ad-4536-95d1-62ac47edced7', NULL, 'reset-password', 'master', 'f3fbc9a3-d0e9-4635-871c-937c4280e0b2', 0, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('2e8f897e-f005-40cc-953e-6f75473c7614', NULL, NULL, 'master', 'f3fbc9a3-d0e9-4635-871c-937c4280e0b2', 1, 40, true, '4432cb76-5ae2-4fa9-8f67-e7cf1cd2ac99', NULL);
INSERT INTO public.authentication_execution VALUES ('ce4825f3-c167-4926-b93a-9916349c6d9d', NULL, 'conditional-user-configured', 'master', '4432cb76-5ae2-4fa9-8f67-e7cf1cd2ac99', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('50238d9b-4b4f-476f-8e38-62d255b0c948', NULL, 'reset-otp', 'master', '4432cb76-5ae2-4fa9-8f67-e7cf1cd2ac99', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('776a950f-4703-4526-aab4-e2e07a9c27cf', NULL, 'client-secret', 'master', '83fe87b5-ea4b-49b2-a209-dc33b96a1570', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('5c48d3b2-142b-4a61-8572-602f422567f5', NULL, 'client-jwt', 'master', '83fe87b5-ea4b-49b2-a209-dc33b96a1570', 2, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('17e875ef-bab0-4313-903f-7ef99b427057', NULL, 'client-secret-jwt', 'master', '83fe87b5-ea4b-49b2-a209-dc33b96a1570', 2, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('322c6639-d8a0-40ec-a86d-152a76d06cba', NULL, 'client-x509', 'master', '83fe87b5-ea4b-49b2-a209-dc33b96a1570', 2, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('64829855-707c-4af1-aa39-d1db324d1522', NULL, 'idp-review-profile', 'master', '4478afc4-e269-4ea6-820f-ffe622f4ff12', 0, 10, false, NULL, 'f4e1486d-f589-43f3-9a31-186599664f0e');
INSERT INTO public.authentication_execution VALUES ('b93254f2-824a-4724-a720-fe57b141d3c6', NULL, NULL, 'master', '4478afc4-e269-4ea6-820f-ffe622f4ff12', 0, 20, true, '9658361a-f224-4d4f-9822-8c0fa1af81ee', NULL);
INSERT INTO public.authentication_execution VALUES ('4fb02d88-da43-4507-b366-be9284c5595c', NULL, 'idp-create-user-if-unique', 'master', '9658361a-f224-4d4f-9822-8c0fa1af81ee', 2, 10, false, NULL, '3df468ae-8ea2-4ac0-8344-6f7b2d8d33ef');
INSERT INTO public.authentication_execution VALUES ('a0aa486d-a8d4-4a7e-ad49-d281d43a82bc', NULL, NULL, 'master', '9658361a-f224-4d4f-9822-8c0fa1af81ee', 2, 20, true, '4ded39bf-8bc4-4c5f-8738-1b36b8d37c3d', NULL);
INSERT INTO public.authentication_execution VALUES ('23c73d5d-fc88-400c-9917-f41879971077', NULL, 'idp-confirm-link', 'master', '4ded39bf-8bc4-4c5f-8738-1b36b8d37c3d', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('f4851d61-ab2d-444b-a158-898bc9213b02', NULL, NULL, 'master', '4ded39bf-8bc4-4c5f-8738-1b36b8d37c3d', 0, 20, true, '2b3808c8-3ef1-46ad-ac10-5e924fcacbd5', NULL);
INSERT INTO public.authentication_execution VALUES ('3ab31292-ccd3-454c-84b6-c91e7236841b', NULL, 'idp-email-verification', 'master', '2b3808c8-3ef1-46ad-ac10-5e924fcacbd5', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('40c92098-5493-4c3f-8508-fe05a549ab3c', NULL, NULL, 'master', '2b3808c8-3ef1-46ad-ac10-5e924fcacbd5', 2, 20, true, 'ae654965-2715-427f-97e1-d0f448590fe6', NULL);
INSERT INTO public.authentication_execution VALUES ('258b5a5a-2bc7-418d-b06a-e9716dbee9c3', NULL, 'idp-username-password-form', 'master', 'ae654965-2715-427f-97e1-d0f448590fe6', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('03dcc57a-9c35-4180-bd46-c5ae1dcc9100', NULL, NULL, 'master', 'ae654965-2715-427f-97e1-d0f448590fe6', 1, 20, true, 'c6003b95-a16e-4704-956a-1ef6dd49917a', NULL);
INSERT INTO public.authentication_execution VALUES ('cb08ea7a-d539-4dbe-8133-2940f2b6dceb', NULL, 'conditional-user-configured', 'master', 'c6003b95-a16e-4704-956a-1ef6dd49917a', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('f267d4c3-8ba3-4bde-a5ce-ee0fa12e1ced', NULL, 'auth-otp-form', 'master', 'c6003b95-a16e-4704-956a-1ef6dd49917a', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('3a5e1979-7ccd-4ba2-9278-5e3b026d2bf0', NULL, 'http-basic-authenticator', 'master', '541abb00-0caf-4978-99db-b26ef4e22077', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('8b5f108f-cea2-44cb-9363-b5006f9d558f', NULL, 'docker-http-basic-authenticator', 'master', '93bdf5ec-4efd-4fd1-a8e8-c5c4d1038579', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('f8a984a0-09e7-454d-b1aa-7f3fd7b462df', NULL, 'no-cookie-redirect', 'master', '0f58bec1-dbb4-476f-89be-73c86fbceadf', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('987fa3a5-68ab-4153-9a6b-1ac2ab736042', NULL, NULL, 'master', '0f58bec1-dbb4-476f-89be-73c86fbceadf', 0, 20, true, '1b240134-1fe0-4566-b954-f5c410eff9ad', NULL);
INSERT INTO public.authentication_execution VALUES ('57015f9a-09b2-4a80-b080-99e9d970ba1d', NULL, 'basic-auth', 'master', '1b240134-1fe0-4566-b954-f5c410eff9ad', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('3cc94174-4a74-469f-b44e-75b7b12706d8', NULL, 'basic-auth-otp', 'master', '1b240134-1fe0-4566-b954-f5c410eff9ad', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('d36d089d-a4e0-4103-ab99-7d3f105acf92', NULL, 'auth-spnego', 'master', '1b240134-1fe0-4566-b954-f5c410eff9ad', 3, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('d1eba000-534b-4aa0-8e9c-da006a27d462', NULL, 'auth-cookie', 'basic', '0625878f-57a3-45ad-b07a-af45cdb85696', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('2a1a7067-1466-4b51-8254-bd489b9a1d5e', NULL, 'auth-spnego', 'basic', '0625878f-57a3-45ad-b07a-af45cdb85696', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a0b6481f-23cc-42e7-946a-5c7775def5c0', NULL, 'identity-provider-redirector', 'basic', '0625878f-57a3-45ad-b07a-af45cdb85696', 2, 25, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('58cadec2-72d2-44c1-b884-e7da466e67f7', NULL, NULL, 'basic', '0625878f-57a3-45ad-b07a-af45cdb85696', 2, 30, true, 'fa258cc9-f170-4e61-8fa5-d3e5a7b9cbe7', NULL);
INSERT INTO public.authentication_execution VALUES ('1998f9c5-74f4-41dc-beca-36fb0a5d4741', NULL, 'auth-username-password-form', 'basic', 'fa258cc9-f170-4e61-8fa5-d3e5a7b9cbe7', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('e197913d-8899-4dd3-8810-b65e18af0edf', NULL, NULL, 'basic', 'fa258cc9-f170-4e61-8fa5-d3e5a7b9cbe7', 1, 20, true, 'ce7220e2-e6ea-42a1-9505-e579b4967740', NULL);
INSERT INTO public.authentication_execution VALUES ('258a3f93-8443-4f7d-8c92-5f4721a2dbc2', NULL, 'conditional-user-configured', 'basic', 'ce7220e2-e6ea-42a1-9505-e579b4967740', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('614b93ae-3061-4974-9548-3d6159c538ea', NULL, 'auth-otp-form', 'basic', 'ce7220e2-e6ea-42a1-9505-e579b4967740', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ce37cbbc-2297-4d20-8ea3-719c2020d155', NULL, 'direct-grant-validate-username', 'basic', 'f5b57b33-6edc-4d8f-84f8-866e772899a3', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('4ee4ad58-604a-4aac-88d0-59d057757958', NULL, 'direct-grant-validate-password', 'basic', 'f5b57b33-6edc-4d8f-84f8-866e772899a3', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('6644b7fd-4f07-4ffe-83de-29e038e1bf14', NULL, NULL, 'basic', 'f5b57b33-6edc-4d8f-84f8-866e772899a3', 1, 30, true, 'b516b2f5-90f8-486b-aa6f-71d323716422', NULL);
INSERT INTO public.authentication_execution VALUES ('d67a4d5f-b89f-4592-958f-d20602b14971', NULL, 'conditional-user-configured', 'basic', 'b516b2f5-90f8-486b-aa6f-71d323716422', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('c69b57af-355b-4728-9d3f-60012401d91b', NULL, 'direct-grant-validate-otp', 'basic', 'b516b2f5-90f8-486b-aa6f-71d323716422', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('da417d15-e3ec-4a66-8f16-18d508d287e9', NULL, 'registration-page-form', 'basic', '258e54b3-09b5-48bd-abaa-b55964259451', 0, 10, true, '1751ef89-d3fd-4dc2-86c9-904289a0b879', NULL);
INSERT INTO public.authentication_execution VALUES ('16fba452-f24e-45e3-acc5-7c32ca592025', NULL, 'registration-user-creation', 'basic', '1751ef89-d3fd-4dc2-86c9-904289a0b879', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('73cb62e2-1407-4d43-af4c-3a0f410f0e1f', NULL, 'registration-profile-action', 'basic', '1751ef89-d3fd-4dc2-86c9-904289a0b879', 0, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('0b32e0ff-631b-45eb-8d41-a30948c724d6', NULL, 'registration-password-action', 'basic', '1751ef89-d3fd-4dc2-86c9-904289a0b879', 0, 50, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('d18e5c51-8cd8-40c3-8781-2a8364609268', NULL, 'registration-recaptcha-action', 'basic', '1751ef89-d3fd-4dc2-86c9-904289a0b879', 3, 60, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a3b841b2-c0bb-47a0-8db9-14e58c788460', NULL, 'reset-credentials-choose-user', 'basic', 'cc74f017-ac33-48ab-9fc5-0a0633bfb429', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('e34411dc-2694-4e89-9f5d-08e94a7d69e6', NULL, 'reset-credential-email', 'basic', 'cc74f017-ac33-48ab-9fc5-0a0633bfb429', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('db8d088d-c99b-41a2-abf0-a68468666f85', NULL, 'reset-password', 'basic', 'cc74f017-ac33-48ab-9fc5-0a0633bfb429', 0, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('48001ad9-49eb-40f4-b61a-6722e535af6c', NULL, NULL, 'basic', 'cc74f017-ac33-48ab-9fc5-0a0633bfb429', 1, 40, true, '8c6f8423-669d-4d52-8e87-42b88eb8b09d', NULL);
INSERT INTO public.authentication_execution VALUES ('51e662a2-8aed-4947-a611-8c0f68a605f0', NULL, 'conditional-user-configured', 'basic', '8c6f8423-669d-4d52-8e87-42b88eb8b09d', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('51ba22ed-3c02-4090-a666-9941b37d64bd', NULL, 'reset-otp', 'basic', '8c6f8423-669d-4d52-8e87-42b88eb8b09d', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('60d79511-3b9e-40cc-a416-affb52c57355', NULL, 'client-secret', 'basic', '656738a3-bbc1-418c-942e-1efd173a31c5', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('4e51682f-c8a9-4aba-9476-9eb862ceae9f', NULL, 'client-jwt', 'basic', '656738a3-bbc1-418c-942e-1efd173a31c5', 2, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('32cbcb7c-ac45-4f9a-b89d-43484f328d38', NULL, 'client-secret-jwt', 'basic', '656738a3-bbc1-418c-942e-1efd173a31c5', 2, 30, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('6b8088da-6dae-4c86-8036-8b406d589faa', NULL, 'client-x509', 'basic', '656738a3-bbc1-418c-942e-1efd173a31c5', 2, 40, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('7a9ee1f6-9d72-40ac-82ba-d6514b0970e0', NULL, 'idp-review-profile', 'basic', '3bfecccf-c490-49b3-b518-8a3827895369', 0, 10, false, NULL, '57dac91b-f360-4f16-8d82-e75ee36703f2');
INSERT INTO public.authentication_execution VALUES ('56e267f8-b469-4a72-b4b2-9d605f171902', NULL, NULL, 'basic', '3bfecccf-c490-49b3-b518-8a3827895369', 0, 20, true, '90ded5e4-896c-4006-a9a0-e956a7c18ae3', NULL);
INSERT INTO public.authentication_execution VALUES ('ed02a7c1-d1fa-49fd-9dfa-83f5f3f2583b', NULL, 'idp-create-user-if-unique', 'basic', '90ded5e4-896c-4006-a9a0-e956a7c18ae3', 2, 10, false, NULL, '4e127122-c7ed-423c-9248-24d5f8004135');
INSERT INTO public.authentication_execution VALUES ('f9bcfe63-819b-4a46-af64-f5de4912dd2e', NULL, NULL, 'basic', '90ded5e4-896c-4006-a9a0-e956a7c18ae3', 2, 20, true, '98910a16-5b07-4147-9698-435d46d67791', NULL);
INSERT INTO public.authentication_execution VALUES ('1e616321-a4ec-4f14-8462-1aa35c738a83', NULL, 'idp-confirm-link', 'basic', '98910a16-5b07-4147-9698-435d46d67791', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a6d1b49d-13d6-4e55-a62b-b9bed07f75e2', NULL, NULL, 'basic', '98910a16-5b07-4147-9698-435d46d67791', 0, 20, true, '3a6d3242-754c-4237-81a8-019be88d281d', NULL);
INSERT INTO public.authentication_execution VALUES ('9264310f-a193-4056-ac17-8c50c41279ce', NULL, 'idp-email-verification', 'basic', '3a6d3242-754c-4237-81a8-019be88d281d', 2, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('d1ecc6b1-56a0-4e87-b41e-f72d4fc14fc5', NULL, NULL, 'basic', '3a6d3242-754c-4237-81a8-019be88d281d', 2, 20, true, '9ec48e64-f99a-4ccf-b9ea-83beb083238a', NULL);
INSERT INTO public.authentication_execution VALUES ('578a7fe0-ea1e-4ba1-b414-39e248127cb0', NULL, 'idp-username-password-form', 'basic', '9ec48e64-f99a-4ccf-b9ea-83beb083238a', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('dbd06f6b-2d7d-4e76-a87f-f611dc17e766', NULL, NULL, 'basic', '9ec48e64-f99a-4ccf-b9ea-83beb083238a', 1, 20, true, '6712a2c8-df0c-4883-80dc-659ab345c981', NULL);
INSERT INTO public.authentication_execution VALUES ('86c0c014-126d-4314-88c2-b4555c7d3a4a', NULL, 'conditional-user-configured', 'basic', '6712a2c8-df0c-4883-80dc-659ab345c981', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('304bf040-1881-43ef-971a-ba6f35a16a00', NULL, 'auth-otp-form', 'basic', '6712a2c8-df0c-4883-80dc-659ab345c981', 0, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('a8f1c6a7-760e-4992-9b1d-40500c65fb3c', NULL, 'http-basic-authenticator', 'basic', 'ef6e7af9-2cf2-4817-95bb-df4f4f36a996', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ad11c238-e02f-4570-a367-53a66f09c761', NULL, 'docker-http-basic-authenticator', 'basic', '5c0bc0cd-ba39-4fb0-8cfa-abc771bc128f', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('d6c66e87-6e99-45d6-a01e-c0b792bb31e3', NULL, 'no-cookie-redirect', 'basic', 'e5a1b3fa-5881-45ba-b1f4-9759c85ae6d3', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('ebcf3531-b574-4fd9-af8c-dd0f0ee9afff', NULL, NULL, 'basic', 'e5a1b3fa-5881-45ba-b1f4-9759c85ae6d3', 0, 20, true, '67ba8e4d-b59b-4ef8-b112-f7f8dd3bee71', NULL);
INSERT INTO public.authentication_execution VALUES ('b63ee22a-1242-446e-afc1-1d8115ecec92', NULL, 'basic-auth', 'basic', '67ba8e4d-b59b-4ef8-b112-f7f8dd3bee71', 0, 10, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('0bf5c7a8-48eb-4eb5-9abc-b4e633780165', NULL, 'basic-auth-otp', 'basic', '67ba8e4d-b59b-4ef8-b112-f7f8dd3bee71', 3, 20, false, NULL, NULL);
INSERT INTO public.authentication_execution VALUES ('9a0f8d1a-5f73-4465-aa36-75bfe0b6f560', NULL, 'auth-spnego', 'basic', '67ba8e4d-b59b-4ef8-b112-f7f8dd3bee71', 3, 30, false, NULL, NULL);


--
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.authentication_flow VALUES ('3ad64457-f7a4-4a90-a348-714f20457cb3', 'browser', 'browser based authentication', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('224fbee0-f738-4bcb-923e-b6ef571af50b', 'forms', 'Username, password, otp and other auth forms.', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('9c3b2a33-d59a-46e0-a1c6-55f169fcf541', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('49d7db7f-43ed-4e91-bf66-db7efbaa7ad4', 'direct grant', 'OpenID Connect Resource Owner Grant', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('3250a657-6684-4105-9615-5e25b92bee08', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('37296d12-7adc-45d7-a30c-8df81d5bb54b', 'registration', 'registration flow', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('99d58087-e302-49c0-9ed4-ab3093ac13d6', 'registration form', 'registration form', 'master', 'form-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('f3fbc9a3-d0e9-4635-871c-937c4280e0b2', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('4432cb76-5ae2-4fa9-8f67-e7cf1cd2ac99', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('83fe87b5-ea4b-49b2-a209-dc33b96a1570', 'clients', 'Base authentication for clients', 'master', 'client-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('4478afc4-e269-4ea6-820f-ffe622f4ff12', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('9658361a-f224-4d4f-9822-8c0fa1af81ee', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('4ded39bf-8bc4-4c5f-8738-1b36b8d37c3d', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('2b3808c8-3ef1-46ad-ac10-5e924fcacbd5', 'Account verification options', 'Method with which to verity the existing account', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('ae654965-2715-427f-97e1-d0f448590fe6', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('c6003b95-a16e-4704-956a-1ef6dd49917a', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('541abb00-0caf-4978-99db-b26ef4e22077', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('93bdf5ec-4efd-4fd1-a8e8-c5c4d1038579', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('0f58bec1-dbb4-476f-89be-73c86fbceadf', 'http challenge', 'An authentication flow based on challenge-response HTTP Authentication Schemes', 'master', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('1b240134-1fe0-4566-b954-f5c410eff9ad', 'Authentication Options', 'Authentication options.', 'master', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('0625878f-57a3-45ad-b07a-af45cdb85696', 'browser', 'browser based authentication', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('fa258cc9-f170-4e61-8fa5-d3e5a7b9cbe7', 'forms', 'Username, password, otp and other auth forms.', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('ce7220e2-e6ea-42a1-9505-e579b4967740', 'Browser - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('f5b57b33-6edc-4d8f-84f8-866e772899a3', 'direct grant', 'OpenID Connect Resource Owner Grant', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('b516b2f5-90f8-486b-aa6f-71d323716422', 'Direct Grant - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('258e54b3-09b5-48bd-abaa-b55964259451', 'registration', 'registration flow', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('1751ef89-d3fd-4dc2-86c9-904289a0b879', 'registration form', 'registration form', 'basic', 'form-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('cc74f017-ac33-48ab-9fc5-0a0633bfb429', 'reset credentials', 'Reset credentials for a user if they forgot their password or something', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('8c6f8423-669d-4d52-8e87-42b88eb8b09d', 'Reset - Conditional OTP', 'Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('656738a3-bbc1-418c-942e-1efd173a31c5', 'clients', 'Base authentication for clients', 'basic', 'client-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('3bfecccf-c490-49b3-b518-8a3827895369', 'first broker login', 'Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('90ded5e4-896c-4006-a9a0-e956a7c18ae3', 'User creation or linking', 'Flow for the existing/non-existing user alternatives', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('98910a16-5b07-4147-9698-435d46d67791', 'Handle Existing Account', 'Handle what to do if there is existing account with same email/username like authenticated identity provider', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('3a6d3242-754c-4237-81a8-019be88d281d', 'Account verification options', 'Method with which to verity the existing account', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('9ec48e64-f99a-4ccf-b9ea-83beb083238a', 'Verify Existing Account by Re-authentication', 'Reauthentication of existing account', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('6712a2c8-df0c-4883-80dc-659ab345c981', 'First broker login - Conditional OTP', 'Flow to determine if the OTP is required for the authentication', 'basic', 'basic-flow', false, true);
INSERT INTO public.authentication_flow VALUES ('ef6e7af9-2cf2-4817-95bb-df4f4f36a996', 'saml ecp', 'SAML ECP Profile Authentication Flow', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('5c0bc0cd-ba39-4fb0-8cfa-abc771bc128f', 'docker auth', 'Used by Docker clients to authenticate against the IDP', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('e5a1b3fa-5881-45ba-b1f4-9759c85ae6d3', 'http challenge', 'An authentication flow based on challenge-response HTTP Authentication Schemes', 'basic', 'basic-flow', true, true);
INSERT INTO public.authentication_flow VALUES ('67ba8e4d-b59b-4ef8-b112-f7f8dd3bee71', 'Authentication Options', 'Authentication options.', 'basic', 'basic-flow', false, true);


--
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.authenticator_config VALUES ('f4e1486d-f589-43f3-9a31-186599664f0e', 'review profile config', 'master');
INSERT INTO public.authenticator_config VALUES ('3df468ae-8ea2-4ac0-8344-6f7b2d8d33ef', 'create unique user config', 'master');
INSERT INTO public.authenticator_config VALUES ('57dac91b-f360-4f16-8d82-e75ee36703f2', 'review profile config', 'basic');
INSERT INTO public.authenticator_config VALUES ('4e127122-c7ed-423c-9248-24d5f8004135', 'create unique user config', 'basic');


--
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.authenticator_config_entry VALUES ('f4e1486d-f589-43f3-9a31-186599664f0e', 'missing', 'update.profile.on.first.login');
INSERT INTO public.authenticator_config_entry VALUES ('3df468ae-8ea2-4ac0-8344-6f7b2d8d33ef', 'false', 'require.password.update.after.registration');
INSERT INTO public.authenticator_config_entry VALUES ('57dac91b-f360-4f16-8d82-e75ee36703f2', 'missing', 'update.profile.on.first.login');
INSERT INTO public.authenticator_config_entry VALUES ('4e127122-c7ed-423c-9248-24d5f8004135', 'false', 'require.password.update.after.registration');


--
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, true, 'master-realm', 0, false, '2e6ab36c-bec5-435f-ba33-61fa99f702f3', NULL, true, NULL, false, 'master', NULL, 0, false, false, 'master Realm', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', true, false, 'account', 0, false, 'bd23b696-7c11-4117-9d8a-d6fc479bcc4d', '/realms/master/account/', false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_account}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', true, false, 'account-console', 0, true, '3d5c0416-522b-4a7e-8aad-d34ba2bda1ea', '/realms/master/account/', false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_account-console}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', true, false, 'broker', 0, false, 'e9d933f9-d1c1-4d39-b0c8-03ca137ffaf8', NULL, false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_broker}', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', true, false, 'security-admin-console', 0, true, 'fd2cc126-9da6-41dd-8086-e44b1da7c459', '/admin/master/console/', false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_security-admin-console}', false, 'client-secret', '${authAdminUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', true, false, 'admin-cli', 0, true, 'ef730f42-3af2-4b91-a69b-6456bf27d4ba', NULL, false, NULL, false, 'master', 'openid-connect', 0, false, false, '${client_admin-cli}', false, 'client-secret', NULL, NULL, NULL, false, false, true, false);
INSERT INTO public.client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', true, true, 'basic-realm', 0, false, '3fb4f972-131c-4d4f-a62a-86ad7171713f', NULL, true, NULL, false, 'master', NULL, 0, false, false, 'basic Realm', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', true, false, 'realm-management', 0, false, '5976dc35-f036-4307-a996-b23306771ac7', NULL, true, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_realm-management}', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', true, false, 'account', 0, false, '27655f42-201d-4fa6-89ff-7c4c9ab139fc', '/realms/basic/account/', false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_account}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', true, false, 'account-console', 0, true, '0c8b49c9-307c-4d70-93a3-ff5b2a799b6f', '/realms/basic/account/', false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_account-console}', false, 'client-secret', '${authBaseUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', true, false, 'broker', 0, false, '23566482-d0de-4bb4-b3b2-f13df5f8caa4', NULL, false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_broker}', false, 'client-secret', NULL, NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', true, false, 'security-admin-console', 0, true, '60fd1871-f002-451a-b8f6-988b04e5d156', '/admin/basic/console/', false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_security-admin-console}', false, 'client-secret', '${authAdminUrl}', NULL, NULL, true, false, false, false);
INSERT INTO public.client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', true, false, 'admin-cli', 0, true, '96d5e0ab-87fd-49e6-8bd2-c34084f6ae1e', NULL, false, NULL, false, 'basic', 'openid-connect', 0, false, false, '${client_admin-cli}', false, 'client-secret', NULL, NULL, NULL, false, false, true, false);
INSERT INTO public.client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', true, true, 'app-react', 0, true, '013cab7a-0ec9-4932-b412-abeee8fb191c', 'http://nodejs-gui-nm-demo.apps.ocp-cluster-1.rhlab.ch', false, NULL, false, 'basic', 'openid-connect', -1, false, false, NULL, false, 'client-secret', 'http://nodejs-gui-nm-demo.apps.ocp-cluster-1.rhlab.ch/', NULL, NULL, true, false, true, false);


--
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.client_attributes VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', 'S256', 'pkce.code.challenge.method');
INSERT INTO public.client_attributes VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', 'S256', 'pkce.code.challenge.method');
INSERT INTO public.client_attributes VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', 'S256', 'pkce.code.challenge.method');
INSERT INTO public.client_attributes VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', 'S256', 'pkce.code.challenge.method');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.server.signature');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.server.signature.keyinfo.ext');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.assertion.signature');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.client.signature');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.encrypt');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.authnstatement');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.onetimeuse.condition');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml_force_name_id_format');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.multivalued.roles');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'saml.force.post.binding');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'exclude.session.state.from.auth.response');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'tls.client.certificate.bound.access.tokens');
INSERT INTO public.client_attributes VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'false', 'display.on.consent.screen');


--
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client_default_roles; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.client_default_roles VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', 'a73f2af1-d854-42f1-ac0b-84d01148d1d4');
INSERT INTO public.client_default_roles VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', 'c5e44a37-f2fc-4995-95de-3945086ae03d');
INSERT INTO public.client_default_roles VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '16227269-0fad-41d6-bc2c-7f893ffcd93d');
INSERT INTO public.client_default_roles VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '54587202-8fa1-40b1-93e2-6220640c6b2a');


--
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.client_scope VALUES ('f56078ed-15de-4dac-942f-3b6d85db3f69', 'offline_access', 'master', 'OpenID Connect built-in scope: offline_access', 'openid-connect');
INSERT INTO public.client_scope VALUES ('6839625d-86db-4462-98c4-43ca2ca3092b', 'role_list', 'master', 'SAML role list', 'saml');
INSERT INTO public.client_scope VALUES ('92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', 'profile', 'master', 'OpenID Connect built-in scope: profile', 'openid-connect');
INSERT INTO public.client_scope VALUES ('c9b09700-bfb8-4672-a555-2072badb4817', 'email', 'master', 'OpenID Connect built-in scope: email', 'openid-connect');
INSERT INTO public.client_scope VALUES ('c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', 'address', 'master', 'OpenID Connect built-in scope: address', 'openid-connect');
INSERT INTO public.client_scope VALUES ('26ad9620-ccea-431f-85a7-d274cecd2535', 'phone', 'master', 'OpenID Connect built-in scope: phone', 'openid-connect');
INSERT INTO public.client_scope VALUES ('46cacc2d-a427-47a7-a1fa-95e73bcb81bd', 'roles', 'master', 'OpenID Connect scope for add user roles to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('b32480dc-1f94-4278-8b18-e79992c1fae3', 'web-origins', 'master', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('db28999e-5228-43cc-aee8-455f04a537fc', 'microprofile-jwt', 'master', 'Microprofile - JWT built-in scope', 'openid-connect');
INSERT INTO public.client_scope VALUES ('9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', 'offline_access', 'basic', 'OpenID Connect built-in scope: offline_access', 'openid-connect');
INSERT INTO public.client_scope VALUES ('6af32e54-3a35-4ebe-9680-18e2f32bb5cc', 'role_list', 'basic', 'SAML role list', 'saml');
INSERT INTO public.client_scope VALUES ('ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', 'profile', 'basic', 'OpenID Connect built-in scope: profile', 'openid-connect');
INSERT INTO public.client_scope VALUES ('9979c480-91c1-4d97-a82b-95b9efac7d45', 'email', 'basic', 'OpenID Connect built-in scope: email', 'openid-connect');
INSERT INTO public.client_scope VALUES ('7620c3e2-b5f9-4035-adce-6f13e1392077', 'address', 'basic', 'OpenID Connect built-in scope: address', 'openid-connect');
INSERT INTO public.client_scope VALUES ('af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', 'phone', 'basic', 'OpenID Connect built-in scope: phone', 'openid-connect');
INSERT INTO public.client_scope VALUES ('d2002b47-b70a-4da3-8587-0c90fd9a4239', 'roles', 'basic', 'OpenID Connect scope for add user roles to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('0457d93b-e68f-44aa-badd-24e6d0636ff1', 'web-origins', 'basic', 'OpenID Connect scope for add allowed web origins to the access token', 'openid-connect');
INSERT INTO public.client_scope VALUES ('6afec045-372a-4514-9b9b-a0b64dc2c06f', 'microprofile-jwt', 'basic', 'Microprofile - JWT built-in scope', 'openid-connect');


--
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.client_scope_attributes VALUES ('f56078ed-15de-4dac-942f-3b6d85db3f69', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('f56078ed-15de-4dac-942f-3b6d85db3f69', '${offlineAccessScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('6839625d-86db-4462-98c4-43ca2ca3092b', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('6839625d-86db-4462-98c4-43ca2ca3092b', '${samlRoleListScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', '${profileScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('c9b09700-bfb8-4672-a555-2072badb4817', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('c9b09700-bfb8-4672-a555-2072badb4817', '${emailScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('c9b09700-bfb8-4672-a555-2072badb4817', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', '${addressScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('26ad9620-ccea-431f-85a7-d274cecd2535', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('26ad9620-ccea-431f-85a7-d274cecd2535', '${phoneScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('26ad9620-ccea-431f-85a7-d274cecd2535', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('46cacc2d-a427-47a7-a1fa-95e73bcb81bd', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('46cacc2d-a427-47a7-a1fa-95e73bcb81bd', '${rolesScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('46cacc2d-a427-47a7-a1fa-95e73bcb81bd', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('b32480dc-1f94-4278-8b18-e79992c1fae3', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('b32480dc-1f94-4278-8b18-e79992c1fae3', '', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('b32480dc-1f94-4278-8b18-e79992c1fae3', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('db28999e-5228-43cc-aee8-455f04a537fc', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('db28999e-5228-43cc-aee8-455f04a537fc', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', '${offlineAccessScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('6af32e54-3a35-4ebe-9680-18e2f32bb5cc', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('6af32e54-3a35-4ebe-9680-18e2f32bb5cc', '${samlRoleListScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', '${profileScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('9979c480-91c1-4d97-a82b-95b9efac7d45', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('9979c480-91c1-4d97-a82b-95b9efac7d45', '${emailScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('9979c480-91c1-4d97-a82b-95b9efac7d45', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('7620c3e2-b5f9-4035-adce-6f13e1392077', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('7620c3e2-b5f9-4035-adce-6f13e1392077', '${addressScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('7620c3e2-b5f9-4035-adce-6f13e1392077', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', '${phoneScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', 'true', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('d2002b47-b70a-4da3-8587-0c90fd9a4239', 'true', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('d2002b47-b70a-4da3-8587-0c90fd9a4239', '${rolesScopeConsentText}', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('d2002b47-b70a-4da3-8587-0c90fd9a4239', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('0457d93b-e68f-44aa-badd-24e6d0636ff1', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('0457d93b-e68f-44aa-badd-24e6d0636ff1', '', 'consent.screen.text');
INSERT INTO public.client_scope_attributes VALUES ('0457d93b-e68f-44aa-badd-24e6d0636ff1', 'false', 'include.in.token.scope');
INSERT INTO public.client_scope_attributes VALUES ('6afec045-372a-4514-9b9b-a0b64dc2c06f', 'false', 'display.on.consent.screen');
INSERT INTO public.client_scope_attributes VALUES ('6afec045-372a-4514-9b9b-a0b64dc2c06f', 'true', 'include.in.token.scope');


--
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', '6839625d-86db-4462-98c4-43ca2ca3092b', true);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', '6839625d-86db-4462-98c4-43ca2ca3092b', true);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', '6839625d-86db-4462-98c4-43ca2ca3092b', true);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', '6839625d-86db-4462-98c4-43ca2ca3092b', true);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', '6839625d-86db-4462-98c4-43ca2ca3092b', true);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', '6839625d-86db-4462-98c4-43ca2ca3092b', true);
INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', true);
INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', 'c9b09700-bfb8-4672-a555-2072badb4817', true);
INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', '46cacc2d-a427-47a7-a1fa-95e73bcb81bd', true);
INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', 'b32480dc-1f94-4278-8b18-e79992c1fae3', true);
INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', 'f56078ed-15de-4dac-942f-3b6d85db3f69', false);
INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', false);
INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', '26ad9620-ccea-431f-85a7-d274cecd2535', false);
INSERT INTO public.client_scope_client VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', 'db28999e-5228-43cc-aee8-455f04a537fc', false);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', true);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', 'c9b09700-bfb8-4672-a555-2072badb4817', true);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', '46cacc2d-a427-47a7-a1fa-95e73bcb81bd', true);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', 'b32480dc-1f94-4278-8b18-e79992c1fae3', true);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', 'f56078ed-15de-4dac-942f-3b6d85db3f69', false);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', false);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', '26ad9620-ccea-431f-85a7-d274cecd2535', false);
INSERT INTO public.client_scope_client VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', 'db28999e-5228-43cc-aee8-455f04a537fc', false);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', true);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', 'c9b09700-bfb8-4672-a555-2072badb4817', true);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', '46cacc2d-a427-47a7-a1fa-95e73bcb81bd', true);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', 'b32480dc-1f94-4278-8b18-e79992c1fae3', true);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', 'f56078ed-15de-4dac-942f-3b6d85db3f69', false);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', false);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', '26ad9620-ccea-431f-85a7-d274cecd2535', false);
INSERT INTO public.client_scope_client VALUES ('21780f96-34ea-44d5-be0d-7a365bc9b7de', 'db28999e-5228-43cc-aee8-455f04a537fc', false);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', true);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', 'c9b09700-bfb8-4672-a555-2072badb4817', true);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', '46cacc2d-a427-47a7-a1fa-95e73bcb81bd', true);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', 'b32480dc-1f94-4278-8b18-e79992c1fae3', true);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', 'f56078ed-15de-4dac-942f-3b6d85db3f69', false);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', false);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', '26ad9620-ccea-431f-85a7-d274cecd2535', false);
INSERT INTO public.client_scope_client VALUES ('d9fa7dfc-b6f4-4dbb-9876-487c42c0312a', 'db28999e-5228-43cc-aee8-455f04a537fc', false);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', true);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', 'c9b09700-bfb8-4672-a555-2072badb4817', true);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', '46cacc2d-a427-47a7-a1fa-95e73bcb81bd', true);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', 'b32480dc-1f94-4278-8b18-e79992c1fae3', true);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', 'f56078ed-15de-4dac-942f-3b6d85db3f69', false);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', false);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', '26ad9620-ccea-431f-85a7-d274cecd2535', false);
INSERT INTO public.client_scope_client VALUES ('14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', 'db28999e-5228-43cc-aee8-455f04a537fc', false);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', true);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', 'c9b09700-bfb8-4672-a555-2072badb4817', true);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', '46cacc2d-a427-47a7-a1fa-95e73bcb81bd', true);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', 'b32480dc-1f94-4278-8b18-e79992c1fae3', true);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', 'f56078ed-15de-4dac-942f-3b6d85db3f69', false);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', false);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', '26ad9620-ccea-431f-85a7-d274cecd2535', false);
INSERT INTO public.client_scope_client VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', 'db28999e-5228-43cc-aee8-455f04a537fc', false);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', '6839625d-86db-4462-98c4-43ca2ca3092b', true);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', true);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', 'c9b09700-bfb8-4672-a555-2072badb4817', true);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', '46cacc2d-a427-47a7-a1fa-95e73bcb81bd', true);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', 'b32480dc-1f94-4278-8b18-e79992c1fae3', true);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', 'f56078ed-15de-4dac-942f-3b6d85db3f69', false);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', false);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', '26ad9620-ccea-431f-85a7-d274cecd2535', false);
INSERT INTO public.client_scope_client VALUES ('8854ebd4-0268-4832-8a3f-257942cda0a9', 'db28999e-5228-43cc-aee8-455f04a537fc', false);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '6af32e54-3a35-4ebe-9680-18e2f32bb5cc', true);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', '6af32e54-3a35-4ebe-9680-18e2f32bb5cc', true);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', '6af32e54-3a35-4ebe-9680-18e2f32bb5cc', true);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', '6af32e54-3a35-4ebe-9680-18e2f32bb5cc', true);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', '6af32e54-3a35-4ebe-9680-18e2f32bb5cc', true);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', '6af32e54-3a35-4ebe-9680-18e2f32bb5cc', true);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', true);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '9979c480-91c1-4d97-a82b-95b9efac7d45', true);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', 'd2002b47-b70a-4da3-8587-0c90fd9a4239', true);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '0457d93b-e68f-44aa-badd-24e6d0636ff1', true);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', false);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '7620c3e2-b5f9-4035-adce-6f13e1392077', false);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', false);
INSERT INTO public.client_scope_client VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '6afec045-372a-4514-9b9b-a0b64dc2c06f', false);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', true);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', '9979c480-91c1-4d97-a82b-95b9efac7d45', true);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', 'd2002b47-b70a-4da3-8587-0c90fd9a4239', true);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', '0457d93b-e68f-44aa-badd-24e6d0636ff1', true);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', '9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', false);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', '7620c3e2-b5f9-4035-adce-6f13e1392077', false);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', false);
INSERT INTO public.client_scope_client VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', '6afec045-372a-4514-9b9b-a0b64dc2c06f', false);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', true);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', '9979c480-91c1-4d97-a82b-95b9efac7d45', true);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', 'd2002b47-b70a-4da3-8587-0c90fd9a4239', true);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', '0457d93b-e68f-44aa-badd-24e6d0636ff1', true);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', '9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', false);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', '7620c3e2-b5f9-4035-adce-6f13e1392077', false);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', false);
INSERT INTO public.client_scope_client VALUES ('b1b32652-ceb9-4516-bdf3-5c3f2a4de4bb', '6afec045-372a-4514-9b9b-a0b64dc2c06f', false);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', true);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', '9979c480-91c1-4d97-a82b-95b9efac7d45', true);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', 'd2002b47-b70a-4da3-8587-0c90fd9a4239', true);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', '0457d93b-e68f-44aa-badd-24e6d0636ff1', true);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', '9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', false);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', '7620c3e2-b5f9-4035-adce-6f13e1392077', false);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', false);
INSERT INTO public.client_scope_client VALUES ('a063f021-6faa-4ce4-b0f0-bb111e78d871', '6afec045-372a-4514-9b9b-a0b64dc2c06f', false);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', true);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', '9979c480-91c1-4d97-a82b-95b9efac7d45', true);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', 'd2002b47-b70a-4da3-8587-0c90fd9a4239', true);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', '0457d93b-e68f-44aa-badd-24e6d0636ff1', true);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', '9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', false);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', '7620c3e2-b5f9-4035-adce-6f13e1392077', false);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', false);
INSERT INTO public.client_scope_client VALUES ('44818e9e-93bf-44d8-8c87-4f867ddd441f', '6afec045-372a-4514-9b9b-a0b64dc2c06f', false);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', true);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', '9979c480-91c1-4d97-a82b-95b9efac7d45', true);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', 'd2002b47-b70a-4da3-8587-0c90fd9a4239', true);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', '0457d93b-e68f-44aa-badd-24e6d0636ff1', true);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', '9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', false);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', '7620c3e2-b5f9-4035-adce-6f13e1392077', false);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', false);
INSERT INTO public.client_scope_client VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', '6afec045-372a-4514-9b9b-a0b64dc2c06f', false);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', '6af32e54-3a35-4ebe-9680-18e2f32bb5cc', true);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', true);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', '9979c480-91c1-4d97-a82b-95b9efac7d45', true);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'd2002b47-b70a-4da3-8587-0c90fd9a4239', true);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', '0457d93b-e68f-44aa-badd-24e6d0636ff1', true);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', '9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', false);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', '7620c3e2-b5f9-4035-adce-6f13e1392077', false);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', false);
INSERT INTO public.client_scope_client VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', '6afec045-372a-4514-9b9b-a0b64dc2c06f', false);


--
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.client_scope_role_mapping VALUES ('f56078ed-15de-4dac-942f-3b6d85db3f69', '0cd42c54-55e2-4ec9-a14a-07bd499e081d');
INSERT INTO public.client_scope_role_mapping VALUES ('9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', 'f4eeb266-3795-442d-813a-1a5d1a28ec25');


--
-- Data for Name: client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client_session_auth_status; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client_session_prot_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client_session_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: client_user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.component VALUES ('e76b2376-cfef-451a-aefb-a8a128550cf5', 'Trusted Hosts', 'master', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('5b938792-00c3-49e6-9062-5df967e74eba', 'Consent Required', 'master', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('45f71179-7c55-434e-83a3-ab4cb8d4c4db', 'Full Scope Disabled', 'master', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('f0fa1485-ec3e-4e1d-840a-9ed57e69a3f7', 'Max Clients Limit', 'master', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'Allowed Protocol Mapper Types', 'master', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('b3f94e9e-c7dd-4109-a24d-9296d3b697af', 'Allowed Client Scopes', 'master', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'anonymous');
INSERT INTO public.component VALUES ('00f9917c-42da-47ee-a10c-89ab11120c4c', 'Allowed Protocol Mapper Types', 'master', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'authenticated');
INSERT INTO public.component VALUES ('69f3c7eb-1026-4279-b0f1-f01381653ea2', 'Allowed Client Scopes', 'master', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'master', 'authenticated');
INSERT INTO public.component VALUES ('d228133c-e51a-41b9-a1a9-73346c3d88c6', 'rsa-generated', 'master', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL);
INSERT INTO public.component VALUES ('4588d76b-028d-4c7d-8104-df0fb2b86c74', 'hmac-generated', 'master', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL);
INSERT INTO public.component VALUES ('b00e4713-8f14-4bfe-ab21-47be857d6d4d', 'aes-generated', 'master', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'master', NULL);
INSERT INTO public.component VALUES ('cd836a6e-c037-4516-a092-c29641fef21e', 'rsa-generated', 'basic', 'rsa-generated', 'org.keycloak.keys.KeyProvider', 'basic', NULL);
INSERT INTO public.component VALUES ('08f89e15-42c3-49a6-a956-d744ebd59e28', 'hmac-generated', 'basic', 'hmac-generated', 'org.keycloak.keys.KeyProvider', 'basic', NULL);
INSERT INTO public.component VALUES ('cd8d3724-d2d2-4b6f-82fb-4a18b4e3a372', 'aes-generated', 'basic', 'aes-generated', 'org.keycloak.keys.KeyProvider', 'basic', NULL);
INSERT INTO public.component VALUES ('101cd6f3-4384-4a10-bb7d-8044884d3a4f', 'Trusted Hosts', 'basic', 'trusted-hosts', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('e184478f-d589-4933-9d38-92844ccfdd3f', 'Consent Required', 'basic', 'consent-required', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('8b34e3ea-9dc1-427e-9117-cfb28675e1a5', 'Full Scope Disabled', 'basic', 'scope', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('7e1020c4-27b3-4a25-a2f6-bdc293eb18f7', 'Max Clients Limit', 'basic', 'max-clients', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('755ed18c-ed5c-4553-8729-86245b0be60c', 'Allowed Protocol Mapper Types', 'basic', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('b0a2f6fb-b850-4ab5-a0d9-188908f3d270', 'Allowed Client Scopes', 'basic', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'anonymous');
INSERT INTO public.component VALUES ('16fe5a04-b94e-40a4-93b2-ec7022104667', 'Allowed Protocol Mapper Types', 'basic', 'allowed-protocol-mappers', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'authenticated');
INSERT INTO public.component VALUES ('4212186d-c35b-4715-8e78-fa0c2ec1aba6', 'Allowed Client Scopes', 'basic', 'allowed-client-templates', 'org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy', 'basic', 'authenticated');


--
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.component_config VALUES ('21fd8665-33a1-4e18-9523-4236db3a8805', '00f9917c-42da-47ee-a10c-89ab11120c4c', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('8a739a48-a742-43d9-8024-3b79c508648c', '00f9917c-42da-47ee-a10c-89ab11120c4c', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('61f558a9-30a8-4e5f-aeed-2fd6bbc94cac', '00f9917c-42da-47ee-a10c-89ab11120c4c', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('480eb3ca-428e-474d-8ba7-7edf36c70153', '00f9917c-42da-47ee-a10c-89ab11120c4c', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('6254a4ef-41ac-4adb-82a7-df4d96555440', '00f9917c-42da-47ee-a10c-89ab11120c4c', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('36129166-51e1-4d7c-81a6-34bfc372cbad', '00f9917c-42da-47ee-a10c-89ab11120c4c', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('b86aa796-11ab-4084-8d12-0108a07b0e54', '00f9917c-42da-47ee-a10c-89ab11120c4c', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('f1c1815d-ad43-470b-98d1-db0c784e58b8', '00f9917c-42da-47ee-a10c-89ab11120c4c', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('9c769092-8fc2-4c6a-8f83-9649f67d9bbc', '1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('51087001-bc4a-4cb9-8203-3bd5e77e8c15', '1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('f9a88346-ada1-4e59-ba06-3b931eaf29ed', '1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('037d9996-3f0d-4cf6-b897-168cc80593bd', '1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('d2000747-24da-4f90-837e-54075184ec0e', '1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('f4d911ac-79fd-4d11-9eec-c55279367b5d', '1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('a25dfbe2-da8a-48c3-a065-a7e631af2e06', '1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('248c0d45-faeb-42d2-9c88-d698ede3aab8', '1eb7f34b-ce32-44bb-99bb-0fbb6ce60c70', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('276fba8d-4d37-4d56-b2a8-5f01bf9926e3', '69f3c7eb-1026-4279-b0f1-f01381653ea2', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('14e86190-bc91-42a0-87e8-65c42ecdd084', 'f0fa1485-ec3e-4e1d-840a-9ed57e69a3f7', 'max-clients', '200');
INSERT INTO public.component_config VALUES ('8e22ce1f-1a88-403f-85e7-ac7a09296c29', 'e76b2376-cfef-451a-aefb-a8a128550cf5', 'host-sending-registration-request-must-match', 'true');
INSERT INTO public.component_config VALUES ('20c4aa5a-5667-42d5-91f0-016c9c6b1e5a', 'e76b2376-cfef-451a-aefb-a8a128550cf5', 'client-uris-must-match', 'true');
INSERT INTO public.component_config VALUES ('937aeb2c-6be7-4bb0-b8e2-015e4dda867b', 'b3f94e9e-c7dd-4109-a24d-9296d3b697af', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('b48c7f72-f275-4bc8-86cd-5337d219f840', '4588d76b-028d-4c7d-8104-df0fb2b86c74', 'priority', '100');
INSERT INTO public.component_config VALUES ('fa09da35-529e-4b44-abe1-2543469c94b6', '4588d76b-028d-4c7d-8104-df0fb2b86c74', 'kid', 'e51a3ce9-374b-4223-8ede-46e1f2d38a88');
INSERT INTO public.component_config VALUES ('d8865d26-9851-4b96-98da-5defdaba8eca', '4588d76b-028d-4c7d-8104-df0fb2b86c74', 'secret', 'm8kkCUsqH-6PScuMtGEYxVYEy3VFDbc_F5Cax65J8Bjd5yasQykU_SuLtx8fnnFsiX9GSWsDrogb6qaq0W_GYQ');
INSERT INTO public.component_config VALUES ('228f275a-0cab-485d-a3c0-6c126360083a', '4588d76b-028d-4c7d-8104-df0fb2b86c74', 'algorithm', 'HS256');
INSERT INTO public.component_config VALUES ('6c488ecd-c447-451e-8216-12235096e5d8', 'd228133c-e51a-41b9-a1a9-73346c3d88c6', 'certificate', 'MIICmzCCAYMCBgF00KRN8jANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjAwOTI3MTczNjAyWhcNMzAwOTI3MTczNzQyWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCG9n2qpC4NM4u7y0M4Isid8uW3I8zVjU/9pJ6WQWpN2EazpQzsan70MuVKr0BWVXvV4Okvwi+sFG+vd3gQOYo2BNLOPQ9mbs9oQo5G5n+/AARrMa2pO9LM5S9qbnjl0cKLABFjAc2pUt8h2ll9wELt5NMstG1lEa1WQxuqJfeGLqR3HftMbv53yj3SpqDOBjoWrboEhue5VkK2hlkmAL7RZWyzFSi0mpdrHfvuugiyVvIZQn8kfQcSYLSLuj07NtKguC0XRw/wy0d1U857by9Q2byDS8Z8Rr2qVQONo66RMNtlwpX/RvlapOlhOXPVC9Cc2D8g+jIh2VrX5CeZaRWvAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAFBvQ3Go8vVZ1WDJwm58NQHT1e1CBYLTIebBwtnYrERP2w1Drat/Tmtphyn2UjjsHVXdPlU+h62/FTuxMYHUtEDusl6leLlQwjScBfqRplIRfcpLvwFYm1UYNG/OfFeiWloUiLG610LPh3fSRADq6RWH19w/np1xCgrWls2mlrLEek21/seB9Z7rqkHoc6sb862kWazBtSIqhJHmXyh5sie6J78TmkDRKFP0pCizQGVNqLgaT7x3XWOnkuNrjQq6baRno47DJuSXdQzKoIqmWLrjXATFpT3A2Xe9GiA34Fxbg2Z47yg41j/b+N/5yYqgsjkWf36dUQV2rRXdyXeGKPE=');
INSERT INTO public.component_config VALUES ('d7500f23-0b1f-4dcb-a6a3-126a5faef7b6', 'd228133c-e51a-41b9-a1a9-73346c3d88c6', 'privateKey', 'MIIEpAIBAAKCAQEAhvZ9qqQuDTOLu8tDOCLInfLltyPM1Y1P/aSelkFqTdhGs6UM7Gp+9DLlSq9AVlV71eDpL8IvrBRvr3d4EDmKNgTSzj0PZm7PaEKORuZ/vwAEazGtqTvSzOUvam545dHCiwARYwHNqVLfIdpZfcBC7eTTLLRtZRGtVkMbqiX3hi6kdx37TG7+d8o90qagzgY6Fq26BIbnuVZCtoZZJgC+0WVssxUotJqXax377roIslbyGUJ/JH0HEmC0i7o9OzbSoLgtF0cP8MtHdVPOe28vUNm8g0vGfEa9qlUDjaOukTDbZcKV/0b5WqTpYTlz1QvQnNg/IPoyIdla1+QnmWkVrwIDAQABAoIBAG2C8TFXiy6XFtlI88BHKTZQ8+kJGZpm0fNkcnJFnjaQOb5nPPdQ6rbH3ZoeXjwvnQ5NM6nXDcu5wW5FqJyxs95lR5Clpytc2tsktkH9osafAvbgFqPtsP0lMrZP8bW54PvdED6gJfsxDXFwtZD+QtC6DkiGFwYds+L9DSOhLxom7REjXJXmjS/qKsav7PV0w2r0EJLvMDEy9f/inohzj1X0k66s3B+5lKKUjX65a1JG0LRwJvAQICpeuzfy19qT6zGPiq0W8Jw4uiosXFIP5VtK1CVD3eP23n5YL6B/jqRSg13mkCB2v0E1zB9irHJrs2VziLTVYLlWL/lqaBdYKFECgYEAumdA9aH6OwQwiZy+dAZEaHbKzKuicd7wWVpMEOijZaJfI45PLU9ksXWi3ttVDAN0US2GlesaZLBPdsZfosggvfUCYO0a8+hLP/td5dLF37UMpCo5c81BRgSDRwN7wSh09eaU27ToClrtaEOQTYTK1JkNWLxLs1p9p40CDw3mT6UCgYEAuVp4EFZXDkTSI+RJYZ85cWwqxhuwJ8l+zcz9Ad9xUWWdsDwUiwEg415B1gPBD04kXThUolAGe7RwyEbSZ+8bLNIEPuOyZyLOnv0SngUtGjcjmxO4gc3bN6J5nuunSBih+rIcfk2IxM8cAUxEKXTjSQOsLRcZNHdQ30QEPUIEz8MCgYEAtGtGU7nQ4ph+hmPBb7m1MstwJUQnOkJHrqSYpXEW3kOYBGk0t611z9IFr+DpY3RgfEYtUyQ46qZAc700SfGcx1/DSp+Ui+oWE7qwOseUoJ+zuZ3o9+3+NNAfZHe5q88FzhC9mh5yzbsOuPFUVcOnMrllUrMGLnXy017HVFzmw8UCgYEAjNkzjW6evsgLS5zpKla9ZvREWMCnjsRuKGNSC39I9Aqc1lQBZFPaMwzoSIIXzdKajYAFyEW5d315iqdOsg4ff2KkOUn7wqXPjz9OS2gxis9Frk1BEtpkcBV2CA6Y0o9tXzzDrDKs8KlVZaMX1Mzu/gfdaXI5BAZ7HP3pnscxMtMCgYAHsGJN522yqm8tG9dxWt3vxslJDGzlC6u7iWf/LEueVmqijtW2do3L/6/HnsAs1K0oRi03K4dx2j86JtgGHT01VI3Kn9rhXCjFHfCXIsh5nQrYBr9KQI2BhFtyiNQLvB3aXv/+fV8oKR3fDeDtbnCH88XjEzpyVWjsj+XPwqWHMQ==');
INSERT INTO public.component_config VALUES ('e20c0cd5-02af-4b3a-ad92-e31bf6214f99', 'd228133c-e51a-41b9-a1a9-73346c3d88c6', 'priority', '100');
INSERT INTO public.component_config VALUES ('6e8fd304-b954-4fea-808c-907d44516340', 'b00e4713-8f14-4bfe-ab21-47be857d6d4d', 'secret', 'Kklrq3OA9zjOZdcJPLJqhQ');
INSERT INTO public.component_config VALUES ('16ddc7a9-7438-4622-a02e-7eed97c281e8', 'b00e4713-8f14-4bfe-ab21-47be857d6d4d', 'kid', 'f1c5f182-d6ad-4deb-8c93-f5575f931688');
INSERT INTO public.component_config VALUES ('659e5c93-74b2-4d06-a4be-4affe3b0bdcc', 'b00e4713-8f14-4bfe-ab21-47be857d6d4d', 'priority', '100');
INSERT INTO public.component_config VALUES ('6d44867c-eaff-439a-949e-c84d5f8e26f2', 'cd836a6e-c037-4516-a092-c29641fef21e', 'privateKey', 'MIIEpAIBAAKCAQEA1MLgM7AuLmDs3RvIebE8UUzRKJmlHWB9lLALeBgQD4mYTPcT9TERu2q1xNjaSjeyMmsJ8M7QUYSm8Tz0u4EvUU/pTheGSIH8oLWmLjVT63hoqnvsPvBYEMaZ8K0NPRfsLlxp021jwoM96M/Mb7R9++QahUyxfQMiKKXN0fFhHT8iEhlW+aTvxUjprJPOmZfRLRQsPMGIFiBPL15E6fXSeH1B8UAihtWH/LUmMkUQMg1wzOl7tkj0wT1jsxk3cdPlbD1WPx5/8T/2DuYViHWR+ucijPAuo2g+7zmmLsNZMdbHtEww8gfRvSIB40050tDxjVIXMqBpqElFao78JOMYWwIDAQABAoIBAQCU6D9abbgkpZmhtsw8v5rjm8vXipFRWjMKWZvtVYoIFdkOJO9G8Czk6u6E8vD0eL6zIs82RsjuBNWCiZMPmH6xfihfi39kR/Wz1O6V8KTnbMJ0b38NHdHFC/q5w6Q8Wf3nBK7cVvc3L/uocac3ly+FmEQnf2HJiOPjZwgCI9pASKQrenXBGCvxAdIIs3kVigze4GVo7ZFfYxYVRffbvEeVmAOYkMQBLbRkupBtd/01F9evNm6cd2Utr4xr7h36NlfNOCsoKMBE+l/f0W8DdLd/tweoA8GjgSOFBoIxcDmcxHLExd94dUngNJ4FUslmgGoAotQE6I6RSkvfeDJ976ChAoGBAPco9zEMGwrsNddCVnabCvkvo5qlPjrwN0wL29v+ahsScmR6j39QL1P1y79kOBTWvs/f6rZm19j+9b7XJPZMAdu/ZT+iOkaVCXkCsHUtIZwRI3u01MRsMo628axEcTnhxVLJw+MJr9pcH7RYVKzIaWGCIlWAX0QM95iamvvbbYQFAoGBANxe8x/9780tS/Ba+7iFjcpMtV9gLNL1WdWSTsnNASY7P28E2meBeQ2ud1ZIxL7qwuR8fPDqxHudutnn+RxVA3ntaHByUYCRLNbe+MwnPtMg5Io05I2mQsD/AaJ9vbvZguRsIAXw+qhLsnTeWZrDZrBuao6NJbCuRKF71Rer7DjfAoGAR7FIUp/SUE7IJ1KExg6fFjztVfRMosf/Ij3mXl/j40psiBzM9v8JW29W1IN7iP/phV7MNHCMd9Ms8Vhyzkap21YfRmAGS2b7wnA3QyX+M8j84+tGNFu2JpOGcpO/zCxjEmqYOYkby1khkSx2E1Bm0PPwhaChAZpJT6i5AAlcMQkCgYEAyUggoVP8OFfrSLqRuNSj0eeGsnrR9k4Lo7tjI4eQSS9MnUa9hlUIEKsObU1CB2++W5wpMpP8qzxCcs4jBvHPnwptnmeMcfYoEorOjQo7o/QjSulM6OS3jDhfcd+P8YiWubTY+xREnnuloIGHLojTvsrboSDjECHcpfLJjDmIJdkCgYBm4k8mEpMXPjaEbTT9hDNfNfDfwENM7ygTJfyV4FR5WqxaydG7vWWR5J9ZHMyZ83F9xv+RP6r6CqH2gZl8sokG8x+nLs+uNaYRZ+2ZQ104ZBMlRQ410k50TXjoh2Zfyuzixah5CDcC4c2ZDhfaSsr4pVKtRjAk6T1NkN9D05RmyA==');
INSERT INTO public.component_config VALUES ('04092288-7db7-4a78-acb4-18788a553927', 'cd836a6e-c037-4516-a092-c29641fef21e', 'certificate', 'MIICmTCCAYECBgF00KSTyDANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAViYXNpYzAeFw0yMDA5MjcxNzM2MjBaFw0zMDA5MjcxNzM4MDBaMBAxDjAMBgNVBAMMBWJhc2ljMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA1MLgM7AuLmDs3RvIebE8UUzRKJmlHWB9lLALeBgQD4mYTPcT9TERu2q1xNjaSjeyMmsJ8M7QUYSm8Tz0u4EvUU/pTheGSIH8oLWmLjVT63hoqnvsPvBYEMaZ8K0NPRfsLlxp021jwoM96M/Mb7R9++QahUyxfQMiKKXN0fFhHT8iEhlW+aTvxUjprJPOmZfRLRQsPMGIFiBPL15E6fXSeH1B8UAihtWH/LUmMkUQMg1wzOl7tkj0wT1jsxk3cdPlbD1WPx5/8T/2DuYViHWR+ucijPAuo2g+7zmmLsNZMdbHtEww8gfRvSIB40050tDxjVIXMqBpqElFao78JOMYWwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQCke9A5my0+a5stFawdyM8p+vazknQ57SzlgqPCiCqJ8XArP+50Daxuq7Bf/9gNut2+dTw6mvfkP5COM232ePSrC1JHQ0CdRRmJ2jdnBI0eOC2GAKkKOEhJttoS69ftHvlG0NkHwySoqZb0kVO8XS7VgzBc0X8+pumbcoYbrRaBYbto313Deh7ZD5ibejJdyTa9XVfVoMIx8TKnsUL8duktlm6roVdqfoIrRSiL/rJdM/IM7AujcAEtNTN7NdT7O5+2JxD9UBBOtufoQm3a4sZk6qJfQowEPJPEUE98b1zlBVX8Fu9Iltww8RY8GAyxyxabtUFiFGjpPfxeLC8KRqCG');
INSERT INTO public.component_config VALUES ('15eb28e1-10e3-4c91-88f7-ef04ea908bd0', 'cd836a6e-c037-4516-a092-c29641fef21e', 'priority', '100');
INSERT INTO public.component_config VALUES ('94ab6dbd-a459-4ade-946e-804228774664', '08f89e15-42c3-49a6-a956-d744ebd59e28', 'kid', 'd4d597ab-5f62-4f3a-92ae-de5000464688');
INSERT INTO public.component_config VALUES ('17d24ee0-82c4-4c3a-ad9f-f69c2ac5a377', '08f89e15-42c3-49a6-a956-d744ebd59e28', 'secret', 'hRSH0ufU_--Rkr5e_fgavbhguXfr3_-ENnK9CG3n5idVdHhad26ie8Jfpek8Q_H5U4qeQ5kPoDC5iCu6JFx1Yg');
INSERT INTO public.component_config VALUES ('da14bea2-d9df-4430-9a48-595b35ed2f4c', '08f89e15-42c3-49a6-a956-d744ebd59e28', 'algorithm', 'HS256');
INSERT INTO public.component_config VALUES ('e941e0d7-179f-484c-80af-f352f250e128', '08f89e15-42c3-49a6-a956-d744ebd59e28', 'priority', '100');
INSERT INTO public.component_config VALUES ('b8028164-87fc-4447-99af-1b6d70791b23', 'cd8d3724-d2d2-4b6f-82fb-4a18b4e3a372', 'kid', '0e751de7-0b91-4def-8b74-446de4acf721');
INSERT INTO public.component_config VALUES ('a43b8113-c572-4027-a86e-be9650150f80', 'cd8d3724-d2d2-4b6f-82fb-4a18b4e3a372', 'secret', 'h4TpUzoN9Eb3ZR3fMa3Stg');
INSERT INTO public.component_config VALUES ('e30d8af4-cb53-431c-a2db-b8d0ec4df451', 'cd8d3724-d2d2-4b6f-82fb-4a18b4e3a372', 'priority', '100');
INSERT INTO public.component_config VALUES ('233eabb6-ccb8-4cde-822e-31ff98134711', '101cd6f3-4384-4a10-bb7d-8044884d3a4f', 'client-uris-must-match', 'true');
INSERT INTO public.component_config VALUES ('a10ad7d6-1d27-40c0-86f2-166b48cc547a', '101cd6f3-4384-4a10-bb7d-8044884d3a4f', 'host-sending-registration-request-must-match', 'true');
INSERT INTO public.component_config VALUES ('51cd125d-f095-4099-b953-66cfd3823a4e', '755ed18c-ed5c-4553-8729-86245b0be60c', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('c1b0ef57-6ea1-4de5-9a34-c065de43200d', '755ed18c-ed5c-4553-8729-86245b0be60c', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('5c3ce203-7158-4f0f-9433-9bce09655ee5', '755ed18c-ed5c-4553-8729-86245b0be60c', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('f92e469a-b0c4-41c7-b491-793c96a90076', '755ed18c-ed5c-4553-8729-86245b0be60c', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('54335d23-c5e9-43d8-ab16-57a8dd1045d9', '755ed18c-ed5c-4553-8729-86245b0be60c', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('7e6583ce-35ea-4eae-860e-877d5b7f3bc3', '755ed18c-ed5c-4553-8729-86245b0be60c', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('12b4174b-725c-4f47-b455-fdb8d868cd5e', '755ed18c-ed5c-4553-8729-86245b0be60c', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('bd3d2bc4-6b67-4a7c-9b1c-3bead07dc9ab', '755ed18c-ed5c-4553-8729-86245b0be60c', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('c2251d30-d6d9-4b78-8679-3b875c336f7f', '4212186d-c35b-4715-8e78-fa0c2ec1aba6', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('e0d42a77-38cd-4650-9bd6-97000fdea2e8', 'b0a2f6fb-b850-4ab5-a0d9-188908f3d270', 'allow-default-scopes', 'true');
INSERT INTO public.component_config VALUES ('09039dac-f827-4b0a-8845-3dc01e577ae0', '16fe5a04-b94e-40a4-93b2-ec7022104667', 'allowed-protocol-mapper-types', 'saml-user-property-mapper');
INSERT INTO public.component_config VALUES ('b1cca269-bce7-4b72-89d0-1a26f8ace444', '16fe5a04-b94e-40a4-93b2-ec7022104667', 'allowed-protocol-mapper-types', 'oidc-full-name-mapper');
INSERT INTO public.component_config VALUES ('3135ee4d-30cb-48b2-ad4c-8c4fef5b0424', '16fe5a04-b94e-40a4-93b2-ec7022104667', 'allowed-protocol-mapper-types', 'oidc-address-mapper');
INSERT INTO public.component_config VALUES ('b210f35c-801e-4d7e-b035-e69abcfd1e2d', '16fe5a04-b94e-40a4-93b2-ec7022104667', 'allowed-protocol-mapper-types', 'oidc-sha256-pairwise-sub-mapper');
INSERT INTO public.component_config VALUES ('f0a565ae-6b66-43d4-8aaa-68eeb99c2ccf', '16fe5a04-b94e-40a4-93b2-ec7022104667', 'allowed-protocol-mapper-types', 'saml-user-attribute-mapper');
INSERT INTO public.component_config VALUES ('5562e0aa-c3ed-45e4-a698-ffe1e8bfab2a', '16fe5a04-b94e-40a4-93b2-ec7022104667', 'allowed-protocol-mapper-types', 'saml-role-list-mapper');
INSERT INTO public.component_config VALUES ('cd2a5752-56e7-4a69-b8d9-cdcaa56ab6d3', '16fe5a04-b94e-40a4-93b2-ec7022104667', 'allowed-protocol-mapper-types', 'oidc-usermodel-attribute-mapper');
INSERT INTO public.component_config VALUES ('7561a0a5-91ec-4708-8092-d39b20644c5b', '16fe5a04-b94e-40a4-93b2-ec7022104667', 'allowed-protocol-mapper-types', 'oidc-usermodel-property-mapper');
INSERT INTO public.component_config VALUES ('3421d0e4-38b1-49a9-a2de-a08c635eb300', '7e1020c4-27b3-4a25-a2f6-bdc293eb18f7', 'max-clients', '200');


--
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'c08a8ac3-6cd5-4585-bced-a5eb8bbf0863');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'bf564064-6e65-4a86-9d2f-ca6df670b27f');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'cf570257-6521-498a-9789-0f69cffe6a37');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '17f17dc4-c0b8-4764-826b-37ac33610a60');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'f54ad112-a040-4c00-bb16-7e2ab71e6755');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '4d4c8c51-d239-41d3-a9c0-ebe79446b259');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'f5becc00-b31a-4cad-b3b5-19be47c6fa63');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'b0242685-a09c-49a7-9580-3d082c5ca14a');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '73912f23-747c-4bb3-8686-101610b9ac06');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '97dfef7d-0118-4678-9007-f743dabca4ca');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'd5b391c8-07a5-43e2-addf-fc9783c703ba');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '83adeda0-eb01-453f-b179-e6ca14a854de');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '83788975-f192-4199-9cf1-74a60a183bbe');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'b4ab2a6a-cfb7-4f15-826f-e29389dc9c5c');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'a6097ee5-ac78-4fa0-908d-0f6361160569');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'c56ec07b-c6ae-441e-af73-3a1dd6f410c5');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '6d38c6e7-9471-494c-9554-f4d8df8718d7');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '5295afd6-8fe8-4bb8-a9a7-c57ee516229f');
INSERT INTO public.composite_role VALUES ('17f17dc4-c0b8-4764-826b-37ac33610a60', 'a6097ee5-ac78-4fa0-908d-0f6361160569');
INSERT INTO public.composite_role VALUES ('17f17dc4-c0b8-4764-826b-37ac33610a60', '5295afd6-8fe8-4bb8-a9a7-c57ee516229f');
INSERT INTO public.composite_role VALUES ('f54ad112-a040-4c00-bb16-7e2ab71e6755', 'c56ec07b-c6ae-441e-af73-3a1dd6f410c5');
INSERT INTO public.composite_role VALUES ('c5e44a37-f2fc-4995-95de-3945086ae03d', 'ab0c3b22-63a3-4d4e-b007-ccc4cbac87e4');
INSERT INTO public.composite_role VALUES ('d4717dcb-05a2-4a80-8ae1-ca0e7956310a', '03833f35-8ddb-42eb-b872-3fd3437143f7');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '7c2372f3-b1df-434b-ba43-73af031e7b8d');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'b050b926-2e1b-4a2c-bf97-b6104f8508b4');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'ddd144b3-f8bc-449e-83b8-709450b1b294');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'c879a0fa-0191-46b7-be39-94c8cf6e3b0c');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '01bb52e0-1ac4-48d5-a8ef-67f62f14b3c6');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '9d4b69c9-5562-46fb-8dd4-532e05c97d4d');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '330cc4fb-a6d3-4e1e-a78d-06509db0dc6f');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '8121e153-93ac-4839-888f-c24348a03d88');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '35733be0-cdf2-4a87-9f56-36120d4f3cbc');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'f50d6937-6c8a-4e84-a324-ecc7e45bd8d8');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'f035450b-3d7d-4126-9df1-3fe7c8762792');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '60a98f2f-b3e1-4701-b309-2a4418179446');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '2884d5dd-12a5-453c-9694-39700b62a1bb');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '3e724ee0-f0e6-4dce-ba48-dfc38bace4ee');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '82146159-01eb-435f-bcff-ade90907f5b7');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '276ea271-7d49-4299-8702-bf3e0f97eff0');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '3dd0e36e-2181-4611-a4b5-bfb97d92e504');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'baac6913-ba6c-4a93-8d05-60ea736c404d');
INSERT INTO public.composite_role VALUES ('c879a0fa-0191-46b7-be39-94c8cf6e3b0c', 'baac6913-ba6c-4a93-8d05-60ea736c404d');
INSERT INTO public.composite_role VALUES ('c879a0fa-0191-46b7-be39-94c8cf6e3b0c', '82146159-01eb-435f-bcff-ade90907f5b7');
INSERT INTO public.composite_role VALUES ('01bb52e0-1ac4-48d5-a8ef-67f62f14b3c6', '276ea271-7d49-4299-8702-bf3e0f97eff0');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', 'e1591e0a-0277-4810-9419-eefbbd369ab4');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '2ba4016f-1ea6-412c-a6b9-73e99d09cfc5');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '8ee4ea04-c07d-4041-91f3-f1b8e3aa8fea');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', 'b31c2244-9896-4f49-ba38-35a295f6a8d6');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '509c2d49-1791-438f-b48d-10ddff7808b0');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', 'a563cc0d-c301-4476-9940-8c7fd392613f');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '55f240c1-d965-4b5d-ae86-754853dd98aa');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '9bfda400-8601-4324-a948-e52db6b65815');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', 'da729bde-1d4f-4ef2-b882-73fe3812377a');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '9a4d3cd8-898c-4287-9b2b-fc22d2626b9a');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '5bf506ec-c947-4616-a172-cfc96fa9dc10');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '72433957-4ac6-4e63-bf91-294be974322e');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', 'ecf25ff2-9a25-49e3-90a7-7355dc7a0bbd');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '6db1e1af-8591-4439-8246-ccbacd8adb41');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', 'a5ae27ea-7587-4d56-9880-7be6a7648e91');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', 'd39954b7-8267-4a25-a24a-9b12db93459e');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', 'e5bb1407-7fd2-48d0-887a-d9b439a84981');
INSERT INTO public.composite_role VALUES ('8ee4ea04-c07d-4041-91f3-f1b8e3aa8fea', 'e5bb1407-7fd2-48d0-887a-d9b439a84981');
INSERT INTO public.composite_role VALUES ('8ee4ea04-c07d-4041-91f3-f1b8e3aa8fea', '6db1e1af-8591-4439-8246-ccbacd8adb41');
INSERT INTO public.composite_role VALUES ('b31c2244-9896-4f49-ba38-35a295f6a8d6', 'a5ae27ea-7587-4d56-9880-7be6a7648e91');
INSERT INTO public.composite_role VALUES ('54587202-8fa1-40b1-93e2-6220640c6b2a', '65605b0f-b85c-497a-aca9-b8d54701791d');
INSERT INTO public.composite_role VALUES ('725f74dc-c69f-4c96-918a-0c9f68fd6cd0', 'd7f55cc1-a0cb-4160-a41b-9530f5efee8d');
INSERT INTO public.composite_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '5dd4d6fe-54e2-417d-a6de-2add760d9426');
INSERT INTO public.composite_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '82505b37-1eee-4e5c-810b-e5841e5782f6');


--
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.credential VALUES ('65aed138-e515-4f61-8f21-abd9787091d7', NULL, 'password', '870cec34-13cc-4487-ae22-c7abc6312a2e', 1601228263721, NULL, '{"value":"I0b/sp4yaRDy37Io/Dw1KQm6zY90I5RNak8zOPhJVx2j9Lb/hYEnekt2pvtykJBfO0BwmuR7rIjGjgXVHFm03g==","salt":"VD1bZ2LkB1r3u7ePaI1mSg=="}', '{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}', 10);
INSERT INTO public.credential VALUES ('9d63e835-5f2e-43b8-86d7-0ed313666163', NULL, 'password', '20b64eb4-5d8a-4081-8d10-889829c2e836', 1601381590317, NULL, '{"value":"DOXqdg9bavc6llrdXofxsHQ6sBlt/eKk/QsTE6EL7MvgoWNjIQ3aweI8+SCiOkvuDzxkDswGJGxH4cjK4v8Ocg==","salt":"7QFwRT6P1/ItjRm0EuujZQ=="}', '{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}', 10);
INSERT INTO public.credential VALUES ('662fabf4-7f87-4329-90f6-44d9bb773566', NULL, 'password', '7d47f533-4aae-4d6d-9700-b64f5d2ac6f7', 1601381891554, NULL, '{"value":"qqvxzAQoiutV86BwcMYg7iDUmWzjBP0cPY3DneDi3NRa5HOTxOLfn2B2oFwUX5VelrRrl8OaOg2TjWNfhx2r7Q==","salt":"BFYn8Pu7wo6m7qlwpiifwQ=="}', '{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}', 10);


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.databasechangelog VALUES ('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.0.0.Final.xml', '2020-09-27 17:37:34.244866', 1, 'EXECUTED', '7:4e70412f24a3f382c82183742ec79317', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.0.0.Final-KEYCLOAK-5461', 'sthorger@redhat.com', 'META-INF/db2-jpa-changelog-1.0.0.Final.xml', '2020-09-27 17:37:34.268357', 2, 'MARK_RAN', '7:cb16724583e9675711801c6875114f28', 'createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.1.0.Beta1', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Beta1.xml', '2020-09-27 17:37:34.326057', 3, 'EXECUTED', '7:0310eb8ba07cec616460794d42ade0fa', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.1.0.Final', 'sthorger@redhat.com', 'META-INF/jpa-changelog-1.1.0.Final.xml', '2020-09-27 17:37:34.333696', 4, 'EXECUTED', '7:5d25857e708c3233ef4439df1f93f012', 'renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/jpa-changelog-1.2.0.Beta1.xml', '2020-09-27 17:37:34.472231', 5, 'EXECUTED', '7:c7a54a1041d58eb3817a4a883b4d4e84', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Beta1', 'psilva@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.Beta1.xml', '2020-09-27 17:37:34.4798', 6, 'MARK_RAN', '7:2e01012df20974c1c2a605ef8afe25b7', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.2.0.CR1.xml', '2020-09-27 17:37:34.664171', 7, 'EXECUTED', '7:0f08df48468428e0f30ee59a8ec01a41', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.2.0.RC1', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.2.0.CR1.xml', '2020-09-27 17:37:34.68244', 8, 'MARK_RAN', '7:a77ea2ad226b345e7d689d366f185c8c', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.2.0.Final', 'keycloak', 'META-INF/jpa-changelog-1.2.0.Final.xml', '2020-09-27 17:37:34.690297', 9, 'EXECUTED', '7:a3377a2059aefbf3b90ebb4c4cc8e2ab', 'update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.3.0.xml', '2020-09-27 17:37:35.264613', 10, 'EXECUTED', '7:04c1dbedc2aa3e9756d1a1668e003451', 'delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.4.0.xml', '2020-09-27 17:37:35.380891', 11, 'EXECUTED', '7:36ef39ed560ad07062d956db861042ba', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.4.0', 'bburke@redhat.com', 'META-INF/db2-jpa-changelog-1.4.0.xml', '2020-09-27 17:37:35.384699', 12, 'MARK_RAN', '7:d909180b2530479a716d3f9c9eaea3d7', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.5.0.xml', '2020-09-27 17:37:35.514079', 13, 'EXECUTED', '7:cf12b04b79bea5152f165eb41f3955f6', 'delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from15', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2020-09-27 17:37:35.581637', 14, 'EXECUTED', '7:7e32c8f05c755e8675764e7d5f514509', 'addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from16-pre', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2020-09-27 17:37:35.585029', 15, 'MARK_RAN', '7:980ba23cc0ec39cab731ce903dd01291', 'delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.6.1_from16', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2020-09-27 17:37:35.588306', 16, 'MARK_RAN', '7:2fa220758991285312eb84f3b4ff5336', 'dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.6.1', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.6.1.xml', '2020-09-27 17:37:35.591453', 17, 'EXECUTED', '7:d41d8cd98f00b204e9800998ecf8427e', 'empty', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.7.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-1.7.0.xml', '2020-09-27 17:37:35.721084', 18, 'EXECUTED', '7:91ace540896df890cc00a0490ee52bbc', 'createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.8.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.8.0.xml', '2020-09-27 17:37:35.802553', 19, 'EXECUTED', '7:c31d1646dfa2618a9335c00e07f89f24', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.8.0-2', 'keycloak', 'META-INF/jpa-changelog-1.8.0.xml', '2020-09-27 17:37:35.80931', 20, 'EXECUTED', '7:df8bc21027a4f7cbbb01f6344e89ce07', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part1', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-09-27 17:37:36.337674', 45, 'EXECUTED', '7:6a48ce645a3525488a90fbf76adf3bb3', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.8.0', 'mposolda@redhat.com', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2020-09-27 17:37:35.812953', 21, 'MARK_RAN', '7:f987971fe6b37d963bc95fee2b27f8df', 'addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.8.0-2', 'keycloak', 'META-INF/db2-jpa-changelog-1.8.0.xml', '2020-09-27 17:37:35.816203', 22, 'MARK_RAN', '7:df8bc21027a4f7cbbb01f6344e89ce07', 'dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.9.0', 'mposolda@redhat.com', 'META-INF/jpa-changelog-1.9.0.xml', '2020-09-27 17:37:35.848182', 23, 'EXECUTED', '7:ed2dc7f799d19ac452cbcda56c929e47', 'update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.9.1', 'keycloak', 'META-INF/jpa-changelog-1.9.1.xml', '2020-09-27 17:37:35.854082', 24, 'EXECUTED', '7:80b5db88a5dda36ece5f235be8757615', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.9.1', 'keycloak', 'META-INF/db2-jpa-changelog-1.9.1.xml', '2020-09-27 17:37:35.856434', 25, 'MARK_RAN', '7:1437310ed1305a9b93f8848f301726ce', 'modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('1.9.2', 'keycloak', 'META-INF/jpa-changelog-1.9.2.xml', '2020-09-27 17:37:35.88466', 26, 'EXECUTED', '7:b82ffb34850fa0836be16deefc6a87c4', 'createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-2.0.0', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.0.0.xml', '2020-09-27 17:37:35.954458', 27, 'EXECUTED', '7:9cc98082921330d8d9266decdd4bd658', 'createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-2.5.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-2.5.1.xml', '2020-09-27 17:37:35.959963', 28, 'EXECUTED', '7:03d64aeed9cb52b969bd30a7ac0db57e', 'update tableName=RESOURCE_SERVER_POLICY', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.1.0-KEYCLOAK-5461', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.1.0.xml', '2020-09-27 17:37:36.016027', 29, 'EXECUTED', '7:f1f9fd8710399d725b780f463c6b21cd', 'createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.2.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.2.0.xml', '2020-09-27 17:37:36.035267', 30, 'EXECUTED', '7:53188c3eb1107546e6f765835705b6c1', 'addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.3.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.3.0.xml', '2020-09-27 17:37:36.055112', 31, 'EXECUTED', '7:d6e6f3bc57a0c5586737d1351725d4d4', 'createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.4.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.4.0.xml', '2020-09-27 17:37:36.061043', 32, 'EXECUTED', '7:454d604fbd755d9df3fd9c6329043aa5', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.5.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2020-09-27 17:37:36.068345', 33, 'EXECUTED', '7:57e98a3077e29caf562f7dbf80c72600', 'customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unicode-oracle', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2020-09-27 17:37:36.07126', 34, 'MARK_RAN', '7:e4c7e8f2256210aee71ddc42f538b57a', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unicode-other-dbs', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2020-09-27 17:37:36.114485', 35, 'EXECUTED', '7:09a43c97e49bc626460480aa1379b522', 'modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.5.0-duplicate-email-support', 'slawomir@dabek.name', 'META-INF/jpa-changelog-2.5.0.xml', '2020-09-27 17:37:36.139214', 36, 'EXECUTED', '7:26bfc7c74fefa9126f2ce702fb775553', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.5.0-unique-group-names', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-2.5.0.xml', '2020-09-27 17:37:36.146536', 37, 'EXECUTED', '7:a161e2ae671a9020fff61e996a207377', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('2.5.1', 'bburke@redhat.com', 'META-INF/jpa-changelog-2.5.1.xml', '2020-09-27 17:37:36.154211', 38, 'EXECUTED', '7:37fc1781855ac5388c494f1442b3f717', 'addColumn tableName=FED_USER_CONSENT', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.0.0', 'bburke@redhat.com', 'META-INF/jpa-changelog-3.0.0.xml', '2020-09-27 17:37:36.174899', 39, 'EXECUTED', '7:13a27db0dae6049541136adad7261d27', 'addColumn tableName=IDENTITY_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2020-09-27 17:37:36.177294', 40, 'MARK_RAN', '7:550300617e3b59e8af3a6294df8248a3', 'addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix-with-keycloak-5416', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2020-09-27 17:37:36.179594', 41, 'MARK_RAN', '7:e3a9482b8931481dc2772a5c07c44f17', 'dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fix-offline-sessions', 'hmlnarik', 'META-INF/jpa-changelog-3.2.0.xml', '2020-09-27 17:37:36.185492', 42, 'EXECUTED', '7:72b07d85a2677cb257edb02b408f332d', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.2.0-fixed', 'keycloak', 'META-INF/jpa-changelog-3.2.0.xml', '2020-09-27 17:37:36.318272', 43, 'EXECUTED', '7:a72a7858967bd414835d19e04d880312', 'addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.3.0', 'keycloak', 'META-INF/jpa-changelog-3.3.0.xml', '2020-09-27 17:37:36.331831', 44, 'EXECUTED', '7:94edff7cf9ce179e7e85f0cd78a3cf2c', 'addColumn tableName=USER_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-09-27 17:37:36.344923', 46, 'EXECUTED', '7:e64b5dcea7db06077c6e57d3b9e5ca14', 'customChange', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-09-27 17:37:36.347392', 47, 'MARK_RAN', '7:fd8cf02498f8b1e72496a20afc75178c', 'dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-09-27 17:37:36.389007', 48, 'EXECUTED', '7:542794f25aa2b1fbabb7e577d6646319', 'addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authn-3.4.0.CR1-refresh-token-max-reuse', 'glavoie@gmail.com', 'META-INF/jpa-changelog-authz-3.4.0.CR1.xml', '2020-09-27 17:37:36.404817', 49, 'EXECUTED', '7:edad604c882df12f74941dac3cc6d650', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.4.0', 'keycloak', 'META-INF/jpa-changelog-3.4.0.xml', '2020-09-27 17:37:36.442922', 50, 'EXECUTED', '7:0f88b78b7b46480eb92690cbf5e44900', 'addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.4.0-KEYCLOAK-5230', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-3.4.0.xml', '2020-09-27 17:37:36.466611', 51, 'EXECUTED', '7:d560e43982611d936457c327f872dd59', 'createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.4.1', 'psilva@redhat.com', 'META-INF/jpa-changelog-3.4.1.xml', '2020-09-27 17:37:36.471053', 52, 'EXECUTED', '7:c155566c42b4d14ef07059ec3b3bbd8e', 'modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.4.2', 'keycloak', 'META-INF/jpa-changelog-3.4.2.xml', '2020-09-27 17:37:36.47495', 53, 'EXECUTED', '7:b40376581f12d70f3c89ba8ddf5b7dea', 'update tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('3.4.2-KEYCLOAK-5172', 'mkanis@redhat.com', 'META-INF/jpa-changelog-3.4.2.xml', '2020-09-27 17:37:36.47867', 54, 'EXECUTED', '7:a1132cc395f7b95b3646146c2e38f168', 'update tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-6335', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2020-09-27 17:37:36.485596', 55, 'EXECUTED', '7:d8dc5d89c789105cfa7ca0e82cba60af', 'createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.0.0-CLEANUP-UNUSED-TABLE', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2020-09-27 17:37:36.491375', 56, 'EXECUTED', '7:7822e0165097182e8f653c35517656a3', 'dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-6228', 'bburke@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2020-09-27 17:37:36.537293', 57, 'EXECUTED', '7:c6538c29b9c9a08f9e9ea2de5c2b6375', 'dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.0.0-KEYCLOAK-5579-fixed', 'mposolda@redhat.com', 'META-INF/jpa-changelog-4.0.0.xml', '2020-09-27 17:37:36.654412', 58, 'EXECUTED', '7:6d4893e36de22369cf73bcb051ded875', 'dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-4.0.0.CR1', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.CR1.xml', '2020-09-27 17:37:36.695235', 59, 'EXECUTED', '7:57960fc0b0f0dd0563ea6f8b2e4a1707', 'createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-4.0.0.Beta3', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-4.0.0.Beta3.xml', '2020-09-27 17:37:36.703342', 60, 'EXECUTED', '7:2b4b8bff39944c7097977cc18dbceb3b', 'addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-4.2.0.Final', 'mhajas@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2020-09-27 17:37:36.715201', 61, 'EXECUTED', '7:2aa42a964c59cd5b8ca9822340ba33a8', 'createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-4.2.0.Final-KEYCLOAK-9944', 'hmlnarik@redhat.com', 'META-INF/jpa-changelog-authz-4.2.0.Final.xml', '2020-09-27 17:37:36.732834', 62, 'EXECUTED', '7:9ac9e58545479929ba23f4a3087a0346', 'addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.2.0-KEYCLOAK-6313', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.2.0.xml', '2020-09-27 17:37:36.737258', 63, 'EXECUTED', '7:14d407c35bc4fe1976867756bcea0c36', 'addColumn tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.3.0-KEYCLOAK-7984', 'wadahiro@gmail.com', 'META-INF/jpa-changelog-4.3.0.xml', '2020-09-27 17:37:36.743245', 64, 'EXECUTED', '7:241a8030c748c8548e346adee548fa93', 'update tableName=REQUIRED_ACTION_PROVIDER', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-7950', 'psilva@redhat.com', 'META-INF/jpa-changelog-4.6.0.xml', '2020-09-27 17:37:36.746873', 65, 'EXECUTED', '7:7d3182f65a34fcc61e8d23def037dc3f', 'update tableName=RESOURCE_SERVER_RESOURCE', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-8377', 'keycloak', 'META-INF/jpa-changelog-4.6.0.xml', '2020-09-27 17:37:36.763824', 66, 'EXECUTED', '7:b30039e00a0b9715d430d1b0636728fa', 'createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.6.0-KEYCLOAK-8555', 'gideonray@gmail.com', 'META-INF/jpa-changelog-4.6.0.xml', '2020-09-27 17:37:36.773508', 67, 'EXECUTED', '7:3797315ca61d531780f8e6f82f258159', 'createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.7.0-KEYCLOAK-1267', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.7.0.xml', '2020-09-27 17:37:36.796647', 68, 'EXECUTED', '7:c7aa4c8d9573500c2d347c1941ff0301', 'addColumn tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.7.0-KEYCLOAK-7275', 'keycloak', 'META-INF/jpa-changelog-4.7.0.xml', '2020-09-27 17:37:36.813517', 69, 'EXECUTED', '7:b207faee394fc074a442ecd42185a5dd', 'renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('4.8.0-KEYCLOAK-8835', 'sguilhen@redhat.com', 'META-INF/jpa-changelog-4.8.0.xml', '2020-09-27 17:37:36.819987', 70, 'EXECUTED', '7:ab9a9762faaba4ddfa35514b212c4922', 'addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('authz-7.0.0-KEYCLOAK-10443', 'psilva@redhat.com', 'META-INF/jpa-changelog-authz-7.0.0.xml', '2020-09-27 17:37:36.826257', 71, 'EXECUTED', '7:b9710f74515a6ccb51b72dc0d19df8c4', 'addColumn tableName=RESOURCE_SERVER', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('8.0.0-adding-credential-columns', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-09-27 17:37:36.834957', 72, 'EXECUTED', '7:ec9707ae4d4f0b7452fee20128083879', 'addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('8.0.0-updating-credential-data-not-oracle', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-09-27 17:37:36.843677', 73, 'EXECUTED', '7:03b3f4b264c3c68ba082250a80b74216', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('8.0.0-updating-credential-data-oracle', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-09-27 17:37:36.846209', 74, 'MARK_RAN', '7:64c5728f5ca1f5aa4392217701c4fe23', 'update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('8.0.0-credential-cleanup-fixed', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-09-27 17:37:36.870964', 75, 'EXECUTED', '7:b48da8c11a3d83ddd6b7d0c8c2219345', 'dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('8.0.0-resource-tag-support', 'keycloak', 'META-INF/jpa-changelog-8.0.0.xml', '2020-09-27 17:37:36.890674', 76, 'EXECUTED', '7:a73379915c23bfad3e8f5c6d5c0aa4bd', 'addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.0-always-display-client', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2020-09-27 17:37:36.902393', 77, 'EXECUTED', '7:39e0073779aba192646291aa2332493d', 'addColumn tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.0-drop-constraints-for-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2020-09-27 17:37:36.904751', 78, 'MARK_RAN', '7:81f87368f00450799b4bf42ea0b3ec34', 'dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.0-increase-column-size-federated-fk', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2020-09-27 17:37:36.936827', 79, 'EXECUTED', '7:20b37422abb9fb6571c618148f013a15', 'modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.0-recreate-constraints-after-column-increase', 'keycloak', 'META-INF/jpa-changelog-9.0.0.xml', '2020-09-27 17:37:36.940213', 80, 'MARK_RAN', '7:1970bb6cfb5ee800736b95ad3fb3c78a', 'addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.1-add-index-to-client.client_id', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-09-27 17:37:36.946994', 81, 'EXECUTED', '7:45d9b25fc3b455d522d8dcc10a0f4c80', 'createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-drop-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-09-27 17:37:36.96275', 82, 'MARK_RAN', '7:890ae73712bc187a66c2813a724d037f', 'dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-add-not-null-constraint', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-09-27 17:37:36.968929', 83, 'EXECUTED', '7:0a211980d27fafe3ff50d19a3a29b538', 'addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.1-KEYCLOAK-12579-recreate-constraints', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-09-27 17:37:36.972684', 84, 'MARK_RAN', '7:a161e2ae671a9020fff61e996a207377', 'addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP', '', NULL, '3.5.4', NULL, NULL, '1228253783');
INSERT INTO public.databasechangelog VALUES ('9.0.1-add-index-to-events', 'keycloak', 'META-INF/jpa-changelog-9.0.1.xml', '2020-09-27 17:37:36.978268', 85, 'EXECUTED', '7:01c49302201bdf815b0a18d1f98a55dc', 'createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY', '', NULL, '3.5.4', NULL, NULL, '1228253783');


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.databasechangeloglock VALUES (1, false, NULL, NULL);
INSERT INTO public.databasechangeloglock VALUES (1000, false, NULL, NULL);
INSERT INTO public.databasechangeloglock VALUES (1001, false, NULL, NULL);


--
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.default_client_scope VALUES ('master', 'f56078ed-15de-4dac-942f-3b6d85db3f69', false);
INSERT INTO public.default_client_scope VALUES ('master', '6839625d-86db-4462-98c4-43ca2ca3092b', true);
INSERT INTO public.default_client_scope VALUES ('master', '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e', true);
INSERT INTO public.default_client_scope VALUES ('master', 'c9b09700-bfb8-4672-a555-2072badb4817', true);
INSERT INTO public.default_client_scope VALUES ('master', 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17', false);
INSERT INTO public.default_client_scope VALUES ('master', '26ad9620-ccea-431f-85a7-d274cecd2535', false);
INSERT INTO public.default_client_scope VALUES ('master', '46cacc2d-a427-47a7-a1fa-95e73bcb81bd', true);
INSERT INTO public.default_client_scope VALUES ('master', 'b32480dc-1f94-4278-8b18-e79992c1fae3', true);
INSERT INTO public.default_client_scope VALUES ('master', 'db28999e-5228-43cc-aee8-455f04a537fc', false);
INSERT INTO public.default_client_scope VALUES ('basic', '9be0e58b-a5b6-41cf-ae58-e48f098e6c2f', false);
INSERT INTO public.default_client_scope VALUES ('basic', '6af32e54-3a35-4ebe-9680-18e2f32bb5cc', true);
INSERT INTO public.default_client_scope VALUES ('basic', 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e', true);
INSERT INTO public.default_client_scope VALUES ('basic', '9979c480-91c1-4d97-a82b-95b9efac7d45', true);
INSERT INTO public.default_client_scope VALUES ('basic', '7620c3e2-b5f9-4035-adce-6f13e1392077', false);
INSERT INTO public.default_client_scope VALUES ('basic', 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a', false);
INSERT INTO public.default_client_scope VALUES ('basic', 'd2002b47-b70a-4da3-8587-0c90fd9a4239', true);
INSERT INTO public.default_client_scope VALUES ('basic', '0457d93b-e68f-44aa-badd-24e6d0636ff1', true);
INSERT INTO public.default_client_scope VALUES ('basic', '6afec045-372a-4514-9b9b-a0b64dc2c06f', false);


--
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.keycloak_role VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', 'master', false, '${role_admin}', 'admin', 'master', NULL, 'master');
INSERT INTO public.keycloak_role VALUES ('c08a8ac3-6cd5-4585-bced-a5eb8bbf0863', 'master', false, '${role_create-realm}', 'create-realm', 'master', NULL, 'master');
INSERT INTO public.keycloak_role VALUES ('bf564064-6e65-4a86-9d2f-ca6df670b27f', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_create-client}', 'create-client', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('cf570257-6521-498a-9789-0f69cffe6a37', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_view-realm}', 'view-realm', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('17f17dc4-c0b8-4764-826b-37ac33610a60', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_view-users}', 'view-users', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('f54ad112-a040-4c00-bb16-7e2ab71e6755', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_view-clients}', 'view-clients', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('4d4c8c51-d239-41d3-a9c0-ebe79446b259', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_view-events}', 'view-events', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('f5becc00-b31a-4cad-b3b5-19be47c6fa63', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_view-identity-providers}', 'view-identity-providers', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('b0242685-a09c-49a7-9580-3d082c5ca14a', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_view-authorization}', 'view-authorization', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('73912f23-747c-4bb3-8686-101610b9ac06', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_manage-realm}', 'manage-realm', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('97dfef7d-0118-4678-9007-f743dabca4ca', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_manage-users}', 'manage-users', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('d5b391c8-07a5-43e2-addf-fc9783c703ba', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_manage-clients}', 'manage-clients', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('83adeda0-eb01-453f-b179-e6ca14a854de', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_manage-events}', 'manage-events', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('83788975-f192-4199-9cf1-74a60a183bbe', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_manage-identity-providers}', 'manage-identity-providers', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('b4ab2a6a-cfb7-4f15-826f-e29389dc9c5c', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_manage-authorization}', 'manage-authorization', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('a6097ee5-ac78-4fa0-908d-0f6361160569', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_query-users}', 'query-users', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('c56ec07b-c6ae-441e-af73-3a1dd6f410c5', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_query-clients}', 'query-clients', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('6d38c6e7-9471-494c-9554-f4d8df8718d7', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_query-realms}', 'query-realms', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('5295afd6-8fe8-4bb8-a9a7-c57ee516229f', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_query-groups}', 'query-groups', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('a73f2af1-d854-42f1-ac0b-84d01148d1d4', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', true, '${role_view-profile}', 'view-profile', 'master', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', NULL);
INSERT INTO public.keycloak_role VALUES ('c5e44a37-f2fc-4995-95de-3945086ae03d', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', true, '${role_manage-account}', 'manage-account', 'master', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', NULL);
INSERT INTO public.keycloak_role VALUES ('ab0c3b22-63a3-4d4e-b007-ccc4cbac87e4', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', true, '${role_manage-account-links}', 'manage-account-links', 'master', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', NULL);
INSERT INTO public.keycloak_role VALUES ('3d106b9e-001d-403f-868d-9d25e1921a00', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', true, '${role_view-applications}', 'view-applications', 'master', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', NULL);
INSERT INTO public.keycloak_role VALUES ('03833f35-8ddb-42eb-b872-3fd3437143f7', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', true, '${role_view-consent}', 'view-consent', 'master', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', NULL);
INSERT INTO public.keycloak_role VALUES ('d4717dcb-05a2-4a80-8ae1-ca0e7956310a', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', true, '${role_manage-consent}', 'manage-consent', 'master', '8a7d530e-67f3-4b7f-9539-95f2d3de5732', NULL);
INSERT INTO public.keycloak_role VALUES ('e9e6811b-c8f9-44a7-aa50-96669d1886af', 'd9fa7dfc-b6f4-4dbb-9876-487c42c0312a', true, '${role_read-token}', 'read-token', 'master', 'd9fa7dfc-b6f4-4dbb-9876-487c42c0312a', NULL);
INSERT INTO public.keycloak_role VALUES ('7c2372f3-b1df-434b-ba43-73af031e7b8d', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', true, '${role_impersonation}', 'impersonation', 'master', '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', NULL);
INSERT INTO public.keycloak_role VALUES ('0cd42c54-55e2-4ec9-a14a-07bd499e081d', 'master', false, '${role_offline-access}', 'offline_access', 'master', NULL, 'master');
INSERT INTO public.keycloak_role VALUES ('d050b57e-7767-4900-b094-3b9258c69953', 'master', false, '${role_uma_authorization}', 'uma_authorization', 'master', NULL, 'master');
INSERT INTO public.keycloak_role VALUES ('b050b926-2e1b-4a2c-bf97-b6104f8508b4', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_create-client}', 'create-client', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('ddd144b3-f8bc-449e-83b8-709450b1b294', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_view-realm}', 'view-realm', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('c879a0fa-0191-46b7-be39-94c8cf6e3b0c', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_view-users}', 'view-users', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('01bb52e0-1ac4-48d5-a8ef-67f62f14b3c6', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_view-clients}', 'view-clients', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('9d4b69c9-5562-46fb-8dd4-532e05c97d4d', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_view-events}', 'view-events', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('330cc4fb-a6d3-4e1e-a78d-06509db0dc6f', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_view-identity-providers}', 'view-identity-providers', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('8121e153-93ac-4839-888f-c24348a03d88', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_view-authorization}', 'view-authorization', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('35733be0-cdf2-4a87-9f56-36120d4f3cbc', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_manage-realm}', 'manage-realm', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('f50d6937-6c8a-4e84-a324-ecc7e45bd8d8', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_manage-users}', 'manage-users', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('f035450b-3d7d-4126-9df1-3fe7c8762792', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_manage-clients}', 'manage-clients', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('60a98f2f-b3e1-4701-b309-2a4418179446', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_manage-events}', 'manage-events', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('2884d5dd-12a5-453c-9694-39700b62a1bb', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_manage-identity-providers}', 'manage-identity-providers', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('3e724ee0-f0e6-4dce-ba48-dfc38bace4ee', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_manage-authorization}', 'manage-authorization', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('82146159-01eb-435f-bcff-ade90907f5b7', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_query-users}', 'query-users', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('276ea271-7d49-4299-8702-bf3e0f97eff0', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_query-clients}', 'query-clients', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('3dd0e36e-2181-4611-a4b5-bfb97d92e504', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_query-realms}', 'query-realms', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('baac6913-ba6c-4a93-8d05-60ea736c404d', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_query-groups}', 'query-groups', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('7637d087-30b9-41bf-a1f6-f9dd50952e60', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_realm-admin}', 'realm-admin', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('e1591e0a-0277-4810-9419-eefbbd369ab4', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_create-client}', 'create-client', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('2ba4016f-1ea6-412c-a6b9-73e99d09cfc5', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_view-realm}', 'view-realm', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('8ee4ea04-c07d-4041-91f3-f1b8e3aa8fea', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_view-users}', 'view-users', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('b31c2244-9896-4f49-ba38-35a295f6a8d6', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_view-clients}', 'view-clients', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('509c2d49-1791-438f-b48d-10ddff7808b0', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_view-events}', 'view-events', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('a563cc0d-c301-4476-9940-8c7fd392613f', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_view-identity-providers}', 'view-identity-providers', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('55f240c1-d965-4b5d-ae86-754853dd98aa', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_view-authorization}', 'view-authorization', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('9bfda400-8601-4324-a948-e52db6b65815', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_manage-realm}', 'manage-realm', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('da729bde-1d4f-4ef2-b882-73fe3812377a', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_manage-users}', 'manage-users', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('9a4d3cd8-898c-4287-9b2b-fc22d2626b9a', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_manage-clients}', 'manage-clients', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('5bf506ec-c947-4616-a172-cfc96fa9dc10', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_manage-events}', 'manage-events', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('72433957-4ac6-4e63-bf91-294be974322e', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_manage-identity-providers}', 'manage-identity-providers', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('ecf25ff2-9a25-49e3-90a7-7355dc7a0bbd', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_manage-authorization}', 'manage-authorization', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('6db1e1af-8591-4439-8246-ccbacd8adb41', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_query-users}', 'query-users', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('a5ae27ea-7587-4d56-9880-7be6a7648e91', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_query-clients}', 'query-clients', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('d39954b7-8267-4a25-a24a-9b12db93459e', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_query-realms}', 'query-realms', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('e5bb1407-7fd2-48d0-887a-d9b439a84981', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_query-groups}', 'query-groups', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('16227269-0fad-41d6-bc2c-7f893ffcd93d', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', true, '${role_view-profile}', 'view-profile', 'basic', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', NULL);
INSERT INTO public.keycloak_role VALUES ('54587202-8fa1-40b1-93e2-6220640c6b2a', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', true, '${role_manage-account}', 'manage-account', 'basic', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', NULL);
INSERT INTO public.keycloak_role VALUES ('65605b0f-b85c-497a-aca9-b8d54701791d', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', true, '${role_manage-account-links}', 'manage-account-links', 'basic', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', NULL);
INSERT INTO public.keycloak_role VALUES ('e765dc8b-9636-40f2-b7cb-44b8691f724e', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', true, '${role_view-applications}', 'view-applications', 'basic', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', NULL);
INSERT INTO public.keycloak_role VALUES ('d7f55cc1-a0cb-4160-a41b-9530f5efee8d', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', true, '${role_view-consent}', 'view-consent', 'basic', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', NULL);
INSERT INTO public.keycloak_role VALUES ('725f74dc-c69f-4c96-918a-0c9f68fd6cd0', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', true, '${role_manage-consent}', 'manage-consent', 'basic', '7635c3a8-6071-4f4f-bff8-0c1ed040b715', NULL);
INSERT INTO public.keycloak_role VALUES ('5dd4d6fe-54e2-417d-a6de-2add760d9426', '8854ebd4-0268-4832-8a3f-257942cda0a9', true, '${role_impersonation}', 'impersonation', 'master', '8854ebd4-0268-4832-8a3f-257942cda0a9', NULL);
INSERT INTO public.keycloak_role VALUES ('82505b37-1eee-4e5c-810b-e5841e5782f6', '44818e9e-93bf-44d8-8c87-4f867ddd441f', true, '${role_impersonation}', 'impersonation', 'basic', '44818e9e-93bf-44d8-8c87-4f867ddd441f', NULL);
INSERT INTO public.keycloak_role VALUES ('2aff1f75-a4a4-4ec1-b74c-e0a630adfd87', 'a063f021-6faa-4ce4-b0f0-bb111e78d871', true, '${role_read-token}', 'read-token', 'basic', 'a063f021-6faa-4ce4-b0f0-bb111e78d871', NULL);
INSERT INTO public.keycloak_role VALUES ('f4eeb266-3795-442d-813a-1a5d1a28ec25', 'basic', false, '${role_offline-access}', 'offline_access', 'basic', NULL, 'basic');
INSERT INTO public.keycloak_role VALUES ('eb97f3a6-b173-4e40-869c-fa8cfaabdbf9', 'basic', false, '${role_uma_authorization}', 'uma_authorization', 'basic', NULL, 'basic');


--
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.migration_model VALUES ('jdh2p', '9.0.5', 1601228260);


--
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: oskeycloak0jbosststxtable; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.oskeycloak0jbosststxtable VALUES (1, 0, 'EISNAME', '0:ffff0a800223:-2a120ec9:5f70cdd2:1d', '\x23424501102040000000000b6b6579636c6f616b2d30000000000001000000226a6176613a6a626f73732f64617461736f75726365732f4b6579636c6f616b4453000000');


--
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.protocol_mapper VALUES ('ddb3065e-d63c-458c-bd22-d2db46953b2d', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', 'e0dcdd21-bd48-49b5-af2c-feca1b436e5a', NULL);
INSERT INTO public.protocol_mapper VALUES ('fa02365a-f14b-45c4-9896-3f3a26b26786', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '0ed87eee-58c2-4302-a929-18d92c3e3eab', NULL);
INSERT INTO public.protocol_mapper VALUES ('2dcb4aa9-5d08-43d8-a86a-37adfba0075c', 'role list', 'saml', 'saml-role-list-mapper', NULL, '6839625d-86db-4462-98c4-43ca2ca3092b');
INSERT INTO public.protocol_mapper VALUES ('b3753bce-0434-4834-b060-41694af59253', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('a2646313-e8c0-4852-8d18-6bb14d59a0fa', 'family name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('9092a282-2c1c-448a-9de6-ab9b4b197ff5', 'given name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('9be09d06-1147-4408-ac39-0084a69cdf85', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('6baeed8d-846a-49bb-a837-5c38f80a8e44', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('6fb39058-46ac-48ff-a7e9-65611a08c655', 'username', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('2764d4a6-a6af-46b1-8cdc-a02ed5f2f89e', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('15cca4a1-9420-4027-aaea-7c08698f5a49', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('2dc447c8-d57a-45db-9c8b-c47cc49569ef', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('8b13a2a8-cd3e-4ff3-8d8f-46e197c9c47c', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('9b4dd921-7ed1-43e0-8d78-e8c2e20ca87d', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('66df8532-c207-4e43-9577-4ad501b15335', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('9879d041-0919-4b78-8a5c-920af9e9f8cf', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('0a4b08e4-4c2c-4c2b-959b-4d61ea43c7a0', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '92ddea8a-b9a5-4674-a4d9-f0caa5729d6e');
INSERT INTO public.protocol_mapper VALUES ('c1cc8f61-c46d-4cd9-a5df-39aad50d45da', 'email', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'c9b09700-bfb8-4672-a555-2072badb4817');
INSERT INTO public.protocol_mapper VALUES ('8144766a-3d18-48af-b467-dba38c9967c6', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'c9b09700-bfb8-4672-a555-2072badb4817');
INSERT INTO public.protocol_mapper VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'address', 'openid-connect', 'oidc-address-mapper', NULL, 'c7208aa0-2d7b-4b24-a4d0-d0967dce6b17');
INSERT INTO public.protocol_mapper VALUES ('66e3c0a8-57f0-4d89-8847-62a14a1a5674', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '26ad9620-ccea-431f-85a7-d274cecd2535');
INSERT INTO public.protocol_mapper VALUES ('39d25b29-4d62-419f-b6a4-a049b6aabf4d', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, '26ad9620-ccea-431f-85a7-d274cecd2535');
INSERT INTO public.protocol_mapper VALUES ('c3f2ca43-70fe-43a1-bbc3-94c57d624b21', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '46cacc2d-a427-47a7-a1fa-95e73bcb81bd');
INSERT INTO public.protocol_mapper VALUES ('182304e3-7c15-47c1-b0d8-5576cd76aeb5', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, '46cacc2d-a427-47a7-a1fa-95e73bcb81bd');
INSERT INTO public.protocol_mapper VALUES ('2fb280ab-7d87-4af6-8f9e-6fa978116cc0', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, '46cacc2d-a427-47a7-a1fa-95e73bcb81bd');
INSERT INTO public.protocol_mapper VALUES ('9ec474d3-2479-4230-a01a-5ac83b174c5f', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, 'b32480dc-1f94-4278-8b18-e79992c1fae3');
INSERT INTO public.protocol_mapper VALUES ('821c938e-8e2e-43c3-86f1-506f3ff02da5', 'upn', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'db28999e-5228-43cc-aee8-455f04a537fc');
INSERT INTO public.protocol_mapper VALUES ('742a8162-d745-4dd4-9fd3-de027d6460d9', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'db28999e-5228-43cc-aee8-455f04a537fc');
INSERT INTO public.protocol_mapper VALUES ('e949ae66-9cd3-47a9-9586-ec26bbb8f5b4', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', '5a87bba2-43c3-4169-b0b5-0a3256fe6539', NULL);
INSERT INTO public.protocol_mapper VALUES ('39cbb601-fef3-4611-8ab8-2d8185e71ccc', 'role list', 'saml', 'saml-role-list-mapper', NULL, '6af32e54-3a35-4ebe-9680-18e2f32bb5cc');
INSERT INTO public.protocol_mapper VALUES ('51491b6f-a6aa-4ef3-943a-282259a8ad77', 'full name', 'openid-connect', 'oidc-full-name-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('c78f122f-7b6d-462a-8330-cbf8e60dd12c', 'family name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('f7c32c35-97b1-4d4b-b5c8-9757bf7e91a6', 'given name', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('9d28c277-2a7f-4f42-bb4a-ae1b086c8a1d', 'middle name', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('99d4ed1c-3033-44d6-bfcd-459d88f8c7a4', 'nickname', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('8015423b-2edd-4781-9f18-8388b09cbfd5', 'username', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('2560704e-6411-4448-ab1c-58ce1273c1bc', 'profile', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('61369791-0583-4bbb-8cb5-4dd74aeff7b9', 'picture', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('ccd31297-7db1-4967-88b1-b3246f897c86', 'website', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('e11bf658-5ab7-463c-820c-cca65019623c', 'gender', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('257b46b9-343f-4f7b-a222-c387c81dcede', 'birthdate', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('8cd729a2-47e9-421e-b59b-dc289acd546c', 'zoneinfo', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('9ad8d0dc-f9ef-4bf2-ab02-acaf813f4d95', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('7a9f4c75-1898-4d2f-88c6-40a710d6a6ba', 'updated at', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'ca8f6a6d-8a32-4b3b-a6b7-b2a5e2a3253e');
INSERT INTO public.protocol_mapper VALUES ('811f4185-8148-4abf-86c3-cbe9e1b49aa9', 'email', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '9979c480-91c1-4d97-a82b-95b9efac7d45');
INSERT INTO public.protocol_mapper VALUES ('81fcca7c-d62f-442d-80f7-62bf79eeac91', 'email verified', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '9979c480-91c1-4d97-a82b-95b9efac7d45');
INSERT INTO public.protocol_mapper VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'address', 'openid-connect', 'oidc-address-mapper', NULL, '7620c3e2-b5f9-4035-adce-6f13e1392077');
INSERT INTO public.protocol_mapper VALUES ('c5a6c741-6ab3-4e68-9e4b-34b7d75a5631', 'phone number', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a');
INSERT INTO public.protocol_mapper VALUES ('1dcd2fd9-fbe4-4e63-8db2-0481d217bf98', 'phone number verified', 'openid-connect', 'oidc-usermodel-attribute-mapper', NULL, 'af0514f1-aa7f-4c49-b0fa-e27970c6cb0a');
INSERT INTO public.protocol_mapper VALUES ('cd894d9c-1ff8-4965-aa6d-08834bbdd7c2', 'realm roles', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, 'd2002b47-b70a-4da3-8587-0c90fd9a4239');
INSERT INTO public.protocol_mapper VALUES ('c0de377c-2bb9-47a7-98ae-2a6952160870', 'client roles', 'openid-connect', 'oidc-usermodel-client-role-mapper', NULL, 'd2002b47-b70a-4da3-8587-0c90fd9a4239');
INSERT INTO public.protocol_mapper VALUES ('cdc0f159-5963-499c-8e02-567d87b7777c', 'audience resolve', 'openid-connect', 'oidc-audience-resolve-mapper', NULL, 'd2002b47-b70a-4da3-8587-0c90fd9a4239');
INSERT INTO public.protocol_mapper VALUES ('7d26b135-64fb-4fd7-9e75-a5e2a6fd56e3', 'allowed web origins', 'openid-connect', 'oidc-allowed-origins-mapper', NULL, '0457d93b-e68f-44aa-badd-24e6d0636ff1');
INSERT INTO public.protocol_mapper VALUES ('f036fc4b-9637-430c-ba35-3e5b26aa10c8', 'upn', 'openid-connect', 'oidc-usermodel-property-mapper', NULL, '6afec045-372a-4514-9b9b-a0b64dc2c06f');
INSERT INTO public.protocol_mapper VALUES ('1e8f27e0-7c87-4627-b117-eacd02776e8c', 'groups', 'openid-connect', 'oidc-usermodel-realm-role-mapper', NULL, '6afec045-372a-4514-9b9b-a0b64dc2c06f');
INSERT INTO public.protocol_mapper VALUES ('3c8a6d41-87ac-46f4-99fe-fda29cc3964f', 'locale', 'openid-connect', 'oidc-usermodel-attribute-mapper', '3a0f9280-4b4d-4f29-821d-b3e9b166b31d', NULL);


--
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.protocol_mapper_config VALUES ('fa02365a-f14b-45c4-9896-3f3a26b26786', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('fa02365a-f14b-45c4-9896-3f3a26b26786', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('fa02365a-f14b-45c4-9896-3f3a26b26786', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('fa02365a-f14b-45c4-9896-3f3a26b26786', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('fa02365a-f14b-45c4-9896-3f3a26b26786', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('fa02365a-f14b-45c4-9896-3f3a26b26786', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('2dcb4aa9-5d08-43d8-a86a-37adfba0075c', 'false', 'single');
INSERT INTO public.protocol_mapper_config VALUES ('2dcb4aa9-5d08-43d8-a86a-37adfba0075c', 'Basic', 'attribute.nameformat');
INSERT INTO public.protocol_mapper_config VALUES ('2dcb4aa9-5d08-43d8-a86a-37adfba0075c', 'Role', 'attribute.name');
INSERT INTO public.protocol_mapper_config VALUES ('b3753bce-0434-4834-b060-41694af59253', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('b3753bce-0434-4834-b060-41694af59253', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('b3753bce-0434-4834-b060-41694af59253', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a2646313-e8c0-4852-8d18-6bb14d59a0fa', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a2646313-e8c0-4852-8d18-6bb14d59a0fa', 'lastName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('a2646313-e8c0-4852-8d18-6bb14d59a0fa', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a2646313-e8c0-4852-8d18-6bb14d59a0fa', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('a2646313-e8c0-4852-8d18-6bb14d59a0fa', 'family_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('a2646313-e8c0-4852-8d18-6bb14d59a0fa', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('9092a282-2c1c-448a-9de6-ab9b4b197ff5', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9092a282-2c1c-448a-9de6-ab9b4b197ff5', 'firstName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('9092a282-2c1c-448a-9de6-ab9b4b197ff5', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9092a282-2c1c-448a-9de6-ab9b4b197ff5', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9092a282-2c1c-448a-9de6-ab9b4b197ff5', 'given_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('9092a282-2c1c-448a-9de6-ab9b4b197ff5', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('9be09d06-1147-4408-ac39-0084a69cdf85', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9be09d06-1147-4408-ac39-0084a69cdf85', 'middleName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('9be09d06-1147-4408-ac39-0084a69cdf85', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9be09d06-1147-4408-ac39-0084a69cdf85', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9be09d06-1147-4408-ac39-0084a69cdf85', 'middle_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('9be09d06-1147-4408-ac39-0084a69cdf85', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('6baeed8d-846a-49bb-a837-5c38f80a8e44', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6baeed8d-846a-49bb-a837-5c38f80a8e44', 'nickname', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('6baeed8d-846a-49bb-a837-5c38f80a8e44', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6baeed8d-846a-49bb-a837-5c38f80a8e44', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6baeed8d-846a-49bb-a837-5c38f80a8e44', 'nickname', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('6baeed8d-846a-49bb-a837-5c38f80a8e44', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('6fb39058-46ac-48ff-a7e9-65611a08c655', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6fb39058-46ac-48ff-a7e9-65611a08c655', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('6fb39058-46ac-48ff-a7e9-65611a08c655', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6fb39058-46ac-48ff-a7e9-65611a08c655', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('6fb39058-46ac-48ff-a7e9-65611a08c655', 'preferred_username', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('6fb39058-46ac-48ff-a7e9-65611a08c655', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('2764d4a6-a6af-46b1-8cdc-a02ed5f2f89e', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2764d4a6-a6af-46b1-8cdc-a02ed5f2f89e', 'profile', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('2764d4a6-a6af-46b1-8cdc-a02ed5f2f89e', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2764d4a6-a6af-46b1-8cdc-a02ed5f2f89e', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2764d4a6-a6af-46b1-8cdc-a02ed5f2f89e', 'profile', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('2764d4a6-a6af-46b1-8cdc-a02ed5f2f89e', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('15cca4a1-9420-4027-aaea-7c08698f5a49', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('15cca4a1-9420-4027-aaea-7c08698f5a49', 'picture', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('15cca4a1-9420-4027-aaea-7c08698f5a49', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('15cca4a1-9420-4027-aaea-7c08698f5a49', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('15cca4a1-9420-4027-aaea-7c08698f5a49', 'picture', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('15cca4a1-9420-4027-aaea-7c08698f5a49', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('2dc447c8-d57a-45db-9c8b-c47cc49569ef', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2dc447c8-d57a-45db-9c8b-c47cc49569ef', 'website', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('2dc447c8-d57a-45db-9c8b-c47cc49569ef', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2dc447c8-d57a-45db-9c8b-c47cc49569ef', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2dc447c8-d57a-45db-9c8b-c47cc49569ef', 'website', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('2dc447c8-d57a-45db-9c8b-c47cc49569ef', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8b13a2a8-cd3e-4ff3-8d8f-46e197c9c47c', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8b13a2a8-cd3e-4ff3-8d8f-46e197c9c47c', 'gender', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8b13a2a8-cd3e-4ff3-8d8f-46e197c9c47c', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8b13a2a8-cd3e-4ff3-8d8f-46e197c9c47c', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8b13a2a8-cd3e-4ff3-8d8f-46e197c9c47c', 'gender', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8b13a2a8-cd3e-4ff3-8d8f-46e197c9c47c', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('9b4dd921-7ed1-43e0-8d78-e8c2e20ca87d', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9b4dd921-7ed1-43e0-8d78-e8c2e20ca87d', 'birthdate', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('9b4dd921-7ed1-43e0-8d78-e8c2e20ca87d', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9b4dd921-7ed1-43e0-8d78-e8c2e20ca87d', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9b4dd921-7ed1-43e0-8d78-e8c2e20ca87d', 'birthdate', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('9b4dd921-7ed1-43e0-8d78-e8c2e20ca87d', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('66df8532-c207-4e43-9577-4ad501b15335', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('66df8532-c207-4e43-9577-4ad501b15335', 'zoneinfo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('66df8532-c207-4e43-9577-4ad501b15335', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('66df8532-c207-4e43-9577-4ad501b15335', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('66df8532-c207-4e43-9577-4ad501b15335', 'zoneinfo', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('66df8532-c207-4e43-9577-4ad501b15335', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('9879d041-0919-4b78-8a5c-920af9e9f8cf', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9879d041-0919-4b78-8a5c-920af9e9f8cf', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('9879d041-0919-4b78-8a5c-920af9e9f8cf', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9879d041-0919-4b78-8a5c-920af9e9f8cf', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9879d041-0919-4b78-8a5c-920af9e9f8cf', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('9879d041-0919-4b78-8a5c-920af9e9f8cf', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('0a4b08e4-4c2c-4c2b-959b-4d61ea43c7a0', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('0a4b08e4-4c2c-4c2b-959b-4d61ea43c7a0', 'updatedAt', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('0a4b08e4-4c2c-4c2b-959b-4d61ea43c7a0', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('0a4b08e4-4c2c-4c2b-959b-4d61ea43c7a0', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('0a4b08e4-4c2c-4c2b-959b-4d61ea43c7a0', 'updated_at', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('0a4b08e4-4c2c-4c2b-959b-4d61ea43c7a0', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('c1cc8f61-c46d-4cd9-a5df-39aad50d45da', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c1cc8f61-c46d-4cd9-a5df-39aad50d45da', 'email', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('c1cc8f61-c46d-4cd9-a5df-39aad50d45da', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c1cc8f61-c46d-4cd9-a5df-39aad50d45da', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c1cc8f61-c46d-4cd9-a5df-39aad50d45da', 'email', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('c1cc8f61-c46d-4cd9-a5df-39aad50d45da', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8144766a-3d18-48af-b467-dba38c9967c6', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8144766a-3d18-48af-b467-dba38c9967c6', 'emailVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8144766a-3d18-48af-b467-dba38c9967c6', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8144766a-3d18-48af-b467-dba38c9967c6', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8144766a-3d18-48af-b467-dba38c9967c6', 'email_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8144766a-3d18-48af-b467-dba38c9967c6', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'formatted', 'user.attribute.formatted');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'country', 'user.attribute.country');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'postal_code', 'user.attribute.postal_code');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'street', 'user.attribute.street');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'region', 'user.attribute.region');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('5c2394a7-8a64-4e0c-bd95-3d3b2a359eca', 'locality', 'user.attribute.locality');
INSERT INTO public.protocol_mapper_config VALUES ('66e3c0a8-57f0-4d89-8847-62a14a1a5674', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('66e3c0a8-57f0-4d89-8847-62a14a1a5674', 'phoneNumber', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('66e3c0a8-57f0-4d89-8847-62a14a1a5674', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('66e3c0a8-57f0-4d89-8847-62a14a1a5674', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('66e3c0a8-57f0-4d89-8847-62a14a1a5674', 'phone_number', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('66e3c0a8-57f0-4d89-8847-62a14a1a5674', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('39d25b29-4d62-419f-b6a4-a049b6aabf4d', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('39d25b29-4d62-419f-b6a4-a049b6aabf4d', 'phoneNumberVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('39d25b29-4d62-419f-b6a4-a049b6aabf4d', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('39d25b29-4d62-419f-b6a4-a049b6aabf4d', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('39d25b29-4d62-419f-b6a4-a049b6aabf4d', 'phone_number_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('39d25b29-4d62-419f-b6a4-a049b6aabf4d', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('c3f2ca43-70fe-43a1-bbc3-94c57d624b21', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('c3f2ca43-70fe-43a1-bbc3-94c57d624b21', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('c3f2ca43-70fe-43a1-bbc3-94c57d624b21', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c3f2ca43-70fe-43a1-bbc3-94c57d624b21', 'realm_access.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('c3f2ca43-70fe-43a1-bbc3-94c57d624b21', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('182304e3-7c15-47c1-b0d8-5576cd76aeb5', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('182304e3-7c15-47c1-b0d8-5576cd76aeb5', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('182304e3-7c15-47c1-b0d8-5576cd76aeb5', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('182304e3-7c15-47c1-b0d8-5576cd76aeb5', 'resource_access.${client_id}.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('182304e3-7c15-47c1-b0d8-5576cd76aeb5', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('821c938e-8e2e-43c3-86f1-506f3ff02da5', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('821c938e-8e2e-43c3-86f1-506f3ff02da5', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('821c938e-8e2e-43c3-86f1-506f3ff02da5', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('821c938e-8e2e-43c3-86f1-506f3ff02da5', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('821c938e-8e2e-43c3-86f1-506f3ff02da5', 'upn', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('821c938e-8e2e-43c3-86f1-506f3ff02da5', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('742a8162-d745-4dd4-9fd3-de027d6460d9', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('742a8162-d745-4dd4-9fd3-de027d6460d9', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('742a8162-d745-4dd4-9fd3-de027d6460d9', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('742a8162-d745-4dd4-9fd3-de027d6460d9', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('742a8162-d745-4dd4-9fd3-de027d6460d9', 'groups', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('742a8162-d745-4dd4-9fd3-de027d6460d9', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('39cbb601-fef3-4611-8ab8-2d8185e71ccc', 'false', 'single');
INSERT INTO public.protocol_mapper_config VALUES ('39cbb601-fef3-4611-8ab8-2d8185e71ccc', 'Basic', 'attribute.nameformat');
INSERT INTO public.protocol_mapper_config VALUES ('39cbb601-fef3-4611-8ab8-2d8185e71ccc', 'Role', 'attribute.name');
INSERT INTO public.protocol_mapper_config VALUES ('51491b6f-a6aa-4ef3-943a-282259a8ad77', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('51491b6f-a6aa-4ef3-943a-282259a8ad77', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('51491b6f-a6aa-4ef3-943a-282259a8ad77', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c78f122f-7b6d-462a-8330-cbf8e60dd12c', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c78f122f-7b6d-462a-8330-cbf8e60dd12c', 'lastName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('c78f122f-7b6d-462a-8330-cbf8e60dd12c', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c78f122f-7b6d-462a-8330-cbf8e60dd12c', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c78f122f-7b6d-462a-8330-cbf8e60dd12c', 'family_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('c78f122f-7b6d-462a-8330-cbf8e60dd12c', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('f7c32c35-97b1-4d4b-b5c8-9757bf7e91a6', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7c32c35-97b1-4d4b-b5c8-9757bf7e91a6', 'firstName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('f7c32c35-97b1-4d4b-b5c8-9757bf7e91a6', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7c32c35-97b1-4d4b-b5c8-9757bf7e91a6', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f7c32c35-97b1-4d4b-b5c8-9757bf7e91a6', 'given_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('f7c32c35-97b1-4d4b-b5c8-9757bf7e91a6', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('9d28c277-2a7f-4f42-bb4a-ae1b086c8a1d', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9d28c277-2a7f-4f42-bb4a-ae1b086c8a1d', 'middleName', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('9d28c277-2a7f-4f42-bb4a-ae1b086c8a1d', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9d28c277-2a7f-4f42-bb4a-ae1b086c8a1d', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9d28c277-2a7f-4f42-bb4a-ae1b086c8a1d', 'middle_name', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('9d28c277-2a7f-4f42-bb4a-ae1b086c8a1d', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('99d4ed1c-3033-44d6-bfcd-459d88f8c7a4', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('99d4ed1c-3033-44d6-bfcd-459d88f8c7a4', 'nickname', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('99d4ed1c-3033-44d6-bfcd-459d88f8c7a4', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('99d4ed1c-3033-44d6-bfcd-459d88f8c7a4', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('99d4ed1c-3033-44d6-bfcd-459d88f8c7a4', 'nickname', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('99d4ed1c-3033-44d6-bfcd-459d88f8c7a4', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8015423b-2edd-4781-9f18-8388b09cbfd5', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8015423b-2edd-4781-9f18-8388b09cbfd5', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8015423b-2edd-4781-9f18-8388b09cbfd5', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8015423b-2edd-4781-9f18-8388b09cbfd5', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8015423b-2edd-4781-9f18-8388b09cbfd5', 'preferred_username', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8015423b-2edd-4781-9f18-8388b09cbfd5', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('2560704e-6411-4448-ab1c-58ce1273c1bc', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2560704e-6411-4448-ab1c-58ce1273c1bc', 'profile', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('2560704e-6411-4448-ab1c-58ce1273c1bc', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2560704e-6411-4448-ab1c-58ce1273c1bc', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('2560704e-6411-4448-ab1c-58ce1273c1bc', 'profile', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('2560704e-6411-4448-ab1c-58ce1273c1bc', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('61369791-0583-4bbb-8cb5-4dd74aeff7b9', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('61369791-0583-4bbb-8cb5-4dd74aeff7b9', 'picture', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('61369791-0583-4bbb-8cb5-4dd74aeff7b9', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('61369791-0583-4bbb-8cb5-4dd74aeff7b9', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('61369791-0583-4bbb-8cb5-4dd74aeff7b9', 'picture', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('61369791-0583-4bbb-8cb5-4dd74aeff7b9', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('ccd31297-7db1-4967-88b1-b3246f897c86', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('ccd31297-7db1-4967-88b1-b3246f897c86', 'website', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('ccd31297-7db1-4967-88b1-b3246f897c86', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('ccd31297-7db1-4967-88b1-b3246f897c86', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('ccd31297-7db1-4967-88b1-b3246f897c86', 'website', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('ccd31297-7db1-4967-88b1-b3246f897c86', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('e11bf658-5ab7-463c-820c-cca65019623c', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e11bf658-5ab7-463c-820c-cca65019623c', 'gender', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('e11bf658-5ab7-463c-820c-cca65019623c', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e11bf658-5ab7-463c-820c-cca65019623c', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('e11bf658-5ab7-463c-820c-cca65019623c', 'gender', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('e11bf658-5ab7-463c-820c-cca65019623c', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('257b46b9-343f-4f7b-a222-c387c81dcede', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('257b46b9-343f-4f7b-a222-c387c81dcede', 'birthdate', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('257b46b9-343f-4f7b-a222-c387c81dcede', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('257b46b9-343f-4f7b-a222-c387c81dcede', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('257b46b9-343f-4f7b-a222-c387c81dcede', 'birthdate', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('257b46b9-343f-4f7b-a222-c387c81dcede', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('8cd729a2-47e9-421e-b59b-dc289acd546c', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8cd729a2-47e9-421e-b59b-dc289acd546c', 'zoneinfo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('8cd729a2-47e9-421e-b59b-dc289acd546c', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8cd729a2-47e9-421e-b59b-dc289acd546c', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('8cd729a2-47e9-421e-b59b-dc289acd546c', 'zoneinfo', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('8cd729a2-47e9-421e-b59b-dc289acd546c', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('9ad8d0dc-f9ef-4bf2-ab02-acaf813f4d95', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9ad8d0dc-f9ef-4bf2-ab02-acaf813f4d95', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('9ad8d0dc-f9ef-4bf2-ab02-acaf813f4d95', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9ad8d0dc-f9ef-4bf2-ab02-acaf813f4d95', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('9ad8d0dc-f9ef-4bf2-ab02-acaf813f4d95', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('9ad8d0dc-f9ef-4bf2-ab02-acaf813f4d95', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('7a9f4c75-1898-4d2f-88c6-40a710d6a6ba', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7a9f4c75-1898-4d2f-88c6-40a710d6a6ba', 'updatedAt', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('7a9f4c75-1898-4d2f-88c6-40a710d6a6ba', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7a9f4c75-1898-4d2f-88c6-40a710d6a6ba', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('7a9f4c75-1898-4d2f-88c6-40a710d6a6ba', 'updated_at', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('7a9f4c75-1898-4d2f-88c6-40a710d6a6ba', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('811f4185-8148-4abf-86c3-cbe9e1b49aa9', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('811f4185-8148-4abf-86c3-cbe9e1b49aa9', 'email', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('811f4185-8148-4abf-86c3-cbe9e1b49aa9', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('811f4185-8148-4abf-86c3-cbe9e1b49aa9', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('811f4185-8148-4abf-86c3-cbe9e1b49aa9', 'email', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('811f4185-8148-4abf-86c3-cbe9e1b49aa9', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('81fcca7c-d62f-442d-80f7-62bf79eeac91', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('81fcca7c-d62f-442d-80f7-62bf79eeac91', 'emailVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('81fcca7c-d62f-442d-80f7-62bf79eeac91', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('81fcca7c-d62f-442d-80f7-62bf79eeac91', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('81fcca7c-d62f-442d-80f7-62bf79eeac91', 'email_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('81fcca7c-d62f-442d-80f7-62bf79eeac91', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'formatted', 'user.attribute.formatted');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'country', 'user.attribute.country');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'postal_code', 'user.attribute.postal_code');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'street', 'user.attribute.street');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'region', 'user.attribute.region');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f622b87b-3ddf-4d87-8e30-f670e3f389b4', 'locality', 'user.attribute.locality');
INSERT INTO public.protocol_mapper_config VALUES ('c5a6c741-6ab3-4e68-9e4b-34b7d75a5631', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c5a6c741-6ab3-4e68-9e4b-34b7d75a5631', 'phoneNumber', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('c5a6c741-6ab3-4e68-9e4b-34b7d75a5631', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c5a6c741-6ab3-4e68-9e4b-34b7d75a5631', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c5a6c741-6ab3-4e68-9e4b-34b7d75a5631', 'phone_number', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('c5a6c741-6ab3-4e68-9e4b-34b7d75a5631', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('1dcd2fd9-fbe4-4e63-8db2-0481d217bf98', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('1dcd2fd9-fbe4-4e63-8db2-0481d217bf98', 'phoneNumberVerified', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('1dcd2fd9-fbe4-4e63-8db2-0481d217bf98', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('1dcd2fd9-fbe4-4e63-8db2-0481d217bf98', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('1dcd2fd9-fbe4-4e63-8db2-0481d217bf98', 'phone_number_verified', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('1dcd2fd9-fbe4-4e63-8db2-0481d217bf98', 'boolean', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('cd894d9c-1ff8-4965-aa6d-08834bbdd7c2', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('cd894d9c-1ff8-4965-aa6d-08834bbdd7c2', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('cd894d9c-1ff8-4965-aa6d-08834bbdd7c2', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('cd894d9c-1ff8-4965-aa6d-08834bbdd7c2', 'realm_access.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('cd894d9c-1ff8-4965-aa6d-08834bbdd7c2', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('c0de377c-2bb9-47a7-98ae-2a6952160870', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('c0de377c-2bb9-47a7-98ae-2a6952160870', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('c0de377c-2bb9-47a7-98ae-2a6952160870', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('c0de377c-2bb9-47a7-98ae-2a6952160870', 'resource_access.${client_id}.roles', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('c0de377c-2bb9-47a7-98ae-2a6952160870', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('f036fc4b-9637-430c-ba35-3e5b26aa10c8', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f036fc4b-9637-430c-ba35-3e5b26aa10c8', 'username', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('f036fc4b-9637-430c-ba35-3e5b26aa10c8', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f036fc4b-9637-430c-ba35-3e5b26aa10c8', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('f036fc4b-9637-430c-ba35-3e5b26aa10c8', 'upn', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('f036fc4b-9637-430c-ba35-3e5b26aa10c8', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('1e8f27e0-7c87-4627-b117-eacd02776e8c', 'true', 'multivalued');
INSERT INTO public.protocol_mapper_config VALUES ('1e8f27e0-7c87-4627-b117-eacd02776e8c', 'foo', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('1e8f27e0-7c87-4627-b117-eacd02776e8c', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('1e8f27e0-7c87-4627-b117-eacd02776e8c', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('1e8f27e0-7c87-4627-b117-eacd02776e8c', 'groups', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('1e8f27e0-7c87-4627-b117-eacd02776e8c', 'String', 'jsonType.label');
INSERT INTO public.protocol_mapper_config VALUES ('3c8a6d41-87ac-46f4-99fe-fda29cc3964f', 'true', 'userinfo.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3c8a6d41-87ac-46f4-99fe-fda29cc3964f', 'locale', 'user.attribute');
INSERT INTO public.protocol_mapper_config VALUES ('3c8a6d41-87ac-46f4-99fe-fda29cc3964f', 'true', 'id.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3c8a6d41-87ac-46f4-99fe-fda29cc3964f', 'true', 'access.token.claim');
INSERT INTO public.protocol_mapper_config VALUES ('3c8a6d41-87ac-46f4-99fe-fda29cc3964f', 'locale', 'claim.name');
INSERT INTO public.protocol_mapper_config VALUES ('3c8a6d41-87ac-46f4-99fe-fda29cc3964f', 'String', 'jsonType.label');


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.realm VALUES ('master', 60, 300, 60, NULL, NULL, NULL, true, false, 0, NULL, 'master', 0, NULL, false, false, false, false, 'EXTERNAL', 1800, 36000, false, false, '14c85be7-4d8f-48e8-9e6c-9ee51d1ae4ae', 1800, false, NULL, false, false, false, false, 0, 1, 30, 6, 'HmacSHA1', 'totp', '3ad64457-f7a4-4a90-a348-714f20457cb3', '37296d12-7adc-45d7-a30c-8df81d5bb54b', '49d7db7f-43ed-4e91-bf66-db7efbaa7ad4', 'f3fbc9a3-d0e9-4635-871c-937c4280e0b2', '83fe87b5-ea4b-49b2-a209-dc33b96a1570', 2592000, false, 900, true, false, '93bdf5ec-4efd-4fd1-a8e8-c5c4d1038579', 0, false, 0, 0);
INSERT INTO public.realm VALUES ('basic', 60, 300, 300, NULL, NULL, NULL, true, false, 0, NULL, 'basic', 0, NULL, false, false, false, false, 'EXTERNAL', 1800, 36000, false, false, '8854ebd4-0268-4832-8a3f-257942cda0a9', 1800, false, NULL, false, false, false, false, 0, 1, 30, 6, 'HmacSHA1', 'totp', '0625878f-57a3-45ad-b07a-af45cdb85696', '258e54b3-09b5-48bd-abaa-b55964259451', 'f5b57b33-6edc-4d8f-84f8-866e772899a3', 'cc74f017-ac33-48ab-9fc5-0a0633bfb429', '656738a3-bbc1-418c-942e-1efd173a31c5', 2592000, false, 900, true, false, '5c0bc0cd-ba39-4fb0-8cfa-abc771bc128f', 0, false, 0, 0);


--
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
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
INSERT INTO public.realm_attribute VALUES ('displayName', 'rh-sso', 'master');
INSERT INTO public.realm_attribute VALUES ('displayNameHtml', '<strong>Red Hat</strong><sup>®</sup> Single Sign On', 'master');
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
INSERT INTO public.realm_attribute VALUES ('displayName', 'Basic Realm', 'basic');
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
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: realm_default_roles; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.realm_default_roles VALUES ('master', '0cd42c54-55e2-4ec9-a14a-07bd499e081d');
INSERT INTO public.realm_default_roles VALUES ('master', 'd050b57e-7767-4900-b094-3b9258c69953');
INSERT INTO public.realm_default_roles VALUES ('basic', 'f4eeb266-3795-442d-813a-1a5d1a28ec25');
INSERT INTO public.realm_default_roles VALUES ('basic', 'eb97f3a6-b173-4e40-869c-fa8cfaabdbf9');


--
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.realm_events_listeners VALUES ('master', 'jboss-logging');
INSERT INTO public.realm_events_listeners VALUES ('basic', 'jboss-logging');


--
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.realm_required_credential VALUES ('password', 'password', true, true, 'master');
INSERT INTO public.realm_required_credential VALUES ('password', 'password', true, true, 'basic');


--
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.redirect_uris VALUES ('8a7d530e-67f3-4b7f-9539-95f2d3de5732', '/realms/master/account/*');
INSERT INTO public.redirect_uris VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', '/realms/master/account/*');
INSERT INTO public.redirect_uris VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', '/admin/master/console/*');
INSERT INTO public.redirect_uris VALUES ('7635c3a8-6071-4f4f-bff8-0c1ed040b715', '/realms/basic/account/*');
INSERT INTO public.redirect_uris VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', '/realms/basic/account/*');
INSERT INTO public.redirect_uris VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', '/admin/basic/console/*');
INSERT INTO public.redirect_uris VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', 'http://nodejs-gui-nm-demo.apps.ocp-cluster-1.rhlab.ch/*');


--
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.required_action_provider VALUES ('c6576050-b99a-4bba-959e-7e96566f4cb6', 'VERIFY_EMAIL', 'Verify Email', 'master', true, false, 'VERIFY_EMAIL', 50);
INSERT INTO public.required_action_provider VALUES ('afa55c13-94c5-4214-bbf2-bad37e8173ef', 'UPDATE_PROFILE', 'Update Profile', 'master', true, false, 'UPDATE_PROFILE', 40);
INSERT INTO public.required_action_provider VALUES ('61e6f0e1-543f-495a-807c-0f7e8c20060a', 'CONFIGURE_TOTP', 'Configure OTP', 'master', true, false, 'CONFIGURE_TOTP', 10);
INSERT INTO public.required_action_provider VALUES ('9abc143a-28fd-4477-a8a9-fbad38698719', 'UPDATE_PASSWORD', 'Update Password', 'master', true, false, 'UPDATE_PASSWORD', 30);
INSERT INTO public.required_action_provider VALUES ('3aebc9a1-6e01-4523-b130-45e7a676d457', 'terms_and_conditions', 'Terms and Conditions', 'master', false, false, 'terms_and_conditions', 20);
INSERT INTO public.required_action_provider VALUES ('bf3308ac-1893-4c51-8caf-ed539648cdcf', 'update_user_locale', 'Update User Locale', 'master', true, false, 'update_user_locale', 1000);
INSERT INTO public.required_action_provider VALUES ('583023e3-d628-437b-9707-c7640da4c411', 'VERIFY_EMAIL', 'Verify Email', 'basic', true, false, 'VERIFY_EMAIL', 50);
INSERT INTO public.required_action_provider VALUES ('f882b7c6-030c-4ffe-95b3-1798fb3ebdcf', 'UPDATE_PROFILE', 'Update Profile', 'basic', true, false, 'UPDATE_PROFILE', 40);
INSERT INTO public.required_action_provider VALUES ('1da3129b-67f2-4c2f-a071-136773c2eb67', 'CONFIGURE_TOTP', 'Configure OTP', 'basic', true, false, 'CONFIGURE_TOTP', 10);
INSERT INTO public.required_action_provider VALUES ('8792c2b9-27ed-4d12-b940-9136a3423c98', 'UPDATE_PASSWORD', 'Update Password', 'basic', true, false, 'UPDATE_PASSWORD', 30);
INSERT INTO public.required_action_provider VALUES ('7e99e3fe-1b72-4b28-8d32-86403d7544b7', 'terms_and_conditions', 'Terms and Conditions', 'basic', false, false, 'terms_and_conditions', 20);
INSERT INTO public.required_action_provider VALUES ('43e0145a-0b4f-4780-8545-e7d8faaa2a7a', 'update_user_locale', 'Update User Locale', 'basic', true, false, 'update_user_locale', 1000);


--
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.scope_mapping VALUES ('e0dcdd21-bd48-49b5-af2c-feca1b436e5a', 'c5e44a37-f2fc-4995-95de-3945086ae03d');
INSERT INTO public.scope_mapping VALUES ('5a87bba2-43c3-4169-b0b5-0a3256fe6539', '54587202-8fa1-40b1-93e2-6220640c6b2a');


--
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.user_entity VALUES ('870cec34-13cc-4487-ae22-c7abc6312a2e', NULL, '90acb962-d9fa-4e8b-a912-6c89a2eaeed7', false, true, NULL, NULL, NULL, 'master', 'admin', 1601228263465, NULL, 0);
INSERT INTO public.user_entity VALUES ('20b64eb4-5d8a-4081-8d10-889829c2e836', 'nmajorov@redhat.com', 'nmajorov@redhat.com', false, true, NULL, 'Nikolaj', 'Majorov', 'basic', 'niko', 1601381576356, NULL, 0);
INSERT INTO public.user_entity VALUES ('7d47f533-4aae-4d6d-9700-b64f5d2ac6f7', 'alice@ox.ac.uk', 'alice@ox.ac.uk', false, true, NULL, 'Alice', 'Liddell', 'basic', 'alice', 1601381879906, NULL, 0);


--
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.user_required_action VALUES ('20b64eb4-5d8a-4081-8d10-889829c2e836', 'UPDATE_PASSWORD');


--
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.user_role_mapping VALUES ('c5e44a37-f2fc-4995-95de-3945086ae03d', '870cec34-13cc-4487-ae22-c7abc6312a2e');
INSERT INTO public.user_role_mapping VALUES ('d050b57e-7767-4900-b094-3b9258c69953', '870cec34-13cc-4487-ae22-c7abc6312a2e');
INSERT INTO public.user_role_mapping VALUES ('0cd42c54-55e2-4ec9-a14a-07bd499e081d', '870cec34-13cc-4487-ae22-c7abc6312a2e');
INSERT INTO public.user_role_mapping VALUES ('a73f2af1-d854-42f1-ac0b-84d01148d1d4', '870cec34-13cc-4487-ae22-c7abc6312a2e');
INSERT INTO public.user_role_mapping VALUES ('0bcad705-4d64-42fe-8048-c224c903de76', '870cec34-13cc-4487-ae22-c7abc6312a2e');
INSERT INTO public.user_role_mapping VALUES ('f4eeb266-3795-442d-813a-1a5d1a28ec25', '20b64eb4-5d8a-4081-8d10-889829c2e836');
INSERT INTO public.user_role_mapping VALUES ('eb97f3a6-b173-4e40-869c-fa8cfaabdbf9', '20b64eb4-5d8a-4081-8d10-889829c2e836');
INSERT INTO public.user_role_mapping VALUES ('16227269-0fad-41d6-bc2c-7f893ffcd93d', '20b64eb4-5d8a-4081-8d10-889829c2e836');
INSERT INTO public.user_role_mapping VALUES ('54587202-8fa1-40b1-93e2-6220640c6b2a', '20b64eb4-5d8a-4081-8d10-889829c2e836');
INSERT INTO public.user_role_mapping VALUES ('f4eeb266-3795-442d-813a-1a5d1a28ec25', '7d47f533-4aae-4d6d-9700-b64f5d2ac6f7');
INSERT INTO public.user_role_mapping VALUES ('eb97f3a6-b173-4e40-869c-fa8cfaabdbf9', '7d47f533-4aae-4d6d-9700-b64f5d2ac6f7');
INSERT INTO public.user_role_mapping VALUES ('16227269-0fad-41d6-bc2c-7f893ffcd93d', '7d47f533-4aae-4d6d-9700-b64f5d2ac6f7');
INSERT INTO public.user_role_mapping VALUES ('54587202-8fa1-40b1-93e2-6220640c6b2a', '7d47f533-4aae-4d6d-9700-b64f5d2ac6f7');


--
-- Data for Name: user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: username_login_failure; Type: TABLE DATA; Schema: public; Owner: keycloak
--



--
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: keycloak
--

INSERT INTO public.web_origins VALUES ('0ed87eee-58c2-4302-a929-18d92c3e3eab', '+');
INSERT INTO public.web_origins VALUES ('3a0f9280-4b4d-4f29-821d-b3e9b166b31d', '+');
INSERT INTO public.web_origins VALUES ('802e5a3c-e1e9-4b7a-b496-bc2b4734e981', '+');


--
-- Name: username_login_failure CONSTRAINT_17-2; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.username_login_failure
    ADD CONSTRAINT "CONSTRAINT_17-2" PRIMARY KEY (realm_id, username);


--
-- Name: keycloak_role UK_J3RWUVD56ONTGSUHOGM184WW2-2; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT "UK_J3RWUVD56ONTGSUHOGM184WW2-2" UNIQUE (name, client_realm_constraint);


--
-- Name: client_auth_flow_bindings c_cli_flow_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_auth_flow_bindings
    ADD CONSTRAINT c_cli_flow_bind PRIMARY KEY (client_id, binding_name);


--
-- Name: client_scope_client c_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT c_cli_scope_bind PRIMARY KEY (client_id, scope_id);


--
-- Name: client_initial_access cnstr_client_init_acc_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT cnstr_client_init_acc_pk PRIMARY KEY (id);


--
-- Name: realm_default_groups con_group_id_def_groups; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT con_group_id_def_groups UNIQUE (group_id);


--
-- Name: broker_link constr_broker_link_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.broker_link
    ADD CONSTRAINT constr_broker_link_pk PRIMARY KEY (identity_provider, user_id);


--
-- Name: client_user_session_note constr_cl_usr_ses_note; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_user_session_note
    ADD CONSTRAINT constr_cl_usr_ses_note PRIMARY KEY (client_session, name);


--
-- Name: client_default_roles constr_client_default_roles; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_default_roles
    ADD CONSTRAINT constr_client_default_roles PRIMARY KEY (client_id, role_id);


--
-- Name: component_config constr_component_config_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT constr_component_config_pk PRIMARY KEY (id);


--
-- Name: component constr_component_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT constr_component_pk PRIMARY KEY (id);


--
-- Name: fed_user_required_action constr_fed_required_action; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_required_action
    ADD CONSTRAINT constr_fed_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: fed_user_attribute constr_fed_user_attr_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_attribute
    ADD CONSTRAINT constr_fed_user_attr_pk PRIMARY KEY (id);


--
-- Name: fed_user_consent constr_fed_user_consent_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_consent
    ADD CONSTRAINT constr_fed_user_consent_pk PRIMARY KEY (id);


--
-- Name: fed_user_credential constr_fed_user_cred_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_credential
    ADD CONSTRAINT constr_fed_user_cred_pk PRIMARY KEY (id);


--
-- Name: fed_user_group_membership constr_fed_user_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_group_membership
    ADD CONSTRAINT constr_fed_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: fed_user_role_mapping constr_fed_user_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_role_mapping
    ADD CONSTRAINT constr_fed_user_role PRIMARY KEY (role_id, user_id);


--
-- Name: federated_user constr_federated_user; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_user
    ADD CONSTRAINT constr_federated_user PRIMARY KEY (id);


--
-- Name: realm_default_groups constr_realm_default_groups; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT constr_realm_default_groups PRIMARY KEY (realm_id, group_id);


--
-- Name: realm_enabled_event_types constr_realm_enabl_event_types; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT constr_realm_enabl_event_types PRIMARY KEY (realm_id, value);


--
-- Name: realm_events_listeners constr_realm_events_listeners; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT constr_realm_events_listeners PRIMARY KEY (realm_id, value);


--
-- Name: realm_supported_locales constr_realm_supported_locales; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT constr_realm_supported_locales PRIMARY KEY (realm_id, value);


--
-- Name: identity_provider constraint_2b; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT constraint_2b PRIMARY KEY (internal_id);


--
-- Name: client_attributes constraint_3c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT constraint_3c PRIMARY KEY (client_id, name);


--
-- Name: event_entity constraint_4; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.event_entity
    ADD CONSTRAINT constraint_4 PRIMARY KEY (id);


--
-- Name: federated_identity constraint_40; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT constraint_40 PRIMARY KEY (identity_provider, user_id);


--
-- Name: realm constraint_4a; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT constraint_4a PRIMARY KEY (id);


--
-- Name: client_session_role constraint_5; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_role
    ADD CONSTRAINT constraint_5 PRIMARY KEY (client_session, role_id);


--
-- Name: user_session constraint_57; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_session
    ADD CONSTRAINT constraint_57 PRIMARY KEY (id);


--
-- Name: user_federation_provider constraint_5c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT constraint_5c PRIMARY KEY (id);


--
-- Name: client_session_note constraint_5e; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_note
    ADD CONSTRAINT constraint_5e PRIMARY KEY (client_session, name);


--
-- Name: client constraint_7; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT constraint_7 PRIMARY KEY (id);


--
-- Name: client_session constraint_8; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session
    ADD CONSTRAINT constraint_8 PRIMARY KEY (id);


--
-- Name: scope_mapping constraint_81; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT constraint_81 PRIMARY KEY (client_id, role_id);


--
-- Name: client_node_registrations constraint_84; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT constraint_84 PRIMARY KEY (client_id, name);


--
-- Name: realm_attribute constraint_9; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT constraint_9 PRIMARY KEY (name, realm_id);


--
-- Name: realm_required_credential constraint_92; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT constraint_92 PRIMARY KEY (realm_id, type);


--
-- Name: keycloak_role constraint_a; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT constraint_a PRIMARY KEY (id);


--
-- Name: admin_event_entity constraint_admin_event_entity; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.admin_event_entity
    ADD CONSTRAINT constraint_admin_event_entity PRIMARY KEY (id);


--
-- Name: authenticator_config_entry constraint_auth_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config_entry
    ADD CONSTRAINT constraint_auth_cfg_pk PRIMARY KEY (authenticator_id, name);


--
-- Name: authentication_execution constraint_auth_exec_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT constraint_auth_exec_pk PRIMARY KEY (id);


--
-- Name: authentication_flow constraint_auth_flow_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT constraint_auth_flow_pk PRIMARY KEY (id);


--
-- Name: authenticator_config constraint_auth_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT constraint_auth_pk PRIMARY KEY (id);


--
-- Name: client_session_auth_status constraint_auth_status_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_auth_status
    ADD CONSTRAINT constraint_auth_status_pk PRIMARY KEY (client_session, authenticator);


--
-- Name: user_role_mapping constraint_c; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT constraint_c PRIMARY KEY (role_id, user_id);


--
-- Name: composite_role constraint_composite_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT constraint_composite_role PRIMARY KEY (composite, child_role);


--
-- Name: client_session_prot_mapper constraint_cs_pmp_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_prot_mapper
    ADD CONSTRAINT constraint_cs_pmp_pk PRIMARY KEY (client_session, protocol_mapper_id);


--
-- Name: identity_provider_config constraint_d; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_config
    ADD CONSTRAINT constraint_d PRIMARY KEY (identity_provider_id, name);


--
-- Name: policy_config constraint_dpc; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT constraint_dpc PRIMARY KEY (policy_id, name);


--
-- Name: realm_smtp_config constraint_e; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT constraint_e PRIMARY KEY (realm_id, name);


--
-- Name: credential constraint_f; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT constraint_f PRIMARY KEY (id);


--
-- Name: user_federation_config constraint_f9; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT constraint_f9 PRIMARY KEY (user_federation_provider_id, name);


--
-- Name: resource_server_perm_ticket constraint_fapmt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT constraint_fapmt PRIMARY KEY (id);


--
-- Name: resource_server_resource constraint_farsr; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT constraint_farsr PRIMARY KEY (id);


--
-- Name: resource_server_policy constraint_farsrp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT constraint_farsrp PRIMARY KEY (id);


--
-- Name: associated_policy constraint_farsrpap; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT constraint_farsrpap PRIMARY KEY (policy_id, associated_policy_id);


--
-- Name: resource_policy constraint_farsrpp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT constraint_farsrpp PRIMARY KEY (resource_id, policy_id);


--
-- Name: resource_server_scope constraint_farsrs; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT constraint_farsrs PRIMARY KEY (id);


--
-- Name: resource_scope constraint_farsrsp; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT constraint_farsrsp PRIMARY KEY (resource_id, scope_id);


--
-- Name: scope_policy constraint_farsrsps; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT constraint_farsrsps PRIMARY KEY (scope_id, policy_id);


--
-- Name: user_entity constraint_fb; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT constraint_fb PRIMARY KEY (id);


--
-- Name: user_federation_mapper_config constraint_fedmapper_cfg_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT constraint_fedmapper_cfg_pm PRIMARY KEY (user_federation_mapper_id, name);


--
-- Name: user_federation_mapper constraint_fedmapperpm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT constraint_fedmapperpm PRIMARY KEY (id);


--
-- Name: fed_user_consent_cl_scope constraint_fgrntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.fed_user_consent_cl_scope
    ADD CONSTRAINT constraint_fgrntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent_client_scope constraint_grntcsnt_clsc_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT constraint_grntcsnt_clsc_pm PRIMARY KEY (user_consent_id, scope_id);


--
-- Name: user_consent constraint_grntcsnt_pm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT constraint_grntcsnt_pm PRIMARY KEY (id);


--
-- Name: keycloak_group constraint_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT constraint_group PRIMARY KEY (id);


--
-- Name: group_attribute constraint_group_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT constraint_group_attribute_pk PRIMARY KEY (id);


--
-- Name: group_role_mapping constraint_group_role; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT constraint_group_role PRIMARY KEY (role_id, group_id);


--
-- Name: identity_provider_mapper constraint_idpm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT constraint_idpm PRIMARY KEY (id);


--
-- Name: idp_mapper_config constraint_idpmconfig; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT constraint_idpmconfig PRIMARY KEY (idp_mapper_id, name);


--
-- Name: migration_model constraint_migmod; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.migration_model
    ADD CONSTRAINT constraint_migmod PRIMARY KEY (id);


--
-- Name: offline_client_session constraint_offl_cl_ses_pk3; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.offline_client_session
    ADD CONSTRAINT constraint_offl_cl_ses_pk3 PRIMARY KEY (user_session_id, client_id, client_storage_provider, external_client_id, offline_flag);


--
-- Name: offline_user_session constraint_offl_us_ses_pk2; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.offline_user_session
    ADD CONSTRAINT constraint_offl_us_ses_pk2 PRIMARY KEY (user_session_id, offline_flag);


--
-- Name: protocol_mapper constraint_pcm; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT constraint_pcm PRIMARY KEY (id);


--
-- Name: protocol_mapper_config constraint_pmconfig; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT constraint_pmconfig PRIMARY KEY (protocol_mapper_id, name);


--
-- Name: realm_default_roles constraint_realm_default_roles; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_roles
    ADD CONSTRAINT constraint_realm_default_roles PRIMARY KEY (realm_id, role_id);


--
-- Name: redirect_uris constraint_redirect_uris; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT constraint_redirect_uris PRIMARY KEY (client_id, value);


--
-- Name: required_action_config constraint_req_act_cfg_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_config
    ADD CONSTRAINT constraint_req_act_cfg_pk PRIMARY KEY (required_action_id, name);


--
-- Name: required_action_provider constraint_req_act_prv_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT constraint_req_act_prv_pk PRIMARY KEY (id);


--
-- Name: user_required_action constraint_required_action; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT constraint_required_action PRIMARY KEY (required_action, user_id);


--
-- Name: resource_uris constraint_resour_uris_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT constraint_resour_uris_pk PRIMARY KEY (resource_id, value);


--
-- Name: role_attribute constraint_role_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT constraint_role_attribute_pk PRIMARY KEY (id);


--
-- Name: user_attribute constraint_user_attribute_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT constraint_user_attribute_pk PRIMARY KEY (id);


--
-- Name: user_group_membership constraint_user_group; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT constraint_user_group PRIMARY KEY (group_id, user_id);


--
-- Name: user_session_note constraint_usn_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_session_note
    ADD CONSTRAINT constraint_usn_pk PRIMARY KEY (user_session, name);


--
-- Name: web_origins constraint_web_origins; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT constraint_web_origins PRIMARY KEY (client_id, value);


--
-- Name: oskeycloak0jbosststxtable oskeycloak0jbosststxtable_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.oskeycloak0jbosststxtable
    ADD CONSTRAINT oskeycloak0jbosststxtable_pkey PRIMARY KEY (uidstring, typename, statetype);


--
-- Name: client_scope_attributes pk_cl_tmpl_attr; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT pk_cl_tmpl_attr PRIMARY KEY (scope_id, name);


--
-- Name: client_scope pk_cli_template; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT pk_cli_template PRIMARY KEY (id);


--
-- Name: databasechangeloglock pk_databasechangeloglock; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT pk_databasechangeloglock PRIMARY KEY (id);


--
-- Name: resource_server pk_resource_server; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server
    ADD CONSTRAINT pk_resource_server PRIMARY KEY (id);


--
-- Name: client_scope_role_mapping pk_template_scope; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT pk_template_scope PRIMARY KEY (scope_id, role_id);


--
-- Name: default_client_scope r_def_cli_scope_bind; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT r_def_cli_scope_bind PRIMARY KEY (realm_id, scope_id);


--
-- Name: resource_attribute res_attr_pk; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT res_attr_pk PRIMARY KEY (id);


--
-- Name: keycloak_group sibling_names; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT sibling_names UNIQUE (realm_id, parent_group, name);


--
-- Name: identity_provider uk_2daelwnibji49avxsrtuf6xj33; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT uk_2daelwnibji49avxsrtuf6xj33 UNIQUE (provider_alias, realm_id);


--
-- Name: client_default_roles uk_8aelwnibji49avxsrtuf6xjow; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_default_roles
    ADD CONSTRAINT uk_8aelwnibji49avxsrtuf6xjow UNIQUE (role_id);


--
-- Name: client uk_b71cjlbenv945rb6gcon438at; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT uk_b71cjlbenv945rb6gcon438at UNIQUE (realm_id, client_id);


--
-- Name: client_scope uk_cli_scope; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT uk_cli_scope UNIQUE (realm_id, name);


--
-- Name: user_entity uk_dykn684sl8up1crfei6eckhd7; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_dykn684sl8up1crfei6eckhd7 UNIQUE (realm_id, email_constraint);


--
-- Name: resource_server_resource uk_frsr6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5ha6 UNIQUE (name, owner, resource_server_id);


--
-- Name: resource_server_perm_ticket uk_frsr6t700s9v50bu18ws5pmt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT uk_frsr6t700s9v50bu18ws5pmt UNIQUE (owner, requester, resource_server_id, resource_id, scope_id);


--
-- Name: resource_server_policy uk_frsrpt700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT uk_frsrpt700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: resource_server_scope uk_frsrst700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT uk_frsrst700s9v50bu18ws5ha6 UNIQUE (name, resource_server_id);


--
-- Name: realm_default_roles uk_h4wpd7w4hsoolni3h0sw7btje; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_roles
    ADD CONSTRAINT uk_h4wpd7w4hsoolni3h0sw7btje UNIQUE (role_id);


--
-- Name: user_consent uk_jkuwuvd56ontgsuhogm8uewrt; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT uk_jkuwuvd56ontgsuhogm8uewrt UNIQUE (client_id, client_storage_provider, external_client_id, user_id);


--
-- Name: realm uk_orvsdmla56612eaefiq6wl5oi; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT uk_orvsdmla56612eaefiq6wl5oi UNIQUE (name);


--
-- Name: user_entity uk_ru8tt6t700s9v50bu18ws5ha6; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_entity
    ADD CONSTRAINT uk_ru8tt6t700s9v50bu18ws5ha6 UNIQUE (realm_id, username);


--
-- Name: idx_assoc_pol_assoc_pol_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_assoc_pol_assoc_pol_id ON public.associated_policy USING btree (associated_policy_id);


--
-- Name: idx_auth_config_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_config_realm ON public.authenticator_config USING btree (realm_id);


--
-- Name: idx_auth_exec_flow; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_exec_flow ON public.authentication_execution USING btree (flow_id);


--
-- Name: idx_auth_exec_realm_flow; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_exec_realm_flow ON public.authentication_execution USING btree (realm_id, flow_id);


--
-- Name: idx_auth_flow_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_auth_flow_realm ON public.authentication_flow USING btree (realm_id);


--
-- Name: idx_cl_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_cl_clscope ON public.client_scope_client USING btree (scope_id);


--
-- Name: idx_client_def_roles_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_def_roles_client ON public.client_default_roles USING btree (client_id);


--
-- Name: idx_client_id; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_id ON public.client USING btree (client_id);


--
-- Name: idx_client_init_acc_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_init_acc_realm ON public.client_initial_access USING btree (realm_id);


--
-- Name: idx_client_session_session; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_session_session ON public.client_session USING btree (session_id);


--
-- Name: idx_clscope_attrs; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_attrs ON public.client_scope_attributes USING btree (scope_id);


--
-- Name: idx_clscope_cl; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_cl ON public.client_scope_client USING btree (client_id);


--
-- Name: idx_clscope_protmap; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_protmap ON public.protocol_mapper USING btree (client_scope_id);


--
-- Name: idx_clscope_role; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_clscope_role ON public.client_scope_role_mapping USING btree (scope_id);


--
-- Name: idx_compo_config_compo; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_compo_config_compo ON public.component_config USING btree (component_id);


--
-- Name: idx_component_provider_type; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_component_provider_type ON public.component USING btree (provider_type);


--
-- Name: idx_component_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_component_realm ON public.component USING btree (realm_id);


--
-- Name: idx_composite; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_composite ON public.composite_role USING btree (composite);


--
-- Name: idx_composite_child; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_composite_child ON public.composite_role USING btree (child_role);


--
-- Name: idx_defcls_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_defcls_realm ON public.default_client_scope USING btree (realm_id);


--
-- Name: idx_defcls_scope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_defcls_scope ON public.default_client_scope USING btree (scope_id);


--
-- Name: idx_event_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_event_time ON public.event_entity USING btree (realm_id, event_time);


--
-- Name: idx_fedidentity_feduser; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fedidentity_feduser ON public.federated_identity USING btree (federated_user_id);


--
-- Name: idx_fedidentity_user; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fedidentity_user ON public.federated_identity USING btree (user_id);


--
-- Name: idx_fu_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_attribute ON public.fed_user_attribute USING btree (user_id, realm_id, name);


--
-- Name: idx_fu_cnsnt_ext; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_cnsnt_ext ON public.fed_user_consent USING btree (user_id, client_storage_provider, external_client_id);


--
-- Name: idx_fu_consent; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_consent ON public.fed_user_consent USING btree (user_id, client_id);


--
-- Name: idx_fu_consent_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_consent_ru ON public.fed_user_consent USING btree (realm_id, user_id);


--
-- Name: idx_fu_credential; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_credential ON public.fed_user_credential USING btree (user_id, type);


--
-- Name: idx_fu_credential_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_credential_ru ON public.fed_user_credential USING btree (realm_id, user_id);


--
-- Name: idx_fu_group_membership; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_group_membership ON public.fed_user_group_membership USING btree (user_id, group_id);


--
-- Name: idx_fu_group_membership_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_group_membership_ru ON public.fed_user_group_membership USING btree (realm_id, user_id);


--
-- Name: idx_fu_required_action; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_required_action ON public.fed_user_required_action USING btree (user_id, required_action);


--
-- Name: idx_fu_required_action_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_required_action_ru ON public.fed_user_required_action USING btree (realm_id, user_id);


--
-- Name: idx_fu_role_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_role_mapping ON public.fed_user_role_mapping USING btree (user_id, role_id);


--
-- Name: idx_fu_role_mapping_ru; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_fu_role_mapping_ru ON public.fed_user_role_mapping USING btree (realm_id, user_id);


--
-- Name: idx_group_attr_group; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_attr_group ON public.group_attribute USING btree (group_id);


--
-- Name: idx_group_role_mapp_group; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_group_role_mapp_group ON public.group_role_mapping USING btree (group_id);


--
-- Name: idx_id_prov_mapp_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_id_prov_mapp_realm ON public.identity_provider_mapper USING btree (realm_id);


--
-- Name: idx_ident_prov_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_ident_prov_realm ON public.identity_provider USING btree (realm_id);


--
-- Name: idx_keycloak_role_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_keycloak_role_client ON public.keycloak_role USING btree (client);


--
-- Name: idx_keycloak_role_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_keycloak_role_realm ON public.keycloak_role USING btree (realm);


--
-- Name: idx_offline_uss_createdon; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_createdon ON public.offline_user_session USING btree (created_on);


--
-- Name: idx_protocol_mapper_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_protocol_mapper_client ON public.protocol_mapper USING btree (client_id);


--
-- Name: idx_realm_attr_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_attr_realm ON public.realm_attribute USING btree (realm_id);


--
-- Name: idx_realm_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_clscope ON public.client_scope USING btree (realm_id);


--
-- Name: idx_realm_def_grp_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_def_grp_realm ON public.realm_default_groups USING btree (realm_id);


--
-- Name: idx_realm_def_roles_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_def_roles_realm ON public.realm_default_roles USING btree (realm_id);


--
-- Name: idx_realm_evt_list_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_evt_list_realm ON public.realm_events_listeners USING btree (realm_id);


--
-- Name: idx_realm_evt_types_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_evt_types_realm ON public.realm_enabled_event_types USING btree (realm_id);


--
-- Name: idx_realm_master_adm_cli; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_master_adm_cli ON public.realm USING btree (master_admin_client);


--
-- Name: idx_realm_supp_local_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_realm_supp_local_realm ON public.realm_supported_locales USING btree (realm_id);


--
-- Name: idx_redir_uri_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_redir_uri_client ON public.redirect_uris USING btree (client_id);


--
-- Name: idx_req_act_prov_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_req_act_prov_realm ON public.required_action_provider USING btree (realm_id);


--
-- Name: idx_res_policy_policy; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_policy_policy ON public.resource_policy USING btree (policy_id);


--
-- Name: idx_res_scope_scope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_scope_scope ON public.resource_scope USING btree (scope_id);


--
-- Name: idx_res_serv_pol_res_serv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_serv_pol_res_serv ON public.resource_server_policy USING btree (resource_server_id);


--
-- Name: idx_res_srv_res_res_srv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_srv_res_res_srv ON public.resource_server_resource USING btree (resource_server_id);


--
-- Name: idx_res_srv_scope_res_srv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_res_srv_scope_res_srv ON public.resource_server_scope USING btree (resource_server_id);


--
-- Name: idx_role_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_role_attribute ON public.role_attribute USING btree (role_id);


--
-- Name: idx_role_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_role_clscope ON public.client_scope_role_mapping USING btree (role_id);


--
-- Name: idx_scope_mapping_role; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_scope_mapping_role ON public.scope_mapping USING btree (role_id);


--
-- Name: idx_scope_policy_policy; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_scope_policy_policy ON public.scope_policy USING btree (policy_id);


--
-- Name: idx_update_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_update_time ON public.migration_model USING btree (update_time);


--
-- Name: idx_us_sess_id_on_cl_sess; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_us_sess_id_on_cl_sess ON public.offline_client_session USING btree (user_session_id);


--
-- Name: idx_usconsent_clscope; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usconsent_clscope ON public.user_consent_client_scope USING btree (user_consent_id);


--
-- Name: idx_user_attribute; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_attribute ON public.user_attribute USING btree (user_id);


--
-- Name: idx_user_consent; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_consent ON public.user_consent USING btree (user_id);


--
-- Name: idx_user_credential; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_credential ON public.credential USING btree (user_id);


--
-- Name: idx_user_email; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_email ON public.user_entity USING btree (email);


--
-- Name: idx_user_group_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_group_mapping ON public.user_group_membership USING btree (user_id);


--
-- Name: idx_user_reqactions; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_reqactions ON public.user_required_action USING btree (user_id);


--
-- Name: idx_user_role_mapping; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_role_mapping ON public.user_role_mapping USING btree (user_id);


--
-- Name: idx_usr_fed_map_fed_prv; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_map_fed_prv ON public.user_federation_mapper USING btree (federation_provider_id);


--
-- Name: idx_usr_fed_map_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_map_realm ON public.user_federation_mapper USING btree (realm_id);


--
-- Name: idx_usr_fed_prv_realm; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_usr_fed_prv_realm ON public.user_federation_provider USING btree (realm_id);


--
-- Name: idx_web_orig_client; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_web_orig_client ON public.web_origins USING btree (client_id);


--
-- Name: client_session_auth_status auth_status_constraint; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_auth_status
    ADD CONSTRAINT auth_status_constraint FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: identity_provider fk2b4ebc52ae5c3b34; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider
    ADD CONSTRAINT fk2b4ebc52ae5c3b34 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_attributes fk3c47c64beacca966; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_attributes
    ADD CONSTRAINT fk3c47c64beacca966 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: federated_identity fk404288b92ef007a6; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.federated_identity
    ADD CONSTRAINT fk404288b92ef007a6 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_node_registrations fk4129723ba992f594; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_node_registrations
    ADD CONSTRAINT fk4129723ba992f594 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: client_session_note fk5edfb00ff51c2736; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_note
    ADD CONSTRAINT fk5edfb00ff51c2736 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: user_session_note fk5edfb00ff51d3472; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_session_note
    ADD CONSTRAINT fk5edfb00ff51d3472 FOREIGN KEY (user_session) REFERENCES public.user_session(id);


--
-- Name: client_session_role fk_11b7sgqw18i532811v7o2dv76; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_role
    ADD CONSTRAINT fk_11b7sgqw18i532811v7o2dv76 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: redirect_uris fk_1burs8pb4ouj97h5wuppahv9f; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.redirect_uris
    ADD CONSTRAINT fk_1burs8pb4ouj97h5wuppahv9f FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: user_federation_provider fk_1fj32f6ptolw2qy60cd8n01e8; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_provider
    ADD CONSTRAINT fk_1fj32f6ptolw2qy60cd8n01e8 FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_session_prot_mapper fk_33a8sgqw18i532811v7o2dk89; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session_prot_mapper
    ADD CONSTRAINT fk_33a8sgqw18i532811v7o2dk89 FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: realm_required_credential fk_5hg65lybevavkqfki3kponh9v; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_required_credential
    ADD CONSTRAINT fk_5hg65lybevavkqfki3kponh9v FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_attribute fk_5hrm2vlf9ql5fu022kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu022kqepovbr FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: user_attribute fk_5hrm2vlf9ql5fu043kqepovbr; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_attribute
    ADD CONSTRAINT fk_5hrm2vlf9ql5fu043kqepovbr FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: user_required_action fk_6qj3w1jw9cvafhe19bwsiuvmd; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_required_action
    ADD CONSTRAINT fk_6qj3w1jw9cvafhe19bwsiuvmd FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: keycloak_role fk_6vyqfe4cn4wlq8r6kt5vdsj5c; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT fk_6vyqfe4cn4wlq8r6kt5vdsj5c FOREIGN KEY (realm) REFERENCES public.realm(id);


--
-- Name: realm_smtp_config fk_70ej8xdxgxd0b9hh6180irr0o; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_smtp_config
    ADD CONSTRAINT fk_70ej8xdxgxd0b9hh6180irr0o FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_default_roles fk_8aelwnibji49avxsrtuf6xjow; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_default_roles
    ADD CONSTRAINT fk_8aelwnibji49avxsrtuf6xjow FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_attribute fk_8shxd6l3e9atqukacxgpffptw; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_attribute
    ADD CONSTRAINT fk_8shxd6l3e9atqukacxgpffptw FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: composite_role fk_a63wvekftu8jo1pnj81e7mce2; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_a63wvekftu8jo1pnj81e7mce2 FOREIGN KEY (composite) REFERENCES public.keycloak_role(id);


--
-- Name: authentication_execution fk_auth_exec_flow; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_flow FOREIGN KEY (flow_id) REFERENCES public.authentication_flow(id);


--
-- Name: authentication_execution fk_auth_exec_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_execution
    ADD CONSTRAINT fk_auth_exec_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authentication_flow fk_auth_flow_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authentication_flow
    ADD CONSTRAINT fk_auth_flow_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: authenticator_config fk_auth_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.authenticator_config
    ADD CONSTRAINT fk_auth_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: client_session fk_b4ao2vcvat6ukau74wbwtfqo1; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_session
    ADD CONSTRAINT fk_b4ao2vcvat6ukau74wbwtfqo1 FOREIGN KEY (session_id) REFERENCES public.user_session(id);


--
-- Name: user_role_mapping fk_c4fqv34p1mbylloxang7b1q3l; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_role_mapping
    ADD CONSTRAINT fk_c4fqv34p1mbylloxang7b1q3l FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: client_scope_client fk_c_cli_scope_client; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT fk_c_cli_scope_client FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: client_scope_client fk_c_cli_scope_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_client
    ADD CONSTRAINT fk_c_cli_scope_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope_attributes fk_cl_scope_attr_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT fk_cl_scope_attr_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope_role_mapping fk_cl_scope_rm_role; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_role FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: client_scope_role_mapping fk_cl_scope_rm_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_role_mapping
    ADD CONSTRAINT fk_cl_scope_rm_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_user_session_note fk_cl_usr_ses_note; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_user_session_note
    ADD CONSTRAINT fk_cl_usr_ses_note FOREIGN KEY (client_session) REFERENCES public.client_session(id);


--
-- Name: protocol_mapper fk_cli_scope_mapper; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_cli_scope_mapper FOREIGN KEY (client_scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_initial_access fk_client_init_acc_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_initial_access
    ADD CONSTRAINT fk_client_init_acc_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: component_config fk_component_config; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component_config
    ADD CONSTRAINT fk_component_config FOREIGN KEY (component_id) REFERENCES public.component(id);


--
-- Name: component fk_component_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.component
    ADD CONSTRAINT fk_component_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_default_groups fk_def_groups_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: realm_default_groups fk_def_groups_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_default_roles fk_evudb1ppw84oxfax2drs03icc; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_roles
    ADD CONSTRAINT fk_evudb1ppw84oxfax2drs03icc FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_mapper_config fk_fedmapper_cfg; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper_config
    ADD CONSTRAINT fk_fedmapper_cfg FOREIGN KEY (user_federation_mapper_id) REFERENCES public.user_federation_mapper(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_fedprv; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_fedprv FOREIGN KEY (federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: user_federation_mapper fk_fedmapperpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_mapper
    ADD CONSTRAINT fk_fedmapperpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: associated_policy fk_frsr5s213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsr5s213xcx4wnkog82ssrfy FOREIGN KEY (associated_policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrasp13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrasp13xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog82sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82sspmt FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_resource fk_frsrho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_resource
    ADD CONSTRAINT fk_frsrho213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog83sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog83sspmt FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_server_perm_ticket fk_frsrho213xcx4wnkog84sspmt; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrho213xcx4wnkog84sspmt FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: associated_policy fk_frsrpas14xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.associated_policy
    ADD CONSTRAINT fk_frsrpas14xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: scope_policy fk_frsrpass3xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_policy
    ADD CONSTRAINT fk_frsrpass3xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_perm_ticket fk_frsrpo2128cx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_perm_ticket
    ADD CONSTRAINT fk_frsrpo2128cx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_server_policy fk_frsrpo213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_policy
    ADD CONSTRAINT fk_frsrpo213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: resource_scope fk_frsrpos13xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrpos13xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpos53xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpos53xcx4wnkog82ssrfy FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: resource_policy fk_frsrpp213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_policy
    ADD CONSTRAINT fk_frsrpp213xcx4wnkog82ssrfy FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: resource_scope fk_frsrps213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_scope
    ADD CONSTRAINT fk_frsrps213xcx4wnkog82ssrfy FOREIGN KEY (scope_id) REFERENCES public.resource_server_scope(id);


--
-- Name: resource_server_scope fk_frsrso213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_server_scope
    ADD CONSTRAINT fk_frsrso213xcx4wnkog82ssrfy FOREIGN KEY (resource_server_id) REFERENCES public.resource_server(id);


--
-- Name: composite_role fk_gr7thllb9lu8q4vqa4524jjy8; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.composite_role
    ADD CONSTRAINT fk_gr7thllb9lu8q4vqa4524jjy8 FOREIGN KEY (child_role) REFERENCES public.keycloak_role(id);


--
-- Name: user_consent_client_scope fk_grntcsnt_clsc_usc; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent_client_scope
    ADD CONSTRAINT fk_grntcsnt_clsc_usc FOREIGN KEY (user_consent_id) REFERENCES public.user_consent(id);


--
-- Name: user_consent fk_grntcsnt_user; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_consent
    ADD CONSTRAINT fk_grntcsnt_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: group_attribute fk_group_attribute_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_attribute
    ADD CONSTRAINT fk_group_attribute_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: keycloak_group fk_group_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_group
    ADD CONSTRAINT fk_group_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: group_role_mapping fk_group_role_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


--
-- Name: group_role_mapping fk_group_role_role; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_role FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_default_roles fk_h4wpd7w4hsoolni3h0sw7btje; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_roles
    ADD CONSTRAINT fk_h4wpd7w4hsoolni3h0sw7btje FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_enabled_event_types fk_h846o4h0w8epx5nwedrf5y69j; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_enabled_event_types
    ADD CONSTRAINT fk_h846o4h0w8epx5nwedrf5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: realm_events_listeners fk_h846o4h0w8epx5nxev9f5y69j; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_events_listeners
    ADD CONSTRAINT fk_h846o4h0w8epx5nxev9f5y69j FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: identity_provider_mapper fk_idpm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.identity_provider_mapper
    ADD CONSTRAINT fk_idpm_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: idp_mapper_config fk_idpmconfig; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.idp_mapper_config
    ADD CONSTRAINT fk_idpmconfig FOREIGN KEY (idp_mapper_id) REFERENCES public.identity_provider_mapper(id);


--
-- Name: keycloak_role fk_kjho5le2c0ral09fl8cm9wfw9; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.keycloak_role
    ADD CONSTRAINT fk_kjho5le2c0ral09fl8cm9wfw9 FOREIGN KEY (client) REFERENCES public.client(id);


--
-- Name: web_origins fk_lojpho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: client_default_roles fk_nuilts7klwqw2h8m2b5joytky; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_default_roles
    ADD CONSTRAINT fk_nuilts7klwqw2h8m2b5joytky FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: scope_mapping fk_ouse064plmlr732lxjcn1q5f1; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1 FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: scope_mapping fk_p3rh9grku11kqfrs4fltt7rnq; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_p3rh9grku11kqfrs4fltt7rnq FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: client fk_p56ctinxxb9gsk57fo49f9tac; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client
    ADD CONSTRAINT fk_p56ctinxxb9gsk57fo49f9tac FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: protocol_mapper fk_pcm_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper
    ADD CONSTRAINT fk_pcm_realm FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: credential fk_pfyr0glasqyl0dei3kl69r6v0; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.credential
    ADD CONSTRAINT fk_pfyr0glasqyl0dei3kl69r6v0 FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: protocol_mapper_config fk_pmconfig; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.protocol_mapper_config
    ADD CONSTRAINT fk_pmconfig FOREIGN KEY (protocol_mapper_id) REFERENCES public.protocol_mapper(id);


--
-- Name: default_client_scope fk_r_def_cli_scope_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: default_client_scope fk_r_def_cli_scope_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.default_client_scope
    ADD CONSTRAINT fk_r_def_cli_scope_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


--
-- Name: client_scope fk_realm_cli_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope
    ADD CONSTRAINT fk_realm_cli_scope FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: required_action_provider fk_req_act_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.required_action_provider
    ADD CONSTRAINT fk_req_act_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: resource_uris fk_resource_server_uris; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.resource_uris
    ADD CONSTRAINT fk_resource_server_uris FOREIGN KEY (resource_id) REFERENCES public.resource_server_resource(id);


--
-- Name: role_attribute fk_role_attribute_id; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.role_attribute
    ADD CONSTRAINT fk_role_attribute_id FOREIGN KEY (role_id) REFERENCES public.keycloak_role(id);


--
-- Name: realm_supported_locales fk_supported_locales_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_supported_locales
    ADD CONSTRAINT fk_supported_locales_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


--
-- Name: user_federation_config fk_t13hpu1j94r2ebpekr39x5eu5; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_federation_config
    ADD CONSTRAINT fk_t13hpu1j94r2ebpekr39x5eu5 FOREIGN KEY (user_federation_provider_id) REFERENCES public.user_federation_provider(id);


--
-- Name: realm fk_traf444kk6qrkms7n56aiwq5y; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm
    ADD CONSTRAINT fk_traf444kk6qrkms7n56aiwq5y FOREIGN KEY (master_admin_client) REFERENCES public.client(id);


--
-- Name: user_group_membership fk_user_group_user; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.user_group_membership
    ADD CONSTRAINT fk_user_group_user FOREIGN KEY (user_id) REFERENCES public.user_entity(id);


--
-- Name: policy_config fkdc34197cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.policy_config
    ADD CONSTRAINT fkdc34197cf864c4e43 FOREIGN KEY (policy_id) REFERENCES public.resource_server_policy(id);


--
-- Name: identity_provider_config fkdc4897cf864c4e43; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
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

