--
-- PostgreSQL database dump
--

-- Dumped from database version 10.21
-- Dumped by pg_dump version 10.21

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

--
-- Name: expenses; Type: SCHEMA; Schema: -; Owner: keycloak
--

CREATE SCHEMA expenses;


ALTER SCHEMA expenses OWNER TO keycloak;

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
-- Name: app_user; Type: TABLE; Schema: expenses; Owner: keycloak
--

CREATE TABLE expenses.app_user (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    tstamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE expenses.app_user OWNER TO keycloak;

--
-- Name: app_user_id_seq; Type: SEQUENCE; Schema: expenses; Owner: keycloak
--

CREATE SEQUENCE expenses.app_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE expenses.app_user_id_seq OWNER TO keycloak;

--
-- Name: app_user_id_seq; Type: SEQUENCE OWNED BY; Schema: expenses; Owner: keycloak
--

ALTER SEQUENCE expenses.app_user_id_seq OWNED BY expenses.app_user.id;


--
-- Name: exchange_quotes; Type: TABLE; Schema: expenses; Owner: keycloak
--

CREATE TABLE expenses.exchange_quotes (
    id integer NOT NULL,
    currency_pair character varying(250) NOT NULL,
    quote numeric(15,6)
);


ALTER TABLE expenses.exchange_quotes OWNER TO keycloak;

--
-- Name: exchange_quotes_id_seq; Type: SEQUENCE; Schema: expenses; Owner: keycloak
--

CREATE SEQUENCE expenses.exchange_quotes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE expenses.exchange_quotes_id_seq OWNER TO keycloak;

--
-- Name: exchange_quotes_id_seq; Type: SEQUENCE OWNED BY; Schema: expenses; Owner: keycloak
--

ALTER SEQUENCE expenses.exchange_quotes_id_seq OWNED BY expenses.exchange_quotes.id;


--
-- Name: expenses; Type: TABLE; Schema: expenses; Owner: keycloak
--

CREATE TABLE expenses.expenses (
    id integer NOT NULL,
    description character varying(250) NOT NULL,
    amount numeric(15,6),
    created date,
    tstamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_report integer
);


ALTER TABLE expenses.expenses OWNER TO keycloak;

--
-- Name: expenses_id_seq; Type: SEQUENCE; Schema: expenses; Owner: keycloak
--

CREATE SEQUENCE expenses.expenses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE expenses.expenses_id_seq OWNER TO keycloak;

--
-- Name: expenses_id_seq; Type: SEQUENCE OWNED BY; Schema: expenses; Owner: keycloak
--

ALTER SEQUENCE expenses.expenses_id_seq OWNED BY expenses.expenses.id;


--
-- Name: flyway_schema_history; Type: TABLE; Schema: expenses; Owner: keycloak
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


ALTER TABLE expenses.flyway_schema_history OWNER TO keycloak;

--
-- Name: report; Type: TABLE; Schema: expenses; Owner: keycloak
--

CREATE TABLE expenses.report (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    created date,
    tstamp timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    fk_app_user integer
);


ALTER TABLE expenses.report OWNER TO keycloak;

--
-- Name: report_id_seq; Type: SEQUENCE; Schema: expenses; Owner: keycloak
--

CREATE SEQUENCE expenses.report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE expenses.report_id_seq OWNER TO keycloak;

--
-- Name: report_id_seq; Type: SEQUENCE OWNED BY; Schema: expenses; Owner: keycloak
--

ALTER SEQUENCE expenses.report_id_seq OWNED BY expenses.report.id;


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
    client_id character varying(255) NOT NULL,
    scope_id character varying(255) NOT NULL,
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
    sso_idle_timeout_remember_me integer DEFAULT 0 NOT NULL,
    default_role character varying(255)
);


ALTER TABLE public.realm OWNER TO keycloak;

--
-- Name: realm_attribute; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_attribute (
    name character varying(255) NOT NULL,
    realm_id character varying(36) NOT NULL,
    value text
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
-- Name: realm_localizations; Type: TABLE; Schema: public; Owner: keycloak
--

CREATE TABLE public.realm_localizations (
    realm_id character varying(255) NOT NULL,
    locale character varying(255) NOT NULL,
    texts text NOT NULL
);


ALTER TABLE public.realm_localizations OWNER TO keycloak;

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
-- Name: app_user id; Type: DEFAULT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.app_user ALTER COLUMN id SET DEFAULT nextval('expenses.app_user_id_seq'::regclass);


--
-- Name: exchange_quotes id; Type: DEFAULT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.exchange_quotes ALTER COLUMN id SET DEFAULT nextval('expenses.exchange_quotes_id_seq'::regclass);


--
-- Name: expenses id; Type: DEFAULT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.expenses ALTER COLUMN id SET DEFAULT nextval('expenses.expenses_id_seq'::regclass);


--
-- Name: report id; Type: DEFAULT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.report ALTER COLUMN id SET DEFAULT nextval('expenses.report_id_seq'::regclass);


--
-- Data for Name: app_user; Type: TABLE DATA; Schema: expenses; Owner: keycloak
--

COPY expenses.app_user (id, name, tstamp) FROM stdin;
1	niko	2023-09-02 19:00:02.121684
\.


--
-- Data for Name: exchange_quotes; Type: TABLE DATA; Schema: expenses; Owner: keycloak
--

COPY expenses.exchange_quotes (id, currency_pair, quote) FROM stdin;
1	EUR_CHF	0.975800
2	EUR_USD	1.031800
3	EUR_GBP	0.943700
4	USD_CHF	1.031800
5	GBP_CHF	1.122900
\.


--
-- Data for Name: expenses; Type: TABLE DATA; Schema: expenses; Owner: keycloak
--

COPY expenses.expenses (id, description, amount, created, tstamp, fk_report) FROM stdin;
1	Lunch	30.300000	2019-07-30	2023-09-02 19:00:02.100267	1
2	Lenovo Tablet	149.000000	2019-07-30	2023-09-02 19:00:02.100267	1
3	Dinner	30.300000	2019-09-29	2023-09-02 19:00:02.100267	1
4	Book	28.190000	2019-09-29	2023-09-02 19:00:02.100267	1
5	train ticket	10.120000	2023-09-02	2023-09-02 19:37:24.146349	1
6	train ticket	90.120000	2023-09-02	2023-09-02 19:37:24.448037	1
\.


--
-- Data for Name: flyway_schema_history; Type: TABLE DATA; Schema: expenses; Owner: keycloak
--

COPY expenses.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
0	\N	<< Flyway Schema Creation >>	SCHEMA	"expenses"	\N	keycloak	2023-09-02 19:00:02.069065	0	t
1	1.0.0	Quarkus	SQL	db/migration/V1.0.0__Quarkus.sql	435842347	keycloak	2023-09-02 19:00:02.100267	10	t
2	1.2.0	Quarkus	SQL	db/migration/V1.2.0__Quarkus.sql	2048866737	keycloak	2023-09-02 19:00:02.121684	9	t
3	1.3.0	Quarkus	SQL	db/migration/V1.3.0__Quarkus.sql	-597799397	keycloak	2023-09-02 19:00:02.139808	5	t
\.


--
-- Data for Name: report; Type: TABLE DATA; Schema: expenses; Owner: keycloak
--

COPY expenses.report (id, name, created, tstamp, fk_app_user) FROM stdin;
1	new test report	2019-07-30	2023-09-02 19:37:24.801841	1
2	test-report-1693676244887	2023-09-02	2023-09-02 19:37:24.905193	1
\.


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
cd65113e-0a52-4366-8422-4f53c5ab5f8e	\N	auth-cookie	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	83320266-2181-4c4a-88c8-298bd6d626a0	2	10	f	\N	\N
cac15dc7-68b1-4a5a-81ba-b29b2977e4b3	\N	auth-spnego	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	83320266-2181-4c4a-88c8-298bd6d626a0	3	20	f	\N	\N
327f276d-b949-4751-8077-66950a772efe	\N	identity-provider-redirector	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	83320266-2181-4c4a-88c8-298bd6d626a0	2	25	f	\N	\N
eb4eafa5-d7e7-42f8-810d-f06201429dcf	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	83320266-2181-4c4a-88c8-298bd6d626a0	2	30	t	b7a19fa3-92bf-4105-8668-c160d5554d8c	\N
e13c55e0-a4fd-4b64-bb39-21fe76c2540c	\N	auth-username-password-form	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	b7a19fa3-92bf-4105-8668-c160d5554d8c	0	10	f	\N	\N
4dd63bac-93c5-4b42-8f2b-700b7a4dec80	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	b7a19fa3-92bf-4105-8668-c160d5554d8c	1	20	t	014d2ce5-4527-4e09-9ceb-6bd3f8a50904	\N
55cc5033-e37f-4b84-9dd2-c4a8d2080c90	\N	conditional-user-configured	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	014d2ce5-4527-4e09-9ceb-6bd3f8a50904	0	10	f	\N	\N
196f07c3-3b28-4ca0-9736-c036f410d8ab	\N	auth-otp-form	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	014d2ce5-4527-4e09-9ceb-6bd3f8a50904	0	20	f	\N	\N
614d7afb-eb26-4761-833b-4069e20ee959	\N	direct-grant-validate-username	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9ebf0a60-e664-4166-b524-7c9481b68c99	0	10	f	\N	\N
b88b4df8-8624-46fa-ad11-32b0f7f1263b	\N	direct-grant-validate-password	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9ebf0a60-e664-4166-b524-7c9481b68c99	0	20	f	\N	\N
01d6280e-18f1-49ab-9fec-178ca64589d3	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9ebf0a60-e664-4166-b524-7c9481b68c99	1	30	t	12be2c51-f868-4740-910e-611b795cddc4	\N
766fd105-5869-4eba-8625-27727ed3c753	\N	conditional-user-configured	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	12be2c51-f868-4740-910e-611b795cddc4	0	10	f	\N	\N
dee39c02-3c1f-4851-9847-888173433791	\N	direct-grant-validate-otp	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	12be2c51-f868-4740-910e-611b795cddc4	0	20	f	\N	\N
55c579b4-bce0-43d3-a9de-9807ecf97a3a	\N	registration-page-form	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	531a2fbf-5398-4464-bb91-6c2bcd002df4	0	10	t	76335304-81a3-4d96-9684-9bb1dd52a31d	\N
7c3cf64e-be37-4a2a-badc-e3aff3cb92f0	\N	registration-user-creation	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	76335304-81a3-4d96-9684-9bb1dd52a31d	0	20	f	\N	\N
2f0d67e7-e362-48de-bc43-6fdd0f1fac95	\N	registration-profile-action	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	76335304-81a3-4d96-9684-9bb1dd52a31d	0	40	f	\N	\N
2ca9eb44-ed8a-41cb-8741-df6ad0ba7b39	\N	registration-password-action	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	76335304-81a3-4d96-9684-9bb1dd52a31d	0	50	f	\N	\N
0de05a6c-3dea-4406-9f04-6bbbb500137e	\N	registration-recaptcha-action	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	76335304-81a3-4d96-9684-9bb1dd52a31d	3	60	f	\N	\N
0a04d79a-21b1-4644-8e6a-2e3330c59e31	\N	reset-credentials-choose-user	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	cb312b43-595f-40d9-8941-6a5678338e45	0	10	f	\N	\N
7c3e5b29-5948-4215-ab59-8b6f74dd3428	\N	reset-credential-email	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	cb312b43-595f-40d9-8941-6a5678338e45	0	20	f	\N	\N
086da4a8-1f29-4bc8-a2ab-b8e95fdda7e4	\N	reset-password	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	cb312b43-595f-40d9-8941-6a5678338e45	0	30	f	\N	\N
65ceb856-9a36-4590-b684-d3194a66807b	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	cb312b43-595f-40d9-8941-6a5678338e45	1	40	t	792b23ea-a1f2-40a3-bea2-2af45ff4d29c	\N
0ffb10dc-27e8-43d7-9d3e-f39ec05efab0	\N	conditional-user-configured	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	792b23ea-a1f2-40a3-bea2-2af45ff4d29c	0	10	f	\N	\N
50d8b9a4-315c-423b-89a5-6f0896d67f2a	\N	reset-otp	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	792b23ea-a1f2-40a3-bea2-2af45ff4d29c	0	20	f	\N	\N
8d4b41b1-b342-4d5e-adee-f30e066e5657	\N	client-secret	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	d2076d70-5088-4060-bbf3-b154fc84d8e1	2	10	f	\N	\N
a26ee5f4-e1a4-453e-aed7-9b56143ff813	\N	client-jwt	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	d2076d70-5088-4060-bbf3-b154fc84d8e1	2	20	f	\N	\N
3f3e8096-647c-4210-9cfb-fea96a5cf073	\N	client-secret-jwt	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	d2076d70-5088-4060-bbf3-b154fc84d8e1	2	30	f	\N	\N
091656ce-3412-4579-912a-de9d31c7ec93	\N	client-x509	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	d2076d70-5088-4060-bbf3-b154fc84d8e1	2	40	f	\N	\N
de9608d1-4886-4edd-8071-43706aa11609	\N	idp-review-profile	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	65727be3-e5ff-45fe-908c-96e64cf001bf	0	10	f	\N	45afb761-10d2-4bec-96ec-a3514d0b4ebf
36993418-dc8b-4eab-8cbf-ed9668ce7c09	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	65727be3-e5ff-45fe-908c-96e64cf001bf	0	20	t	2a11f949-36aa-495a-9e8b-cdbcbec268d4	\N
16bdc71c-5590-4705-a93e-3afee4b576a2	\N	idp-create-user-if-unique	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	2a11f949-36aa-495a-9e8b-cdbcbec268d4	2	10	f	\N	448647a5-7b61-41cb-9d86-748b3584d83f
43be1bd9-06cd-405b-ad8f-08856a551f21	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	2a11f949-36aa-495a-9e8b-cdbcbec268d4	2	20	t	940f1ba7-5a03-42af-a8aa-e3576b59b1a1	\N
06ebd242-2e9e-439d-a19e-456646f9b2c8	\N	idp-confirm-link	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	940f1ba7-5a03-42af-a8aa-e3576b59b1a1	0	10	f	\N	\N
00b1d765-03a3-4332-8261-dd2f2b756b63	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	940f1ba7-5a03-42af-a8aa-e3576b59b1a1	0	20	t	ca2b8976-f452-4f55-b297-418ef2e760fc	\N
f48b69c2-6800-4367-8e22-a764ab61062e	\N	idp-email-verification	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	ca2b8976-f452-4f55-b297-418ef2e760fc	2	10	f	\N	\N
643477ab-4a6a-4520-85df-3268cc5acd3b	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	ca2b8976-f452-4f55-b297-418ef2e760fc	2	20	t	9f34d7d8-5ead-4549-ad68-50e0cea86727	\N
003a71c0-2685-43dd-863c-af1c914fa787	\N	idp-username-password-form	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9f34d7d8-5ead-4549-ad68-50e0cea86727	0	10	f	\N	\N
6c0737b8-c17f-4896-a0ef-946b89f85239	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9f34d7d8-5ead-4549-ad68-50e0cea86727	1	20	t	358c8e38-9be9-4aed-9045-509d30a7479a	\N
fea9aab4-fc34-4718-a95c-aedbbd0865c9	\N	conditional-user-configured	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	358c8e38-9be9-4aed-9045-509d30a7479a	0	10	f	\N	\N
f35d4707-cdea-404c-9a65-857e242a7bf0	\N	auth-otp-form	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	358c8e38-9be9-4aed-9045-509d30a7479a	0	20	f	\N	\N
b2764886-04b9-42ae-8972-a4b53e019e15	\N	http-basic-authenticator	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9a64348b-0391-4a90-9970-283e7a8ce50d	0	10	f	\N	\N
72aa995e-93d2-48ed-af14-13f6519e7760	\N	docker-http-basic-authenticator	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	af873b81-5524-40e1-a21c-7e2627ef2f38	0	10	f	\N	\N
26f5046f-ec58-41d9-b5f6-00eb97a71ae1	\N	no-cookie-redirect	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	54e2253f-ad4e-451e-aa57-7fb0277907af	0	10	f	\N	\N
4e80b7da-16f9-48b2-8211-9d4a6b62ba21	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	54e2253f-ad4e-451e-aa57-7fb0277907af	0	20	t	9088fd50-3bbe-4da6-afed-2a85893c8173	\N
fe9e7c23-99f5-44ce-ad10-e4e2d327c8de	\N	basic-auth	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9088fd50-3bbe-4da6-afed-2a85893c8173	0	10	f	\N	\N
8e5db4b0-c816-4cab-8948-416e30122f24	\N	basic-auth-otp	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9088fd50-3bbe-4da6-afed-2a85893c8173	3	20	f	\N	\N
6877f54e-481a-47f9-82d8-3d7f5ec95c75	\N	auth-spnego	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9088fd50-3bbe-4da6-afed-2a85893c8173	3	30	f	\N	\N
a383e0c6-f233-4f44-8d2f-3ef8af73a117	\N	idp-email-verification	basic	3aeed46e-aa05-42dc-b15c-5380458d6cb2	2	10	f	\N	\N
29e90274-fe9d-48d2-972a-4c87bda349ae	\N	\N	basic	3aeed46e-aa05-42dc-b15c-5380458d6cb2	2	20	t	c5e8fe68-46d8-4a0d-8f00-3bd0719599f2	\N
206ea343-6557-406c-b3f5-c5d71e8d74e3	\N	basic-auth	basic	c5c68a99-5897-45d0-8f6c-df49663e64ce	0	10	f	\N	\N
17d58c59-3381-4e3f-9f97-4fc216273b92	\N	basic-auth-otp	basic	c5c68a99-5897-45d0-8f6c-df49663e64ce	3	20	f	\N	\N
d9afab39-4a5e-4344-8595-52b5fe74806e	\N	auth-spnego	basic	c5c68a99-5897-45d0-8f6c-df49663e64ce	3	30	f	\N	\N
0d8f3bf4-4e8e-4eb5-81c7-d715722cf720	\N	conditional-user-configured	basic	b4f50a3d-f4f2-41da-8cf0-e21dcb5b7d34	0	10	f	\N	\N
9ca12154-45d0-4631-9a2e-cd513b5156cb	\N	auth-otp-form	basic	b4f50a3d-f4f2-41da-8cf0-e21dcb5b7d34	0	20	f	\N	\N
9e2e3856-cc92-46dc-a7b0-e1c44faff36c	\N	conditional-user-configured	basic	478a3661-9600-4ad5-accf-e193d3030b78	0	10	f	\N	\N
0e1ea7d2-ed99-4dbd-b0ac-ea2ed6c7fe15	\N	direct-grant-validate-otp	basic	478a3661-9600-4ad5-accf-e193d3030b78	0	20	f	\N	\N
c5dad48e-b710-48ba-abb9-edde2d13b0f4	\N	conditional-user-configured	basic	d5adb5fc-2948-449c-a869-382af699c937	0	10	f	\N	\N
b2f553a5-3ffc-4e31-af3d-1620626108f8	\N	auth-otp-form	basic	d5adb5fc-2948-449c-a869-382af699c937	0	20	f	\N	\N
7a1033a3-fe56-42a1-b719-43548355f748	\N	idp-confirm-link	basic	cf7b043d-bf4f-4990-bb3b-70fca687f061	0	10	f	\N	\N
9f63159f-ed11-4ee0-8804-eb67ec2d1e89	\N	\N	basic	cf7b043d-bf4f-4990-bb3b-70fca687f061	0	20	t	3aeed46e-aa05-42dc-b15c-5380458d6cb2	\N
d33eb4d1-95c2-41db-89d5-e3245323b767	\N	conditional-user-configured	basic	72fb337d-9e48-45f0-bd55-6d145971ed98	0	10	f	\N	\N
3a38eca4-d16d-4fa9-82af-bb3458b374a4	\N	reset-otp	basic	72fb337d-9e48-45f0-bd55-6d145971ed98	0	20	f	\N	\N
924e5799-8b36-4cdf-b49b-6dabed063e37	\N	idp-create-user-if-unique	basic	c900008e-438d-481d-833d-804848778e97	2	10	f	\N	157ab46e-0d7a-43dc-b31f-1a16648ce22d
6761d102-dafc-4e80-8dff-997c0c855fb3	\N	\N	basic	c900008e-438d-481d-833d-804848778e97	2	20	t	cf7b043d-bf4f-4990-bb3b-70fca687f061	\N
e183605d-ae27-4324-bb05-90b22e38b01f	\N	idp-username-password-form	basic	c5e8fe68-46d8-4a0d-8f00-3bd0719599f2	0	10	f	\N	\N
f187c6ae-e2d8-43c6-bcf4-d5198dd9099c	\N	\N	basic	c5e8fe68-46d8-4a0d-8f00-3bd0719599f2	1	20	t	d5adb5fc-2948-449c-a869-382af699c937	\N
521fe2d3-cdb7-4f8e-8484-a57d84ef2877	\N	auth-cookie	basic	542f8f52-344a-4bc8-b2d3-76f922244b04	2	10	f	\N	\N
dc404f69-4686-4a34-abf3-59e9e86a036a	\N	auth-spnego	basic	542f8f52-344a-4bc8-b2d3-76f922244b04	3	20	f	\N	\N
cfaaea62-916e-4788-9ecd-ca38b927b03d	\N	identity-provider-redirector	basic	542f8f52-344a-4bc8-b2d3-76f922244b04	2	25	f	\N	\N
fecbf0ba-eb48-4960-ad9a-4de5e683f61c	\N	\N	basic	542f8f52-344a-4bc8-b2d3-76f922244b04	2	30	t	717344e4-7114-4a38-bdc8-9632accad6bb	\N
c6c0f879-8015-47f7-96d0-592532276e86	\N	client-secret	basic	b6de8bd8-3451-43a7-8294-715a718e93e7	2	10	f	\N	\N
e69f1871-df74-46d2-8fc8-b1069b1ecad6	\N	client-jwt	basic	b6de8bd8-3451-43a7-8294-715a718e93e7	2	20	f	\N	\N
bb409fe9-3ffd-4a97-a5c6-85b8022446e3	\N	client-secret-jwt	basic	b6de8bd8-3451-43a7-8294-715a718e93e7	2	30	f	\N	\N
b4cd0b27-a8a4-489b-b25f-30ff44d63cfc	\N	client-x509	basic	b6de8bd8-3451-43a7-8294-715a718e93e7	2	40	f	\N	\N
971447c0-98c6-4ea6-b3cb-635ca1e89ff8	\N	direct-grant-validate-username	basic	777547c2-1658-44fb-9683-dc0fef26f23d	0	10	f	\N	\N
8307c452-071d-4681-a476-1f1992d4e963	\N	direct-grant-validate-password	basic	777547c2-1658-44fb-9683-dc0fef26f23d	0	20	f	\N	\N
8f427f51-d45e-48bb-997c-f1ec34341504	\N	\N	basic	777547c2-1658-44fb-9683-dc0fef26f23d	1	30	t	478a3661-9600-4ad5-accf-e193d3030b78	\N
322111d9-7047-4402-8702-ba7d984fc98b	\N	docker-http-basic-authenticator	basic	439ec72f-374c-42f6-b72c-69547941a1d1	0	10	f	\N	\N
810d9162-7860-47fc-b120-e20ce59d1615	\N	idp-review-profile	basic	0a204b14-29e5-4bc6-a208-6684154eccb6	0	10	f	\N	43d4932c-d10c-4e39-9c5e-17a9035d6628
fd3702fe-ae5b-4c79-b405-b830215b6ff2	\N	\N	basic	0a204b14-29e5-4bc6-a208-6684154eccb6	0	20	t	c900008e-438d-481d-833d-804848778e97	\N
06ea808e-b51f-4307-9d39-02bf985c0612	\N	auth-username-password-form	basic	717344e4-7114-4a38-bdc8-9632accad6bb	0	10	f	\N	\N
b4c63b4e-31da-4dca-8140-653ccd802a12	\N	\N	basic	717344e4-7114-4a38-bdc8-9632accad6bb	1	20	t	b4f50a3d-f4f2-41da-8cf0-e21dcb5b7d34	\N
7dfeceb6-e7be-44d7-82b4-cda69c6d11f3	\N	no-cookie-redirect	basic	7c04bb52-40c5-497d-842b-1192d6aafe93	0	10	f	\N	\N
6c35a9bb-4071-47e1-aa27-07e1f1432ff2	\N	\N	basic	7c04bb52-40c5-497d-842b-1192d6aafe93	0	20	t	c5c68a99-5897-45d0-8f6c-df49663e64ce	\N
7240f136-f81c-488d-a54c-d89c5bd8d03f	\N	registration-page-form	basic	798f2127-fc5e-4bf3-845e-682572ee070a	0	10	t	02b604e0-c2f1-4d1f-8834-1c883315effe	\N
be290b1a-4c07-4c28-a671-83e6866d71b1	\N	registration-user-creation	basic	02b604e0-c2f1-4d1f-8834-1c883315effe	0	20	f	\N	\N
e2f74aec-d7f2-43da-bd51-1977ec8d3904	\N	registration-profile-action	basic	02b604e0-c2f1-4d1f-8834-1c883315effe	0	40	f	\N	\N
47c1a755-b5fc-4fbc-b7ea-1079eb277554	\N	registration-password-action	basic	02b604e0-c2f1-4d1f-8834-1c883315effe	0	50	f	\N	\N
49cf0817-6b3a-4383-a2d1-5f8692a45355	\N	registration-recaptcha-action	basic	02b604e0-c2f1-4d1f-8834-1c883315effe	3	60	f	\N	\N
1544b9dd-419e-46a1-b4c7-1618e4bc99ec	\N	reset-credentials-choose-user	basic	75719538-77a3-416c-a025-50849f6024be	0	10	f	\N	\N
e802cc2f-b09e-4237-bdfa-5e4c1f484f27	\N	reset-credential-email	basic	75719538-77a3-416c-a025-50849f6024be	0	20	f	\N	\N
1f10fefa-2197-4348-9c90-48b28265b04b	\N	reset-password	basic	75719538-77a3-416c-a025-50849f6024be	0	30	f	\N	\N
366782c3-42a5-4a13-8623-5a1facbea5bd	\N	\N	basic	75719538-77a3-416c-a025-50849f6024be	1	40	t	72fb337d-9e48-45f0-bd55-6d145971ed98	\N
0399790d-1127-4041-ab04-3a84bf5f866a	\N	http-basic-authenticator	basic	13ccb1b7-e769-4ca2-aa88-099eb314368f	0	10	f	\N	\N
\.


--
-- Data for Name: authentication_flow; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authentication_flow (id, alias, description, realm_id, provider_id, top_level, built_in) FROM stdin;
83320266-2181-4c4a-88c8-298bd6d626a0	browser	browser based authentication	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	t	t
b7a19fa3-92bf-4105-8668-c160d5554d8c	forms	Username, password, otp and other auth forms.	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
014d2ce5-4527-4e09-9ceb-6bd3f8a50904	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
9ebf0a60-e664-4166-b524-7c9481b68c99	direct grant	OpenID Connect Resource Owner Grant	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	t	t
12be2c51-f868-4740-910e-611b795cddc4	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
531a2fbf-5398-4464-bb91-6c2bcd002df4	registration	registration flow	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	t	t
76335304-81a3-4d96-9684-9bb1dd52a31d	registration form	registration form	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	form-flow	f	t
cb312b43-595f-40d9-8941-6a5678338e45	reset credentials	Reset credentials for a user if they forgot their password or something	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	t	t
792b23ea-a1f2-40a3-bea2-2af45ff4d29c	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
d2076d70-5088-4060-bbf3-b154fc84d8e1	clients	Base authentication for clients	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	client-flow	t	t
65727be3-e5ff-45fe-908c-96e64cf001bf	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	t	t
2a11f949-36aa-495a-9e8b-cdbcbec268d4	User creation or linking	Flow for the existing/non-existing user alternatives	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
940f1ba7-5a03-42af-a8aa-e3576b59b1a1	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
ca2b8976-f452-4f55-b297-418ef2e760fc	Account verification options	Method with which to verity the existing account	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
9f34d7d8-5ead-4549-ad68-50e0cea86727	Verify Existing Account by Re-authentication	Reauthentication of existing account	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
358c8e38-9be9-4aed-9045-509d30a7479a	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
9a64348b-0391-4a90-9970-283e7a8ce50d	saml ecp	SAML ECP Profile Authentication Flow	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	t	t
af873b81-5524-40e1-a21c-7e2627ef2f38	docker auth	Used by Docker clients to authenticate against the IDP	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	t	t
54e2253f-ad4e-451e-aa57-7fb0277907af	http challenge	An authentication flow based on challenge-response HTTP Authentication Schemes	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	t	t
9088fd50-3bbe-4da6-afed-2a85893c8173	Authentication Options	Authentication options.	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	basic-flow	f	t
3aeed46e-aa05-42dc-b15c-5380458d6cb2	Account verification options	Method with which to verity the existing account	basic	basic-flow	f	t
c5c68a99-5897-45d0-8f6c-df49663e64ce	Authentication Options	Authentication options.	basic	basic-flow	f	t
b4f50a3d-f4f2-41da-8cf0-e21dcb5b7d34	Browser - Conditional OTP	Flow to determine if the OTP is required for the authentication	basic	basic-flow	f	t
478a3661-9600-4ad5-accf-e193d3030b78	Direct Grant - Conditional OTP	Flow to determine if the OTP is required for the authentication	basic	basic-flow	f	t
d5adb5fc-2948-449c-a869-382af699c937	First broker login - Conditional OTP	Flow to determine if the OTP is required for the authentication	basic	basic-flow	f	t
cf7b043d-bf4f-4990-bb3b-70fca687f061	Handle Existing Account	Handle what to do if there is existing account with same email/username like authenticated identity provider	basic	basic-flow	f	t
72fb337d-9e48-45f0-bd55-6d145971ed98	Reset - Conditional OTP	Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.	basic	basic-flow	f	t
c900008e-438d-481d-833d-804848778e97	User creation or linking	Flow for the existing/non-existing user alternatives	basic	basic-flow	f	t
c5e8fe68-46d8-4a0d-8f00-3bd0719599f2	Verify Existing Account by Re-authentication	Reauthentication of existing account	basic	basic-flow	f	t
542f8f52-344a-4bc8-b2d3-76f922244b04	browser	browser based authentication	basic	basic-flow	t	t
b6de8bd8-3451-43a7-8294-715a718e93e7	clients	Base authentication for clients	basic	client-flow	t	t
777547c2-1658-44fb-9683-dc0fef26f23d	direct grant	OpenID Connect Resource Owner Grant	basic	basic-flow	t	t
439ec72f-374c-42f6-b72c-69547941a1d1	docker auth	Used by Docker clients to authenticate against the IDP	basic	basic-flow	t	t
0a204b14-29e5-4bc6-a208-6684154eccb6	first broker login	Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account	basic	basic-flow	t	t
717344e4-7114-4a38-bdc8-9632accad6bb	forms	Username, password, otp and other auth forms.	basic	basic-flow	f	t
7c04bb52-40c5-497d-842b-1192d6aafe93	http challenge	An authentication flow based on challenge-response HTTP Authentication Schemes	basic	basic-flow	t	t
798f2127-fc5e-4bf3-845e-682572ee070a	registration	registration flow	basic	basic-flow	t	t
02b604e0-c2f1-4d1f-8834-1c883315effe	registration form	registration form	basic	form-flow	f	t
75719538-77a3-416c-a025-50849f6024be	reset credentials	Reset credentials for a user if they forgot their password or something	basic	basic-flow	t	t
13ccb1b7-e769-4ca2-aa88-099eb314368f	saml ecp	SAML ECP Profile Authentication Flow	basic	basic-flow	t	t
\.


--
-- Data for Name: authenticator_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config (id, alias, realm_id) FROM stdin;
45afb761-10d2-4bec-96ec-a3514d0b4ebf	review profile config	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8
448647a5-7b61-41cb-9d86-748b3584d83f	create unique user config	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8
157ab46e-0d7a-43dc-b31f-1a16648ce22d	create unique user config	basic
43d4932c-d10c-4e39-9c5e-17a9035d6628	review profile config	basic
\.


--
-- Data for Name: authenticator_config_entry; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.authenticator_config_entry (authenticator_id, value, name) FROM stdin;
45afb761-10d2-4bec-96ec-a3514d0b4ebf	missing	update.profile.on.first.login
448647a5-7b61-41cb-9d86-748b3584d83f	false	require.password.update.after.registration
157ab46e-0d7a-43dc-b31f-1a16648ce22d	false	require.password.update.after.registration
43d4932c-d10c-4e39-9c5e-17a9035d6628	missing	update.profile.on.first.login
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
1e263c90-0f4e-4193-98b8-af22e6e955ff	t	f	master-realm	0	f	\N	\N	t	\N	f	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N	0	f	f	master Realm	f	client-secret	\N	\N	\N	t	f	f	f
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	t	f	account	0	t	\N	/realms/master/account/	f	\N	f	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
8476c9a0-969c-4a13-b048-ac0c5820a8ca	t	f	account-console	0	t	\N	/realms/master/account/	f	\N	f	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
b6223f8a-91f2-4e6c-aac7-30866b0dd555	t	f	broker	0	f	\N	\N	t	\N	f	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
a64aac00-ec52-416b-b469-4b886bd85146	t	f	security-admin-console	0	t	\N	/admin/master/console/	f	\N	f	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
c6e59f8d-3462-426c-a499-d3a9fe0159f1	t	f	admin-cli	0	t	\N	\N	f	\N	f	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
5f0ba563-6817-4d84-836f-19ccf3c423d7	t	f	basic-realm	0	f	\N	\N	t	\N	f	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N	0	f	f	basic Realm	f	client-secret	\N	\N	\N	t	f	f	f
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	t	f	account	0	t	\N	/realms/basic/account/	f	\N	f	basic	openid-connect	0	f	f	${client_account}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
24a446dc-d398-4ddd-a9b6-06fe1c94d899	t	f	account-console	0	t	\N	/realms/basic/account/	f	\N	f	basic	openid-connect	0	f	f	${client_account-console}	f	client-secret	${authBaseUrl}	\N	\N	t	f	f	f
69e57cc9-dc33-46c9-b969-6a9fc10664c7	t	f	admin-cli	0	t	\N	\N	f	\N	f	basic	openid-connect	0	f	f	${client_admin-cli}	f	client-secret	\N	\N	\N	f	f	t	f
ad0f5436-32f6-49d6-9765-7176c0be08a5	t	t	curl	0	t	\N	\N	f	\N	f	basic	openid-connect	-1	f	f	\N	f	client-secret	\N	\N	\N	t	f	t	f
f3932fd4-dc79-4a13-bf09-24d8c2884190	t	t	backend	0	f	16c3384b-725d-410d-8107-df3319165f70	\N	f	\N	f	basic	openid-connect	-1	f	f	\N	f	client-secret	\N	\N	\N	f	f	f	f
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	t	t	app-react	0	t	\N	\N	f	https://nodejs-gui-nm-demo.apps.ocp001.rhlab.ch	f	basic	openid-connect	-1	f	f	\N	f	client-secret	https://nodejs-gui-nm-demo.apps.ocp001.rhlab.ch	\N	\N	t	f	t	f
5e585604-c9c6-4335-a301-8867c079412b	t	f	broker	0	f	\N	\N	t	\N	f	basic	openid-connect	0	f	f	${client_broker}	f	client-secret	\N	\N	\N	t	f	f	f
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	f	realm-management	0	f	\N	\N	t	\N	f	basic	openid-connect	0	f	f	${client_realm-management}	f	client-secret	\N	\N	\N	t	f	f	f
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	t	f	security-admin-console	0	t	\N	/admin/basic/console/	f	\N	f	basic	openid-connect	0	f	f	${client_security-admin-console}	f	client-secret	${authAdminUrl}	\N	\N	t	f	f	f
\.


--
-- Data for Name: client_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_attributes (client_id, value, name) FROM stdin;
8476c9a0-969c-4a13-b048-ac0c5820a8ca	S256	pkce.code.challenge.method
a64aac00-ec52-416b-b469-4b886bd85146	S256	pkce.code.challenge.method
24a446dc-d398-4ddd-a9b6-06fe1c94d899	S256	pkce.code.challenge.method
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	true	backchannel.logout.session.required
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	false	backchannel.logout.revoke.offline.tokens
f3932fd4-dc79-4a13-bf09-24d8c2884190	true	backchannel.logout.session.required
f3932fd4-dc79-4a13-bf09-24d8c2884190	false	backchannel.logout.revoke.offline.tokens
ad0f5436-32f6-49d6-9765-7176c0be08a5	true	backchannel.logout.session.required
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	backchannel.logout.revoke.offline.tokens
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	S256	pkce.code.challenge.method
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.artifact.binding
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.server.signature
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.server.signature.keyinfo.ext
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.assertion.signature
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.client.signature
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.encrypt
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.authnstatement
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.onetimeuse.condition
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml_force_name_id_format
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.allow.ecp.flow
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.multivalued.roles
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	saml.force.post.binding
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	exclude.session.state.from.auth.response
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	oauth2.device.authorization.grant.enabled
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	oidc.ciba.grant.enabled
ad0f5436-32f6-49d6-9765-7176c0be08a5	true	use.refresh.tokens
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	id.token.as.detached.signature
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	tls.client.certificate.bound.access.tokens
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	require.pushed.authorization.requests
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	client_credentials.use_refresh_token
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	token.response.type.bearer.lower-case
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	display.on.consent.screen
ad0f5436-32f6-49d6-9765-7176c0be08a5	false	frontchannel.logout.session.required
ad0f5436-32f6-49d6-9765-7176c0be08a5	{}	acr.loa.map
ad0f5436-32f6-49d6-9765-7176c0be08a5	1693674249	client.secret.creation.time
f3932fd4-dc79-4a13-bf09-24d8c2884190	1693676098	client.secret.creation.time
\.


--
-- Data for Name: client_auth_flow_bindings; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_auth_flow_bindings (client_id, flow_id, binding_name) FROM stdin;
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
28ee8c5f-84a4-4e7d-9297-d4add6b73677	offline_access	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	OpenID Connect built-in scope: offline_access	openid-connect
40de88dd-7078-4c95-a08c-9214d8f9a23c	role_list	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	SAML role list	saml
28c0d792-3eeb-4a58-a5c5-66de4535a38e	profile	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	OpenID Connect built-in scope: profile	openid-connect
9f8c47c5-f5bb-43d9-bf7e-2185b334f551	email	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	OpenID Connect built-in scope: email	openid-connect
e6ce5c35-1738-4124-afbb-eb1ec1e544ad	address	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	OpenID Connect built-in scope: address	openid-connect
7c0eba15-b014-43f7-8743-8a5032630f1a	phone	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	OpenID Connect built-in scope: phone	openid-connect
e4b7971f-0cd3-4b1c-a9bc-68121572ea49	roles	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	OpenID Connect scope for add user roles to the access token	openid-connect
f38fca92-1b44-47f8-8103-137ea6302594	web-origins	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	OpenID Connect scope for add allowed web origins to the access token	openid-connect
18bd7b10-8b86-4597-990d-33b31d619943	microprofile-jwt	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	Microprofile - JWT built-in scope	openid-connect
ee8f97bb-0a7f-46c0-9bff-372bbca1838a	acr	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
69c0f7aa-f1d4-4a70-b519-547340ba85bd	microprofile-jwt	basic	Microprofile - JWT built-in scope	openid-connect
051098c5-dc6f-4191-9f6d-4cdf558e16c1	acr	basic	OpenID Connect scope for add acr (authentication context class reference) to the token	openid-connect
ea3b39b3-57cc-4729-a294-0eff71f6a8ba	offline_access	basic	OpenID Connect built-in scope: offline_access	openid-connect
6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	phone	basic	OpenID Connect built-in scope: phone	openid-connect
3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	address	basic	OpenID Connect built-in scope: address	openid-connect
929e3ade-c24e-42ae-9068-ad821f76d46f	profile	basic	OpenID Connect built-in scope: profile	openid-connect
7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	email	basic	OpenID Connect built-in scope: email	openid-connect
15b98045-271a-4c46-bfc8-707aa9a167e6	role_list	basic	SAML role list	saml
4c0819e0-3b20-435d-b416-f10095fa07b3	web-origins	basic	OpenID Connect scope for add allowed web origins to the access token	openid-connect
65f1884c-e393-4986-a826-765b307dde23	roles	basic	OpenID Connect scope for add user roles to the access token	openid-connect
\.


--
-- Data for Name: client_scope_attributes; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_attributes (scope_id, value, name) FROM stdin;
28ee8c5f-84a4-4e7d-9297-d4add6b73677	true	display.on.consent.screen
28ee8c5f-84a4-4e7d-9297-d4add6b73677	${offlineAccessScopeConsentText}	consent.screen.text
40de88dd-7078-4c95-a08c-9214d8f9a23c	true	display.on.consent.screen
40de88dd-7078-4c95-a08c-9214d8f9a23c	${samlRoleListScopeConsentText}	consent.screen.text
28c0d792-3eeb-4a58-a5c5-66de4535a38e	true	display.on.consent.screen
28c0d792-3eeb-4a58-a5c5-66de4535a38e	${profileScopeConsentText}	consent.screen.text
28c0d792-3eeb-4a58-a5c5-66de4535a38e	true	include.in.token.scope
9f8c47c5-f5bb-43d9-bf7e-2185b334f551	true	display.on.consent.screen
9f8c47c5-f5bb-43d9-bf7e-2185b334f551	${emailScopeConsentText}	consent.screen.text
9f8c47c5-f5bb-43d9-bf7e-2185b334f551	true	include.in.token.scope
e6ce5c35-1738-4124-afbb-eb1ec1e544ad	true	display.on.consent.screen
e6ce5c35-1738-4124-afbb-eb1ec1e544ad	${addressScopeConsentText}	consent.screen.text
e6ce5c35-1738-4124-afbb-eb1ec1e544ad	true	include.in.token.scope
7c0eba15-b014-43f7-8743-8a5032630f1a	true	display.on.consent.screen
7c0eba15-b014-43f7-8743-8a5032630f1a	${phoneScopeConsentText}	consent.screen.text
7c0eba15-b014-43f7-8743-8a5032630f1a	true	include.in.token.scope
e4b7971f-0cd3-4b1c-a9bc-68121572ea49	true	display.on.consent.screen
e4b7971f-0cd3-4b1c-a9bc-68121572ea49	${rolesScopeConsentText}	consent.screen.text
e4b7971f-0cd3-4b1c-a9bc-68121572ea49	false	include.in.token.scope
f38fca92-1b44-47f8-8103-137ea6302594	false	display.on.consent.screen
f38fca92-1b44-47f8-8103-137ea6302594		consent.screen.text
f38fca92-1b44-47f8-8103-137ea6302594	false	include.in.token.scope
18bd7b10-8b86-4597-990d-33b31d619943	false	display.on.consent.screen
18bd7b10-8b86-4597-990d-33b31d619943	true	include.in.token.scope
ee8f97bb-0a7f-46c0-9bff-372bbca1838a	false	display.on.consent.screen
ee8f97bb-0a7f-46c0-9bff-372bbca1838a	false	include.in.token.scope
69c0f7aa-f1d4-4a70-b519-547340ba85bd	true	include.in.token.scope
69c0f7aa-f1d4-4a70-b519-547340ba85bd	false	display.on.consent.screen
051098c5-dc6f-4191-9f6d-4cdf558e16c1	false	include.in.token.scope
051098c5-dc6f-4191-9f6d-4cdf558e16c1	false	display.on.consent.screen
ea3b39b3-57cc-4729-a294-0eff71f6a8ba	${offlineAccessScopeConsentText}	consent.screen.text
ea3b39b3-57cc-4729-a294-0eff71f6a8ba	true	display.on.consent.screen
6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	true	include.in.token.scope
6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	true	display.on.consent.screen
6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	${phoneScopeConsentText}	consent.screen.text
3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	true	include.in.token.scope
3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	true	display.on.consent.screen
3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	${addressScopeConsentText}	consent.screen.text
929e3ade-c24e-42ae-9068-ad821f76d46f	true	include.in.token.scope
929e3ade-c24e-42ae-9068-ad821f76d46f	true	display.on.consent.screen
929e3ade-c24e-42ae-9068-ad821f76d46f	${profileScopeConsentText}	consent.screen.text
7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	true	include.in.token.scope
7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	true	display.on.consent.screen
7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	${emailScopeConsentText}	consent.screen.text
15b98045-271a-4c46-bfc8-707aa9a167e6	${samlRoleListScopeConsentText}	consent.screen.text
15b98045-271a-4c46-bfc8-707aa9a167e6	true	display.on.consent.screen
4c0819e0-3b20-435d-b416-f10095fa07b3	false	include.in.token.scope
4c0819e0-3b20-435d-b416-f10095fa07b3	false	display.on.consent.screen
4c0819e0-3b20-435d-b416-f10095fa07b3		consent.screen.text
65f1884c-e393-4986-a826-765b307dde23	false	include.in.token.scope
65f1884c-e393-4986-a826-765b307dde23	true	display.on.consent.screen
65f1884c-e393-4986-a826-765b307dde23	${rolesScopeConsentText}	consent.screen.text
\.


--
-- Data for Name: client_scope_client; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_client (client_id, scope_id, default_scope) FROM stdin;
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	28c0d792-3eeb-4a58-a5c5-66de4535a38e	t
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	e4b7971f-0cd3-4b1c-a9bc-68121572ea49	t
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	9f8c47c5-f5bb-43d9-bf7e-2185b334f551	t
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	ee8f97bb-0a7f-46c0-9bff-372bbca1838a	t
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	f38fca92-1b44-47f8-8103-137ea6302594	t
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	18bd7b10-8b86-4597-990d-33b31d619943	f
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	28ee8c5f-84a4-4e7d-9297-d4add6b73677	f
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	7c0eba15-b014-43f7-8743-8a5032630f1a	f
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	e6ce5c35-1738-4124-afbb-eb1ec1e544ad	f
8476c9a0-969c-4a13-b048-ac0c5820a8ca	28c0d792-3eeb-4a58-a5c5-66de4535a38e	t
8476c9a0-969c-4a13-b048-ac0c5820a8ca	e4b7971f-0cd3-4b1c-a9bc-68121572ea49	t
8476c9a0-969c-4a13-b048-ac0c5820a8ca	9f8c47c5-f5bb-43d9-bf7e-2185b334f551	t
8476c9a0-969c-4a13-b048-ac0c5820a8ca	ee8f97bb-0a7f-46c0-9bff-372bbca1838a	t
8476c9a0-969c-4a13-b048-ac0c5820a8ca	f38fca92-1b44-47f8-8103-137ea6302594	t
8476c9a0-969c-4a13-b048-ac0c5820a8ca	18bd7b10-8b86-4597-990d-33b31d619943	f
8476c9a0-969c-4a13-b048-ac0c5820a8ca	28ee8c5f-84a4-4e7d-9297-d4add6b73677	f
8476c9a0-969c-4a13-b048-ac0c5820a8ca	7c0eba15-b014-43f7-8743-8a5032630f1a	f
8476c9a0-969c-4a13-b048-ac0c5820a8ca	e6ce5c35-1738-4124-afbb-eb1ec1e544ad	f
c6e59f8d-3462-426c-a499-d3a9fe0159f1	28c0d792-3eeb-4a58-a5c5-66de4535a38e	t
c6e59f8d-3462-426c-a499-d3a9fe0159f1	e4b7971f-0cd3-4b1c-a9bc-68121572ea49	t
c6e59f8d-3462-426c-a499-d3a9fe0159f1	9f8c47c5-f5bb-43d9-bf7e-2185b334f551	t
c6e59f8d-3462-426c-a499-d3a9fe0159f1	ee8f97bb-0a7f-46c0-9bff-372bbca1838a	t
c6e59f8d-3462-426c-a499-d3a9fe0159f1	f38fca92-1b44-47f8-8103-137ea6302594	t
c6e59f8d-3462-426c-a499-d3a9fe0159f1	18bd7b10-8b86-4597-990d-33b31d619943	f
c6e59f8d-3462-426c-a499-d3a9fe0159f1	28ee8c5f-84a4-4e7d-9297-d4add6b73677	f
c6e59f8d-3462-426c-a499-d3a9fe0159f1	7c0eba15-b014-43f7-8743-8a5032630f1a	f
c6e59f8d-3462-426c-a499-d3a9fe0159f1	e6ce5c35-1738-4124-afbb-eb1ec1e544ad	f
b6223f8a-91f2-4e6c-aac7-30866b0dd555	28c0d792-3eeb-4a58-a5c5-66de4535a38e	t
b6223f8a-91f2-4e6c-aac7-30866b0dd555	e4b7971f-0cd3-4b1c-a9bc-68121572ea49	t
b6223f8a-91f2-4e6c-aac7-30866b0dd555	9f8c47c5-f5bb-43d9-bf7e-2185b334f551	t
b6223f8a-91f2-4e6c-aac7-30866b0dd555	ee8f97bb-0a7f-46c0-9bff-372bbca1838a	t
b6223f8a-91f2-4e6c-aac7-30866b0dd555	f38fca92-1b44-47f8-8103-137ea6302594	t
b6223f8a-91f2-4e6c-aac7-30866b0dd555	18bd7b10-8b86-4597-990d-33b31d619943	f
b6223f8a-91f2-4e6c-aac7-30866b0dd555	28ee8c5f-84a4-4e7d-9297-d4add6b73677	f
b6223f8a-91f2-4e6c-aac7-30866b0dd555	7c0eba15-b014-43f7-8743-8a5032630f1a	f
b6223f8a-91f2-4e6c-aac7-30866b0dd555	e6ce5c35-1738-4124-afbb-eb1ec1e544ad	f
1e263c90-0f4e-4193-98b8-af22e6e955ff	28c0d792-3eeb-4a58-a5c5-66de4535a38e	t
1e263c90-0f4e-4193-98b8-af22e6e955ff	e4b7971f-0cd3-4b1c-a9bc-68121572ea49	t
1e263c90-0f4e-4193-98b8-af22e6e955ff	9f8c47c5-f5bb-43d9-bf7e-2185b334f551	t
1e263c90-0f4e-4193-98b8-af22e6e955ff	ee8f97bb-0a7f-46c0-9bff-372bbca1838a	t
1e263c90-0f4e-4193-98b8-af22e6e955ff	f38fca92-1b44-47f8-8103-137ea6302594	t
1e263c90-0f4e-4193-98b8-af22e6e955ff	18bd7b10-8b86-4597-990d-33b31d619943	f
1e263c90-0f4e-4193-98b8-af22e6e955ff	28ee8c5f-84a4-4e7d-9297-d4add6b73677	f
1e263c90-0f4e-4193-98b8-af22e6e955ff	7c0eba15-b014-43f7-8743-8a5032630f1a	f
1e263c90-0f4e-4193-98b8-af22e6e955ff	e6ce5c35-1738-4124-afbb-eb1ec1e544ad	f
a64aac00-ec52-416b-b469-4b886bd85146	28c0d792-3eeb-4a58-a5c5-66de4535a38e	t
a64aac00-ec52-416b-b469-4b886bd85146	e4b7971f-0cd3-4b1c-a9bc-68121572ea49	t
a64aac00-ec52-416b-b469-4b886bd85146	9f8c47c5-f5bb-43d9-bf7e-2185b334f551	t
a64aac00-ec52-416b-b469-4b886bd85146	ee8f97bb-0a7f-46c0-9bff-372bbca1838a	t
a64aac00-ec52-416b-b469-4b886bd85146	f38fca92-1b44-47f8-8103-137ea6302594	t
a64aac00-ec52-416b-b469-4b886bd85146	18bd7b10-8b86-4597-990d-33b31d619943	f
a64aac00-ec52-416b-b469-4b886bd85146	28ee8c5f-84a4-4e7d-9297-d4add6b73677	f
a64aac00-ec52-416b-b469-4b886bd85146	7c0eba15-b014-43f7-8743-8a5032630f1a	f
a64aac00-ec52-416b-b469-4b886bd85146	e6ce5c35-1738-4124-afbb-eb1ec1e544ad	f
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	4c0819e0-3b20-435d-b416-f10095fa07b3	t
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	051098c5-dc6f-4191-9f6d-4cdf558e16c1	t
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	929e3ade-c24e-42ae-9068-ad821f76d46f	t
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	65f1884c-e393-4986-a826-765b307dde23	t
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	t
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	f
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	f
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	ea3b39b3-57cc-4729-a294-0eff71f6a8ba	f
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	69c0f7aa-f1d4-4a70-b519-547340ba85bd	f
24a446dc-d398-4ddd-a9b6-06fe1c94d899	4c0819e0-3b20-435d-b416-f10095fa07b3	t
24a446dc-d398-4ddd-a9b6-06fe1c94d899	051098c5-dc6f-4191-9f6d-4cdf558e16c1	t
24a446dc-d398-4ddd-a9b6-06fe1c94d899	929e3ade-c24e-42ae-9068-ad821f76d46f	t
24a446dc-d398-4ddd-a9b6-06fe1c94d899	65f1884c-e393-4986-a826-765b307dde23	t
24a446dc-d398-4ddd-a9b6-06fe1c94d899	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	t
24a446dc-d398-4ddd-a9b6-06fe1c94d899	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	f
24a446dc-d398-4ddd-a9b6-06fe1c94d899	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	f
24a446dc-d398-4ddd-a9b6-06fe1c94d899	ea3b39b3-57cc-4729-a294-0eff71f6a8ba	f
24a446dc-d398-4ddd-a9b6-06fe1c94d899	69c0f7aa-f1d4-4a70-b519-547340ba85bd	f
69e57cc9-dc33-46c9-b969-6a9fc10664c7	4c0819e0-3b20-435d-b416-f10095fa07b3	t
69e57cc9-dc33-46c9-b969-6a9fc10664c7	051098c5-dc6f-4191-9f6d-4cdf558e16c1	t
69e57cc9-dc33-46c9-b969-6a9fc10664c7	929e3ade-c24e-42ae-9068-ad821f76d46f	t
69e57cc9-dc33-46c9-b969-6a9fc10664c7	65f1884c-e393-4986-a826-765b307dde23	t
69e57cc9-dc33-46c9-b969-6a9fc10664c7	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	t
69e57cc9-dc33-46c9-b969-6a9fc10664c7	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	f
69e57cc9-dc33-46c9-b969-6a9fc10664c7	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	f
69e57cc9-dc33-46c9-b969-6a9fc10664c7	ea3b39b3-57cc-4729-a294-0eff71f6a8ba	f
69e57cc9-dc33-46c9-b969-6a9fc10664c7	69c0f7aa-f1d4-4a70-b519-547340ba85bd	f
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	4c0819e0-3b20-435d-b416-f10095fa07b3	t
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	051098c5-dc6f-4191-9f6d-4cdf558e16c1	t
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	929e3ade-c24e-42ae-9068-ad821f76d46f	t
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	65f1884c-e393-4986-a826-765b307dde23	t
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	t
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	f
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	f
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	ea3b39b3-57cc-4729-a294-0eff71f6a8ba	f
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	69c0f7aa-f1d4-4a70-b519-547340ba85bd	f
5e585604-c9c6-4335-a301-8867c079412b	4c0819e0-3b20-435d-b416-f10095fa07b3	t
5e585604-c9c6-4335-a301-8867c079412b	051098c5-dc6f-4191-9f6d-4cdf558e16c1	t
5e585604-c9c6-4335-a301-8867c079412b	929e3ade-c24e-42ae-9068-ad821f76d46f	t
5e585604-c9c6-4335-a301-8867c079412b	65f1884c-e393-4986-a826-765b307dde23	t
5e585604-c9c6-4335-a301-8867c079412b	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	t
5e585604-c9c6-4335-a301-8867c079412b	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	f
5e585604-c9c6-4335-a301-8867c079412b	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	f
5e585604-c9c6-4335-a301-8867c079412b	ea3b39b3-57cc-4729-a294-0eff71f6a8ba	f
5e585604-c9c6-4335-a301-8867c079412b	69c0f7aa-f1d4-4a70-b519-547340ba85bd	f
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	4c0819e0-3b20-435d-b416-f10095fa07b3	t
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	051098c5-dc6f-4191-9f6d-4cdf558e16c1	t
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	929e3ade-c24e-42ae-9068-ad821f76d46f	t
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	65f1884c-e393-4986-a826-765b307dde23	t
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	t
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	f
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	f
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	ea3b39b3-57cc-4729-a294-0eff71f6a8ba	f
9bae8a5f-36ba-428c-950c-cd2f6e41ba77	69c0f7aa-f1d4-4a70-b519-547340ba85bd	f
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	4c0819e0-3b20-435d-b416-f10095fa07b3	t
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	051098c5-dc6f-4191-9f6d-4cdf558e16c1	t
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	929e3ade-c24e-42ae-9068-ad821f76d46f	t
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	65f1884c-e393-4986-a826-765b307dde23	t
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	t
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	f
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	f
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	ea3b39b3-57cc-4729-a294-0eff71f6a8ba	f
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	69c0f7aa-f1d4-4a70-b519-547340ba85bd	f
\.


--
-- Data for Name: client_scope_role_mapping; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.client_scope_role_mapping (scope_id, role_id) FROM stdin;
28ee8c5f-84a4-4e7d-9297-d4add6b73677	90806870-9a51-4d74-97a2-851f5071af98
ea3b39b3-57cc-4729-a294-0eff71f6a8ba	dff5f889-fbc4-4572-822a-8fe406cb2ae3
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
5bfc3a0e-21bc-465e-a71e-27306e2535b7	Trusted Hosts	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	anonymous
65d0ad86-d562-4bbc-8f06-81df377c17a0	Consent Required	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	anonymous
2352c3ae-b3d0-4606-9c60-1b95c8239972	Full Scope Disabled	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	anonymous
1dd81e9c-b09a-4657-b295-cd35d221311a	Max Clients Limit	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	anonymous
6fa491f0-01e1-431a-9c80-9bcebcc32142	Allowed Protocol Mapper Types	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	anonymous
dbe6e929-d393-49ab-a708-5ca668f3e155	Allowed Client Scopes	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	anonymous
db3788e6-81f4-4c1b-884e-d53afe7da4c7	Allowed Protocol Mapper Types	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	authenticated
25ef49fe-0533-424c-8c55-891b340b45d3	Allowed Client Scopes	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	authenticated
943cfe20-4652-4373-be82-2a1d11ac0085	rsa-generated	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	rsa-generated	org.keycloak.keys.KeyProvider	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N
1bf9323f-1c77-4def-a242-9bd3d2a048e6	rsa-enc-generated	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	rsa-enc-generated	org.keycloak.keys.KeyProvider	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N
2dd96724-3802-48b8-a11c-d18edb034a25	hmac-generated	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	hmac-generated	org.keycloak.keys.KeyProvider	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N
32dd820d-d304-4267-ad38-07452c2abc8f	aes-generated	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	aes-generated	org.keycloak.keys.KeyProvider	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N
32fc3a76-46cc-4686-a711-19002fea3529	Max Clients Limit	basic	max-clients	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
4718f829-9d37-4a51-ad05-d631189752ad	Allowed Client Scopes	basic	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
5c53000f-ed66-43fd-b8a8-2f398e046a63	Full Scope Disabled	basic	scope	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	Allowed Protocol Mapper Types	basic	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	authenticated
06e0e782-9d3e-4585-a3ac-9f2b81019e5b	Allowed Protocol Mapper Types	basic	allowed-protocol-mappers	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
3cf9f200-5d19-4977-8415-3e0c3ce416b8	Allowed Client Scopes	basic	allowed-client-templates	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	authenticated
d6e88295-4857-494c-97be-91c20832185f	Consent Required	basic	consent-required	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
223716ad-cf83-47fb-9f99-3c390b4e27db	Trusted Hosts	basic	trusted-hosts	org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy	basic	anonymous
6488923a-b5a6-4846-b14d-427a346c8e49	rsa-enc-generated	basic	rsa-enc-generated	org.keycloak.keys.KeyProvider	basic	\N
f4c3b9eb-b839-49d7-bc13-e4c7bc484fb7	hmac-generated	basic	hmac-generated	org.keycloak.keys.KeyProvider	basic	\N
45f068ef-841f-4fef-9f79-d6a3238fbb06	rsa-generated	basic	rsa-generated	org.keycloak.keys.KeyProvider	basic	\N
a842bb3e-1e38-4902-8396-622fc67e9c53	aes-generated	basic	aes-generated	org.keycloak.keys.KeyProvider	basic	\N
\.


--
-- Data for Name: component_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.component_config (id, component_id, name, value) FROM stdin;
a3126ef6-8bda-4184-80ee-a0f85e3d439f	dbe6e929-d393-49ab-a708-5ca668f3e155	allow-default-scopes	true
fcdace20-248a-4d38-8ac4-ca92fa013da2	db3788e6-81f4-4c1b-884e-d53afe7da4c7	allowed-protocol-mapper-types	saml-user-attribute-mapper
22b2e81d-871c-4c6b-b6bf-b2f38daa9024	db3788e6-81f4-4c1b-884e-d53afe7da4c7	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
30dfb426-8bf3-4de4-9c12-fc30a843b360	db3788e6-81f4-4c1b-884e-d53afe7da4c7	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
65b1be5d-2fae-4b4c-a187-34b14979c4b3	db3788e6-81f4-4c1b-884e-d53afe7da4c7	allowed-protocol-mapper-types	saml-user-property-mapper
402518a4-57a7-4c68-a349-70c46eddbfba	db3788e6-81f4-4c1b-884e-d53afe7da4c7	allowed-protocol-mapper-types	saml-role-list-mapper
0d1d6303-d8ef-42b9-8a71-af12d45e333d	db3788e6-81f4-4c1b-884e-d53afe7da4c7	allowed-protocol-mapper-types	oidc-full-name-mapper
e55bcb40-5347-4f22-bb8f-1cfb5210df26	db3788e6-81f4-4c1b-884e-d53afe7da4c7	allowed-protocol-mapper-types	oidc-address-mapper
8ee0d771-d92c-4767-b54a-d079cc4dfcf8	db3788e6-81f4-4c1b-884e-d53afe7da4c7	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
a15bbb1b-9aed-4246-85b8-0f78bc2465e4	6fa491f0-01e1-431a-9c80-9bcebcc32142	allowed-protocol-mapper-types	saml-user-attribute-mapper
a965492f-cc7b-4e5a-9d5c-6a3998645374	6fa491f0-01e1-431a-9c80-9bcebcc32142	allowed-protocol-mapper-types	oidc-address-mapper
7332b4a5-0350-4dd2-b28c-e2b5f6d148cb	6fa491f0-01e1-431a-9c80-9bcebcc32142	allowed-protocol-mapper-types	saml-role-list-mapper
377cb5b7-9167-44e9-9b61-97af6ec3578b	6fa491f0-01e1-431a-9c80-9bcebcc32142	allowed-protocol-mapper-types	saml-user-property-mapper
e7b6077d-25cb-4d66-936d-1904b6477f56	6fa491f0-01e1-431a-9c80-9bcebcc32142	allowed-protocol-mapper-types	oidc-full-name-mapper
92b412d8-6713-4492-aadf-44d350915480	6fa491f0-01e1-431a-9c80-9bcebcc32142	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
687f4ece-3307-48da-aa9c-9b8fc4ac56b2	6fa491f0-01e1-431a-9c80-9bcebcc32142	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
b342b3b6-5d7f-42da-bdfa-b23c68d505c4	6fa491f0-01e1-431a-9c80-9bcebcc32142	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
b92bf347-e821-4bed-89ae-f523c02015c9	5bfc3a0e-21bc-465e-a71e-27306e2535b7	host-sending-registration-request-must-match	true
67542daf-f024-4c7c-ab87-49603136894a	5bfc3a0e-21bc-465e-a71e-27306e2535b7	client-uris-must-match	true
c836e8f9-34a1-4149-a4a7-aadfb702218d	1dd81e9c-b09a-4657-b295-cd35d221311a	max-clients	200
fd7283cc-4dd3-4312-8196-fc3fa84579ee	25ef49fe-0533-424c-8c55-891b340b45d3	allow-default-scopes	true
d973f7e6-cdd1-4d88-ac01-c8c2deb41233	32dd820d-d304-4267-ad38-07452c2abc8f	secret	S11-v4vQoLHY6xUL89mz-A
37558864-ec9a-4ca6-87d7-cf40a65e9b0e	32dd820d-d304-4267-ad38-07452c2abc8f	kid	04e79f31-f36e-4ed7-a41b-a7c6c1f76878
ef141bed-c19a-445b-b6f3-c1a770c9a822	32dd820d-d304-4267-ad38-07452c2abc8f	priority	100
167ffb76-c79c-48fd-a9a9-85b7831cdc85	943cfe20-4652-4373-be82-2a1d11ac0085	privateKey	MIIEogIBAAKCAQEAkH2DqBUzUIJSMIEnd6tRsm+EQnsavPoocoXHGYNpPLHxY0XKjkhHR39zqSfwftpzhRtzVjunvEj0dGzK/yoZDH8N0ti0uXLSuh1TAXZV9y7Z2E0xuWNH6M7TXCp6zBEPJ4kZmM5at9mXkmguCcM66H7y/WxmypSQmeq5OjhlmhjE7jp0qlJ1o6smfRGFm7HmzMHnr2w+nSOduLN4AKw0jB05oIl59uw/ADxwzgyahmdG7dmSsIt7OfPCEp6OhVv1SBOEjNpb37tkTdEWqB7MqZZPL7eTj6o3WFJBmaa1RMlLVmv62x63Lk9lNmuCl4sLUsYfcPhv3cT/Wp6QNrJKMwIDAQABAoIBAGn4M9PVYKIeQisivhBtTGiikwyy/qQ0j++WH7SdhVQnaVMWf30kk2pjli8shJx0mJ65yDgpXlaf5vFwTN0hQefBUyEdIEaWaOho01TSNjAoY0rZKqu9naKn9am12gPKSyQC0Awa47vM0PZmg8VTMuQLHykwFJ9koDzSQnDppdKCVv/3BiOMYKAvsRVlzuOA1vRVutZrkFBBEqsPffSIB2ocjbiceUp+S6LGraA5FP+H1ZgIOm3bSdlzPvXdtK5EdrXR9z8JHKsY7ILQS51qwWzBLT5Pn/JUBzwYQeZo3sl5vaiTtWFGAEQYeIVXuxwn7BQUD8hE+VcjDIIgxM/O1rkCgYEA0F/W0pYWQQM+tXT5Ijbxqu4BaHUAHgbS/XQi18WU1jo1/vozrK4gXIN/rKHhaEntQbhBwlObTcfg7B8fUwL9AfaNeQZ0/OhzicN/ptmnGXUCli6nOJwfdD9aDo9sJ9TmIRG5TlpCdIKXqz524m9mTlC3MtR+Efh1eboO5FnSF3UCgYEAsYPDcbREMZ6l96+meL6LoXLv3HuCwQr4jcDnApqpzL2F48pdhnlIRS9qmRyC8WHTBOgOadyEKlTKQSecCzpl9FWQAoS81o1eG7kHezS4x9419i7F+t5NNd/yCX4e+mWhu6YBFHQPSCPjE+lp9oU9FS/yiWpyGkvIeuZB4jfWTgcCgYByt1CdPuOhhxfO7kb5/yWs5LsBtugJn9gokPddsvjtt75iUXyBZJuMUxjHAZgGwixMMhSB12V4vMGnPLsSCGMh4YqhRlzBn3d8MJTmVo0YBsMVyzlkgQ8QAJCj03HHu/211vwdlrNfUUYOkKUCpDG+i9FPuoxteEu0aCoqrQhswQKBgCxmUJQ4CnZ+v/Rbsr+wqSwQm34CRooSPGj4Ps+f76iOHtcC3rGr1C+51GfHgdjuJuGrSS+hQE12N8BkL9t/F9EtNX/rw2/GnCtC9GQUo8MaCVUyDcLZp2Y6RUeqjAUFNpbAxrRe8xOQJlPspdxLJyQNghRs021QVyymOwRiAvAxAoGAO7dzw/tUQUGraAtsQqA1TJ8NXQsvYnl+0LFGZpkUXgsieZSMwCp4XgekAZBxhUxI0M5XlRaR2fCgfawhj/y/RAILV6mJGH4c3Ee0OKfaERp0whPQUU2EEAFbjw2seMx+3KbOjnIZV7EmiiJvQ/Sh+OjPKE30+gGNTys/0vlxdnQ=
f4be13bb-0f9b-4ab7-a338-e07696a9c699	943cfe20-4652-4373-be82-2a1d11ac0085	priority	100
ae4ae981-1dde-4d25-be36-052e4913ccf5	943cfe20-4652-4373-be82-2a1d11ac0085	keyUse	SIG
24c2700c-4dd2-4277-8388-a9983249c2cd	943cfe20-4652-4373-be82-2a1d11ac0085	certificate	MIICmzCCAYMCBgGKVrKDhTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMwOTAyMTYxOTE0WhcNMzMwOTAyMTYyMDU0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCQfYOoFTNQglIwgSd3q1Gyb4RCexq8+ihyhccZg2k8sfFjRcqOSEdHf3OpJ/B+2nOFG3NWO6e8SPR0bMr/KhkMfw3S2LS5ctK6HVMBdlX3LtnYTTG5Y0foztNcKnrMEQ8niRmYzlq32ZeSaC4JwzrofvL9bGbKlJCZ6rk6OGWaGMTuOnSqUnWjqyZ9EYWbsebMweevbD6dI524s3gArDSMHTmgiXn27D8APHDODJqGZ0bt2ZKwi3s588ISno6FW/VIE4SM2lvfu2RN0RaoHsyplk8vt5OPqjdYUkGZprVEyUtWa/rbHrcuT2U2a4KXiwtSxh9w+G/dxP9anpA2skozAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAHRMRwCLILR9VsD8C/3NOHUbYKHK3QRmVE4hxrGNH4zpOgA9UbharsJN3GMW7yrjdWVyctQ8uYhh2Q4+miK0NrI6p5FAkqVhSiE0RdynGqQlQf6kleBL18SRua4w3C9DRNThQuqmyh1GqTtMuanIj/7DRb7xZXmFAuX/dxMei346gJRWhgY3sLhG5Me+zAQy37IAnTKbv5+JuHYbTSpZR8XY5qY9HYNciHQ3VxTd0LPiUS+HHtmaq6QaDk1tr6WaEo5/Y7P9jS8ovKKTcG4Sb8FQ3yG/wWWktcKRrYrK2tykXU5PfbECt7Ur5CEJFZDabRVXC4IhhUd9uj37Cpvvpd8=
c453ab4c-23b9-4744-966a-e54547a52663	2dd96724-3802-48b8-a11c-d18edb034a25	priority	100
bc8832d6-2c8d-40c1-8910-05515b39a15a	2dd96724-3802-48b8-a11c-d18edb034a25	algorithm	HS256
537a9609-ba01-4dd1-adb1-f721b8800aa7	2dd96724-3802-48b8-a11c-d18edb034a25	kid	f7802153-9cdf-4f27-9367-e2760de57056
93d5a549-dfa4-4569-bad9-7eab7490d9aa	2dd96724-3802-48b8-a11c-d18edb034a25	secret	51JkTfNRHaf4lPzAtpn6DypCoxa1Nd77v7zsqXHGBIn5nmkgs5TQPfaIsXHF_uCMZ4RyWsalXhmTwWMA71t-fA
7c357185-85a8-44f7-89ae-ab8364f869fb	1bf9323f-1c77-4def-a242-9bd3d2a048e6	keyUse	ENC
5cc72bba-e306-4a3c-a260-d4aa4f954854	1bf9323f-1c77-4def-a242-9bd3d2a048e6	priority	100
3170b54c-6fb0-4429-b330-3b1c616018cd	1bf9323f-1c77-4def-a242-9bd3d2a048e6	privateKey	MIIEowIBAAKCAQEAkh4cIm7bMThPGBFl5QOqxbdKKXxFRGjnxrs/CfVdP9J9OzgMw4uT8cCgpw8+Ul71bBY9vi8FvgVdOzc3894iEtB14G7HJ5QIyuqkeFgE06e7EVCPY1dklJNRxuafPt98gFFlGuPThsc+bKDR5GpkOzVwe7QyIWBPlpK7sJI71+vQ41eewDnGASo1L9VsxrDvJZZAdCjn3rrbGah19cUMNoCw+7D9o2Ra/NO/GJco9hEfFywPp4L1CFoiazhJX/chnGH2RDxMRGfA9j5sdTbzAV3+sTe0eIY8MDY2REiZSsm4C/xrWBpyv2qBewKoVC3HqmohSfRjugj5GcZ8zRVLawIDAQABAoIBAGGKUhO2VwJraXlSm+eeZBCqg4pgF8lMEnU6qCFYtxAUzl6K0xJyiadXhKcg6OSJ2WF3E25y621nHU6bVPGptqtCl33j1XSZQKlcq8BeWZKFJL6xPZb+TvlTwsJ5T5LkE7OBInIp5hnRxd00GglV8GUKDnW128UmCtskRsDfTa2cDOZx/dHrTrNIBa/pg5+FRPT4cqEdXgnQlSZS7vITb5sKCIklV6BSTNLH9IHrh9tIxNdCza6kATBA0Ni21YLZhDf4/0NEmvCYR4aihL+TJmGHCFUa2VD+z+c5g1mUOUtcHExJhAJXbrL66rbkbnQ8Y4b86zec0iUBG/dIyfkO0PkCgYEA2or0mY/TPtwWTbqH6fhuAtyf80X/lmYnDpsK+XG6YPo5gpWoXs+Y25AunajUpCqIevtHpOjPs+RK2qgutxgOdoatxLTQfqGN2aHweJf4Rq7u+GhwaTi4XnU5eoJ9P2zOQj1iNdmMNVpQhIeuq8cowQ6baLgTgdPIaVNocateffUCgYEAqylXQ09NRljXoJueHPQFrYCPsNpAAPzQK2nP+NsHXVewWpapLsoX7JW2bReWmSRbV+dk5OrGqMPBMM2W8Z9Lwh0ZV6KCehMctFDej1z0rK5LgaJpYrcEbTviDYO2Nchwtz4j3X/YoufJZXRlJyn0Hz3SrOkRBk8R2sijonW4Z98CgYEAxYjWADtdILNEQau5kATqQxHyTazWkbXx1aTUbZWbdm6WLu9hCZmxO7x+NilVUrHTPP4FywxYOOy/sBZWa06GPCINzP/2eI9ELRPPzODoG9Og0s1r1d/b3h0tAAwUc5DAemULcUsbDVp97tzJSCEzOBUg6a2AjFfGDVXD0QKp3UUCgYBtUSUTr1V6ZYmqYVm1wkDSFHcxi+Mu/kjyQU178mAcxMG0yd7aLGblSqVNvbAItUjFttsgvbYN2aDMy7HpNkVLgAxMhVVyJDzECZZr2AHJPDSrYhCO5LcmEQYKfaHlbdRXpI+Bi4LQYNunOZTVU51AStsAZobiEaQkqNqiCy+w3wKBgAR/DAGZJtdG2DqCYy7yxO7eelssbbCpq8co2+h2wMrnRH5y/xjerQ7y7EhY6EllEz9OZCkdw+gx+4R3QmAA9h9rgMOF6/B10qmll+k4/xngMzZs8rWFE3z09fBu64XPyVWpjNBG9bk/cgRLWX9JuyLoiWwP6s7Gl+i5k5nKEfKt
9b70f04a-5ca6-4df4-a499-432809667ea6	1bf9323f-1c77-4def-a242-9bd3d2a048e6	certificate	MIICmzCCAYMCBgGKVrKFsTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjMwOTAyMTYxOTE0WhcNMzMwOTAyMTYyMDU0WjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCSHhwibtsxOE8YEWXlA6rFt0opfEVEaOfGuz8J9V0/0n07OAzDi5PxwKCnDz5SXvVsFj2+LwW+BV07Nzfz3iIS0HXgbscnlAjK6qR4WATTp7sRUI9jV2SUk1HG5p8+33yAUWUa49OGxz5soNHkamQ7NXB7tDIhYE+WkruwkjvX69DjV57AOcYBKjUv1WzGsO8llkB0KOfeutsZqHX1xQw2gLD7sP2jZFr8078Ylyj2ER8XLA+ngvUIWiJrOElf9yGcYfZEPExEZ8D2Pmx1NvMBXf6xN7R4hjwwNjZESJlKybgL/GtYGnK/aoF7AqhULceqaiFJ9GO6CPkZxnzNFUtrAgMBAAEwDQYJKoZIhvcNAQELBQADggEBABa37G0dLP/Hx3DPouiy6XAaa1q9AdGDYTD3y1f6k6DRf4OLuLwiThofgIfrRMnEzbWrDg6hUGwAVcfdqiyN/cMD2wIHs83FuYkeznNodZArhnRDbmDN22yNji2YCiaQ5bXJD8td88Ex8Pw9snoS/3XvJ0GO+7QAZZR+rjUDC+NQgMLR5JYjhPdwwu6zlHxqTWg99REUbzvK75Ue3YLld+29u9PJ7jaNYwOf/DW+McYixCGQDpMtVty710SQQsMZw/o45q2Zm9wT8693Gz2aP8/9XiT1aK9MuhfayR8xTR8qUXN+OF+0LbIn23g9yAfQvuCkM1s9RcrRR9cAaMyobSc=
88ce295a-da9b-4f0b-b520-3d36ddfb95ad	1bf9323f-1c77-4def-a242-9bd3d2a048e6	algorithm	RSA-OAEP
9f407d91-e25d-4293-95d0-41e091eeaf96	32fc3a76-46cc-4686-a711-19002fea3529	max-clients	200
fd4836cd-6348-4360-8e5e-9a567fa2df22	4718f829-9d37-4a51-ad05-d631189752ad	allow-default-scopes	true
3aca9bfa-87c2-4877-8df8-8776f1ffeca6	6488923a-b5a6-4846-b14d-427a346c8e49	privateKey	MIIEpQIBAAKCAQEAppz+1dsURP4SWEY3VXTVl9CrsMO2ZNO5O5Gjk2RBeJGZk1OxBIv1955UNCZ9iLP7l7Om9mHxp+UkLUqUrF0Fp9EMu34yN87Xwhhw5+HmtBbr7s/dVFVwCu+cAB5wtQDPfPYh6QbUuP+oGMTTgLPVZUfl+13XiYFpEa/EL1Tpg5VALu2t6YCpKWa1qoxck25ha25wN8Glchj34rSKz4xxmZB1buj84hGnOglv2wIfUvJKo9lKCT2HRlCSJmDIFvH+S0tuf7kbEf9WrsNx8DSTr0g3impj20gYgC3hrHjHk1/ASKRYI/ZkQdXVW3W0JPqNm+h7VzCnsndwGEy5DEv18wIDAQABAoIBAQCLX2z1K+xKwlZKLYKAI9nAwze8CBt9QHcE05GH7CewWeukCDBd406AMpuxfDkqr5RYlFmoZMonblDS6j5v6OigNwl1ld0gPhDSNmvMLXY1U69M9+jncQjmvQU8PDp/zwvCNoqrSaGMl5/gCFX8pXJu5LQHj7qLNgvUVbnA9kDYZhV//9BuKrl1Zu+Y1PIqGYUutB1ZRRUfJy7hL+YCsizhBw6hjAT40iBrb79l5yOoTX0BiVf1+XBjCmRVW5LOc8DQg6zLJpA3vMf76cU7nJ21qFpWDZ1aeHhbknRtNrrU27a4iXWXWwaj5XEa5jOernBVQJtiyZD4jVaLKHn/buTRAoGBAPImAF8S0VO4vytSQb/BNn8JQ7OuMghvSSsqzpeYyqGxqekePD5a7d2c1rkTb+v8sSNWD+EVUps5zzHmzOtKnvubamu1i1eYw3F2V3XQrX5LGV4yimUoZki8wIHSFL55dDbWO9LiGzqMzY1c4GVpFw2Gm9QVrGUSGKWoB1kx74VnAoGBALAk3TR5S7G/0ApU+5jpljSWSv6FwgQKjXZdhJ6UByiWHdHcuWC/dcfs+UhaZrzG5AGkmBUBP2dhsepSbL1Eu8OBW4b74rc8115IX+AxMGPNjudlpDBPDhEVFiBk3AIZQ4ZJ/whIt7X9HOELq7z4mnGGT2MEMLPYr1ZW1dRe5oeVAoGBAKGhbgQICoOIwMoI6Ow26spXA8LO1oS8y6kttKKKEU9myJRbYzj39uhDBSyaZc2uaQq+KnFCi1Yje0LC3St9LquhrKJilrUMugBlTrHMbdHsDO3MbIZjNgr9Or4s3T3a0hC8ZUg5NpWZYKcoRHxMbl/P5vnk0aLRNnR0uRr3cvqnAoGAXqA/MXxj/KZl1dcXnmsGJVQED729n7wniMnuf95YBia2+FHSSLYySOf2dzcRcCKMxJEunkIgVKJ4GMCU6AyvrfSlPdu9TODjdiP9VYw3SbZZKdhBny4pCWZBj79/LaVy0AaaelHOV3cVd5R0ez02gvw7U58hpswmTYSytLcSsw0CgYEAqTbLHAJAXi1ltYpH6wwxN70M+Ox19FTzjT/TA24g6un2TF/tuP7UjvWNw1cs2JyIGcaEyI5m3K52hjiLJ/jG2y9dAQ4p/U5lllbxBMV0hWWb66GQYyNBXXWRHgoQcStrxVA8r/GSmhnV+dWhj9ozDiXkYTG7HsGni3oxKygSa7c=
368bb64b-c84b-49dc-98da-c1c422aaf21f	6488923a-b5a6-4846-b14d-427a346c8e49	priority	100
3d831346-e558-4ea1-8caf-7b107b43b00b	6488923a-b5a6-4846-b14d-427a346c8e49	certificate	MIICmTCCAYECBgGKVtEeqzANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAViYXNpYzAeFw0yMzA5MDIxNjUyNDBaFw0zMzA5MDIxNjU0MjBaMBAxDjAMBgNVBAMMBWJhc2ljMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAppz+1dsURP4SWEY3VXTVl9CrsMO2ZNO5O5Gjk2RBeJGZk1OxBIv1955UNCZ9iLP7l7Om9mHxp+UkLUqUrF0Fp9EMu34yN87Xwhhw5+HmtBbr7s/dVFVwCu+cAB5wtQDPfPYh6QbUuP+oGMTTgLPVZUfl+13XiYFpEa/EL1Tpg5VALu2t6YCpKWa1qoxck25ha25wN8Glchj34rSKz4xxmZB1buj84hGnOglv2wIfUvJKo9lKCT2HRlCSJmDIFvH+S0tuf7kbEf9WrsNx8DSTr0g3impj20gYgC3hrHjHk1/ASKRYI/ZkQdXVW3W0JPqNm+h7VzCnsndwGEy5DEv18wIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQAFz+g+hxhY6CQsWulf5UH+0A3pWBoDvJBTOTj1jsewVfjTKei5o7z0wNhmQflcQYVqSWIo8HTYkmHHCtfqRg+N3kYImH6lShOra8N5CveYo2dO7rOHvPGInG87ty7ntX9zyd2TAXCw97tZsz9zkGPhFxMBQ5wsbMeJsbggEpPZbJON0Mdw+ZWep9q07FIcBRgoUc/k0CJZts2w1jfPe5QYIF3muIGhjMZV+fwXqSmYRbT5qWcVoXDUHqAejsDZwBAaIaWrBGz7RbtLM3vaK7jlHIxw/y29cicxOikjhhKfevQRktUfDfxm/ddfzC4P68xCD6JpikSrSb2enYXjAuTr
ab3cad4d-0235-4782-b00d-57a5c440003f	6488923a-b5a6-4846-b14d-427a346c8e49	algorithm	RSA-OAEP
5b0c33c9-3c7c-4508-8637-fde9324fada3	f4c3b9eb-b839-49d7-bc13-e4c7bc484fb7	kid	d9c5a531-ea58-43fd-bce7-4ea3146f3541
7a014131-84a5-41cf-b248-eda8f61498b5	f4c3b9eb-b839-49d7-bc13-e4c7bc484fb7	secret	in1jy7_RP6HOWSoVid-GlXOq_RBXX-4nSYtcBG7wAym7K0lWsn1vV1xkhtM1vFdLgfnMMb3B0PXRMqe0tWApTA
21c2bade-e4a3-4834-a63a-25f494291b62	f4c3b9eb-b839-49d7-bc13-e4c7bc484fb7	algorithm	HS256
cd7b207f-d80e-4d0d-ae0e-9145116c5a47	f4c3b9eb-b839-49d7-bc13-e4c7bc484fb7	priority	100
6caf1547-ad7f-4e65-a577-bf4c9bc01487	45f068ef-841f-4fef-9f79-d6a3238fbb06	priority	100
bb0a9ac0-9bee-4113-8b5c-a2d6fbd70ef9	45f068ef-841f-4fef-9f79-d6a3238fbb06	certificate	MIICmTCCAYECBgGKVtEf3jANBgkqhkiG9w0BAQsFADAQMQ4wDAYDVQQDDAViYXNpYzAeFw0yMzA5MDIxNjUyNDBaFw0zMzA5MDIxNjU0MjBaMBAxDjAMBgNVBAMMBWJhc2ljMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAm2LQx0ijyv00aDr/fDqEhNyGS+QaIc93M2aiafGVJyb0d6QKVcMYGryVaSzCgZyJMji41TlG+DJeEQmOnpQ/F7AsIPSyOLpopmXA6L4IM79tyQexazivV29wz8iPWuLkawpYM57XMhSqfhRBVAVrhd2Q20TkdxJ8HTl2fFwsNOh8Q5YWnUYFN94eGBHYm9KMdXinZISTEKOHywYwg3wCk8NioJschYDyMndUKR1Tct5C+1wfPqf6KwZLKLAqYT/BeMVav6APLYUMRYZeNX9tU0z2qZn5tEki3SMuPTwWL4PZnRn6YP6bmc50cmUGnFSSjt9cB140qGB9242TJCPPJwIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQBrQZq/cxClDyhCs/7LK4qo0WqK2GiFCw8M02wlHK2SGsQe1esRhdK+LM+jGqZ4hDodCCakLtHbN/lidqlRqdSELTCbgpVPCW2XPq5Hibj6g7Er1sdwCii83RdjWX1M4HQd5GXXTQbr9DjGoEXc6LlO8FVrBVwCSmx18Nzrd8dmRNE5zQsswR1y1zzyq+Q67+3TdrAnwQw2lhKR2F/Bi7KjkoNAZhXthq6zLHls9QC6wBk2axrOO6XByKClc5UE1CRnxsKnibDGT9Rlvr4NZ8JJ4aGEJkT5kYooDZ/iOzInESZvXtejmecvMKaeGttXaO61zFxXI0Xw4lj54p/+UCVz
55bd208d-6d7c-4316-b5c3-e71e7cc40dde	45f068ef-841f-4fef-9f79-d6a3238fbb06	privateKey	MIIEogIBAAKCAQEAm2LQx0ijyv00aDr/fDqEhNyGS+QaIc93M2aiafGVJyb0d6QKVcMYGryVaSzCgZyJMji41TlG+DJeEQmOnpQ/F7AsIPSyOLpopmXA6L4IM79tyQexazivV29wz8iPWuLkawpYM57XMhSqfhRBVAVrhd2Q20TkdxJ8HTl2fFwsNOh8Q5YWnUYFN94eGBHYm9KMdXinZISTEKOHywYwg3wCk8NioJschYDyMndUKR1Tct5C+1wfPqf6KwZLKLAqYT/BeMVav6APLYUMRYZeNX9tU0z2qZn5tEki3SMuPTwWL4PZnRn6YP6bmc50cmUGnFSSjt9cB140qGB9242TJCPPJwIDAQABAoIBAHBWt6RsMubturbkeJNC50369Sjm57GsAXzq5d78Zp4gvrvEoCgy3TlvQAIC9ziniFUDxzV4rIOCPpnItBCYEyk4GB9XaYYz1rb+d8KMqPdonaGqay2elL389q1yTZoi0YtFtlDTtLcjU8PFNxnctUjZ0AGGxDoF5i9mvO/Z36f7ixSBLetgKFnaMBEsI4aFglgSl0zLfYqdDJN6j5oJm4tAQogg++n5KHWWnFDh1jL4iuftvUevp7cthn3UEiCFCCb5QV0sjdpAKD/9/714JprM6WDyH3V7onf6JurchuWSAHuc4J26MnkwKqdooBrDE0tHv1eeDVrGkqGcel19anECgYEA8gmZRlTTqRppdSUMwol6YkCmzoBaBz34L3S9uYycvL7TkoL5pZtN6OtxDATBLI1pMgdlN0U7foAwEdxiB4WPR3+2N/V0X8H7McuEUAXTjdVsm7LchEJaQEy2DkhfU86n5IUsnN/QQxe4kEA17sSuYw8BM6kWxXLRooTTAlIWg48CgYEApFmM78TL6+1KVU2o3ok0e+88FagmlBxPJEVSgMil9b0DZ8rWbhNkOnI6BCG2L+/Eg0MM3OPz2nKk6vET6H3dgGLf9z6bH0Y0IcjineM1ZTot5fqHwCu51qnWs0DWSayyRz4vGNcDpmre5+N6EAGEH+pP8RPKgDJ77umzausnzukCgYAq6R6+hF1+NouJ1Ea92qfS8YlhRQoxDICK0VStp8tF/0L9T7E49h7K86r4KYOiBXQoBX2hXendVJaxI/RRRxGO6IqCw0adj4OcYWuU0GOgWr1FoWFNJYJgsfj48UXNUu8bKa0uJtQCgRscn/Wv3jjYoRliclDyMpgOCyRp3enV6wKBgDKWDbdPT6USqKqQ+MVmXe03ubrAwv8bp5B2deqF1+9HemDcIhxHg7YpqonTBozCtC3i2Xa0Az7dwr097u7ErwTxahZkAsMhjLJJbtdCNBEwUyhScK5Jxy23oQoTjuGmcklTbpOqusjiZDHj5pI+pThdmrWNber/nv3umPbz4pDhAoGAVv6ZkC29eOrxF8loHtMdTr/1AccKjzbWXj3bpRswipkM+yAFwKBNIHDcUxhFZOYylGf50AkI/mo7ORP0DXjg7GuYGzvTLWejQw9KHrUJf2JVwYtXJ21Peh916S/pTJ80ZPz9eHd6FRCpFBnjNn67vrN37q3iVvV36R/bYEyh17s=
4e1286b4-afcc-4e68-8aeb-b23f7784413c	a842bb3e-1e38-4902-8396-622fc67e9c53	priority	100
2154aa31-2b3d-4876-8f56-4e7e8d6943e8	a842bb3e-1e38-4902-8396-622fc67e9c53	kid	706b79b5-f384-4892-a607-8a90c6e15f73
c60079b6-a93b-4b89-8565-65125883b478	a842bb3e-1e38-4902-8396-622fc67e9c53	secret	jFTt5A5YifMXwu-5KQPr8w
cab967e3-1227-4e11-a568-555cb04aef5d	2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	allowed-protocol-mapper-types	saml-user-property-mapper
862b2194-145d-4849-ace2-ab5867898ce2	2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
5ce3a502-2130-4ca5-a095-304aca60f1bd	2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	allowed-protocol-mapper-types	saml-role-list-mapper
f2eee2df-9b16-4da5-b046-8cb48e36ec31	2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
7191b328-ee38-4705-8557-589a6d7dbcb4	2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	allowed-protocol-mapper-types	oidc-full-name-mapper
0c6fd8b4-98e0-4c40-acc4-f841a7eedc9a	2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
063ac58a-d86e-4b67-bd20-36e03c20a601	2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	allowed-protocol-mapper-types	saml-user-attribute-mapper
91e5a5ca-bbfc-4b38-8a2d-9da964184682	2d2d07a1-8ecb-424d-9ca4-2cef0dc691d2	allowed-protocol-mapper-types	oidc-address-mapper
800fd37d-979d-4baa-a93a-8e7fec32c35b	06e0e782-9d3e-4585-a3ac-9f2b81019e5b	allowed-protocol-mapper-types	oidc-address-mapper
80b0cc19-5c10-4556-95e7-10f63bd6c7aa	06e0e782-9d3e-4585-a3ac-9f2b81019e5b	allowed-protocol-mapper-types	oidc-full-name-mapper
7eb079fe-d47b-4882-9577-8331e3356e6f	06e0e782-9d3e-4585-a3ac-9f2b81019e5b	allowed-protocol-mapper-types	oidc-usermodel-property-mapper
0b776b63-24b1-4582-8fd0-bc7c86d9922f	06e0e782-9d3e-4585-a3ac-9f2b81019e5b	allowed-protocol-mapper-types	saml-user-property-mapper
54a8f1af-57eb-4d16-9960-5bde17513b97	06e0e782-9d3e-4585-a3ac-9f2b81019e5b	allowed-protocol-mapper-types	saml-role-list-mapper
3ac0f385-994d-405b-9907-852642c79c35	06e0e782-9d3e-4585-a3ac-9f2b81019e5b	allowed-protocol-mapper-types	saml-user-attribute-mapper
4b9cdf5d-34ff-4127-be49-6df45f07bb32	06e0e782-9d3e-4585-a3ac-9f2b81019e5b	allowed-protocol-mapper-types	oidc-sha256-pairwise-sub-mapper
877fced9-de24-4839-92d8-6c559c753384	06e0e782-9d3e-4585-a3ac-9f2b81019e5b	allowed-protocol-mapper-types	oidc-usermodel-attribute-mapper
ee6d6038-f3b0-48e8-8070-c7ad0f78fa89	3cf9f200-5d19-4977-8415-3e0c3ce416b8	allow-default-scopes	true
37923d8a-f4db-4ae3-85d6-d0d5c2d0d829	223716ad-cf83-47fb-9f99-3c390b4e27db	host-sending-registration-request-must-match	true
f1bced87-4249-4f76-bcfe-e239675c67d0	223716ad-cf83-47fb-9f99-3c390b4e27db	client-uris-must-match	true
\.


--
-- Data for Name: composite_role; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.composite_role (composite, child_role) FROM stdin;
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	635a2470-11f9-42b9-b831-7bcbe53231f2
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	edee5802-1cb0-4e16-8df4-107102bf7696
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	d1ea641d-eaec-4f3d-b662-f3d9f80fd7e8
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	78447411-007a-4fa5-bcc3-cf80b07f2234
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	968bd48a-29fa-4683-8bb4-b2732e8bb9ae
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	e49266a3-f95c-4fbd-b529-e43e8bc86707
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	ab95702e-95aa-44e9-9301-a8a88be5a172
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	73fca71c-ca6d-47c7-aa32-7e92cf7867d5
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	2285e793-a0cc-420e-9a33-d5e6cd6d89dc
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	8375db12-c60f-41e9-afeb-48e6e436615a
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	bf10936d-6dc7-4b30-8d32-36771877330d
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	cf6f2257-6e4c-4375-995a-628df1386cef
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	d524fa7d-15af-4652-bc8b-ef240f760e7c
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	1109fdec-d108-4341-8dbd-ae68936f529c
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	e872465e-3a49-4a12-9865-ca48da5fafcb
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	6abbb5a5-38c4-4709-95e9-d5a92ed4e5d6
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	390b8fc2-5e35-4307-a151-45ccdeceb67f
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	98922a50-4f57-4ac7-ad2f-f8a3694eec8c
968bd48a-29fa-4683-8bb4-b2732e8bb9ae	6abbb5a5-38c4-4709-95e9-d5a92ed4e5d6
78447411-007a-4fa5-bcc3-cf80b07f2234	e872465e-3a49-4a12-9865-ca48da5fafcb
78447411-007a-4fa5-bcc3-cf80b07f2234	98922a50-4f57-4ac7-ad2f-f8a3694eec8c
1974fe6f-0e2c-4333-b82d-b16b2fbd7950	aeffb501-fe8c-4a34-b33f-ad254fad4583
1974fe6f-0e2c-4333-b82d-b16b2fbd7950	c8384e00-6e94-4ed6-b23c-e5a7b74c2534
c8384e00-6e94-4ed6-b23c-e5a7b74c2534	85f41a9a-b199-46c4-8334-b43596d1144b
77485e5c-9ab9-4497-a30e-29c9e49d4d3d	ab6ab0c7-d1db-49fe-839c-25ecf79c100b
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	45f02534-7c41-4ac9-98d3-e00ba5074c16
1974fe6f-0e2c-4333-b82d-b16b2fbd7950	90806870-9a51-4d74-97a2-851f5071af98
1974fe6f-0e2c-4333-b82d-b16b2fbd7950	5f29377a-f425-4d9a-810e-57412464fd70
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	a29dcaf6-472a-4fe7-9382-428868c7a302
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	7368e24c-f938-4314-8d03-59702a09edf9
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	6f52fa1b-defa-4e68-98a5-442aabda16c8
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	2abc2f0b-ac86-4086-966a-ef3dd990e7d0
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	03518a9b-ef39-4ca5-9596-fe9df59ba9f7
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	4d41ed8b-7368-4433-9873-05163ac49c36
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	bc9d6b2a-8967-4c75-8725-fe420ad208f6
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	5cdcc7b1-4731-4231-a58b-6d9c5a4cfb77
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	3a61e629-e02f-43ae-a585-95c6b4d7f210
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	dea6017a-dab9-44e8-a531-7bc6389ba585
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	671929d8-1f28-458c-b45c-65141eb3a192
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	1fcd2d32-d260-4594-b57c-0c2cbdd5b5dc
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	6c8c5d08-ec5e-4634-87f1-7bef2e0be003
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	a4e95a1b-302c-4da3-b205-7e47f82d246e
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	f103e95e-b94b-42fc-ad9f-099c4c6ec5cc
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	7da99bff-9099-4ecd-8ae9-a0447deb5d31
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	adadb897-284a-4ece-a327-0b665bd7df9a
2abc2f0b-ac86-4086-966a-ef3dd990e7d0	f103e95e-b94b-42fc-ad9f-099c4c6ec5cc
6f52fa1b-defa-4e68-98a5-442aabda16c8	adadb897-284a-4ece-a327-0b665bd7df9a
6f52fa1b-defa-4e68-98a5-442aabda16c8	a4e95a1b-302c-4da3-b205-7e47f82d246e
7494cb7e-1679-4b8d-a9c9-cc12383e9dd1	dff5f889-fbc4-4572-822a-8fe406cb2ae3
7494cb7e-1679-4b8d-a9c9-cc12383e9dd1	7162ebef-42e6-4065-9e2a-8eb718ca9123
7494cb7e-1679-4b8d-a9c9-cc12383e9dd1	2a3f0a53-3a24-4045-a73e-1922047e1145
7494cb7e-1679-4b8d-a9c9-cc12383e9dd1	9cd55a3f-2fb3-42a5-acd2-b2eedb293877
cdf3e822-b1ef-464b-923a-3d87aedd6a63	ddeb6067-6211-4b4f-91ed-b3f700a8fe26
cdf3e822-b1ef-464b-923a-3d87aedd6a63	b058bc76-3847-43d2-a31d-1b4ca8f94610
cdf3e822-b1ef-464b-923a-3d87aedd6a63	55eb346a-c84c-4bc3-9697-0d9296b1bfa5
cdf3e822-b1ef-464b-923a-3d87aedd6a63	e1f09f58-27f3-4761-97d3-bd7eb5d18a31
cdf3e822-b1ef-464b-923a-3d87aedd6a63	b458b096-a36e-412a-8f8f-e4c93bd331bd
cdf3e822-b1ef-464b-923a-3d87aedd6a63	5cf7ac43-f17e-463f-9cb8-6a6536e50fa0
cdf3e822-b1ef-464b-923a-3d87aedd6a63	e67ab361-6ad5-478c-b707-6a119252a84a
cdf3e822-b1ef-464b-923a-3d87aedd6a63	b716602e-eabe-4f26-b390-2b8369b261e5
cdf3e822-b1ef-464b-923a-3d87aedd6a63	2c257116-d953-40e4-a1a4-ea6da85260ca
cdf3e822-b1ef-464b-923a-3d87aedd6a63	f93d32ed-4a3b-403e-abf0-b306b1cf129e
cdf3e822-b1ef-464b-923a-3d87aedd6a63	e93e0cee-634f-4d2b-a6df-a6b438251868
cdf3e822-b1ef-464b-923a-3d87aedd6a63	1ff342bd-561e-4249-b374-27cf753b12b2
cdf3e822-b1ef-464b-923a-3d87aedd6a63	87ca8728-8f1b-41c4-b283-af10f155c624
cdf3e822-b1ef-464b-923a-3d87aedd6a63	a5e7389d-1365-4615-a6d5-b96c730d54d7
cdf3e822-b1ef-464b-923a-3d87aedd6a63	a119cfe5-c8ac-492d-8470-3c4af9f44ef6
cdf3e822-b1ef-464b-923a-3d87aedd6a63	aedc7dd7-90a8-421e-b22d-a1b55f6408ae
cdf3e822-b1ef-464b-923a-3d87aedd6a63	89f93dea-4c58-4c0e-9102-d56a795118f4
cdf3e822-b1ef-464b-923a-3d87aedd6a63	ca49710c-dd78-4872-b8ab-1e9e2a0b5677
f93d32ed-4a3b-403e-abf0-b306b1cf129e	b716602e-eabe-4f26-b390-2b8369b261e5
a5e7389d-1365-4615-a6d5-b96c730d54d7	e67ab361-6ad5-478c-b707-6a119252a84a
a5e7389d-1365-4615-a6d5-b96c730d54d7	89f93dea-4c58-4c0e-9102-d56a795118f4
5b077aca-a82c-47c0-a996-635cfddbd20b	0099dc97-a0c7-4f34-820d-23c07e3b859d
7162ebef-42e6-4065-9e2a-8eb718ca9123	6daaf192-bd4a-4d58-9143-80691f7e3227
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	cce144c8-b7ba-40bd-9527-6862a25a5334
\.


--
-- Data for Name: credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.credential (id, salt, type, user_id, created_date, user_label, secret_data, credential_data, priority) FROM stdin;
62ad3c19-509f-47b2-a10a-2788c23e2ddd	\N	password	d71f8144-820f-4961-a509-944300eea956	1693671655244	\N	{"value":"+Fi8Ot388wh6Z7OsttuhwcZ7uT7CuNdhqsGjZUgTFfxmtq/2amV33qrn7QJ8Bhy2h1Q4JQYxWIpzOZAxW053ng==","salt":"7kY/9z4XqficyIlJs9YNow==","additionalParameters":{}}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}	10
2c052abc-7742-4164-90e1-79d00b04b2aa	\N	password	4d8f854c-14a0-4f2f-a431-42433035aaf3	1693673769222	\N	{"value":"KVir2o2Q5/twNrw+K8LJrWXEEo7OzdIOX++tucqiHaZc13I0+Ei65+O4DxnSOGsjT/dly2l4V1F2+soD8VE+tQ==","salt":"bJeprE0z4xcSOe5hmEYbMQ==","additionalParameters":{}}	{"hashIterations":27500,"algorithm":"pbkdf2-sha256","additionalParameters":{}}	10
\.


--
-- Data for Name: databasechangelog; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.databasechangelog (id, author, filename, dateexecuted, orderexecuted, exectype, md5sum, description, comments, tag, liquibase, contexts, labels, deployment_id) FROM stdin;
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/jpa-changelog-1.0.0.Final.xml	2023-09-02 16:20:48.227188	1	EXECUTED	8:bda77d94bf90182a1e30c24f1c155ec7	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	DEV	\N	\N	3671647792
1.0.0.Final-KEYCLOAK-5461	sthorger@redhat.com	META-INF/db2-jpa-changelog-1.0.0.Final.xml	2023-09-02 16:20:48.233474	2	MARK_RAN	8:1ecb330f30986693d1cba9ab579fa219	createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...		\N	DEV	\N	\N	3671647792
1.1.0.Beta1	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Beta1.xml	2023-09-02 16:20:48.270799	3	EXECUTED	8:cb7ace19bc6d959f305605d255d4c843	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...		\N	DEV	\N	\N	3671647792
1.1.0.Final	sthorger@redhat.com	META-INF/jpa-changelog-1.1.0.Final.xml	2023-09-02 16:20:48.276203	4	EXECUTED	8:80230013e961310e6872e871be424a63	renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY		\N	DEV	\N	\N	3671647792
1.2.0.Beta1	psilva@redhat.com	META-INF/jpa-changelog-1.2.0.Beta1.xml	2023-09-02 16:20:48.357743	5	EXECUTED	8:67f4c20929126adc0c8e9bf48279d244	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	DEV	\N	\N	3671647792
1.2.0.Beta1	psilva@redhat.com	META-INF/db2-jpa-changelog-1.2.0.Beta1.xml	2023-09-02 16:20:48.359854	6	MARK_RAN	8:7311018b0b8179ce14628ab412bb6783	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...		\N	DEV	\N	\N	3671647792
1.2.0.RC1	bburke@redhat.com	META-INF/jpa-changelog-1.2.0.CR1.xml	2023-09-02 16:20:48.431506	7	EXECUTED	8:037ba1216c3640f8785ee6b8e7c8e3c1	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	DEV	\N	\N	3671647792
1.2.0.RC1	bburke@redhat.com	META-INF/db2-jpa-changelog-1.2.0.CR1.xml	2023-09-02 16:20:48.433925	8	MARK_RAN	8:7fe6ffe4af4df289b3157de32c624263	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...		\N	DEV	\N	\N	3671647792
1.2.0.Final	keycloak	META-INF/jpa-changelog-1.2.0.Final.xml	2023-09-02 16:20:48.439125	9	EXECUTED	8:9c136bc3187083a98745c7d03bc8a303	update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT		\N	DEV	\N	\N	3671647792
1.3.0	bburke@redhat.com	META-INF/jpa-changelog-1.3.0.xml	2023-09-02 16:20:48.534844	10	EXECUTED	8:b5f09474dca81fb56a97cf5b6553d331	delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...		\N	DEV	\N	\N	3671647792
1.4.0	bburke@redhat.com	META-INF/jpa-changelog-1.4.0.xml	2023-09-02 16:20:48.595953	11	EXECUTED	8:ca924f31bd2a3b219fdcfe78c82dacf4	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	DEV	\N	\N	3671647792
1.4.0	bburke@redhat.com	META-INF/db2-jpa-changelog-1.4.0.xml	2023-09-02 16:20:48.598877	12	MARK_RAN	8:8acad7483e106416bcfa6f3b824a16cd	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	DEV	\N	\N	3671647792
1.5.0	bburke@redhat.com	META-INF/jpa-changelog-1.5.0.xml	2023-09-02 16:20:48.6659	13	EXECUTED	8:9b1266d17f4f87c78226f5055408fd5e	delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...		\N	DEV	\N	\N	3671647792
1.6.1_from15	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2023-09-02 16:20:48.69699	14	EXECUTED	8:d80ec4ab6dbfe573550ff72396c7e910	addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...		\N	DEV	\N	\N	3671647792
1.6.1_from16-pre	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2023-09-02 16:20:48.698753	15	MARK_RAN	8:d86eb172171e7c20b9c849b584d147b2	delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION		\N	DEV	\N	\N	3671647792
1.6.1_from16	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2023-09-02 16:20:48.700957	16	MARK_RAN	8:5735f46f0fa60689deb0ecdc2a0dea22	dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...		\N	DEV	\N	\N	3671647792
1.6.1	mposolda@redhat.com	META-INF/jpa-changelog-1.6.1.xml	2023-09-02 16:20:48.703956	17	EXECUTED	8:d41d8cd98f00b204e9800998ecf8427e	empty		\N	DEV	\N	\N	3671647792
1.7.0	bburke@redhat.com	META-INF/jpa-changelog-1.7.0.xml	2023-09-02 16:20:48.7622	18	EXECUTED	8:5c1a8fd2014ac7fc43b90a700f117b23	createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...		\N	DEV	\N	\N	3671647792
1.8.0	mposolda@redhat.com	META-INF/jpa-changelog-1.8.0.xml	2023-09-02 16:20:48.809183	19	EXECUTED	8:1f6c2c2dfc362aff4ed75b3f0ef6b331	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	DEV	\N	\N	3671647792
1.8.0-2	keycloak	META-INF/jpa-changelog-1.8.0.xml	2023-09-02 16:20:48.813794	20	EXECUTED	8:dee9246280915712591f83a127665107	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	DEV	\N	\N	3671647792
authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-09-02 16:20:49.899649	46	EXECUTED	8:70a2b4f1f4bd4dbf487114bdb1810e64	customChange		\N	DEV	\N	\N	3671647792
1.8.0	mposolda@redhat.com	META-INF/db2-jpa-changelog-1.8.0.xml	2023-09-02 16:20:48.815713	21	MARK_RAN	8:9eb2ee1fa8ad1c5e426421a6f8fdfa6a	addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...		\N	DEV	\N	\N	3671647792
1.8.0-2	keycloak	META-INF/db2-jpa-changelog-1.8.0.xml	2023-09-02 16:20:48.818379	22	MARK_RAN	8:dee9246280915712591f83a127665107	dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL		\N	DEV	\N	\N	3671647792
1.9.0	mposolda@redhat.com	META-INF/jpa-changelog-1.9.0.xml	2023-09-02 16:20:48.860224	23	EXECUTED	8:d9fa18ffa355320395b86270680dd4fe	update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...		\N	DEV	\N	\N	3671647792
1.9.1	keycloak	META-INF/jpa-changelog-1.9.1.xml	2023-09-02 16:20:48.866821	24	EXECUTED	8:90cff506fedb06141ffc1c71c4a1214c	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	DEV	\N	\N	3671647792
1.9.1	keycloak	META-INF/db2-jpa-changelog-1.9.1.xml	2023-09-02 16:20:48.869016	25	MARK_RAN	8:11a788aed4961d6d29c427c063af828c	modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM		\N	DEV	\N	\N	3671647792
1.9.2	keycloak	META-INF/jpa-changelog-1.9.2.xml	2023-09-02 16:20:49.205259	26	EXECUTED	8:a4218e51e1faf380518cce2af5d39b43	createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...		\N	DEV	\N	\N	3671647792
authz-2.0.0	psilva@redhat.com	META-INF/jpa-changelog-authz-2.0.0.xml	2023-09-02 16:20:49.281834	27	EXECUTED	8:d9e9a1bfaa644da9952456050f07bbdc	createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...		\N	DEV	\N	\N	3671647792
authz-2.5.1	psilva@redhat.com	META-INF/jpa-changelog-authz-2.5.1.xml	2023-09-02 16:20:49.28606	28	EXECUTED	8:d1bf991a6163c0acbfe664b615314505	update tableName=RESOURCE_SERVER_POLICY		\N	DEV	\N	\N	3671647792
2.1.0-KEYCLOAK-5461	bburke@redhat.com	META-INF/jpa-changelog-2.1.0.xml	2023-09-02 16:20:49.339832	29	EXECUTED	8:88a743a1e87ec5e30bf603da68058a8c	createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...		\N	DEV	\N	\N	3671647792
2.2.0	bburke@redhat.com	META-INF/jpa-changelog-2.2.0.xml	2023-09-02 16:20:49.353996	30	EXECUTED	8:c5517863c875d325dea463d00ec26d7a	addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...		\N	DEV	\N	\N	3671647792
2.3.0	bburke@redhat.com	META-INF/jpa-changelog-2.3.0.xml	2023-09-02 16:20:49.368283	31	EXECUTED	8:ada8b4833b74a498f376d7136bc7d327	createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...		\N	DEV	\N	\N	3671647792
2.4.0	bburke@redhat.com	META-INF/jpa-changelog-2.4.0.xml	2023-09-02 16:20:49.372064	32	EXECUTED	8:b9b73c8ea7299457f99fcbb825c263ba	customChange		\N	DEV	\N	\N	3671647792
2.5.0	bburke@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2023-09-02 16:20:49.377326	33	EXECUTED	8:07724333e625ccfcfc5adc63d57314f3	customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION		\N	DEV	\N	\N	3671647792
2.5.0-unicode-oracle	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2023-09-02 16:20:49.379012	34	MARK_RAN	8:8b6fd445958882efe55deb26fc541a7b	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	DEV	\N	\N	3671647792
2.5.0-unicode-other-dbs	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2023-09-02 16:20:49.398623	35	EXECUTED	8:29b29cfebfd12600897680147277a9d7	modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...		\N	DEV	\N	\N	3671647792
2.5.0-duplicate-email-support	slawomir@dabek.name	META-INF/jpa-changelog-2.5.0.xml	2023-09-02 16:20:49.414684	36	EXECUTED	8:73ad77ca8fd0410c7f9f15a471fa52bc	addColumn tableName=REALM		\N	DEV	\N	\N	3671647792
2.5.0-unique-group-names	hmlnarik@redhat.com	META-INF/jpa-changelog-2.5.0.xml	2023-09-02 16:20:49.420728	37	EXECUTED	8:64f27a6fdcad57f6f9153210f2ec1bdb	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	DEV	\N	\N	3671647792
2.5.1	bburke@redhat.com	META-INF/jpa-changelog-2.5.1.xml	2023-09-02 16:20:49.426812	38	EXECUTED	8:27180251182e6c31846c2ddab4bc5781	addColumn tableName=FED_USER_CONSENT		\N	DEV	\N	\N	3671647792
3.0.0	bburke@redhat.com	META-INF/jpa-changelog-3.0.0.xml	2023-09-02 16:20:49.438108	39	EXECUTED	8:d56f201bfcfa7a1413eb3e9bc02978f9	addColumn tableName=IDENTITY_PROVIDER		\N	DEV	\N	\N	3671647792
3.2.0-fix	keycloak	META-INF/jpa-changelog-3.2.0.xml	2023-09-02 16:20:49.439868	40	MARK_RAN	8:91f5522bf6afdc2077dfab57fbd3455c	addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS		\N	DEV	\N	\N	3671647792
3.2.0-fix-with-keycloak-5416	keycloak	META-INF/jpa-changelog-3.2.0.xml	2023-09-02 16:20:49.442087	41	MARK_RAN	8:0f01b554f256c22caeb7d8aee3a1cdc8	dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS		\N	DEV	\N	\N	3671647792
3.2.0-fix-offline-sessions	hmlnarik	META-INF/jpa-changelog-3.2.0.xml	2023-09-02 16:20:49.446806	42	EXECUTED	8:ab91cf9cee415867ade0e2df9651a947	customChange		\N	DEV	\N	\N	3671647792
3.2.0-fixed	keycloak	META-INF/jpa-changelog-3.2.0.xml	2023-09-02 16:20:49.876643	43	EXECUTED	8:ceac9b1889e97d602caf373eadb0d4b7	addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...		\N	DEV	\N	\N	3671647792
3.3.0	keycloak	META-INF/jpa-changelog-3.3.0.xml	2023-09-02 16:20:49.889333	44	EXECUTED	8:84b986e628fe8f7fd8fd3c275c5259f2	addColumn tableName=USER_ENTITY		\N	DEV	\N	\N	3671647792
authz-3.4.0.CR1-resource-server-pk-change-part1	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-09-02 16:20:49.894929	45	EXECUTED	8:a164ae073c56ffdbc98a615493609a52	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE		\N	DEV	\N	\N	3671647792
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-09-02 16:20:49.901627	47	MARK_RAN	8:7be68b71d2f5b94b8df2e824f2860fa2	dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE		\N	DEV	\N	\N	3671647792
authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-09-02 16:20:49.961254	48	EXECUTED	8:bab7c631093c3861d6cf6144cd944982	addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...		\N	DEV	\N	\N	3671647792
authn-3.4.0.CR1-refresh-token-max-reuse	glavoie@gmail.com	META-INF/jpa-changelog-authz-3.4.0.CR1.xml	2023-09-02 16:20:49.975399	49	EXECUTED	8:fa809ac11877d74d76fe40869916daad	addColumn tableName=REALM		\N	DEV	\N	\N	3671647792
3.4.0	keycloak	META-INF/jpa-changelog-3.4.0.xml	2023-09-02 16:20:50.011449	50	EXECUTED	8:fac23540a40208f5f5e326f6ceb4d291	addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...		\N	DEV	\N	\N	3671647792
3.4.0-KEYCLOAK-5230	hmlnarik@redhat.com	META-INF/jpa-changelog-3.4.0.xml	2023-09-02 16:20:50.12557	51	EXECUTED	8:2612d1b8a97e2b5588c346e817307593	createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...		\N	DEV	\N	\N	3671647792
3.4.1	psilva@redhat.com	META-INF/jpa-changelog-3.4.1.xml	2023-09-02 16:20:50.129849	52	EXECUTED	8:9842f155c5db2206c88bcb5d1046e941	modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES		\N	DEV	\N	\N	3671647792
3.4.2	keycloak	META-INF/jpa-changelog-3.4.2.xml	2023-09-02 16:20:50.132915	53	EXECUTED	8:2e12e06e45498406db72d5b3da5bbc76	update tableName=REALM		\N	DEV	\N	\N	3671647792
3.4.2-KEYCLOAK-5172	mkanis@redhat.com	META-INF/jpa-changelog-3.4.2.xml	2023-09-02 16:20:50.13557	54	EXECUTED	8:33560e7c7989250c40da3abdabdc75a4	update tableName=CLIENT		\N	DEV	\N	\N	3671647792
4.0.0-KEYCLOAK-6335	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2023-09-02 16:20:50.141005	55	EXECUTED	8:87a8d8542046817a9107c7eb9cbad1cd	createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS		\N	DEV	\N	\N	3671647792
4.0.0-CLEANUP-UNUSED-TABLE	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2023-09-02 16:20:50.14565	56	EXECUTED	8:3ea08490a70215ed0088c273d776311e	dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING		\N	DEV	\N	\N	3671647792
4.0.0-KEYCLOAK-6228	bburke@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2023-09-02 16:20:50.175473	57	EXECUTED	8:2d56697c8723d4592ab608ce14b6ed68	dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...		\N	DEV	\N	\N	3671647792
4.0.0-KEYCLOAK-5579-fixed	mposolda@redhat.com	META-INF/jpa-changelog-4.0.0.xml	2023-09-02 16:20:50.308526	58	EXECUTED	8:3e423e249f6068ea2bbe48bf907f9d86	dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...		\N	DEV	\N	\N	3671647792
authz-4.0.0.CR1	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.CR1.xml	2023-09-02 16:20:50.337437	59	EXECUTED	8:15cabee5e5df0ff099510a0fc03e4103	createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...		\N	DEV	\N	\N	3671647792
authz-4.0.0.Beta3	psilva@redhat.com	META-INF/jpa-changelog-authz-4.0.0.Beta3.xml	2023-09-02 16:20:50.342752	60	EXECUTED	8:4b80200af916ac54d2ffbfc47918ab0e	addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY		\N	DEV	\N	\N	3671647792
authz-4.2.0.Final	mhajas@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2023-09-02 16:20:50.349725	61	EXECUTED	8:66564cd5e168045d52252c5027485bbb	createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...		\N	DEV	\N	\N	3671647792
authz-4.2.0.Final-KEYCLOAK-9944	hmlnarik@redhat.com	META-INF/jpa-changelog-authz-4.2.0.Final.xml	2023-09-02 16:20:50.354724	62	EXECUTED	8:1c7064fafb030222be2bd16ccf690f6f	addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS		\N	DEV	\N	\N	3671647792
4.2.0-KEYCLOAK-6313	wadahiro@gmail.com	META-INF/jpa-changelog-4.2.0.xml	2023-09-02 16:20:50.358985	63	EXECUTED	8:2de18a0dce10cdda5c7e65c9b719b6e5	addColumn tableName=REQUIRED_ACTION_PROVIDER		\N	DEV	\N	\N	3671647792
4.3.0-KEYCLOAK-7984	wadahiro@gmail.com	META-INF/jpa-changelog-4.3.0.xml	2023-09-02 16:20:50.362283	64	EXECUTED	8:03e413dd182dcbd5c57e41c34d0ef682	update tableName=REQUIRED_ACTION_PROVIDER		\N	DEV	\N	\N	3671647792
4.6.0-KEYCLOAK-7950	psilva@redhat.com	META-INF/jpa-changelog-4.6.0.xml	2023-09-02 16:20:50.364856	65	EXECUTED	8:d27b42bb2571c18fbe3fe4e4fb7582a7	update tableName=RESOURCE_SERVER_RESOURCE		\N	DEV	\N	\N	3671647792
4.6.0-KEYCLOAK-8377	keycloak	META-INF/jpa-changelog-4.6.0.xml	2023-09-02 16:20:50.380969	66	EXECUTED	8:698baf84d9fd0027e9192717c2154fb8	createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...		\N	DEV	\N	\N	3671647792
4.6.0-KEYCLOAK-8555	gideonray@gmail.com	META-INF/jpa-changelog-4.6.0.xml	2023-09-02 16:20:50.393005	67	EXECUTED	8:ced8822edf0f75ef26eb51582f9a821a	createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT		\N	DEV	\N	\N	3671647792
4.7.0-KEYCLOAK-1267	sguilhen@redhat.com	META-INF/jpa-changelog-4.7.0.xml	2023-09-02 16:20:50.411091	68	EXECUTED	8:f0abba004cf429e8afc43056df06487d	addColumn tableName=REALM		\N	DEV	\N	\N	3671647792
4.7.0-KEYCLOAK-7275	keycloak	META-INF/jpa-changelog-4.7.0.xml	2023-09-02 16:20:50.43262	69	EXECUTED	8:6662f8b0b611caa359fcf13bf63b4e24	renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...		\N	DEV	\N	\N	3671647792
4.8.0-KEYCLOAK-8835	sguilhen@redhat.com	META-INF/jpa-changelog-4.8.0.xml	2023-09-02 16:20:50.437417	70	EXECUTED	8:9e6b8009560f684250bdbdf97670d39e	addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM		\N	DEV	\N	\N	3671647792
authz-7.0.0-KEYCLOAK-10443	psilva@redhat.com	META-INF/jpa-changelog-authz-7.0.0.xml	2023-09-02 16:20:50.444268	71	EXECUTED	8:4223f561f3b8dc655846562b57bb502e	addColumn tableName=RESOURCE_SERVER		\N	DEV	\N	\N	3671647792
8.0.0-adding-credential-columns	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-09-02 16:20:50.449963	72	EXECUTED	8:215a31c398b363ce383a2b301202f29e	addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL		\N	DEV	\N	\N	3671647792
8.0.0-updating-credential-data-not-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-09-02 16:20:50.455041	73	EXECUTED	8:83f7a671792ca98b3cbd3a1a34862d3d	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	DEV	\N	\N	3671647792
8.0.0-updating-credential-data-oracle-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-09-02 16:20:50.456758	74	MARK_RAN	8:f58ad148698cf30707a6efbdf8061aa7	update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL		\N	DEV	\N	\N	3671647792
8.0.0-credential-cleanup-fixed	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-09-02 16:20:50.46846	75	EXECUTED	8:79e4fd6c6442980e58d52ffc3ee7b19c	dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...		\N	DEV	\N	\N	3671647792
8.0.0-resource-tag-support	keycloak	META-INF/jpa-changelog-8.0.0.xml	2023-09-02 16:20:50.48346	76	EXECUTED	8:87af6a1e6d241ca4b15801d1f86a297d	addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL		\N	DEV	\N	\N	3671647792
9.0.0-always-display-client	keycloak	META-INF/jpa-changelog-9.0.0.xml	2023-09-02 16:20:50.492356	77	EXECUTED	8:b44f8d9b7b6ea455305a6d72a200ed15	addColumn tableName=CLIENT		\N	DEV	\N	\N	3671647792
9.0.0-drop-constraints-for-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2023-09-02 16:20:50.494073	78	MARK_RAN	8:2d8ed5aaaeffd0cb004c046b4a903ac5	dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...		\N	DEV	\N	\N	3671647792
9.0.0-increase-column-size-federated-fk	keycloak	META-INF/jpa-changelog-9.0.0.xml	2023-09-02 16:20:50.506913	79	EXECUTED	8:e290c01fcbc275326c511633f6e2acde	modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...		\N	DEV	\N	\N	3671647792
9.0.0-recreate-constraints-after-column-increase	keycloak	META-INF/jpa-changelog-9.0.0.xml	2023-09-02 16:20:50.508688	80	MARK_RAN	8:c9db8784c33cea210872ac2d805439f8	addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...		\N	DEV	\N	\N	3671647792
9.0.1-add-index-to-client.client_id	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-09-02 16:20:50.522057	81	EXECUTED	8:95b676ce8fc546a1fcfb4c92fae4add5	createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT		\N	DEV	\N	\N	3671647792
9.0.1-KEYCLOAK-12579-drop-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-09-02 16:20:50.523808	82	MARK_RAN	8:38a6b2a41f5651018b1aca93a41401e5	dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	DEV	\N	\N	3671647792
9.0.1-KEYCLOAK-12579-add-not-null-constraint	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-09-02 16:20:50.529686	83	EXECUTED	8:3fb99bcad86a0229783123ac52f7609c	addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP		\N	DEV	\N	\N	3671647792
9.0.1-KEYCLOAK-12579-recreate-constraints	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-09-02 16:20:50.531799	84	MARK_RAN	8:64f27a6fdcad57f6f9153210f2ec1bdb	addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP		\N	DEV	\N	\N	3671647792
9.0.1-add-index-to-events	keycloak	META-INF/jpa-changelog-9.0.1.xml	2023-09-02 16:20:50.544384	85	EXECUTED	8:ab4f863f39adafd4c862f7ec01890abc	createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY		\N	DEV	\N	\N	3671647792
map-remove-ri	keycloak	META-INF/jpa-changelog-11.0.0.xml	2023-09-02 16:20:50.548874	86	EXECUTED	8:13c419a0eb336e91ee3a3bf8fda6e2a7	dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9		\N	DEV	\N	\N	3671647792
map-remove-ri	keycloak	META-INF/jpa-changelog-12.0.0.xml	2023-09-02 16:20:50.554699	87	EXECUTED	8:e3fb1e698e0471487f51af1ed80fe3ac	dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...		\N	DEV	\N	\N	3671647792
12.1.0-add-realm-localization-table	keycloak	META-INF/jpa-changelog-12.0.0.xml	2023-09-02 16:20:50.561933	88	EXECUTED	8:babadb686aab7b56562817e60bf0abd0	createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS		\N	DEV	\N	\N	3671647792
default-roles	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-09-02 16:20:50.567414	89	EXECUTED	8:72d03345fda8e2f17093d08801947773	addColumn tableName=REALM; customChange		\N	DEV	\N	\N	3671647792
default-roles-cleanup	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-09-02 16:20:50.573181	90	EXECUTED	8:61c9233951bd96ffecd9ba75f7d978a4	dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES		\N	DEV	\N	\N	3671647792
13.0.0-KEYCLOAK-16844	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-09-02 16:20:50.587597	91	EXECUTED	8:ea82e6ad945cec250af6372767b25525	createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION		\N	DEV	\N	\N	3671647792
map-remove-ri-13.0.0	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-09-02 16:20:50.593611	92	EXECUTED	8:d3f4a33f41d960ddacd7e2ef30d126b3	dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...		\N	DEV	\N	\N	3671647792
13.0.0-KEYCLOAK-17992-drop-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-09-02 16:20:50.595186	93	MARK_RAN	8:1284a27fbd049d65831cb6fc07c8a783	dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT		\N	DEV	\N	\N	3671647792
13.0.0-increase-column-size-federated	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-09-02 16:20:50.602505	94	EXECUTED	8:9d11b619db2ae27c25853b8a37cd0dea	modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT		\N	DEV	\N	\N	3671647792
13.0.0-KEYCLOAK-17992-recreate-constraints	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-09-02 16:20:50.604163	95	MARK_RAN	8:3002bb3997451bb9e8bac5c5cd8d6327	addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...		\N	DEV	\N	\N	3671647792
json-string-accomodation-fixed	keycloak	META-INF/jpa-changelog-13.0.0.xml	2023-09-02 16:20:50.610704	96	EXECUTED	8:dfbee0d6237a23ef4ccbb7a4e063c163	addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE		\N	DEV	\N	\N	3671647792
14.0.0-KEYCLOAK-11019	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-09-02 16:20:50.638103	97	EXECUTED	8:75f3e372df18d38c62734eebb986b960	createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION		\N	DEV	\N	\N	3671647792
14.0.0-KEYCLOAK-18286	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-09-02 16:20:50.639735	98	MARK_RAN	8:7fee73eddf84a6035691512c85637eef	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	DEV	\N	\N	3671647792
14.0.0-KEYCLOAK-18286-revert	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-09-02 16:20:50.753786	99	MARK_RAN	8:7a11134ab12820f999fbf3bb13c3adc8	dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	DEV	\N	\N	3671647792
14.0.0-KEYCLOAK-18286-supported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-09-02 16:20:50.849441	100	EXECUTED	8:c0f6eaac1f3be773ffe54cb5b8482b70	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	DEV	\N	\N	3671647792
14.0.0-KEYCLOAK-18286-unsupported-dbs	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-09-02 16:20:50.852487	101	MARK_RAN	8:18186f0008b86e0f0f49b0c4d0e842ac	createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES		\N	DEV	\N	\N	3671647792
KEYCLOAK-17267-add-index-to-user-attributes	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-09-02 16:20:50.869296	102	EXECUTED	8:09c2780bcb23b310a7019d217dc7b433	createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE		\N	DEV	\N	\N	3671647792
KEYCLOAK-18146-add-saml-art-binding-identifier	keycloak	META-INF/jpa-changelog-14.0.0.xml	2023-09-02 16:20:50.873655	103	EXECUTED	8:276a44955eab693c970a42880197fff2	customChange		\N	DEV	\N	\N	3671647792
15.0.0-KEYCLOAK-18467	keycloak	META-INF/jpa-changelog-15.0.0.xml	2023-09-02 16:20:50.879455	104	EXECUTED	8:ba8ee3b694d043f2bfc1a1079d0760d7	addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...		\N	DEV	\N	\N	3671647792
17.0.0-9562	keycloak	META-INF/jpa-changelog-17.0.0.xml	2023-09-02 16:20:50.893378	105	EXECUTED	8:5e06b1d75f5d17685485e610c2851b17	createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY		\N	DEV	\N	\N	3671647792
18.0.0-10625-IDX_ADMIN_EVENT_TIME	keycloak	META-INF/jpa-changelog-18.0.0.xml	2023-09-02 16:20:50.906301	106	EXECUTED	8:4b80546c1dc550ac552ee7b24a4ab7c0	createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY		\N	DEV	\N	\N	3671647792
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
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	28ee8c5f-84a4-4e7d-9297-d4add6b73677	f
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	40de88dd-7078-4c95-a08c-9214d8f9a23c	t
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	28c0d792-3eeb-4a58-a5c5-66de4535a38e	t
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	9f8c47c5-f5bb-43d9-bf7e-2185b334f551	t
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	e6ce5c35-1738-4124-afbb-eb1ec1e544ad	f
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	7c0eba15-b014-43f7-8743-8a5032630f1a	f
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	e4b7971f-0cd3-4b1c-a9bc-68121572ea49	t
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	f38fca92-1b44-47f8-8103-137ea6302594	t
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	18bd7b10-8b86-4597-990d-33b31d619943	f
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	ee8f97bb-0a7f-46c0-9bff-372bbca1838a	t
basic	15b98045-271a-4c46-bfc8-707aa9a167e6	t
basic	929e3ade-c24e-42ae-9068-ad821f76d46f	t
basic	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3	t
basic	65f1884c-e393-4986-a826-765b307dde23	t
basic	4c0819e0-3b20-435d-b416-f10095fa07b3	t
basic	051098c5-dc6f-4191-9f6d-4cdf558e16c1	t
basic	ea3b39b3-57cc-4729-a294-0eff71f6a8ba	f
basic	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99	f
basic	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38	f
basic	69c0f7aa-f1d4-4a70-b519-547340ba85bd	f
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
1974fe6f-0e2c-4333-b82d-b16b2fbd7950	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	f	${role_default-roles}	default-roles-master	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N	\N
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	f	${role_admin}	admin	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N	\N
635a2470-11f9-42b9-b831-7bcbe53231f2	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	f	${role_create-realm}	create-realm	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N	\N
edee5802-1cb0-4e16-8df4-107102bf7696	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_create-client}	create-client	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
d1ea641d-eaec-4f3d-b662-f3d9f80fd7e8	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_view-realm}	view-realm	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
78447411-007a-4fa5-bcc3-cf80b07f2234	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_view-users}	view-users	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
968bd48a-29fa-4683-8bb4-b2732e8bb9ae	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_view-clients}	view-clients	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
e49266a3-f95c-4fbd-b529-e43e8bc86707	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_view-events}	view-events	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
ab95702e-95aa-44e9-9301-a8a88be5a172	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_view-identity-providers}	view-identity-providers	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
73fca71c-ca6d-47c7-aa32-7e92cf7867d5	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_view-authorization}	view-authorization	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
2285e793-a0cc-420e-9a33-d5e6cd6d89dc	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_manage-realm}	manage-realm	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
8375db12-c60f-41e9-afeb-48e6e436615a	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_manage-users}	manage-users	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
bf10936d-6dc7-4b30-8d32-36771877330d	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_manage-clients}	manage-clients	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
cf6f2257-6e4c-4375-995a-628df1386cef	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_manage-events}	manage-events	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
d524fa7d-15af-4652-bc8b-ef240f760e7c	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_manage-identity-providers}	manage-identity-providers	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
1109fdec-d108-4341-8dbd-ae68936f529c	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_manage-authorization}	manage-authorization	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
e872465e-3a49-4a12-9865-ca48da5fafcb	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_query-users}	query-users	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
6abbb5a5-38c4-4709-95e9-d5a92ed4e5d6	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_query-clients}	query-clients	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
390b8fc2-5e35-4307-a151-45ccdeceb67f	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_query-realms}	query-realms	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
98922a50-4f57-4ac7-ad2f-f8a3694eec8c	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_query-groups}	query-groups	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
aeffb501-fe8c-4a34-b33f-ad254fad4583	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	t	${role_view-profile}	view-profile	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	\N
c8384e00-6e94-4ed6-b23c-e5a7b74c2534	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	t	${role_manage-account}	manage-account	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	\N
85f41a9a-b199-46c4-8334-b43596d1144b	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	t	${role_manage-account-links}	manage-account-links	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	\N
c3f7a13a-fa1a-4020-97cd-391ff5d64a97	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	t	${role_view-applications}	view-applications	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	\N
ab6ab0c7-d1db-49fe-839c-25ecf79c100b	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	t	${role_view-consent}	view-consent	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	\N
77485e5c-9ab9-4497-a30e-29c9e49d4d3d	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	t	${role_manage-consent}	manage-consent	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	\N
ccc77b10-65fb-45c2-8701-45cd54f8d862	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	t	${role_delete-account}	delete-account	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	57d16421-6954-4b9c-95e0-1faa5ae7ceb1	\N
51f757f8-6270-4ad4-b81f-73d7bcc563e4	b6223f8a-91f2-4e6c-aac7-30866b0dd555	t	${role_read-token}	read-token	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	b6223f8a-91f2-4e6c-aac7-30866b0dd555	\N
45f02534-7c41-4ac9-98d3-e00ba5074c16	1e263c90-0f4e-4193-98b8-af22e6e955ff	t	${role_impersonation}	impersonation	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1e263c90-0f4e-4193-98b8-af22e6e955ff	\N
90806870-9a51-4d74-97a2-851f5071af98	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	f	${role_offline-access}	offline_access	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N	\N
5f29377a-f425-4d9a-810e-57412464fd70	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	f	${role_uma_authorization}	uma_authorization	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	\N	\N
7494cb7e-1679-4b8d-a9c9-cc12383e9dd1	basic	f	${role_default-roles}	default-roles-basic	basic	\N	\N
a29dcaf6-472a-4fe7-9382-428868c7a302	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_create-client}	create-client	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
7368e24c-f938-4314-8d03-59702a09edf9	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_view-realm}	view-realm	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
6f52fa1b-defa-4e68-98a5-442aabda16c8	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_view-users}	view-users	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
2abc2f0b-ac86-4086-966a-ef3dd990e7d0	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_view-clients}	view-clients	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
03518a9b-ef39-4ca5-9596-fe9df59ba9f7	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_view-events}	view-events	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
4d41ed8b-7368-4433-9873-05163ac49c36	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_view-identity-providers}	view-identity-providers	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
bc9d6b2a-8967-4c75-8725-fe420ad208f6	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_view-authorization}	view-authorization	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
5cdcc7b1-4731-4231-a58b-6d9c5a4cfb77	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_manage-realm}	manage-realm	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
3a61e629-e02f-43ae-a585-95c6b4d7f210	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_manage-users}	manage-users	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
dea6017a-dab9-44e8-a531-7bc6389ba585	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_manage-clients}	manage-clients	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
671929d8-1f28-458c-b45c-65141eb3a192	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_manage-events}	manage-events	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
1fcd2d32-d260-4594-b57c-0c2cbdd5b5dc	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_manage-identity-providers}	manage-identity-providers	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
6c8c5d08-ec5e-4634-87f1-7bef2e0be003	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_manage-authorization}	manage-authorization	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
a4e95a1b-302c-4da3-b205-7e47f82d246e	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_query-users}	query-users	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
f103e95e-b94b-42fc-ad9f-099c4c6ec5cc	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_query-clients}	query-clients	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
7da99bff-9099-4ecd-8ae9-a0447deb5d31	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_query-realms}	query-realms	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
adadb897-284a-4ece-a327-0b665bd7df9a	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_query-groups}	query-groups	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
dff5f889-fbc4-4572-822a-8fe406cb2ae3	basic	f	${role_offline-access}	offline_access	basic	\N	\N
9cd55a3f-2fb3-42a5-acd2-b2eedb293877	basic	f	${role_uma_authorization}	uma_authorization	basic	\N	\N
cdf3e822-b1ef-464b-923a-3d87aedd6a63	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_realm-admin}	realm-admin	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
ddeb6067-6211-4b4f-91ed-b3f700a8fe26	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_view-authorization}	view-authorization	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
b058bc76-3847-43d2-a31d-1b4ca8f94610	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_manage-realm}	manage-realm	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
55eb346a-c84c-4bc3-9697-0d9296b1bfa5	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_create-client}	create-client	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
e1f09f58-27f3-4761-97d3-bd7eb5d18a31	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_manage-events}	manage-events	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
5cf7ac43-f17e-463f-9cb8-6a6536e50fa0	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_manage-authorization}	manage-authorization	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
b458b096-a36e-412a-8f8f-e4c93bd331bd	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_manage-identity-providers}	manage-identity-providers	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
e67ab361-6ad5-478c-b707-6a119252a84a	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_query-groups}	query-groups	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
b716602e-eabe-4f26-b390-2b8369b261e5	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_query-clients}	query-clients	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
2c257116-d953-40e4-a1a4-ea6da85260ca	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_view-events}	view-events	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
f93d32ed-4a3b-403e-abf0-b306b1cf129e	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_view-clients}	view-clients	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
e93e0cee-634f-4d2b-a6df-a6b438251868	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_manage-users}	manage-users	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
1ff342bd-561e-4249-b374-27cf753b12b2	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_impersonation}	impersonation	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
87ca8728-8f1b-41c4-b283-af10f155c624	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_view-identity-providers}	view-identity-providers	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
a5e7389d-1365-4615-a6d5-b96c730d54d7	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_view-users}	view-users	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
a119cfe5-c8ac-492d-8470-3c4af9f44ef6	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_query-realms}	query-realms	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
89f93dea-4c58-4c0e-9102-d56a795118f4	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_query-users}	query-users	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
aedc7dd7-90a8-421e-b22d-a1b55f6408ae	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_view-realm}	view-realm	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
ca49710c-dd78-4872-b8ab-1e9e2a0b5677	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	t	${role_manage-clients}	manage-clients	basic	9bae8a5f-36ba-428c-950c-cd2f6e41ba77	\N
aaa1dd55-3dc8-4ef2-b928-1541766e10cc	5e585604-c9c6-4335-a301-8867c079412b	t	${role_read-token}	read-token	basic	5e585604-c9c6-4335-a301-8867c079412b	\N
5b077aca-a82c-47c0-a996-635cfddbd20b	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	t	${role_manage-consent}	manage-consent	basic	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	\N
7162ebef-42e6-4065-9e2a-8eb718ca9123	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	t	${role_manage-account}	manage-account	basic	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	\N
6daaf192-bd4a-4d58-9143-80691f7e3227	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	t	${role_manage-account-links}	manage-account-links	basic	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	\N
2a3f0a53-3a24-4045-a73e-1922047e1145	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	t	${role_view-profile}	view-profile	basic	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	\N
946d677e-7f76-461e-8f25-f1c535d375c8	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	t	${role_delete-account}	delete-account	basic	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	\N
0099dc97-a0c7-4f34-820d-23c07e3b859d	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	t	${role_view-consent}	view-consent	basic	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	\N
4fa2176c-faba-480d-8d0d-42f03f5346f2	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	t	${role_view-applications}	view-applications	basic	ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	\N
cce144c8-b7ba-40bd-9527-6862a25a5334	5f0ba563-6817-4d84-836f-19ccf3c423d7	t	${role_impersonation}	impersonation	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5f0ba563-6817-4d84-836f-19ccf3c423d7	\N
\.


--
-- Data for Name: migration_model; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.migration_model (id, version, update_time) FROM stdin;
53fez	18.0.8	1693671653
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
-- Data for Name: policy_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.policy_config (policy_id, name, value) FROM stdin;
\.


--
-- Data for Name: protocol_mapper; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper (id, name, protocol, protocol_mapper_name, client_id, client_scope_id) FROM stdin;
a0584ec5-caad-47e4-8a15-57dcc2babe88	audience resolve	openid-connect	oidc-audience-resolve-mapper	8476c9a0-969c-4a13-b048-ac0c5820a8ca	\N
f03e9357-3e9c-4c49-ad17-eae3ee1a5b2f	locale	openid-connect	oidc-usermodel-attribute-mapper	a64aac00-ec52-416b-b469-4b886bd85146	\N
f01b2360-88ca-413b-9f88-5cdc746c79b7	role list	saml	saml-role-list-mapper	\N	40de88dd-7078-4c95-a08c-9214d8f9a23c
0391b2e3-9945-43ae-9ceb-50af795d722c	full name	openid-connect	oidc-full-name-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
13e8810b-2657-437c-83e0-2a45d2a565fd	family name	openid-connect	oidc-usermodel-property-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
df35ac78-a560-4fbf-bb76-de888cda0d97	given name	openid-connect	oidc-usermodel-property-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
5e3deba2-ba78-4fea-ab15-46303fbe14f9	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
38ea6ee1-9745-4a66-aece-2fe93ea49f51	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
921fa736-c270-4907-9d89-1f134dfafb21	username	openid-connect	oidc-usermodel-property-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
64cce34c-2e58-4bf8-9896-9cd83f3835b2	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
9df25358-860e-416e-97c8-7d6a4a1eb0be	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
1c045c9f-51a4-4a59-b6f8-596a66bcdc71	website	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
5a7c210a-d04b-415d-93b9-8149df064df6	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
92e126be-4b48-4bb7-bfaa-917df07cc556	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
56ff6bb7-cf18-49d3-9d3a-059887d0ee15	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
214e5ea2-13f8-4874-abaf-568c28bfad61	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
cfd4f8dd-6dc5-445d-acbe-5a912260d3d3	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	28c0d792-3eeb-4a58-a5c5-66de4535a38e
32e17ba4-fad8-401e-9413-4535676250b4	email	openid-connect	oidc-usermodel-property-mapper	\N	9f8c47c5-f5bb-43d9-bf7e-2185b334f551
87353d2f-48e8-441f-88d7-63274cdef490	email verified	openid-connect	oidc-usermodel-property-mapper	\N	9f8c47c5-f5bb-43d9-bf7e-2185b334f551
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	address	openid-connect	oidc-address-mapper	\N	e6ce5c35-1738-4124-afbb-eb1ec1e544ad
1d8da28c-20d8-48e5-8ee0-085fa11544ed	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	7c0eba15-b014-43f7-8743-8a5032630f1a
cf284296-6cd4-4d5a-a570-d0d242362345	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	7c0eba15-b014-43f7-8743-8a5032630f1a
d2994c3e-76c9-4813-8c2e-7efa775ed13c	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	e4b7971f-0cd3-4b1c-a9bc-68121572ea49
5f3349dd-cca7-4bdb-b384-1553210fae0b	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	e4b7971f-0cd3-4b1c-a9bc-68121572ea49
f0c2727b-ea5a-4831-a7df-7ce8538b200b	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	e4b7971f-0cd3-4b1c-a9bc-68121572ea49
615b5af7-fc87-4cec-86a2-d8aa9411eda8	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	f38fca92-1b44-47f8-8103-137ea6302594
7447efd2-c3f0-4655-b488-3a8a03876483	upn	openid-connect	oidc-usermodel-property-mapper	\N	18bd7b10-8b86-4597-990d-33b31d619943
068d53ee-1e75-4245-a41d-c097567ee8c9	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	18bd7b10-8b86-4597-990d-33b31d619943
f6a7af07-56d6-438e-8550-f61a537f1791	acr loa level	openid-connect	oidc-acr-mapper	\N	ee8f97bb-0a7f-46c0-9bff-372bbca1838a
62229ba5-f13e-4e9b-89b7-496cba00d90e	upn	openid-connect	oidc-usermodel-property-mapper	\N	69c0f7aa-f1d4-4a70-b519-547340ba85bd
2b979d43-fa1c-4c85-98b5-7898a00bfb4b	groups	openid-connect	oidc-usermodel-realm-role-mapper	\N	69c0f7aa-f1d4-4a70-b519-547340ba85bd
14d7d41b-8c88-4412-ab85-2173164e17b1	acr loa level	openid-connect	oidc-acr-mapper	\N	051098c5-dc6f-4191-9f6d-4cdf558e16c1
a49cad18-e9e0-4035-9c43-8099a04f3ca9	phone number verified	openid-connect	oidc-usermodel-attribute-mapper	\N	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38
5e6f84b3-0bc9-419e-8eeb-18270c212f88	phone number	openid-connect	oidc-usermodel-attribute-mapper	\N	6cc732bb-5f08-4e49-8c00-dbb42f0e7a38
fe854377-43ab-4e0f-b0fa-d685a303f2a4	address	openid-connect	oidc-address-mapper	\N	3ecce92e-1b5c-4bd4-8d81-b8d4076a0c99
3e3487a6-1b69-42b7-890d-e24191b3f421	given name	openid-connect	oidc-usermodel-property-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
46e5827f-9b13-4505-9cf6-52e67cca91bb	gender	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
2069a29f-0d12-476c-9a86-ac3b8608338a	zoneinfo	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
ca595a39-474e-40f0-8fbd-962a03de5fa3	nickname	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
7fc66e8b-4d31-4243-823a-ad9a11649d38	username	openid-connect	oidc-usermodel-property-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
7ca2fcae-09dc-465b-8245-d4428cd17509	profile	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
9cb3ee8b-bbc3-42f8-84b3-c1adcc1a14fe	locale	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
ce75300c-6c76-4f4a-be4f-75e5cf402199	picture	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
873bfc09-d34e-45bb-89b0-188ae3922c1c	birthdate	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
1b3a8cc8-71f1-4bcd-9c49-69b4890b15b2	family name	openid-connect	oidc-usermodel-property-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
5a1c497c-402d-4dd0-a103-4e947c169857	website	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
c567f41c-579f-490f-aa3b-d69d44bc78e2	updated at	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
34814636-0aed-4f73-8ea2-c2076c7f7611	middle name	openid-connect	oidc-usermodel-attribute-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
cf644261-0049-4a90-940a-4b4c7ad8a8f3	full name	openid-connect	oidc-full-name-mapper	\N	929e3ade-c24e-42ae-9068-ad821f76d46f
80540b88-14ec-4e74-8674-b7d5e195df33	email verified	openid-connect	oidc-usermodel-property-mapper	\N	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3
b5c4960e-9522-48cf-a3c2-ba011a136f68	email	openid-connect	oidc-usermodel-property-mapper	\N	7d735ff1-eeeb-433b-ba0b-f2ba17ddddd3
060e1e2b-d257-49b6-abee-efbc39930364	role list	saml	saml-role-list-mapper	\N	15b98045-271a-4c46-bfc8-707aa9a167e6
a6f5dad8-0d08-4efc-9884-1cd78dcdb800	allowed web origins	openid-connect	oidc-allowed-origins-mapper	\N	4c0819e0-3b20-435d-b416-f10095fa07b3
dbc28847-ce2f-4d43-98ff-2ec292ef85e8	audience resolve	openid-connect	oidc-audience-resolve-mapper	\N	65f1884c-e393-4986-a826-765b307dde23
265eb7e3-ced2-4f70-baf9-702ba2a129b1	client roles	openid-connect	oidc-usermodel-client-role-mapper	\N	65f1884c-e393-4986-a826-765b307dde23
2ebd6ea7-6cd8-4ced-9916-6c747698b01f	realm roles	openid-connect	oidc-usermodel-realm-role-mapper	\N	65f1884c-e393-4986-a826-765b307dde23
a71c8de6-9943-4c16-936d-2ffc17f32850	audience resolve	openid-connect	oidc-audience-resolve-mapper	24a446dc-d398-4ddd-a9b6-06fe1c94d899	\N
29c0cdc7-2fa0-49d5-aeb5-ab63283ad2cb	locale	openid-connect	oidc-usermodel-attribute-mapper	2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	\N
\.


--
-- Data for Name: protocol_mapper_config; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.protocol_mapper_config (protocol_mapper_id, value, name) FROM stdin;
f03e9357-3e9c-4c49-ad17-eae3ee1a5b2f	true	userinfo.token.claim
f03e9357-3e9c-4c49-ad17-eae3ee1a5b2f	locale	user.attribute
f03e9357-3e9c-4c49-ad17-eae3ee1a5b2f	true	id.token.claim
f03e9357-3e9c-4c49-ad17-eae3ee1a5b2f	true	access.token.claim
f03e9357-3e9c-4c49-ad17-eae3ee1a5b2f	locale	claim.name
f03e9357-3e9c-4c49-ad17-eae3ee1a5b2f	String	jsonType.label
f01b2360-88ca-413b-9f88-5cdc746c79b7	false	single
f01b2360-88ca-413b-9f88-5cdc746c79b7	Basic	attribute.nameformat
f01b2360-88ca-413b-9f88-5cdc746c79b7	Role	attribute.name
0391b2e3-9945-43ae-9ceb-50af795d722c	true	userinfo.token.claim
0391b2e3-9945-43ae-9ceb-50af795d722c	true	id.token.claim
0391b2e3-9945-43ae-9ceb-50af795d722c	true	access.token.claim
13e8810b-2657-437c-83e0-2a45d2a565fd	true	userinfo.token.claim
13e8810b-2657-437c-83e0-2a45d2a565fd	lastName	user.attribute
13e8810b-2657-437c-83e0-2a45d2a565fd	true	id.token.claim
13e8810b-2657-437c-83e0-2a45d2a565fd	true	access.token.claim
13e8810b-2657-437c-83e0-2a45d2a565fd	family_name	claim.name
13e8810b-2657-437c-83e0-2a45d2a565fd	String	jsonType.label
df35ac78-a560-4fbf-bb76-de888cda0d97	true	userinfo.token.claim
df35ac78-a560-4fbf-bb76-de888cda0d97	firstName	user.attribute
df35ac78-a560-4fbf-bb76-de888cda0d97	true	id.token.claim
df35ac78-a560-4fbf-bb76-de888cda0d97	true	access.token.claim
df35ac78-a560-4fbf-bb76-de888cda0d97	given_name	claim.name
df35ac78-a560-4fbf-bb76-de888cda0d97	String	jsonType.label
5e3deba2-ba78-4fea-ab15-46303fbe14f9	true	userinfo.token.claim
5e3deba2-ba78-4fea-ab15-46303fbe14f9	middleName	user.attribute
5e3deba2-ba78-4fea-ab15-46303fbe14f9	true	id.token.claim
5e3deba2-ba78-4fea-ab15-46303fbe14f9	true	access.token.claim
5e3deba2-ba78-4fea-ab15-46303fbe14f9	middle_name	claim.name
5e3deba2-ba78-4fea-ab15-46303fbe14f9	String	jsonType.label
38ea6ee1-9745-4a66-aece-2fe93ea49f51	true	userinfo.token.claim
38ea6ee1-9745-4a66-aece-2fe93ea49f51	nickname	user.attribute
38ea6ee1-9745-4a66-aece-2fe93ea49f51	true	id.token.claim
38ea6ee1-9745-4a66-aece-2fe93ea49f51	true	access.token.claim
38ea6ee1-9745-4a66-aece-2fe93ea49f51	nickname	claim.name
38ea6ee1-9745-4a66-aece-2fe93ea49f51	String	jsonType.label
921fa736-c270-4907-9d89-1f134dfafb21	true	userinfo.token.claim
921fa736-c270-4907-9d89-1f134dfafb21	username	user.attribute
921fa736-c270-4907-9d89-1f134dfafb21	true	id.token.claim
921fa736-c270-4907-9d89-1f134dfafb21	true	access.token.claim
921fa736-c270-4907-9d89-1f134dfafb21	preferred_username	claim.name
921fa736-c270-4907-9d89-1f134dfafb21	String	jsonType.label
64cce34c-2e58-4bf8-9896-9cd83f3835b2	true	userinfo.token.claim
64cce34c-2e58-4bf8-9896-9cd83f3835b2	profile	user.attribute
64cce34c-2e58-4bf8-9896-9cd83f3835b2	true	id.token.claim
64cce34c-2e58-4bf8-9896-9cd83f3835b2	true	access.token.claim
64cce34c-2e58-4bf8-9896-9cd83f3835b2	profile	claim.name
64cce34c-2e58-4bf8-9896-9cd83f3835b2	String	jsonType.label
9df25358-860e-416e-97c8-7d6a4a1eb0be	true	userinfo.token.claim
9df25358-860e-416e-97c8-7d6a4a1eb0be	picture	user.attribute
9df25358-860e-416e-97c8-7d6a4a1eb0be	true	id.token.claim
9df25358-860e-416e-97c8-7d6a4a1eb0be	true	access.token.claim
9df25358-860e-416e-97c8-7d6a4a1eb0be	picture	claim.name
9df25358-860e-416e-97c8-7d6a4a1eb0be	String	jsonType.label
1c045c9f-51a4-4a59-b6f8-596a66bcdc71	true	userinfo.token.claim
1c045c9f-51a4-4a59-b6f8-596a66bcdc71	website	user.attribute
1c045c9f-51a4-4a59-b6f8-596a66bcdc71	true	id.token.claim
1c045c9f-51a4-4a59-b6f8-596a66bcdc71	true	access.token.claim
1c045c9f-51a4-4a59-b6f8-596a66bcdc71	website	claim.name
1c045c9f-51a4-4a59-b6f8-596a66bcdc71	String	jsonType.label
5a7c210a-d04b-415d-93b9-8149df064df6	true	userinfo.token.claim
5a7c210a-d04b-415d-93b9-8149df064df6	gender	user.attribute
5a7c210a-d04b-415d-93b9-8149df064df6	true	id.token.claim
5a7c210a-d04b-415d-93b9-8149df064df6	true	access.token.claim
5a7c210a-d04b-415d-93b9-8149df064df6	gender	claim.name
5a7c210a-d04b-415d-93b9-8149df064df6	String	jsonType.label
92e126be-4b48-4bb7-bfaa-917df07cc556	true	userinfo.token.claim
92e126be-4b48-4bb7-bfaa-917df07cc556	birthdate	user.attribute
92e126be-4b48-4bb7-bfaa-917df07cc556	true	id.token.claim
92e126be-4b48-4bb7-bfaa-917df07cc556	true	access.token.claim
92e126be-4b48-4bb7-bfaa-917df07cc556	birthdate	claim.name
92e126be-4b48-4bb7-bfaa-917df07cc556	String	jsonType.label
56ff6bb7-cf18-49d3-9d3a-059887d0ee15	true	userinfo.token.claim
56ff6bb7-cf18-49d3-9d3a-059887d0ee15	zoneinfo	user.attribute
56ff6bb7-cf18-49d3-9d3a-059887d0ee15	true	id.token.claim
56ff6bb7-cf18-49d3-9d3a-059887d0ee15	true	access.token.claim
56ff6bb7-cf18-49d3-9d3a-059887d0ee15	zoneinfo	claim.name
56ff6bb7-cf18-49d3-9d3a-059887d0ee15	String	jsonType.label
214e5ea2-13f8-4874-abaf-568c28bfad61	true	userinfo.token.claim
214e5ea2-13f8-4874-abaf-568c28bfad61	locale	user.attribute
214e5ea2-13f8-4874-abaf-568c28bfad61	true	id.token.claim
214e5ea2-13f8-4874-abaf-568c28bfad61	true	access.token.claim
214e5ea2-13f8-4874-abaf-568c28bfad61	locale	claim.name
214e5ea2-13f8-4874-abaf-568c28bfad61	String	jsonType.label
cfd4f8dd-6dc5-445d-acbe-5a912260d3d3	true	userinfo.token.claim
cfd4f8dd-6dc5-445d-acbe-5a912260d3d3	updatedAt	user.attribute
cfd4f8dd-6dc5-445d-acbe-5a912260d3d3	true	id.token.claim
cfd4f8dd-6dc5-445d-acbe-5a912260d3d3	true	access.token.claim
cfd4f8dd-6dc5-445d-acbe-5a912260d3d3	updated_at	claim.name
cfd4f8dd-6dc5-445d-acbe-5a912260d3d3	long	jsonType.label
32e17ba4-fad8-401e-9413-4535676250b4	true	userinfo.token.claim
32e17ba4-fad8-401e-9413-4535676250b4	email	user.attribute
32e17ba4-fad8-401e-9413-4535676250b4	true	id.token.claim
32e17ba4-fad8-401e-9413-4535676250b4	true	access.token.claim
32e17ba4-fad8-401e-9413-4535676250b4	email	claim.name
32e17ba4-fad8-401e-9413-4535676250b4	String	jsonType.label
87353d2f-48e8-441f-88d7-63274cdef490	true	userinfo.token.claim
87353d2f-48e8-441f-88d7-63274cdef490	emailVerified	user.attribute
87353d2f-48e8-441f-88d7-63274cdef490	true	id.token.claim
87353d2f-48e8-441f-88d7-63274cdef490	true	access.token.claim
87353d2f-48e8-441f-88d7-63274cdef490	email_verified	claim.name
87353d2f-48e8-441f-88d7-63274cdef490	boolean	jsonType.label
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	formatted	user.attribute.formatted
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	country	user.attribute.country
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	postal_code	user.attribute.postal_code
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	true	userinfo.token.claim
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	street	user.attribute.street
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	true	id.token.claim
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	region	user.attribute.region
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	true	access.token.claim
dbbf0fc6-9608-4e0e-91ec-51162e8debf7	locality	user.attribute.locality
1d8da28c-20d8-48e5-8ee0-085fa11544ed	true	userinfo.token.claim
1d8da28c-20d8-48e5-8ee0-085fa11544ed	phoneNumber	user.attribute
1d8da28c-20d8-48e5-8ee0-085fa11544ed	true	id.token.claim
1d8da28c-20d8-48e5-8ee0-085fa11544ed	true	access.token.claim
1d8da28c-20d8-48e5-8ee0-085fa11544ed	phone_number	claim.name
1d8da28c-20d8-48e5-8ee0-085fa11544ed	String	jsonType.label
cf284296-6cd4-4d5a-a570-d0d242362345	true	userinfo.token.claim
cf284296-6cd4-4d5a-a570-d0d242362345	phoneNumberVerified	user.attribute
cf284296-6cd4-4d5a-a570-d0d242362345	true	id.token.claim
cf284296-6cd4-4d5a-a570-d0d242362345	true	access.token.claim
cf284296-6cd4-4d5a-a570-d0d242362345	phone_number_verified	claim.name
cf284296-6cd4-4d5a-a570-d0d242362345	boolean	jsonType.label
d2994c3e-76c9-4813-8c2e-7efa775ed13c	true	multivalued
d2994c3e-76c9-4813-8c2e-7efa775ed13c	foo	user.attribute
d2994c3e-76c9-4813-8c2e-7efa775ed13c	true	access.token.claim
d2994c3e-76c9-4813-8c2e-7efa775ed13c	realm_access.roles	claim.name
d2994c3e-76c9-4813-8c2e-7efa775ed13c	String	jsonType.label
5f3349dd-cca7-4bdb-b384-1553210fae0b	true	multivalued
5f3349dd-cca7-4bdb-b384-1553210fae0b	foo	user.attribute
5f3349dd-cca7-4bdb-b384-1553210fae0b	true	access.token.claim
5f3349dd-cca7-4bdb-b384-1553210fae0b	resource_access.${client_id}.roles	claim.name
5f3349dd-cca7-4bdb-b384-1553210fae0b	String	jsonType.label
7447efd2-c3f0-4655-b488-3a8a03876483	true	userinfo.token.claim
7447efd2-c3f0-4655-b488-3a8a03876483	username	user.attribute
7447efd2-c3f0-4655-b488-3a8a03876483	true	id.token.claim
7447efd2-c3f0-4655-b488-3a8a03876483	true	access.token.claim
7447efd2-c3f0-4655-b488-3a8a03876483	upn	claim.name
7447efd2-c3f0-4655-b488-3a8a03876483	String	jsonType.label
068d53ee-1e75-4245-a41d-c097567ee8c9	true	multivalued
068d53ee-1e75-4245-a41d-c097567ee8c9	foo	user.attribute
068d53ee-1e75-4245-a41d-c097567ee8c9	true	id.token.claim
068d53ee-1e75-4245-a41d-c097567ee8c9	true	access.token.claim
068d53ee-1e75-4245-a41d-c097567ee8c9	groups	claim.name
068d53ee-1e75-4245-a41d-c097567ee8c9	String	jsonType.label
f6a7af07-56d6-438e-8550-f61a537f1791	true	id.token.claim
f6a7af07-56d6-438e-8550-f61a537f1791	true	access.token.claim
62229ba5-f13e-4e9b-89b7-496cba00d90e	true	userinfo.token.claim
62229ba5-f13e-4e9b-89b7-496cba00d90e	username	user.attribute
62229ba5-f13e-4e9b-89b7-496cba00d90e	true	id.token.claim
62229ba5-f13e-4e9b-89b7-496cba00d90e	true	access.token.claim
62229ba5-f13e-4e9b-89b7-496cba00d90e	upn	claim.name
62229ba5-f13e-4e9b-89b7-496cba00d90e	String	jsonType.label
2b979d43-fa1c-4c85-98b5-7898a00bfb4b	true	multivalued
2b979d43-fa1c-4c85-98b5-7898a00bfb4b	true	userinfo.token.claim
2b979d43-fa1c-4c85-98b5-7898a00bfb4b	foo	user.attribute
2b979d43-fa1c-4c85-98b5-7898a00bfb4b	true	id.token.claim
2b979d43-fa1c-4c85-98b5-7898a00bfb4b	true	access.token.claim
2b979d43-fa1c-4c85-98b5-7898a00bfb4b	groups	claim.name
2b979d43-fa1c-4c85-98b5-7898a00bfb4b	String	jsonType.label
14d7d41b-8c88-4412-ab85-2173164e17b1	true	id.token.claim
14d7d41b-8c88-4412-ab85-2173164e17b1	true	access.token.claim
14d7d41b-8c88-4412-ab85-2173164e17b1	true	userinfo.token.claim
a49cad18-e9e0-4035-9c43-8099a04f3ca9	true	userinfo.token.claim
a49cad18-e9e0-4035-9c43-8099a04f3ca9	phoneNumberVerified	user.attribute
a49cad18-e9e0-4035-9c43-8099a04f3ca9	true	id.token.claim
a49cad18-e9e0-4035-9c43-8099a04f3ca9	true	access.token.claim
a49cad18-e9e0-4035-9c43-8099a04f3ca9	phone_number_verified	claim.name
a49cad18-e9e0-4035-9c43-8099a04f3ca9	boolean	jsonType.label
5e6f84b3-0bc9-419e-8eeb-18270c212f88	true	userinfo.token.claim
5e6f84b3-0bc9-419e-8eeb-18270c212f88	phoneNumber	user.attribute
5e6f84b3-0bc9-419e-8eeb-18270c212f88	true	id.token.claim
5e6f84b3-0bc9-419e-8eeb-18270c212f88	true	access.token.claim
5e6f84b3-0bc9-419e-8eeb-18270c212f88	phone_number	claim.name
5e6f84b3-0bc9-419e-8eeb-18270c212f88	String	jsonType.label
fe854377-43ab-4e0f-b0fa-d685a303f2a4	formatted	user.attribute.formatted
fe854377-43ab-4e0f-b0fa-d685a303f2a4	country	user.attribute.country
fe854377-43ab-4e0f-b0fa-d685a303f2a4	postal_code	user.attribute.postal_code
fe854377-43ab-4e0f-b0fa-d685a303f2a4	true	userinfo.token.claim
fe854377-43ab-4e0f-b0fa-d685a303f2a4	street	user.attribute.street
fe854377-43ab-4e0f-b0fa-d685a303f2a4	true	id.token.claim
fe854377-43ab-4e0f-b0fa-d685a303f2a4	region	user.attribute.region
fe854377-43ab-4e0f-b0fa-d685a303f2a4	true	access.token.claim
fe854377-43ab-4e0f-b0fa-d685a303f2a4	locality	user.attribute.locality
3e3487a6-1b69-42b7-890d-e24191b3f421	true	userinfo.token.claim
3e3487a6-1b69-42b7-890d-e24191b3f421	firstName	user.attribute
3e3487a6-1b69-42b7-890d-e24191b3f421	true	id.token.claim
3e3487a6-1b69-42b7-890d-e24191b3f421	true	access.token.claim
3e3487a6-1b69-42b7-890d-e24191b3f421	given_name	claim.name
3e3487a6-1b69-42b7-890d-e24191b3f421	String	jsonType.label
46e5827f-9b13-4505-9cf6-52e67cca91bb	true	userinfo.token.claim
46e5827f-9b13-4505-9cf6-52e67cca91bb	gender	user.attribute
46e5827f-9b13-4505-9cf6-52e67cca91bb	true	id.token.claim
46e5827f-9b13-4505-9cf6-52e67cca91bb	true	access.token.claim
46e5827f-9b13-4505-9cf6-52e67cca91bb	gender	claim.name
46e5827f-9b13-4505-9cf6-52e67cca91bb	String	jsonType.label
2069a29f-0d12-476c-9a86-ac3b8608338a	true	userinfo.token.claim
2069a29f-0d12-476c-9a86-ac3b8608338a	zoneinfo	user.attribute
2069a29f-0d12-476c-9a86-ac3b8608338a	true	id.token.claim
2069a29f-0d12-476c-9a86-ac3b8608338a	true	access.token.claim
2069a29f-0d12-476c-9a86-ac3b8608338a	zoneinfo	claim.name
2069a29f-0d12-476c-9a86-ac3b8608338a	String	jsonType.label
ca595a39-474e-40f0-8fbd-962a03de5fa3	true	userinfo.token.claim
ca595a39-474e-40f0-8fbd-962a03de5fa3	nickname	user.attribute
ca595a39-474e-40f0-8fbd-962a03de5fa3	true	id.token.claim
ca595a39-474e-40f0-8fbd-962a03de5fa3	true	access.token.claim
ca595a39-474e-40f0-8fbd-962a03de5fa3	nickname	claim.name
ca595a39-474e-40f0-8fbd-962a03de5fa3	String	jsonType.label
7fc66e8b-4d31-4243-823a-ad9a11649d38	true	userinfo.token.claim
7fc66e8b-4d31-4243-823a-ad9a11649d38	username	user.attribute
7fc66e8b-4d31-4243-823a-ad9a11649d38	true	id.token.claim
7fc66e8b-4d31-4243-823a-ad9a11649d38	true	access.token.claim
7fc66e8b-4d31-4243-823a-ad9a11649d38	preferred_username	claim.name
7fc66e8b-4d31-4243-823a-ad9a11649d38	String	jsonType.label
7ca2fcae-09dc-465b-8245-d4428cd17509	true	userinfo.token.claim
7ca2fcae-09dc-465b-8245-d4428cd17509	profile	user.attribute
7ca2fcae-09dc-465b-8245-d4428cd17509	true	id.token.claim
7ca2fcae-09dc-465b-8245-d4428cd17509	true	access.token.claim
7ca2fcae-09dc-465b-8245-d4428cd17509	profile	claim.name
7ca2fcae-09dc-465b-8245-d4428cd17509	String	jsonType.label
9cb3ee8b-bbc3-42f8-84b3-c1adcc1a14fe	true	userinfo.token.claim
9cb3ee8b-bbc3-42f8-84b3-c1adcc1a14fe	locale	user.attribute
9cb3ee8b-bbc3-42f8-84b3-c1adcc1a14fe	true	id.token.claim
9cb3ee8b-bbc3-42f8-84b3-c1adcc1a14fe	true	access.token.claim
9cb3ee8b-bbc3-42f8-84b3-c1adcc1a14fe	locale	claim.name
9cb3ee8b-bbc3-42f8-84b3-c1adcc1a14fe	String	jsonType.label
ce75300c-6c76-4f4a-be4f-75e5cf402199	true	userinfo.token.claim
ce75300c-6c76-4f4a-be4f-75e5cf402199	picture	user.attribute
ce75300c-6c76-4f4a-be4f-75e5cf402199	true	id.token.claim
ce75300c-6c76-4f4a-be4f-75e5cf402199	true	access.token.claim
ce75300c-6c76-4f4a-be4f-75e5cf402199	picture	claim.name
ce75300c-6c76-4f4a-be4f-75e5cf402199	String	jsonType.label
873bfc09-d34e-45bb-89b0-188ae3922c1c	true	userinfo.token.claim
873bfc09-d34e-45bb-89b0-188ae3922c1c	birthdate	user.attribute
873bfc09-d34e-45bb-89b0-188ae3922c1c	true	id.token.claim
873bfc09-d34e-45bb-89b0-188ae3922c1c	true	access.token.claim
873bfc09-d34e-45bb-89b0-188ae3922c1c	birthdate	claim.name
873bfc09-d34e-45bb-89b0-188ae3922c1c	String	jsonType.label
1b3a8cc8-71f1-4bcd-9c49-69b4890b15b2	true	userinfo.token.claim
1b3a8cc8-71f1-4bcd-9c49-69b4890b15b2	lastName	user.attribute
1b3a8cc8-71f1-4bcd-9c49-69b4890b15b2	true	id.token.claim
1b3a8cc8-71f1-4bcd-9c49-69b4890b15b2	true	access.token.claim
1b3a8cc8-71f1-4bcd-9c49-69b4890b15b2	family_name	claim.name
1b3a8cc8-71f1-4bcd-9c49-69b4890b15b2	String	jsonType.label
5a1c497c-402d-4dd0-a103-4e947c169857	true	userinfo.token.claim
5a1c497c-402d-4dd0-a103-4e947c169857	website	user.attribute
5a1c497c-402d-4dd0-a103-4e947c169857	true	id.token.claim
5a1c497c-402d-4dd0-a103-4e947c169857	true	access.token.claim
5a1c497c-402d-4dd0-a103-4e947c169857	website	claim.name
5a1c497c-402d-4dd0-a103-4e947c169857	String	jsonType.label
c567f41c-579f-490f-aa3b-d69d44bc78e2	true	userinfo.token.claim
c567f41c-579f-490f-aa3b-d69d44bc78e2	updatedAt	user.attribute
c567f41c-579f-490f-aa3b-d69d44bc78e2	true	id.token.claim
c567f41c-579f-490f-aa3b-d69d44bc78e2	true	access.token.claim
c567f41c-579f-490f-aa3b-d69d44bc78e2	updated_at	claim.name
c567f41c-579f-490f-aa3b-d69d44bc78e2	long	jsonType.label
34814636-0aed-4f73-8ea2-c2076c7f7611	true	userinfo.token.claim
34814636-0aed-4f73-8ea2-c2076c7f7611	middleName	user.attribute
34814636-0aed-4f73-8ea2-c2076c7f7611	true	id.token.claim
34814636-0aed-4f73-8ea2-c2076c7f7611	true	access.token.claim
34814636-0aed-4f73-8ea2-c2076c7f7611	middle_name	claim.name
34814636-0aed-4f73-8ea2-c2076c7f7611	String	jsonType.label
cf644261-0049-4a90-940a-4b4c7ad8a8f3	true	id.token.claim
cf644261-0049-4a90-940a-4b4c7ad8a8f3	true	access.token.claim
cf644261-0049-4a90-940a-4b4c7ad8a8f3	true	userinfo.token.claim
80540b88-14ec-4e74-8674-b7d5e195df33	true	userinfo.token.claim
80540b88-14ec-4e74-8674-b7d5e195df33	emailVerified	user.attribute
80540b88-14ec-4e74-8674-b7d5e195df33	true	id.token.claim
80540b88-14ec-4e74-8674-b7d5e195df33	true	access.token.claim
80540b88-14ec-4e74-8674-b7d5e195df33	email_verified	claim.name
80540b88-14ec-4e74-8674-b7d5e195df33	boolean	jsonType.label
b5c4960e-9522-48cf-a3c2-ba011a136f68	true	userinfo.token.claim
b5c4960e-9522-48cf-a3c2-ba011a136f68	email	user.attribute
b5c4960e-9522-48cf-a3c2-ba011a136f68	true	id.token.claim
b5c4960e-9522-48cf-a3c2-ba011a136f68	true	access.token.claim
b5c4960e-9522-48cf-a3c2-ba011a136f68	email	claim.name
b5c4960e-9522-48cf-a3c2-ba011a136f68	String	jsonType.label
060e1e2b-d257-49b6-abee-efbc39930364	false	single
060e1e2b-d257-49b6-abee-efbc39930364	Basic	attribute.nameformat
060e1e2b-d257-49b6-abee-efbc39930364	Role	attribute.name
265eb7e3-ced2-4f70-baf9-702ba2a129b1	foo	user.attribute
265eb7e3-ced2-4f70-baf9-702ba2a129b1	true	access.token.claim
265eb7e3-ced2-4f70-baf9-702ba2a129b1	resource_access.${client_id}.roles	claim.name
265eb7e3-ced2-4f70-baf9-702ba2a129b1	String	jsonType.label
265eb7e3-ced2-4f70-baf9-702ba2a129b1	true	multivalued
2ebd6ea7-6cd8-4ced-9916-6c747698b01f	foo	user.attribute
2ebd6ea7-6cd8-4ced-9916-6c747698b01f	true	access.token.claim
2ebd6ea7-6cd8-4ced-9916-6c747698b01f	realm_access.roles	claim.name
2ebd6ea7-6cd8-4ced-9916-6c747698b01f	String	jsonType.label
2ebd6ea7-6cd8-4ced-9916-6c747698b01f	true	multivalued
29c0cdc7-2fa0-49d5-aeb5-ab63283ad2cb	true	userinfo.token.claim
29c0cdc7-2fa0-49d5-aeb5-ab63283ad2cb	locale	user.attribute
29c0cdc7-2fa0-49d5-aeb5-ab63283ad2cb	true	id.token.claim
29c0cdc7-2fa0-49d5-aeb5-ab63283ad2cb	true	access.token.claim
29c0cdc7-2fa0-49d5-aeb5-ab63283ad2cb	locale	claim.name
29c0cdc7-2fa0-49d5-aeb5-ab63283ad2cb	String	jsonType.label
\.


--
-- Data for Name: realm; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm (id, access_code_lifespan, user_action_lifespan, access_token_lifespan, account_theme, admin_theme, email_theme, enabled, events_enabled, events_expiration, login_theme, name, not_before, password_policy, registration_allowed, remember_me, reset_password_allowed, social, ssl_required, sso_idle_timeout, sso_max_lifespan, update_profile_on_soc_login, verify_email, master_admin_client, login_lifespan, internationalization_enabled, default_locale, reg_email_as_username, admin_events_enabled, admin_events_details_enabled, edit_username_allowed, otp_policy_counter, otp_policy_window, otp_policy_period, otp_policy_digits, otp_policy_alg, otp_policy_type, browser_flow, registration_flow, direct_grant_flow, reset_credentials_flow, client_auth_flow, offline_session_idle_timeout, revoke_refresh_token, access_token_life_implicit, login_with_email_allowed, duplicate_emails_allowed, docker_auth_flow, refresh_token_max_reuse, allow_user_managed_access, sso_max_lifespan_remember_me, sso_idle_timeout_remember_me, default_role) FROM stdin;
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	60	300	60	\N	\N	\N	t	f	0	\N	master	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	1e263c90-0f4e-4193-98b8-af22e6e955ff	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	83320266-2181-4c4a-88c8-298bd6d626a0	531a2fbf-5398-4464-bb91-6c2bcd002df4	9ebf0a60-e664-4166-b524-7c9481b68c99	cb312b43-595f-40d9-8941-6a5678338e45	d2076d70-5088-4060-bbf3-b154fc84d8e1	2592000	f	900	t	f	af873b81-5524-40e1-a21c-7e2627ef2f38	0	f	0	0	1974fe6f-0e2c-4333-b82d-b16b2fbd7950
basic	60	300	300	\N	\N	\N	t	f	0	\N	basic	0	\N	f	f	f	f	EXTERNAL	1800	36000	f	f	5f0ba563-6817-4d84-836f-19ccf3c423d7	1800	f	\N	f	f	f	f	0	1	30	6	HmacSHA1	totp	542f8f52-344a-4bc8-b2d3-76f922244b04	798f2127-fc5e-4bf3-845e-682572ee070a	777547c2-1658-44fb-9683-dc0fef26f23d	75719538-77a3-416c-a025-50849f6024be	b6de8bd8-3451-43a7-8294-715a718e93e7	2592000	f	900	t	f	439ec72f-374c-42f6-b72c-69547941a1d1	0	f	0	0	7494cb7e-1679-4b8d-a9c9-cc12383e9dd1
\.


--
-- Data for Name: realm_attribute; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_attribute (name, realm_id, value) FROM stdin;
_browser_header.contentSecurityPolicyReportOnly	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	
_browser_header.xContentTypeOptions	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	nosniff
_browser_header.xRobotsTag	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	none
_browser_header.xFrameOptions	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	SAMEORIGIN
_browser_header.contentSecurityPolicy	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.xXSSProtection	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1; mode=block
_browser_header.strictTransportSecurity	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	max-age=31536000; includeSubDomains
bruteForceProtected	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	false
permanentLockout	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	false
maxFailureWaitSeconds	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	900
minimumQuickLoginWaitSeconds	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	60
waitIncrementSeconds	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	60
quickLoginCheckMilliSeconds	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	1000
maxDeltaTimeSeconds	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	43200
failureFactor	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	30
realmReusableOtpCode	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	false
displayName	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	rh-sso
displayNameHtml	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	<strong>Red Hat</strong><sup>®</sup> Single Sign On
defaultSignatureAlgorithm	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	RS256
offlineSessionMaxLifespanEnabled	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	false
offlineSessionMaxLifespan	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	5184000
_browser_header.contentSecurityPolicyReportOnly	basic	
_browser_header.xContentTypeOptions	basic	nosniff
_browser_header.xRobotsTag	basic	none
_browser_header.xFrameOptions	basic	SAMEORIGIN
_browser_header.contentSecurityPolicy	basic	frame-src 'self'; frame-ancestors 'self'; object-src 'none';
_browser_header.xXSSProtection	basic	1; mode=block
_browser_header.strictTransportSecurity	basic	max-age=31536000; includeSubDomains
bruteForceProtected	basic	false
permanentLockout	basic	false
maxFailureWaitSeconds	basic	900
minimumQuickLoginWaitSeconds	basic	60
waitIncrementSeconds	basic	60
quickLoginCheckMilliSeconds	basic	1000
maxDeltaTimeSeconds	basic	43200
failureFactor	basic	30
realmReusableOtpCode	basic	false
displayName	basic	Basic Realm
defaultSignatureAlgorithm	basic	RS256
offlineSessionMaxLifespanEnabled	basic	false
offlineSessionMaxLifespan	basic	5184000
clientSessionIdleTimeout	basic	0
clientSessionMaxLifespan	basic	0
clientOfflineSessionIdleTimeout	basic	0
clientOfflineSessionMaxLifespan	basic	0
actionTokenGeneratedByAdminLifespan	basic	43200
actionTokenGeneratedByUserLifespan	basic	300
oauth2DeviceCodeLifespan	basic	600
oauth2DevicePollingInterval	basic	5
webAuthnPolicyRpEntityName	basic	keycloak
webAuthnPolicySignatureAlgorithms	basic	ES256
webAuthnPolicyRpId	basic	
webAuthnPolicyAttestationConveyancePreference	basic	not specified
webAuthnPolicyAuthenticatorAttachment	basic	not specified
webAuthnPolicyRequireResidentKey	basic	not specified
webAuthnPolicyUserVerificationRequirement	basic	not specified
webAuthnPolicyCreateTimeout	basic	0
webAuthnPolicyAvoidSameAuthenticatorRegister	basic	false
webAuthnPolicyRpEntityNamePasswordless	basic	keycloak
webAuthnPolicySignatureAlgorithmsPasswordless	basic	ES256
webAuthnPolicyRpIdPasswordless	basic	
webAuthnPolicyAttestationConveyancePreferencePasswordless	basic	not specified
webAuthnPolicyAuthenticatorAttachmentPasswordless	basic	not specified
webAuthnPolicyRequireResidentKeyPasswordless	basic	not specified
webAuthnPolicyUserVerificationRequirementPasswordless	basic	not specified
webAuthnPolicyCreateTimeoutPasswordless	basic	0
webAuthnPolicyAvoidSameAuthenticatorRegisterPasswordless	basic	false
cibaBackchannelTokenDeliveryMode	basic	poll
cibaExpiresIn	basic	120
cibaInterval	basic	5
cibaAuthRequestedUserHint	basic	login_hint
parRequestUriLifespan	basic	60
client-policies.profiles	basic	{"profiles":[]}
client-policies.policies	basic	{"policies":[]}
\.


--
-- Data for Name: realm_default_groups; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_default_groups (realm_id, group_id) FROM stdin;
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
d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	jboss-logging
basic	jboss-logging
\.


--
-- Data for Name: realm_localizations; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_localizations (realm_id, locale, texts) FROM stdin;
\.


--
-- Data for Name: realm_required_credential; Type: TABLE DATA; Schema: public; Owner: keycloak
--

COPY public.realm_required_credential (type, form_label, input, secret, realm_id) FROM stdin;
password	password	t	t	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8
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
57d16421-6954-4b9c-95e0-1faa5ae7ceb1	/realms/master/account/*
8476c9a0-969c-4a13-b048-ac0c5820a8ca	/realms/master/account/*
a64aac00-ec52-416b-b469-4b886bd85146	/admin/master/console/*
ab15d061-3bc9-49cf-bcd3-57fe6fc9b468	/realms/basic/account/*
24a446dc-d398-4ddd-a9b6-06fe1c94d899	/realms/basic/account/*
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	https://nodejs-gui-nm-demo.apps.ocp001.rhlab.ch/*
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	/admin/basic/console/*
ad0f5436-32f6-49d6-9765-7176c0be08a5	+
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
e03da7f4-e17a-4fc8-a9c8-735745ed1bed	VERIFY_EMAIL	Verify Email	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	t	f	VERIFY_EMAIL	50
56336237-7f39-434f-b8af-31234b63025b	UPDATE_PROFILE	Update Profile	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	t	f	UPDATE_PROFILE	40
d3d95472-923a-4590-9053-da8a55309f12	CONFIGURE_TOTP	Configure OTP	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	t	f	CONFIGURE_TOTP	10
a635690e-4f3e-44dc-a3ec-1a70958b22ec	UPDATE_PASSWORD	Update Password	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	t	f	UPDATE_PASSWORD	30
49f7027d-a7a3-4d51-a22c-e22e5f60d467	terms_and_conditions	Terms and Conditions	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	f	f	terms_and_conditions	20
934400b2-c2e8-420f-b86a-e9bf251f4b22	update_user_locale	Update User Locale	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	t	f	update_user_locale	1000
7fcd4678-db48-415b-9e65-064430fde088	delete_account	Delete Account	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	f	f	delete_account	60
c1594bc8-c89d-4d46-a846-bc648926843d	CONFIGURE_TOTP	Configure OTP	basic	t	f	CONFIGURE_TOTP	10
b582a38b-77bc-4ad3-b967-f07821318730	terms_and_conditions	Terms and Conditions	basic	f	f	terms_and_conditions	20
5a517e67-8590-4f6d-bbbc-90dba4ecb2c4	UPDATE_PASSWORD	Update Password	basic	t	f	UPDATE_PASSWORD	30
ee72db93-176d-40d7-a1a8-7501eb49d9e4	UPDATE_PROFILE	Update Profile	basic	t	f	UPDATE_PROFILE	40
346c2920-5d3e-404a-9fd5-c481ffa92de1	VERIFY_EMAIL	Verify Email	basic	t	f	VERIFY_EMAIL	50
0e878312-a8a5-44e4-9e41-8742e31c196d	delete_account	Delete Account	basic	f	f	delete_account	60
c23a76e7-5b42-4c1f-9dd1-13a114f76e0f	update_user_locale	Update User Locale	basic	t	f	update_user_locale	1000
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
8476c9a0-969c-4a13-b048-ac0c5820a8ca	c8384e00-6e94-4ed6-b23c-e5a7b74c2534
24a446dc-d398-4ddd-a9b6-06fe1c94d899	7162ebef-42e6-4065-9e2a-8eb718ca9123
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
d71f8144-820f-4961-a509-944300eea956	\N	a60b256e-cde2-46fe-a8a5-e1ed59f105c5	f	t	\N	\N	\N	d1fbecc0-bd84-4a15-9153-d3135cbd5fd8	admin	1693671655218	\N	0
4d8f854c-14a0-4f2f-a431-42433035aaf3	nmajorov@redhat.com	nmajorov@redhat.com	f	t	\N	Nikolaj	Majorov	basic	niko	1693673745916	\N	0
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
1974fe6f-0e2c-4333-b82d-b16b2fbd7950	d71f8144-820f-4961-a509-944300eea956
3fdb9a6f-f382-4dec-ab2a-3a69f2aba073	d71f8144-820f-4961-a509-944300eea956
a29dcaf6-472a-4fe7-9382-428868c7a302	d71f8144-820f-4961-a509-944300eea956
7368e24c-f938-4314-8d03-59702a09edf9	d71f8144-820f-4961-a509-944300eea956
6f52fa1b-defa-4e68-98a5-442aabda16c8	d71f8144-820f-4961-a509-944300eea956
2abc2f0b-ac86-4086-966a-ef3dd990e7d0	d71f8144-820f-4961-a509-944300eea956
03518a9b-ef39-4ca5-9596-fe9df59ba9f7	d71f8144-820f-4961-a509-944300eea956
4d41ed8b-7368-4433-9873-05163ac49c36	d71f8144-820f-4961-a509-944300eea956
bc9d6b2a-8967-4c75-8725-fe420ad208f6	d71f8144-820f-4961-a509-944300eea956
5cdcc7b1-4731-4231-a58b-6d9c5a4cfb77	d71f8144-820f-4961-a509-944300eea956
3a61e629-e02f-43ae-a585-95c6b4d7f210	d71f8144-820f-4961-a509-944300eea956
dea6017a-dab9-44e8-a531-7bc6389ba585	d71f8144-820f-4961-a509-944300eea956
671929d8-1f28-458c-b45c-65141eb3a192	d71f8144-820f-4961-a509-944300eea956
1fcd2d32-d260-4594-b57c-0c2cbdd5b5dc	d71f8144-820f-4961-a509-944300eea956
6c8c5d08-ec5e-4634-87f1-7bef2e0be003	d71f8144-820f-4961-a509-944300eea956
a4e95a1b-302c-4da3-b205-7e47f82d246e	d71f8144-820f-4961-a509-944300eea956
f103e95e-b94b-42fc-ad9f-099c4c6ec5cc	d71f8144-820f-4961-a509-944300eea956
7da99bff-9099-4ecd-8ae9-a0447deb5d31	d71f8144-820f-4961-a509-944300eea956
adadb897-284a-4ece-a327-0b665bd7df9a	d71f8144-820f-4961-a509-944300eea956
7494cb7e-1679-4b8d-a9c9-cc12383e9dd1	4d8f854c-14a0-4f2f-a431-42433035aaf3
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
a64aac00-ec52-416b-b469-4b886bd85146	+
d1b17e16-6ecc-4854-bfe8-f6b99f85e0d2	https://nodejs-gui-nm-demo.apps.ocp001.rhlab.ch
2eec51eb-2906-4fe1-a78d-a9e7c3d9e1b8	+
ad0f5436-32f6-49d6-9765-7176c0be08a5	*
\.


--
-- Name: app_user_id_seq; Type: SEQUENCE SET; Schema: expenses; Owner: keycloak
--

SELECT pg_catalog.setval('expenses.app_user_id_seq', 1, true);


--
-- Name: exchange_quotes_id_seq; Type: SEQUENCE SET; Schema: expenses; Owner: keycloak
--

SELECT pg_catalog.setval('expenses.exchange_quotes_id_seq', 5, true);


--
-- Name: expenses_id_seq; Type: SEQUENCE SET; Schema: expenses; Owner: keycloak
--

SELECT pg_catalog.setval('expenses.expenses_id_seq', 7, true);


--
-- Name: report_id_seq; Type: SEQUENCE SET; Schema: expenses; Owner: keycloak
--

SELECT pg_catalog.setval('expenses.report_id_seq', 3, true);


--
-- Name: app_user app_user_name_key; Type: CONSTRAINT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.app_user
    ADD CONSTRAINT app_user_name_key UNIQUE (name);


--
-- Name: app_user app_user_pkey; Type: CONSTRAINT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.app_user
    ADD CONSTRAINT app_user_pkey PRIMARY KEY (id);


--
-- Name: exchange_quotes exchange_quotes_pkey; Type: CONSTRAINT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.exchange_quotes
    ADD CONSTRAINT exchange_quotes_pkey PRIMARY KEY (id);


--
-- Name: expenses expenses_pkey; Type: CONSTRAINT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.expenses
    ADD CONSTRAINT expenses_pkey PRIMARY KEY (id);


--
-- Name: flyway_schema_history flyway_schema_history_pk; Type: CONSTRAINT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);


--
-- Name: report report_pkey; Type: CONSTRAINT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.report
    ADD CONSTRAINT report_pkey PRIMARY KEY (id);


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
-- Name: databasechangeloglock databasechangeloglock_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.databasechangeloglock
    ADD CONSTRAINT databasechangeloglock_pkey PRIMARY KEY (id);


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
-- Name: realm_localizations realm_localizations_pkey; Type: CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_localizations
    ADD CONSTRAINT realm_localizations_pkey PRIMARY KEY (realm_id, locale);


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
-- Name: flyway_schema_history_s_idx; Type: INDEX; Schema: expenses; Owner: keycloak
--

CREATE INDEX flyway_schema_history_s_idx ON expenses.flyway_schema_history USING btree (success);


--
-- Name: idx_admin_event_time; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_admin_event_time ON public.admin_event_entity USING btree (realm_id, admin_event_time);


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
-- Name: idx_client_att_by_name_value; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_client_att_by_name_value ON public.client_attributes USING btree (name, ((value)::character varying(250)));


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
-- Name: idx_offline_css_preload; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_css_preload ON public.offline_client_session USING btree (client_id, offline_flag);


--
-- Name: idx_offline_uss_by_user; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_by_user ON public.offline_user_session USING btree (user_id, realm_id, offline_flag);


--
-- Name: idx_offline_uss_by_usersess; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_by_usersess ON public.offline_user_session USING btree (realm_id, offline_flag, user_session_id);


--
-- Name: idx_offline_uss_createdon; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_createdon ON public.offline_user_session USING btree (created_on);


--
-- Name: idx_offline_uss_preload; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_offline_uss_preload ON public.offline_user_session USING btree (offline_flag, created_on, user_session_id);


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
-- Name: idx_user_attribute_name; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_attribute_name ON public.user_attribute USING btree (name, value);


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
-- Name: idx_user_service_account; Type: INDEX; Schema: public; Owner: keycloak
--

CREATE INDEX idx_user_service_account ON public.user_entity USING btree (realm_id, service_account_client_link);


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
-- Name: expenses expenses_fk_report_fkey; Type: FK CONSTRAINT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.expenses
    ADD CONSTRAINT expenses_fk_report_fkey FOREIGN KEY (fk_report) REFERENCES expenses.report(id);


--
-- Name: report report_fk_app_user_fkey; Type: FK CONSTRAINT; Schema: expenses; Owner: keycloak
--

ALTER TABLE ONLY expenses.report
    ADD CONSTRAINT report_fk_app_user_fkey FOREIGN KEY (fk_app_user) REFERENCES expenses.app_user(id);


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
-- Name: client_scope_attributes fk_cl_scope_attr_scope; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.client_scope_attributes
    ADD CONSTRAINT fk_cl_scope_attr_scope FOREIGN KEY (scope_id) REFERENCES public.client_scope(id);


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
-- Name: realm_default_groups fk_def_groups_realm; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.realm_default_groups
    ADD CONSTRAINT fk_def_groups_realm FOREIGN KEY (realm_id) REFERENCES public.realm(id);


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
-- Name: group_role_mapping fk_group_role_group; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.group_role_mapping
    ADD CONSTRAINT fk_group_role_group FOREIGN KEY (group_id) REFERENCES public.keycloak_group(id);


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
-- Name: web_origins fk_lojpho213xcx4wnkog82ssrfy; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.web_origins
    ADD CONSTRAINT fk_lojpho213xcx4wnkog82ssrfy FOREIGN KEY (client_id) REFERENCES public.client(id);


--
-- Name: scope_mapping fk_ouse064plmlr732lxjcn1q5f1; Type: FK CONSTRAINT; Schema: public; Owner: keycloak
--

ALTER TABLE ONLY public.scope_mapping
    ADD CONSTRAINT fk_ouse064plmlr732lxjcn1q5f1 FOREIGN KEY (client_id) REFERENCES public.client(id);


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
-- PostgreSQL database dump complete
--

