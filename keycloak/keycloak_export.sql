--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12
-- Dumped by pg_dump version 10.12

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
ALTER TABLE IF EXISTS ONLY public.osssotest1t9vgmjbosststxtable DROP CONSTRAINT IF EXISTS osssotest1t9vgmjbosststxtable_pkey;
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
DROP TABLE IF EXISTS public.osssotest1t9vgmjbosststxtable;
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
-- Name: osssotest1t9vgmjbosststxtable; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.osssotest1t9vgmjbosststxtable (
    statetype integer NOT NULL,
    hidden integer NOT NULL,
    typename character varying(255) NOT NULL,
    uidstring character varying(255) NOT NULL,
    objectstate bytea
);


ALTER TABLE public.osssotest1t9vgmjbosststxtable OWNER TO keycloak;

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

COPY public.admin_event_entity (id, admin_event_time, realm_id, operation_type, auth_realm_id, auth_client_id, auth_user_id, ip_address, resource_path, representation, error, resource_type) FROM stdin;
\.


--
-- Data for Name: associated_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.associated_policy (policy_id, associated_policy_id) FROM stdin;
\.


--
-- Data for Name: authentication_execution; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_execution (id, alias, authenticator, realm_id, flow_id, requirement, priority, authenticator_flow, auth_flow_id, auth_config) FROM stdin;
ed5bf7b4-1ff3-453b-ae4b-5854ff330eef	\N	auth-cookie	master	ee0e5ee3-2b74-4ccb-9da5-3e78c7931bcc	2	10	f	\N	\N
86b5ec37-31c7-4efd-985d-9e2cc837598e	\N	auth-spnego	master	ee0e5ee3-2b74-4ccb-9da5-3e78c7931bcc	3	20	f	\N	\N
da5a77c2-a6c9-4c16-b796-aa95b2aaf4a0	\N	identity-provider-redirector	master	ee0e5ee3-2b74-4ccb-9da5-3e78c7931bcc	2	25	f	\N	\N
4f6cb984-3121-4ee7-a0cf-fa13dccc8a28	\N	\N	master	ee0e5ee3-2b74-4ccb-9da5-3e78c7931bcc	2	30	t	4bcd3e3b-2a04-406c-8ffc-11d367aa35b5	\N
ca2ccd38-1e41-47f3-bdb2-72692df98b09	\N	auth-username-password-form	master	4bcd3e3b-2a04-406c-8ffc-11d367aa35b5	0	10	f	\N	\N
4a195391-4fa9-4668-8e30-5c911d3d8f4e	\N	\N	master	4bcd3e3b-2a04-406c-8ffc-11d367aa35b5	1	20	t	2a3dd288-2389-43b6-83c7-46a647e18331	\N
ee16b165-d2f6-4dfc-b8a3-332126feb9a2	\N	conditional-user-configured	master	2a3dd288-2389-43b6-83c7-46a647e18331	0	10	f	\N	\N
af580463-7af2-4797-b8fd-1de9fce692c4	\N	auth-otp-form	master	2a3dd288-2389-43b6-83c7-46a647e18331	0	20	f	\N	\N
65fc809a-0af2-4e8a-923a-8b11beda4d05	\N	direct-grant-validate-username	master	dde5e62a-65b2-4179-9b59-54113df828db	0	10	f	\N	\N
fd679c1d-bec6-4d1b-a450-568f6de8402e	\N	direct-grant-validate-password	master	dde5e62a-65b2-4179-9b59-54113df828db	0	20	f	\N	\N
d59e2e77-b5dd-4a62-8a33-c3939c377abc	\N	\N	master	dde5e62a-65b2-4179-9b59-54113df828db	1	30	t	6a2893e8-4e48-4c7f-b2e2-5f8bd80ac924	\N
335a7bc5-3fea-45e3-803c-7b143c2c6963	\N	conditional-user-configured	master	6a2893e8-4e48-4c7f-b2e2-5f8bd80ac924	0	10	f	\N	\N
8e191689-8af4-4544-9a1f-b267b074035f	\N	direct-grant-validate-otp	master	6a2893e8-4e48-4c7f-b2e2-5f8bd80ac924	0	20	f	\N	\N
4fb7de8d-1e4f-4347-8ef9-513bfae8d082	\N	registration-page-form	master	e4b65824-59c6-4b76-8a44-f7977e005969	0	10	t	1f095aba-8df5-4559-b528-fe86b87c96c3	\N
2c74c63a-ed59-4a67-a022-145df47d6db8	\N	registration-user-creation	master	1f095aba-8df5-4559-b528-fe86b87c96c3	0	20	f	\N	\N
d9311176-df42-4326-afc5-fd070bcac7c2	\N	registration-profile-action	master	1f095aba-8df5-4559-b528-fe86b87c96c3	0	40	f	\N	\N
8004135a-4832-477a-858d-27fb5537a080	\N	registration-password-action	master	1f095aba-8df5-4559-b528-fe86b87c96c3	0	50	f	\N	\N
40324be0-250b-4c6d-a2b1-fa300325ab47	\N	registration-recaptcha-action	master	1f095aba-8df5-4559-b528-fe86b87c96c3	3	60	f	\N	\N
959c7dd8-9ba9-4e43-aa63-388fce991190	\N	reset-credentials-choose-user	master	6b01f4e8-98f8-4f88-9b50-1a033141075f	0	10	f	\N	\N
e1c231ad-dabd-4722-be03-298e1f8e2f02	\N	reset-credential-email	master	6b01f4e8-98f8-4f88-9b50-1a033141075f	0	20	f	\N	\N
b8c59ec1-2052-4a24-81c4-b2cc1568ad68	\N	reset-password	master	6b01f4e8-98f8-4f88-9b50-1a033141075f	0	30	f	\N	\N
709c56df-be8b-429b-b0aa-ff6b1ab3eed9	\N	\N	master	6b01f4e8-98f8-4f88-9b50-1a033141075f	1	40	t	6d55572a-b4ce-4404-8630-c42e13cd3fc7	\N
2b53ece0-b835-417f-a924-12556a0c70ce	\N	conditional-user-configured	master	6d55572a-b4ce-4404-8630-c42e13cd3fc7	0	10	f	\N	\N
205a1109-f86b-49c9-93c6-b65ffdbca025	\N	reset-otp	master	6d55572a-b4ce-4404-8630-c42e13cd3fc7	0	20	f	\N	\N
40cb966b-f0bc-43bb-b594-d14ce16c520a	\N	client-secret	master	867db14f-74ed-430b-972b-36d5c16fd6ee	2	10	f	\N	\N
cb432cf2-b168-42f7-bb09-9b3db5d1cf5f	\N	client-jwt	master	867db14f-74ed-430b-972b-36d5c16fd6ee	2	20	f	\N	\N
cb49e0d1-d1f0-496a-9473-039db7426e29	\N	client-secret-jwt	master	867db14f-74ed-430b-972b-36d5c16fd6ee	2	30	f	\N	\N
16d8dfea-8f60-47f2-a9d1-7026bc71f393	\N	client-x509	master	867db14f-74ed-430b-972b-36d5c16fd6ee	2	40	f	\N	\N
dc2df726-bbdf-406a-b731-8b54594b2c1a	\N	idp-review-profile	master	8f99cadb-7587-4503-be45-fcca82616cc0	0	10	f	\N	a80d5d5b-0b7a-404e-8fbb-53b0a4a56c2b
6ed3a38f-4a9a-4221-b310-7368a5787d27	\N	\N	master	8f99cadb-7587-4503-be45-fcca82616cc0	0	20	t	feca3ede-884c-42aa-bc97-570f19414aa9	\N
03614aec-8f19-4f2f-87fb-2e43775178dc	\N	idp-create-user-if-unique	master	feca3ede-884c-42aa-bc97-570f19414aa9	2	10	f	\N	cdd5e5b4-d6ed-4d1f-8c59-473081ae00ef
fc417932-8722-464f-a4c4-b85b6ef67215	\N	\N	master	feca3ede-884c-42aa-bc97-570f19414aa9	2	20	t	6d4199ad-8005-47c7-8868-6e20ea397c3a	\N
ccd5bf29-10eb-4d96-bfa6-c0c74f57da0a	\N	idp-confirm-link	master	6d4199ad-8005-47c7-8868-6e20ea397c3a	0	10	f	\N	\N
8824608a-ee78-4666-854b-a9304d30c7e2	\N	\N	master	6d4199ad-8005-47c7-8868-6e20ea397c3a	0	20	t	79fad037-6609-4921-8dd6-b705071ba883	\N
cc859514-51a8-4f05-a2c7-dedd388ae312	\N	idp-email-verification	master	79fad037-6609-4921-8dd6-b705071ba883	2	10	f	\N	\N
8c88e704-83aa-4db7-9e0b-05fa33f6abeb	\N	\N	master	79fad037-6609-4921-8dd6-b705071ba883	2	20	t	a168834e-bbbd-4f1b-9d7a-be2e72d92e50	\N
054f6925-2af1-49b8-9ce3-fef32dffc350	\N	idp-username-password-form	master	a168834e-bbbd-4f1b-9d7a-be2e72d92e50	0	10	f	\N	\N
67ca7c44-978f-47d5-8915-05b3b2719ed3	\N	\N	master	a168834e-bbbd-4f1b-9d7a-be2e72d92e50	1	20	t	7bcb24e4-78ed-433b-8cec-f950fa8d5d8c	\N
1dcfde14-b1d6-487c-bccb-42d7b39b3f66	\N	conditional-user-configured	master	7bcb24e4-78ed-433b-8cec-f950fa8d5d8c	0	10	f	\N	\N
488d2644-a5b2-45fd-86e4-9b769ef48b40	\N	auth-otp-form	master	7bcb24e4-78ed-433b-8cec-f950fa8d5d8c	0	20	f	\N	\N
b06a097d-bf62-4c01-a0d4-0f897262c75a	\N	http-basic-authenticator	master	e78f4d38-1fec-44f3-900c-d72e2b60ee6d	0	10	f	\N	\N
87ce2fe2-cd79-41c1-9565-12525e08d5da	\N	docker-http-basic-authenticator	master	6e8a8b22-a640-43ff-8ce0-041d5669c41c	0	10	f	\N	\N
2dd88d44-9d76-490d-979f-41e0c761ceb9	\N	no-cookie-redirect	master	d7760ac8-bcb7-43af-8115-87ac5e122543	0	10	f	\N	\N
7481500a-98b9-406e-bcfe-ed55339d0f23	\N	\N	master	d7760ac8-bcb7-43af-8115-87ac5e122543	0	20	t	2ad70ea5-23a2-49c3-9112-fab451dfe645	\N
b4955049-2c87-4400-b9e6-e6e205c29516	\N	basic-auth	master	2ad70ea5-23a2-49c3-9112-fab451dfe645	0	10	f	\N	\N
a28e4650-7d79-426d-b3e4-cb90b3866adc	\N	basic-auth-otp	master	2ad70ea5-23a2-49c3-9112-fab451dfe645	3	20	f	\N	\N
a2276238-0824-4994-ac0c-ec872a55b8ec	\N	auth-spnego	master	2ad70ea5-23a2-49c3-9112-fab451dfe645	3	30	f	\N	\N
ab674d5e-847b-42bf-8e73-94f6bd76480f	\N	auth-cookie	ffd9d216-cccd-4637-b19a-78f9c935a3de	753d9c2d-47d1-4a4f-9c11-5f98c4c96718	2	10	f	\N	\N
ef8fc6e6-796f-4d3d-9b37-120d9560af8f	\N	auth-spnego	ffd9d216-cccd-4637-b19a-78f9c935a3de	753d9c2d-47d1-4a4f-9c11-5f98c4c96718	3	20	f	\N	\N
83695f26-325d-4c0a-bfad-70e0c45fa9c3	\N	identity-provider-redirector	ffd9d216-cccd-4637-b19a-78f9c935a3de	753d9c2d-47d1-4a4f-9c11-5f98c4c96718	2	25	f	\N	\N
ed567e0e-4eae-4c9f-927b-aa2f43ca3a4d	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	753d9c2d-47d1-4a4f-9c11-5f98c4c96718	2	30	t	0b8298ae-30ab-4556-89ef-8e3396447211	\N
74fc7d86-4d97-4133-9e06-96e36e4458a3	\N	auth-username-password-form	ffd9d216-cccd-4637-b19a-78f9c935a3de	0b8298ae-30ab-4556-89ef-8e3396447211	0	10	f	\N	\N
042be022-c08d-4dff-a038-2051f1bd1a7d	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	0b8298ae-30ab-4556-89ef-8e3396447211	1	20	t	5a8d9cbb-c22b-48b6-83be-7e392b65ed00	\N
7a5a52f0-1481-414a-baf0-117d8731ec04	\N	conditional-user-configured	ffd9d216-cccd-4637-b19a-78f9c935a3de	5a8d9cbb-c22b-48b6-83be-7e392b65ed00	0	10	f	\N	\N
9f920db7-eef3-40c2-b8f4-bd977f7c5901	\N	auth-otp-form	ffd9d216-cccd-4637-b19a-78f9c935a3de	5a8d9cbb-c22b-48b6-83be-7e392b65ed00	0	20	f	\N	\N
d418d19b-d43f-4241-906a-aaff390d2a34	\N	direct-grant-validate-username	ffd9d216-cccd-4637-b19a-78f9c935a3de	7a5aded7-2504-4673-a4c5-d89aa230bbaa	0	10	f	\N	\N
6024e3e1-f9d9-4e01-a4d1-6909dfcf0469	\N	direct-grant-validate-password	ffd9d216-cccd-4637-b19a-78f9c935a3de	7a5aded7-2504-4673-a4c5-d89aa230bbaa	0	20	f	\N	\N
018042b9-c724-4928-a300-63ec3594b296	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	7a5aded7-2504-4673-a4c5-d89aa230bbaa	1	30	t	3fe16360-b903-4f2b-ac1c-84c66a50a0e7	\N
af661e1f-1858-4876-9846-95caf0ae5774	\N	conditional-user-configured	ffd9d216-cccd-4637-b19a-78f9c935a3de	3fe16360-b903-4f2b-ac1c-84c66a50a0e7	0	10	f	\N	\N
ca8fb8e2-09fa-409e-86dd-bd276551c292	\N	direct-grant-validate-otp	ffd9d216-cccd-4637-b19a-78f9c935a3de	3fe16360-b903-4f2b-ac1c-84c66a50a0e7	0	20	f	\N	\N
323e01cf-8c17-4fd1-bad7-325afda2cafd	\N	registration-page-form	ffd9d216-cccd-4637-b19a-78f9c935a3de	b2b5ca63-1703-485e-bc0a-7ee4a459fba3	0	10	t	4ad4f54f-c4df-497d-846a-e138be88b00c	\N
4567a03b-c973-41f5-800b-34d647e6ec8f	\N	registration-user-creation	ffd9d216-cccd-4637-b19a-78f9c935a3de	4ad4f54f-c4df-497d-846a-e138be88b00c	0	20	f	\N	\N
ec140db3-a1b8-4c0f-b116-40185b93059a	\N	registration-profile-action	ffd9d216-cccd-4637-b19a-78f9c935a3de	4ad4f54f-c4df-497d-846a-e138be88b00c	0	40	f	\N	\N
4ad1b8a0-f1f9-495e-ae9f-daa8936098f3	\N	registration-password-action	ffd9d216-cccd-4637-b19a-78f9c935a3de	4ad4f54f-c4df-497d-846a-e138be88b00c	0	50	f	\N	\N
a59cbd18-96fe-42ec-93f3-768501430b5a	\N	registration-recaptcha-action	ffd9d216-cccd-4637-b19a-78f9c935a3de	4ad4f54f-c4df-497d-846a-e138be88b00c	3	60	f	\N	\N
596d543e-f758-44fb-b22d-3ed6bee5e070	\N	reset-credentials-choose-user	ffd9d216-cccd-4637-b19a-78f9c935a3de	5e44d540-f388-465e-b9a7-f0c4f74b74a6	0	10	f	\N	\N
b0d9483a-0f14-494d-acd1-ea591f683635	\N	reset-credential-email	ffd9d216-cccd-4637-b19a-78f9c935a3de	5e44d540-f388-465e-b9a7-f0c4f74b74a6	0	20	f	\N	\N
a8770871-2190-458c-8e70-afdf13e62391	\N	reset-password	ffd9d216-cccd-4637-b19a-78f9c935a3de	5e44d540-f388-465e-b9a7-f0c4f74b74a6	0	30	f	\N	\N
f6d05dc5-449b-4ae9-90ac-ff37d4261602	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	5e44d540-f388-465e-b9a7-f0c4f74b74a6	1	40	t	abe16fa5-a48c-4607-8011-729e15f3c3fe	\N
04c74771-377f-423a-b1f7-1467e1494db5	\N	conditional-user-configured	ffd9d216-cccd-4637-b19a-78f9c935a3de	abe16fa5-a48c-4607-8011-729e15f3c3fe	0	10	f	\N	\N
1c9df0ea-e904-44ef-988b-d867eea39a84	\N	reset-otp	ffd9d216-cccd-4637-b19a-78f9c935a3de	abe16fa5-a48c-4607-8011-729e15f3c3fe	0	20	f	\N	\N
d7791e40-b288-469f-9306-3e4429d7e8bd	\N	client-secret	ffd9d216-cccd-4637-b19a-78f9c935a3de	de2839c4-0e29-43f7-b40e-a70d81fcf6c0	2	10	f	\N	\N
599f2c78-3847-4353-bb05-d436ee952dde	\N	client-jwt	ffd9d216-cccd-4637-b19a-78f9c935a3de	de2839c4-0e29-43f7-b40e-a70d81fcf6c0	2	20	f	\N	\N
cb1a23f2-500a-48fe-8843-8804116a33d4	\N	client-secret-jwt	ffd9d216-cccd-4637-b19a-78f9c935a3de	de2839c4-0e29-43f7-b40e-a70d81fcf6c0	2	30	f	\N	\N
fe5b8334-1dc9-422d-8d55-ad7c38296566	\N	client-x509	ffd9d216-cccd-4637-b19a-78f9c935a3de	de2839c4-0e29-43f7-b40e-a70d81fcf6c0	2	40	f	\N	\N
57116942-2a9c-4b4b-aa6a-3da0d83d3d62	\N	idp-review-profile	ffd9d216-cccd-4637-b19a-78f9c935a3de	14c1fb34-f098-4430-8768-a05fcd77cbee	0	10	f	\N	aa9e65ba-20f6-4e1e-b8f6-5ebc00d0abec
1ecd646f-a9a2-4246-92ea-c967ad5e8c62	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	14c1fb34-f098-4430-8768-a05fcd77cbee	0	20	t	3cf9317a-3c0e-479b-aac4-b55e76c7348f	\N
54ab482f-0b43-4374-970d-2ed0b0ea5e4b	\N	idp-create-user-if-unique	ffd9d216-cccd-4637-b19a-78f9c935a3de	3cf9317a-3c0e-479b-aac4-b55e76c7348f	2	10	f	\N	94aad8c3-661d-4d2c-be75-0780ef4c1f79
3d245823-c092-46db-bf66-cd37ca03f5dc	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	3cf9317a-3c0e-479b-aac4-b55e76c7348f	2	20	t	226b9d59-6259-4d4c-8b8b-be3ee3233431	\N
da28d428-6f27-4dec-8d8d-ef1e74bfe9a3	\N	idp-confirm-link	ffd9d216-cccd-4637-b19a-78f9c935a3de	226b9d59-6259-4d4c-8b8b-be3ee3233431	0	10	f	\N	\N
c51f353e-5b72-4b2e-9a3b-d48bdade269c	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	226b9d59-6259-4d4c-8b8b-be3ee3233431	0	20	t	951a8adf-29bf-4bb6-b867-c3091311e526	\N
2c752fa4-8e4c-4f74-ba1e-0c58ce404d59	\N	idp-email-verification	ffd9d216-cccd-4637-b19a-78f9c935a3de	951a8adf-29bf-4bb6-b867-c3091311e526	2	10	f	\N	\N
4ca797d9-78eb-496e-825b-d922f2661b3d	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	951a8adf-29bf-4bb6-b867-c3091311e526	2	20	t	737bfecb-94d0-48f2-b8a8-ffec8cb4dc52	\N
5504cf55-e764-4287-ac31-888882eecc06	\N	idp-username-password-form	ffd9d216-cccd-4637-b19a-78f9c935a3de	737bfecb-94d0-48f2-b8a8-ffec8cb4dc52	0	10	f	\N	\N
6ea49299-798b-47e2-b229-bfa905eb06e6	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	737bfecb-94d0-48f2-b8a8-ffec8cb4dc52	1	20	t	c63eb647-3105-42f3-b96d-2479b1b1e143	\N
261ea419-301f-4ebe-89fc-350f4a066557	\N	conditional-user-configured	ffd9d216-cccd-4637-b19a-78f9c935a3de	c63eb647-3105-42f3-b96d-2479b1b1e143	0	10	f	\N	\N
6d01a97e-9028-48e8-8a7b-e66c064c0973	\N	auth-otp-form	ffd9d216-cccd-4637-b19a-78f9c935a3de	c63eb647-3105-42f3-b96d-2479b1b1e143	0	20	f	\N	\N
c55c2818-ccb2-475b-b817-461bcc3f47e0	\N	http-basic-authenticator	ffd9d216-cccd-4637-b19a-78f9c935a3de	ec8d6010-6e11-48ac-9f5c-7e8e690b8e0d	0	10	f	\N	\N
301e9c51-cd7f-4b8b-8bc4-0bb5d1e1bb41	\N	docker-http-basic-authenticator	ffd9d216-cccd-4637-b19a-78f9c935a3de	692e547b-a4ae-40f7-a52e-9245e12e60ec	0	10	f	\N	\N
ad689c8c-2b8b-4f1b-9852-5501f7093977	\N	no-cookie-redirect	ffd9d216-cccd-4637-b19a-78f9c935a3de	bb6301a9-4697-4799-ae34-5f1b72c535a7	0	10	f	\N	\N
efb1eebf-b6ce-4b7f-b115-b8182f6d0720	\N	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de	bb6301a9-4697-4799-ae34-5f1b72c535a7	0	20	t	68563fbf-4b6a-4e6e-af38-08d5f7b8cb81	\N
f276301e-a263-4b8d-bad6-ed83eee6003f	\N	basic-auth	ffd9d216-cccd-4637-b19a-78f9c935a3de	68563fbf-4b6a-4e6e-af38-08d5f7b8cb81	0	10	f	\N	\N
86d9b68c-379c-4ee5-8b42-4ce7343c974c	\N	basic-auth-otp	ffd9d216-cccd-4637-b19a-78f9c935a3de	68563fbf-4b6a-4e6e-af38-08d5f7b8cb81	3	20	f	\N	\N
57c7bab8-0583-491c-bed2-a70dbb0ca97b	\N	auth-spnego	ffd9d216-cccd-4637-b19a-78f9c935a3de	68563fbf-4b6a-4e6e-af38-08d5f7b8cb81	3	30	f	\N	\N
9b101d4f-4cb6-4e4f-82ce-528d9f689dec	\N	auth-cookie	basic	15f49497-c96a-483c-8a73-9ef5a772c1a9	2	10	f	\N	\N
5dbddb28-5d71-421c-ad3f-d0d23fd6a1a7	\N	auth-spnego	basic	15f49497-c96a-483c-8a73-9ef5a772c1a9	3	20	f	\N	\N
cf965bf7-e155-43c2-bc7d-c925835487f2	\N	identity-provider-redirector	basic	15f49497-c96a-483c-8a73-9ef5a772c1a9	2	25	f	\N	\N
1c1c3a95-4f16-4774-ba52-75701b38caa3	\N	\N	basic	15f49497-c96a-483c-8a73-9ef5a772c1a9	2	30	t	38bc8b99-b898-416f-941e-c62a47f022c5	\N
7ceb0c4f-0d92-48f0-9533-5f81e0c34e2e	\N	auth-username-password-form	basic	38bc8b99-b898-416f-941e-c62a47f022c5	0	10	f	\N	\N
8341caaa-f122-44cb-a75a-cdaacab3668f	\N	\N	basic	38bc8b99-b898-416f-941e-c62a47f022c5	1	20	t	188dc2d6-ac00-42d9-b58e-423ad91f288d	\N
bf906e55-5e12-44c1-bf40-15fbdb0f286b	\N	conditional-user-configured	basic	188dc2d6-ac00-42d9-b58e-423ad91f288d	0	10	f	\N	\N
f87aea34-ed59-4df2-b0f7-62f23724d5dc	\N	auth-otp-form	basic	188dc2d6-ac00-42d9-b58e-423ad91f288d	0	20	f	\N	\N
b0e07d1e-c0e3-4c6e-9446-195cadf901b2	\N	direct-grant-validate-username	basic	7d3289d8-abbf-45e7-a082-4fe0182d4cce	0	10	f	\N	\N
f0647bdf-c524-4264-a276-d9319f685036	\N	direct-grant-validate-password	basic	7d3289d8-abbf-45e7-a082-4fe0182d4cce	0	20	f	\N	\N
10115a8d-fd7e-4c2d-8c2f-88934cd33040	\N	\N	basic	7d3289d8-abbf-45e7-a082-4fe0182d4cce	1	30	t	5b306a6c-3bc0-4f1f-a0b4-f22b5b38dfdc	\N
7cfec6a0-297a-4b0f-94cf-4bdbe48948ab	\N	conditional-user-configured	basic	5b306a6c-3bc0-4f1f-a0b4-f22b5b38dfdc	0	10	f	\N	\N
f08294c2-f67d-46d9-8c6e-fe4209386d21	\N	direct-grant-validate-otp	basic	5b306a6c-3bc0-4f1f-a0b4-f22b5b38dfdc	0	20	f	\N	\N
8f54f411-459a-4137-81de-629d98285571	\N	registration-page-form	basic	054042c0-e70b-49f2-a182-c804576ad3c9	0	10	t	6de1ac8a-6479-4963-8cfe-aae0f30b366a	\N
5e967dbe-ca7f-4b3a-9b8d-4340f406e120	\N	registration-user-creation	basic	6de1ac8a-6479-4963-8cfe-aae0f30b366a	0	20	f	\N	\N
6a8e7518-4a97-445e-8cf5-666002436e4b	\N	registration-profile-action	basic	6de1ac8a-6479-4963-8cfe-aae0f30b366a	0	40	f	\N	\N
29417b56-beae-4fa9-8c48-edf12b28be8f	\N	registration-password-action	basic	6de1ac8a-6479-4963-8cfe-aae0f30b366a	0	50	f	\N	\N
3c9390c6-ebf0-4836-80d9-fa8fa4a91004	\N	registration-recaptcha-action	basic	6de1ac8a-6479-4963-8cfe-aae0f30b366a	3	60	f	\N	\N
3fc0c999-01dd-4c20-9e45-53a4f914c5c0	\N	reset-credentials-choose-user	basic	94e1067a-515b-495f-9302-038c277a5a6f	0	10	f	\N	\N
ab3ca3cf-c699-4ceb-8b4e-c23d52ade5fa	\N	reset-credential-email	basic	94e1067a-515b-495f-9302-038c277a5a6f	0	20	f	\N	\N
834d7090-d960-437d-86bb-e2fe9d5870d1	\N	reset-password	basic	94e1067a-515b-495f-9302-038c277a5a6f	0	30	f	\N	\N
19816d99-bcca-44fc-9905-9cc3e72168af	\N	\N	basic	94e1067a-515b-495f-9302-038c277a5a6f	1	40	t	edf5390e-add1-4104-ae79-51aaf029453d	\N
6a2d9b5a-2f12-4d35-905b-8192193a8c4b	\N	conditional-user-configured	basic	edf5390e-add1-4104-ae79-51aaf029453d	0	10	f	\N	\N
b784ffb8-975b-4060-a02e-2f621ae413e0	\N	reset-otp	basic	edf5390e-add1-4104-ae79-51aaf029453d	0	20	f	\N	\N
8d713388-2a0d-4c88-9901-8dd6047fd1f7	\N	client-secret	basic	88138982-408a-4c66-aa30-d872cda1e00c	2	10	f	\N	\N
864ef6db-8378-4460-b45c-092ac0807175	\N	client-jwt	basic	88138982-408a-4c66-aa30-d872cda1e00c	2	20	f	\N	\N
2a0efb89-1b5b-47b7-99d6-6ad52a827b6c	\N	client-secret-jwt	basic	88138982-408a-4c66-aa30-d872cda1e00c	2	30	f	\N	\N
64a93dda-727c-4410-b6f1-334ef25c06c1	\N	client-x509	basic	88138982-408a-4c66-aa30-d872cda1e00c	2	40	f	\N	\N
5edea880-93e4-46c0-a7bb-cf2671a98b65	\N	idp-review-profile	basic	9415712b-3c51-4125-8373-6c434c98d301	0	10	f	\N	c5ebe410-41dc-4f09-acf2-79340732da96
e66c4b65-4a8a-4872-b1d4-5bc365fe93aa	\N	\N	basic	9415712b-3c51-4125-8373-6c434c98d301	0	20	t	836e4487-0483-4254-88df-a8994d30cb25	\N
c0e81181-fad8-4c4f-8851-e7ff61c95fed	\N	idp-create-user-if-unique	basic	836e4487-0483-4254-88df-a8994d30cb25	2	10	f	\N	e0b7babc-4e7d-4666-a3c4-36cab5df54b8
8a0a5a4c-af6b-4a4b-b70f-ef4a319f6af1	\N	\N	basic	836e4487-0483-4254-88df-a8994d30cb25	2	20	t	06bd8d9a-dfe6-4946-9bc4-344994d21f8e	\N
5cc491a2-8505-4189-b391-ce66b09b4b4d	\N	idp-confirm-link	basic	06bd8d9a-dfe6-4946-9bc4-344994d21f8e	0	10	f	\N	\N
48c3d01b-ffd9-46a9-adeb-60faa143d636	\N	\N	basic	06bd8d9a-dfe6-4946-9bc4-344994d21f8e	0	20	t	f7c9168a-976e-4e8f-b26c-1148b764f8f0	\N
1177d08e-3657-45fb-b96c-5a97f3ff8a9e	\N	idp-email-verification	basic	f7c9168a-976e-4e8f-b26c-1148b764f8f0	2	10	f	\N	\N
fe1b3cf1-7600-42e5-99d6-82b89b275a04	\N	\N	basic	f7c9168a-976e-4e8f-b26c-1148b764f8f0	2	20	t	ead1435e-2e85-4ba6-bcec-41a971f87fc2	\N
9c8db70b-4f06-429d-9a39-95c61126ae40	\N	idp-username-password-form	basic	ead1435e-2e85-4ba6-bcec-41a971f87fc2	0	10	f	\N	\N
fa144308-2d08-40dc-b581-6460209a1ddf	\N	\N	basic	ead1435e-2e85-4ba6-bcec-41a971f87fc2	1	20	t	f960cc12-6643-4cfd-a03e-aee414525aa0	\N
1b599a50-9d41-4be9-8010-547ae8f723cd	\N	conditional-user-configured	basic	f960cc12-6643-4cfd-a03e-aee414525aa0	0	10	f	\N	\N
ea8a492d-0c61-416d-9f63-5639f3efea62	\N	auth-otp-form	basic	f960cc12-6643-4cfd-a03e-aee414525aa0	0	20	f	\N	\N
095d7b28-793d-4c5d-81c7-88b888caa411	\N	http-basic-authenticator	basic	9ef3f170-92b2-4445-a98c-4dde9c22ba99	0	10	f	\N	\N
59e3c5df-d216-4d7d-a5e8-658cce63b720	\N	docker-http-basic-authenticator	basic	d0eaf152-9ae5-416b-b620-3dbccd3494a7	0	10	f	\N	\N
0c22c702-7215-42c5-8cc9-96238f6b9f4f	\N	no-cookie-redirect	basic	6481a356-05bd-44d0-a9f8-342f6780d966	0	10	f	\N	\N
8688a609-95ba-41af-afe8-9ca52bdc749f	\N	\N	basic	6481a356-05bd-44d0-a9f8-342f6780d966	0	20	t	dc5a3a11-51f8-4ac0-a99b-f2891b688b2b	\N
f17ae38e-7237-40e5-9f4a-cc2a6363f942	\N	basic-auth	basic	dc5a3a11-51f8-4ac0-a99b-f2891b688b2b	0	10	f	\N	\N
f911a032-f7c2-4242-add9-3e628e2baa72	\N	basic-auth-otp	basic	dc5a3a11-51f8-4ac0-a99b-f2891b688b2b	3	20	f	\N	\N
922908f3-62f9-4b2d-b0e4-8b59bcc0e548	\N	auth-spnego	basic	dc5a3a11-51f8-4ac0-a99b-f2891b688b2b	3	30	f	\N	\N
\.


--
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_flow (id, alias, description, realm_id, provider_id, top_level, built_in) FROM stdin;
ee0e5ee3-2b74-4ccb-9da5-3e78c7931bcc	browser	browser based authentication	master	basic-flow	t	t
4bcd3e3b-2a04-406c-8ffc-11d367aa35b5	forms	Username, password, otp and other auth forms.	master	basic-flow	f	t
2a3dd288-2389-43b6-83c7-46a647e18331	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	master	basic-flow	f	t
dde5e62a-65b2-4179-9b59-54113df828db	direct grant	OpenID Connect Resource Owner Grant	master	basic-flow	t	t
6a2893e8-4e48-4c7f-b2e2-5f8bd80ac924	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	master	basic-flow	f	t
e4b65824-59c6-4b76-8a44-f7977e005969	registration	registration flow	master	basic-flow	t	t
1f095aba-8df5-4559-b528-fe86b87c96c3	registration form	registration form	master	form-flow	f	t
6b01f4e8-98f8-4f88-9b50-1a033141075f	reset credentials	Reset credentials for a user if they forgot their password or something	master	basic-flow	t	t
6d55572a-b4ce-4404-8630-c42e13cd3fc7	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	master	basic-flow	f	t
867db14f-74ed-430b-972b-36d5c16fd6ee	clients	Base authentication for clients	master	client-flow	t	t
8f99cadb-7587-4503-be45-fcca82616cc0	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	master	basic-flow	t	t
feca3ede-884c-42aa-bc97-570f19414aa9	User creation or linking	Flow for the existing/non-existing user alternatives	master	basic-flow	f	t
6d4199ad-8005-47c7-8868-6e20ea397c3a	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	master	basic-flow	f	t
79fad037-6609-4921-8dd6-b705071ba883	Account verification options	Method with which to verity the existing account	master	basic-flow	f	t
a168834e-bbbd-4f1b-9d7a-be2e72d92e50	Verify Existing Account by Re-authentication	Reauthentication of existing account	master	basic-flow	f	t
7bcb24e4-78ed-433b-8cec-f950fa8d5d8c	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	master	basic-flow	f	t
e78f4d38-1fec-44f3-900c-d72e2b60ee6d	saml ecp	SAML ECP Profile Authentication Flow	master	basic-flow	t	t
6e8a8b22-a640-43ff-8ce0-041d5669c41c	docker auth	Used by Docker clients to authenticate against the IDP	master	basic-flow	t	t
d7760ac8-bcb7-43af-8115-87ac5e122543	http challenge	An authentication flow based on challenge-response HTTP Authentication Schemes	master	basic-flow	t	t
2ad70ea5-23a2-49c3-9112-fab451dfe645	Authentication Options	Authentication options.	master	basic-flow	f	t
753d9c2d-47d1-4a4f-9c11-5f98c4c96718	browser	browser based authentication	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	t	t
0b8298ae-30ab-4556-89ef-8e3396447211	forms	Username, password, otp and other auth forms.	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
5a8d9cbb-c22b-48b6-83be-7e392b65ed00	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
7a5aded7-2504-4673-a4c5-d89aa230bbaa	direct grant	OpenID Connect Resource Owner Grant	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	t	t
3fe16360-b903-4f2b-ac1c-84c66a50a0e7	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
b2b5ca63-1703-485e-bc0a-7ee4a459fba3	registration	registration flow	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	t	t
4ad4f54f-c4df-497d-846a-e138be88b00c	registration form	registration form	ffd9d216-cccd-4637-b19a-78f9c935a3de	form-flow	f	t
5e44d540-f388-465e-b9a7-f0c4f74b74a6	reset credentials	Reset credentials for a user if they forgot their password or something	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	t	t
abe16fa5-a48c-4607-8011-729e15f3c3fe	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
de2839c4-0e29-43f7-b40e-a70d81fcf6c0	clients	Base authentication for clients	ffd9d216-cccd-4637-b19a-78f9c935a3de	client-flow	t	t
14c1fb34-f098-4430-8768-a05fcd77cbee	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	t	t
3cf9317a-3c0e-479b-aac4-b55e76c7348f	User creation or linking	Flow for the existing/non-existing user alternatives	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
226b9d59-6259-4d4c-8b8b-be3ee3233431	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
951a8adf-29bf-4bb6-b867-c3091311e526	Account verification options	Method with which to verity the existing account	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
737bfecb-94d0-48f2-b8a8-ffec8cb4dc52	Verify Existing Account by Re-authentication	Reauthentication of existing account	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
c63eb647-3105-42f3-b96d-2479b1b1e143	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
ec8d6010-6e11-48ac-9f5c-7e8e690b8e0d	saml ecp	SAML ECP Profile Authentication Flow	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	t	t
692e547b-a4ae-40f7-a52e-9245e12e60ec	docker auth	Used by Docker clients to authenticate against the IDP	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	t	t
bb6301a9-4697-4799-ae34-5f1b72c535a7	http challenge	An authentication flow based on challenge-response HTTP Authentication Schemes	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	t	t
68563fbf-4b6a-4e6e-af38-08d5f7b8cb81	Authentication Options	Authentication options.	ffd9d216-cccd-4637-b19a-78f9c935a3de	basic-flow	f	t
15f49497-c96a-483c-8a73-9ef5a772c1a9	browser	browser based authentication	basic	basic-flow	t	t
38bc8b99-b898-416f-941e-c62a47f022c5	forms	Username, password, otp and other auth forms.	basic	basic-flow	f	t
188dc2d6-ac00-42d9-b58e-423ad91f288d	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	basic	basic-flow	f	t
7d3289d8-abbf-45e7-a082-4fe0182d4cce	direct grant	OpenID Connect Resource Owner Grant	basic	basic-flow	t	t
5b306a6c-3bc0-4f1f-a0b4-f22b5b38dfdc	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	basic	basic-flow	f	t
054042c0-e70b-49f2-a182-c804576ad3c9	registration	registration flow	basic	basic-flow	t	t
6de1ac8a-6479-4963-8cfe-aae0f30b366a	registration form	registration form	basic	form-flow	f	t
94e1067a-515b-495f-9302-038c277a5a6f	reset credentials	Reset credentials for a user if they forgot their password or something	basic	basic-flow	t	t
edf5390e-add1-4104-ae79-51aaf029453d	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	basic	basic-flow	f	t
88138982-408a-4c66-aa30-d872cda1e00c	clients	Base authentication for clients	basic	client-flow	t	t
9415712b-3c51-4125-8373-6c434c98d301	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	basic	basic-flow	t	t
836e4487-0483-4254-88df-a8994d30cb25	User creation or linking	Flow for the existing/non-existing user alternatives	basic	basic-flow	f	t
06bd8d9a-dfe6-4946-9bc4-344994d21f8e	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	basic	basic-flow	f	t
f7c9168a-976e-4e8f-b26c-1148b764f8f0	Account verification options	Method with which to verity the existing account	basic	basic-flow	f	t
ead1435e-2e85-4ba6-bcec-41a971f87fc2	Verify Existing Account by Re-authentication	Reauthentication of existing account	basic	basic-flow	f	t
f960cc12-6643-4cfd-a03e-aee414525aa0	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	basic	basic-flow	f	t
9ef3f170-92b2-4445-a98c-4dde9c22ba99	saml ecp	SAML ECP Profile Authentication Flow	basic	basic-flow	t	t
d0eaf152-9ae5-416b-b620-3dbccd3494a7	docker auth	Used by Docker clients to authenticate against the IDP	basic	basic-flow	t	t
6481a356-05bd-44d0-a9f8-342f6780d966	http challenge	An authentication flow based on challenge-response HTTP Authentication Schemes	basic	basic-flow	t	t
dc5a3a11-51f8-4ac0-a99b-f2891b688b2b	Authentication Options	Authentication options.	basic	basic-flow	f	t
\.


--
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config (id, alias, realm_id) FROM stdin;
a80d5d5b-0b7a-404e-8fbb-53b0a4a56c2b	review profile config	master
cdd5e5b4-d6ed-4d1f-8c59-473081ae00ef	create unique user config	master
aa9e65ba-20f6-4e1e-b8f6-5ebc00d0abec	review profile config	ffd9d216-cccd-4637-b19a-78f9c935a3de
94aad8c3-661d-4d2c-be75-0780ef4c1f79	create unique user config	ffd9d216-cccd-4637-b19a-78f9c935a3de
c5ebe410-41dc-4f09-acf2-79340732da96	review profile config	basic
e0b7babc-4e7d-4666-a3c4-36cab5df54b8	create unique user config	basic
\.


--
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config_entry (authenticator_id, value, name) FROM stdin;
a80d5d5b-0b7a-404e-8fbb-53b0a4a56c2b	missing	update.profile.on.first.login
cdd5e5b4-d6ed-4d1f-8c59-473081ae00ef	false	require.password.update.after.registration
aa9e65ba-20f6-4e1e-b8f6-5ebc00d0abec	missing	update.profile.on.first.login
94aad8c3-661d-4d2c-be75-0780ef4c1f79	false	require.password.update.after.registration
c5ebe410-41dc-4f09-acf2-79340732da96	missing	update.profile.on.first.login
e0b7babc-4e7d-4666-a3c4-36cab5df54b8	false	require.password.update.after.registration
\.


--
-- Data for Name: broker_link; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.broker_link (identity_provider, storage_provider_id, realm_id, broker_user_id, broker_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client (id, enabled, full_scope_allowed, client_id, not_before, public_client, secret, base_url, bearer_only, management_url, surrogate_auth_required, realm_id, protocol, node_rereg_timeout, frontchannel_logout, consent_required, name, service_accounts_enabled, client_authenticator_type, root_url, description, registration_token, standard_flow_enabled, implicit_flow_enabled, direct_access_grants_enabled, always_display_in_console) FROM stdin;
48ac08f1-06d8-4b03-9432-56d89d77ec00	t	t	master-realm	0	f	c9ec62b5-dee1-4685-ad1c-6c8ca5d1d09f	\N	t	\N	f	master	\N	0	f	f	master Realm	f	client-secret	\N	\N	\N	t	f	f	f
4644e7fb-9112-4100-80f0-0aa15cc99b6f	t	f	account	0	f	0eb24a72-ce68-406e-a46d-15cc58d62c08	/realms/master/account/	f	\N	f	master	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
570154ea-bd10-4435-88da-7c4d95cf455c	t	f	account-console	0	t	b7e421b6-6780-4f1b-9989-4b4d0076cc18	/realms/master/account/	f	\N	f	master	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
5632c838-220e-4dde-a1d4-fb2772f420bb	t	f	broker	0	f	8cf50e79-2747-4d90-97be-b0d98bb96926	\N	f	\N	f	master	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
d0f69702-7492-41ce-9227-b6b3982471a8	t	f	security-admin-console	0	t	461f7eff-2910-437b-84eb-f5d5ca6b05ea	/admin/master/console/	f	\N	f	master	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
ac33ae22-80fe-459c-a1ca-8735625e3567	t	f	admin-cli	0	t	bdfd9a29-edbf-4cd1-a2ae-c23845d0c4e7	\N	f	\N	f	master	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
eab68333-a860-48d4-bc8e-cb7748be0442	t	t	demorealm-realm	0	f	5f61f966-8d74-4d59-9722-23a95d76a1e0	\N	t	\N	f	master	\N	0	f	f	demorealm Realm	f	client-secret	\N	\N	\N	t	f	f	f
f4fb2591-705b-4fb0-827d-631904527fba	t	f	realm-management	0	f	cc6c0357-f7d0-40d4-a8c8-5f9ec0b104d2	\N	t	\N	f	ffd9d216-cccd-4637-b19a-78f9c935a3de	openid-connect	0	f	f	${client_realm-management}	f	client-secret	\N	\N	\N	t	f	f	f
e8d99a75-76b6-4247-a724-4a34fed9140c	t	f	account	0	f	8d7cd146-6394-4a80-882c-72063125fd43	/realms/demorealm/account/	f	\N	f	ffd9d216-cccd-4637-b19a-78f9c935a3de	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
068ed656-1b10-4f30-bfac-98032af95961	t	f	account-console	0	t	7f291923-7906-4f9b-83bf-8c9ae499faf5	/realms/demorealm/account/	f	\N	f	ffd9d216-cccd-4637-b19a-78f9c935a3de	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	t	f	broker	0	f	a78002ac-8267-4fe2-886f-fff162779680	\N	f	\N	f	ffd9d216-cccd-4637-b19a-78f9c935a3de	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	t	f	security-admin-console	0	t	d8ef996b-6c70-4ae9-a7cc-aaf9c7d2a8b5	/admin/demorealm/console/	f	\N	f	ffd9d216-cccd-4637-b19a-78f9c935a3de	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	t	f	admin-cli	0	t	32e1b4ff-abff-47f7-9db8-95bbe81875e6	\N	f	\N	f	ffd9d216-cccd-4637-b19a-78f9c935a3de	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	t	basic-realm	0	f	52dd81d3-644f-4f6f-81db-c1d3cecf85ce	\N	t	\N	f	master	\N	0	f	f	basic Realm	f	client-secret	\N	\N	\N	t	f	f	f
915ebc6e-9114-4b3d-b560-3a990dc49d20	t	f	realm-management	0	f	20fa21d8-9127-41ba-85ae-3aa335739563	\N	t	\N	f	basic	openid-connect	0	f	f	${client_realm-management}	f	client-secret	\N	\N	\N	t	f	f	f
c721710b-ce98-41ad-a6e8-7bc7d1520271	t	f	account	0	f	e707e634-3c6f-4561-81a3-dde72f2ab8f9	/realms/basic/account/	f	\N	f	basic	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
ea3ffadc-0a56-4c64-be05-daa6adf65801	t	f	account-console	0	t	e032a129-0131-4a0b-a897-4b7b6f072c24	/realms/basic/account/	f	\N	f	basic	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	t	f	broker	0	f	e6351c65-ad8c-4aa0-bb3e-c59df577a4c3	\N	f	\N	f	basic	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
9dac498e-28fa-4cc0-8673-199f0649e772	t	f	security-admin-console	0	t	db54762e-6c6f-4502-a13f-4cbfa3c501cb	/admin/basic/console/	f	\N	f	basic	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
ca96705a-df78-4b2d-8c45-d2c58a14027f	t	f	admin-cli	0	t	ac40b73c-0f4d-4a68-a609-fb9ef7941183	\N	f	\N	f	basic	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
b9383891-8e16-4b4b-9259-12f206ec6141	t	t	app-react	0	t	f93045d6-6969-4a43-9871-e7d9a304719a	\N	f	http://nodejs-gui-nm-demo.apps.ocp-cluster-1.rhlab.ch/	f	basic	openid-connect	-1	f	f	\N	f	client-secret	http://nodejs-gui-nm-demo.apps.ocp-cluster-1.rhlab.ch/	\N	\N	t	f	t	f
\.


--
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_attributes (client_id, value, name) FROM stdin;
570154ea-bd10-4435-88da-7c4d95cf455c	S256	pkce.code.challenge.method
d0f69702-7492-41ce-9227-b6b3982471a8	S256	pkce.code.challenge.method
068ed656-1b10-4f30-bfac-98032af95961	S256	pkce.code.challenge.method
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	S256	pkce.code.challenge.method
ea3ffadc-0a56-4c64-be05-daa6adf65801	S256	pkce.code.challenge.method
9dac498e-28fa-4cc0-8673-199f0649e772	S256	pkce.code.challenge.method
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.server.signature
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.server.signature.keyinfo.ext
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.assertion.signature
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.client.signature
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.encrypt
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.authnstatement
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.onetimeuse.condition
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml_force_name_id_format
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.multivalued.roles
b9383891-8e16-4b4b-9259-12f206ec6141	false	saml.force.post.binding
b9383891-8e16-4b4b-9259-12f206ec6141	false	exclude.session.state.from.auth.response
b9383891-8e16-4b4b-9259-12f206ec6141	false	tls.client.certificate.bound.access.tokens
b9383891-8e16-4b4b-9259-12f206ec6141	false	display.on.consent.screen
\.


--
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_auth_flow_bindings (client_id, flow_id, binding_name) FROM stdin;
\.


--
-- Data for Name: client_default_roles; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_default_roles (client_id, role_id) FROM stdin;
4644e7fb-9112-4100-80f0-0aa15cc99b6f	2f29abed-ca55-4f94-8e32-f5f4852b159d
4644e7fb-9112-4100-80f0-0aa15cc99b6f	60d90fff-c1a3-466c-ae67-ba9a976646a6
e8d99a75-76b6-4247-a724-4a34fed9140c	8d4a34cc-cd67-4207-b8e6-8f6b10b72d82
e8d99a75-76b6-4247-a724-4a34fed9140c	94c01f7b-6676-4d1d-8cfe-e54d94afd712
c721710b-ce98-41ad-a6e8-7bc7d1520271	09456ec0-a0fc-422b-92da-e285f642283a
c721710b-ce98-41ad-a6e8-7bc7d1520271	156f50e9-2945-4301-a53b-27dfed5e4da4
\.


--
-- Data for Name: client_initial_access; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_initial_access (id, realm_id, "timestamp", expiration, count, remaining_count) FROM stdin;
\.


--
-- Data for Name: client_node_registrations; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_node_registrations (client_id, value, name) FROM stdin;
\.


--
-- Data for Name: client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope (id, name, realm_id, description, protocol) FROM stdin;
4d4dd947-710c-404c-93d3-49c6e577decb	offline_access	master	OpenID Connect built-in scope: offline_access	openid-connect
b6574ad1-cbe8-45da-b1dd-c1f31f322230	role_list	master	SAML role list	saml
e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	profile	master	OpenID Connect built-in scope: profile	openid-connect
953cdd14-7f9d-4a1d-a55b-994bd0c312b4	email	master	OpenID Connect built-in scope: email	openid-connect
7d425ba8-ad43-414a-9d85-d73f974dd3a4	address	master	OpenID Connect built-in scope: address	openid-connect
df70bf71-62ec-44a4-81cd-51ad4419cdfc	phone	master	OpenID Connect built-in scope: phone	openid-connect
54087a7b-695c-423c-8699-e0b2b9d2ecd3	roles	master	OpenID Connect scope for add user roles to the access token	openid-connect
778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	web-origins	master	OpenID Connect scope for add allowed web origins to the access token	openid-connect
b813c908-ce9e-4b99-a6cc-41edfefbbbaf	microprofile-jwt	master	Microprofile - JWT built-in scope	openid-connect
c8289a09-8106-4a60-81a3-13108eee65e8	offline_access	ffd9d216-cccd-4637-b19a-78f9c935a3de	OpenID Connect built-in scope: offline_access	openid-connect
46521aee-3eae-40a2-8768-b989dbe69fc1	role_list	ffd9d216-cccd-4637-b19a-78f9c935a3de	SAML role list	saml
3142bc5b-baf3-4253-8adf-1d262d95011f	profile	ffd9d216-cccd-4637-b19a-78f9c935a3de	OpenID Connect built-in scope: profile	openid-connect
c4b8aac3-05ec-4d36-9228-07792f137ed8	email	ffd9d216-cccd-4637-b19a-78f9c935a3de	OpenID Connect built-in scope: email	openid-connect
aea84ed4-bcdd-41f3-b066-9268b8d890aa	address	ffd9d216-cccd-4637-b19a-78f9c935a3de	OpenID Connect built-in scope: address	openid-connect
bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	phone	ffd9d216-cccd-4637-b19a-78f9c935a3de	OpenID Connect built-in scope: phone	openid-connect
030373f2-0a6f-45b2-a48f-52dc37883c13	roles	ffd9d216-cccd-4637-b19a-78f9c935a3de	OpenID Connect scope for add user roles to the access token	openid-connect
0b41c29b-7d63-485b-9235-46122ab31849	web-origins	ffd9d216-cccd-4637-b19a-78f9c935a3de	OpenID Connect scope for add allowed web origins to the access token	openid-connect
5145ed9f-2b63-4fb6-92a1-e112c1eb276c	microprofile-jwt	ffd9d216-cccd-4637-b19a-78f9c935a3de	Microprofile - JWT built-in scope	openid-connect
369540dd-1dcb-4883-8da3-215feb041597	offline_access	basic	OpenID Connect built-in scope: offline_access	openid-connect
2de3dcb0-0e34-457d-8983-506a733edebf	role_list	basic	SAML role list	saml
4b8b3bc5-b743-4972-b592-69e433f4cafa	profile	basic	OpenID Connect built-in scope: profile	openid-connect
9900532c-e2ab-47f3-9516-ea3cec96e378	email	basic	OpenID Connect built-in scope: email	openid-connect
24e8cdc6-c553-49db-9e89-88f23aa30af3	address	basic	OpenID Connect built-in scope: address	openid-connect
65e08ab1-399c-48db-8e07-b31e04e40dd8	phone	basic	OpenID Connect built-in scope: phone	openid-connect
c6905512-e8ff-4f49-82f2-0cb590030777	roles	basic	OpenID Connect scope for add user roles to the access token	openid-connect
e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	web-origins	basic	OpenID Connect scope for add allowed web origins to the access token	openid-connect
f6316f74-5296-4217-9af3-64197b34e159	microprofile-jwt	basic	Microprofile - JWT built-in scope	openid-connect
\.


--
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_attributes (scope_id, value, name) FROM stdin;
4d4dd947-710c-404c-93d3-49c6e577decb	true	display.on.consent.screen
4d4dd947-710c-404c-93d3-49c6e577decb	${offlineAccessScopeConsentText}	consent.screen.text
b6574ad1-cbe8-45da-b1dd-c1f31f322230	true	display.on.consent.screen
b6574ad1-cbe8-45da-b1dd-c1f31f322230	${samlRoleListScopeConsentText}	consent.screen.text
e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	true	display.on.consent.screen
e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	${profileScopeConsentText}	consent.screen.text
e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	true	include.in.token.scope
953cdd14-7f9d-4a1d-a55b-994bd0c312b4	true	display.on.consent.screen
953cdd14-7f9d-4a1d-a55b-994bd0c312b4	${emailScopeConsentText}	consent.screen.text
953cdd14-7f9d-4a1d-a55b-994bd0c312b4	true	include.in.token.scope
7d425ba8-ad43-414a-9d85-d73f974dd3a4	true	display.on.consent.screen
7d425ba8-ad43-414a-9d85-d73f974dd3a4	${addressScopeConsentText}	consent.screen.text
7d425ba8-ad43-414a-9d85-d73f974dd3a4	true	include.in.token.scope
df70bf71-62ec-44a4-81cd-51ad4419cdfc	true	display.on.consent.screen
df70bf71-62ec-44a4-81cd-51ad4419cdfc	${phoneScopeConsentText}	consent.screen.text
df70bf71-62ec-44a4-81cd-51ad4419cdfc	true	include.in.token.scope
54087a7b-695c-423c-8699-e0b2b9d2ecd3	true	display.on.consent.screen
54087a7b-695c-423c-8699-e0b2b9d2ecd3	${rolesScopeConsentText}	consent.screen.text
54087a7b-695c-423c-8699-e0b2b9d2ecd3	false	include.in.token.scope
778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	false	display.on.consent.screen
778eef90-2ab9-4cb3-bd76-7bc9e8b5c944		consent.screen.text
778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	false	include.in.token.scope
b813c908-ce9e-4b99-a6cc-41edfefbbbaf	false	display.on.consent.screen
b813c908-ce9e-4b99-a6cc-41edfefbbbaf	true	include.in.token.scope
c8289a09-8106-4a60-81a3-13108eee65e8	true	display.on.consent.screen
c8289a09-8106-4a60-81a3-13108eee65e8	${offlineAccessScopeConsentText}	consent.screen.text
46521aee-3eae-40a2-8768-b989dbe69fc1	true	display.on.consent.screen
46521aee-3eae-40a2-8768-b989dbe69fc1	${samlRoleListScopeConsentText}	consent.screen.text
3142bc5b-baf3-4253-8adf-1d262d95011f	true	display.on.consent.screen
3142bc5b-baf3-4253-8adf-1d262d95011f	${profileScopeConsentText}	consent.screen.text
3142bc5b-baf3-4253-8adf-1d262d95011f	true	include.in.token.scope
c4b8aac3-05ec-4d36-9228-07792f137ed8	true	display.on.consent.screen
c4b8aac3-05ec-4d36-9228-07792f137ed8	${emailScopeConsentText}	consent.screen.text
c4b8aac3-05ec-4d36-9228-07792f137ed8	true	include.in.token.scope
aea84ed4-bcdd-41f3-b066-9268b8d890aa	true	display.on.consent.screen
aea84ed4-bcdd-41f3-b066-9268b8d890aa	${addressScopeConsentText}	consent.screen.text
aea84ed4-bcdd-41f3-b066-9268b8d890aa	true	include.in.token.scope
bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	true	display.on.consent.screen
bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	${phoneScopeConsentText}	consent.screen.text
bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	true	include.in.token.scope
030373f2-0a6f-45b2-a48f-52dc37883c13	true	display.on.consent.screen
030373f2-0a6f-45b2-a48f-52dc37883c13	${rolesScopeConsentText}	consent.screen.text
030373f2-0a6f-45b2-a48f-52dc37883c13	false	include.in.token.scope
0b41c29b-7d63-485b-9235-46122ab31849	false	display.on.consent.screen
0b41c29b-7d63-485b-9235-46122ab31849		consent.screen.text
0b41c29b-7d63-485b-9235-46122ab31849	false	include.in.token.scope
5145ed9f-2b63-4fb6-92a1-e112c1eb276c	false	display.on.consent.screen
5145ed9f-2b63-4fb6-92a1-e112c1eb276c	true	include.in.token.scope
369540dd-1dcb-4883-8da3-215feb041597	true	display.on.consent.screen
369540dd-1dcb-4883-8da3-215feb041597	${offlineAccessScopeConsentText}	consent.screen.text
2de3dcb0-0e34-457d-8983-506a733edebf	true	display.on.consent.screen
2de3dcb0-0e34-457d-8983-506a733edebf	${samlRoleListScopeConsentText}	consent.screen.text
4b8b3bc5-b743-4972-b592-69e433f4cafa	true	display.on.consent.screen
4b8b3bc5-b743-4972-b592-69e433f4cafa	${profileScopeConsentText}	consent.screen.text
4b8b3bc5-b743-4972-b592-69e433f4cafa	true	include.in.token.scope
9900532c-e2ab-47f3-9516-ea3cec96e378	true	display.on.consent.screen
9900532c-e2ab-47f3-9516-ea3cec96e378	${emailScopeConsentText}	consent.screen.text
9900532c-e2ab-47f3-9516-ea3cec96e378	true	include.in.token.scope
24e8cdc6-c553-49db-9e89-88f23aa30af3	true	display.on.consent.screen
24e8cdc6-c553-49db-9e89-88f23aa30af3	${addressScopeConsentText}	consent.screen.text
24e8cdc6-c553-49db-9e89-88f23aa30af3	true	include.in.token.scope
65e08ab1-399c-48db-8e07-b31e04e40dd8	true	display.on.consent.screen
65e08ab1-399c-48db-8e07-b31e04e40dd8	${phoneScopeConsentText}	consent.screen.text
65e08ab1-399c-48db-8e07-b31e04e40dd8	true	include.in.token.scope
c6905512-e8ff-4f49-82f2-0cb590030777	true	display.on.consent.screen
c6905512-e8ff-4f49-82f2-0cb590030777	${rolesScopeConsentText}	consent.screen.text
c6905512-e8ff-4f49-82f2-0cb590030777	false	include.in.token.scope
e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	false	display.on.consent.screen
e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7		consent.screen.text
e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	false	include.in.token.scope
f6316f74-5296-4217-9af3-64197b34e159	false	display.on.consent.screen
f6316f74-5296-4217-9af3-64197b34e159	true	include.in.token.scope
\.


--
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_client (client_id, scope_id, default_scope) FROM stdin;
4644e7fb-9112-4100-80f0-0aa15cc99b6f	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
570154ea-bd10-4435-88da-7c4d95cf455c	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
ac33ae22-80fe-459c-a1ca-8735625e3567	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
5632c838-220e-4dde-a1d4-fb2772f420bb	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
48ac08f1-06d8-4b03-9432-56d89d77ec00	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
d0f69702-7492-41ce-9227-b6b3982471a8	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
4644e7fb-9112-4100-80f0-0aa15cc99b6f	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
4644e7fb-9112-4100-80f0-0aa15cc99b6f	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
4644e7fb-9112-4100-80f0-0aa15cc99b6f	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
4644e7fb-9112-4100-80f0-0aa15cc99b6f	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
4644e7fb-9112-4100-80f0-0aa15cc99b6f	4d4dd947-710c-404c-93d3-49c6e577decb	f
4644e7fb-9112-4100-80f0-0aa15cc99b6f	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
4644e7fb-9112-4100-80f0-0aa15cc99b6f	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
4644e7fb-9112-4100-80f0-0aa15cc99b6f	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
570154ea-bd10-4435-88da-7c4d95cf455c	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
570154ea-bd10-4435-88da-7c4d95cf455c	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
570154ea-bd10-4435-88da-7c4d95cf455c	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
570154ea-bd10-4435-88da-7c4d95cf455c	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
570154ea-bd10-4435-88da-7c4d95cf455c	4d4dd947-710c-404c-93d3-49c6e577decb	f
570154ea-bd10-4435-88da-7c4d95cf455c	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
570154ea-bd10-4435-88da-7c4d95cf455c	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
570154ea-bd10-4435-88da-7c4d95cf455c	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
ac33ae22-80fe-459c-a1ca-8735625e3567	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
ac33ae22-80fe-459c-a1ca-8735625e3567	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
ac33ae22-80fe-459c-a1ca-8735625e3567	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
ac33ae22-80fe-459c-a1ca-8735625e3567	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
ac33ae22-80fe-459c-a1ca-8735625e3567	4d4dd947-710c-404c-93d3-49c6e577decb	f
ac33ae22-80fe-459c-a1ca-8735625e3567	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
ac33ae22-80fe-459c-a1ca-8735625e3567	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
ac33ae22-80fe-459c-a1ca-8735625e3567	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
5632c838-220e-4dde-a1d4-fb2772f420bb	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
5632c838-220e-4dde-a1d4-fb2772f420bb	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
5632c838-220e-4dde-a1d4-fb2772f420bb	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
5632c838-220e-4dde-a1d4-fb2772f420bb	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
5632c838-220e-4dde-a1d4-fb2772f420bb	4d4dd947-710c-404c-93d3-49c6e577decb	f
5632c838-220e-4dde-a1d4-fb2772f420bb	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
5632c838-220e-4dde-a1d4-fb2772f420bb	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
5632c838-220e-4dde-a1d4-fb2772f420bb	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
48ac08f1-06d8-4b03-9432-56d89d77ec00	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
48ac08f1-06d8-4b03-9432-56d89d77ec00	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
48ac08f1-06d8-4b03-9432-56d89d77ec00	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
48ac08f1-06d8-4b03-9432-56d89d77ec00	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
48ac08f1-06d8-4b03-9432-56d89d77ec00	4d4dd947-710c-404c-93d3-49c6e577decb	f
48ac08f1-06d8-4b03-9432-56d89d77ec00	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
48ac08f1-06d8-4b03-9432-56d89d77ec00	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
48ac08f1-06d8-4b03-9432-56d89d77ec00	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
d0f69702-7492-41ce-9227-b6b3982471a8	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
d0f69702-7492-41ce-9227-b6b3982471a8	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
d0f69702-7492-41ce-9227-b6b3982471a8	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
d0f69702-7492-41ce-9227-b6b3982471a8	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
d0f69702-7492-41ce-9227-b6b3982471a8	4d4dd947-710c-404c-93d3-49c6e577decb	f
d0f69702-7492-41ce-9227-b6b3982471a8	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
d0f69702-7492-41ce-9227-b6b3982471a8	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
d0f69702-7492-41ce-9227-b6b3982471a8	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
eab68333-a860-48d4-bc8e-cb7748be0442	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
eab68333-a860-48d4-bc8e-cb7748be0442	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
eab68333-a860-48d4-bc8e-cb7748be0442	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
eab68333-a860-48d4-bc8e-cb7748be0442	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
eab68333-a860-48d4-bc8e-cb7748be0442	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
eab68333-a860-48d4-bc8e-cb7748be0442	4d4dd947-710c-404c-93d3-49c6e577decb	f
eab68333-a860-48d4-bc8e-cb7748be0442	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
eab68333-a860-48d4-bc8e-cb7748be0442	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
eab68333-a860-48d4-bc8e-cb7748be0442	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
e8d99a75-76b6-4247-a724-4a34fed9140c	46521aee-3eae-40a2-8768-b989dbe69fc1	t
068ed656-1b10-4f30-bfac-98032af95961	46521aee-3eae-40a2-8768-b989dbe69fc1	t
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	46521aee-3eae-40a2-8768-b989dbe69fc1	t
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	46521aee-3eae-40a2-8768-b989dbe69fc1	t
f4fb2591-705b-4fb0-827d-631904527fba	46521aee-3eae-40a2-8768-b989dbe69fc1	t
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	46521aee-3eae-40a2-8768-b989dbe69fc1	t
e8d99a75-76b6-4247-a724-4a34fed9140c	3142bc5b-baf3-4253-8adf-1d262d95011f	t
e8d99a75-76b6-4247-a724-4a34fed9140c	c4b8aac3-05ec-4d36-9228-07792f137ed8	t
e8d99a75-76b6-4247-a724-4a34fed9140c	030373f2-0a6f-45b2-a48f-52dc37883c13	t
e8d99a75-76b6-4247-a724-4a34fed9140c	0b41c29b-7d63-485b-9235-46122ab31849	t
e8d99a75-76b6-4247-a724-4a34fed9140c	c8289a09-8106-4a60-81a3-13108eee65e8	f
e8d99a75-76b6-4247-a724-4a34fed9140c	aea84ed4-bcdd-41f3-b066-9268b8d890aa	f
e8d99a75-76b6-4247-a724-4a34fed9140c	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	f
e8d99a75-76b6-4247-a724-4a34fed9140c	5145ed9f-2b63-4fb6-92a1-e112c1eb276c	f
068ed656-1b10-4f30-bfac-98032af95961	3142bc5b-baf3-4253-8adf-1d262d95011f	t
068ed656-1b10-4f30-bfac-98032af95961	c4b8aac3-05ec-4d36-9228-07792f137ed8	t
068ed656-1b10-4f30-bfac-98032af95961	030373f2-0a6f-45b2-a48f-52dc37883c13	t
068ed656-1b10-4f30-bfac-98032af95961	0b41c29b-7d63-485b-9235-46122ab31849	t
068ed656-1b10-4f30-bfac-98032af95961	c8289a09-8106-4a60-81a3-13108eee65e8	f
068ed656-1b10-4f30-bfac-98032af95961	aea84ed4-bcdd-41f3-b066-9268b8d890aa	f
068ed656-1b10-4f30-bfac-98032af95961	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	f
068ed656-1b10-4f30-bfac-98032af95961	5145ed9f-2b63-4fb6-92a1-e112c1eb276c	f
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	3142bc5b-baf3-4253-8adf-1d262d95011f	t
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	c4b8aac3-05ec-4d36-9228-07792f137ed8	t
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	030373f2-0a6f-45b2-a48f-52dc37883c13	t
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	0b41c29b-7d63-485b-9235-46122ab31849	t
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	c8289a09-8106-4a60-81a3-13108eee65e8	f
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	aea84ed4-bcdd-41f3-b066-9268b8d890aa	f
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	f
744b1e4f-9a5d-4aca-b2c9-67eb6fd39a38	5145ed9f-2b63-4fb6-92a1-e112c1eb276c	f
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	3142bc5b-baf3-4253-8adf-1d262d95011f	t
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	c4b8aac3-05ec-4d36-9228-07792f137ed8	t
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	030373f2-0a6f-45b2-a48f-52dc37883c13	t
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	0b41c29b-7d63-485b-9235-46122ab31849	t
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	c8289a09-8106-4a60-81a3-13108eee65e8	f
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	aea84ed4-bcdd-41f3-b066-9268b8d890aa	f
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	f
5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	5145ed9f-2b63-4fb6-92a1-e112c1eb276c	f
f4fb2591-705b-4fb0-827d-631904527fba	3142bc5b-baf3-4253-8adf-1d262d95011f	t
f4fb2591-705b-4fb0-827d-631904527fba	c4b8aac3-05ec-4d36-9228-07792f137ed8	t
f4fb2591-705b-4fb0-827d-631904527fba	030373f2-0a6f-45b2-a48f-52dc37883c13	t
f4fb2591-705b-4fb0-827d-631904527fba	0b41c29b-7d63-485b-9235-46122ab31849	t
f4fb2591-705b-4fb0-827d-631904527fba	c8289a09-8106-4a60-81a3-13108eee65e8	f
f4fb2591-705b-4fb0-827d-631904527fba	aea84ed4-bcdd-41f3-b066-9268b8d890aa	f
f4fb2591-705b-4fb0-827d-631904527fba	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	f
f4fb2591-705b-4fb0-827d-631904527fba	5145ed9f-2b63-4fb6-92a1-e112c1eb276c	f
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	3142bc5b-baf3-4253-8adf-1d262d95011f	t
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	c4b8aac3-05ec-4d36-9228-07792f137ed8	t
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	030373f2-0a6f-45b2-a48f-52dc37883c13	t
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	0b41c29b-7d63-485b-9235-46122ab31849	t
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	c8289a09-8106-4a60-81a3-13108eee65e8	f
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	aea84ed4-bcdd-41f3-b066-9268b8d890aa	f
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	f
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	5145ed9f-2b63-4fb6-92a1-e112c1eb276c	f
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	4d4dd947-710c-404c-93d3-49c6e577decb	f
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
f9392b62-0dd9-4240-a6e3-6ff04ca12b03	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
c721710b-ce98-41ad-a6e8-7bc7d1520271	2de3dcb0-0e34-457d-8983-506a733edebf	t
ea3ffadc-0a56-4c64-be05-daa6adf65801	2de3dcb0-0e34-457d-8983-506a733edebf	t
ca96705a-df78-4b2d-8c45-d2c58a14027f	2de3dcb0-0e34-457d-8983-506a733edebf	t
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	2de3dcb0-0e34-457d-8983-506a733edebf	t
915ebc6e-9114-4b3d-b560-3a990dc49d20	2de3dcb0-0e34-457d-8983-506a733edebf	t
9dac498e-28fa-4cc0-8673-199f0649e772	2de3dcb0-0e34-457d-8983-506a733edebf	t
c721710b-ce98-41ad-a6e8-7bc7d1520271	4b8b3bc5-b743-4972-b592-69e433f4cafa	t
c721710b-ce98-41ad-a6e8-7bc7d1520271	9900532c-e2ab-47f3-9516-ea3cec96e378	t
c721710b-ce98-41ad-a6e8-7bc7d1520271	c6905512-e8ff-4f49-82f2-0cb590030777	t
c721710b-ce98-41ad-a6e8-7bc7d1520271	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	t
c721710b-ce98-41ad-a6e8-7bc7d1520271	369540dd-1dcb-4883-8da3-215feb041597	f
c721710b-ce98-41ad-a6e8-7bc7d1520271	24e8cdc6-c553-49db-9e89-88f23aa30af3	f
c721710b-ce98-41ad-a6e8-7bc7d1520271	65e08ab1-399c-48db-8e07-b31e04e40dd8	f
c721710b-ce98-41ad-a6e8-7bc7d1520271	f6316f74-5296-4217-9af3-64197b34e159	f
ea3ffadc-0a56-4c64-be05-daa6adf65801	4b8b3bc5-b743-4972-b592-69e433f4cafa	t
ea3ffadc-0a56-4c64-be05-daa6adf65801	9900532c-e2ab-47f3-9516-ea3cec96e378	t
ea3ffadc-0a56-4c64-be05-daa6adf65801	c6905512-e8ff-4f49-82f2-0cb590030777	t
ea3ffadc-0a56-4c64-be05-daa6adf65801	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	t
ea3ffadc-0a56-4c64-be05-daa6adf65801	369540dd-1dcb-4883-8da3-215feb041597	f
ea3ffadc-0a56-4c64-be05-daa6adf65801	24e8cdc6-c553-49db-9e89-88f23aa30af3	f
ea3ffadc-0a56-4c64-be05-daa6adf65801	65e08ab1-399c-48db-8e07-b31e04e40dd8	f
ea3ffadc-0a56-4c64-be05-daa6adf65801	f6316f74-5296-4217-9af3-64197b34e159	f
ca96705a-df78-4b2d-8c45-d2c58a14027f	4b8b3bc5-b743-4972-b592-69e433f4cafa	t
ca96705a-df78-4b2d-8c45-d2c58a14027f	9900532c-e2ab-47f3-9516-ea3cec96e378	t
ca96705a-df78-4b2d-8c45-d2c58a14027f	c6905512-e8ff-4f49-82f2-0cb590030777	t
ca96705a-df78-4b2d-8c45-d2c58a14027f	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	t
ca96705a-df78-4b2d-8c45-d2c58a14027f	369540dd-1dcb-4883-8da3-215feb041597	f
ca96705a-df78-4b2d-8c45-d2c58a14027f	24e8cdc6-c553-49db-9e89-88f23aa30af3	f
ca96705a-df78-4b2d-8c45-d2c58a14027f	65e08ab1-399c-48db-8e07-b31e04e40dd8	f
ca96705a-df78-4b2d-8c45-d2c58a14027f	f6316f74-5296-4217-9af3-64197b34e159	f
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	4b8b3bc5-b743-4972-b592-69e433f4cafa	t
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	9900532c-e2ab-47f3-9516-ea3cec96e378	t
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	c6905512-e8ff-4f49-82f2-0cb590030777	t
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	t
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	369540dd-1dcb-4883-8da3-215feb041597	f
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	24e8cdc6-c553-49db-9e89-88f23aa30af3	f
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	65e08ab1-399c-48db-8e07-b31e04e40dd8	f
ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	f6316f74-5296-4217-9af3-64197b34e159	f
915ebc6e-9114-4b3d-b560-3a990dc49d20	4b8b3bc5-b743-4972-b592-69e433f4cafa	t
915ebc6e-9114-4b3d-b560-3a990dc49d20	9900532c-e2ab-47f3-9516-ea3cec96e378	t
915ebc6e-9114-4b3d-b560-3a990dc49d20	c6905512-e8ff-4f49-82f2-0cb590030777	t
915ebc6e-9114-4b3d-b560-3a990dc49d20	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	t
915ebc6e-9114-4b3d-b560-3a990dc49d20	369540dd-1dcb-4883-8da3-215feb041597	f
915ebc6e-9114-4b3d-b560-3a990dc49d20	24e8cdc6-c553-49db-9e89-88f23aa30af3	f
915ebc6e-9114-4b3d-b560-3a990dc49d20	65e08ab1-399c-48db-8e07-b31e04e40dd8	f
915ebc6e-9114-4b3d-b560-3a990dc49d20	f6316f74-5296-4217-9af3-64197b34e159	f
9dac498e-28fa-4cc0-8673-199f0649e772	4b8b3bc5-b743-4972-b592-69e433f4cafa	t
9dac498e-28fa-4cc0-8673-199f0649e772	9900532c-e2ab-47f3-9516-ea3cec96e378	t
9dac498e-28fa-4cc0-8673-199f0649e772	c6905512-e8ff-4f49-82f2-0cb590030777	t
9dac498e-28fa-4cc0-8673-199f0649e772	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	t
9dac498e-28fa-4cc0-8673-199f0649e772	369540dd-1dcb-4883-8da3-215feb041597	f
9dac498e-28fa-4cc0-8673-199f0649e772	24e8cdc6-c553-49db-9e89-88f23aa30af3	f
9dac498e-28fa-4cc0-8673-199f0649e772	65e08ab1-399c-48db-8e07-b31e04e40dd8	f
9dac498e-28fa-4cc0-8673-199f0649e772	f6316f74-5296-4217-9af3-64197b34e159	f
b9383891-8e16-4b4b-9259-12f206ec6141	2de3dcb0-0e34-457d-8983-506a733edebf	t
b9383891-8e16-4b4b-9259-12f206ec6141	4b8b3bc5-b743-4972-b592-69e433f4cafa	t
b9383891-8e16-4b4b-9259-12f206ec6141	9900532c-e2ab-47f3-9516-ea3cec96e378	t
b9383891-8e16-4b4b-9259-12f206ec6141	c6905512-e8ff-4f49-82f2-0cb590030777	t
b9383891-8e16-4b4b-9259-12f206ec6141	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	t
b9383891-8e16-4b4b-9259-12f206ec6141	369540dd-1dcb-4883-8da3-215feb041597	f
b9383891-8e16-4b4b-9259-12f206ec6141	24e8cdc6-c553-49db-9e89-88f23aa30af3	f
b9383891-8e16-4b4b-9259-12f206ec6141	65e08ab1-399c-48db-8e07-b31e04e40dd8	f
b9383891-8e16-4b4b-9259-12f206ec6141	f6316f74-5296-4217-9af3-64197b34e159	f
\.


--
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_role_mapping (scope_id, role_id) FROM stdin;
4d4dd947-710c-404c-93d3-49c6e577decb	d36340f2-ab2d-4d64-a92a-9f6b6b73e07e
c8289a09-8106-4a60-81a3-13108eee65e8	25bb0d40-deb9-45ca-bbaf-316cd6c9a8ad
369540dd-1dcb-4883-8da3-215feb041597	3517ad10-8f33-4678-b1c3-4682361ee328
\.


--
-- Data for Name: client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session (id, client_id, redirect_uri, state, "timestamp", session_id, auth_method, realm_id, auth_user_id, current_action) FROM stdin;
\.


--
-- Data for Name: client_session_auth_status; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_auth_status (authenticator, status, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_note (name, value, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_prot_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_prot_mapper (protocol_mapper_id, client_session) FROM stdin;
\.


--
-- Data for Name: client_session_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_session_role (role_id, client_session) FROM stdin;
\.


--
-- Data for Name: client_user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_user_session_note (name, value, client_session) FROM stdin;
\.


--
-- Data for Name: component; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component (id, name, parent_id, provider_id, provider_type, realm_id, sub_type) FROM stdin;
031ca851-9367-43f9-b399-daf3789caab3	Trusted Hosts	master	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	master	anonymous
e0f7dc57-efd8-479f-b66d-703b215ef272	Consent Required	master	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	master	anonymous
5d72831e-574b-47cf-8389-8f9fb5bd9096	Full Scope Disabled	master	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	master	anonymous
6db93b3a-dcad-4dfc-a0ca-e48362631924	Max Clients Limit	master	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	master	anonymous
3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	Allowed Protocol Mapper Types	master	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	master	anonymous
d9fbdd6b-138b-4006-a0d1-4c0bb5f42fb0	Allowed Client Scopes	master	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	master	anonymous
d6c9b57e-a603-43ff-bafa-7f15f8a1d863	Allowed Protocol Mapper Types	master	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	master	authenticated
975635ee-4edb-4615-8bf6-9d727709e6a7	Allowed Client Scopes	master	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	master	authenticated
6a0652ce-ee5f-46a0-a810-147cef68e84b	rsa-generated	master	rsa-generated	org.keycloak.keys.KeyProvider	master	\N
00138999-afe8-422e-ac9c-b2b0ace5b27e	hmac-generated	master	hmac-generated	org.keycloak.keys.KeyProvider	master	\N
2a2a0e38-2825-4bff-92f3-d73e055ed4c6	aes-generated	master	aes-generated	org.keycloak.keys.KeyProvider	master	\N
cf8fd701-54f0-40a9-8483-226173e3221e	rsa-generated	ffd9d216-cccd-4637-b19a-78f9c935a3de	rsa-generated	org.keycloak.keys.KeyProvider	ffd9d216-cccd-4637-b19a-78f9c935a3de	\N
9d442b7b-d801-4954-85cf-fe381aa75da9	hmac-generated	ffd9d216-cccd-4637-b19a-78f9c935a3de	hmac-generated	org.keycloak.keys.KeyProvider	ffd9d216-cccd-4637-b19a-78f9c935a3de	\N
d8526004-7cde-49ab-a35b-08a41caf2f56	aes-generated	ffd9d216-cccd-4637-b19a-78f9c935a3de	aes-generated	org.keycloak.keys.KeyProvider	ffd9d216-cccd-4637-b19a-78f9c935a3de	\N
aa25b6db-e5e7-4909-8783-79eb5aebb121	Trusted Hosts	ffd9d216-cccd-4637-b19a-78f9c935a3de	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	ffd9d216-cccd-4637-b19a-78f9c935a3de	anonymous
8eaf9437-f42a-4b38-87a8-5b1feb0b5ee5	Consent Required	ffd9d216-cccd-4637-b19a-78f9c935a3de	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	ffd9d216-cccd-4637-b19a-78f9c935a3de	anonymous
ad5af14f-1bcc-41d1-a4cc-e4767331a9bf	Full Scope Disabled	ffd9d216-cccd-4637-b19a-78f9c935a3de	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	ffd9d216-cccd-4637-b19a-78f9c935a3de	anonymous
938f5bba-f239-46c9-a12a-38133ad6bb8c	Max Clients Limit	ffd9d216-cccd-4637-b19a-78f9c935a3de	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	ffd9d216-cccd-4637-b19a-78f9c935a3de	anonymous
bfceca4e-cbf8-4983-9c83-529da02ec12e	Allowed Protocol Mapper Types	ffd9d216-cccd-4637-b19a-78f9c935a3de	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	ffd9d216-cccd-4637-b19a-78f9c935a3de	anonymous
726865e4-4b33-413b-b4f1-2f9213da7da8	Allowed Client Scopes	ffd9d216-cccd-4637-b19a-78f9c935a3de	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	ffd9d216-cccd-4637-b19a-78f9c935a3de	anonymous
7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	Allowed Protocol Mapper Types	ffd9d216-cccd-4637-b19a-78f9c935a3de	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	ffd9d216-cccd-4637-b19a-78f9c935a3de	authenticated
f2eff18a-5c2b-489c-8547-5c6875afdce8	Allowed Client Scopes	ffd9d216-cccd-4637-b19a-78f9c935a3de	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	ffd9d216-cccd-4637-b19a-78f9c935a3de	authenticated
c45e9343-d220-4d51-ab31-0fb8795668a8	rsa-generated	basic	rsa-generated	org.keycloak.keys.KeyProvider	basic	\N
ac7339cd-eb45-4763-b853-62cea229794c	hmac-generated	basic	hmac-generated	org.keycloak.keys.KeyProvider	basic	\N
1d9ac14c-ea89-43c8-9b26-a07faaf04ed4	aes-generated	basic	aes-generated	org.keycloak.keys.KeyProvider	basic	\N
869fd322-086b-46b5-9256-4cad51d56d6b	Trusted Hosts	basic	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
b3014b36-8546-4077-b13a-940b0bb2d635	Consent Required	basic	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
f2e5e789-4154-4513-9477-dd707cb116c7	Full Scope Disabled	basic	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
12d6b944-1384-47f3-8a8a-9f7bd35dab59	Max Clients Limit	basic	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
fb7ed052-82a3-492a-b21f-7a6e4f84288e	Allowed Protocol Mapper Types	basic	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
7d382393-95c7-40a9-b888-fbe855d8aa13	Allowed Client Scopes	basic	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	Allowed Protocol Mapper Types	basic	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	authenticated
8aaadf98-3b39-4674-b1e8-719f48a0f286	Allowed Client Scopes	basic	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	authenticated
\.


--
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component_config (id, component_id, name, value) FROM stdin;
45d22406-7e41-4141-a12a-214c46e23ebb	6db93b3a-dcad-4dfc-a0ca-e48362631924	max-clients	200
e78a62ca-180f-4aaa-8954-bb624a6854b9	3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	allowed-protocol-mapper-types	saml-user-property-mapper
2a82acc0-4c62-477a-b026-108ed57c87ad	3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	allowed-protocol-mapper-types	oidc-full-name-mapper
91e9c768-91e7-44b6-ac4b-c0e7b9723834	3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
79f52f87-e15f-4ea1-a59b-4df0279b99e4	3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	allowed-protocol-mapper-types	oidc-address-mapper
b494d360-c0c2-4d28-9fb6-789db7fa60f6	3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	allowed-protocol-mapper-types	saml-user-attribute-mapper
23393f2e-58ea-4dc1-b482-d07e225d5bec	3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
3c6e8d92-6b0e-47cc-87c7-81fb8bf886ae	3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	allowed-protocol-mapper-types	saml-role-list-mapper
50774c8a-139a-415d-a0d1-89a43fe3e413	3438a7dc-4ac4-4173-bb83-1ab58dcae5c8	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
6e606f56-cf8f-48df-bcca-68b4a4c4872c	d6c9b57e-a603-43ff-bafa-7f15f8a1d863	allowed-protocol-mapper-types	saml-user-attribute-mapper
b6f99e69-5bbb-4f38-b047-842831d9c5cc	d6c9b57e-a603-43ff-bafa-7f15f8a1d863	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
15733c52-61a0-4c86-851d-73b68900a3e0	d6c9b57e-a603-43ff-bafa-7f15f8a1d863	allowed-protocol-mapper-types	saml-role-list-mapper
4049d587-b0c0-42fc-836f-47c0f2d5ec70	d6c9b57e-a603-43ff-bafa-7f15f8a1d863	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
4cd11a47-1735-4764-bd5f-7016a193ca27	d6c9b57e-a603-43ff-bafa-7f15f8a1d863	allowed-protocol-mapper-types	oidc-full-name-mapper
52e1ea06-93bf-4802-ae93-00d20cd66de3	d6c9b57e-a603-43ff-bafa-7f15f8a1d863	allowed-protocol-mapper-types	saml-user-property-mapper
420ef903-d5b3-400a-ab88-21da8bc852bd	d6c9b57e-a603-43ff-bafa-7f15f8a1d863	allowed-protocol-mapper-types	oidc-address-mapper
df9f946c-071f-4a88-aa7b-54650342a7f4	d6c9b57e-a603-43ff-bafa-7f15f8a1d863	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
c6886b99-23f6-44a3-8c1e-ae40455302e3	031ca851-9367-43f9-b399-daf3789caab3	client-uris-must-match	true
81bb84e9-0b32-4647-8694-d8c879bcb73c	031ca851-9367-43f9-b399-daf3789caab3	host-sending-registration-request-must-match	true
57e3da5b-d466-4335-a889-bfb9c8215bf0	d9fbdd6b-138b-4006-a0d1-4c0bb5f42fb0	allow-default-scopes	true
3218906d-8cfe-4cf4-9a8a-1e8dc3078194	975635ee-4edb-4615-8bf6-9d727709e6a7	allow-default-scopes	true
091961c1-7d52-4f9f-821e-d29aab05253a	6a0652ce-ee5f-46a0-a810-147cef68e84b	certificate	MIICmzCCAYMCBgF06SspFDANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjAxMDAyMTE1NDE0WhcNMzAxMDAyMTE1NTU0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCwlL+9mPAFEBhwRq2Kciak6NTGgMwjjkP/uMwa+zkXuS8mWECcgpmtzyK9IfGGQMge0yHHjMTnknTdJRttv4E+Mxo+luCxh4AINrwwDCLzNf1udpbhegB1VCKcs3rCBAxA+3jX8oUq9zu+xi5VWDwvL/jnCfoAsFHt53zIvCqf55wObwE1ZnPqwmvKvjVUlfCAFU8vylT7rqH9LswDPJG5Zivqcz8G0ituwEAXFgrnaEmkHcPyP8yh8t9VeUklScQg2EnxqCpS10xquowlD0Sgpxk8QfOZ6d6de/ldZX9wirCoG5c0djlpf4nlx9FElajMtrbVfJLSl8DnTEVfyC8vAgMBAAEwDQYJKoZIhvcNAQELBQADggEBADR94/fZNn1GV+tD8AS34DTFLwXWZ+yR8wtNeTGdr0j8xq9AeXVBFhf/eRZy/YCVZQggxbM4I/uPnVdYsPrpfOAOYtkPj9wK9Q2A0TN6QZjOcD3eWSMPNrs1mCuH3WUZ9H8j0HafsXOn/osvKHJJm8vceaTDpPzfjfYyeCOKxKY02lSd9LoWh1CBNBaXnmcpGAupwpBTqMQQp7DIFyG+ss6rgsXin4LJIaQZcyrnnLcpsyvL1+mU5m4Rv86J9kAwpxMIGq7s+OvAHL3xcHMOPTY3LKmSz99pCNoaDF3sf3gxWnUtCK8X7UWIna7sywLiCpTDlGpa88uyX26jzi6yIEk=
223e8a45-8b34-4bcd-b0bb-f5110d35cb9a	6a0652ce-ee5f-46a0-a810-147cef68e84b	privateKey	MIIEowIBAAKCAQEAsJS/vZjwBRAYcEatinImpOjUxoDMI45D/7jMGvs5F7kvJlhAnIKZrc8ivSHxhkDIHtMhx4zE55J03SUbbb+BPjMaPpbgsYeACDa8MAwi8zX9bnaW4XoAdVQinLN6wgQMQPt41/KFKvc7vsYuVVg8Ly/45wn6ALBR7ed8yLwqn+ecDm8BNWZz6sJryr41VJXwgBVPL8pU+66h/S7MAzyRuWYr6nM/BtIrbsBAFxYK52hJpB3D8j/MofLfVXlJJUnEINhJ8agqUtdMarqMJQ9EoKcZPEHzmenenXv5XWV/cIqwqBuXNHY5aX+J5cfRRJWozLa21XyS0pfA50xFX8gvLwIDAQABAoIBAAivyJ7zHxugpxMe5vqgkvYZ3h3FyEUXgpDZ7nCFW1GncoJYZRVN93FtdzAGs3L/TNj3WfoPGsCpm8YlRSwo95qvuOLLWVJicBH3X1qdvjpotYbxnoqJDey3rtw2mBtjR5cKx+8XpyVt9Cp2ZWEdbhiEK6JyAzJ1ehJSCPl3CEHFddKCqkMMu+ZCd2mHR/4n+mIPnNbKxUDZHin7e6PCQRiGEbQSMrilxivC5p6eiDGzqaoTdi3WY1LulcOWarQL8Lsp/P10aSVBfwUZmnevvRNW2jW3d+QXQ2evtA4dGiNXeFuzZ0HPb/WSjx5MKfHi2YlxlqCCvD7bFpnq6MLaloECgYEA/UIr5+ciyRjOopzG/LDKrCh8qFJGuo1oRXPQL+/d+HoqkvP2vF2zkEI+mlRzLc/m7kO4cJ8VYswcynAzTrRhxeFnAdu0GhBZiVD7fpD1zt5b6JIO7/UYIxGbP0vaw4szLwL7hCTuHb1FNS7tJbir6BbvtRcNhzwN9ZyVUwOxBVcCgYEAsn4W4338mrOXOe8uXa/dpV8Phzrsuyz5k45SGAHAChkvWeeQ7w9aaYDoXdui9TZTWkkey0gBB+d4pY6MoAq9sC9YfsKgUtPAH1I7l/Udh00ZM3psYBsKTwEmTkB1Ha/atNjqetNJtuhgEpTtEpwMaz9gF896GhJ2TcC/oJeJZekCgYEAw86bf6r2/CAP8y3fs5NEv6J17vXd9XJLQhduyQFdzzU1IXU6OR0BLfHp0QymGK97TpBRU9HLiR1izSm+oYVZatMA/zDMqLInZ8GTEKInSpAk40W6AtCunr6IF4IgW7uOETTvHZYn/BpQHfRwKhAD6WeCYbK3JO3LpTAxS4O5I/UCgYBLo1sXtD/jXs9q4YyIbwpCFfKCn9nJx9lLSjhHrBYxMVL7ikHEzIDHzLSrcXOw7gCMdgfypOSq8NATeEDnYSXZD3c04E0ITGtR2osebeTBfU58nhhm8Y6AxD/zUSVQG0FW+cUDn53RQM/Vj/6WsEIjAIw8CtP3UHOJp3CNISo8YQKBgGPgNTyaSy7vpv7i+0JR5r05g8EnY+vRV4KehdhxfccBarRWPgj4p5XADtTADSmwQsqNFFoswrjZKm5YDB5tIpuirw1fr9rEFHFry6yC1QlG+bz/83iTfDugT9FHsbRlwtdwqnX0LLVWYO4wpyYY/MdaWzN1Z9WH86SnuMPf+NgH
b600631f-24e6-417f-901c-c9b92f7e3cc1	6a0652ce-ee5f-46a0-a810-147cef68e84b	priority	100
9f3271c5-2e2d-4e89-8b4a-8e3736e5f4b7	2a2a0e38-2825-4bff-92f3-d73e055ed4c6	kid	2f4197a5-12cc-49c0-9a5b-dbbf5b229198
be6eba12-baf6-4633-9d55-544c4b2fd3d9	2a2a0e38-2825-4bff-92f3-d73e055ed4c6	priority	100
e74c018b-aa6e-4868-9bf3-8765fe92c245	2a2a0e38-2825-4bff-92f3-d73e055ed4c6	secret	ud62IDrwkimG9V-pYd-bog
4ef42025-4aed-44d0-8c00-83c7cc86d1a5	00138999-afe8-422e-ac9c-b2b0ace5b27e	priority	100
8ca04d96-24ca-4903-9345-89cec727edea	00138999-afe8-422e-ac9c-b2b0ace5b27e	algorithm	HS256
59eb296d-6857-45f8-8485-840507d784dd	00138999-afe8-422e-ac9c-b2b0ace5b27e	kid	2b3c314a-3034-41c8-8791-716a1cb406d4
2eeefc43-78a4-434d-81aa-16db9df7080c	00138999-afe8-422e-ac9c-b2b0ace5b27e	secret	J4n8ELjpZpydEupW-nujPvHV1mWOt0PW3iOLQAxT8GXiiXXiggrRyk5aWfYLZQwhG-W0FoC46rRxBLip6TQIOg
594d2de4-4f64-4172-84a8-3a954068213e	9d442b7b-d801-4954-85cf-fe381aa75da9	priority	100
f8e4396c-4adb-4dbe-8d19-880853626390	9d442b7b-d801-4954-85cf-fe381aa75da9	kid	b8be320a-ddff-4f59-8f41-f9a44bce6476
29f1df2a-3b5b-4abc-b114-d12bf2668b8d	9d442b7b-d801-4954-85cf-fe381aa75da9	secret	93Wyeox4uXD4tv9HLgSsCdMV6AxpfCwrpoSAvwjTkrhJKyvbCPBrNZaxwcNLHyVVBxUVx7q21ZycVpqG-CFtEA
01caa9e9-7721-4af9-91b0-ae2f105cdaea	9d442b7b-d801-4954-85cf-fe381aa75da9	algorithm	HS256
835a66cb-18cf-4333-8583-db372616100d	d8526004-7cde-49ab-a35b-08a41caf2f56	secret	I17OR0K5ZtYtMtt1JUVguA
9757b500-0024-4038-9610-3ba961f98198	d8526004-7cde-49ab-a35b-08a41caf2f56	priority	100
b11da271-f04d-44a0-a97a-a4a4700bc619	d8526004-7cde-49ab-a35b-08a41caf2f56	kid	32ffd492-0ee1-4f39-be9f-d78ad3934b21
89826669-f1f2-41fa-97e0-47922bdc11c4	cf8fd701-54f0-40a9-8483-226173e3221e	privateKey	MIIEogIBAAKCAQEApn+ipNcnvXWeM0RTctyCjrx3LQ7eHbn4fhKn7XuZvqZ7qawN4Y+sRvfdu0FCE0DbItlRF9GFGGN3WDik402fnYqYeUSsxPr0LbLgMwiUaPadBl/nfGVoaOzmojTdZlhzUz+hBpmnMVpadXZEaK163/qiXx8jEFLB5jrJYWkPOcnspIYKDGcZWT/bOzbFl1mVeLMcEv6qEfoyF/6ZC4quskg2a9GHQXzmunoxk19X1+/D1wXbR8iQZX4qL9mfj4894lYH6YguGwMKQGm1Bpd5WR2WGHxDALQv8NPGCprDKg3YUMKejQrARlFqiDHGInpPxXfbp4kVDIS+XdolAKse9wIDAQABAoIBAFFVwo9CJ8Cux3SF6ToQLJsryBAz1h+xbImx9WTW33k5/OkbCsDonaEhjqjeLTgYk7RHcwzuplUOqgtnyGzdy557SRbcjIXBji0Q1+M2SsGnz3eAvCWRqFqxd80/g/RuOxAs4i3GO92pJM2C09JLBN6LomxTWp6rvtsIVr4GQ5DXoDezmuFYQed1ICJhEjmEXP9mXzLqoilbfKFjSkBQg8dn+p6Nf1zJBw2yTQvH7rPA3+xA27/CqGOISZBJuFwwZSgmH3Zw23+ywoAibjphXd3qZj9Bebutf/BO4014nsW1XcJtahxYB48/YIypFL+mllom6IPsVOW2x4zlM4YiNsECgYEA3yK+p8vprEp054itUq1PrHxI43fFsMRiCHkYl+LQc7bNKBVfDZO7K1q2EkOSbu7O8a3vTz9JpnMAmR/GlMFCM9Rl7pEL/9cXos0IBnu4YKsXTgkDIbcilk/EhjmS3/sVQdL6HerV5Qf440uraCX75iN57MLnuEjtUkIBCAKi4+ECgYEAvwVoFG7Lji43wpzE+/D3fZklgSl6Kqn+b0sEtoiCKPGE8G1tbit8mP4OnAVGiXQz0ItS4v7XTaCB7IDZ63gioeQTRQZQI0o+FXEmstR44ucZgtwRRllJmtyybpFXXkRkU1tBBpKg7z1tP4ii2sED1os3bcuB3+LeDx96+l+1XdcCgYA21+dcfrYUbsiFEAbpx0dJ8dJIdmvUorAlvP3adxkdF9UdAQO35pOeeFE/8/PN6ExdAo9LPxbvHl0LRdAdR9Lpwk67cFMussNQdGyAi3Ap8mNr/rMSWlzZ7Qk0pHoBK0lyQFTRfaLNBEScOUEL/CoJyrZxBwbFOMd77FUsjtlSgQKBgFQt/MTsYpYAth/0WDay5U4bPFTkQ2sjyPWguK38EGgcrzoI7y2aymjdpPCKvp/6bo8bpuZT6evSrQ7dZauIILL5QKitdIlowV1PpP8v9SoBL9PkSVSYKoCte5CQSlFHkHLPhyNvYK6tgkR6YVJHtvpIFaA0C8LvRm6hr99AaDu3AoGANSP1TAkhECPc8QYCPpGGx7t8ddSEiKZP+JqXK5PvYVMBuHHEP2waAlPVhSB+pcpcV6im86Q/mVg7mMaKZvei8qLDX3D1Ix5aXUgBHunveyVnGMHyyLovOACKLo/v3vsaoqq5wj4XhdrvXkQi9xRECkMTNsTdeCTWHVEYPjNh7NU=
73461290-3325-4c19-b1ea-f01ce0cc12cb	cf8fd701-54f0-40a9-8483-226173e3221e	priority	100
5b82f77d-af88-430d-97f6-3f3176274c77	cf8fd701-54f0-40a9-8483-226173e3221e	certificate	MIICoTCCAYkCBgF06SsxYDANBgkqhkiG9w0BAQsFADAUMRIwEAYDVQQDDAlkZW1vcmVhbG0wHhcNMjAxMDAyMTE1NDE2WhcNMzAxMDAyMTE1NTU2WjAUMRIwEAYDVQQDDAlkZW1vcmVhbG0wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCmf6Kk1ye9dZ4zRFNy3IKOvHctDt4dufh+Eqfte5m+pnuprA3hj6xG9927QUITQNsi2VEX0YUYY3dYOKTjTZ+diph5RKzE+vQtsuAzCJRo9p0GX+d8ZWho7OaiNN1mWHNTP6EGmacxWlp1dkRorXrf+qJfHyMQUsHmOslhaQ85yeykhgoMZxlZP9s7NsWXWZV4sxwS/qoR+jIX/pkLiq6ySDZr0YdBfOa6ejGTX1fX78PXBdtHyJBlfiov2Z+Pjz3iVgfpiC4bAwpAabUGl3lZHZYYfEMAtC/w08YKmsMqDdhQwp6NCsBGUWqIMcYiek/Fd9uniRUMhL5d2iUAqx73AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAIrJJVV9y7wUQPo9OSzQEJ1N2mJjF9FIYxsceOfCH0TohBFIUpTR/kpkNgi/ISIswTp87U0IzI+JszSF102jMYfybEuLbGOPpc7OXJDzVCvlvrhXtS0GpUj1uWVSGXRV82/TG+gMw4BIag11q+K0HM+pPr3PxIAaiNSFna+DexljUCwKcP8pwIuEzfBsMXXYbn/0k5rEVPWBSJ2jR4GZoZtrh5gxHUBVzLuESxEw58uaaZtG/wbqPnsh00RfOI1ClOm9p41zshQ1s4pNCiZguSQB1LJ7szWGGkVAOEibLrcBk5uOLANwxVyYufiZZBiiG6NxGLVV9qOy5YXiaYZcGjM=
c9ce0369-2811-4249-9e07-b0cd70572f1c	938f5bba-f239-46c9-a12a-38133ad6bb8c	max-clients	200
c7d17564-0be2-441d-931b-d5798d05ad15	7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
0784b749-6d72-4176-a5d6-6fbe1067325d	7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	allowed-protocol-mapper-types	saml-role-list-mapper
39c56431-db8e-4f1b-974b-093ff457ea97	7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	allowed-protocol-mapper-types	saml-user-attribute-mapper
1cd2c7bb-141f-4e71-bb55-3e6ec6567c13	7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
355a3fd4-dee9-457b-b747-ff93e23368ed	7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	allowed-protocol-mapper-types	oidc-address-mapper
4f488473-9241-48b6-8d85-b2f84717a5dc	7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
360faaed-ea00-47cb-97a9-1d8d84a41fcf	7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	allowed-protocol-mapper-types	oidc-full-name-mapper
c06c43f9-9cc5-494a-b758-fae287734fef	7f24c5af-2733-4d8a-8a3b-460c1c77bd9e	allowed-protocol-mapper-types	saml-user-property-mapper
95cb7fcd-af75-4a4a-a1b1-917a06e511c9	726865e4-4b33-413b-b4f1-2f9213da7da8	allow-default-scopes	true
92804c2f-8478-40ab-9f3c-17f58ff4175b	bfceca4e-cbf8-4983-9c83-529da02ec12e	allowed-protocol-mapper-types	saml-user-attribute-mapper
7a8cfe46-4460-479e-a6a5-9f440d95f321	bfceca4e-cbf8-4983-9c83-529da02ec12e	allowed-protocol-mapper-types	saml-role-list-mapper
f348e0f3-46ca-44b5-bd94-f4112784a671	bfceca4e-cbf8-4983-9c83-529da02ec12e	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
737ecb55-94a1-46e2-9534-8ba73a417f49	bfceca4e-cbf8-4983-9c83-529da02ec12e	allowed-protocol-mapper-types	oidc-full-name-mapper
148397ee-a6e8-4831-ab29-9999516e486e	bfceca4e-cbf8-4983-9c83-529da02ec12e	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
38c1ded6-105f-4978-b47b-8a223eff75fd	bfceca4e-cbf8-4983-9c83-529da02ec12e	allowed-protocol-mapper-types	oidc-address-mapper
d06c832a-ca92-4604-bd6f-808c31dfa6a2	bfceca4e-cbf8-4983-9c83-529da02ec12e	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
04c575f5-5cbd-4119-9aec-5590e1a23b32	bfceca4e-cbf8-4983-9c83-529da02ec12e	allowed-protocol-mapper-types	saml-user-property-mapper
c4f9bea6-a54e-4ef2-8823-14c5ca380ea6	f2eff18a-5c2b-489c-8547-5c6875afdce8	allow-default-scopes	true
38595fd1-0d3c-47ab-b4d3-28808891b2c2	aa25b6db-e5e7-4909-8783-79eb5aebb121	client-uris-must-match	true
dffbbe39-a64f-4b75-a915-c8bc26f2d2bb	aa25b6db-e5e7-4909-8783-79eb5aebb121	host-sending-registration-request-must-match	true
c8114e7f-221c-4cf6-9196-de7f16e21e2f	c45e9343-d220-4d51-ab31-0fb8795668a8	certificate	MIICmTCCAYECBgF06T8hFTANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAViYXNpYzAeFw0yMDEwMDIxMjE2MDJaFw0zMDEwMDIxMjE3NDJaMBAxDjAMBgNVBAMMBWJhc2ljMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAiOlWzg2tddsjxHk9j299z82yhk/d8TN0efY4bJMwUChivotnHA6Zd2GDngn7qV22H17WAvhARH/k8KK8twmfDwA8bQwlWCJBzfBkwcwYpxUG2Ilg3AxarTOqyZOx36JwRUCGcJFoPgSKXKEpc+98yK00J7eRiFbtManCOrtjmif9a9yywl3KfGqXeBUKPWAvV7WlzPIzfhtgKrRwsuaD2nk3DR0CllwsLXBnc4VC8suu1ECj4rJI92J0QQyv/LYZ9zWIImzo0oUr54jqPNDACjNAQe5C++92eaCwHYp3RuZaHqcePsxueypndhVXOcirJyKaWiogiwi/mz7FMt7xoQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQBoJtQdIkzlvR+riuosrXEi3tl+N0dFQp99OP4b5z13GYSrEwhU3gWA8XMObxZPnFI5yAyb50iuTDSKasgfnzq7dGR6c8QGHWKnaM+tEGby9rx0OJvOAWzKUr0RE9BjiRrPKusFmEfa7UDZy59u9yC5zr3DnwrIV5mtusJyl83HOPwQysyA7taaTwFjVdu/WR6MEjPsdI1L0n4/kafa3/NWP+ytlwQ7yYENRKiACexmv4OZs8AIWoO29Al3JLczTVX5q7lPSntTaEGdvDkSFIOEXg2NCpyBNzx3VfwBdi2yBSyLegbm5M58DWlN3PoG7VgoyxmUNGb9IwFcND7IbtF+
f611e964-0006-450a-9ea6-cb0b1cd67101	c45e9343-d220-4d51-ab31-0fb8795668a8	priority	100
07f9b976-89fa-46bd-bda1-ec01d53fa291	c45e9343-d220-4d51-ab31-0fb8795668a8	privateKey	MIIEogIBAAKCAQEAiOlWzg2tddsjxHk9j299z82yhk/d8TN0efY4bJMwUChivotnHA6Zd2GDngn7qV22H17WAvhARH/k8KK8twmfDwA8bQwlWCJBzfBkwcwYpxUG2Ilg3AxarTOqyZOx36JwRUCGcJFoPgSKXKEpc+98yK00J7eRiFbtManCOrtjmif9a9yywl3KfGqXeBUKPWAvV7WlzPIzfhtgKrRwsuaD2nk3DR0CllwsLXBnc4VC8suu1ECj4rJI92J0QQyv/LYZ9zWIImzo0oUr54jqPNDACjNAQe5C++92eaCwHYp3RuZaHqcePsxueypndhVXOcirJyKaWiogiwi/mz7FMt7xoQIDAQABAoIBADP8BU2vu9EoJ+iN8GXp+2dPvx1obekLlIpKhxoSuSF2dCfNXpU0pejCSetT9w5T2rcGl1QBVsWrmg4UfHszWAWmHUt6dSOFvl6njFpZWHL4dOT7JJ/owPVKzOpE/iDf2Kky2tkbHO2PY8nQF6FBqau4uDjsZoHSH7XfszQBusvpGXAwCX6EDR7WQZuyxm0S2RnjAd4k/nj3BJO17GH5imv5QTZEgOek8C+8h3Cs8sHQV2hSv/I+eWDgL1bBYjUY0cgdPSD4xAkdBQHt/3za1SYbyHQKU0ZmACjaa5HGcIYOZC2t9FNDcKuZYNYpuGTDW2tV6O+4qUkyAohUqsfoQAECgYEA6os4FFCOZ7cgRSWdJe6tDIqE8Ziwd5gWY5/ZXURXCDvbF1AsN21daReAOURfrzR08GJv6j7QUMKhvK093usCNbp2iOM/+PeQCyO/CvgbMf4LUz0l3IBOe29nHSpyxFPdMtZMMoN7pRT+tI3rI3O097vHO+TNG5AknGhrJJQiaSECgYEAlW+rJQXlfNSlYk9Ltwr+S9zTlPVuVdLzhcs7NBtVX6mbuZs4Z51PVluj+jK5EWPbcXHAgkgsal2O9qGrFncbzyiNEXQzGWX+5mxvcu4FfZPSLp13Il7kcR0gtunapgXaV4LEflcIfDW3CA2LdO5oTikMj+e0lArygIE6OdGw+IECgYBJjESWojg1r8gvxr7DsVeUki9kL1RO/GMw9GROCescyuBGLD7hVqsvFE6CJr22jEWLR+L+WpoqaQ4cw1qed6VmwcT/4fsikEccJyZ2Qx0MDTTx8j/YKGfz7xgvnisFA6NemLKmOHLibnX8mnA82sDJ2pl8X6At34KLhXbrroQn4QKBgDxfUghyGmXVTz+pg5Bey6AAhiZ/BWV9BU9/bNq/VD2Cu1xAHoiV4FCmU1gol+Yzrptldn3sBK2wQKrZY9J+qmiGHH/5rw9KyrFzC4+mI+e5Ccg1a8UiCy67stTTI7fBU5XZSeM07EOqO9jwB/BkxRUWtnGJDcZlqdVK4Cgt1E6BAoGAPtdOxWnFdaVM50+AK7s9IPVE/5++I1yAXYchyAGe9rbzm2tpvai0w+JJb7aqsSzxnOjQTap+kpru8CA18xKjmWpXbo4w9Pvv/MEIobyp4RtpOQpITmVNbbDVyqg6xnIDgFKXdJIBUFS8kfNqjCF4ovZPXn17jwEp5dcKtdaheyI=
d250c3a7-989e-4d90-8b5a-8d3713732e9c	ac7339cd-eb45-4763-b853-62cea229794c	algorithm	HS256
3f7a74c5-bd81-4776-ba3f-fb549c23a716	ac7339cd-eb45-4763-b853-62cea229794c	kid	e861a1b5-5d9f-4cf1-ba41-2d04a5b6ef6b
7b4f43c9-e35e-48bc-b0e1-39129161af21	ac7339cd-eb45-4763-b853-62cea229794c	secret	M0vmtJ9pwRezGlGF-aAaaOaeuO84f79UkJQljRdHKgWKBm_F-4OLzj7r7kEg_g0E-vMxG0o7EGau1BdPyfOT3Q
ddc124ed-cb75-463b-9435-faaf74627b66	ac7339cd-eb45-4763-b853-62cea229794c	priority	100
5d716def-75b5-4a5f-9a88-f82d72472bd8	1d9ac14c-ea89-43c8-9b26-a07faaf04ed4	secret	m6_vOp6dcAhSdoSuZx2MyA
5d8a5db8-5360-4f71-85bb-1fcaa20ef0b1	1d9ac14c-ea89-43c8-9b26-a07faaf04ed4	priority	100
8a90c93b-5355-4266-8bc7-5b12e3605d6f	1d9ac14c-ea89-43c8-9b26-a07faaf04ed4	kid	7a85ef6f-b4bf-452a-bd37-676ba9b0a914
4af04980-45e7-43ed-bfac-0b2a7e1308db	fb7ed052-82a3-492a-b21f-7a6e4f84288e	allowed-protocol-mapper-types	saml-role-list-mapper
cd52eea9-9925-4cdf-bd79-413f21497c4c	fb7ed052-82a3-492a-b21f-7a6e4f84288e	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
819d4a0a-5673-4277-8666-389e00e883c9	fb7ed052-82a3-492a-b21f-7a6e4f84288e	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
b0050dd4-2d8b-4ac8-9e4b-9ab782e5af56	fb7ed052-82a3-492a-b21f-7a6e4f84288e	allowed-protocol-mapper-types	saml-user-attribute-mapper
861d28a3-b0da-46d3-af81-dec7a3109a5a	fb7ed052-82a3-492a-b21f-7a6e4f84288e	allowed-protocol-mapper-types	oidc-full-name-mapper
2fafbbba-c94d-49d7-9670-5621828d24bc	fb7ed052-82a3-492a-b21f-7a6e4f84288e	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
6b829ff9-7a09-4b1b-95a1-14bc6aa7247f	fb7ed052-82a3-492a-b21f-7a6e4f84288e	allowed-protocol-mapper-types	oidc-address-mapper
44af9d2a-66d5-48d3-9fcb-557be28251f7	fb7ed052-82a3-492a-b21f-7a6e4f84288e	allowed-protocol-mapper-types	saml-user-property-mapper
562ecc82-1ea0-4068-8f00-e39818f96584	7d382393-95c7-40a9-b888-fbe855d8aa13	allow-default-scopes	true
d78b30ba-77ca-447d-bba0-43ef892dee06	4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	allowed-protocol-mapper-types	saml-user-property-mapper
6ddf62eb-8db1-4434-b630-4b6be28033ce	4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	allowed-protocol-mapper-types	oidc-address-mapper
74647e47-3d45-461f-a298-756930c9d570	4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	allowed-protocol-mapper-types	oidc-full-name-mapper
9f8bca4a-5792-4ce5-be09-c95dd6bfad6c	4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
1cfc21d8-4fa8-405e-a9eb-1cfb093ae8aa	4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
468683ff-883d-4631-9ffd-30d99a10d501	4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	allowed-protocol-mapper-types	saml-user-attribute-mapper
6df94039-ec84-4558-bced-3f86c7f4f353	4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	allowed-protocol-mapper-types	saml-role-list-mapper
b29619d5-dd6c-45e2-ac83-db03152a19f0	4c1f381b-2b97-4fdf-bc0c-8eef9f77af07	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
3f13318e-9634-45a9-99ec-c27f524e2051	12d6b944-1384-47f3-8a8a-9f7bd35dab59	max-clients	200
dbf1d5d4-0fb0-4c61-8c00-778810b12c1c	8aaadf98-3b39-4674-b1e8-719f48a0f286	allow-default-scopes	true
72c150c2-9272-46c7-8a17-359b91921338	869fd322-086b-46b5-9256-4cad51d56d6b	client-uris-must-match	true
85f6f0c6-df87-404a-a8ab-ee151b4a8545	869fd322-086b-46b5-9256-4cad51d56d6b	host-sending-registration-request-must-match	true
\.


--
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.composite_role (composite, child_role) FROM stdin;
a834bf42-28a7-44de-aa13-955a79f140b9	de43584a-6835-4b31-8174-7502fb34f210
a834bf42-28a7-44de-aa13-955a79f140b9	6dada5ec-013b-45a3-bb65-3f6532081279
a834bf42-28a7-44de-aa13-955a79f140b9	8f3c8026-d50b-4a31-9f18-d57cb7480168
a834bf42-28a7-44de-aa13-955a79f140b9	66e73d84-4312-4f0a-9a12-d15d3ead7950
a834bf42-28a7-44de-aa13-955a79f140b9	c95dd62a-e63b-4ddb-ad28-6d3113ed3fe7
a834bf42-28a7-44de-aa13-955a79f140b9	bcf45de4-4a51-4e5f-a5ca-5086c79892f3
a834bf42-28a7-44de-aa13-955a79f140b9	ae544360-2431-4d82-a095-912a57fdeb60
a834bf42-28a7-44de-aa13-955a79f140b9	9675f44a-d36a-4502-9963-babbfdc9d89a
a834bf42-28a7-44de-aa13-955a79f140b9	35a5d7e1-3182-4ab1-9418-ddabf097dd09
a834bf42-28a7-44de-aa13-955a79f140b9	6faddc45-36c7-4abc-aa0e-816f43c3e350
a834bf42-28a7-44de-aa13-955a79f140b9	504bbdfc-35f6-4d4a-9003-e6fc1998e60f
a834bf42-28a7-44de-aa13-955a79f140b9	27673416-e1e4-4103-8790-284f6c5623b0
a834bf42-28a7-44de-aa13-955a79f140b9	02b6e7ad-b77a-49b0-b1c1-870bbcad946e
a834bf42-28a7-44de-aa13-955a79f140b9	5e14dcae-2c14-48bc-8d12-de107f03d687
a834bf42-28a7-44de-aa13-955a79f140b9	5725279b-d484-42a3-a7e0-59637237f5b1
a834bf42-28a7-44de-aa13-955a79f140b9	73846464-4c3c-4c42-b620-ee1c246a5c03
a834bf42-28a7-44de-aa13-955a79f140b9	be6b67db-f7ea-4673-8709-b8bff41e0874
a834bf42-28a7-44de-aa13-955a79f140b9	da979e34-d6d6-49ec-ba3d-b8299e05beb5
66e73d84-4312-4f0a-9a12-d15d3ead7950	da979e34-d6d6-49ec-ba3d-b8299e05beb5
66e73d84-4312-4f0a-9a12-d15d3ead7950	5725279b-d484-42a3-a7e0-59637237f5b1
c95dd62a-e63b-4ddb-ad28-6d3113ed3fe7	73846464-4c3c-4c42-b620-ee1c246a5c03
60d90fff-c1a3-466c-ae67-ba9a976646a6	93668929-86aa-4815-af09-b2636b411035
1632f205-213b-48ea-95a2-1250ed1320ac	9d38f778-b79f-4b46-8a27-9d8631922cd3
a834bf42-28a7-44de-aa13-955a79f140b9	912e1c3f-7fe6-4052-afd0-a70a43c607bc
a834bf42-28a7-44de-aa13-955a79f140b9	b3f26354-8e04-4577-b51c-7fe6ad35214a
a834bf42-28a7-44de-aa13-955a79f140b9	abd5ad55-5f1a-4d65-add3-a252ad8bc125
a834bf42-28a7-44de-aa13-955a79f140b9	d60add29-4161-4f0b-a50c-d5dbe7d2811a
a834bf42-28a7-44de-aa13-955a79f140b9	433806bf-9980-4718-a286-8a0e48393698
a834bf42-28a7-44de-aa13-955a79f140b9	a1479b9e-c341-4512-bdbc-e99d24e320b9
a834bf42-28a7-44de-aa13-955a79f140b9	c38fcebf-e022-4159-9b01-89540d9493d2
a834bf42-28a7-44de-aa13-955a79f140b9	41af2255-6a30-4018-83e3-97d174b27721
a834bf42-28a7-44de-aa13-955a79f140b9	2298d648-8830-4d65-ad6b-c623a1758983
a834bf42-28a7-44de-aa13-955a79f140b9	3a7f0099-8ca6-43e1-a9b7-c22c30aece6b
a834bf42-28a7-44de-aa13-955a79f140b9	2ed0ec67-e138-44fa-87d3-6490de3f1fdd
a834bf42-28a7-44de-aa13-955a79f140b9	47125f35-9de1-4b8b-9f36-e9d1c7a6bd98
a834bf42-28a7-44de-aa13-955a79f140b9	dba651a3-5640-43a8-b427-d13f61772463
a834bf42-28a7-44de-aa13-955a79f140b9	511ef4ec-5c51-4fec-832f-b0bf5f06629c
a834bf42-28a7-44de-aa13-955a79f140b9	14a49174-f9d1-44df-9469-5eed6f81c47b
a834bf42-28a7-44de-aa13-955a79f140b9	52c5fa53-4ec1-4c5e-99ec-c53dd6e110d0
a834bf42-28a7-44de-aa13-955a79f140b9	67e2e664-3872-45a9-a610-6ae61d7a0118
a834bf42-28a7-44de-aa13-955a79f140b9	faa1f7b3-f3fd-4290-bbd8-5cb67b4e5e74
d60add29-4161-4f0b-a50c-d5dbe7d2811a	faa1f7b3-f3fd-4290-bbd8-5cb67b4e5e74
d60add29-4161-4f0b-a50c-d5dbe7d2811a	14a49174-f9d1-44df-9469-5eed6f81c47b
433806bf-9980-4718-a286-8a0e48393698	52c5fa53-4ec1-4c5e-99ec-c53dd6e110d0
f0865619-2853-4fa1-a7ff-28c82e8fb095	807761dd-b6e7-4d7f-b84b-c5ce1c8fbc90
f0865619-2853-4fa1-a7ff-28c82e8fb095	63fbd3e5-0b67-41d0-99d6-8d36cf382e36
f0865619-2853-4fa1-a7ff-28c82e8fb095	bdbe5830-d25d-45a5-b350-6220d4e13937
f0865619-2853-4fa1-a7ff-28c82e8fb095	d0642c99-56b8-4ea2-8261-c432d5145960
f0865619-2853-4fa1-a7ff-28c82e8fb095	82732a63-181e-4cff-a7ef-75e4427818eb
f0865619-2853-4fa1-a7ff-28c82e8fb095	75de6103-8107-4065-893d-a180622029ee
f0865619-2853-4fa1-a7ff-28c82e8fb095	0b86b7cd-f457-4fb0-8bff-2d4b7adf6fe6
f0865619-2853-4fa1-a7ff-28c82e8fb095	f060c4d7-6278-4de8-b6c4-11548863824d
f0865619-2853-4fa1-a7ff-28c82e8fb095	a6b21cad-c959-4beb-bf7f-c224b8d217b2
f0865619-2853-4fa1-a7ff-28c82e8fb095	8054fc71-1fac-4e39-91be-01ff2ce3875b
f0865619-2853-4fa1-a7ff-28c82e8fb095	5741f480-277f-4a7c-a191-588e785f2aae
f0865619-2853-4fa1-a7ff-28c82e8fb095	0844bbc6-8165-4646-9d61-564228a6873b
f0865619-2853-4fa1-a7ff-28c82e8fb095	f706b140-718c-43b2-8c1e-6c50b513a2e8
f0865619-2853-4fa1-a7ff-28c82e8fb095	0b6d6c04-da55-4cbe-b72e-28e471dda003
f0865619-2853-4fa1-a7ff-28c82e8fb095	9b2a5f3b-aed6-4760-a83f-f25973f357e0
f0865619-2853-4fa1-a7ff-28c82e8fb095	07c99f88-8474-43dd-9dbd-2cbb7a11f53c
f0865619-2853-4fa1-a7ff-28c82e8fb095	5a14bc93-25d3-408a-a080-1dffd116f297
bdbe5830-d25d-45a5-b350-6220d4e13937	5a14bc93-25d3-408a-a080-1dffd116f297
bdbe5830-d25d-45a5-b350-6220d4e13937	0b6d6c04-da55-4cbe-b72e-28e471dda003
d0642c99-56b8-4ea2-8261-c432d5145960	9b2a5f3b-aed6-4760-a83f-f25973f357e0
94c01f7b-6676-4d1d-8cfe-e54d94afd712	bcfde000-fc65-44ec-8cfd-f73456e04bf9
3b42d741-9a84-4683-9a5c-03b6e56add94	71cd24d2-35fb-4e79-8742-f252faa518bf
a834bf42-28a7-44de-aa13-955a79f140b9	8df616b3-68a8-47b6-af48-03f4553c8225
f0865619-2853-4fa1-a7ff-28c82e8fb095	47181648-2e5a-4b48-94f0-fe8c7b05025c
a834bf42-28a7-44de-aa13-955a79f140b9	710c842e-ca53-4969-8b25-0a2b1bd7a847
a834bf42-28a7-44de-aa13-955a79f140b9	e123d1f1-a413-413c-aa54-50660075fd91
a834bf42-28a7-44de-aa13-955a79f140b9	1c73f458-7dc4-4468-b669-c195a79519fd
a834bf42-28a7-44de-aa13-955a79f140b9	269c2b88-5991-46d8-88bf-28ac1c2ad9d5
a834bf42-28a7-44de-aa13-955a79f140b9	da9c7bc3-e4e8-4221-8bf1-cc282078c0ba
a834bf42-28a7-44de-aa13-955a79f140b9	93086bda-3816-4a97-84b9-6256b9390c31
a834bf42-28a7-44de-aa13-955a79f140b9	a9bc8238-1070-40aa-a7eb-e20191ca22b1
a834bf42-28a7-44de-aa13-955a79f140b9	502eae6c-b811-42c8-a6e1-8a0ab4ccf0d6
a834bf42-28a7-44de-aa13-955a79f140b9	eecde861-7c82-491b-bed4-966af500a304
a834bf42-28a7-44de-aa13-955a79f140b9	d00d7421-10e7-4aa6-bd86-b21bb8923de9
a834bf42-28a7-44de-aa13-955a79f140b9	b6bd8727-7b06-427e-9a29-0623a88363db
a834bf42-28a7-44de-aa13-955a79f140b9	afa7fc37-2944-4f9d-bcc2-ac120a62558c
a834bf42-28a7-44de-aa13-955a79f140b9	ab89a5a5-3ddf-44bd-8514-e37fdfbbb6c8
a834bf42-28a7-44de-aa13-955a79f140b9	7c9944ee-d059-4967-b5ce-8bea8ef3a636
a834bf42-28a7-44de-aa13-955a79f140b9	87eb230f-90f6-474e-8fc9-25fa76b9131b
a834bf42-28a7-44de-aa13-955a79f140b9	7dac69e0-91e6-4bef-8314-e6c45f3a668a
a834bf42-28a7-44de-aa13-955a79f140b9	10e14a6f-c531-4eb5-96d3-953c6ab43571
1c73f458-7dc4-4468-b669-c195a79519fd	7c9944ee-d059-4967-b5ce-8bea8ef3a636
1c73f458-7dc4-4468-b669-c195a79519fd	10e14a6f-c531-4eb5-96d3-953c6ab43571
269c2b88-5991-46d8-88bf-28ac1c2ad9d5	87eb230f-90f6-474e-8fc9-25fa76b9131b
bb304025-d397-4d81-8034-272d31e43bc2	05e208c9-3c2f-46fe-99ed-3082443c251e
bb304025-d397-4d81-8034-272d31e43bc2	a7f5de1d-dfd1-4c76-8600-41bd94b6c8ca
bb304025-d397-4d81-8034-272d31e43bc2	28459395-a155-4378-acf1-1614d3a1c9e4
bb304025-d397-4d81-8034-272d31e43bc2	224fcbf0-1b1e-413e-897b-5ed5ecb1ac74
bb304025-d397-4d81-8034-272d31e43bc2	de692180-8829-448b-9ee9-b30555e4a45b
bb304025-d397-4d81-8034-272d31e43bc2	ef5ddba3-b1f0-4dd6-bc17-392b22548cc1
bb304025-d397-4d81-8034-272d31e43bc2	dc17bef8-b468-4d65-90ea-b578da20fd7f
bb304025-d397-4d81-8034-272d31e43bc2	ba27b620-66bd-4ab0-a766-8ca131689d5d
bb304025-d397-4d81-8034-272d31e43bc2	75e2caf2-2d8c-48d2-80cb-330854812f01
bb304025-d397-4d81-8034-272d31e43bc2	2a616058-b401-4829-b082-174a99861f2d
bb304025-d397-4d81-8034-272d31e43bc2	176e6f8f-e4ef-4173-bd39-33c861585dd9
bb304025-d397-4d81-8034-272d31e43bc2	ab09607e-12c2-4919-93ef-c794bf3e8fb8
bb304025-d397-4d81-8034-272d31e43bc2	daae7091-c416-4fd5-b6f7-5b223cf2bd64
bb304025-d397-4d81-8034-272d31e43bc2	79d48a7a-e37f-45ba-859e-be86042a9393
bb304025-d397-4d81-8034-272d31e43bc2	2f2ec29e-83b4-48f6-a2df-03bf85af966c
bb304025-d397-4d81-8034-272d31e43bc2	4e37dc9f-8f7b-49d4-b755-35fc5e44ba94
bb304025-d397-4d81-8034-272d31e43bc2	f95b4eb1-ba54-4f0a-bfd1-65d61be34a85
28459395-a155-4378-acf1-1614d3a1c9e4	79d48a7a-e37f-45ba-859e-be86042a9393
28459395-a155-4378-acf1-1614d3a1c9e4	f95b4eb1-ba54-4f0a-bfd1-65d61be34a85
224fcbf0-1b1e-413e-897b-5ed5ecb1ac74	2f2ec29e-83b4-48f6-a2df-03bf85af966c
156f50e9-2945-4301-a53b-27dfed5e4da4	ac131f53-dfcc-4fc6-afdc-a5a038b14926
6f6f1db4-7243-4bc0-96d0-e2956b0701e3	c5502d30-7e0d-408c-bd58-6aac0e7fad3f
a834bf42-28a7-44de-aa13-955a79f140b9	d0ca6e5b-a7af-43a7-9de8-9ef10b98eabc
bb304025-d397-4d81-8034-272d31e43bc2	a51f33af-e698-4a49-a4ed-a12d189cecec
\.


--
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.credential (id, salt, type, user_id, created_date, user_label, secret_data, credential_data, priority) FROM stdin;
78b7533a-0c7e-4e86-9332-c766036bfa3c	\N	password	fa3e862b-e86f-40e6-916f-2ffe88bc5f49	1601639756603	\N	{"value":"SCI8L4ttO0Q/GKdyq2lL5cC9aZ/FhY7e2KBg08T7OCQSP8TaRCPIlJdHZDjygJWSy/ouxMx5+NDcQpeypwCjyg==","salt":"nmBRYHdB9wrzLNgjjjO4eQ=="}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}	10
413afa04-180e-4cef-b11f-d5245a6a3cd8	\N	password	e4c447b4-1700-4247-bd6d-5c56655aea5a	1601641232766	\N	{"value":"5Xe0OkI1w85TXNaw0dJ0yzsb5hHmr6RazCzh/0wjAF3Dc9iaZTcSNqZLjUL6P0Azqh36joXZjtI0Vvmf6rLmCw==","salt":"xnMrMCFKxT1dz12NDGV7kg=="}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}	10
9fba5c2a-037a-4b14-9dae-1b0279e824e1	\N	password	15ccf456-dc4c-4258-9660-575c1d257950	1601641265812	\N	{"value":"1K04AQbno4rxuiYM+zgtiHdVwsXpcmUmCtvUOlL671/l+vTIJJxEg7bKFpqD1KZ7lICbDbXo8z17erM/cgUpjQ==","salt":"wLVQgArw15nTMz9+eqNpag=="}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}	10
a9305a0c-af8c-4746-bba9-616bca861a5e	\N	password	37fff225-cca9-49bd-8a4f-b3a31cb86abf	1601641350252	\N	{"value":"FmQIxQ/27H7/wGmJOhYcfWCZ1hCbZpCY6R9sDwqGHVeoQ6LWizl5JlHB9b0INFkV93/9oUROqZlQqEb9i9p65Q==","salt":"UmxL5daObK+oDay5TqDnDg=="}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256"}	10
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/jpa-changelog-1.0.0.Final.xml	2020-10-02 11:55:47.505125	1	EXECUTED	7:4e70412f24a3f382c82183742ec79317	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	3.5.4	\N	\N	1639747198
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/db2-jpa-changelog-1.0.0.Final.xml	2020-10-02 11:55:47.517108	2	MARK_RAN	7:cb16724583e9675711801c6875114f28	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	3.5.4	\N	\N	1639747198
1.1.0.Beta1	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Beta1.xml	2020-10-02 11:55:47.562116	3	EXECUTED	7:0310eb8ba07cec616460794d42ade0fa	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...		\N	3.5.4	\N	\N	1639747198
1.1.0.Final	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Final.xml	2020-10-02 11:55:47.566258	4	EXECUTED	7:5d25857e708c3233ef4439df1f93f012	renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY		\N	3.5.4	\N	\N	1639747198
1.2.0.Beta1	psilva@redhat.com	META-INF/jpa-changelog-1.2.0.Beta1.xml	2020-10-02 11:55:47.658222	5	EXECUTED	7:c7a54a1041d58eb3817a4a883b4d4e84	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	3.5.4	\N	\N	1639747198
1.2.0.Beta1	psilva@redhat.com	META-INF/db2-jpa-changelog-1.2.0.Beta1.xml	2020-10-02 11:55:47.662476	6	MARK_RAN	7:2e01012df20974c1c2a605ef8afe25b7	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	3.5.4	\N	\N	1639747198
1.2.0.RC1	bburke@redhat.com	META-INF/jpa-changelog-1.2.0.CR1.xml	2020-10-02 11:55:47.746658	7	EXECUTED	7:0f08df48468428e0f30ee59a8ec01a41	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	3.5.4	\N	\N	1639747198
1.2.0.RC1	bburke@redhat.com	META-INF/db2-jpa-changelog-1.2.0.CR1.xml	2020-10-02 11:55:47.751339	8	MARK_RAN	7:a77ea2ad226b345e7d689d366f185c8c	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	3.5.4	\N	\N	1639747198
1.2.0.Final	keycloak	META-INF/jpa-changelog-1.2.0.Final.xml	2020-10-02 11:55:47.757251	9	EXECUTED	7:a3377a2059aefbf3b90ebb4c4cc8e2ab	update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT		\N	3.5.4	\N	\N	1639747198
1.3.0	bburke@redhat.com	META-INF/jpa-changelog-1.3.0.xml	2020-10-02 11:55:47.875995	10	EXECUTED	7:04c1dbedc2aa3e9756d1a1668e003451	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...		\N	3.5.4	\N	\N	1639747198
1.4.0	bburke@redhat.com	META-INF/jpa-changelog-1.4.0.xml	2020-10-02 11:55:47.949738	11	EXECUTED	7:36ef39ed560ad07062d956db861042ba	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	3.5.4	\N	\N	1639747198
1.4.0	bburke@redhat.com	META-INF/db2-jpa-changelog-1.4.0.xml	2020-10-02 11:55:47.952952	12	MARK_RAN	7:d909180b2530479a716d3f9c9eaea3d7	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	3.5.4	\N	\N	1639747198
1.5.0	bburke@redhat.com	META-INF/jpa-changelog-1.5.0.xml	2020-10-02 11:55:48.016377	13	EXECUTED	7:cf12b04b79bea5152f165eb41f3955f6	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	3.5.4	\N	\N	1639747198
1.6.1_from15	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2020-10-02 11:55:48.057655	14	EXECUTED	7:7e32c8f05c755e8675764e7d5f514509	addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...		\N	3.5.4	\N	\N	1639747198
1.6.1_from16-pre	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2020-10-02 11:55:48.060195	15	MARK_RAN	7:980ba23cc0ec39cab731ce903dd01291	delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION		\N	3.5.4	\N	\N	1639747198
1.6.1_from16	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2020-10-02 11:55:48.062417	16	MARK_RAN	7:2fa220758991285312eb84f3b4ff5336	dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...		\N	3.5.4	\N	\N	1639747198
1.6.1	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2020-10-02 11:55:48.064573	17	EXECUTED	7:d41d8cd98f00b204e9800998ecf8427e	empty		\N	3.5.4	\N	\N	1639747198
1.7.0	bburke@redhat.com	META-INF/jpa-changelog-1.7.0.xml	2020-10-02 11:55:48.127278	18	EXECUTED	7:91ace540896df890cc00a0490ee52bbc	createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...		\N	3.5.4	\N	\N	1639747198
1.8.0	mposolda@redhat.com	META-INF/jpa-changelog-1.8.0.xml	2020-10-02 11:55:48.195072	19	EXECUTED	7:c31d1646dfa2618a9335c00e07f89f24	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	3.5.4	\N	\N	1639747198
1.8.0-2	keycloak	META-INF/jpa-changelog-1.8.0.xml	2020-10-02 11:55:48.199531	20	EXECUTED	7:df8bc21027a4f7cbbb01f6344e89ce07	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	3.5.4	\N	\N	1639747198
authz-3.4.0.CR1-resource-server-pk-change-part1	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2020-10-02 11:55:48.691374	45	EXECUTED	7:6a48ce645a3525488a90fbf76adf3bb3	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE		\N	3.5.4	\N	\N	1639747198
1.8.0	mposolda@redhat.com	META-INF/db2-jpa-changelog-1.8.0.xml	2020-10-02 11:55:48.202152	21	MARK_RAN	7:f987971fe6b37d963bc95fee2b27f8df	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	3.5.4	\N	\N	1639747198
1.8.0-2	keycloak	META-INF/db2-jpa-changelog-1.8.0.xml	2020-10-02 11:55:48.204665	22	MARK_RAN	7:df8bc21027a4f7cbbb01f6344e89ce07	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	3.5.4	\N	\N	1639747198
1.9.0	mposolda@redhat.com	META-INF/jpa-changelog-1.9.0.xml	2020-10-02 11:55:48.2243	23	EXECUTED	7:ed2dc7f799d19ac452cbcda56c929e47	update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...		\N	3.5.4	\N	\N	1639747198
1.9.1	keycloak	META-INF/jpa-changelog-1.9.1.xml	2020-10-02 11:55:48.229191	24	EXECUTED	7:80b5db88a5dda36ece5f235be8757615	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	3.5.4	\N	\N	1639747198
1.9.1	keycloak	META-INF/db2-jpa-changelog-1.9.1.xml	2020-10-02 11:55:48.231229	25	MARK_RAN	7:1437310ed1305a9b93f8848f301726ce	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	3.5.4	\N	\N	1639747198
1.9.2	keycloak	META-INF/jpa-changelog-1.9.2.xml	2020-10-02 11:55:48.252343	26	EXECUTED	7:b82ffb34850fa0836be16deefc6a87c4	createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...		\N	3.5.4	\N	\N	1639747198
authz-2.0.0	psilva@redhat.com	META-INF/jpa-changelog-authz-2.0.0.xml	2020-10-02 11:55:48.30742	27	EXECUTED	7:9cc98082921330d8d9266decdd4bd658	createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...		\N	3.5.4	\N	\N	1639747198
authz-2.5.1	psilva@redhat.com	META-INF/jpa-changelog-authz-2.5.1.xml	2020-10-02 11:55:48.31143	28	EXECUTED	7:03d64aeed9cb52b969bd30a7ac0db57e	update tableName=RESOURCE_SERVER_POLICY		\N	3.5.4	\N	\N	1639747198
2.1.0-KEYCLOAK-5461	bburke@redhat.com	META-INF/jpa-changelog-2.1.0.xml	2020-10-02 11:55:48.357241	29	EXECUTED	7:f1f9fd8710399d725b780f463c6b21cd	createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...		\N	3.5.4	\N	\N	1639747198
2.2.0	bburke@redhat.com	META-INF/jpa-changelog-2.2.0.xml	2020-10-02 11:55:48.369177	30	EXECUTED	7:53188c3eb1107546e6f765835705b6c1	addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...		\N	3.5.4	\N	\N	1639747198
2.3.0	bburke@redhat.com	META-INF/jpa-changelog-2.3.0.xml	2020-10-02 11:55:48.3837	31	EXECUTED	7:d6e6f3bc57a0c5586737d1351725d4d4	createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...		\N	3.5.4	\N	\N	1639747198
2.4.0	bburke@redhat.com	META-INF/jpa-changelog-2.4.0.xml	2020-10-02 11:55:48.388484	32	EXECUTED	7:454d604fbd755d9df3fd9c6329043aa5	customChange		\N	3.5.4	\N	\N	1639747198
2.5.0	bburke@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2020-10-02 11:55:48.394202	33	EXECUTED	7:57e98a3077e29caf562f7dbf80c72600	customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION		\N	3.5.4	\N	\N	1639747198
2.5.0-unicode-oracle	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2020-10-02 11:55:48.396427	34	MARK_RAN	7:e4c7e8f2256210aee71ddc42f538b57a	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	3.5.4	\N	\N	1639747198
2.5.0-unicode-other-dbs	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2020-10-02 11:55:48.424013	35	EXECUTED	7:09a43c97e49bc626460480aa1379b522	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	3.5.4	\N	\N	1639747198
2.5.0-duplicate-email-support	slawomir@dabek.name	META-INF/jpa-changelog-2.5.0.xml	2020-10-02 11:55:48.443864	36	EXECUTED	7:26bfc7c74fefa9126f2ce702fb775553	addColumn tableName=REALM		\N	3.5.4	\N	\N	1639747198
2.5.0-unique-group-names	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2020-10-02 11:55:48.448505	37	EXECUTED	7:a161e2ae671a9020fff61e996a207377	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	3.5.4	\N	\N	1639747198
2.5.1	bburke@redhat.com	META-INF/jpa-changelog-2.5.1.xml	2020-10-02 11:55:48.451791	38	EXECUTED	7:37fc1781855ac5388c494f1442b3f717	addColumn tableName=FED_USER_CONSENT		\N	3.5.4	\N	\N	1639747198
3.0.0	bburke@redhat.com	META-INF/jpa-changelog-3.0.0.xml	2020-10-02 11:55:48.467284	39	EXECUTED	7:13a27db0dae6049541136adad7261d27	addColumn tableName=IDENTITY_PROVIDER		\N	3.5.4	\N	\N	1639747198
3.2.0-fix	keycloak	META-INF/jpa-changelog-3.2.0.xml	2020-10-02 11:55:48.469511	40	MARK_RAN	7:550300617e3b59e8af3a6294df8248a3	addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS		\N	3.5.4	\N	\N	1639747198
3.2.0-fix-with-keycloak-5416	keycloak	META-INF/jpa-changelog-3.2.0.xml	2020-10-02 11:55:48.471506	41	MARK_RAN	7:e3a9482b8931481dc2772a5c07c44f17	dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS		\N	3.5.4	\N	\N	1639747198
3.2.0-fix-offline-sessions	hmlnarik	META-INF/jpa-changelog-3.2.0.xml	2020-10-02 11:55:48.478063	42	EXECUTED	7:72b07d85a2677cb257edb02b408f332d	customChange		\N	3.5.4	\N	\N	1639747198
3.2.0-fixed	keycloak	META-INF/jpa-changelog-3.2.0.xml	2020-10-02 11:55:48.631753	43	EXECUTED	7:a72a7858967bd414835d19e04d880312	addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...		\N	3.5.4	\N	\N	1639747198
3.3.0	keycloak	META-INF/jpa-changelog-3.3.0.xml	2020-10-02 11:55:48.686905	44	EXECUTED	7:94edff7cf9ce179e7e85f0cd78a3cf2c	addColumn tableName=USER_ENTITY		\N	3.5.4	\N	\N	1639747198
authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2020-10-02 11:55:48.696348	46	EXECUTED	7:e64b5dcea7db06077c6e57d3b9e5ca14	customChange		\N	3.5.4	\N	\N	1639747198
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2020-10-02 11:55:48.698281	47	MARK_RAN	7:fd8cf02498f8b1e72496a20afc75178c	dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE		\N	3.5.4	\N	\N	1639747198
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2020-10-02 11:55:48.724322	48	EXECUTED	7:542794f25aa2b1fbabb7e577d6646319	addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...		\N	3.5.4	\N	\N	1639747198
authn-3.4.0.CR1-refresh-token-max-reuse	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2020-10-02 11:55:48.735744	49	EXECUTED	7:edad604c882df12f74941dac3cc6d650	addColumn tableName=REALM		\N	3.5.4	\N	\N	1639747198
3.4.0	keycloak	META-INF/jpa-changelog-3.4.0.xml	2020-10-02 11:55:48.766367	50	EXECUTED	7:0f88b78b7b46480eb92690cbf5e44900	addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...		\N	3.5.4	\N	\N	1639747198
3.4.0-KEYCLOAK-5230	hmlnarik@redhat.com	META-INF/jpa-changelog-3.4.0.xml	2020-10-02 11:55:48.793722	51	EXECUTED	7:d560e43982611d936457c327f872dd59	createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...		\N	3.5.4	\N	\N	1639747198
3.4.1	psilva@redhat.com	META-INF/jpa-changelog-3.4.1.xml	2020-10-02 11:55:48.797295	52	EXECUTED	7:c155566c42b4d14ef07059ec3b3bbd8e	modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES		\N	3.5.4	\N	\N	1639747198
3.4.2	keycloak	META-INF/jpa-changelog-3.4.2.xml	2020-10-02 11:55:48.800253	53	EXECUTED	7:b40376581f12d70f3c89ba8ddf5b7dea	update tableName=REALM		\N	3.5.4	\N	\N	1639747198
3.4.2-KEYCLOAK-5172	mkanis@redhat.com	META-INF/jpa-changelog-3.4.2.xml	2020-10-02 11:55:48.802742	54	EXECUTED	7:a1132cc395f7b95b3646146c2e38f168	update tableName=CLIENT		\N	3.5.4	\N	\N	1639747198
4.0.0-KEYCLOAK-6335	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2020-10-02 11:55:48.807784	55	EXECUTED	7:d8dc5d89c789105cfa7ca0e82cba60af	createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS		\N	3.5.4	\N	\N	1639747198
4.0.0-CLEANUP-UNUSED-TABLE	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2020-10-02 11:55:48.811846	56	EXECUTED	7:7822e0165097182e8f653c35517656a3	dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING		\N	3.5.4	\N	\N	1639747198
4.0.0-KEYCLOAK-6228	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2020-10-02 11:55:48.837056	57	EXECUTED	7:c6538c29b9c9a08f9e9ea2de5c2b6375	dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...		\N	3.5.4	\N	\N	1639747198
4.0.0-KEYCLOAK-5579-fixed	mposolda@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2020-10-02 11:55:48.908614	58	EXECUTED	7:6d4893e36de22369cf73bcb051ded875	dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...		\N	3.5.4	\N	\N	1639747198
authz-4.0.0.CR1	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.CR1.xml	2020-10-02 11:55:48.945467	59	EXECUTED	7:57960fc0b0f0dd0563ea6f8b2e4a1707	createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...		\N	3.5.4	\N	\N	1639747198
authz-4.0.0.Beta3	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.Beta3.xml	2020-10-02 11:55:48.951486	60	EXECUTED	7:2b4b8bff39944c7097977cc18dbceb3b	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY		\N	3.5.4	\N	\N	1639747198
authz-4.2.0.Final	mhajas@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2020-10-02 11:55:48.959379	61	EXECUTED	7:2aa42a964c59cd5b8ca9822340ba33a8	createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...		\N	3.5.4	\N	\N	1639747198
authz-4.2.0.Final-KEYCLOAK-9944	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2020-10-02 11:55:48.963575	62	EXECUTED	7:9ac9e58545479929ba23f4a3087a0346	addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS		\N	3.5.4	\N	\N	1639747198
4.2.0-KEYCLOAK-6313	wadahiro@gmail.com	META-INF/jpa-changelog-4.2.0.xml	2020-10-02 11:55:48.966835	63	EXECUTED	7:14d407c35bc4fe1976867756bcea0c36	addColumn tableName=REQUIRED_ACTION_PROVIDER		\N	3.5.4	\N	\N	1639747198
4.3.0-KEYCLOAK-7984	wadahiro@gmail.com	META-INF/jpa-changelog-4.3.0.xml	2020-10-02 11:55:48.96956	64	EXECUTED	7:241a8030c748c8548e346adee548fa93	update tableName=REQUIRED_ACTION_PROVIDER		\N	3.5.4	\N	\N	1639747198
4.6.0-KEYCLOAK-7950	psilva@redhat.com	META-INF/jpa-changelog-4.6.0.xml	2020-10-02 11:55:48.972163	65	EXECUTED	7:7d3182f65a34fcc61e8d23def037dc3f	update tableName=RESOURCE_SERVER_RESOURCE		\N	3.5.4	\N	\N	1639747198
4.6.0-KEYCLOAK-8377	keycloak	META-INF/jpa-changelog-4.6.0.xml	2020-10-02 11:55:48.982072	66	EXECUTED	7:b30039e00a0b9715d430d1b0636728fa	createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...		\N	3.5.4	\N	\N	1639747198
4.6.0-KEYCLOAK-8555	gideonray@gmail.com	META-INF/jpa-changelog-4.6.0.xml	2020-10-02 11:55:48.987304	67	EXECUTED	7:3797315ca61d531780f8e6f82f258159	createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT		\N	3.5.4	\N	\N	1639747198
4.7.0-KEYCLOAK-1267	sguilhen@redhat.com	META-INF/jpa-changelog-4.7.0.xml	2020-10-02 11:55:49.005658	68	EXECUTED	7:c7aa4c8d9573500c2d347c1941ff0301	addColumn tableName=REALM		\N	3.5.4	\N	\N	1639747198
4.7.0-KEYCLOAK-7275	keycloak	META-INF/jpa-changelog-4.7.0.xml	2020-10-02 11:55:49.018161	69	EXECUTED	7:b207faee394fc074a442ecd42185a5dd	renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...		\N	3.5.4	\N	\N	1639747198
4.8.0-KEYCLOAK-8835	sguilhen@redhat.com	META-INF/jpa-changelog-4.8.0.xml	2020-10-02 11:55:49.022696	70	EXECUTED	7:ab9a9762faaba4ddfa35514b212c4922	addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM		\N	3.5.4	\N	\N	1639747198
authz-7.0.0-KEYCLOAK-10443	psilva@redhat.com	META-INF/jpa-changelog-authz-7.0.0.xml	2020-10-02 11:55:49.028329	71	EXECUTED	7:b9710f74515a6ccb51b72dc0d19df8c4	addColumn tableName=RESOURCE_SERVER		\N	3.5.4	\N	\N	1639747198
8.0.0-adding-credential-columns	keycloak	META-INF/jpa-changelog-8.0.0.xml	2020-10-02 11:55:49.035565	72	EXECUTED	7:ec9707ae4d4f0b7452fee20128083879	addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL		\N	3.5.4	\N	\N	1639747198
8.0.0-updating-credential-data-not-oracle	keycloak	META-INF/jpa-changelog-8.0.0.xml	2020-10-02 11:55:49.042212	73	EXECUTED	7:03b3f4b264c3c68ba082250a80b74216	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	3.5.4	\N	\N	1639747198
8.0.0-updating-credential-data-oracle	keycloak	META-INF/jpa-changelog-8.0.0.xml	2020-10-02 11:55:49.044018	74	MARK_RAN	7:64c5728f5ca1f5aa4392217701c4fe23	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	3.5.4	\N	\N	1639747198
8.0.0-credential-cleanup-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2020-10-02 11:55:49.057735	75	EXECUTED	7:b48da8c11a3d83ddd6b7d0c8c2219345	dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...		\N	3.5.4	\N	\N	1639747198
8.0.0-resource-tag-support	keycloak	META-INF/jpa-changelog-8.0.0.xml	2020-10-02 11:55:49.065229	76	EXECUTED	7:a73379915c23bfad3e8f5c6d5c0aa4bd	addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	3.5.4	\N	\N	1639747198
9.0.0-always-display-client	keycloak	META-INF/jpa-changelog-9.0.0.xml	2020-10-02 11:55:49.074224	77	EXECUTED	7:39e0073779aba192646291aa2332493d	addColumn tableName=CLIENT		\N	3.5.4	\N	\N	1639747198
9.0.0-drop-constraints-for-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2020-10-02 11:55:49.0759	78	MARK_RAN	7:81f87368f00450799b4bf42ea0b3ec34	dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...		\N	3.5.4	\N	\N	1639747198
9.0.0-increase-column-size-federated-fk	keycloak	META-INF/jpa-changelog-9.0.0.xml	2020-10-02 11:55:49.098579	79	EXECUTED	7:20b37422abb9fb6571c618148f013a15	modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...		\N	3.5.4	\N	\N	1639747198
9.0.0-recreate-constraints-after-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2020-10-02 11:55:49.101232	80	MARK_RAN	7:1970bb6cfb5ee800736b95ad3fb3c78a	addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...		\N	3.5.4	\N	\N	1639747198
9.0.1-add-index-to-client.client_id	keycloak	META-INF/jpa-changelog-9.0.1.xml	2020-10-02 11:55:49.106345	81	EXECUTED	7:45d9b25fc3b455d522d8dcc10a0f4c80	createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT		\N	3.5.4	\N	\N	1639747198
9.0.1-KEYCLOAK-12579-drop-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2020-10-02 11:55:49.108336	82	MARK_RAN	7:890ae73712bc187a66c2813a724d037f	dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	3.5.4	\N	\N	1639747198
9.0.1-KEYCLOAK-12579-add-not-null-constraint	keycloak	META-INF/jpa-changelog-9.0.1.xml	2020-10-02 11:55:49.111826	83	EXECUTED	7:0a211980d27fafe3ff50d19a3a29b538	addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP		\N	3.5.4	\N	\N	1639747198
9.0.1-KEYCLOAK-12579-recreate-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2020-10-02 11:55:49.113566	84	MARK_RAN	7:a161e2ae671a9020fff61e996a207377	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	3.5.4	\N	\N	1639747198
9.0.1-add-index-to-events	keycloak	META-INF/jpa-changelog-9.0.1.xml	2020-10-02 11:55:49.117529	85	EXECUTED	7:01c49302201bdf815b0a18d1f98a55dc	createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY		\N	3.5.4	\N	\N	1639747198
\.


--
-- Data for Name: databasechangeloglock; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangeloglock (id, locked, lockgranted, lockedby) FROM stdin;
1	f	\N	\N
1000	f	\N	\N
1001	f	\N	\N
\.


--
-- Data for Name: default_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.default_client_scope (realm_id, scope_id, default_scope) FROM stdin;
master	4d4dd947-710c-404c-93d3-49c6e577decb	f
master	b6574ad1-cbe8-45da-b1dd-c1f31f322230	t
master	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85	t
master	953cdd14-7f9d-4a1d-a55b-994bd0c312b4	t
master	7d425ba8-ad43-414a-9d85-d73f974dd3a4	f
master	df70bf71-62ec-44a4-81cd-51ad4419cdfc	f
master	54087a7b-695c-423c-8699-e0b2b9d2ecd3	t
master	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944	t
master	b813c908-ce9e-4b99-a6cc-41edfefbbbaf	f
ffd9d216-cccd-4637-b19a-78f9c935a3de	c8289a09-8106-4a60-81a3-13108eee65e8	f
ffd9d216-cccd-4637-b19a-78f9c935a3de	46521aee-3eae-40a2-8768-b989dbe69fc1	t
ffd9d216-cccd-4637-b19a-78f9c935a3de	3142bc5b-baf3-4253-8adf-1d262d95011f	t
ffd9d216-cccd-4637-b19a-78f9c935a3de	c4b8aac3-05ec-4d36-9228-07792f137ed8	t
ffd9d216-cccd-4637-b19a-78f9c935a3de	aea84ed4-bcdd-41f3-b066-9268b8d890aa	f
ffd9d216-cccd-4637-b19a-78f9c935a3de	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0	f
ffd9d216-cccd-4637-b19a-78f9c935a3de	030373f2-0a6f-45b2-a48f-52dc37883c13	t
ffd9d216-cccd-4637-b19a-78f9c935a3de	0b41c29b-7d63-485b-9235-46122ab31849	t
ffd9d216-cccd-4637-b19a-78f9c935a3de	5145ed9f-2b63-4fb6-92a1-e112c1eb276c	f
basic	369540dd-1dcb-4883-8da3-215feb041597	f
basic	2de3dcb0-0e34-457d-8983-506a733edebf	t
basic	4b8b3bc5-b743-4972-b592-69e433f4cafa	t
basic	9900532c-e2ab-47f3-9516-ea3cec96e378	t
basic	24e8cdc6-c553-49db-9e89-88f23aa30af3	f
basic	65e08ab1-399c-48db-8e07-b31e04e40dd8	f
basic	c6905512-e8ff-4f49-82f2-0cb590030777	t
basic	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7	t
basic	f6316f74-5296-4217-9af3-64197b34e159	f
\.


--
-- Data for Name: event_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.event_entity (id, client_id, details_json, error, ip_address, realm_id, session_id, event_time, type, user_id) FROM stdin;
\.


--
-- Data for Name: fed_user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_attribute (id, name, user_id, realm_id, storage_provider_id, value) FROM stdin;
\.


--
-- Data for Name: fed_user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_consent (id, client_id, user_id, realm_id, storage_provider_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: fed_user_consent_cl_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_consent_cl_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- Data for Name: fed_user_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_credential (id, salt, type, created_date, user_id, realm_id, storage_provider_id, user_label, secret_data, credential_data, priority) FROM stdin;
\.


--
-- Data for Name: fed_user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_group_membership (group_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_required_action (required_action, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: fed_user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.fed_user_role_mapping (role_id, user_id, realm_id, storage_provider_id) FROM stdin;
\.


--
-- Data for Name: federated_identity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.federated_identity (identity_provider, realm_id, federated_user_id, federated_username, token, user_id) FROM stdin;
\.


--
-- Data for Name: federated_user; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.federated_user (id, storage_provider_id, realm_id) FROM stdin;
\.


--
-- Data for Name: group_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.group_attribute (id, name, value, group_id) FROM stdin;
\.


--
-- Data for Name: group_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.group_role_mapping (role_id, group_id) FROM stdin;
\.


--
-- Data for Name: identity_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider (internal_id, enabled, provider_alias, provider_id, store_token, authenticate_by_default, realm_id, add_token_role, trust_email, first_broker_login_flow_id, post_broker_login_flow_id, provider_display_name, link_only) FROM stdin;
\.


--
-- Data for Name: identity_provider_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider_config (identity_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: identity_provider_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.identity_provider_mapper (id, name, idp_alias, idp_mapper_name, realm_id) FROM stdin;
\.


--
-- Data for Name: idp_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.idp_mapper_config (idp_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: keycloak_group; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.keycloak_group (id, name, parent_group, realm_id) FROM stdin;
\.


--
-- Data for Name: keycloak_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.keycloak_role (id, client_realm_constraint, client_role, description, name, realm_id, client, realm) FROM stdin;
a834bf42-28a7-44de-aa13-955a79f140b9	master	f	${role_admin}	admin	master	\N	master
de43584a-6835-4b31-8174-7502fb34f210	master	f	${role_create-realm}	create-realm	master	\N	master
6dada5ec-013b-45a3-bb65-3f6532081279	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_create-client}	create-client	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
8f3c8026-d50b-4a31-9f18-d57cb7480168	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_view-realm}	view-realm	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
66e73d84-4312-4f0a-9a12-d15d3ead7950	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_view-users}	view-users	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
c95dd62a-e63b-4ddb-ad28-6d3113ed3fe7	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_view-clients}	view-clients	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
bcf45de4-4a51-4e5f-a5ca-5086c79892f3	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_view-events}	view-events	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
ae544360-2431-4d82-a095-912a57fdeb60	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_view-identity-providers}	view-identity-providers	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
9675f44a-d36a-4502-9963-babbfdc9d89a	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_view-authorization}	view-authorization	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
35a5d7e1-3182-4ab1-9418-ddabf097dd09	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_manage-realm}	manage-realm	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
6faddc45-36c7-4abc-aa0e-816f43c3e350	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_manage-users}	manage-users	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
504bbdfc-35f6-4d4a-9003-e6fc1998e60f	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_manage-clients}	manage-clients	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
27673416-e1e4-4103-8790-284f6c5623b0	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_manage-events}	manage-events	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
02b6e7ad-b77a-49b0-b1c1-870bbcad946e	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_manage-identity-providers}	manage-identity-providers	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
5e14dcae-2c14-48bc-8d12-de107f03d687	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_manage-authorization}	manage-authorization	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
5725279b-d484-42a3-a7e0-59637237f5b1	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_query-users}	query-users	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
73846464-4c3c-4c42-b620-ee1c246a5c03	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_query-clients}	query-clients	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
be6b67db-f7ea-4673-8709-b8bff41e0874	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_query-realms}	query-realms	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
da979e34-d6d6-49ec-ba3d-b8299e05beb5	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_query-groups}	query-groups	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
2f29abed-ca55-4f94-8e32-f5f4852b159d	4644e7fb-9112-4100-80f0-0aa15cc99b6f	t	${role_view-profile}	view-profile	master	4644e7fb-9112-4100-80f0-0aa15cc99b6f	\N
60d90fff-c1a3-466c-ae67-ba9a976646a6	4644e7fb-9112-4100-80f0-0aa15cc99b6f	t	${role_manage-account}	manage-account	master	4644e7fb-9112-4100-80f0-0aa15cc99b6f	\N
93668929-86aa-4815-af09-b2636b411035	4644e7fb-9112-4100-80f0-0aa15cc99b6f	t	${role_manage-account-links}	manage-account-links	master	4644e7fb-9112-4100-80f0-0aa15cc99b6f	\N
6ec8bab6-a5cf-4e90-bdd4-05ab1eb6c1b7	4644e7fb-9112-4100-80f0-0aa15cc99b6f	t	${role_view-applications}	view-applications	master	4644e7fb-9112-4100-80f0-0aa15cc99b6f	\N
9d38f778-b79f-4b46-8a27-9d8631922cd3	4644e7fb-9112-4100-80f0-0aa15cc99b6f	t	${role_view-consent}	view-consent	master	4644e7fb-9112-4100-80f0-0aa15cc99b6f	\N
1632f205-213b-48ea-95a2-1250ed1320ac	4644e7fb-9112-4100-80f0-0aa15cc99b6f	t	${role_manage-consent}	manage-consent	master	4644e7fb-9112-4100-80f0-0aa15cc99b6f	\N
e928fc2e-ed14-496a-9695-a601614ffab7	5632c838-220e-4dde-a1d4-fb2772f420bb	t	${role_read-token}	read-token	master	5632c838-220e-4dde-a1d4-fb2772f420bb	\N
912e1c3f-7fe6-4052-afd0-a70a43c607bc	48ac08f1-06d8-4b03-9432-56d89d77ec00	t	${role_impersonation}	impersonation	master	48ac08f1-06d8-4b03-9432-56d89d77ec00	\N
d36340f2-ab2d-4d64-a92a-9f6b6b73e07e	master	f	${role_offline-access}	offline_access	master	\N	master
45c7fbac-69a3-4aa5-836c-0ec646464c7b	master	f	${role_uma_authorization}	uma_authorization	master	\N	master
b3f26354-8e04-4577-b51c-7fe6ad35214a	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_create-client}	create-client	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
abd5ad55-5f1a-4d65-add3-a252ad8bc125	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_view-realm}	view-realm	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
d60add29-4161-4f0b-a50c-d5dbe7d2811a	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_view-users}	view-users	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
433806bf-9980-4718-a286-8a0e48393698	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_view-clients}	view-clients	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
a1479b9e-c341-4512-bdbc-e99d24e320b9	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_view-events}	view-events	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
c38fcebf-e022-4159-9b01-89540d9493d2	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_view-identity-providers}	view-identity-providers	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
41af2255-6a30-4018-83e3-97d174b27721	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_view-authorization}	view-authorization	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
2298d648-8830-4d65-ad6b-c623a1758983	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_manage-realm}	manage-realm	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
3a7f0099-8ca6-43e1-a9b7-c22c30aece6b	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_manage-users}	manage-users	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
2ed0ec67-e138-44fa-87d3-6490de3f1fdd	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_manage-clients}	manage-clients	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
47125f35-9de1-4b8b-9f36-e9d1c7a6bd98	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_manage-events}	manage-events	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
dba651a3-5640-43a8-b427-d13f61772463	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_manage-identity-providers}	manage-identity-providers	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
511ef4ec-5c51-4fec-832f-b0bf5f06629c	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_manage-authorization}	manage-authorization	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
14a49174-f9d1-44df-9469-5eed6f81c47b	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_query-users}	query-users	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
52c5fa53-4ec1-4c5e-99ec-c53dd6e110d0	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_query-clients}	query-clients	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
67e2e664-3872-45a9-a610-6ae61d7a0118	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_query-realms}	query-realms	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
faa1f7b3-f3fd-4290-bbd8-5cb67b4e5e74	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_query-groups}	query-groups	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
f0865619-2853-4fa1-a7ff-28c82e8fb095	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_realm-admin}	realm-admin	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
807761dd-b6e7-4d7f-b84b-c5ce1c8fbc90	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_create-client}	create-client	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
63fbd3e5-0b67-41d0-99d6-8d36cf382e36	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_view-realm}	view-realm	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
bdbe5830-d25d-45a5-b350-6220d4e13937	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_view-users}	view-users	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
d0642c99-56b8-4ea2-8261-c432d5145960	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_view-clients}	view-clients	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
82732a63-181e-4cff-a7ef-75e4427818eb	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_view-events}	view-events	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
75de6103-8107-4065-893d-a180622029ee	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_view-identity-providers}	view-identity-providers	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
0b86b7cd-f457-4fb0-8bff-2d4b7adf6fe6	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_view-authorization}	view-authorization	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
f060c4d7-6278-4de8-b6c4-11548863824d	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_manage-realm}	manage-realm	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
a6b21cad-c959-4beb-bf7f-c224b8d217b2	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_manage-users}	manage-users	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
8054fc71-1fac-4e39-91be-01ff2ce3875b	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_manage-clients}	manage-clients	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
5741f480-277f-4a7c-a191-588e785f2aae	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_manage-events}	manage-events	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
0844bbc6-8165-4646-9d61-564228a6873b	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_manage-identity-providers}	manage-identity-providers	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
f706b140-718c-43b2-8c1e-6c50b513a2e8	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_manage-authorization}	manage-authorization	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
0b6d6c04-da55-4cbe-b72e-28e471dda003	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_query-users}	query-users	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
9b2a5f3b-aed6-4760-a83f-f25973f357e0	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_query-clients}	query-clients	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
07c99f88-8474-43dd-9dbd-2cbb7a11f53c	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_query-realms}	query-realms	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
5a14bc93-25d3-408a-a080-1dffd116f297	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_query-groups}	query-groups	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
8d4a34cc-cd67-4207-b8e6-8f6b10b72d82	e8d99a75-76b6-4247-a724-4a34fed9140c	t	${role_view-profile}	view-profile	ffd9d216-cccd-4637-b19a-78f9c935a3de	e8d99a75-76b6-4247-a724-4a34fed9140c	\N
94c01f7b-6676-4d1d-8cfe-e54d94afd712	e8d99a75-76b6-4247-a724-4a34fed9140c	t	${role_manage-account}	manage-account	ffd9d216-cccd-4637-b19a-78f9c935a3de	e8d99a75-76b6-4247-a724-4a34fed9140c	\N
bcfde000-fc65-44ec-8cfd-f73456e04bf9	e8d99a75-76b6-4247-a724-4a34fed9140c	t	${role_manage-account-links}	manage-account-links	ffd9d216-cccd-4637-b19a-78f9c935a3de	e8d99a75-76b6-4247-a724-4a34fed9140c	\N
021bf2e0-0ae1-46d6-a98b-8ebece496041	e8d99a75-76b6-4247-a724-4a34fed9140c	t	${role_view-applications}	view-applications	ffd9d216-cccd-4637-b19a-78f9c935a3de	e8d99a75-76b6-4247-a724-4a34fed9140c	\N
71cd24d2-35fb-4e79-8742-f252faa518bf	e8d99a75-76b6-4247-a724-4a34fed9140c	t	${role_view-consent}	view-consent	ffd9d216-cccd-4637-b19a-78f9c935a3de	e8d99a75-76b6-4247-a724-4a34fed9140c	\N
3b42d741-9a84-4683-9a5c-03b6e56add94	e8d99a75-76b6-4247-a724-4a34fed9140c	t	${role_manage-consent}	manage-consent	ffd9d216-cccd-4637-b19a-78f9c935a3de	e8d99a75-76b6-4247-a724-4a34fed9140c	\N
8df616b3-68a8-47b6-af48-03f4553c8225	eab68333-a860-48d4-bc8e-cb7748be0442	t	${role_impersonation}	impersonation	master	eab68333-a860-48d4-bc8e-cb7748be0442	\N
47181648-2e5a-4b48-94f0-fe8c7b05025c	f4fb2591-705b-4fb0-827d-631904527fba	t	${role_impersonation}	impersonation	ffd9d216-cccd-4637-b19a-78f9c935a3de	f4fb2591-705b-4fb0-827d-631904527fba	\N
9e5786bd-cdae-4d94-bfee-033e1f8fe0e4	5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	t	${role_read-token}	read-token	ffd9d216-cccd-4637-b19a-78f9c935a3de	5e2a16d4-1c55-4f3c-89e8-0d10ec8246dd	\N
25bb0d40-deb9-45ca-bbaf-316cd6c9a8ad	ffd9d216-cccd-4637-b19a-78f9c935a3de	f	${role_offline-access}	offline_access	ffd9d216-cccd-4637-b19a-78f9c935a3de	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de
e6733d9c-2cb9-4c90-bcae-c0029b9c9ef6	ffd9d216-cccd-4637-b19a-78f9c935a3de	f	${role_uma_authorization}	uma_authorization	ffd9d216-cccd-4637-b19a-78f9c935a3de	\N	ffd9d216-cccd-4637-b19a-78f9c935a3de
710c842e-ca53-4969-8b25-0a2b1bd7a847	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_create-client}	create-client	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
e123d1f1-a413-413c-aa54-50660075fd91	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_view-realm}	view-realm	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
1c73f458-7dc4-4468-b669-c195a79519fd	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_view-users}	view-users	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
269c2b88-5991-46d8-88bf-28ac1c2ad9d5	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_view-clients}	view-clients	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
da9c7bc3-e4e8-4221-8bf1-cc282078c0ba	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_view-events}	view-events	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
93086bda-3816-4a97-84b9-6256b9390c31	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_view-identity-providers}	view-identity-providers	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
a9bc8238-1070-40aa-a7eb-e20191ca22b1	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_view-authorization}	view-authorization	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
502eae6c-b811-42c8-a6e1-8a0ab4ccf0d6	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_manage-realm}	manage-realm	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
eecde861-7c82-491b-bed4-966af500a304	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_manage-users}	manage-users	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
d00d7421-10e7-4aa6-bd86-b21bb8923de9	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_manage-clients}	manage-clients	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
b6bd8727-7b06-427e-9a29-0623a88363db	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_manage-events}	manage-events	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
afa7fc37-2944-4f9d-bcc2-ac120a62558c	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_manage-identity-providers}	manage-identity-providers	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
ab89a5a5-3ddf-44bd-8514-e37fdfbbb6c8	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_manage-authorization}	manage-authorization	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
7c9944ee-d059-4967-b5ce-8bea8ef3a636	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_query-users}	query-users	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
87eb230f-90f6-474e-8fc9-25fa76b9131b	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_query-clients}	query-clients	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
7dac69e0-91e6-4bef-8314-e6c45f3a668a	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_query-realms}	query-realms	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
10e14a6f-c531-4eb5-96d3-953c6ab43571	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_query-groups}	query-groups	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
bb304025-d397-4d81-8034-272d31e43bc2	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_realm-admin}	realm-admin	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
05e208c9-3c2f-46fe-99ed-3082443c251e	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_create-client}	create-client	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
a7f5de1d-dfd1-4c76-8600-41bd94b6c8ca	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_view-realm}	view-realm	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
28459395-a155-4378-acf1-1614d3a1c9e4	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_view-users}	view-users	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
224fcbf0-1b1e-413e-897b-5ed5ecb1ac74	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_view-clients}	view-clients	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
de692180-8829-448b-9ee9-b30555e4a45b	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_view-events}	view-events	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
ef5ddba3-b1f0-4dd6-bc17-392b22548cc1	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_view-identity-providers}	view-identity-providers	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
dc17bef8-b468-4d65-90ea-b578da20fd7f	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_view-authorization}	view-authorization	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
ba27b620-66bd-4ab0-a766-8ca131689d5d	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_manage-realm}	manage-realm	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
75e2caf2-2d8c-48d2-80cb-330854812f01	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_manage-users}	manage-users	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
2a616058-b401-4829-b082-174a99861f2d	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_manage-clients}	manage-clients	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
176e6f8f-e4ef-4173-bd39-33c861585dd9	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_manage-events}	manage-events	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
ab09607e-12c2-4919-93ef-c794bf3e8fb8	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_manage-identity-providers}	manage-identity-providers	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
daae7091-c416-4fd5-b6f7-5b223cf2bd64	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_manage-authorization}	manage-authorization	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
79d48a7a-e37f-45ba-859e-be86042a9393	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_query-users}	query-users	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
2f2ec29e-83b4-48f6-a2df-03bf85af966c	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_query-clients}	query-clients	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
4e37dc9f-8f7b-49d4-b755-35fc5e44ba94	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_query-realms}	query-realms	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
f95b4eb1-ba54-4f0a-bfd1-65d61be34a85	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_query-groups}	query-groups	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
09456ec0-a0fc-422b-92da-e285f642283a	c721710b-ce98-41ad-a6e8-7bc7d1520271	t	${role_view-profile}	view-profile	basic	c721710b-ce98-41ad-a6e8-7bc7d1520271	\N
156f50e9-2945-4301-a53b-27dfed5e4da4	c721710b-ce98-41ad-a6e8-7bc7d1520271	t	${role_manage-account}	manage-account	basic	c721710b-ce98-41ad-a6e8-7bc7d1520271	\N
ac131f53-dfcc-4fc6-afdc-a5a038b14926	c721710b-ce98-41ad-a6e8-7bc7d1520271	t	${role_manage-account-links}	manage-account-links	basic	c721710b-ce98-41ad-a6e8-7bc7d1520271	\N
6f73d94f-688e-49a2-8354-c9e605577e96	c721710b-ce98-41ad-a6e8-7bc7d1520271	t	${role_view-applications}	view-applications	basic	c721710b-ce98-41ad-a6e8-7bc7d1520271	\N
c5502d30-7e0d-408c-bd58-6aac0e7fad3f	c721710b-ce98-41ad-a6e8-7bc7d1520271	t	${role_view-consent}	view-consent	basic	c721710b-ce98-41ad-a6e8-7bc7d1520271	\N
6f6f1db4-7243-4bc0-96d0-e2956b0701e3	c721710b-ce98-41ad-a6e8-7bc7d1520271	t	${role_manage-consent}	manage-consent	basic	c721710b-ce98-41ad-a6e8-7bc7d1520271	\N
d0ca6e5b-a7af-43a7-9de8-9ef10b98eabc	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	t	${role_impersonation}	impersonation	master	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	\N
a51f33af-e698-4a49-a4ed-a12d189cecec	915ebc6e-9114-4b3d-b560-3a990dc49d20	t	${role_impersonation}	impersonation	basic	915ebc6e-9114-4b3d-b560-3a990dc49d20	\N
713ac527-5437-4e0a-9b2e-cdaf3c03f5d3	ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	t	${role_read-token}	read-token	basic	ce0f9453-cb5a-4f79-8269-bb303f7c2ce2	\N
3517ad10-8f33-4678-b1c3-4682361ee328	basic	f	${role_offline-access}	offline_access	basic	\N	basic
9bd45b18-dfeb-4c7d-aebe-3e6eab43364a	basic	f	${role_uma_authorization}	uma_authorization	basic	\N	basic
c3a68389-c4f4-474e-98d6-1a52b3a02bd7	basic	f	application administrator	appadmin	basic	\N	basic
\.


--
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.migration_model (id, version, update_time) FROM stdin;
b3875	9.0.5	1601639752
\.


--
-- Data for Name: offline_client_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.offline_client_session (user_session_id, client_id, offline_flag, "timestamp", data, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: offline_user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.offline_user_session (user_session_id, user_id, realm_id, created_on, offline_flag, data, last_session_refresh) FROM stdin;
\.


--
-- Data for Name: osssotest1t9vgmjbosststxtable; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.osssotest1t9vgmjbosststxtable (statetype, hidden, typename, uidstring, objectstate) FROM stdin;
1	0	EISNAME	0:ffff0a810203:3ba0c182:5f771538:1d	\\x23424501102040000000001173736f2d746573742d312d743976676d0000000000000001000000226a6176613a6a626f73732f64617461736f75726365732f4b6579636c6f616b4453000000
\.


--
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.policy_config (policy_id, name, value) FROM stdin;
\.


--
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper (id, name, protocol, protocol_mapper_name, client_id, client_scope_id) FROM stdin;
5a1f360b-aca3-4dcf-999f-0f96ecf472ce	audience resolve	openid-connect	oidc-audience-resolve-mapper	570154ea-bd10-4435-88da-7c4d95cf455c	\N
bc343180-9816-468a-8ddb-7d0f77c8b9c8	locale	openid-connect	oidc-usermodel-attribute-mapper	d0f69702-7492-41ce-9227-b6b3982471a8	\N
7314779d-c8bc-4e5f-aaf4-b4c8290e01d7	role list	saml	saml-role-list-mapper	\N	b6574ad1-cbe8-45da-b1dd-c1f31f322230
e8797d39-a1cf-4f7b-976d-d821a72b261f	full name	openid-connect	oidc-full-name-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
90f0ee96-9ed3-4203-9d19-a0cd2236c4da	family name	openid-connect	oidc-usermodel-property-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
ce7bf9d6-9698-4ef8-9a05-07c2cbef44cd	given name	openid-connect	oidc-usermodel-property-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
06a9034b-8fb7-47ae-8853-f726a2ec425f	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
c5bc923b-c421-468c-afb0-d6e596316f67	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
07d2437f-65e1-4206-b690-8fc9051af201	username	openid-connect	oidc-usermodel-property-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
b1cc4cc7-839c-4122-9205-f1c529d98042	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
84ab06f9-f189-466c-b2af-2ecb9298038e	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
a2dca2ee-64dd-4f1d-b88d-e650820e27ad	website	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
e1b42414-494b-4013-82ab-013ac5a97e01	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
9585d26d-f377-4aa1-8a9e-088f01e22371	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
e2e707a6-5401-4d32-bdc7-8737b5998d54	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
045908b3-c5e0-4c32-a91a-450077cd197e	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
b903278e-ff08-41d9-b3f2-8120127b4e84	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	e7f04aba-f2ac-445f-8ce0-c3fe1fd40c85
afdad825-b59b-488c-a76e-8c9f6dbf9895	email	openid-connect	oidc-usermodel-property-mapper	\N	953cdd14-7f9d-4a1d-a55b-994bd0c312b4
078c5127-9913-472c-8e85-3f0e0a9cd4d9	email verified	openid-connect	oidc-usermodel-property-mapper	\N	953cdd14-7f9d-4a1d-a55b-994bd0c312b4
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	address	openid-connect	oidc-address-mapper	\N	7d425ba8-ad43-414a-9d85-d73f974dd3a4
68d743d4-fba1-463d-bc96-aa487c64518b	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	df70bf71-62ec-44a4-81cd-51ad4419cdfc
f12b4a6b-e477-4bbd-ba20-1147f6aab220	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	df70bf71-62ec-44a4-81cd-51ad4419cdfc
c61b7b5e-854f-493e-92e5-64d11dc8bfb9	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	54087a7b-695c-423c-8699-e0b2b9d2ecd3
6c5fd0be-de93-47e3-8a51-b74328a04ed3	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	54087a7b-695c-423c-8699-e0b2b9d2ecd3
a7bedc99-452d-47a1-9cb2-c7e4112b8b19	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	54087a7b-695c-423c-8699-e0b2b9d2ecd3
cc4385d5-6eb7-45b4-a313-b820e4733c21	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	778eef90-2ab9-4cb3-bd76-7bc9e8b5c944
7d4388cb-b367-4bf2-aaaa-5eff0c326c86	upn	openid-connect	oidc-usermodel-property-mapper	\N	b813c908-ce9e-4b99-a6cc-41edfefbbbaf
dc4b30cd-12dc-4532-9f4b-cbb1fa75343a	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	b813c908-ce9e-4b99-a6cc-41edfefbbbaf
8a289c3e-fb2b-4b71-b441-3903acd87150	audience resolve	openid-connect	oidc-audience-resolve-mapper	068ed656-1b10-4f30-bfac-98032af95961	\N
bf356aa0-7cde-4041-877f-701ba9b2d119	role list	saml	saml-role-list-mapper	\N	46521aee-3eae-40a2-8768-b989dbe69fc1
becff557-0b67-4e67-ac70-b033439013ee	full name	openid-connect	oidc-full-name-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
497cabda-fe46-43fd-a595-3694c78ecbf1	family name	openid-connect	oidc-usermodel-property-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
85ea5fe6-b00c-468d-bec0-fc5d256102e6	given name	openid-connect	oidc-usermodel-property-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
86e5149c-edad-450e-bd02-211d894f7426	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
bc16a931-75ef-4b36-8bfc-64de68b68c45	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
b74e4153-dc36-46ab-96c1-c8769cc281a8	username	openid-connect	oidc-usermodel-property-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
fa3349eb-5011-44ff-a397-561b8bd5b918	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
b67dd475-b2be-449b-b1b0-ba25d74b5999	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
51712b62-4d59-4f8c-aac3-b8a68d8f1da7	website	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
8b251264-6058-4d30-b942-4dd7e2f15025	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
ca791314-bba8-4539-b949-62a67aac20e4	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
b82208ef-5335-4f87-a09e-0e252af3018b	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
340180e4-570a-4104-bfa9-7af3c2d92bee	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
daf08c17-8aab-4993-967c-2431c464b954	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	3142bc5b-baf3-4253-8adf-1d262d95011f
c3b19508-7677-4129-896d-e5b4850832f6	email	openid-connect	oidc-usermodel-property-mapper	\N	c4b8aac3-05ec-4d36-9228-07792f137ed8
6bf9a3a1-68e6-49ad-8862-c8922521eae7	email verified	openid-connect	oidc-usermodel-property-mapper	\N	c4b8aac3-05ec-4d36-9228-07792f137ed8
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	address	openid-connect	oidc-address-mapper	\N	aea84ed4-bcdd-41f3-b066-9268b8d890aa
59d6d1fa-7e46-4e44-9edb-7f2869b0c206	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0
9dcfd314-9c26-44e9-aab0-a7035a91a692	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	bd3c97d9-63e4-4f05-88a4-326d2e1e47b0
a76a8b95-08cc-4326-a6b2-fe32d3c1c4ad	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	030373f2-0a6f-45b2-a48f-52dc37883c13
b9ace62a-ef08-4d41-949d-e2b108706dec	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	030373f2-0a6f-45b2-a48f-52dc37883c13
0513262f-b210-41f7-921a-d2365844f404	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	030373f2-0a6f-45b2-a48f-52dc37883c13
11ca5417-1203-4780-85e5-12a8ddbb6560	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	0b41c29b-7d63-485b-9235-46122ab31849
5460531d-7df2-46d7-aa2c-7a203e3a3983	upn	openid-connect	oidc-usermodel-property-mapper	\N	5145ed9f-2b63-4fb6-92a1-e112c1eb276c
3cdfc65f-0146-4e63-bec4-4ddc0052c36c	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	5145ed9f-2b63-4fb6-92a1-e112c1eb276c
262a58b2-f960-4bf8-8576-086abee93813	locale	openid-connect	oidc-usermodel-attribute-mapper	81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	\N
59a3143a-3a61-406b-ba05-171d2472ad78	audience resolve	openid-connect	oidc-audience-resolve-mapper	ea3ffadc-0a56-4c64-be05-daa6adf65801	\N
36ee4768-fad9-4b73-8a1f-33fc16d80245	role list	saml	saml-role-list-mapper	\N	2de3dcb0-0e34-457d-8983-506a733edebf
98d2dc66-430d-4094-bfea-aa5d7fcfa07f	full name	openid-connect	oidc-full-name-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
3b8b64da-1b05-42d0-aeaa-56c705f949df	family name	openid-connect	oidc-usermodel-property-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
22b117ef-2f99-413d-9428-6d5210fe3e60	given name	openid-connect	oidc-usermodel-property-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
cb1b057e-9827-4190-9e61-0e36a6d095ec	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
a002011f-5e82-43a3-823b-132040cdf823	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
9a3ac956-8d7e-41d5-a651-373931667c31	username	openid-connect	oidc-usermodel-property-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
d3088934-c6a4-493e-8370-7de93f790b6d	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
b3254b0d-a8c5-4fb0-a0f1-5c33e00f390c	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
41f0899c-e76f-4d64-82b7-adf51e479825	website	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
add3b7b8-ac4e-4916-8d57-5c5bfed08b71	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
d20d3e92-3036-45bc-9690-eb881b323b39	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
22c9aabb-ed13-49ad-9e2c-be0a6959aa89	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
07db6be9-5aef-43e3-a5fb-19a5b3a8d960	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
b56aee08-390a-4944-8c44-091efbb0e24d	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	4b8b3bc5-b743-4972-b592-69e433f4cafa
a7e5f0f0-1aa4-4a99-9fda-762d3e4c9fc4	email	openid-connect	oidc-usermodel-property-mapper	\N	9900532c-e2ab-47f3-9516-ea3cec96e378
3bf560ff-10ee-43d7-93e6-b172c6830d73	email verified	openid-connect	oidc-usermodel-property-mapper	\N	9900532c-e2ab-47f3-9516-ea3cec96e378
66b5952c-2dc6-4112-ac46-a6888ba4c146	address	openid-connect	oidc-address-mapper	\N	24e8cdc6-c553-49db-9e89-88f23aa30af3
00e132b8-74f5-464e-a9ba-e271e2e11835	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	65e08ab1-399c-48db-8e07-b31e04e40dd8
295a9ca6-68cc-4a51-a856-94181fe97eb3	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	65e08ab1-399c-48db-8e07-b31e04e40dd8
632a34b7-398b-4ba1-b97c-08e6030fadf1	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	c6905512-e8ff-4f49-82f2-0cb590030777
3ef245b1-8570-414f-b2d2-723ca963e98d	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	c6905512-e8ff-4f49-82f2-0cb590030777
ed5977a1-d4a4-4738-b8a4-a43af7722124	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	c6905512-e8ff-4f49-82f2-0cb590030777
2bd92480-32fa-4693-b9fc-90ed4cfdc796	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	e69ef5f7-2834-4771-ac90-9d1cb9bf6eb7
b55bf8bb-e3dd-4f77-8403-c3a8628fc40c	upn	openid-connect	oidc-usermodel-property-mapper	\N	f6316f74-5296-4217-9af3-64197b34e159
873574df-4ce3-4f21-8a8d-cfcb213a7aea	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	f6316f74-5296-4217-9af3-64197b34e159
01d37439-8ae8-449b-a6d3-708fcfeedd91	locale	openid-connect	oidc-usermodel-attribute-mapper	9dac498e-28fa-4cc0-8673-199f0649e772	\N
\.


--
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper_config (protocol_mapper_id, value, name) FROM stdin;
bc343180-9816-468a-8ddb-7d0f77c8b9c8	true	userinfo.token.claim
bc343180-9816-468a-8ddb-7d0f77c8b9c8	locale	user.attribute
bc343180-9816-468a-8ddb-7d0f77c8b9c8	true	id.token.claim
bc343180-9816-468a-8ddb-7d0f77c8b9c8	true	access.token.claim
bc343180-9816-468a-8ddb-7d0f77c8b9c8	locale	claim.name
bc343180-9816-468a-8ddb-7d0f77c8b9c8	String	jsonType.label
7314779d-c8bc-4e5f-aaf4-b4c8290e01d7	false	single
7314779d-c8bc-4e5f-aaf4-b4c8290e01d7	Basic	attribute.nameformat
7314779d-c8bc-4e5f-aaf4-b4c8290e01d7	Role	attribute.name
e8797d39-a1cf-4f7b-976d-d821a72b261f	true	userinfo.token.claim
e8797d39-a1cf-4f7b-976d-d821a72b261f	true	id.token.claim
e8797d39-a1cf-4f7b-976d-d821a72b261f	true	access.token.claim
90f0ee96-9ed3-4203-9d19-a0cd2236c4da	true	userinfo.token.claim
90f0ee96-9ed3-4203-9d19-a0cd2236c4da	lastName	user.attribute
90f0ee96-9ed3-4203-9d19-a0cd2236c4da	true	id.token.claim
90f0ee96-9ed3-4203-9d19-a0cd2236c4da	true	access.token.claim
90f0ee96-9ed3-4203-9d19-a0cd2236c4da	family_name	claim.name
90f0ee96-9ed3-4203-9d19-a0cd2236c4da	String	jsonType.label
ce7bf9d6-9698-4ef8-9a05-07c2cbef44cd	true	userinfo.token.claim
ce7bf9d6-9698-4ef8-9a05-07c2cbef44cd	firstName	user.attribute
ce7bf9d6-9698-4ef8-9a05-07c2cbef44cd	true	id.token.claim
ce7bf9d6-9698-4ef8-9a05-07c2cbef44cd	true	access.token.claim
ce7bf9d6-9698-4ef8-9a05-07c2cbef44cd	given_name	claim.name
ce7bf9d6-9698-4ef8-9a05-07c2cbef44cd	String	jsonType.label
06a9034b-8fb7-47ae-8853-f726a2ec425f	true	userinfo.token.claim
06a9034b-8fb7-47ae-8853-f726a2ec425f	middleName	user.attribute
06a9034b-8fb7-47ae-8853-f726a2ec425f	true	id.token.claim
06a9034b-8fb7-47ae-8853-f726a2ec425f	true	access.token.claim
06a9034b-8fb7-47ae-8853-f726a2ec425f	middle_name	claim.name
06a9034b-8fb7-47ae-8853-f726a2ec425f	String	jsonType.label
c5bc923b-c421-468c-afb0-d6e596316f67	true	userinfo.token.claim
c5bc923b-c421-468c-afb0-d6e596316f67	nickname	user.attribute
c5bc923b-c421-468c-afb0-d6e596316f67	true	id.token.claim
c5bc923b-c421-468c-afb0-d6e596316f67	true	access.token.claim
c5bc923b-c421-468c-afb0-d6e596316f67	nickname	claim.name
c5bc923b-c421-468c-afb0-d6e596316f67	String	jsonType.label
07d2437f-65e1-4206-b690-8fc9051af201	true	userinfo.token.claim
07d2437f-65e1-4206-b690-8fc9051af201	username	user.attribute
07d2437f-65e1-4206-b690-8fc9051af201	true	id.token.claim
07d2437f-65e1-4206-b690-8fc9051af201	true	access.token.claim
07d2437f-65e1-4206-b690-8fc9051af201	preferred_username	claim.name
07d2437f-65e1-4206-b690-8fc9051af201	String	jsonType.label
b1cc4cc7-839c-4122-9205-f1c529d98042	true	userinfo.token.claim
b1cc4cc7-839c-4122-9205-f1c529d98042	profile	user.attribute
b1cc4cc7-839c-4122-9205-f1c529d98042	true	id.token.claim
b1cc4cc7-839c-4122-9205-f1c529d98042	true	access.token.claim
b1cc4cc7-839c-4122-9205-f1c529d98042	profile	claim.name
b1cc4cc7-839c-4122-9205-f1c529d98042	String	jsonType.label
84ab06f9-f189-466c-b2af-2ecb9298038e	true	userinfo.token.claim
84ab06f9-f189-466c-b2af-2ecb9298038e	picture	user.attribute
84ab06f9-f189-466c-b2af-2ecb9298038e	true	id.token.claim
84ab06f9-f189-466c-b2af-2ecb9298038e	true	access.token.claim
84ab06f9-f189-466c-b2af-2ecb9298038e	picture	claim.name
84ab06f9-f189-466c-b2af-2ecb9298038e	String	jsonType.label
a2dca2ee-64dd-4f1d-b88d-e650820e27ad	true	userinfo.token.claim
a2dca2ee-64dd-4f1d-b88d-e650820e27ad	website	user.attribute
a2dca2ee-64dd-4f1d-b88d-e650820e27ad	true	id.token.claim
a2dca2ee-64dd-4f1d-b88d-e650820e27ad	true	access.token.claim
a2dca2ee-64dd-4f1d-b88d-e650820e27ad	website	claim.name
a2dca2ee-64dd-4f1d-b88d-e650820e27ad	String	jsonType.label
e1b42414-494b-4013-82ab-013ac5a97e01	true	userinfo.token.claim
e1b42414-494b-4013-82ab-013ac5a97e01	gender	user.attribute
e1b42414-494b-4013-82ab-013ac5a97e01	true	id.token.claim
e1b42414-494b-4013-82ab-013ac5a97e01	true	access.token.claim
e1b42414-494b-4013-82ab-013ac5a97e01	gender	claim.name
e1b42414-494b-4013-82ab-013ac5a97e01	String	jsonType.label
9585d26d-f377-4aa1-8a9e-088f01e22371	true	userinfo.token.claim
9585d26d-f377-4aa1-8a9e-088f01e22371	birthdate	user.attribute
9585d26d-f377-4aa1-8a9e-088f01e22371	true	id.token.claim
9585d26d-f377-4aa1-8a9e-088f01e22371	true	access.token.claim
9585d26d-f377-4aa1-8a9e-088f01e22371	birthdate	claim.name
9585d26d-f377-4aa1-8a9e-088f01e22371	String	jsonType.label
e2e707a6-5401-4d32-bdc7-8737b5998d54	true	userinfo.token.claim
e2e707a6-5401-4d32-bdc7-8737b5998d54	zoneinfo	user.attribute
e2e707a6-5401-4d32-bdc7-8737b5998d54	true	id.token.claim
e2e707a6-5401-4d32-bdc7-8737b5998d54	true	access.token.claim
e2e707a6-5401-4d32-bdc7-8737b5998d54	zoneinfo	claim.name
e2e707a6-5401-4d32-bdc7-8737b5998d54	String	jsonType.label
045908b3-c5e0-4c32-a91a-450077cd197e	true	userinfo.token.claim
045908b3-c5e0-4c32-a91a-450077cd197e	locale	user.attribute
045908b3-c5e0-4c32-a91a-450077cd197e	true	id.token.claim
045908b3-c5e0-4c32-a91a-450077cd197e	true	access.token.claim
045908b3-c5e0-4c32-a91a-450077cd197e	locale	claim.name
045908b3-c5e0-4c32-a91a-450077cd197e	String	jsonType.label
b903278e-ff08-41d9-b3f2-8120127b4e84	true	userinfo.token.claim
b903278e-ff08-41d9-b3f2-8120127b4e84	updatedAt	user.attribute
b903278e-ff08-41d9-b3f2-8120127b4e84	true	id.token.claim
b903278e-ff08-41d9-b3f2-8120127b4e84	true	access.token.claim
b903278e-ff08-41d9-b3f2-8120127b4e84	updated_at	claim.name
b903278e-ff08-41d9-b3f2-8120127b4e84	String	jsonType.label
afdad825-b59b-488c-a76e-8c9f6dbf9895	true	userinfo.token.claim
afdad825-b59b-488c-a76e-8c9f6dbf9895	email	user.attribute
afdad825-b59b-488c-a76e-8c9f6dbf9895	true	id.token.claim
afdad825-b59b-488c-a76e-8c9f6dbf9895	true	access.token.claim
afdad825-b59b-488c-a76e-8c9f6dbf9895	email	claim.name
afdad825-b59b-488c-a76e-8c9f6dbf9895	String	jsonType.label
078c5127-9913-472c-8e85-3f0e0a9cd4d9	true	userinfo.token.claim
078c5127-9913-472c-8e85-3f0e0a9cd4d9	emailVerified	user.attribute
078c5127-9913-472c-8e85-3f0e0a9cd4d9	true	id.token.claim
078c5127-9913-472c-8e85-3f0e0a9cd4d9	true	access.token.claim
078c5127-9913-472c-8e85-3f0e0a9cd4d9	email_verified	claim.name
078c5127-9913-472c-8e85-3f0e0a9cd4d9	boolean	jsonType.label
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	formatted	user.attribute.formatted
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	country	user.attribute.country
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	postal_code	user.attribute.postal_code
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	true	userinfo.token.claim
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	street	user.attribute.street
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	true	id.token.claim
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	region	user.attribute.region
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	true	access.token.claim
38a2da0b-89fc-4351-b3f6-4ee4930e1e0a	locality	user.attribute.locality
68d743d4-fba1-463d-bc96-aa487c64518b	true	userinfo.token.claim
68d743d4-fba1-463d-bc96-aa487c64518b	phoneNumber	user.attribute
68d743d4-fba1-463d-bc96-aa487c64518b	true	id.token.claim
68d743d4-fba1-463d-bc96-aa487c64518b	true	access.token.claim
68d743d4-fba1-463d-bc96-aa487c64518b	phone_number	claim.name
68d743d4-fba1-463d-bc96-aa487c64518b	String	jsonType.label
f12b4a6b-e477-4bbd-ba20-1147f6aab220	true	userinfo.token.claim
f12b4a6b-e477-4bbd-ba20-1147f6aab220	phoneNumberVerified	user.attribute
f12b4a6b-e477-4bbd-ba20-1147f6aab220	true	id.token.claim
f12b4a6b-e477-4bbd-ba20-1147f6aab220	true	access.token.claim
f12b4a6b-e477-4bbd-ba20-1147f6aab220	phone_number_verified	claim.name
f12b4a6b-e477-4bbd-ba20-1147f6aab220	boolean	jsonType.label
c61b7b5e-854f-493e-92e5-64d11dc8bfb9	true	multivalued
c61b7b5e-854f-493e-92e5-64d11dc8bfb9	foo	user.attribute
c61b7b5e-854f-493e-92e5-64d11dc8bfb9	true	access.token.claim
c61b7b5e-854f-493e-92e5-64d11dc8bfb9	realm_access.roles	claim.name
c61b7b5e-854f-493e-92e5-64d11dc8bfb9	String	jsonType.label
6c5fd0be-de93-47e3-8a51-b74328a04ed3	true	multivalued
6c5fd0be-de93-47e3-8a51-b74328a04ed3	foo	user.attribute
6c5fd0be-de93-47e3-8a51-b74328a04ed3	true	access.token.claim
6c5fd0be-de93-47e3-8a51-b74328a04ed3	resource_access.${client_id}.roles	claim.name
6c5fd0be-de93-47e3-8a51-b74328a04ed3	String	jsonType.label
7d4388cb-b367-4bf2-aaaa-5eff0c326c86	true	userinfo.token.claim
7d4388cb-b367-4bf2-aaaa-5eff0c326c86	username	user.attribute
7d4388cb-b367-4bf2-aaaa-5eff0c326c86	true	id.token.claim
7d4388cb-b367-4bf2-aaaa-5eff0c326c86	true	access.token.claim
7d4388cb-b367-4bf2-aaaa-5eff0c326c86	upn	claim.name
7d4388cb-b367-4bf2-aaaa-5eff0c326c86	String	jsonType.label
dc4b30cd-12dc-4532-9f4b-cbb1fa75343a	true	multivalued
dc4b30cd-12dc-4532-9f4b-cbb1fa75343a	foo	user.attribute
dc4b30cd-12dc-4532-9f4b-cbb1fa75343a	true	id.token.claim
dc4b30cd-12dc-4532-9f4b-cbb1fa75343a	true	access.token.claim
dc4b30cd-12dc-4532-9f4b-cbb1fa75343a	groups	claim.name
dc4b30cd-12dc-4532-9f4b-cbb1fa75343a	String	jsonType.label
bf356aa0-7cde-4041-877f-701ba9b2d119	false	single
bf356aa0-7cde-4041-877f-701ba9b2d119	Basic	attribute.nameformat
bf356aa0-7cde-4041-877f-701ba9b2d119	Role	attribute.name
becff557-0b67-4e67-ac70-b033439013ee	true	userinfo.token.claim
becff557-0b67-4e67-ac70-b033439013ee	true	id.token.claim
becff557-0b67-4e67-ac70-b033439013ee	true	access.token.claim
497cabda-fe46-43fd-a595-3694c78ecbf1	true	userinfo.token.claim
497cabda-fe46-43fd-a595-3694c78ecbf1	lastName	user.attribute
497cabda-fe46-43fd-a595-3694c78ecbf1	true	id.token.claim
497cabda-fe46-43fd-a595-3694c78ecbf1	true	access.token.claim
497cabda-fe46-43fd-a595-3694c78ecbf1	family_name	claim.name
497cabda-fe46-43fd-a595-3694c78ecbf1	String	jsonType.label
85ea5fe6-b00c-468d-bec0-fc5d256102e6	true	userinfo.token.claim
85ea5fe6-b00c-468d-bec0-fc5d256102e6	firstName	user.attribute
85ea5fe6-b00c-468d-bec0-fc5d256102e6	true	id.token.claim
85ea5fe6-b00c-468d-bec0-fc5d256102e6	true	access.token.claim
85ea5fe6-b00c-468d-bec0-fc5d256102e6	given_name	claim.name
85ea5fe6-b00c-468d-bec0-fc5d256102e6	String	jsonType.label
86e5149c-edad-450e-bd02-211d894f7426	true	userinfo.token.claim
86e5149c-edad-450e-bd02-211d894f7426	middleName	user.attribute
86e5149c-edad-450e-bd02-211d894f7426	true	id.token.claim
86e5149c-edad-450e-bd02-211d894f7426	true	access.token.claim
86e5149c-edad-450e-bd02-211d894f7426	middle_name	claim.name
86e5149c-edad-450e-bd02-211d894f7426	String	jsonType.label
bc16a931-75ef-4b36-8bfc-64de68b68c45	true	userinfo.token.claim
bc16a931-75ef-4b36-8bfc-64de68b68c45	nickname	user.attribute
bc16a931-75ef-4b36-8bfc-64de68b68c45	true	id.token.claim
bc16a931-75ef-4b36-8bfc-64de68b68c45	true	access.token.claim
bc16a931-75ef-4b36-8bfc-64de68b68c45	nickname	claim.name
bc16a931-75ef-4b36-8bfc-64de68b68c45	String	jsonType.label
b74e4153-dc36-46ab-96c1-c8769cc281a8	true	userinfo.token.claim
b74e4153-dc36-46ab-96c1-c8769cc281a8	username	user.attribute
b74e4153-dc36-46ab-96c1-c8769cc281a8	true	id.token.claim
b74e4153-dc36-46ab-96c1-c8769cc281a8	true	access.token.claim
b74e4153-dc36-46ab-96c1-c8769cc281a8	preferred_username	claim.name
b74e4153-dc36-46ab-96c1-c8769cc281a8	String	jsonType.label
fa3349eb-5011-44ff-a397-561b8bd5b918	true	userinfo.token.claim
fa3349eb-5011-44ff-a397-561b8bd5b918	profile	user.attribute
fa3349eb-5011-44ff-a397-561b8bd5b918	true	id.token.claim
fa3349eb-5011-44ff-a397-561b8bd5b918	true	access.token.claim
fa3349eb-5011-44ff-a397-561b8bd5b918	profile	claim.name
fa3349eb-5011-44ff-a397-561b8bd5b918	String	jsonType.label
b67dd475-b2be-449b-b1b0-ba25d74b5999	true	userinfo.token.claim
b67dd475-b2be-449b-b1b0-ba25d74b5999	picture	user.attribute
b67dd475-b2be-449b-b1b0-ba25d74b5999	true	id.token.claim
b67dd475-b2be-449b-b1b0-ba25d74b5999	true	access.token.claim
b67dd475-b2be-449b-b1b0-ba25d74b5999	picture	claim.name
b67dd475-b2be-449b-b1b0-ba25d74b5999	String	jsonType.label
51712b62-4d59-4f8c-aac3-b8a68d8f1da7	true	userinfo.token.claim
51712b62-4d59-4f8c-aac3-b8a68d8f1da7	website	user.attribute
51712b62-4d59-4f8c-aac3-b8a68d8f1da7	true	id.token.claim
51712b62-4d59-4f8c-aac3-b8a68d8f1da7	true	access.token.claim
51712b62-4d59-4f8c-aac3-b8a68d8f1da7	website	claim.name
51712b62-4d59-4f8c-aac3-b8a68d8f1da7	String	jsonType.label
8b251264-6058-4d30-b942-4dd7e2f15025	true	userinfo.token.claim
8b251264-6058-4d30-b942-4dd7e2f15025	gender	user.attribute
8b251264-6058-4d30-b942-4dd7e2f15025	true	id.token.claim
8b251264-6058-4d30-b942-4dd7e2f15025	true	access.token.claim
8b251264-6058-4d30-b942-4dd7e2f15025	gender	claim.name
8b251264-6058-4d30-b942-4dd7e2f15025	String	jsonType.label
ca791314-bba8-4539-b949-62a67aac20e4	true	userinfo.token.claim
ca791314-bba8-4539-b949-62a67aac20e4	birthdate	user.attribute
ca791314-bba8-4539-b949-62a67aac20e4	true	id.token.claim
ca791314-bba8-4539-b949-62a67aac20e4	true	access.token.claim
ca791314-bba8-4539-b949-62a67aac20e4	birthdate	claim.name
ca791314-bba8-4539-b949-62a67aac20e4	String	jsonType.label
b82208ef-5335-4f87-a09e-0e252af3018b	true	userinfo.token.claim
b82208ef-5335-4f87-a09e-0e252af3018b	zoneinfo	user.attribute
b82208ef-5335-4f87-a09e-0e252af3018b	true	id.token.claim
b82208ef-5335-4f87-a09e-0e252af3018b	true	access.token.claim
b82208ef-5335-4f87-a09e-0e252af3018b	zoneinfo	claim.name
b82208ef-5335-4f87-a09e-0e252af3018b	String	jsonType.label
340180e4-570a-4104-bfa9-7af3c2d92bee	true	userinfo.token.claim
340180e4-570a-4104-bfa9-7af3c2d92bee	locale	user.attribute
340180e4-570a-4104-bfa9-7af3c2d92bee	true	id.token.claim
340180e4-570a-4104-bfa9-7af3c2d92bee	true	access.token.claim
340180e4-570a-4104-bfa9-7af3c2d92bee	locale	claim.name
340180e4-570a-4104-bfa9-7af3c2d92bee	String	jsonType.label
daf08c17-8aab-4993-967c-2431c464b954	true	userinfo.token.claim
daf08c17-8aab-4993-967c-2431c464b954	updatedAt	user.attribute
daf08c17-8aab-4993-967c-2431c464b954	true	id.token.claim
daf08c17-8aab-4993-967c-2431c464b954	true	access.token.claim
daf08c17-8aab-4993-967c-2431c464b954	updated_at	claim.name
daf08c17-8aab-4993-967c-2431c464b954	String	jsonType.label
c3b19508-7677-4129-896d-e5b4850832f6	true	userinfo.token.claim
c3b19508-7677-4129-896d-e5b4850832f6	email	user.attribute
c3b19508-7677-4129-896d-e5b4850832f6	true	id.token.claim
c3b19508-7677-4129-896d-e5b4850832f6	true	access.token.claim
c3b19508-7677-4129-896d-e5b4850832f6	email	claim.name
c3b19508-7677-4129-896d-e5b4850832f6	String	jsonType.label
6bf9a3a1-68e6-49ad-8862-c8922521eae7	true	userinfo.token.claim
6bf9a3a1-68e6-49ad-8862-c8922521eae7	emailVerified	user.attribute
6bf9a3a1-68e6-49ad-8862-c8922521eae7	true	id.token.claim
6bf9a3a1-68e6-49ad-8862-c8922521eae7	true	access.token.claim
6bf9a3a1-68e6-49ad-8862-c8922521eae7	email_verified	claim.name
6bf9a3a1-68e6-49ad-8862-c8922521eae7	boolean	jsonType.label
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	formatted	user.attribute.formatted
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	country	user.attribute.country
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	postal_code	user.attribute.postal_code
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	true	userinfo.token.claim
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	street	user.attribute.street
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	true	id.token.claim
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	region	user.attribute.region
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	true	access.token.claim
6b3bb008-2673-436d-a8d2-d00b0e6db5a3	locality	user.attribute.locality
59d6d1fa-7e46-4e44-9edb-7f2869b0c206	true	userinfo.token.claim
59d6d1fa-7e46-4e44-9edb-7f2869b0c206	phoneNumber	user.attribute
59d6d1fa-7e46-4e44-9edb-7f2869b0c206	true	id.token.claim
59d6d1fa-7e46-4e44-9edb-7f2869b0c206	true	access.token.claim
59d6d1fa-7e46-4e44-9edb-7f2869b0c206	phone_number	claim.name
59d6d1fa-7e46-4e44-9edb-7f2869b0c206	String	jsonType.label
9dcfd314-9c26-44e9-aab0-a7035a91a692	true	userinfo.token.claim
9dcfd314-9c26-44e9-aab0-a7035a91a692	phoneNumberVerified	user.attribute
9dcfd314-9c26-44e9-aab0-a7035a91a692	true	id.token.claim
9dcfd314-9c26-44e9-aab0-a7035a91a692	true	access.token.claim
9dcfd314-9c26-44e9-aab0-a7035a91a692	phone_number_verified	claim.name
9dcfd314-9c26-44e9-aab0-a7035a91a692	boolean	jsonType.label
a76a8b95-08cc-4326-a6b2-fe32d3c1c4ad	true	multivalued
a76a8b95-08cc-4326-a6b2-fe32d3c1c4ad	foo	user.attribute
a76a8b95-08cc-4326-a6b2-fe32d3c1c4ad	true	access.token.claim
a76a8b95-08cc-4326-a6b2-fe32d3c1c4ad	realm_access.roles	claim.name
a76a8b95-08cc-4326-a6b2-fe32d3c1c4ad	String	jsonType.label
b9ace62a-ef08-4d41-949d-e2b108706dec	true	multivalued
b9ace62a-ef08-4d41-949d-e2b108706dec	foo	user.attribute
b9ace62a-ef08-4d41-949d-e2b108706dec	true	access.token.claim
b9ace62a-ef08-4d41-949d-e2b108706dec	resource_access.${client_id}.roles	claim.name
b9ace62a-ef08-4d41-949d-e2b108706dec	String	jsonType.label
5460531d-7df2-46d7-aa2c-7a203e3a3983	true	userinfo.token.claim
5460531d-7df2-46d7-aa2c-7a203e3a3983	username	user.attribute
5460531d-7df2-46d7-aa2c-7a203e3a3983	true	id.token.claim
5460531d-7df2-46d7-aa2c-7a203e3a3983	true	access.token.claim
5460531d-7df2-46d7-aa2c-7a203e3a3983	upn	claim.name
5460531d-7df2-46d7-aa2c-7a203e3a3983	String	jsonType.label
3cdfc65f-0146-4e63-bec4-4ddc0052c36c	true	multivalued
3cdfc65f-0146-4e63-bec4-4ddc0052c36c	foo	user.attribute
3cdfc65f-0146-4e63-bec4-4ddc0052c36c	true	id.token.claim
3cdfc65f-0146-4e63-bec4-4ddc0052c36c	true	access.token.claim
3cdfc65f-0146-4e63-bec4-4ddc0052c36c	groups	claim.name
3cdfc65f-0146-4e63-bec4-4ddc0052c36c	String	jsonType.label
262a58b2-f960-4bf8-8576-086abee93813	true	userinfo.token.claim
262a58b2-f960-4bf8-8576-086abee93813	locale	user.attribute
262a58b2-f960-4bf8-8576-086abee93813	true	id.token.claim
262a58b2-f960-4bf8-8576-086abee93813	true	access.token.claim
262a58b2-f960-4bf8-8576-086abee93813	locale	claim.name
262a58b2-f960-4bf8-8576-086abee93813	String	jsonType.label
36ee4768-fad9-4b73-8a1f-33fc16d80245	false	single
36ee4768-fad9-4b73-8a1f-33fc16d80245	Basic	attribute.nameformat
36ee4768-fad9-4b73-8a1f-33fc16d80245	Role	attribute.name
98d2dc66-430d-4094-bfea-aa5d7fcfa07f	true	userinfo.token.claim
98d2dc66-430d-4094-bfea-aa5d7fcfa07f	true	id.token.claim
98d2dc66-430d-4094-bfea-aa5d7fcfa07f	true	access.token.claim
3b8b64da-1b05-42d0-aeaa-56c705f949df	true	userinfo.token.claim
3b8b64da-1b05-42d0-aeaa-56c705f949df	lastName	user.attribute
3b8b64da-1b05-42d0-aeaa-56c705f949df	true	id.token.claim
3b8b64da-1b05-42d0-aeaa-56c705f949df	true	access.token.claim
3b8b64da-1b05-42d0-aeaa-56c705f949df	family_name	claim.name
3b8b64da-1b05-42d0-aeaa-56c705f949df	String	jsonType.label
22b117ef-2f99-413d-9428-6d5210fe3e60	true	userinfo.token.claim
22b117ef-2f99-413d-9428-6d5210fe3e60	firstName	user.attribute
22b117ef-2f99-413d-9428-6d5210fe3e60	true	id.token.claim
22b117ef-2f99-413d-9428-6d5210fe3e60	true	access.token.claim
22b117ef-2f99-413d-9428-6d5210fe3e60	given_name	claim.name
22b117ef-2f99-413d-9428-6d5210fe3e60	String	jsonType.label
cb1b057e-9827-4190-9e61-0e36a6d095ec	true	userinfo.token.claim
cb1b057e-9827-4190-9e61-0e36a6d095ec	middleName	user.attribute
cb1b057e-9827-4190-9e61-0e36a6d095ec	true	id.token.claim
cb1b057e-9827-4190-9e61-0e36a6d095ec	true	access.token.claim
cb1b057e-9827-4190-9e61-0e36a6d095ec	middle_name	claim.name
cb1b057e-9827-4190-9e61-0e36a6d095ec	String	jsonType.label
a002011f-5e82-43a3-823b-132040cdf823	true	userinfo.token.claim
a002011f-5e82-43a3-823b-132040cdf823	nickname	user.attribute
a002011f-5e82-43a3-823b-132040cdf823	true	id.token.claim
a002011f-5e82-43a3-823b-132040cdf823	true	access.token.claim
a002011f-5e82-43a3-823b-132040cdf823	nickname	claim.name
a002011f-5e82-43a3-823b-132040cdf823	String	jsonType.label
9a3ac956-8d7e-41d5-a651-373931667c31	true	userinfo.token.claim
9a3ac956-8d7e-41d5-a651-373931667c31	username	user.attribute
9a3ac956-8d7e-41d5-a651-373931667c31	true	id.token.claim
9a3ac956-8d7e-41d5-a651-373931667c31	true	access.token.claim
9a3ac956-8d7e-41d5-a651-373931667c31	preferred_username	claim.name
9a3ac956-8d7e-41d5-a651-373931667c31	String	jsonType.label
d3088934-c6a4-493e-8370-7de93f790b6d	true	userinfo.token.claim
d3088934-c6a4-493e-8370-7de93f790b6d	profile	user.attribute
d3088934-c6a4-493e-8370-7de93f790b6d	true	id.token.claim
d3088934-c6a4-493e-8370-7de93f790b6d	true	access.token.claim
d3088934-c6a4-493e-8370-7de93f790b6d	profile	claim.name
d3088934-c6a4-493e-8370-7de93f790b6d	String	jsonType.label
b3254b0d-a8c5-4fb0-a0f1-5c33e00f390c	true	userinfo.token.claim
b3254b0d-a8c5-4fb0-a0f1-5c33e00f390c	picture	user.attribute
b3254b0d-a8c5-4fb0-a0f1-5c33e00f390c	true	id.token.claim
b3254b0d-a8c5-4fb0-a0f1-5c33e00f390c	true	access.token.claim
b3254b0d-a8c5-4fb0-a0f1-5c33e00f390c	picture	claim.name
b3254b0d-a8c5-4fb0-a0f1-5c33e00f390c	String	jsonType.label
41f0899c-e76f-4d64-82b7-adf51e479825	true	userinfo.token.claim
41f0899c-e76f-4d64-82b7-adf51e479825	website	user.attribute
41f0899c-e76f-4d64-82b7-adf51e479825	true	id.token.claim
41f0899c-e76f-4d64-82b7-adf51e479825	true	access.token.claim
41f0899c-e76f-4d64-82b7-adf51e479825	website	claim.name
41f0899c-e76f-4d64-82b7-adf51e479825	String	jsonType.label
add3b7b8-ac4e-4916-8d57-5c5bfed08b71	true	userinfo.token.claim
add3b7b8-ac4e-4916-8d57-5c5bfed08b71	gender	user.attribute
add3b7b8-ac4e-4916-8d57-5c5bfed08b71	true	id.token.claim
add3b7b8-ac4e-4916-8d57-5c5bfed08b71	true	access.token.claim
add3b7b8-ac4e-4916-8d57-5c5bfed08b71	gender	claim.name
add3b7b8-ac4e-4916-8d57-5c5bfed08b71	String	jsonType.label
d20d3e92-3036-45bc-9690-eb881b323b39	true	userinfo.token.claim
d20d3e92-3036-45bc-9690-eb881b323b39	birthdate	user.attribute
d20d3e92-3036-45bc-9690-eb881b323b39	true	id.token.claim
d20d3e92-3036-45bc-9690-eb881b323b39	true	access.token.claim
d20d3e92-3036-45bc-9690-eb881b323b39	birthdate	claim.name
d20d3e92-3036-45bc-9690-eb881b323b39	String	jsonType.label
22c9aabb-ed13-49ad-9e2c-be0a6959aa89	true	userinfo.token.claim
22c9aabb-ed13-49ad-9e2c-be0a6959aa89	zoneinfo	user.attribute
22c9aabb-ed13-49ad-9e2c-be0a6959aa89	true	id.token.claim
22c9aabb-ed13-49ad-9e2c-be0a6959aa89	true	access.token.claim
22c9aabb-ed13-49ad-9e2c-be0a6959aa89	zoneinfo	claim.name
22c9aabb-ed13-49ad-9e2c-be0a6959aa89	String	jsonType.label
07db6be9-5aef-43e3-a5fb-19a5b3a8d960	true	userinfo.token.claim
07db6be9-5aef-43e3-a5fb-19a5b3a8d960	locale	user.attribute
07db6be9-5aef-43e3-a5fb-19a5b3a8d960	true	id.token.claim
07db6be9-5aef-43e3-a5fb-19a5b3a8d960	true	access.token.claim
07db6be9-5aef-43e3-a5fb-19a5b3a8d960	locale	claim.name
07db6be9-5aef-43e3-a5fb-19a5b3a8d960	String	jsonType.label
b56aee08-390a-4944-8c44-091efbb0e24d	true	userinfo.token.claim
b56aee08-390a-4944-8c44-091efbb0e24d	updatedAt	user.attribute
b56aee08-390a-4944-8c44-091efbb0e24d	true	id.token.claim
b56aee08-390a-4944-8c44-091efbb0e24d	true	access.token.claim
b56aee08-390a-4944-8c44-091efbb0e24d	updated_at	claim.name
b56aee08-390a-4944-8c44-091efbb0e24d	String	jsonType.label
a7e5f0f0-1aa4-4a99-9fda-762d3e4c9fc4	true	userinfo.token.claim
a7e5f0f0-1aa4-4a99-9fda-762d3e4c9fc4	email	user.attribute
a7e5f0f0-1aa4-4a99-9fda-762d3e4c9fc4	true	id.token.claim
a7e5f0f0-1aa4-4a99-9fda-762d3e4c9fc4	true	access.token.claim
a7e5f0f0-1aa4-4a99-9fda-762d3e4c9fc4	email	claim.name
a7e5f0f0-1aa4-4a99-9fda-762d3e4c9fc4	String	jsonType.label
3bf560ff-10ee-43d7-93e6-b172c6830d73	true	userinfo.token.claim
3bf560ff-10ee-43d7-93e6-b172c6830d73	emailVerified	user.attribute
3bf560ff-10ee-43d7-93e6-b172c6830d73	true	id.token.claim
3bf560ff-10ee-43d7-93e6-b172c6830d73	true	access.token.claim
3bf560ff-10ee-43d7-93e6-b172c6830d73	email_verified	claim.name
3bf560ff-10ee-43d7-93e6-b172c6830d73	boolean	jsonType.label
66b5952c-2dc6-4112-ac46-a6888ba4c146	formatted	user.attribute.formatted
66b5952c-2dc6-4112-ac46-a6888ba4c146	country	user.attribute.country
66b5952c-2dc6-4112-ac46-a6888ba4c146	postal_code	user.attribute.postal_code
66b5952c-2dc6-4112-ac46-a6888ba4c146	true	userinfo.token.claim
66b5952c-2dc6-4112-ac46-a6888ba4c146	street	user.attribute.street
66b5952c-2dc6-4112-ac46-a6888ba4c146	true	id.token.claim
66b5952c-2dc6-4112-ac46-a6888ba4c146	region	user.attribute.region
66b5952c-2dc6-4112-ac46-a6888ba4c146	true	access.token.claim
66b5952c-2dc6-4112-ac46-a6888ba4c146	locality	user.attribute.locality
00e132b8-74f5-464e-a9ba-e271e2e11835	true	userinfo.token.claim
00e132b8-74f5-464e-a9ba-e271e2e11835	phoneNumber	user.attribute
00e132b8-74f5-464e-a9ba-e271e2e11835	true	id.token.claim
00e132b8-74f5-464e-a9ba-e271e2e11835	true	access.token.claim
00e132b8-74f5-464e-a9ba-e271e2e11835	phone_number	claim.name
00e132b8-74f5-464e-a9ba-e271e2e11835	String	jsonType.label
295a9ca6-68cc-4a51-a856-94181fe97eb3	true	userinfo.token.claim
295a9ca6-68cc-4a51-a856-94181fe97eb3	phoneNumberVerified	user.attribute
295a9ca6-68cc-4a51-a856-94181fe97eb3	true	id.token.claim
295a9ca6-68cc-4a51-a856-94181fe97eb3	true	access.token.claim
295a9ca6-68cc-4a51-a856-94181fe97eb3	phone_number_verified	claim.name
295a9ca6-68cc-4a51-a856-94181fe97eb3	boolean	jsonType.label
632a34b7-398b-4ba1-b97c-08e6030fadf1	true	multivalued
632a34b7-398b-4ba1-b97c-08e6030fadf1	foo	user.attribute
632a34b7-398b-4ba1-b97c-08e6030fadf1	true	access.token.claim
632a34b7-398b-4ba1-b97c-08e6030fadf1	realm_access.roles	claim.name
632a34b7-398b-4ba1-b97c-08e6030fadf1	String	jsonType.label
3ef245b1-8570-414f-b2d2-723ca963e98d	true	multivalued
3ef245b1-8570-414f-b2d2-723ca963e98d	foo	user.attribute
3ef245b1-8570-414f-b2d2-723ca963e98d	true	access.token.claim
3ef245b1-8570-414f-b2d2-723ca963e98d	resource_access.${client_id}.roles	claim.name
3ef245b1-8570-414f-b2d2-723ca963e98d	String	jsonType.label
b55bf8bb-e3dd-4f77-8403-c3a8628fc40c	true	userinfo.token.claim
b55bf8bb-e3dd-4f77-8403-c3a8628fc40c	username	user.attribute
b55bf8bb-e3dd-4f77-8403-c3a8628fc40c	true	id.token.claim
b55bf8bb-e3dd-4f77-8403-c3a8628fc40c	true	access.token.claim
b55bf8bb-e3dd-4f77-8403-c3a8628fc40c	upn	claim.name
b55bf8bb-e3dd-4f77-8403-c3a8628fc40c	String	jsonType.label
873574df-4ce3-4f21-8a8d-cfcb213a7aea	true	multivalued
873574df-4ce3-4f21-8a8d-cfcb213a7aea	foo	user.attribute
873574df-4ce3-4f21-8a8d-cfcb213a7aea	true	id.token.claim
873574df-4ce3-4f21-8a8d-cfcb213a7aea	true	access.token.claim
873574df-4ce3-4f21-8a8d-cfcb213a7aea	groups	claim.name
873574df-4ce3-4f21-8a8d-cfcb213a7aea	String	jsonType.label
01d37439-8ae8-449b-a6d3-708fcfeedd91	true	userinfo.token.claim
01d37439-8ae8-449b-a6d3-708fcfeedd91	locale	user.attribute
01d37439-8ae8-449b-a6d3-708fcfeedd91	true	id.token.claim
01d37439-8ae8-449b-a6d3-708fcfeedd91	true	access.token.claim
01d37439-8ae8-449b-a6d3-708fcfeedd91	locale	claim.name
01d37439-8ae8-449b-a6d3-708fcfeedd91	String	jsonType.label
\.


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm (id, access_code_lifespan, user_action_lifespan, access_token_lifespan, account_theme, admin_theme, email_theme, enabled, events_enabled, events_expiration, login_theme, name, not_before, password_policy, registration_allowed, remember_me, reset_password_allowed, social, ssl_required, sso_idle_timeout, sso_max_lifespan, update_profile_on_soc_login, verify_email, master_admin_client, login_lifespan, internationalization_enabled, default_locale, reg_email_as_username, admin_events_enabled, admin_events_details_enabled, edit_username_allowed, otp_policy_counter, otp_policy_window, otp_policy_period, otp_policy_digits, otp_policy_alg, otp_policy_type, browser_flow, registration_flow, direct_grant_flow, reset_credentials_flow, client_auth_flow, offline_session_idle_timeout, revoke_refresh_token, access_token_life_implicit, login_with_email_allowed, duplicate_emails_allowed, docker_auth_flow, refresh_token_max_reuse, allow_user_managed_access, sso_max_lifespan_remember_me, sso_idle_timeout_remember_me) FROM stdin;
basic	60	300	300	\N	\N	\N	t	f	0	\N	basic	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	f9392b62-0dd9-4240-a6e3-6ff04ca12b03	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	15f49497-c96a-483c-8a73-9ef5a772c1a9	054042c0-e70b-49f2-a182-c804576ad3c9	7d3289d8-abbf-45e7-a082-4fe0182d4cce	94e1067a-515b-495f-9302-038c277a5a6f	88138982-408a-4c66-aa30-d872cda1e00c	2592000	f	900	t	f	d0eaf152-9ae5-416b-b620-3dbccd3494a7	0	f	0	0
master	60	300	60	\N	\N	\N	t	f	0	\N	master	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	48ac08f1-06d8-4b03-9432-56d89d77ec00	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	ee0e5ee3-2b74-4ccb-9da5-3e78c7931bcc	e4b65824-59c6-4b76-8a44-f7977e005969	dde5e62a-65b2-4179-9b59-54113df828db	6b01f4e8-98f8-4f88-9b50-1a033141075f	867db14f-74ed-430b-972b-36d5c16fd6ee	2592000	f	900	t	f	6e8a8b22-a640-43ff-8ce0-041d5669c41c	0	f	0	0
ffd9d216-cccd-4637-b19a-78f9c935a3de	60	300	300	\N	\N	\N	t	f	0	\N	demorealm	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	eab68333-a860-48d4-bc8e-cb7748be0442	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	753d9c2d-47d1-4a4f-9c11-5f98c4c96718	b2b5ca63-1703-485e-bc0a-7ee4a459fba3	7a5aded7-2504-4673-a4c5-d89aa230bbaa	5e44d540-f388-465e-b9a7-f0c4f74b74a6	de2839c4-0e29-43f7-b40e-a70d81fcf6c0	2592000	f	900	t	f	692e547b-a4ae-40f7-a52e-9245e12e60ec	0	f	0	0
\.


--
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_attribute (name, value, realm_id) FROM stdin;
_browser_header.contentSecurityPolicyReportOnly		master
_browser_header.xContentTypeOptions	nosniff	master
_browser_header.xRobotsTag	none	master
_browser_header.xFrameOptions	SAMEORIGIN	master
_browser_header.contentSecurityPolicy	frame-src 'self'; frame-ancestors 'self'; object-src 'none';	master
_browser_header.xXSSProtection	1; mode=block	master
_browser_header.strictTransportSecurity	max-age=31536000; includeSubDomains	master
bruteForceProtected	false	master
permanentLockout	false	master
maxFailureWaitSeconds	900	master
minimumQuickLoginWaitSeconds	60	master
waitIncrementSeconds	60	master
quickLoginCheckMilliSeconds	1000	master
maxDeltaTimeSeconds	43200	master
failureFactor	30	master
displayName	rh-sso	master
displayNameHtml	<strong>Red Hat</strong><sup>®</sup> Single Sign On	master
offlineSessionMaxLifespanEnabled	false	master
offlineSessionMaxLifespan	5184000	master
_browser_header.contentSecurityPolicyReportOnly		ffd9d216-cccd-4637-b19a-78f9c935a3de
_browser_header.xContentTypeOptions	nosniff	ffd9d216-cccd-4637-b19a-78f9c935a3de
_browser_header.xRobotsTag	none	ffd9d216-cccd-4637-b19a-78f9c935a3de
_browser_header.xFrameOptions	SAMEORIGIN	ffd9d216-cccd-4637-b19a-78f9c935a3de
_browser_header.contentSecurityPolicy	frame-src 'self'; frame-ancestors 'self'; object-src 'none';	ffd9d216-cccd-4637-b19a-78f9c935a3de
_browser_header.xXSSProtection	1; mode=block	ffd9d216-cccd-4637-b19a-78f9c935a3de
_browser_header.strictTransportSecurity	max-age=31536000; includeSubDomains	ffd9d216-cccd-4637-b19a-78f9c935a3de
bruteForceProtected	false	ffd9d216-cccd-4637-b19a-78f9c935a3de
permanentLockout	false	ffd9d216-cccd-4637-b19a-78f9c935a3de
maxFailureWaitSeconds	900	ffd9d216-cccd-4637-b19a-78f9c935a3de
minimumQuickLoginWaitSeconds	60	ffd9d216-cccd-4637-b19a-78f9c935a3de
waitIncrementSeconds	60	ffd9d216-cccd-4637-b19a-78f9c935a3de
quickLoginCheckMilliSeconds	1000	ffd9d216-cccd-4637-b19a-78f9c935a3de
maxDeltaTimeSeconds	43200	ffd9d216-cccd-4637-b19a-78f9c935a3de
failureFactor	30	ffd9d216-cccd-4637-b19a-78f9c935a3de
offlineSessionMaxLifespanEnabled	false	ffd9d216-cccd-4637-b19a-78f9c935a3de
offlineSessionMaxLifespan	5184000	ffd9d216-cccd-4637-b19a-78f9c935a3de
actionTokenGeneratedByAdminLifespan	43200	ffd9d216-cccd-4637-b19a-78f9c935a3de
actionTokenGeneratedByUserLifespan	300	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyRpEntityName	keycloak	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicySignatureAlgorithms	ES256	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyRpId		ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyAttestationConveyancePreference	not specified	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyAuthenticatorAttachment	not specified	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyRequireResidentKey	not specified	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyUserVerificationRequirement	not specified	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyCreateTimeout	0	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyAvoidSameAuthenticatorRegister	false	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyRpEntityNamePasswordless	keycloak	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicySignatureAlgorithmsPasswordless	ES256	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyRpIdPasswordless		ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyAttestationConveyancePreferencePasswordless	not specified	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyAuthenticatorAttachmentPasswordless	not specified	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyRequireResidentKeyPasswordless	not specified	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyUserVerificationRequirementPasswordless	not specified	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyCreateTimeoutPasswordless	0	ffd9d216-cccd-4637-b19a-78f9c935a3de
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	false	ffd9d216-cccd-4637-b19a-78f9c935a3de
_browser_header.contentSecurityPolicyReportOnly		basic
_browser_header.xContentTypeOptions	nosniff	basic
_browser_header.xRobotsTag	none	basic
_browser_header.xFrameOptions	SAMEORIGIN	basic
_browser_header.contentSecurityPolicy	frame-src 'self'; frame-ancestors 'self'; object-src 'none';	basic
_browser_header.xXSSProtection	1; mode=block	basic
_browser_header.strictTransportSecurity	max-age=31536000; includeSubDomains	basic
bruteForceProtected	false	basic
permanentLockout	false	basic
maxFailureWaitSeconds	900	basic
minimumQuickLoginWaitSeconds	60	basic
waitIncrementSeconds	60	basic
quickLoginCheckMilliSeconds	1000	basic
maxDeltaTimeSeconds	43200	basic
failureFactor	30	basic
offlineSessionMaxLifespanEnabled	false	basic
offlineSessionMaxLifespan	5184000	basic
actionTokenGeneratedByAdminLifespan	43200	basic
actionTokenGeneratedByUserLifespan	300	basic
webAuthnPolicyRpEntityName	keycloak	basic
webAuthnPolicySignatureAlgorithms	ES256	basic
webAuthnPolicyRpId		basic
webAuthnPolicyAttestationConveyancePreference	not specified	basic
webAuthnPolicyAuthenticatorAttachment	not specified	basic
webAuthnPolicyRequireResidentKey	not specified	basic
webAuthnPolicyUserVerificationRequirement	not specified	basic
webAuthnPolicyCreateTimeout	0	basic
webAuthnPolicyAvoidSameAuthenticatorRegister	false	basic
webAuthnPolicyRpEntityNamePasswordless	keycloak	basic
webAuthnPolicySignatureAlgorithmsPasswordless	ES256	basic
webAuthnPolicyRpIdPasswordless		basic
webAuthnPolicyAttestationConveyancePreferencePasswordless	not specified	basic
webAuthnPolicyAuthenticatorAttachmentPasswordless	not specified	basic
webAuthnPolicyRequireResidentKeyPasswordless	not specified	basic
webAuthnPolicyUserVerificationRequirementPasswordless	not specified	basic
webAuthnPolicyCreateTimeoutPasswordless	0	basic
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	false	basic
\.


--
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_default_groups (realm_id, group_id) FROM stdin;
\.


--
-- Data for Name: realm_default_roles; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_default_roles (realm_id, role_id) FROM stdin;
master	d36340f2-ab2d-4d64-a92a-9f6b6b73e07e
master	45c7fbac-69a3-4aa5-836c-0ec646464c7b
ffd9d216-cccd-4637-b19a-78f9c935a3de	25bb0d40-deb9-45ca-bbaf-316cd6c9a8ad
ffd9d216-cccd-4637-b19a-78f9c935a3de	e6733d9c-2cb9-4c90-bcae-c0029b9c9ef6
basic	3517ad10-8f33-4678-b1c3-4682361ee328
basic	9bd45b18-dfeb-4c7d-aebe-3e6eab43364a
\.


--
-- Data for Name: realm_enabled_event_types; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_enabled_event_types (realm_id, value) FROM stdin;
\.


--
-- Data for Name: realm_events_listeners; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_events_listeners (realm_id, value) FROM stdin;
master	jboss-logging
ffd9d216-cccd-4637-b19a-78f9c935a3de	jboss-logging
basic	jboss-logging
\.


--
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_required_credential (type, form_label, input, secret, realm_id) FROM stdin;
password	password	t	t	master
password	password	t	t	ffd9d216-cccd-4637-b19a-78f9c935a3de
password	password	t	t	basic
\.


--
-- Data for Name: realm_smtp_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_smtp_config (realm_id, value, name) FROM stdin;
\.


--
-- Data for Name: realm_supported_locales; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_supported_locales (realm_id, value) FROM stdin;
\.


--
-- Data for Name: redirect_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.redirect_uris (client_id, value) FROM stdin;
4644e7fb-9112-4100-80f0-0aa15cc99b6f	/realms/master/account/*
570154ea-bd10-4435-88da-7c4d95cf455c	/realms/master/account/*
d0f69702-7492-41ce-9227-b6b3982471a8	/admin/master/console/*
e8d99a75-76b6-4247-a724-4a34fed9140c	/realms/demorealm/account/*
068ed656-1b10-4f30-bfac-98032af95961	/realms/demorealm/account/*
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	/admin/demorealm/console/*
c721710b-ce98-41ad-a6e8-7bc7d1520271	/realms/basic/account/*
ea3ffadc-0a56-4c64-be05-daa6adf65801	/realms/basic/account/*
9dac498e-28fa-4cc0-8673-199f0649e772	/admin/basic/console/*
b9383891-8e16-4b4b-9259-12f206ec6141	/*
\.


--
-- Data for Name: required_action_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.required_action_config (required_action_id, value, name) FROM stdin;
\.


--
-- Data for Name: required_action_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.required_action_provider (id, alias, name, realm_id, enabled, default_action, provider_id, priority) FROM stdin;
278b3411-6db4-4877-8a7a-c678a272f712	VERIFY_EMAIL	Verify Email	master	t	f	VERIFY_EMAIL	50
379170ed-a0c2-4cd7-a81b-35e10914d361	UPDATE_PROFILE	Update Profile	master	t	f	UPDATE_PROFILE	40
d823bae7-116f-4735-9d79-452f55e23987	CONFIGURE_TOTP	Configure OTP	master	t	f	CONFIGURE_TOTP	10
340ef14a-ae1e-4dc5-92ad-9b64f27fabed	UPDATE_PASSWORD	Update Password	master	t	f	UPDATE_PASSWORD	30
92c0591b-8b0b-47fe-a15b-64f6de945d71	terms_and_conditions	Terms and Conditions	master	f	f	terms_and_conditions	20
df3b98cb-bc9d-494f-a86b-9843cf2a178f	update_user_locale	Update User Locale	master	t	f	update_user_locale	1000
6193f607-495b-4ad8-bfc2-6d7b67621c53	VERIFY_EMAIL	Verify Email	ffd9d216-cccd-4637-b19a-78f9c935a3de	t	f	VERIFY_EMAIL	50
55651ba9-b0ca-4863-9e97-cd02c810c8ba	UPDATE_PROFILE	Update Profile	ffd9d216-cccd-4637-b19a-78f9c935a3de	t	f	UPDATE_PROFILE	40
8a0a84d8-74ec-4caf-b990-c6e3c9aa0a93	CONFIGURE_TOTP	Configure OTP	ffd9d216-cccd-4637-b19a-78f9c935a3de	t	f	CONFIGURE_TOTP	10
20c6a91e-0016-4c48-9cde-62656f683099	UPDATE_PASSWORD	Update Password	ffd9d216-cccd-4637-b19a-78f9c935a3de	t	f	UPDATE_PASSWORD	30
52295760-f7d5-41f6-a064-afcd47bb4edd	terms_and_conditions	Terms and Conditions	ffd9d216-cccd-4637-b19a-78f9c935a3de	f	f	terms_and_conditions	20
f265a35a-3b27-44a2-b8c7-8f77e0450e4b	update_user_locale	Update User Locale	ffd9d216-cccd-4637-b19a-78f9c935a3de	t	f	update_user_locale	1000
7d7db7a4-f981-4883-8ccc-9b5b4488cb83	VERIFY_EMAIL	Verify Email	basic	t	f	VERIFY_EMAIL	50
4aa45c1b-f1aa-41e5-986e-d05562aaca24	UPDATE_PROFILE	Update Profile	basic	t	f	UPDATE_PROFILE	40
7330050c-4b18-43ce-a10c-a4a90d104638	CONFIGURE_TOTP	Configure OTP	basic	t	f	CONFIGURE_TOTP	10
7866ad06-88c8-49e1-b428-39acdad94e6a	UPDATE_PASSWORD	Update Password	basic	t	f	UPDATE_PASSWORD	30
9debac12-b2d3-4b0b-a634-39f29de8aa2e	terms_and_conditions	Terms and Conditions	basic	f	f	terms_and_conditions	20
a70895c9-8364-4244-96d2-81882f1ecbbc	update_user_locale	Update User Locale	basic	t	f	update_user_locale	1000
\.


--
-- Data for Name: resource_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_attribute (id, name, value, resource_id) FROM stdin;
\.


--
-- Data for Name: resource_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_policy (resource_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_scope (resource_id, scope_id) FROM stdin;
\.


--
-- Data for Name: resource_server; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server (id, allow_rs_remote_mgmt, policy_enforce_mode, decision_strategy) FROM stdin;
\.


--
-- Data for Name: resource_server_perm_ticket; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_perm_ticket (id, owner, requester, created_timestamp, granted_timestamp, resource_id, scope_id, resource_server_id, policy_id) FROM stdin;
\.


--
-- Data for Name: resource_server_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_policy (id, name, description, type, decision_strategy, logic, resource_server_id, owner) FROM stdin;
\.


--
-- Data for Name: resource_server_resource; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_resource (id, name, type, icon_uri, owner, resource_server_id, owner_managed_access, display_name) FROM stdin;
\.


--
-- Data for Name: resource_server_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_server_scope (id, name, icon_uri, resource_server_id, display_name) FROM stdin;
\.


--
-- Data for Name: resource_uris; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.resource_uris (resource_id, value) FROM stdin;
\.


--
-- Data for Name: role_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.role_attribute (id, role_id, name, value) FROM stdin;
\.


--
-- Data for Name: scope_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.scope_mapping (client_id, role_id) FROM stdin;
570154ea-bd10-4435-88da-7c4d95cf455c	60d90fff-c1a3-466c-ae67-ba9a976646a6
068ed656-1b10-4f30-bfac-98032af95961	94c01f7b-6676-4d1d-8cfe-e54d94afd712
ea3ffadc-0a56-4c64-be05-daa6adf65801	156f50e9-2945-4301-a53b-27dfed5e4da4
\.


--
-- Data for Name: scope_policy; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.scope_policy (scope_id, policy_id) FROM stdin;
\.


--
-- Data for Name: user_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_attribute (name, value, user_id, id) FROM stdin;
\.


--
-- Data for Name: user_consent; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_consent (id, client_id, user_id, created_date, last_updated_date, client_storage_provider, external_client_id) FROM stdin;
\.


--
-- Data for Name: user_consent_client_scope; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_consent_client_scope (user_consent_id, scope_id) FROM stdin;
\.


--
-- Data for Name: user_entity; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_entity (id, email, email_constraint, email_verified, enabled, federation_link, first_name, last_name, realm_id, username, created_timestamp, service_account_client_link, not_before) FROM stdin;
fa3e862b-e86f-40e6-916f-2ffe88bc5f49	\N	5464ad93-374d-41c3-b6bf-0154c5df830f	f	t	\N	\N	\N	master	admin	1601639756326	\N	0
e4c447b4-1700-4247-bd6d-5c56655aea5a	alice@oxford.ak.uk	alice@oxford.ak.uk	f	t	\N	Alice	Fromwonderland	basic	alice	1601641221914	\N	0
15ccf456-dc4c-4258-9660-575c1d257950	nmajorov@redhat.com	nmajorov@redhat.com	f	t	\N	Nikolaj	Majorov	basic	niko	1601641255246	\N	0
37fff225-cca9-49bd-8a4f-b3a31cb86abf	admin@example.com	admin@example.com	f	t	\N	Oleg	Mayer	basic	radmin	1601641339602	\N	0
\.


--
-- Data for Name: user_federation_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_config (user_federation_provider_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_mapper (id, name, federation_provider_id, federation_mapper_type, realm_id) FROM stdin;
\.


--
-- Data for Name: user_federation_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_mapper_config (user_federation_mapper_id, value, name) FROM stdin;
\.


--
-- Data for Name: user_federation_provider; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_federation_provider (id, changed_sync_period, display_name, full_sync_period, last_sync, priority, provider_name, realm_id) FROM stdin;
\.


--
-- Data for Name: user_group_membership; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_group_membership (group_id, user_id) FROM stdin;
\.


--
-- Data for Name: user_required_action; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_required_action (user_id, required_action) FROM stdin;
\.


--
-- Data for Name: user_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_role_mapping (role_id, user_id) FROM stdin;
2f29abed-ca55-4f94-8e32-f5f4852b159d	fa3e862b-e86f-40e6-916f-2ffe88bc5f49
60d90fff-c1a3-466c-ae67-ba9a976646a6	fa3e862b-e86f-40e6-916f-2ffe88bc5f49
d36340f2-ab2d-4d64-a92a-9f6b6b73e07e	fa3e862b-e86f-40e6-916f-2ffe88bc5f49
45c7fbac-69a3-4aa5-836c-0ec646464c7b	fa3e862b-e86f-40e6-916f-2ffe88bc5f49
a834bf42-28a7-44de-aa13-955a79f140b9	fa3e862b-e86f-40e6-916f-2ffe88bc5f49
9bd45b18-dfeb-4c7d-aebe-3e6eab43364a	e4c447b4-1700-4247-bd6d-5c56655aea5a
3517ad10-8f33-4678-b1c3-4682361ee328	e4c447b4-1700-4247-bd6d-5c56655aea5a
09456ec0-a0fc-422b-92da-e285f642283a	e4c447b4-1700-4247-bd6d-5c56655aea5a
156f50e9-2945-4301-a53b-27dfed5e4da4	e4c447b4-1700-4247-bd6d-5c56655aea5a
9bd45b18-dfeb-4c7d-aebe-3e6eab43364a	15ccf456-dc4c-4258-9660-575c1d257950
3517ad10-8f33-4678-b1c3-4682361ee328	15ccf456-dc4c-4258-9660-575c1d257950
09456ec0-a0fc-422b-92da-e285f642283a	15ccf456-dc4c-4258-9660-575c1d257950
156f50e9-2945-4301-a53b-27dfed5e4da4	15ccf456-dc4c-4258-9660-575c1d257950
9bd45b18-dfeb-4c7d-aebe-3e6eab43364a	37fff225-cca9-49bd-8a4f-b3a31cb86abf
3517ad10-8f33-4678-b1c3-4682361ee328	37fff225-cca9-49bd-8a4f-b3a31cb86abf
09456ec0-a0fc-422b-92da-e285f642283a	37fff225-cca9-49bd-8a4f-b3a31cb86abf
156f50e9-2945-4301-a53b-27dfed5e4da4	37fff225-cca9-49bd-8a4f-b3a31cb86abf
c3a68389-c4f4-474e-98d6-1a52b3a02bd7	37fff225-cca9-49bd-8a4f-b3a31cb86abf
\.


--
-- Data for Name: user_session; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_session (id, auth_method, ip_address, last_session_refresh, login_username, realm_id, remember_me, started, user_id, user_session_state, broker_session_id, broker_user_id) FROM stdin;
\.


--
-- Data for Name: user_session_note; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.user_session_note (user_session, name, value) FROM stdin;
\.


--
-- Data for Name: username_login_failure; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.username_login_failure (realm_id, username, failed_login_not_before, last_failure, last_ip_failure, num_failures) FROM stdin;
\.


--
-- Data for Name: web_origins; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.web_origins (client_id, value) FROM stdin;
d0f69702-7492-41ce-9227-b6b3982471a8	+
81f8c9a0-9da1-4ac0-8982-b3a4587a0a01	+
9dac498e-28fa-4cc0-8673-199f0649e772	+
b9383891-8e16-4b4b-9259-12f206ec6141	+
\.


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
-- Name: osssotest1t9vgmjbosststxtable osssotest1t9vgmjbosststxtable_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.osssotest1t9vgmjbosststxtable
    ADD CONSTRAINT osssotest1t9vgmjbosststxtable_pkey PRIMARY KEY (uidstring, typename, statetype);


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

