--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Ubuntu 12.2-4)
-- Dumped by pg_dump version 12.2 (Ubuntu 12.2-4)

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO django_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO django_user;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO django_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO django_user;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO django_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO django_user;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO django_user;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO django_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO django_user;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO django_user;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO django_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO django_user;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: civam_collection; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_collection (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    description text NOT NULL,
    dates character varying(255),
    cover_image character varying(100) NOT NULL,
    public boolean NOT NULL,
    summary text,
    provenance text,
    citation text,
    historical_note text,
    access_notes_or_rights_and_reproduction text,
    geographical_location character varying(511),
    private_notes text,
    private_cataloger character varying(511),
    private_catalog_date timestamp with time zone,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    created_by_id integer,
    modified_by_id integer
);


ALTER TABLE public.civam_collection OWNER TO django_user;

--
-- Name: civam_collection_creator; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_collection_creator (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    personorinstitute_id integer NOT NULL
);


ALTER TABLE public.civam_collection_creator OWNER TO django_user;

--
-- Name: civam_collection_creator_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_collection_creator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_collection_creator_id_seq OWNER TO django_user;

--
-- Name: civam_collection_creator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_collection_creator_id_seq OWNED BY public.civam_collection_creator.id;


--
-- Name: civam_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_collection_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_collection_id_seq OWNER TO django_user;

--
-- Name: civam_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_collection_id_seq OWNED BY public.civam_collection.id;


--
-- Name: civam_collection_keywords; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_collection_keywords (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    keyword_id integer NOT NULL
);


ALTER TABLE public.civam_collection_keywords OWNER TO django_user;

--
-- Name: civam_collection_keywords_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_collection_keywords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_collection_keywords_id_seq OWNER TO django_user;

--
-- Name: civam_collection_keywords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_collection_keywords_id_seq OWNED BY public.civam_collection_keywords.id;


--
-- Name: civam_collection_location_of_originals; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_collection_location_of_originals (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    personorinstitute_id integer NOT NULL
);


ALTER TABLE public.civam_collection_location_of_originals OWNER TO django_user;

--
-- Name: civam_collection_location_of_originals_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_collection_location_of_originals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_collection_location_of_originals_id_seq OWNER TO django_user;

--
-- Name: civam_collection_location_of_originals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_collection_location_of_originals_id_seq OWNED BY public.civam_collection_location_of_originals.id;


--
-- Name: civam_collectiongroup; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_collectiongroup (
    id integer NOT NULL,
    name character varying(125) NOT NULL,
    "default" boolean NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.civam_collectiongroup OWNER TO django_user;

--
-- Name: civam_collectiongroup_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_collectiongroup_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_collectiongroup_id_seq OWNER TO django_user;

--
-- Name: civam_collectiongroup_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_collectiongroup_id_seq OWNED BY public.civam_collectiongroup.id;


--
-- Name: civam_image; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_image (
    id integer NOT NULL,
    content character varying(100) NOT NULL,
    item_id integer NOT NULL
);


ALTER TABLE public.civam_image OWNER TO django_user;

--
-- Name: civam_image_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_image_id_seq OWNER TO django_user;

--
-- Name: civam_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_image_id_seq OWNED BY public.civam_image.id;


--
-- Name: civam_item; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_item (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    cover_image character varying(100) NOT NULL,
    description text NOT NULL,
    culture_or_community character varying(127),
    other_forms text,
    digital_heritage_item character varying(127),
    date_of_creation character varying(127),
    physical_details text,
    access_notes_or_rights_and_reproduction text,
    catalog_number character varying(31),
    external_link character varying(200),
    provenance text,
    private_notes text,
    citation text,
    historical_note text,
    place_created character varying(511),
    private_cataloger character varying(511),
    private_catalog_date timestamp with time zone,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    collection_id integer NOT NULL,
    created_by_id integer,
    modified_by_id integer
);


ALTER TABLE public.civam_item OWNER TO django_user;

--
-- Name: civam_item_creator; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_item_creator (
    id integer NOT NULL,
    item_id integer NOT NULL,
    personorinstitute_id integer NOT NULL
);


ALTER TABLE public.civam_item_creator OWNER TO django_user;

--
-- Name: civam_item_creator_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_item_creator_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_item_creator_id_seq OWNER TO django_user;

--
-- Name: civam_item_creator_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_item_creator_id_seq OWNED BY public.civam_item_creator.id;


--
-- Name: civam_item_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_item_id_seq OWNER TO django_user;

--
-- Name: civam_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_item_id_seq OWNED BY public.civam_item.id;


--
-- Name: civam_item_keywords; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_item_keywords (
    id integer NOT NULL,
    item_id integer NOT NULL,
    keyword_id integer NOT NULL
);


ALTER TABLE public.civam_item_keywords OWNER TO django_user;

--
-- Name: civam_item_keywords_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_item_keywords_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_item_keywords_id_seq OWNER TO django_user;

--
-- Name: civam_item_keywords_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_item_keywords_id_seq OWNED BY public.civam_item_keywords.id;


--
-- Name: civam_item_location_of_originals; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_item_location_of_originals (
    id integer NOT NULL,
    item_id integer NOT NULL,
    personorinstitute_id integer NOT NULL
);


ALTER TABLE public.civam_item_location_of_originals OWNER TO django_user;

--
-- Name: civam_item_location_of_originals_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_item_location_of_originals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_item_location_of_originals_id_seq OWNER TO django_user;

--
-- Name: civam_item_location_of_originals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_item_location_of_originals_id_seq OWNED BY public.civam_item_location_of_originals.id;


--
-- Name: civam_keyword; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_keyword (
    id integer NOT NULL,
    word character varying(31) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    created_by_id integer,
    modified_by_id integer
);


ALTER TABLE public.civam_keyword OWNER TO django_user;

--
-- Name: civam_keyword_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_keyword_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_keyword_id_seq OWNER TO django_user;

--
-- Name: civam_keyword_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_keyword_id_seq OWNED BY public.civam_keyword.id;


--
-- Name: civam_narrative; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_narrative (
    id integer NOT NULL,
    content text NOT NULL,
    author character varying(255) NOT NULL,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    created_by_id integer NOT NULL,
    item_id integer NOT NULL,
    modified_by_id integer NOT NULL
);


ALTER TABLE public.civam_narrative OWNER TO django_user;

--
-- Name: civam_narrative_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_narrative_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_narrative_id_seq OWNER TO django_user;

--
-- Name: civam_narrative_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_narrative_id_seq OWNED BY public.civam_narrative.id;


--
-- Name: civam_personorinstitute; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_personorinstitute (
    id integer NOT NULL,
    name character varying(125) NOT NULL,
    culture character varying(255),
    dates character varying(255),
    description text,
    historical_note text,
    "isPerson" boolean NOT NULL,
    cover_image character varying(100) NOT NULL,
    address character varying(255),
    contact character varying(255),
    private_notes text,
    created_on timestamp with time zone NOT NULL,
    modified_on timestamp with time zone NOT NULL,
    created_by_id integer,
    modified_by_id integer
);


ALTER TABLE public.civam_personorinstitute OWNER TO django_user;

--
-- Name: civam_personorinstitute_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_personorinstitute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_personorinstitute_id_seq OWNER TO django_user;

--
-- Name: civam_personorinstitute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_personorinstitute_id_seq OWNED BY public.civam_personorinstitute.id;


--
-- Name: civam_video; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.civam_video (
    id integer NOT NULL,
    link character varying(200) NOT NULL,
    thumbnail character varying(100) NOT NULL,
    item_id integer NOT NULL
);


ALTER TABLE public.civam_video OWNER TO django_user;

--
-- Name: civam_video_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.civam_video_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.civam_video_id_seq OWNER TO django_user;

--
-- Name: civam_video_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.civam_video_id_seq OWNED BY public.civam_video.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO django_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO django_user;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO django_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO django_user;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO django_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO django_user;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO django_user;

--
-- Name: guardian_groupobjectpermission; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.guardian_groupobjectpermission (
    id integer NOT NULL,
    object_pk character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.guardian_groupobjectpermission OWNER TO django_user;

--
-- Name: guardian_groupobjectpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.guardian_groupobjectpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guardian_groupobjectpermission_id_seq OWNER TO django_user;

--
-- Name: guardian_groupobjectpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.guardian_groupobjectpermission_id_seq OWNED BY public.guardian_groupobjectpermission.id;


--
-- Name: guardian_userobjectpermission; Type: TABLE; Schema: public; Owner: django_user
--

CREATE TABLE public.guardian_userobjectpermission (
    id integer NOT NULL,
    object_pk character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    permission_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.guardian_userobjectpermission OWNER TO django_user;

--
-- Name: guardian_userobjectpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: django_user
--

CREATE SEQUENCE public.guardian_userobjectpermission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guardian_userobjectpermission_id_seq OWNER TO django_user;

--
-- Name: guardian_userobjectpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: django_user
--

ALTER SEQUENCE public.guardian_userobjectpermission_id_seq OWNED BY public.guardian_userobjectpermission.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: civam_collection id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection ALTER COLUMN id SET DEFAULT nextval('public.civam_collection_id_seq'::regclass);


--
-- Name: civam_collection_creator id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_creator ALTER COLUMN id SET DEFAULT nextval('public.civam_collection_creator_id_seq'::regclass);


--
-- Name: civam_collection_keywords id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_keywords ALTER COLUMN id SET DEFAULT nextval('public.civam_collection_keywords_id_seq'::regclass);


--
-- Name: civam_collection_location_of_originals id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_location_of_originals ALTER COLUMN id SET DEFAULT nextval('public.civam_collection_location_of_originals_id_seq'::regclass);


--
-- Name: civam_collectiongroup id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collectiongroup ALTER COLUMN id SET DEFAULT nextval('public.civam_collectiongroup_id_seq'::regclass);


--
-- Name: civam_image id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_image ALTER COLUMN id SET DEFAULT nextval('public.civam_image_id_seq'::regclass);


--
-- Name: civam_item id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item ALTER COLUMN id SET DEFAULT nextval('public.civam_item_id_seq'::regclass);


--
-- Name: civam_item_creator id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_creator ALTER COLUMN id SET DEFAULT nextval('public.civam_item_creator_id_seq'::regclass);


--
-- Name: civam_item_keywords id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_keywords ALTER COLUMN id SET DEFAULT nextval('public.civam_item_keywords_id_seq'::regclass);


--
-- Name: civam_item_location_of_originals id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_location_of_originals ALTER COLUMN id SET DEFAULT nextval('public.civam_item_location_of_originals_id_seq'::regclass);


--
-- Name: civam_keyword id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_keyword ALTER COLUMN id SET DEFAULT nextval('public.civam_keyword_id_seq'::regclass);


--
-- Name: civam_narrative id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_narrative ALTER COLUMN id SET DEFAULT nextval('public.civam_narrative_id_seq'::regclass);


--
-- Name: civam_personorinstitute id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_personorinstitute ALTER COLUMN id SET DEFAULT nextval('public.civam_personorinstitute_id_seq'::regclass);


--
-- Name: civam_video id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_video ALTER COLUMN id SET DEFAULT nextval('public.civam_video_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: guardian_groupobjectpermission id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_groupobjectpermission ALTER COLUMN id SET DEFAULT nextval('public.guardian_groupobjectpermission_id_seq'::regclass);


--
-- Name: guardian_userobjectpermission id; Type: DEFAULT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_userobjectpermission ALTER COLUMN id SET DEFAULT nextval('public.guardian_userobjectpermission_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add group object permission	1	add_groupobjectpermission
2	Can change group object permission	1	change_groupobjectpermission
3	Can delete group object permission	1	delete_groupobjectpermission
4	Can view group object permission	1	view_groupobjectpermission
5	Can add user object permission	2	add_userobjectpermission
6	Can change user object permission	2	change_userobjectpermission
7	Can delete user object permission	2	delete_userobjectpermission
8	Can view user object permission	2	view_userobjectpermission
9	Can add collection	3	add_collection
10	Can change collection	3	change_collection
11	Can delete collection	3	delete_collection
12	Can view collection	3	view_collection
13	Can add item	4	add_item
14	Can change item	4	change_item
15	Can delete item	4	delete_item
16	Can view item	4	view_item
17	Can add video	5	add_video
18	Can change video	5	change_video
19	Can delete video	5	delete_video
20	Can view video	5	view_video
21	Can add story	6	add_story
22	Can change story	6	change_story
23	Can delete story	6	delete_story
24	Can view story	6	view_story
25	Can add image	7	add_image
26	Can change image	7	change_image
27	Can delete image	7	delete_image
28	Can view image	7	view_image
29	Can add collection group	8	add_collectiongroup
30	Can change collection group	8	change_collectiongroup
31	Can delete collection group	8	delete_collectiongroup
32	Can view collection group	8	view_collectiongroup
33	Can add log entry	9	add_logentry
34	Can change log entry	9	change_logentry
35	Can delete log entry	9	delete_logentry
36	Can view log entry	9	view_logentry
37	Can add permission	10	add_permission
38	Can change permission	10	change_permission
39	Can delete permission	10	delete_permission
40	Can view permission	10	view_permission
41	Can add group	11	add_group
42	Can change group	11	change_group
43	Can delete group	11	delete_group
44	Can view group	11	view_group
45	Can add user	12	add_user
46	Can change user	12	change_user
47	Can delete user	12	delete_user
48	Can view user	12	view_user
49	Can add content type	13	add_contenttype
50	Can change content type	13	change_contenttype
51	Can delete content type	13	delete_contenttype
52	Can view content type	13	view_contenttype
53	Can add session	14	add_session
54	Can change session	14	change_session
55	Can delete session	14	delete_session
56	Can view session	14	view_session
57	Can add por i	15	add_pori
58	Can change por i	15	change_pori
59	Can delete por i	15	delete_pori
60	Can view por i	15	view_pori
61	Can add item por i	16	add_itempori
62	Can change item por i	16	change_itempori
63	Can delete item por i	16	delete_itempori
64	Can view item por i	16	view_itempori
65	Can add keyword	17	add_keyword
66	Can change keyword	17	change_keyword
67	Can delete keyword	17	delete_keyword
68	Can view keyword	17	view_keyword
69	Can add person or institute	18	add_personorinstitute
70	Can change person or institute	18	change_personorinstitute
71	Can delete person or institute	18	delete_personorinstitute
72	Can view person or institute	18	view_personorinstitute
73	Can add narrative	19	add_narrative
74	Can change narrative	19	change_narrative
75	Can delete narrative	19	delete_narrative
76	Can view narrative	19	view_narrative
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	!sWOWJqHCSm2w4op0OD0r2q31bZX2rEEiJ03oUB1X	\N	f	AnonymousUser				f	t	2020-05-05 18:39:48.299198+00
2	pbkdf2_sha256$150000$rfFKzuVeryZT$NI5/M7a4YFUSlzNT/Yg5zuWrgcfm4siV9UCRkT12gck=	\N	t	ubuntu			karlstom@udel.edu	t	t	2020-05-05 18:40:41.710454+00
3	pbkdf2_sha256$150000$JdVebdSS9SCo$40GJvI2T31zGKo6WE6OOLIP7Mo/K00HAwterXllDPIE=	2020-10-04 19:25:06.472479+00	t	civam-admin			cott@udel.edu	t	t	2020-05-11 01:17:42.498841+00
4	pbkdf2_sha256$150000$I4N0Ioa53Nuf$B6DM7vwmGORpK2dBLkD78sTv+5Z3O0d2y0uLKazPlOw=	\N	f	cott				f	t	2020-06-08 20:35:07.276528+00
5	pbkdf2_sha256$150000$tZac3ReGLZuM$5/ZUL8OHXxOOj1D/6A/XoULKMZc3wGD1VTj7mWkhsBI=	\N	f	gmckeon				t	t	2020-06-08 20:35:49+00
6	pbkdf2_sha256$150000$K9PhKoN1zKpz$Ln7U/d505AZxDlPgdrVrL8v96sBl3pEL4d2aIl4VpkA=	\N	f	szaidman				t	t	2020-06-08 20:36:13+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: civam_collection; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_collection (id, title, description, dates, cover_image, public, summary, provenance, citation, historical_note, access_notes_or_rights_and_reproduction, geographical_location, private_notes, private_cataloger, private_catalog_date, created_on, modified_on, created_by_id, modified_by_id) FROM stdin;
3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	Between 2001 and 2008, Peggy Wellknown Buffalo of the Crow Tribe, and Susan Kelly led seven trips with elders from the Crow reservation in Montana to the National Museum of American Indian, Smithsonian Institution in Washington, DC to videotape the Crow elders as they examined and described the history and stories about sacred and non-sacred items in the museum.  This digital collection includes over 2,000 short, individual tapes of Crow items.  Items include headdresses, shields, shirts, rattles, and medicine bundles, among many others.	ca. 1850s-ca. 1920s	cover_images/Cover_image_CIVAM_Wellknown_Buffalo_Kelly_NMAI_copy.jpg	t		Peggy White Wellknown Buffalo and Susie Kelly filmed the items at the National Museum of American Indian between 2001 and 2008 . In 2019, the films were digitized at the University of Delaware history department and the films divided up into individual short film clips for each item in the collection.				\N		\N	2020-06-09 02:11:05+00	2020-06-09 02:04:32.023685+00	2020-07-06 19:00:03.683245+00	3	3
2	Bill Yellowtail photographs, 1960s-2000	This collection consists of over 100 photographs taken by William Petzoldt, Jr.( Bill) Yellowtail of ranch life on the Crow Indian reservation, Montana in the mid to late twentieth century. Yellowtail lived around the West and held powerful positions in government, yet ranch life on the reservation has always been home to him. Yellowtail took the photographs with a variety of cameras, using mostly slide color film.  Subjects include ranch activities, such as cattle drives, cow camps, and round-ups. His photographs also depict his family members and their Indian and non-Indian neighbors at work and at play.	1960-2000	cover_images/100_tepee_camp_copy_qKQu6to.jpg	t		All original slides are in the private collection of Bill Yellowtail	Bill Yellowtail photographs, 1960s-2000		Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Crow Reservation, Montana	Yellowtail will be providing more photographs.  There is also an interview with Cindy Ott from Dec 2019 that could eventually be added to this collection.	Cindy Ott	2020-06-08 20:56:42+00	2020-06-08 20:56:45.556838+00	2020-07-31 00:15:01.070724+00	3	3
4	Crow Indian Gardeners & Farmers, 1930s	The collection includes photographs of Crow Indians, with captions, that accompanied annual reports of the U.S. Department of Interior, Bureau of Indian Affairs' Division of Extension and Industry. The Crow reservation extension agent compiled the report and sent it to the Commissioner of Indian Affairs in Washington, D.C. The photographs date from the 1930s and depict Crow Indian adults and youth in agricultural pursuits, 4-H programs, gardening, home economic activities, and in social gatherings. They are seen at feeds (feasts), working in their gardens, harvesting their farm fields, and managing livestock, among other activities. Many of the captions include the names of the individuals and the places depicted in them.	1935-1938	cover_images/IMG_9302_copy_2.jpeg	t		The photographs in this collection were published in the annual reports of the extension agent for the U.S. Department of Interior, Bureau of Indian Affairs, Division of Extension and Industry at the Crow Reservation. (The text of the reports has not yet been added to the CIVAM collection.) The report photographs were copied by Cindy Ott at the National Archives and Records Administration in Washington, D.C. in March 2015. Cindy Ott organized three exhibitions of a dozen of the photographs at senior centers in the towns of Crow Agency, Lodge Grass, and Pryor on the Crow reservation in summer 2017. (Catalog records of individual photograph document which ones were exhibited.)	See individual photographs for specific citations.	In the early years of the United States, Indian affairs were governed by the Continental Congress, which in 1775 created a Committee on Indian Affairs headed by Benjamin Franklin. Article I, Section 8, of the U.S. Constitution describes Congress's powers over Indian affairs: "To regulate commerce with foreign nations, and among the several States, and with the Indian tribes." The BIA, one of the oldest bureaus in the Federal government, was administratively established by Secretary of War John C. Calhoun on March 11, 1824, to oversee and carry out the Federal government's trade and treaty relations with the tribes. Congress gave the BIA statutory authority by the act of July 9, 1832 (4 Stat. 564, chap. 174). In 1849, the BIA was transferred to the newly created U.S. Department of the Interior. For years thereafter, the Bureau was known variously as the Indian office, the Indian bureau, the Indian department, and the Indian Service. The Interior Department formally adopted the name “Bureau of Indian Affairs” for the agency on September 17, 1947.\r\n\r\nThe Bureau of Indian Affairs, Division of Extension and Industry was created to document Indian economic activities and ways of life, and the work of the extension agents. Charles S. Runyan was the extension agent who produced the reports under the the supervision of Crow Superintendent Robert Yellowtail in the 1930s.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction.  However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way.  Please contact CIVAM at civam.mt@gmail for assistance.	Crow reservation, Montana	There are more BIA Division of Extension and Industry photographs to add to this collection. The Montana Extension Service photographs will also be added to the collection. Copies of all of the reports are in Cindy Ott's private collection.	Cindy Ott	2020-06-09 14:36:17+00	2020-06-09 14:36:21.303999+00	2020-08-11 15:21:36.115607+00	3	3
\.


--
-- Data for Name: civam_collection_creator; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_collection_creator (id, collection_id, personorinstitute_id) FROM stdin;
1	2	1
2	4	5
3	4	6
\.


--
-- Data for Name: civam_collection_keywords; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_collection_keywords (id, collection_id, keyword_id) FROM stdin;
3	2	7
4	2	8
5	2	9
6	2	10
7	2	11
8	2	12
9	2	4
10	2	13
11	3	17
12	3	4
13	4	24
14	4	4
15	4	23
\.


--
-- Data for Name: civam_collection_location_of_originals; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_collection_location_of_originals (id, collection_id, personorinstitute_id) FROM stdin;
1	2	1
2	4	7
\.


--
-- Data for Name: civam_collectiongroup; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_collectiongroup (id, name, "default", collection_id, group_id) FROM stdin;
\.


--
-- Data for Name: civam_image; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_image (id, content, item_id) FROM stdin;
1	2/3/Crow_Branding71.JPG	3
2	2/1/100_tepee_camp.JPG	1
4	2/37/35.JPG	37
5	2/38/38.JPG	38
7	2/40/96.JPG	40
9	2/42/101.JPG	42
12	2/45/491.JPG	45
13	2/46/412.JPG	46
14	2/47/447.JPG	47
15	2/48/523.JPG	48
17	2/50/Big_Horn_Mts_Ytail398.JPG	50
19	2/52/Big_Horn_Mtss_Ytail400.JPG	52
20	2/53/Branding_Ytail69.JPG	53
22	2/55/landscape_with_cattle_ytail402.JPG	55
27	2/60/Yellowtail_branding_reel_3.JPG	60
44	4/65/IMG_9302.jpg	65
52	2/92/Dad___Kim_on_tractor.JPG	92
53	2/91/Cowboy_checkers.JPG	91
54	2/90/Cooling_out_a_pie.JPG	90
55	2/89/Chopper_crew_at_Barrys_Landing.JPG	89
56	2/88/Card_Shark.JPG	88
57	2/87/Bringing_in_a_new_pair.JPG	87
58	2/86/Brenda_on_Don.JPG	86
59	2/94/Dad__Dale_at_Campfire_1.JPG	94
60	2/95/Dad__Granny_at_Christmas.JPG	95
61	2/96/Dad__Kimberly_in_Kitchen.JPG	96
62	4/100/IMG_8727.jpg	100
63	4/101/IMG_8728.jpg	101
64	4/103/IMG_8729.jpg	103
65	4/104/IMG_8730.jpg	104
66	4/105/IMG_8731.jpg	105
67	4/106/IMG_8732.jpg	106
68	4/107/IMG_8737.jpg	107
69	4/108/IMG_8738.jpg	108
\.


--
-- Data for Name: civam_item; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_item (id, name, cover_image, description, culture_or_community, other_forms, digital_heritage_item, date_of_creation, physical_details, access_notes_or_rights_and_reproduction, catalog_number, external_link, provenance, private_notes, citation, historical_note, place_created, private_cataloger, private_catalog_date, created_on, modified_on, collection_id, created_by_id, modified_by_id) FROM stdin;
104	WM Spotted's Garden	cover_images/items/IMG_8730.jpg	Top photograph: "WM Spotted, St Xavier, Planting Garden." This photograph depicts WM Spotted planting seeds in his garden next to a corn field. Bottom photograph: "WM Spotted's Garden 30 Days Later." This photograph depicts the growth of the garden following the top photograph.	Apsáalooke (Crow/Absaroke)	Originals: b&w glossy photograph	\N	1935	Two black and white glossy photographs placed in brackets, attached to a page in report.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction. However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way. Please contact CIVAM at civam.mt@gmail for assistance.	CIVAM-NARA #8730	\N	The photographs appear on page 36 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 1, 1935 to December 31, 1935."		Charles S. Runyan, Agricultural Agent, U.S. Dept of Interior, Office of Indian Affairs, Field Service, “Annual Report of Division of Extension and Industry: Crow Reservation; To Director of Extension and Industry; From January 1, 1935 to December 31, 1935.” Records of Bureau of Indian Affairs (RG 75), Central Classified Files, 1907-39; Crow; 40761-1912-.023.1 To 130-1936-031; Box 2: PI-163 E-121 HM 2001. National Archives and Records Administration, Washington, D.C. CIVAM-NARA #8730		\N	Ryan Wood	2020-08-17 20:30:13+00	2020-08-17 20:30:25.67177+00	2020-08-17 20:35:41.351203+00	4	3	3
37	Snowbound, ca. 1970	cover_images/items/35.JPG	Bill Yellowtail Sr. plows deep snowdrifts on the ranch road in the Big Horn Mountains, Crow Reservation, MT.	Apsáalooke (Crow/Absaroke)	35 mm color slide in 2x2 inch mount	\N	ca. 1970	Reproduction of original 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #35	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Snowbound, ca. 1970. (Yellowtail #35) Bill Yellowtail photographs, ca. 1960-2000. Crow Indian Virtual Archive and Museum		Crow Reservation, MT	Cindy Ott	2020-08-04 15:13:31+00	2020-06-18 03:55:56.506288+00	2020-08-04 18:51:54.959278+00	2	3	3
3	Branding day at FO Corrals, ca. 1965	cover_images/items/Crow_Branding71.JPG	Neighbors and family convene to brand calves to mark ownership on the range. FO Corrals, Upper Lodge Grass Valley, Crow Reservation, MT, ca. 1965. (Yellowtail #71)	Crow Indian; Anglos	35 mm color slide in 2x2 mount	\N	ca. 1965	Reproduction of 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #71	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Branding day FO Corrals, Upper Lodge Grass Valley, Crow reservation, MT, ca. 1965. (Yellowtail #71) Bill Yellowtail photographs, 1960s-2000s. Crow Indian Virtual Archive and Museum.		Crow Reservation, MT	Cindy Ott	2020-06-23 21:15:49+00	2020-06-09 12:57:32.521415+00	2020-08-08 19:21:16.558778+00	2	3	3
55	Trail Drive to Market, ca. 1960	cover_images/items/landscape_with_cattle_ytail402.JPG	Trail drive to market. Percheron Creek, Crow Reservation, ca. 1960.	Apsáalooke (Crow/Absaroke)	35 mm color slide in 2x2 mount	\N	ca. 1960	Reproduction of original 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #402	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Trail drive to market; Percheron Creek, Crow Reservation, ca. 1960. (Yellowtail, #402) Bill Yellowtail photographs, 1960s-2000s. Crow Indian Virtual Archive and Museum.		Crow Reservation, MT	Cindy Ott	2020-06-23 21:21:36+00	2020-06-18 04:25:40.118766+00	2020-08-04 19:22:17.770219+00	2	3	3
1	Campfire at Teepee Pole Spring cow camp, ca. 1964	cover_images/items/Wm_Ytail__at_campsite100_oGNWDMX.JPG	Jane and Bill Yellowtail, Sr. enjoy a laugh and a smoke at Teepee Pole Spring cow camp in the Big Horn Mountains after a day’s riding, ca. 1964. Photograph taken by their son Bill Yellowtail.	Apsáalooke (Crow/Absaroke); Euro-American	35 mm color slide in 2x2 inch mount	\N	ca. 1964	Reproduction of original 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #100	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Campfire at Teepee Pole Spring cow camp, ca. 1964. (Yellowtail #100)  Bill Yellowtail photographs, ca. 1960-2000. Crow Indian Virtual Archive and Museum		Big Horn Mountains, Crow reservation, MT	Cindy Ott	2020-06-09 01:40:22+00	2020-06-09 01:49:23.044353+00	2020-08-08 19:21:09.106543+00	2	3	3
40	96.JPG	cover_images/items/96.JPG		Crow Indian		\N	\N			\N	\N					\N	\N	\N	2020-06-18 04:03:13.597196+00	2020-06-18 04:03:58.840366+00	2	3	3
42	Winter Diversion, ca. 1972	cover_images/items/101.JPG	Brenda Yellowtail tobogganing on the Bighorn Mountain foothills, Crow Reservation, MT, ca. 1972.  Photograph taken by her older brother Bill Yellowtail.	Apsáalooke (Crow/Absaroke)	35 mm color slide in 2x2 inch mount	\N	ca. 1972	Reproduction of original 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #101	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Winter Diversion, ca. 1972. (Yellowtail #101) Bill Yellowtail photographs, ca. 1960-2000. Crow Indian Virtual Archive and Museum		Big Horn Mountains, Crow Reservation, MT	Cindy Ott	2020-08-04 18:49:25+00	2020-06-18 04:07:32.538966+00	2020-08-04 18:49:53.44556+00	2	3	3
100	Morman Crickets & Mike Bull Chief's Garden, 1937	cover_images/items/IMG_8727_IUP2IKp.jpg	Top photograph: "Mormon Crickets Waiting for a Garden to Grow." The photograph depicts a fence post covered with crickets and a farm field in the background.\r\n\r\nBottom photograph:  "Mike Bull Chief's Garden After a Visit by the Crickets." The photograph depicts Mike Bull Chief standing in his garden with two other men, possibly with two agricultural agents. His corn crop is shown to his right.	Apsáalooke (Crow/Absaroke)	Originals: b&w glossy photograph	\N	1935	Two black and white glossy photographs placed in brackets, attached to a page in report.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction. However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way. Please contact CIVAM at civam.mt@gmail for assistance.	CIVAM-NARA #8727	\N	The photographs appear on page 14 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 1, 1935 to December 31, 1935."		Charles S. Runyan, Agricultural Agent, U.S. Dept of Interior, Office of Indian Affairs, Field Service, “Annual Report of Division of Extension and Industry: Crow Reservation; To Director of Extension and Industry; From January 1, 1935 to December 31, 1935.” Records of Bureau of Indian Affairs (RG 75), Central Classified Files, 1907-39; Crow; 40761-1912-.023.1 To 130-1936-031; Box 2: PI-163 E-121 HM 2001. National Archives and Records Administration, Washington, D.C. CIVAM-NARA #8727		\N	Ryan Wood	2020-08-12 15:32:30+00	2020-08-12 15:31:36.156024+00	2020-08-17 01:35:58.233497+00	4	3	3
45	491JPG	cover_images/items/491.JPG		Crow Indian		\N	\N			\N	\N					\N	\N	\N	2020-06-18 04:12:37.758375+00	2020-06-18 04:12:37.758397+00	2	3	3
46	412.JPG	cover_images/items/412.JPG		Crow Indian		\N	\N			\N	\N					\N	\N	\N	2020-06-18 04:12:53.400243+00	2020-06-18 04:12:57.127249+00	2	3	3
50	398	cover_images/items/Big_Horn_Mts_Ytail398.JPG		Crow Indian		\N	\N			\N	\N					\N	\N	\N	2020-06-18 04:21:06.596892+00	2020-06-23 18:05:11.151733+00	2	3	3
52	400	cover_images/items/Big_Horn_Mtss_Ytail400.JPG		Crow Indian	35 mm color slide with 2x2 mount	\N	\N	digital reproduction of 2x2 color slide	Photographs are copyrighted by Bill Yellowtail and they may not be reproduced , or used in any way, without his permission. Please contact Mr. Yellowtail at byellowtail@hotmail.com for queries. Please include the purpose and place for publication in your request.	\N	\N					Big Horn Mountains, Crow Reservation, MT	\N	\N	2020-06-18 04:22:09.383738+00	2020-06-23 21:50:16.734225+00	2	3	3
38	Carson Yellowtail Playing in Beaver Pond, ca. 1960	cover_images/items/38_TUgnO6h.JPG	Carson Yellowtail playing in a beaver pond, captured by his mother Jane at Lodge Grass Creek Valley, Crow Reservation, MT, ca. 1960.	Apsáalooke (Crow/Absaroke)	35 mm color slide on 2x2 mount	\N	ca. 1965	Reproduction of original color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #38	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Carson Yellowtail playing in a beaver pond at Lodge Grass Creek Valley, captured by his mother Jane, Crow Reservation, MT, ca. 1960. (Yellowtail #38) Bill Yellowtail photographs, 1960s-2000s		Crow Reservation, MT	Cindy Ott	2020-06-23 21:00:24+00	2020-06-18 03:58:29.080556+00	2020-08-04 20:26:05.048192+00	2	3	3
14	Quiver (model/miniature)	cover_images/items/Screen_Shot_2020-06-23_at_9.34.05_AM.png	Miniature Quiver used for hunting, fishing or warfare	Apsáalooke (Crow/Absaroke)		\N	ca. 1920	Media/Materials Hide\r\nTechniques: Sewn\r\nDimensions: 10 x 16 x 2 cm	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #152440	https://collections.si.edu/search/detail/edanmdm:NMAI_163671?q=152440&record=5&hlterm=152440	National Museum of American Indian record: Collected in 1926 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI. The NMAI label attached to the item states: Miniature quiver off travel stick Crow Montana	Tape #12 Non-Sacred #2 Item label attached to object states "Quiver"\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Quiver Model/Miniature. (Cat. #152440). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-07 13:47:47+00	2020-06-15 22:00:45.626974+00	2020-08-13 15:44:11.042018+00	3	3	3
48	Larry Dean Yellowtail ready to saddle up, ca. 1968	cover_images/items/523.JPG	Larry Dean Yellowtail, a Crow cowboy, readies his horse for the evening ride in the Bighorn Mountains, Sagebrush Basin, Crow Reservation, ca.1968.	Apsáalooke (Crow/Absaroke)	35mm color slide on 2x2 mount	\N	ca. 1968	Reproduction of 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #523	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Larry Dean Yellowtail ready to saddle up, Sagebrush Basin, Crow Reservation, ca.1968. (Yellowtail, #523) Bill Yellowtail photographs, 1960s-2000s		Crow Reservation, MT	Cindy Ott	2020-06-23 21:54:24+00	2020-06-18 04:19:32.946526+00	2020-08-04 19:32:16.266255+00	2	3	3
60	Doctoring on the open range, 1970	cover_images/items/Yellowtail_branding_reel_3.JPG	Cowboys administer medical treatment to a sick calf, Bull Elk Divide, Crow Reservation, 1970. Pictured L-R: Gary Spooner, Larry Dean Yellowtail, and Carson Yellowtail.	Crow Indian	35 mm color slide on 2x2 mount	\N	1970	Reproduction of 2x2 slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #371	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Doctoring on the open range at Bull Elk Divide, Crow Reservation, 1970. (Yellowtail #371) Bill Yellowtail photographs, 1960s-2000s		Crow Reservation, MT	Cindy Ott	2020-06-23 21:37:54+00	2020-06-18 04:34:23.389319+00	2020-08-04 20:51:02.493334+00	2	3	3
105	Maggie Brass in her Garden	cover_images/items/IMG_8731.jpg	Top photograph: "Lodge Grass is Well Represented With Gardens." This photograph depicts an unidentified man standing in a garden in Lodge Grass.\r\nBottom photograph: "Maggie Brass Picking Peas From a Dry Land Garden." The photo shows Maggie Brass picking peas from her garden/	Apsáalooke (Crow/Absaroke)	Originals: b&w glossy photograph	CIVAM-NARA #8731	1935	Two black and white glossy photographs placed in brackets, attached to a page in report.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction. However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way. Please contact CIVAM at civam.mt@gmail for assistance.	CIVAM-NARA #8731	\N	The photographs appear on page 37 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 1, 1935 to December 31, 1935."		Charles S. Runyan, Agricultural Agent, U.S. Dept of Interior, Office of Indian Affairs, Field Service, “Annual Report of Division of Extension and Industry: Crow Reservation; To Director of Extension and Industry; From January 1, 1935 to December 31, 1935.” Records of Bureau of Indian Affairs (RG 75), Central Classified Files, 1907-39; Crow; 40761-1912-.023.1 To 130-1936-031; Box 2: PI-163 E-121 HM 2001. National Archives and Records Administration, Washington, D.C. CIVAM-NARA #8731		\N	\N	2020-09-16 14:55:09+00	2020-09-16 14:58:22.917399+00	2020-09-16 15:29:04.666508+00	4	3	3
66	Tobacco Society Rattles (3)	cover_images/items/Screenshot_2020-07-16_09.58.35.png	Rawhide Rattle used in Tobacco Society ceremony, containing tobacco seed. Video of Crow elder Tilton Old Bull speaking about the tobacco affiliation of the rattles in the English language,  NMAI, 2005.  Peggy White Wellknown Buffalo is also present in the video.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Rawhide\r\nTechniques: Stitched\r\nDimensions: Unspecified	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI #029923; #122550, #115066	https://collections.si.edu/search/detail/edanmdm:NMAI_32001?q=+029923.000&record=1&hlterm=%2B029923.000	National Museum of American Indian record for #029923: Collection history unknown; formerly in the collection of Frank M. Covert (1858-1929, a New York dealer); purchased by George Heye from Frank M. Covert circa 1911. The NMAI label attached to the item states: Rawhide Rattle Crow 029923; NMAI record for #122550: Collection history unknown; purchased by MAI from an unknown source in 1923. NMAI record for #155066: Buffalo hide/skin Collected between 1918 and 1922 by anthropologist William (Willem) Wildschut (1883-1955); purchased by MAI from William Wildschut in 1922.	Tape #7 Sacred Items #1 029923 Rattle	Tobacco Society Rattles. National Museum of American Indian, Smithsonian Institution (Cat. #029923; #115066; #122550). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Grace McKeon	2020-07-16 13:56:45+00	2020-07-16 13:56:56.861776+00	2020-08-17 03:06:27.50152+00	3	3	3
7	Cup and Pin Game	cover_images/items/Screen_Shot_2020-06-21_at_9.44.36_AM.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Deer bone/bones, copper, glass bead/beads\r\nTechniques: Strung\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to publish it, reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #147876	https://collections.si.edu/search/detail/edanmdm:NMAI_158875?q=147876&record=6&hlterm=147876	National Museum of American Indian record: Collection history unknown; formerly in the collection of Irving H. Larom (1889-1973, of Cody, Wyoming); donated to MAI by I.H. Larom in 1926. The NMAI label attached to the item states: Game 147876 Crow Montana.	The video clip is on tape #12 Non-sacred #2 at 1:29 seconds.\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Cup and Pin Game. National Museum of American Indian, Smithsonian Institution (Cat. #147876). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon & Sophie Zaidman	2020-07-01 17:44:34+00	2020-06-11 19:56:51.298978+00	2020-08-13 15:44:47.891181+00	3	3	3
62	Buffalo Hide Shield and Cover Binnaaché	cover_images/items/Screenshot_2020-07-16_09.44.07.png	Buffalo hide shield and cover decorated with feathers and green painted design to represent a turtle. Video of Crow elder Tilton Old Bull speaking about tobacco seeds in English language,  NMAI, 2005. Peggy White Wellknown Buffalo is also present in the video.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin\r\nTechniques: Painted\r\nDimensions: Unspecified	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #207719.000	https://collections.si.edu/search/detail/edanmdm:NMAI_221989?q=207719&record=3&hlterm=207719&inline=true	National Museum of American Indian record: Collection history unknown; formerly in the collection of Edward Borein (1873-1945, a Western artist and collector); purchased by MAI from his widow Lucille E. Borein (1882-1967) in 1945. The NMAI label attached to object states: Buffalo hide shield and cover decorated with feathers and green painted design to represent a turtle Crow #207719	Tape #7 Sacred Items #1\r\nItem label attached to object states Shield	Buffalo Hide Shield and Cover. National Museum of American Indian, Smithsonian Institution (Cat. #207719.000). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Grace McKeon	2020-07-14 15:04:49+00	2020-07-14 15:05:25.439023+00	2020-08-13 15:44:33.961545+00	3	3	3
8	Saddle Bag (toy/model)	cover_images/items/Screen_Shot_2020-06-21_at_9.50.55_AM.png		Apsáalooke (Crow/Absaroke)		\N	ca. 1920	Media/Materials: Hide, glass bead/beads\r\nTechniques: Lazy/lane stitch beadwork; fringe\r\nDimensions: 33 x 9 cm	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #184702	https://collections.si.edu/search/detail/edanmdm:NMAI_197084?q=184702&record=4&hlterm=184702	National Museum of American Indian record: Collection history unknown; purchased by MAI from an unknown source in 1933. The NMAI label attached to the item states: Saddle bag 184702 Crow Montana.	Tape #12 Non-Sacred #2 \r\nFound item on NMAI printout of Crow items\r\nItem label attached states "Saddle bag"	Saddle Bag (toy/model). National Museum of American Indian, Smithsonian Institution (Cat. #184702). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Sophie Zaidman	2020-07-01 19:06:16+00	2020-06-11 21:36:06.170404+00	2020-08-13 15:45:32.236959+00	3	3	3
9	Gun Case and Gun (toy/model)	cover_images/items/Screen_Shot_2020-06-21_at_9.54.40_AM.png	Hide gun case with fringe and green and greasy yellow beads.  A wooden toy gun accompanies the case.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, glass bead/beads, cotton thread, wood\r\nTechniques: Carved, sewn, overlay beadwork, fringed\r\nDimensions: 34 x 5 x 2 cm	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #152441	https://collections.si.edu/search/detail/edanmdm:NMAI_163672?q=152441&record=8&hlterm=152441	National Museum of American Indian record: Collected in 1926 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI. The NMAI label attached to the item states: Gun Case 152441 Crow Montana.	Tape 12 Non-Sacred #2\r\nItem label attached to object states "Gun case"\r\nVerified by CO 07/29/20	Gun Case & Gun Toy/Model. National Museum of American Indian, Smithsonian Institution (Cat. #152441). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Sophie Zaidman	2020-07-01 19:20:33+00	2020-06-11 21:40:57.264748+00	2020-08-13 15:46:14.066271+00	3	3	3
65	Black Lodge Farm Chapter, 1937	cover_images/items/IMG_9302.jpg	"The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time," 1937.The top photograph depicts a feed (outdoor picnic or feast in local parlay) and the bottom photograph depicts a residents of the Black Lodge District of the Crow Reservation in 1937. Many of the men wear reservation hats, which were modified cowboys popular among Plains Indian men in the early to mid-20th century.  Regular cowboy hats and newsboy beanies are also on display. Along with those in modern outfits, many women are dressed in cotton print dresses, head scarves, and leather belts, which was typical fashion for Crow women at the time. NARA #9302	Apsáalooke (Crow/Absaroke)	Originals: b&w glossy photograph, measuring, ca. 2 x 4.	\N	1937	Two black and white glossy photographs placed in brackets, attached to a page in report.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction. However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way. Please contact CIVAM at civam.mt@gmail for assistance.	CIVAM-NARA #9302	\N	The photographs appear on page 98 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 31, 1937 to December 31, 1937.”		Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 31, 1937 to December 31, 1937.” United States Department of Interior, Office of Indian Affairs. National Archives and Records Administration, Washington, DC. Record Group 79: Bureau of Indian Affairs, Central Classified Files, 1907-1939, Crow 938-1937-031 to 54140-1938-031 Box 3 (PI- 163 E-121 HM 2001) Folder 330-1938 Crow 031 [2 of 2 folders]. CIVAM-NARA #9302.	The Crow reservation is divided into five agricultural districts, including Black Lodge, Crow Agency, Lodge Grass, Reno, and St. Xavier in 1891 and a sixth, Wyola, was added in 1894.	Crow Reservation, MT	Cindy Ott	2020-08-12 15:19:24+00	2020-07-15 02:47:20.130977+00	2020-08-12 15:20:18.635808+00	4	3	3
67	Buffalo Hide Shield with Red Painted Covers Bínnaache	cover_images/items/Screenshot_2020-07-16_10.03.25.png	Buffalo Hide Shield with Red Painted Covers. All the covers have a red painted decoration, and the outside one is also decorated with bunches of feathers and an otter skin. Formally owned by Pretty-On-Top (Apsáalooke). Video of Crow elder Tilton Old Bull describing the shield in Crow and English languages,  NMAI, 2005.  Peggy White Wellknown Buffalo is also present in the video.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin, otter skin/fur, feather/feathers\r\nTechniques: Painted\r\nDimensions: 57 x 6 cm	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat.#143601	https://collections.si.edu/search/detail/edanmdm:NMAI_154299?q=143601.000&record=1&hlterm=143601.000	National Museum of American Indian record: Collected from Pretty-On-Top (Apsáalooke) in 1925 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI. The NMAI label attached to the item states: Buffalo hide shield, with four covers all of which have red painted decoration, and the outside one also decorated with bunches of feathers and an otter skin Crow Montana 143601	Sacred Items #1 143601 Shield	Buffalo Hide Shield with Red Painted Covers. National Museum of American Indian, Smithsonian Institution (Cat. #143601). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Grace McKeon	2020-07-16 14:41:03+00	2020-07-16 14:06:34.056+00	2020-08-13 15:46:08.503657+00	3	3	3
106	Tommy Yellowtail and WM Cashen in St. Xavier Gardens	cover_images/items/IMG_8732.jpg	Top photograph: "Tommy Yellowtail Always has a Good Garden." This photo depicts a well aranged garden with a house in the background. \r\nBottom photograph: "WM Cashen in the St. Xavier has Another Fine Garden." In this image, WM Cashen and two others are standing in a garden, tending to it.	Apsáalooke (Crow/Absaroke)	Originals: b&w glossy photograph	CIVAM-NARA #8732	1935	Two black and white glossy photographs placed in brackets, attached to a page in report.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction. However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way. Please contact CIVAM at civam.mt@gmail for assistance.	CIVAM-NARA #8732	\N	The photographs appear on page 38 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 1, 1935 to December 31, 1935."		Charles S. Runyan, Agricultural Agent, U.S. Dept of Interior, Office of Indian Affairs, Field Service, “Annual Report of Division of Extension and Industry: Crow Reservation; To Director of Extension and Industry; From January 1, 1935 to December 31, 1935.” Records of Bureau of Indian Affairs (RG 75), Central Classified Files, 1907-39; Crow; 40761-1912-.023.1 To 130-1936-031; Box 2: PI-163 E-121 HM 2001. National Archives and Records Administration, Washington, D.C. CIVAM-NARA #8732		\N	\N	2020-09-16 15:11:27+00	2020-09-16 15:22:03.784858+00	2020-09-16 16:04:13.484317+00	4	3	3
94	Dad & Dale at Campfire, ca. 1968	cover_images/items/Dad__Dale_at_Campfire_2.JPG	Crow and Anglo ranch neighbors exchange lore and legend over a campfire.	Apsáalooke (Crow/Absaroke); Anglo	35 mm color slide in 2x2 inch mount	\N	ca. 1968	Reproduction of original 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #1	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Dad & Dale at Campfire, ca. 1968. (Yellowtail #1) Bill Yellowtail photographs, 1960s-2000. Crow Indian Virtual Archive and Museum.		Crow Reservation, MT	\N	\N	2020-08-04 18:58:00.825829+00	2020-08-04 20:58:24.558016+00	2	3	3
34	Cradle Board (toy/model) Baakáatiche	cover_images/items/Screenshot_2020-06-24_20.33.06.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, wood, glass bead/beads\r\nTechniques: Overlay beadwork\r\nDimensions: unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #153321	https://collections.si.edu/search/results.htm?q=153321.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Lillian A. DeLong (a public school teacher in New York City); donated to MAI by Lillian A. DeLong in 1927. The NMAI label attached to the item states: Small beaded baby carrier 153321 Crow	The video clip is on tape #12 Non-sacred #2 at .37\r\nVerified by CO 07/29/20	Cradle Board (toy/model). National Museum of American Indian, Smithsonian Institution (Cat. 153321). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon & Sophie Zaidman	2020-07-01 23:12:38+00	2020-06-16 02:12:49.378938+00	2020-08-08 19:26:41.548389+00	3	3	3
72	Deer Shield with Cover Binnaaché	cover_images/items/Screenshot_2020-07-20_14.51.23.png	Buffalo hide shield, with cover, decorated with two ears and the tail of a deer.  Video of Crow elder Tilton Old Bull and Peggy White Wellknown Buffalo providing brief comments,  NMAI, 2005.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin, deer tail, deerhide/deerskin\r\nTechniques: Stitched\r\nDimensions: 56 x 7 cm	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #141576	https://collections.si.edu/search/detail/edanmdm:NMAI_152202?q=141576.000&record=1&hlterm=141576.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of the Field Museum of Natural History (Chicago, Illinois); acquired by MAI in 1925 through an exchange with the Field Museum. Obtained through W. Wildeshut.The NMAI label attached to object states: Buffalo hide shield and cover decorated with two ears and tail of a deer. Crow Montana 141576	Tape #7 Sacred Items #1\r\nItem label attached to object states Shield	Deer Shield with Cover. National Museum of American Indian, Smithsonian Institution (Cat. #141576). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Grace McKeon	2020-07-20 21:49:03+00	2020-07-20 21:49:08.489796+00	2020-08-17 02:33:36.906963+00	3	3	3
70	Buffalo Shield and Cover with Bullet Hole Binnaaché	cover_images/items/Screenshot_2020-07-20_14.26.07.png	Buffalo hide shield and cover. In the top is a bullet hole, and the last owner of the shield carried to the day of his death the bullet that penetrated the shield and imbedded itself above his right temple. The black perpendicular stripes represent clouds, the zig-zag lines lighting, the lower perpendicular lines rain, and the present represents the moon. The hawk attached to the middle is the war medicine of the original owner. The bundles of hawk feathers represent the hawk who gave the vision to the maker of the shield. Formerly owned by Sits In The Middle (Apsáalooke). Video of Crow elder Tilton Old Bull and Peggy White Wellknown Buffalo describing the shield in Crow and English languages,  NMAI, 2005.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin, deerhide/deerskin, rawhide\r\nTechniques: Stitched\r\nDimensions: Unspecified	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #117679	https://collections.si.edu/search/detail/edanmdm:NMAI_126359?q=117679.000&record=1&hlterm=117679.000	National Museum of American Indian record: Formerly owned by Sits In The Middle (Apsáalooke); collected from his grandson, John Adams, in 1923 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI. The NMAI label attached to object states: Buffalo hide shield and cover. In the top is a bullet hole, and the last owner of the shield carried to the day of his death the bullet that penetrated the shield and imbedded itself above his right temple. The black perpendicular stripes represent clouds, the zig-zag lines lighting, the lower perpendicular lines rain, and the present represents the moon. The hawk attached to the middle is the war medicine of the original owner. The bundles of hawk feathers represent the hawk who gave the vision to the maker of the shield. Crow Montana 117679	Tape #7 Sacred Items #1\r\nItem label attached to object states Buffalo Shield and Cover	Shield and cover.  National Museum of American Indian, Smithsonian Institution (Cat. #117679). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-20 18:29:29+00	2020-07-20 18:36:48.842983+00	2020-08-13 15:45:12.039358+00	3	3	3
10	Cup and Pin Game with Red and Black Beads	cover_images/items/Screenshot_2020-06-29_13.12.58.png	Video of cup and pin game with red and black beads, with Peggy White Wellknown Buffalo briefly describing it in the Crow language during her visit to NMAI in 2005.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Deer bone/bones, copper, glass bead/beads \r\nTechniques: Strung \r\nDimensions: unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #027394	\N	According to NMAI records, the item was collected by John Huber. The NMAI label attached to the item states: Game 027394 Crow Montana.	Tape #12 Non-Sacred #2 \r\nItem label attached to object states "Game"\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Cup and Pin Game with Red and Black Beads. National Museum of American Indian, Smithsonian Institution (Cat. #027394). \r\n\r\nVideo of Peggy White Wellknown Buffalo describing the cup and pin game with red and black beads (Cat. #027394), 2005. Peggy White Wellknown Buffalo and Susie Kelly NMAI Crow Heritage Collection, Crow Indian Virtual Archive and Museum.		Montana, USA	Sophie Zaidman	2020-07-02 02:42:26+00	2020-06-15 20:49:58.604225+00	2020-08-13 15:47:03.842405+00	3	3	3
107	Robin Iron and Little John With The Cattle	cover_images/items/IMG_8737.jpg	Top photograph: "Robin Iron Feeding His 150 Head of Hereford Cattle." This image shows Robert Iron's  cattle grazing in front of some ranch buildings.\r\nBottom photograph: "Little John Take the Gun Learning the Game Early." Little John watches over the heard.	Apsáalooke (Crow/Absaroke)	Originals: b&w glossy photograph	CIVAM-NARA #8737	1935	Two black and white glossy photographs placed in brackets, attached to a page in report.	Two black and white glossy photographs placed in brackets, attached to a page in report.	CIVAM-NARA #8737	\N	The photographs appear on page 39 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 1, 1935 to December 31, 1935."		Charles S. Runyan, Agricultural Agent, U.S. Dept of Interior, Office of Indian Affairs, Field Service, “Annual Report of Division of Extension and Industry: Crow Reservation; To Director of Extension and Industry; From January 1, 1935 to December 31, 1935.” Records of Bureau of Indian Affairs (RG 75), Central Classified Files, 1907-39; Crow; 40761-1912-.023.1 To 130-1936-031; Box 2: PI-163 E-121 HM 2001. National Archives and Records Administration, Washington, D.C. CIVAM-NARA #8737		\N	\N	2020-09-16 15:30:21+00	2020-09-16 15:42:55.981807+00	2020-09-16 15:42:55.981828+00	4	3	3
101	Mrs. L Walks Over Ice Farming at St Xavier	cover_images/items/IMG_8728_IuILWHY.jpg	Top photograph: "Horse On The Other Side, at St Xavier Preparing a Seed Bed." The photograph depicts a man using horses to prepare a seed bed. Bottom photograph: "Mrs L Walks Over Ice, Makes Straight Rows." The photograph depicts Mrs. L Walks Over Ice preparing a field.	Apsáalooke (Crow/Absaroke)		\N	1935	Two black and white glossy photographs placed in brackets, attached to a page in report.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction. However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way. Please contact CIVAM at civam.mt@gmail for assistance.	CIVAM-NARA #8728	\N	The photographs appear on page 14 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 1, 1935 to December 31, 1935."		Charles S. Runyan, Agricultural Agent, U.S. Dept of Interior, Office of Indian Affairs, Field Service, “Annual Report of Division of Extension and Industry: Crow Reservation; To Director of Extension and Industry; From January 1, 1935 to December 31, 1935.” Records of Bureau of Indian Affairs (RG 75), Central Classified Files, 1907-39; Crow; 40761-1912-.023.1 To 130-1936-031; Box 2: PI-163 E-121 HM 2001. National Archives and Records Administration, Washington, D.C. CIVAM-NARA #8728		\N	\N	\N	2020-08-12 15:32:07.78627+00	2020-08-17 20:14:42.582578+00	4	3	3
85	Parfleche Bag	cover_images/items/Screenshot_2020-08-03_22.08.45.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, rawhide\r\nTechniques: Painted\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #008776	https://collections.si.edu/search/detail/edanmdm:NMAI_8994?q=008776.000&record=1&hlterm=008776.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Joseph W. Keppler (1872-1956, a long-time friend of George Heye); purchased by George Heye from Joseph Keppler in 1906. The NMAI label attached to object states: Parfleche bag Crow 008776	008776000 Parfleche CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	Parfleche Bag. National Museum of American Indian, Smithsonian Institution (Cat. #008776.000). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-08-04 02:14:34+00	2020-08-04 02:14:55.37937+00	2020-08-13 16:04:24.349363+00	3	3	3
30	Beaded Bags	cover_images/items/Screenshot_2020-06-24_20.36.11.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, glass bead/beads\r\nTechniques: Lazy/lane stitch beadwork\r\nDimensions: unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #118707	https://collections.si.edu/search/detail/edanmdm:NMAI_127451?q=118707.000&record=1&hlterm=118707.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Mrs. Augusta Rankin; purchased by MAI from an unknown source in 1923. The NMAI label attached to the item states: Bag 118707 Crow Montana.	Tape 12 Non-Sacred #2  Item label attached to object states "Bag"\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Beaded Bags. National Museum of American Indian, Smithsonian Institution (Cat. #118707). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Sophie Zaidman	2020-07-02 02:47:43+00	2020-06-16 01:45:04.158154+00	2020-08-08 19:24:59.380549+00	3	3	3
77	Drum	cover_images/items/Screenshot_2020-08-03_20.30.12.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Wood, hide, paint\r\nTechniques: Carved, tied, painted\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #001036	https://collections.si.edu/search/detail/edanmdm:NMAI_1298?q=001036.000&record=1&hlterm=001036.000	National Museum of American Indian record: Collection history unknown; acquired by Frank M. Covert (1858-1929, an Indian artifact dealer in New York) at an unknown date; purchased by George Heye from Frank Covert circa 1904.  The NMAI label attached to object states: Drum Crow 001036	Drum CIVAM Tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	Drum. National Museum of American Indian, Smithsonian Institution (Cat. #001036.000). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-08-04 00:35:04+00	2020-08-04 00:36:05.781785+00	2020-08-13 14:54:03.975356+00	3	3	3
86	Brenda on Don	cover_images/items/Brenda_on_Don.JPG		\N		\N	\N			\N	\N					\N	\N	\N	2020-08-04 14:53:28.722604+00	2020-08-04 15:04:20.186139+00	2	3	3
36	Cradle board (toy/model) with Doll Baakáatiche	cover_images/items/Screenshot_2020-06-24_20.31.43.png	Video of toy cradle board with doll, with Peggy White Wellknown Buffalo describing it in the Crow language during her visit to NMAI on October 20, 2005	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide; glass beads; red cloth; metal studs\r\nTechniques: Lazy/lane stitch beadwork\r\nDimensions: unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #210406	https://collections.si.edu/search/results.htm?q=210406.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Charles H. Hickman (1867-1959, a Methodist minister who worked in Oklahoma from 1915 to 1935); purchased by J. T. Fleming (1889-1968, a developer in Sun City, Florida) from Charles Hickman in 1941; purchased by MAI from J.T. Fleming in 1947 using funds donated by the Viking Fund, Inc. (The Wenner-Gren Foundation for Anthropological Research, Inc.).  The NMAI label attached to the item states: Baby carrier 210406 Montana.	The video clip is on tape #12 Non-sacred #2 at .19 seconds.\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 0729/20	Cradle board (toy/model) with Doll. National Museum of American Indian, Smithsonian Institution (Cat. #210406). \r\n\r\nVideo of Peggy White Wellknown Buffalo describing cradle board and doll (NMAI Cat. 3210406), 2005. Peggy White Wellknown Buffalo and Susie Kelly NMAI Crow Heritage Collection, Crow Indian Virtual Archive and Museum.		Montana, USA	Cindy Ott & Sophie Zaidman	2020-06-25 17:08:12+00	2020-06-16 02:19:42.506774+00	2020-08-08 19:27:09.658301+00	3	3	3
53	Branding Day at FO Corrals (Close-up), ca. 1965	cover_images/items/Branding_Ytail69.JPG	Branding day at FO Corrals (Close-Up), Upper Lodge Grass Valley, Crow Reservation, MT, ca.1965. Foreground: Bruce Yellowtail, Arlen Whiteman, Carson Yellowtail. Background: Bill Yellowtail Sr., Jim Yellowtail, Curtis Hammond.	Apsáalooke (Crow/Absaroke); Anglos	35 mm color slide in 2x2 mount	\N	ca.1965	Reproduction of 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #69	\N	Originals in Bill Yellowtail's private collection, Wyola, MT		Branding day at FO Corrals, Upper Lodge Grass Valley, Crow Reservation, MT, ca.1965. (Yellowtail, #69) Bill Yellowtail photographs, 1960s-2000s		Crow Reservation, MT	Cindy Ott	2020-06-23 21:09:10+00	2020-06-18 04:23:36.571979+00	2020-08-04 20:38:13.429395+00	2	3	3
17	String of Venetian Glass Beads Necklace Áapii	cover_images/items/Screen_Shot_2020-06-23_at_9.58.30_AM.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Glass bead/beads, deer hide/deerskin\r\nTechniques: Strung\r\nDimensions: 117 x 1.7 cm	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #239318	https://collections.si.edu/search/detail/edanmdm:NMAI_254825?q=239318&record=7&hlterm=239318	National Museum of American Indian record: Collection history unknown; formerly in the collection of David T. Vernon (1900-1973); acquired by MAI in 1967, possibly through an exchange with the Jackson Hole Preserve, Inc. (a foundation backed by the Rockefeller family), which purchased Vernon's entire collection in 1965.	Tape #12 Non-Sacred #2 Item label attached to object states "String of Venetian"\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	String of Venetian Beads Necklace. National Museum of American Indian, Smithsonian Institution (Cat. #239318). Video by Peggy White Wellknown Buffalo, 2005.		Montana, USA	Grace McKeon	2020-07-03 21:06:17+00	2020-06-15 22:30:06.062127+00	2020-08-08 19:23:26.815564+00	3	3	3
87	Bringing in a New Pair	cover_images/items/Bringing_in_a_new_pair.JPG		\N		\N	\N			\N	\N					\N	\N	\N	2020-08-04 14:53:57.563019+00	2020-08-04 15:03:52.501202+00	2	3	3
95	Dad and Granny at Christmas	cover_images/items/Dad__Granny_at_Christmas.JPG		\N		\N	\N		Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	\N	\N					\N	\N	\N	2020-08-04 21:00:50.936777+00	2020-08-04 21:00:50.9368+00	2	3	3
16	Cradle board (toy/model) Baakáatiche	cover_images/items/Screen_Shot_2020-06-23_at_9.53.55_AM.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, glass bead/beads\r\nTechniques: Overlay beadwork\r\nDimensions: unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #114875	https://collections.si.edu/search/detail/edanmdm:NMAI_123831?q=114875&record=5&hlterm=114875	National Museum of American Indian record: Collected from Kills Good (Apsáalooke army scout) in 1922 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI.\r\nThe NMAI label attached to the item states: Toy baby carrier, beaded decoration Montana.	Tape 12 Non-Sacred #12 Item label attached to object states "Toy Baby Carrier"\r\n\r\nVerified by CO 07/29/20	Cradle board (toy/model). National Museum of American Indian, Smithsonian Institution (Cat. #114875). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-07 14:33:55+00	2020-06-15 22:24:29.952935+00	2020-08-08 19:23:15.802267+00	3	3	3
33	Backrest and Tripod/Support (toy/model)	cover_images/items/Screenshot_2020-06-24_20.27.53.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Wood, hide, hide thong/babiche, sinew, paint (red)\r\nTechniques: Carved, perforated, stitched, strung, painted\r\nDimensons: 31 x 22 x 1 cm	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #221238	https://collections.si.edu/search/results.htm?q=221238.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of William F. Stiles (1912-1980, MAI curator); donated to MAI by William F. Stiles in 1952. The NMAI label attached to the item states: Toy backrest, red-painted decoration with tripod Crow 221238 Montana.	The video clip is on tape #12 Non-sacred #2 at 1:00 seconds.\r\n\r\nNeed Crow translation\r\n\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 072920	Backrest and Tripod/Support. National Museum of American Indian, Smithsonian Institution (Cat. #221238). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-01 23:48:22+00	2020-06-16 01:59:41.339347+00	2020-08-08 19:26:02.521232+00	3	3	3
88	Card Shark	cover_images/items/Card_Shark.JPG		\N		\N	\N			\N	\N					\N	\N	\N	2020-08-04 14:57:21.09763+00	2020-08-04 15:03:28.606562+00	2	3	3
96	Dad and Kimberly in Kitchen	cover_images/items/Dad__Kimberly_in_Kitchen.JPG		\N		\N	\N		Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	\N	\N					\N	\N	\N	2020-08-04 21:02:00.602733+00	2020-08-04 21:02:00.602756+00	2	3	3
76	Parfleche Case	cover_images/items/Screen_Shot_2020-07-20_at_9.45.44_PM.png	Parfleche Case. Collected in 1922 by anthropologist William Wildschut during fieldwork sponsored by MAI.  Crow elder Tilton Old Bull and Peggy White Wellknown Buffalo are also present in the video.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Rawhide\r\nTechniques: Painted\r\nDimension: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #114880	https://collections.si.edu/search/detail/edanmdm:NMAI_123837?q=+114880.000&record=1&hlterm=%2B114880.000	National Museum of American Indian record: Collected in 1922 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI.\r\nThe NMAI label attached to the item states: Unspecified	Sacred Items 114880 Parfleche Case	Parfleche Case. National Museum of American Indian, Smithsonian Institution (Cat. #114880). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Sophie Zaidman and Grace McKeon	2020-07-30 02:45:12+00	2020-07-21 01:57:50.409845+00	2020-08-13 14:53:09.840025+00	3	3	3
108	Eli Black Hawk and the Cattle Association	cover_images/items/IMG_8738.jpg	Top photograph: "The Round Up of the Little Horn Cattle Association." This image depicts a large group of cattle in front of the mountains.\r\n\r\nBottom photograph: "Eli Black Hawk Bringing in His Herd to the Association." In this photograph Eli Black Hawk rides with his cattle to the association.	Apsáalooke (Crow/Absaroke)	Originals: b&w glossy photograph	CIVAM-NARA #8738	1935	Two black and white glossy photographs placed in brackets, attached to a page in report.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction. However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way. Please contact CIVAM at civam.mt@gmail for assistance.	CIVAM-NARA #8738	\N	The photographs appear on page 40 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 1, 1935 to December 31, 1935."		Charles S. Runyan, Agricultural Agent, U.S. Dept of Interior, Office of Indian Affairs, Field Service, “Annual Report of Division of Extension and Industry: Crow Reservation; To Director of Extension and Industry; From January 1, 1935 to December 31, 1935.” Records of Bureau of Indian Affairs (RG 75), Central Classified Files, 1907-39; Crow; 40761-1912-.023.1 To 130-1936-031; Box 2: PI-163 E-121 HM 2001. National Archives and Records Administration, Washington, D.C. CIVAM-NARA #8738		\N	\N	2020-09-16 15:54:59+00	2020-09-16 16:08:30.049365+00	2020-09-16 16:08:30.049384+00	4	3	3
11	Cup and Pin Game with Black Beads	cover_images/items/Screen_Shot_2020-06-21_at_10.41.29_AM.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Deer bone/bones, metal, twine/string, glass bead/beads\r\nTechniques: Strung\r\nDimensions: unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI #104378	https://collections.si.edu/search/detail/edanmdm:NMAI_111887?q=104378&record=7&hlterm=104378	National Museum of American Indian record: Collection history unknown; formerly in the collection of John Jay White (1860-1923), a New York City banker and collector of Indian objects); lent to MAI by Mr. White in 1921; donated to MAI by his widow, Grace Hoffman White (Virginia Grace Hoffman, 1862-1937), in 1925. The NMAI label attached to object states: Game Montana Crow 104378.000.	Found item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Cup and Pin Game with Black Beads. National Museum of American Indian, Smithsonian Institution (Cat. #104378). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA.	Sophie Zaidman	2020-07-02 03:07:20+00	2020-06-15 20:53:58.271395+00	2020-08-13 15:52:35.129589+00	3	3	3
63	Buffalo Hide Shield with Deerskin Covers Binnaaché	cover_images/items/Screen_Shot_2020-07-14_at_11.11.17_AM.png	Buffalo-hide shield with deerskin covers. The inside cover shows a black and green decoration representing a bird, and is ornamented with feathers. Video of Crow elder Tilton Old Bull and Peggy White Wellknown Buffalo describing the shield in Crow and English languages,  NMAI, 2005.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin, feather/feathers, paint\r\nTechniques: Painted\r\nDimensions: Unspecified	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #155342	https://collections.si.edu/search/detail/edanmdm:NMAI_166646?q=155342&record=5&hlterm=155342	National Museum of American Indian record: Collected in 1927 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI.  The NMAI label attached to the item states: Buffalo-hide shield with two deerskin covers, the inside one having black and green decoration representing a bird, and ornamented with feathers Crow Montana		Buffalo Hide Shield with Deerskin Covers. National Museum of American Indian, Smithsonian Institution (Cat. #155342). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA.	Sophie Zaidman and Grace McKeon	2020-07-30 03:02:32+00	2020-07-14 15:10:28.435884+00	2020-08-13 14:25:30.425482+00	3	3	3
89	Chopper Crew at Barry's Landing	cover_images/items/Chopper_crew_at_Barrys_Landing.JPG		\N		\N	\N			\N	\N					\N	\N	\N	2020-08-04 14:58:04.75368+00	2020-08-04 15:02:58.045566+00	2	3	3
47	Meat for the Kettle, ca. 1966	cover_images/items/447.JPG	Bill Yellowtail age 18, harvests meat from a successful elk hunt in the Big Horn Mountains, Crow Reservation, MT.	Apsáalooke (Crow/Absaroke)	35 mm color slide in 2x2 inch mount	\N	ca. 1966	Reproduction of original 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #447	\N	Original color slide is in Bill Yellowtail's private collection, Wyola, MT		Meat for the Kettle, ca. 1966. (Yellowtail #447) Bill Yellowtail photographs, 1960s-2000. Crow Indian Virtual Archive and Museum.		Montana, USA	Grace McKeon	2020-07-09 03:08:10+00	2020-06-18 04:14:22.153009+00	2020-08-04 18:45:21.524749+00	2	3	3
80	Quilted Headband	cover_images/items/Screenshot_2020-08-03_21.32.42.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, porcupine quills\r\nTechniques: Quilled (lane stitched)\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #004696	https://collections.si.edu/search/detail/edanmdm:NMAI_4817?q=004696.000&record=1&hlterm=004696.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Frank M. Covert (1858-1929, a New York dealer); purchased by George Heye from Frank M. Covert circa 1905. The NMAI label attached to object states: Quilted Headband Crow 004696	004696000 Head Band CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	Quilted Headband. National Museum of American Indian, Smithsonian Institution (Cat. #004696.000). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-08-04 01:13:50+00	2020-08-04 01:20:50.170858+00	2020-08-13 14:56:54.073512+00	3	3	3
26	Cradle board Ornaments	cover_images/items/Screenshot_2020-06-24_20.40.27.png	The catalog label shown for cat #118712 in the video is for the long thin, striped beaded cradle board ornament in the middle of the box, not the item held up before the camera at the start of the video. The catalog numbers for the two ornaments in the box besides besides cat. #118712 are likely cat #118708, cat#118709, or possibly cat. #184614.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, glass bead/beads\r\nTechniques: Bead-wrapped\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #118712	https://collections.si.edu/search/detail/edanmdm:NMAI_127456?q=118712.000&record=1&hlterm=118712.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Mrs. Augusta Rankin; purchased by MAI from an unknown source in 1923. The NMAI label attached to the item states: Baby Carrier Ornament 118712	Tape 12 Non-Sacred #2  Item label attached to object states "Baby Carrier Ornament"\r\nNeeds Crow term\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Cradle board Ornament. National Museum of American Indian, Smithsonian Institution (Cat. # 118712). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-03 21:29:26+00	2020-06-16 01:28:55.851341+00	2020-08-08 19:24:23.754464+00	3	3	3
28	Cradle board (toy/model) Baakáatiche	cover_images/items/Screenshot_2020-06-24_20.37.59.png	The cradle board has red, white, and blue beads.  (The colors in the video are not true.  Go to "Checkout more here" for a more accurate depiction of the colors.)	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, glass bead/beads\r\nTechniques: Lazy/lane stitch beadwork\r\nDimensions Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #035418	https://collections.si.edu/search/detail/edanmdm:NMAI_38025?q=035418.000&record=1&hlterm=035418.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of John G. Laidacker (1867-1927, an antiques and artifact dealer in St. Clair, Pennsylvania); purchased by George Heye from John Laidacker in 1914. The NMAI label attached to object states: Toy Baby Board Probably Crow 035418	Tape 12 Non-Sacred #2  Item label attached to object states "Toy Baby Board"\r\nVerified by CO 07/29/20	Cradle board (toy/model). National Museum of American Indian, Smithsonian Institution (Cat. #035418). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-07 13:32:21+00	2020-06-16 01:38:38.987221+00	2020-08-08 19:24:39.160423+00	3	3	3
32	Cradle board (toy/model) Baakáatiche	cover_images/items/Screenshot_2020-06-24_20.35.02.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, wool cloth, cotton cloth, glass bead/beads\r\nTechniques: Sewn, overlay beadwork, appliquéd, fringed\r\nDimensions: 36 x 10 x 3 cm	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #184615	https://collections.si.edu/search/results.htm?q=184615.000+	National Museum of American Indian record: Collection history unknown; formerly in the collection of Carolyn Maynard (of New York City); donated to MAI by Carolyn Maynard in 1933.  The NMAI label attached to object states: Toy baby Carrier, beaded decoration Crow 184615 Montana	Tape 12 Non-Sacred #2 \r\nItem label attached to object states "Baby Carrier"\r\nFound item on NMAI printout of Crow items\r\nVerifed by CO 07/29/20	Cradle board (toy/model). National Museum of American Indian, Smithsonian Institution (Cat. #184615). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-03 21:15:52+00	2020-06-16 01:52:12.741396+00	2020-08-08 19:25:40.409768+00	3	3	3
31	Saddle and Saddle cloth (toy/model)	cover_images/items/Screenshot_2020-06-24_20.29.58.png	The catalog label shown in the video is not the correct label for the object shown.  The correct object name is saddle and saddle cloth (toy/model) and the correct catalog number is 118710, as described below. Please see a full and good image of the item by clicking on the external link.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, glass bead/beads, hide thong/babiche\r\nTechniques: Edge beaded, overlay beadwork\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #118710	https://collections.si.edu/search/results.htm?q=118710.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Mrs. Augusta Rankin; purchased by MAI from an unknown source in 1923.  The original catalog card states: Toy saddle and saddle cloth. The NMAI catalog record for #118710 misidentifies the item as a "traveling stick part/fragment."	Tape 12 Non-Sacred #2 Item label attached to object states "Saddle and Saddle Cloth"\r\n\r\nNeeds Crow translation	Saddle and Saddle Cloth( toy/model). National Museum of American Indian, Smithsonian Institution (Cat. #118710). Video by Peggy White Wellknown Buffalo, 2005.		Montana, USA	Grace McKeon	2020-07-03 21:25:53+00	2020-06-16 01:48:24.467958+00	2020-08-08 19:25:24.776519+00	3	3	3
90	Cooling Out a Pie	cover_images/items/Cooling_out_a_pie.JPG		\N		\N	\N			\N	\N					\N	\N	\N	2020-08-04 14:58:29.900233+00	2020-08-04 15:02:33.7129+00	2	3	3
13	Cradle Board (toy/model) with Doll Baakáatiche	cover_images/items/Screen_Shot_2020-06-21_at_4.32.22_PM.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Cotton cloth, hide, glass bead/beads\r\nTechniques: Overlay beadwork\r\nDimensions: 54 x 35 x 7 cm	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #143599	https://collections.si.edu/search/detail/edanmdm:NMAI_154297?q=143599&record=6&hlterm=143599	National Museum of American Indian record: Collected from Ties-Her-Knees (Apsáalooke) in 1925 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI.\r\nThe NMAI label attached to the item states: Toy baby carrier with doll Crow Montana.	Tape 12 Non-Sacred #2 Item label attaches to object states "Baby Carrier"\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Cradle board with Doll. National Museum of American Indian, Smithsonian Institution.(Cat. #143599). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-07 13:52:11+00	2020-06-15 21:54:07.994359+00	2020-08-08 19:22:32.807675+00	3	3	3
35	Cradle board (toy/model) Baakáatiche	cover_images/items/Screenshot_2020-06-24_20.28.51.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, canvas, wood, glass bead/beads\r\nTechniques: Overlay beadwork\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat.#140823	https://collections.si.edu/search/results.htm?q=140823.000	National Museum of American Indian record: Formerly in the collection of Indian art collector Milford G. Chandler (1889-1981) and possibly collected by him; purchased by MAI from Milford Chandler in 1925. The NMAI label attached to the item states: Toy beaded baby carrier 140823 Montana	The video clip is on tape #12 Non-sacred #2 at .29 seconds.\r\nVerified by CO 07/29/20	Cradle board (toy/model). National Museum of American Indian, Smithsonian Institution (Cat. #140823). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon & Sophie Zaidman	2020-07-01 22:45:09+00	2020-06-16 02:16:05.440618+00	2020-08-08 19:26:58.448648+00	3	3	3
91	Cowboy checkers	cover_images/items/Cowboy_checkers.JPG		\N		\N	\N			\N	\N					\N	\N	\N	2020-08-04 14:59:06.301233+00	2020-08-04 15:02:17.348596+00	2	3	3
82	Rattlesnake Skin Covered Bow	cover_images/items/Screenshot_2020-08-03_21.37.25.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Wood, snakeskin\r\nTechniques: Carved\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #006079	https://collections.si.edu/search/detail/edanmdm:NMAI_5770?q=006079.000&record=1&hlterm=006079.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Erastus T. Tefft (1877-1935, a New York stockbroker and collector of Indian artifacts); acquired by George Heye through an exchange with Erastus Tefft in 1905. The NMAI label attached to object states: Bow covered with rattlesnake skin Crow 006079	006079000 Bow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	Rattlesnake Skin Covered Bow. National Museum of American Indian, Smithsonian Institution (Cat. #006079.000). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Plains; USA, Canada	Grace McKeon	2020-08-04 01:35:36+00	2020-08-04 01:42:13.367182+00	2020-08-13 14:57:39.136143+00	3	3	3
19	Cradle board (toy/model) Baakáatiche	cover_images/items/Screenshot_2020-06-24_20.30.58.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, glass bead/beads\r\nTechniques: Overlay beadwork, lazy/lane stitch beadwork\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #023144	https://collections.si.edu/search/detail/edanmdm:NMAI_24576?q=023144.000&record=1&hlterm=023144.000&inline=true	National Museum of American Indian record: Collection history unknown; formerly in the collection of Emil W. Lenders (1864-1934, a Western genre painter who also travelled with Wild West Shows); purchased by George Heye from Emil Lenders in 1909. The NMAI label attached to the item states: Toy Baby carrier 023144 Crow.	The video clip is on tape #12 Non-sacred #2 at .45 seconds.\r\n\r\nFrom 0 to 1 second, the video shows Cat#153321.  Need to clip that out of video and start at 1 second so that only cat#023144 is shown.	Cradle board (toy/model). National Museum of American Indian, Smithsonian Institution (Cat. #023144). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-01 23:30:37+00	2020-06-16 01:17:22.098246+00	2020-08-08 19:24:10.779481+00	3	3	3
79	Beaded Leather Belt	cover_images/items/Screenshot_2020-08-03_21.03.18.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, glass bead/beads\r\nTechniques: Overlay beadwork , lazy/lane stitch beadwork\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #002258	https://collections.si.edu/search/detail/edanmdm:NMAI_2448?q=002258.000&record=1&hlterm=002258.000	National Museum of American Indian record: Said to have been collected by a Central Pacific Railroad (CPRR) employee at an unknown date; acquired by George Heye from an unknown source circa 1904. The NMAI label attached to object states: Leather belt Beaded 002258	002258000 Belt CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	Beaded Leather Belt. National Museum of American Indian, Smithsonian Institution (Cat. #002258.000). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-08-04 01:09:41+00	2020-08-04 01:10:02.11204+00	2020-08-13 15:38:55.680274+00	3	3	3
78	Quilted Hair Ornament	cover_images/items/Screenshot_2020-08-03_20.40.12.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Horse tail, porcupine quills\r\nTechniques: Quilled (lane stitched), quill-wrapped (flat)\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #001819	https://collections.si.edu/search/detail/edanmdm:NMAI_1872?q=001819.000+&record=1&hlterm=001819.000%2B	National Museum of American Indian record: Collection history unknown, but said to have come from the "Bliss collection"; acquired by George Heye from an unknown source in 1904. The NMAI label attached to object states: Hair Ornament Quilted Crow 001819	001819000 Hair Ornament CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	Quilted Hair Ornament. National Museum of American Indian, Smithsonian Institution (Cat. #001819.000). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		North Dakota or South Dakota	Grace McKeon	2020-08-04 00:46:16+00	2020-08-04 00:48:45.367562+00	2020-08-13 14:54:56.115272+00	3	3	3
92	Dad and Kim on Tractor	cover_images/items/Dad___Kim_on_tractor.JPG		Apsáalooke (Crow/Absaroke)	35 mm color slide in 2x2 inch mount	\N	\N	Reproduction of original 2x2 color slide	Bill Yellowtail has allowed all of his photographs to have unrestricted access and use. If you would like to reproduce one of the images, or use one in any way, we ask that you kindly inform Mr. Yellowtail of your plans and to please credit him for his work. You can reach Bill via CIVAM at civam-mt@gmail.com. Please include the purpose and place for publication in your request.	Yellowtail #2	\N	Originals in Bill Yellowtail's private collection, Wyola, MT				Crow Reservation, MT	Cindy Ott	2020-08-04 19:01:55+00	2020-08-04 14:59:34.68787+00	2020-08-04 19:02:10.109748+00	2	3	3
84	Grave Sticker	cover_images/items/Screenshot_2020-08-03_21.58.57.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Wood\r\nTechniques: Wrapped, tied\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #008786	https://collections.si.edu/search/detail/edanmdm:NMAI_9005?q=008786.000&record=1&hlterm=008786.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Joseph W. Keppler (1872-1956, a long-time friend of George Heye); purchased by George Heye from Joseph Keppler in 1906. The NMAI label attached to object states: Grave sticker Crow 008786	008786000 Grave Stick CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	Grave Sticker. National Museum of American Indian, Smithsonian Institution (Cat. #008786.000). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-08-04 02:03:58+00	2020-08-04 02:04:51.009184+00	2020-08-13 15:42:30.088317+00	3	3	3
64	Bull Elk Shield with Feathers Binnaaché	cover_images/items/Screen_Shot_2020-08-08_at_3.10.18_PM.png	Buffalo hide shield with feathers attached and painted with elk decoration, and cover, that belonged to Bull Elk (Apsáalooke). Video of Crow elder Tilton Old Bull describing the shield in Crow and English languages,  NMAI, 2005.  Peggy White Wellknown Buffalo is also present in the video.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin, paint, feather/feathers\r\nTechniques: Stretched, painted, tied\r\nDimensions: Unspecified	Permission is required to use or reproduce this video. The item itself is unrestricted and in the public domain, but we kindly ask that you contact the relatives of any person associated with the item, if you would like to use or reproduce the image of it. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #147472	https://collections.si.edu/search/detail/edanmdm:NMAI_158432?q=147472&record=4&hlterm=147472	National Museum of American Indian record: Formerly owned by Bull Elk (Apsáalooke); possibly collected from him by Jirah Isham Allen (Colonel Ike Allen, 1839-1929, a Montana prospector, pioneer, and storekeeper) between 1862 and about 1920; purchased by MAI from Jirah Isham Allen in 1926. The NMAI label attached to the item states: Buffalo hide shield with feathers attached and painted decoration and cover from Bull Elk, Crow Montana 147472		Bull Elk Shield with feathers. National Museum of American Indian, Smithsonian Institution (Cat. #147472). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Sophie Zaidman	2020-07-14 15:35:51+00	2020-07-14 15:38:18.946412+00	2020-08-13 15:45:27.357346+00	3	3	3
71	Shield owned by Yellow Brow and Pups with Cloud and Rain Design Binnaaché	cover_images/items/Screen_Shot_2020-08-11_at_11.50.29_AM.png	Buffalo hide shield with two covers. The black patch represents clouds, the forked red lines rain, the crooked black lines ending in knobs represent bullets glancing off of shield. The eighteen blue black lines with the larger one in the center represent pine trees on the distant mountains. The owl fastened to the center is the war medicine that the original owner used as a head ornament when in battle. A small parfleche case containing owl feathers is attached to the outside cover.  Video of Crow elder Tilton Old Bull and Peggy White Wellknown describing the shield in Crow and English languages, NMAI, 2005.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin, feather/feathers, cotton cloth, paint\r\nTechniques: Stitched, painted\r\nDimensions: 6.5 x 54 x 55 cm	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #117681	https://collections.si.edu/search/detail/edanmdm:NMAI_126362?q=117681.000&record=1&hlterm=117681.000	National Museum of American Indian record: Formerly owned by Yellow Brow (Apsáalooke) and subsequently by Pups (Apsáalooke); collected from Pups in 1923 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI. The NMAI label attached to object states: Buffalo hide shield and two covers. The black patch represents clouds, the forked red lines rain, the crooked black lines ending in knobs represent bullets glancing off of shield. The eighteen blue black lines with the larger one in the center represent pine trees on the distant mountains. The owl fastened to the center is the war medicine that the original owner used as a head ornament when in battle. To the outside cover is fastened a small parfleche case containing owl feathers. Crow Montana 117681.  Catalog card states: See Wildschut manuscript, p. 67.	Tape #7 Sacred Items #1\r\nItem label attached to object states Shield and Covers\r\nVerified by C Ott Aug 16.2020\r\nFound item on NMAI printout of Crow items	Yellow Brow and Pups Shield with Cloud and Rain Design.  National Museum of American Indian, Smithsonian Institution (Cat. #117681). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Grace McKeon	2020-07-20 18:48:49+00	2020-07-20 18:49:00.028408+00	2020-08-17 02:43:26.996826+00	3	3	3
15	Game Hoops (minature)	cover_images/items/Screen_Shot_2020-06-23_at_9.39.43_AM.png	3 miniature game hoops painted red	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Wood, hide \r\nTechniques: Painted, red\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it, or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #026007	https://collections.si.edu/search/detail/edanmdm:NMAI_27729?q=026007.000&record=1&hlterm=026007.000https://collections.si.edu/search/detail/edanmdm:NMAI_27729?q=026007.000&record=1&hlterm=026007.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Fred R. Meyer (1874-1939, an amateur photographer who traveled widely in the West) and possibly collected by him; purchased by MAI from his widow Hattie M. Meyer (1886-1971) in 1939. The NMAI label attached to the item states: Miniature game hoop, painted red, 4 specimens Crow Montana	Tape #12 Non-Sacred #2  Item label attached to object states "Game Hoop Mini"\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Game Hoops (miniature). National Museum of American Indian, Smithsonian Institution (Cat. #026007). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-07 13:43:50+00	2020-06-15 22:18:12.759243+00	2020-08-08 19:22:58.819153+00	3	3	3
18	Knife sheath with brass tacks containing knife with wooden handle Bítchiisshe	cover_images/items/Screenshot_2020-06-24_20.34.13.png		Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, brass tacks/bosses, wood\r\nTechniques: Studded\r\nDimensions: Unspecified	This item is unrestricted and in the public domain, but we ask that you contact the relatives of any identified person associated with the item for permission to reproduce it or to make use of it in any way. Send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #207845	https://collections.si.edu/search/detail/edanmdm:NMAI_221714?q=207845&record=5&hlterm=207845	National Museum of American Indian record: Collection history unknown; formerly in the collection of Edward Borein (1873-1945, a Western artist and collector); purchased by MAI from his widow Lucille E. Borein (1882-1967) in 1945. The NMAI label attached to object states: Leather knife sheath decorated with brass tacks containing knife with wooden handle Crow	Tape #12 Non-Sacred #2 \r\nItem label attached to object states Knife Sheath\r\nFound item on NMAI printout of Crow items\r\nVerified by CO 07/29/20	Knife sheath with brass tacks containing knife with wooden handle. National Museum of American Indian, Smithsonian Institution (Cat. #207845.001). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-03 21:05:20+00	2020-06-15 22:44:24.289772+00	2020-08-08 19:23:52.181332+00	3	3	3
61	Buffalo Hide Shield with Red and Black Paint Binnaaché	cover_images/items/Screenshot_2020-07-14_10.50.22.png	Buffalo hide shield decorated red and black paint, feathers, hoofs, claws, and a cover which is decorated with a buffalo figure in black paint. Video of Crow elder Tilton Old Bull describing the shield in Crow language,  NMAI, 2005.  Peggy White Wellknown Buffalo is also present in the video.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin, glass bead/beads\r\nTechniques: Painted, bead-wrapped\r\nDimensions: Unspecified	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #214464	https://collections.si.edu/search/detail/edanmdm:NMAI_228900?q=214464&record=4&hlterm=214464	National Museum of American Indian record: Collection history unknown; formerly in the collection of Paul J. Warner (1881-1950, an amateur ethnologist employed at the Field Museum of Natural History, Chicago, Illinois); purchased by MAI from Paul Warner in 1949.  The NMAI label attached to object states: Buffalo hide shield decorated red and black paint, feathers, hoofs, claws and a skin on which is beaded decoration, and cover decorated with buffalo figure in black paint Crow Montana #214464	Tape #7 Sacred Items #1\r\nItem label attached to object states Shield	Buffalo Hide Shield with Red and Black Paint.  National Museum of American Indian, Smithsonian Institution (Cat. #214464). Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Grace McKeon	2020-07-14 14:43:44+00	2020-07-14 14:51:24.418523+00	2020-08-13 15:44:20.299468+00	3	3	3
73	Spotted Arm's Shield with Two Covers Binnaaché	cover_images/items/Screenshot_2020-07-20_18.08.09_NXHjgQg.png	Shield with painted red elk and green elk with feather attached; includes two covers, one with two feathers attached. Shield is inscribed: Spotted Arm Crow Pryor, Mont. Video of Crow elder Tilton Old Bull and Peggy White Wellknown Buffalo describing the shield in the Crow language,  NMAI, 2005.	Apsáalooke (Crow/Absaroke)		\N	ca. 1875	Media/Materials: Hide, eagle feather/feathers, paint\r\nTechniques: Painted, tied\r\nDimensions: 50.5 x 52 x 2.5 cm	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #024426	https://collections.si.edu/search/detail/edanmdm:NMAI_25923?q=024426.000&record=1&hlterm=024426.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of John E. Linde (Johannes Ernst Linde, 1855-1909), an art collector and owner of a paper company in Hoboken, New Jersey; purchased by George Heye from Mr. Linde's widow, Kate S. Linde (Catherine Taddiken Linde, 1864-1937) in 1909. The NMAI label attached to object states: Shield with two covers. Crow 024426. Written on the shield is: Spotted Arm Crow Pryor, Mont	Tape #7 Sacred Items #1\r\nItem label attached to object states Shield and Covers	Spotted Arm's Shield with Red and Green Elk, Feathers, and Two Covers.  National Museum of American Indian, Smithsonian Institution (Cat. #024426).  Video of Tilton Old Bull with Peggy White Wellknown Buffalo filmed by Susie Kelly at NMAI, 2005. Crow Indian Virtual Archive and Museum		Montana, USA	Grace McKeon	2020-07-20 22:05:51+00	2020-07-20 22:05:47.479138+00	2020-08-17 02:18:02.213136+00	3	3	3
68	Humps Shield and Cover Bínnaache	cover_images/items/Screenshot_2020-07-16_11.20.55.png	Buffalo hide shield and cover. The green border on the left side of the shield represents the summer season, the crooked lines ending in knobs represent bullets glancing off the shield. The owl feathers represent the vision of a bird at night, and the eagle feathers the same for the day. The buffalo represents the carcass of that animal where the owner had his vision. Formerly owned by Hump (Apsáalooke). Video of Crow elder Tilton Old Bull and Peggy White Wellknown Buffalo describing the shield in Crow and English languages,  NMAI, 2005.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Buffalo hide/skin, deerhide/deerskin\r\nTechniques: Stitched\r\nDimensions: 58 x 56 x 13 cm	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #117678	https://collections.si.edu/search/detail/edanmdm:NMAI_126358?q=117678.000&record=1&hlterm=117678.000	National Museum of American Indian record: Formerly owned by Hump (Apsáalooke); transferred by him to Two Face (Apsáalooke); subsequently transferred to Crazy Head (Apsáalooke) and then to his son of the same name; acquired by Knows His Coups (Apsáalooke, a son of Crazy Head) after 1907; collected from Knows His Coups in 1923 by anthropologist William (Willem) Wildschut (1883-1955) during fieldwork sponsored by MAI. The NMAI label attached to the item states: Buffalo hide shield and cover original owner (Hump) saw this shield in a dream while sheltering himself from a blizzard by a buffalo carcass. The green border on the left side of the shield represents the summer season, the crooked lines ending in knobs represent bullets glancing off the shield. The owl feathers represent the vision of this bird at night, and the eagle feathers the same for day. The buffalo represents the carcass of that animal where the owner had his vision. Crow Montana 117678	Sacred Items #1 117678 Buffalo Shield and cover	Humps Shield and Cover. (Cat. #117678 ). Video by Peggy White Wellknown Buffalo and Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-16 15:24:16+00	2020-07-16 15:23:47.754227+00	2020-08-13 15:46:33.720497+00	3	3	3
103	Anna Big Day Gardens at Pryor	cover_images/items/IMG_8729_NyOXvKK.jpg	Top photograph: "Anna Big Day of Pryor in her Potatoe Field." This photograph depicts a woman, Anna Big Day, standing in her potato field. Bottom photograph: "Another Fine Garden at Pryor." This photograph depicts a woman in a successful garden in Pryor.	Apsáalooke (Crow/Absaroke)	Originals: b&w glossy photograph	\N	1935	Two black and white glossy photographs placed in brackets, attached to a page in report.	All of these photographs are in the public domain and are, therefore, unrestricted in terms of access, use, and reproduction. However, we kindly ask those interested in using any image to contact relatives of the individuals depicted in the images for permission to use the images in any way. Please contact CIVAM at civam.mt@gmail for assistance.	CIVAM-NARA #8729	\N	The photographs appear on page 35 of Clarence S. Runyan, Agriculture Extension Agent, "Annual Report of Division of Extension and Industry, Crow Reservation, To Director of Extension and Industry, From January 1, 1935 to December 31, 1935."		Charles S. Runyan, Agricultural Agent, U.S. Dept of Interior, Office of Indian Affairs, Field Service, “Annual Report of Division of Extension and Industry: Crow Reservation; To Director of Extension and Industry; From January 1, 1935 to December 31, 1935.” Records of Bureau of Indian Affairs (RG 75), Central Classified Files, 1907-39; Crow; 40761-1912-.023.1 To 130-1936-031; Box 2: PI-163 E-121 HM 2001. National Archives and Records Administration, Washington, D.C. CIVAM-NARA #8729		\N	Ryan Wood	2020-08-17 20:17:46+00	2020-08-17 20:20:23.186351+00	2020-08-17 20:25:54.925405+00	4	3	3
69	Shield with Cover Binnaaché	cover_images/items/Screenshot_2020-07-20_14.14.42.png	Video of Crow elder Tilton Old Bull and Peggy White Wellknown Buffalo describing the shield in Crow and English languages,  NMAI, 2005.	Apsáalooke (Crow/Absaroke)		\N	\N	Media/Materials: Hide, feather/feathers, brass bell/bells\r\nTechniques: Painted, tied\r\nDimensions: 50 x 6 cm	Permission is required to use or reproduce this video. According to CIVAM, the item itself is unrestricted, but the NMAI has withheld the item's image from its online catalog. if you would like to use or reproduce the video, please send requests to civam.mt@gmail.com. Please include the purpose and place of publication in your request.	NMAI Cat. #023261	https://collections.si.edu/search/detail/edanmdm:NMAI_24701?q=023261.000&record=1&hlterm=023261.000	National Museum of American Indian record: Collection history unknown; formerly in the collection of Emil W. Lenders (1864-1934, a Western genre painter who also travelled with Wild West Shows); purchased by George Heye from Emil Lenders in 1909. The NMAI label attached to object states: Shield Crow 023261	Tape #7 Sacred Items #1 \r\nItem label attached to object states Shield with cover	Shield and cover.  National Museum of American Indian, Smithsonian Institution (Cat. #023261.000). Video by Peggy White Wellknown Buffalo & Susie Kelly, 2005.		Montana, USA	Grace McKeon	2020-07-20 18:15:14+00	2020-07-20 18:22:49.767209+00	2020-08-17 02:03:27.573722+00	3	3	3
\.


--
-- Data for Name: civam_item_creator; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_item_creator (id, item_id, personorinstitute_id) FROM stdin;
1	3	1
2	48	1
3	50	1
4	52	1
5	53	1
7	55	1
10	60	1
11	36	2
15	10	2
18	18	2
30	17	2
31	7	4
32	8	4
33	9	4
34	10	4
35	34	4
36	19	4
41	13	4
42	14	4
43	15	4
44	16	4
45	26	4
47	28	4
48	30	4
49	31	4
50	32	4
51	33	4
52	35	4
53	61	4
54	62	4
55	63	2
56	62	2
57	66	2
58	66	4
59	67	2
60	67	4
61	68	2
62	68	4
63	7	2
64	8	2
65	9	2
66	11	2
67	11	4
68	13	2
69	14	2
70	69	2
71	69	4
74	71	2
75	71	4
76	72	2
77	72	4
78	73	2
79	73	4
82	15	2
83	16	2
84	17	4
85	18	4
86	19	2
87	26	2
89	28	2
90	30	2
91	31	2
92	32	2
93	33	2
94	34	2
95	35	2
96	36	4
99	76	2
100	76	4
101	63	4
102	64	2
103	64	4
104	61	2
105	47	1
106	1	1
107	42	1
108	77	2
109	77	4
110	78	2
111	78	4
112	79	2
113	79	4
114	80	2
115	80	4
116	82	2
117	82	4
120	84	2
121	84	4
122	85	2
123	85	4
125	64	9
126	64	10
127	37	1
128	94	1
129	92	1
130	38	1
131	95	1
132	72	9
133	65	5
134	65	6
135	100	5
136	100	6
138	76	9
139	73	9
140	71	9
141	70	9
142	69	9
143	62	9
144	68	9
145	67	9
146	63	9
147	66	9
148	70	2
149	70	4
150	77	9
151	101	5
152	101	6
153	103	5
154	103	6
155	104	5
156	104	6
157	105	5
158	105	6
159	106	5
160	106	6
161	107	5
162	107	6
163	108	5
164	108	6
\.


--
-- Data for Name: civam_item_keywords; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_item_keywords (id, item_id, keyword_id) FROM stdin;
1	1	4
4	1	7
5	1	9
6	1	10
7	1	11
8	1	13
9	1	14
10	1	15
11	1	16
31	36	25
32	36	26
33	36	27
34	36	28
35	36	29
36	36	30
37	36	31
38	36	17
39	36	23
40	36	32
41	7	26
42	7	35
43	7	37
44	7	17
45	7	4
46	8	17
47	8	26
48	8	27
49	8	4
50	9	45
51	9	17
52	9	54
53	9	26
54	9	27
55	35	17
56	35	23
57	35	26
58	35	27
59	35	28
60	35	29
61	34	17
62	34	25
63	34	26
64	34	27
65	34	28
66	19	17
67	19	23
68	19	25
69	19	26
70	19	27
71	19	28
72	10	35
73	10	4
74	10	37
75	10	58
76	10	17
77	10	26
81	11	35
82	11	4
83	11	37
84	11	58
85	11	17
86	11	26
93	17	23
94	18	27
95	18	23
96	32	32
97	32	54
98	32	23
99	32	26
100	32	27
101	31	26
102	31	27
103	31	23
104	26	25
105	26	26
106	26	27
107	26	23
108	8	23
109	8	60
110	8	61
111	7	58
112	7	23
113	9	62
114	9	63
115	9	28
116	9	31
117	8	28
118	30	61
119	34	30
120	34	23
121	34	4
122	19	4
123	16	4
124	16	17
125	16	23
126	16	25
127	16	26
128	16	27
129	16	28
130	16	30
131	35	25
132	35	4
133	35	30
134	26	17
135	26	4
138	28	26
139	28	27
140	28	28
141	28	23
146	15	37
147	15	27
148	15	23
149	15	59
150	15	28
152	14	27
153	14	23
156	14	28
157	13	32
159	13	23
160	13	26
161	13	27
162	13	29
163	13	30
164	13	17
165	17	17
166	32	17
167	31	17
168	30	17
169	30	23
170	28	17
172	15	17
173	14	17
174	47	4
175	47	36
176	47	7
177	47	11
178	47	16
179	18	48
180	18	17
181	18	59
182	18	47
184	61	23
185	61	55
186	61	26
187	61	27
188	63	17
189	63	23
190	62	17
191	65	65
192	65	66
193	65	67
194	65	4
195	65	68
196	65	69
198	65	41
199	65	16
201	65	23
202	65	24
203	65	72
204	65	71
205	62	27
206	62	55
207	62	23
208	66	17
209	66	27
210	66	54
211	66	23
212	67	17
215	67	23
216	68	17
217	68	23
218	68	27
219	68	54
224	70	17
225	70	27
226	70	54
227	70	23
228	71	32
229	71	17
230	71	55
231	71	54
232	71	23
233	71	27
234	72	35
235	72	17
236	72	54
237	72	23
238	72	27
239	73	17
240	73	27
241	73	55
242	73	23
252	76	17
253	76	23
254	32	30
255	32	25
256	10	23
257	30	26
258	14	75
259	14	76
260	14	77
261	14	54
262	28	25
263	28	30
264	31	28
265	31	78
266	10	79
267	76	27
268	76	55
272	64	23
273	33	81
274	33	64
275	33	4
276	33	59
277	33	80
278	33	17
279	33	55
280	33	23
281	33	27
282	33	28
283	36	82
284	36	83
285	32	84
286	30	85
287	14	86
288	11	88
289	11	87
290	7	89
291	9	86
292	28	90
293	28	91
294	15	92
295	15	93
296	26	85
297	13	25
298	13	28
299	13	86
300	17	96
301	17	97
302	17	94
303	17	95
304	16	98
305	16	86
306	35	99
307	47	100
308	47	34
309	47	66
310	47	101
311	47	102
312	47	103
313	47	76
314	1	34
315	1	68
316	1	102
317	1	39
318	1	104
319	1	105
320	1	43
321	1	18
322	1	50
323	1	106
324	1	107
325	1	108
326	1	109
327	1	110
328	1	111
329	42	34
330	42	4
331	42	68
332	42	7
333	42	11
334	42	16
335	42	23
336	42	24
337	42	112
338	42	113
339	42	114
340	42	115
341	19	91
342	19	116
343	34	117
344	13	118
345	31	85
346	18	120
347	18	119
348	77	59
349	77	17
350	77	23
351	77	55
352	77	27
353	78	17
354	78	23
356	79	17
357	79	26
358	79	27
359	80	17
360	80	27
361	80	23
362	82	17
363	82	59
367	84	17
368	84	59
369	84	23
370	85	61
371	1	121
372	42	122
374	37	34
375	37	4
376	37	7
377	37	10
378	37	11
379	37	16
380	37	112
381	37	18
382	37	50
383	37	115
384	37	23
385	37	24
386	37	122
387	37	124
388	37	125
393	3	102
397	3	111
400	37	14
401	94	34
402	94	4
403	94	132
404	94	7
405	94	10
406	94	11
408	94	13
409	94	14
410	94	106
411	94	16
412	94	18
413	94	50
414	94	23
415	94	24
416	92	16
417	92	24
418	92	4
419	92	23
421	3	36
422	3	133
423	3	134
424	3	135
425	3	14
426	3	15
427	55	34
428	55	4
429	55	132
430	55	7
431	55	8
432	55	39
433	55	10
434	55	11
435	55	43
436	55	13
437	55	136
438	55	111
439	55	16
440	55	49
441	55	18
442	55	137
443	55	23
444	55	24
445	48	34
446	48	4
447	48	134
448	48	7
449	48	8
450	48	39
451	48	10
452	48	11
453	48	43
454	48	108
455	48	78
456	48	109
457	48	16
458	48	138
459	48	50
460	48	139
461	48	23
462	48	24
463	1	138
464	3	137
465	48	102
466	38	34
467	38	4
468	38	102
469	38	7
470	38	135
471	38	11
472	38	140
473	38	15
474	38	16
475	38	19
476	38	23
477	38	24
478	53	4
479	53	133
480	53	134
481	53	7
482	53	8
483	53	135
484	53	10
485	53	11
486	53	13
487	53	14
488	53	141
489	53	16
490	53	18
491	53	21
492	53	22
493	53	23
494	53	24
495	53	34
496	53	36
497	53	38
498	53	39
499	53	43
500	53	102
501	53	144
502	53	142
503	53	143
504	60	4
505	60	134
506	60	7
507	60	8
508	60	135
509	60	10
510	60	11
511	60	139
512	60	13
513	60	16
514	60	145
515	60	146
516	60	147
517	60	23
518	60	24
519	60	34
520	60	39
521	60	42
522	60	43
523	60	50
524	60	122
525	94	148
526	94	149
527	94	150
528	64	17
534	79	91
542	72	159
546	68	162
547	68	163
548	68	164
549	68	165
554	66	167
556	64	127
561	64	129
562	64	4
563	64	101
564	64	55
565	64	126
566	64	131
567	72	130
568	72	173
569	61	126
570	72	126
571	62	4
572	62	126
579	62	172
580	63	172
581	64	172
582	66	172
585	61	17
586	61	172
587	63	126
590	68	172
591	68	126
592	73	172
593	73	126
594	65	176
595	65	177
596	65	11
597	100	4
598	100	12
599	100	16
600	100	23
601	100	24
602	100	176
603	100	178
604	100	179
605	100	180
606	100	181
607	100	182
608	100	183
609	100	184
610	100	185
611	100	186
612	100	187
613	100	188
614	100	70
615	100	71
616	100	72
617	85	130
618	85	91
619	84	91
620	84	130
621	84	189
622	82	191
623	82	130
624	82	190
625	82	23
626	80	192
627	80	193
628	80	130
629	80	194
630	79	130
631	78	193
632	78	194
633	78	91
634	78	195
635	78	196
636	77	192
637	77	197
638	77	130
639	78	130
640	79	23
641	79	198
642	76	130
646	73	200
647	73	130
649	72	201
650	71	126
651	71	172
652	71	86
653	71	130
654	70	130
655	70	202
656	70	172
657	70	86
658	70	126
659	61	203
660	69	116
661	62	120
662	62	119
663	68	201
664	68	130
665	68	86
666	67	86
667	67	130
668	67	172
669	67	126
670	63	129
671	63	86
672	66	192
673	66	130
675	64	130
676	63	130
677	62	130
678	66	201
679	66	91
680	67	129
681	67	166
682	67	55
683	68	173
684	69	129
685	69	205
686	70	201
687	71	206
688	72	207
689	73	208
690	73	91
694	70	210
695	70	211
696	71	129
697	71	212
698	71	201
699	72	211
701	77	91
702	80	91
703	82	197
704	85	27
705	85	189
706	14	130
707	61	130
708	7	130
709	69	130
710	8	130
711	9	130
712	9	23
713	10	130
714	11	130
715	101	16
716	101	24
717	101	4
718	101	23
719	73	128
720	73	129
721	73	4
722	73	101
723	73	213
724	73	214
725	73	215
726	73	199
727	72	216
728	72	86
729	71	217
730	71	218
731	71	219
732	71	220
733	71	221
734	66	224
735	66	222
736	66	86
737	66	223
738	101	225
739	101	226
740	101	68
741	101	134
742	101	12
743	101	176
744	101	50
745	101	184
746	101	188
747	101	227
748	103	16
749	103	4
750	103	68
751	103	70
752	103	228
753	103	12
754	103	176
755	103	51
756	103	182
757	103	23
758	103	24
759	103	186
760	103	188
761	104	226
762	104	4
763	104	229
764	104	12
765	104	16
766	104	176
767	104	182
768	104	23
769	104	24
770	104	186
771	104	188
772	105	4
773	105	68
774	105	70
775	105	230
776	105	231
777	105	12
778	105	16
779	105	176
780	105	50
781	105	19
782	105	182
783	105	23
784	105	24
785	105	186
786	105	188
787	106	226
788	106	4
789	106	70
790	106	232
791	106	233
792	106	12
793	106	16
794	106	176
795	106	50
796	106	182
797	106	23
798	106	24
799	106	186
800	107	4
801	107	9
802	107	10
803	107	234
804	107	12
805	107	235
806	107	16
807	107	176
808	107	18
809	107	50
810	107	24
811	108	4
812	108	39
813	108	8
814	108	9
815	108	10
816	108	43
817	108	12
818	108	136
819	108	236
820	108	237
821	108	16
822	108	176
823	108	18
824	108	50
825	108	238
826	108	23
827	108	24
\.


--
-- Data for Name: civam_item_location_of_originals; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_item_location_of_originals (id, item_id, personorinstitute_id) FROM stdin;
1	3	1
2	48	1
3	50	1
4	52	1
5	53	1
7	55	1
10	60	1
11	1	1
12	36	3
13	7	3
14	8	3
15	9	3
17	18	3
18	19	3
19	26	3
21	28	3
22	35	3
23	34	3
24	33	3
25	32	3
26	31	3
27	30	3
28	11	3
29	17	3
30	10	3
31	16	3
33	15	3
34	14	3
35	13	3
36	47	1
37	61	3
38	62	3
39	63	3
40	66	3
41	67	3
42	68	3
43	69	3
44	70	3
45	71	3
46	72	3
47	73	3
50	76	3
51	64	3
52	77	3
53	78	3
54	79	3
55	80	3
56	82	3
58	84	3
59	85	3
60	42	1
61	37	1
62	94	1
63	92	1
64	38	1
65	95	1
66	65	7
67	100	7
68	101	7
69	103	7
70	104	7
71	105	7
72	106	7
73	107	7
74	108	7
\.


--
-- Data for Name: civam_keyword; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_keyword (id, word, created_on, modified_on, created_by_id, modified_by_id) FROM stdin;
4	Crow Indians	2020-06-08 21:13:07.402551+00	2020-06-08 21:13:07.402576+00	3	3
7	Big Horn Mountains, Montana	2020-06-08 21:16:22.670484+00	2020-06-08 21:16:22.67051+00	3	3
8	Cattle	2020-06-08 21:17:37.208873+00	2020-06-08 21:17:37.208898+00	3	3
16	image	2020-06-09 01:50:46.225037+00	2020-06-09 01:50:46.225063+00	3	3
17	material-culture	2020-06-09 01:57:05.181902+00	2020-06-09 01:57:05.181931+00	3	3
23	Apsáalooke (Crow/Absaroke)	2020-06-25 16:40:16.903687+00	2020-06-25 16:40:16.903712+00	3	3
24	Crow Indian Reservation	2020-06-25 16:59:53.810501+00	2020-06-25 16:59:53.810525+00	3	3
25	Cradle board	2020-06-25 17:00:44.16511+00	2020-06-25 17:00:44.165135+00	3	3
26	Beadwork	2020-06-25 17:00:52.100561+00	2020-06-25 17:00:52.100585+00	3	3
27	Hide	2020-06-25 17:00:57.337922+00	2020-06-25 17:00:57.337946+00	3	3
28	Toy	2020-06-25 17:01:14.120414+00	2020-06-25 17:01:14.12045+00	3	3
29	Doll	2020-06-25 17:01:22.693566+00	2020-06-25 17:01:22.69359+00	3	3
30	Baakáatiche	2020-06-25 17:01:41.15598+00	2020-06-25 17:01:41.156004+00	3	3
31	Greasy Yellow Color	2020-06-25 17:02:12.460751+00	2020-06-25 17:02:12.460772+00	3	3
32	Cloth	2020-06-30 16:16:34.89706+00	2020-06-30 16:16:34.897084+00	3	3
21	Whiteman, Arlen (1936-2009)	2020-06-09 14:30:06.096782+00	2020-07-01 17:10:29.694401+00	3	3
20	Lodge Grass Creek, Montana	2020-06-09 14:29:20.715297+00	2020-07-01 17:24:46.6346+00	3	3
19	Lodge Grass, Montana	2020-06-09 14:29:07.144727+00	2020-07-01 17:25:53.642615+00	3	3
33	oral-history	2020-07-01 17:34:00.62802+00	2020-07-01 17:34:00.628045+00	3	3
34	Big Horn County, Montana	2020-07-01 17:37:22.286271+00	2020-07-01 17:37:22.286293+00	3	3
35	Deer bone	2020-07-01 17:43:10.465152+00	2020-07-01 17:43:10.465177+00	3	3
78	Saddle	2020-07-30 01:05:54.667796+00	2020-07-30 01:05:54.667822+00	3	3
18	Ranchers	2020-06-09 02:28:59.20567+00	2020-07-01 17:46:19.234739+00	3	3
12	Black & white images	2020-06-08 21:28:33.772888+00	2020-07-01 18:04:26.648222+00	3	3
11	Color images	2020-06-08 21:28:22.57444+00	2020-07-01 18:04:40.87132+00	3	3
9	Ranches	2020-06-08 21:17:42.929699+00	2020-07-01 18:17:22.797622+00	3	3
10	Ranching, American Indian	2020-06-08 21:20:38.521924+00	2020-07-01 18:18:31.459526+00	3	3
13	American Indian/white relations	2020-06-08 21:31:39.011578+00	2020-07-01 18:21:01.388355+00	3	3
38	Branding	2020-07-01 18:22:06.653361+00	2020-07-01 18:22:06.653387+00	3	3
39	American Indian cowboys	2020-07-01 18:54:39.489834+00	2020-07-01 18:54:39.489859+00	3	3
40	African Americans	2020-07-01 18:54:52.653732+00	2020-07-01 18:54:52.653758+00	3	3
41	Black Lodge District	2020-07-01 18:55:47.672694+00	2020-07-01 18:55:47.672721+00	3	3
42	Bull Elk Divide, Montana	2020-07-01 18:56:11.217297+00	2020-07-01 18:56:11.217323+00	3	3
43	Cowboys	2020-07-01 18:56:43.668126+00	2020-07-01 18:56:43.668153+00	3	3
45	Fringe	2020-07-01 18:57:40.803477+00	2020-07-01 18:57:40.803503+00	3	3
46	FO Corrals, Big Horn County, MT	2020-07-01 18:58:40.189126+00	2020-07-01 18:58:40.18915+00	3	3
47	Knife sheath	2020-07-01 18:59:18.772313+00	2020-07-01 18:59:18.772338+00	3	3
48	Knife	2020-07-01 18:59:26.245672+00	2020-07-01 18:59:26.245697+00	3	3
49	Percheron Creek, Montana	2020-07-01 19:00:10.188523+00	2020-07-01 19:00:10.18855+00	3	3
51	Pryor, Montana	2020-07-01 19:00:42.909233+00	2020-07-01 19:00:42.90926+00	3	3
52	Reno District	2020-07-01 19:01:23.499214+00	2020-07-01 19:01:23.499242+00	3	3
53	Sagebrush Basin, Montana	2020-07-01 19:01:42.074721+00	2020-07-01 19:01:42.074742+00	3	3
54	Sewn	2020-07-01 19:01:59.888754+00	2020-07-01 19:01:59.888778+00	3	3
55	Paint	2020-07-01 19:02:10.516057+00	2020-07-01 19:02:10.51608+00	3	3
56	Tipi	2020-07-01 19:02:44.105137+00	2020-07-01 19:02:44.105161+00	3	3
57	Wyola, Montana	2020-07-01 19:02:58.916681+00	2020-07-01 19:02:58.916715+00	3	3
58	Cup and pin game	2020-07-02 02:41:13.589205+00	2020-07-02 02:41:13.589232+00	3	3
59	Wood	2020-07-02 03:39:41.020365+00	2020-07-02 03:39:41.02039+00	3	3
62	Gun case	2020-07-06 18:22:07.156308+00	2020-07-06 18:22:45.027573+00	3	3
63	Gun	2020-07-06 18:23:04.81736+00	2020-07-06 18:23:04.817383+00	3	3
60	Saddle bag	2020-07-06 17:14:36.470871+00	2020-07-06 18:23:31.112611+00	3	3
50	Photograph	2020-07-01 19:00:24.526707+00	2020-07-06 18:23:40.756724+00	3	3
37	Game	2020-07-01 17:43:33.790199+00	2020-07-06 18:24:06.595936+00	3	3
61	Bag/Pouch	2020-07-06 17:15:53.429705+00	2020-07-06 18:52:26.133315+00	3	3
64	Furnishings (home)	2020-07-06 21:16:42.018382+00	2020-07-06 21:16:42.018405+00	3	3
65	Feed	2020-07-15 03:12:00.084946+00	2020-07-15 03:12:00.084993+00	3	3
66	Food	2020-07-15 03:12:08.935586+00	2020-07-15 03:12:08.93561+00	3	3
67	Reservation hat	2020-07-15 03:12:22.815545+00	2020-07-15 03:12:22.815566+00	3	3
68	Women	2020-07-15 03:12:35.588999+00	2020-07-15 03:12:35.589028+00	3	3
69	Children	2020-07-15 03:13:54.584504+00	2020-07-15 03:13:54.584529+00	3	3
70	Farming	2020-07-15 03:14:21.806074+00	2020-07-15 03:14:21.806098+00	3	3
71	Bureau of Indian Affairs	2020-07-15 03:17:07.472182+00	2020-07-15 03:17:07.472206+00	3	3
72	Division Extension & Industry	2020-07-15 03:17:34.340397+00	2020-07-15 03:17:34.340422+00	3	3
73	Male voice	2020-07-21 16:39:13.342073+00	2020-07-21 16:39:13.342096+00	3	3
74	Female voice	2020-07-21 16:39:21.517366+00	2020-07-21 16:39:21.517391+00	3	3
75	Quiver	2020-07-29 23:25:15.046605+00	2020-07-29 23:25:15.046631+00	3	3
76	Hunting and fishing	2020-07-29 23:26:26.811622+00	2020-07-29 23:26:26.811647+00	3	3
77	Warfare	2020-07-29 23:26:43.329609+00	2020-07-29 23:26:43.329638+00	3	3
79	Huber, John	2020-07-30 01:54:24.851599+00	2020-07-30 01:54:24.851625+00	3	3
80	Stiles, William F.	2020-07-30 02:56:55.62104+00	2020-07-30 02:56:55.621067+00	3	3
81	Backrest	2020-07-30 02:57:34.268784+00	2020-07-30 02:58:22.965877+00	3	3
82	Hickman, Charles H.	2020-07-30 03:04:41.824119+00	2020-07-30 03:04:41.824143+00	3	3
83	Fleming, J.T.	2020-07-30 03:04:55.14779+00	2020-07-30 03:04:55.147815+00	3	3
86	Wildschut, Willem (1883-1955)	2020-07-30 03:09:27.152726+00	2020-07-30 03:09:27.152749+00	3	3
87	White, John Jay (1860-1923)	2020-07-30 03:11:39.835746+00	2020-07-30 03:11:39.83577+00	3	3
88	White, Grace Hoffman (1862-1937	2020-07-30 03:12:29.832329+00	2020-07-30 03:12:29.832354+00	3	3
89	Laron, Irving H. (1889-1973)	2020-07-30 03:13:53.298555+00	2020-07-30 03:13:53.29859+00	3	3
90	Laidacker, John G.	2020-07-30 03:17:01.680365+00	2020-07-30 03:17:01.680391+00	3	3
91	Heye, George	2020-07-30 03:17:08.167737+00	2020-07-30 03:17:08.16776+00	3	3
92	Meyer, Fred R. (1874-1939)	2020-07-30 03:26:10.385276+00	2020-07-30 03:26:10.385301+00	3	3
93	Meyer, Hattie M. (1886-1971)	2020-07-30 03:26:30.586267+00	2020-07-30 03:26:30.586291+00	3	3
94	Vernon, David T. (1900-1973)	2020-07-30 03:41:02.840659+00	2020-07-30 03:41:02.840682+00	3	3
95	Venetian glass beads	2020-07-30 03:44:32.007281+00	2020-07-30 03:44:32.007308+00	3	3
96	Necklace	2020-07-30 03:44:40.316072+00	2020-07-30 03:44:40.316095+00	3	3
97	Jewelry	2020-07-30 03:44:48.175541+00	2020-07-30 03:44:48.175564+00	3	3
98	Kills Good (Apsáalooke scout)	2020-07-30 03:46:56.098223+00	2020-07-30 03:46:56.098246+00	3	3
99	Chandler, Milford G. (1889-1981	2020-07-30 03:49:09.745211+00	2020-07-30 03:49:09.745235+00	3	3
100	Iichiílikaashe	2020-07-31 00:26:24.388456+00	2020-07-31 00:26:24.388479+00	3	3
101	Elk	2020-07-31 00:27:53.850179+00	2020-07-31 00:27:53.850203+00	3	3
102	1960s	2020-07-31 00:28:12.654316+00	2020-07-31 00:28:12.65434+00	3	3
103	Meat	2020-07-31 00:28:22.421489+00	2020-07-31 00:28:22.421512+00	3	3
15	Powers, Jane (1921-1988)	2020-06-09 01:41:57.43017+00	2020-07-31 00:56:24.251143+00	3	3
14	Yellowtail, Bill, Sr. (1914-82)	2020-06-09 01:41:36.307999+00	2020-07-31 00:56:52.555271+00	3	3
104	Bear	2020-07-31 00:57:10.817489+00	2020-07-31 00:57:10.817515+00	3	3
36	Yellowtail, Bill, Jr. (b. 1948)	2020-07-01 17:43:15.344729+00	2020-07-31 00:58:18.440999+00	3	3
105	Teepee Pole Springs	2020-07-31 00:59:59.619759+00	2020-07-31 00:59:59.619784+00	3	3
106	Campfire	2020-07-31 01:00:46.906647+00	2020-07-31 01:00:46.906673+00	3	3
107	Tents	2020-07-31 01:00:53.979688+00	2020-07-31 01:00:53.979716+00	3	3
108	Crow Tribal grazing permit	2020-07-31 01:03:54.143902+00	2020-07-31 01:03:54.143927+00	3	3
109	grazing permits	2020-07-31 01:04:05.495837+00	2020-07-31 01:04:05.495862+00	3	3
110	Cowgirls	2020-07-31 01:04:37.876357+00	2020-07-31 01:04:37.876392+00	3	3
111	Cowhands	2020-07-31 01:04:46.867077+00	2020-07-31 01:04:46.867102+00	3	3
112	Winter	2020-07-31 01:58:40.813507+00	2020-07-31 01:58:40.813533+00	3	3
85	Rankin, Augusta Mrs.	2020-07-30 03:07:46.81029+00	2020-08-02 00:40:32.121129+00	3	3
22	Hammond, Curtis (b. c1905)	2020-06-09 14:30:28.020467+00	2020-08-04 20:38:35.535209+00	3	3
113	Toboggans	2020-07-31 01:58:54.799528+00	2020-07-31 01:58:54.799552+00	3	3
114	Sledding	2020-07-31 01:59:24.998474+00	2020-07-31 01:59:24.998498+00	3	3
115	Snow	2020-07-31 02:00:41.887176+00	2020-07-31 02:00:41.887205+00	3	3
84	Maynard, Carolyn	2020-07-30 03:05:59.475086+00	2020-08-02 00:24:15.41159+00	3	3
116	Lenders, Emil W. (1864-1934)	2020-08-02 00:27:29.110946+00	2020-08-02 00:27:29.110972+00	3	3
117	DeLong, Lillian A.	2020-08-02 00:30:37.667448+00	2020-08-02 00:41:42.618676+00	3	3
119	Borein, Edward (1873-1945)	2020-08-02 00:43:28.017454+00	2020-08-02 00:43:28.01748+00	3	3
120	Borein, Lucille E. (1882-1967)	2020-08-02 00:43:46.403949+00	2020-08-02 00:43:46.403977+00	3	3
118	Ties-Her-Knees  (Apsáalooke)	2020-08-02 00:32:25.993877+00	2020-08-02 00:45:19.992499+00	3	3
121	Ranchers, women	2020-08-04 15:05:47.807987+00	2020-08-04 15:05:47.808013+00	3	3
122	1970s	2020-08-04 15:08:45.517443+00	2020-08-04 15:08:45.517469+00	3	3
124	Tractors	2020-08-04 15:13:19.808638+00	2020-08-04 15:13:19.808666+00	3	3
125	School	2020-08-04 15:14:19.583034+00	2020-08-04 15:14:19.583059+00	3	3
126	Shield	2020-08-04 18:26:41.946126+00	2020-08-04 18:26:41.94615+00	3	3
127	Bull Elk	2020-08-04 18:26:57.866462+00	2020-08-04 18:26:57.866486+00	3	3
128	Crow language	2020-08-04 18:27:20.723778+00	2020-08-04 18:27:20.723804+00	3	3
129	Feathers	2020-08-04 18:27:28.009743+00	2020-08-04 18:27:28.009766+00	3	3
130	Video	2020-08-04 18:27:35.682198+00	2020-08-04 18:27:35.682226+00	3	3
131	Allen, Jirah Isham (1839-1929)	2020-08-04 18:28:15.184211+00	2020-08-04 18:28:15.184234+00	3	3
132	Anglos	2020-08-04 18:56:46.279575+00	2020-08-04 18:56:46.279601+00	3	3
133	Corrals	2020-08-04 19:09:41.570395+00	2020-08-04 19:09:41.570421+00	3	3
134	Horses	2020-08-04 19:11:38.113942+00	2020-08-04 19:11:38.113967+00	3	3
136	Cattle Drives	2020-08-04 19:19:15.697123+00	2020-08-04 19:19:15.697151+00	3	3
137	Landscape	2020-08-04 19:19:24.767183+00	2020-08-04 19:19:24.767208+00	3	3
138	Cow camps	2020-08-04 19:30:11.48805+00	2020-08-04 19:30:11.488075+00	3	3
140	ponds	2020-08-04 19:36:29.434432+00	2020-08-04 19:36:29.434456+00	3	3
135	Yellowtail, Carson (b. 1951)	2020-08-04 19:12:12.978091+00	2020-08-04 20:26:25.762963+00	3	3
139	Yellowtail, Larry Dean (b.1954)	2020-08-04 19:30:27.003342+00	2020-08-04 20:31:51.681646+00	3	3
141	Lodge Grass Valley, MT	2020-08-04 20:33:10.288868+00	2020-08-04 20:33:10.288894+00	3	3
142	Branding iron	2020-08-04 20:35:40.228419+00	2020-08-04 20:35:40.228444+00	3	3
143	Yellowtail, Jim (b. 1955)	2020-08-04 20:36:37.24565+00	2020-08-04 20:36:37.245674+00	3	3
144	Yellowtail, Bruce (b. c1930)	2020-08-04 20:37:04.267761+00	2020-08-04 20:37:04.267785+00	3	3
145	Spooner, Gary	2020-08-04 20:50:45.748621+00	2020-08-04 20:50:45.748647+00	3	3
146	animal medicine	2020-08-04 20:50:52.114965+00	2020-08-04 20:50:52.114988+00	3	3
147	lariat rope	2020-08-04 20:50:58.594353+00	2020-08-04 20:50:58.594377+00	3	3
148	Gibson, Dale	2020-08-04 20:57:06.8632+00	2020-08-04 20:57:06.863226+00	3	3
149	Storytelling	2020-08-04 20:57:20.067387+00	2020-08-04 20:57:20.067413+00	3	3
150	Coffee	2020-08-04 20:58:21.511298+00	2020-08-04 20:58:21.511323+00	3	3
162	Hump	2020-08-11 15:34:08.052908+00	2020-08-11 15:34:08.052932+00	3	3
163	Two Face	2020-08-11 15:34:22.529766+00	2020-08-11 15:34:22.529789+00	3	3
164	Crazy Head	2020-08-11 15:34:28.931265+00	2020-08-11 15:34:28.931287+00	3	3
172	Binnaaché	2020-08-11 15:59:29.858648+00	2020-08-11 15:59:29.858675+00	3	3
173	Deer	2020-08-11 16:00:56.970657+00	2020-08-11 16:00:56.97068+00	3	3
174	Cloud	2020-08-11 16:05:40.742186+00	2020-08-11 16:05:40.74221+00	3	3
175	Rain	2020-08-11 16:05:48.278066+00	2020-08-11 16:05:48.278089+00	3	3
176	1930s	2020-08-12 15:18:18.866961+00	2020-08-12 15:18:18.866987+00	3	3
177	Clothing	2020-08-12 15:18:50.698111+00	2020-08-12 15:18:50.698137+00	3	3
178	Crickets (orthoptera)	2020-08-12 15:55:49.220202+00	2020-08-12 15:55:49.220225+00	3	3
179	Mormon Crickets	2020-08-12 15:56:13.403132+00	2020-08-12 15:56:13.403157+00	3	3
181	Bull Chief, Mike	2020-08-12 15:56:44.731947+00	2020-08-12 15:56:44.731973+00	3	3
182	Gardens	2020-08-12 15:56:51.82565+00	2020-08-12 15:56:51.825674+00	3	3
183	Agriculutural Agents	2020-08-12 15:57:24.009339+00	2020-08-12 15:57:24.009363+00	3	3
185	Corn	2020-08-12 15:57:38.571184+00	2020-08-12 15:57:38.571206+00	3	3
186	Gardners	2020-08-12 15:57:56.385517+00	2020-08-12 15:57:56.385544+00	3	3
187	Extension Agents	2020-08-12 15:59:08.228228+00	2020-08-12 15:59:08.228263+00	3	3
188	Crops	2020-08-12 15:59:51.149944+00	2020-08-12 15:59:51.14997+00	3	3
203	Warner, Paul	2020-08-13 14:14:05.136071+00	2020-08-13 14:14:05.136098+00	3	3
180	Fence posts	2020-08-12 15:56:28.364662+00	2020-08-12 16:02:48.018424+00	3	3
184	Farms	2020-08-12 15:57:28.78374+00	2020-08-12 16:03:16.643855+00	3	3
189	Keppler, Joseph W.  (1872-1956)	2020-08-13 13:47:45.657651+00	2020-08-13 13:47:45.657677+00	3	3
190	Tefft, Erastus T. (1877-1935)	2020-08-13 13:51:46.10565+00	2020-08-13 13:51:46.105677+00	3	3
191	Rattlesnake skin	2020-08-13 13:52:00.667903+00	2020-08-13 13:52:00.667926+00	3	3
192	Covert,  Frank M. (1858-1929)	2020-08-13 13:54:12.341558+00	2020-08-13 13:54:12.341579+00	3	3
193	Porcupine quills	2020-08-13 13:54:39.836039+00	2020-08-13 13:54:39.836075+00	3	3
194	Quilled	2020-08-13 13:54:51.062718+00	2020-08-13 13:54:51.062763+00	3	3
195	Horsetail	2020-08-13 13:58:04.707547+00	2020-08-13 13:58:04.70757+00	3	3
196	Quill-wrapped	2020-08-13 13:59:16.92845+00	2020-08-13 13:59:16.928475+00	3	3
197	Carved	2020-08-13 14:00:11.6133+00	2020-08-13 14:00:11.613325+00	3	3
198	Leather	2020-08-13 14:02:44.909364+00	2020-08-13 14:02:44.909389+00	3	3
200	Linde, Johannes E. (1855-1909)	2020-08-13 14:05:18.567479+00	2020-08-13 14:05:18.567501+00	3	3
201	Stitched	2020-08-13 14:07:48.991549+00	2020-08-13 14:07:56.435398+00	3	3
202	Bullet hole	2020-08-13 14:11:58.895854+00	2020-08-13 14:11:58.895877+00	3	3
204	Otter skin	2020-08-13 14:19:49.267699+00	2020-08-13 14:19:49.267724+00	3	3
205	Bells	2020-08-13 14:33:34.947616+00	2020-08-13 14:33:34.947641+00	3	3
206	Yellow Brow (Apsáalooke)	2020-08-13 14:36:39.150733+00	2020-08-13 14:36:39.150759+00	3	3
207	Deer tail	2020-08-13 14:37:12.843846+00	2020-08-13 14:37:12.843871+00	3	3
208	Linde, Kate S.	2020-08-13 14:39:27.885323+00	2020-08-13 14:39:27.885349+00	3	3
209	Linde, John E.	2020-08-13 14:41:08.871295+00	2020-08-13 14:41:08.871318+00	3	3
210	Sits In The Middle (Apsáalooke)	2020-08-13 14:43:00.133474+00	2020-08-13 14:43:00.1335+00	3	3
211	Deer skin	2020-08-13 14:43:43.878827+00	2020-08-13 14:43:43.878854+00	3	3
212	Pups (Apsáalooke)	2020-08-13 14:45:13.412188+00	2020-08-13 14:45:13.412211+00	3	3
214	Pryor, MT	2020-08-17 02:13:00.70238+00	2020-08-17 02:13:00.702407+00	3	3
215	1870s	2020-08-17 02:13:11.298159+00	2020-08-17 02:13:11.298184+00	3	3
167	Old Bull, Tilton (Apsáalooke)	2020-08-11 15:38:08.528264+00	2020-08-17 02:18:42.777053+00	3	3
199	Eagle feathers	2020-08-13 14:03:52.355261+00	2020-08-17 02:18:55.735458+00	3	3
166	Pretty-On-Top (Apsáalooke)	2020-08-11 15:35:41.18118+00	2020-08-17 02:19:37.758366+00	3	3
165	Knows His Coups (Apsáalooke)	2020-08-11 15:34:44.755688+00	2020-08-17 02:19:53.6171+00	3	3
159	Field Museum of Natural History	2020-08-11 15:30:40.21444+00	2020-08-17 02:34:00.986985+00	3	3
213	Spotted Arm (Apsáalooke)	2020-08-17 02:12:48.6151+00	2020-08-17 02:21:38.465731+00	3	3
216	Deer ears	2020-08-17 02:27:23.792043+00	2020-08-17 02:27:23.792066+00	3	3
217	Owls	2020-08-17 02:40:55.36174+00	2020-08-17 02:40:55.361764+00	3	3
218	Owl feathers	2020-08-17 02:41:03.57217+00	2020-08-17 02:41:03.572195+00	3	3
219	Bullets	2020-08-17 02:41:19.499741+00	2020-08-17 02:41:19.499767+00	3	3
220	Pine trees	2020-08-17 02:41:27.484114+00	2020-08-17 02:41:27.484138+00	3	3
221	War medicine	2020-08-17 02:41:35.874925+00	2020-08-17 02:41:35.874948+00	3	3
222	Buffalo hide	2020-08-17 03:04:06.712315+00	2020-08-17 03:04:06.71234+00	3	3
223	Tobacco Society	2020-08-17 03:04:17.500699+00	2020-08-17 03:04:17.500723+00	3	3
224	Tobacco seeds	2020-08-17 03:04:25.38483+00	2020-08-17 03:04:25.384855+00	3	3
227	Seed Beds	2020-08-17 20:14:35.544234+00	2020-08-17 20:14:35.544261+00	3	3
228	Big Day, Anna	2020-08-17 20:22:27.393716+00	2020-08-17 20:22:27.393741+00	3	3
226	St Xavier, Montana	2020-08-17 20:12:56.826491+00	2020-08-17 20:26:50.953357+00	3	3
225	Walks Over Ice, L	2020-08-17 20:12:47.153457+00	2020-08-17 20:27:31.152537+00	3	3
229	Spotted, WM	2020-08-17 20:34:30.080957+00	2020-08-17 20:34:30.081014+00	3	3
230	Brass, Maggie	2020-09-16 15:08:23.846534+00	2020-09-16 15:08:23.846558+00	3	3
231	Peas	2020-09-16 15:08:30.909237+00	2020-09-16 15:08:30.909261+00	3	3
232	Cashen, WM	2020-09-16 15:21:34.924017+00	2020-09-16 15:21:34.924065+00	3	3
233	Yellowtail, Tommy	2020-09-16 15:21:45.684236+00	2020-09-16 15:21:45.684262+00	3	3
234	Iron, Robin	2020-09-16 15:40:41.5065+00	2020-09-16 15:40:41.506524+00	3	3
235	John, Little	2020-09-16 15:40:54.96603+00	2020-09-16 15:40:54.966052+00	3	3
236	Cattle Association	2020-09-16 16:07:50.063977+00	2020-09-16 16:07:50.064+00	3	3
237	Little Horn, MT	2020-09-16 16:08:04.455243+00	2020-09-16 16:08:04.455268+00	3	3
238	Black Hawk, Eli	2020-09-16 16:08:17.313974+00	2020-09-16 16:08:17.313999+00	3	3
\.


--
-- Data for Name: civam_narrative; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_narrative (id, content, author, created_on, modified_on, created_by_id, item_id, modified_by_id) FROM stdin;
35	Have something to add? Please contact civam.mt@gmail.com	CIVAM Team	2020-07-14 15:10:28.447656+00	2020-08-08 19:20:14.603194+00	1	63	1
11	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-01 17:45:29.018918+00	2020-08-08 19:21:26.447397+00	1	7	1
4	Beaver dams create verdant habitats for all manner of wildlife, including adventuring kids. My brother and I enjoyed many whole days fishing, swimming and imagining there, returning home only in time for supper.	Bill Yellowtail	2020-06-18 04:42:48.643112+00	2020-08-04 19:33:42.852295+00	1	38	1
12	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-01 19:11:42.367062+00	2020-08-08 19:21:36.891043+00	1	8	1
9	Ranchers customarily herd their livestock across each other's pastures. Here, a white rancher/neighbor and his cowhands trail beef steers through a Yellowtail pasture en route to the railroad for transport to market.	Bill Yellowtail	2020-06-23 21:43:00.103115+00	2020-08-04 19:21:32.027343+00	1	55	1
7	Neighbors convene to help each other with branding chores.	Bill Yellowtail	2020-06-18 04:44:22.08877+00	2020-08-04 20:38:13.43638+00	1	53	1
8	When an animal falls sick on the range, ranchers and cowboys must diagnose and treat. First, of course, the animal must be captured by a horseman wielding a lariat rope, immobilized and then medicated. Carson Yellowtail is an expert cattleman, horseman and roper on the open range, and here he and Larry Yellowtail have captured a sick calf. Usually a dose of antibiotic is a life-saver. Attending is Gary Spooner, a college friend of Bill’s from Vermont who spent two summers on the ranch. In this photo Gary has not yet acquired cowboy blue jeans but is beginning his steep learning curve to becoming a capable horseman and cowhand.	Bill Yellowtail	2020-06-18 04:44:41.913773+00	2020-08-04 20:46:40.393203+00	1	60	1
18	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-02 02:52:44.563771+00	2020-08-08 19:24:59.387083+00	1	30	1
21	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-03 21:12:46.352485+00	2020-07-03 21:12:46.352509+00	1	17	1
22	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-03 21:15:13.141446+00	2020-07-03 21:15:13.141469+00	1	18	1
23	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-03 21:24:08.333842+00	2020-07-03 21:24:08.333865+00	1	32	1
24	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-03 21:27:17.709908+00	2020-07-03 21:27:17.709928+00	1	31	1
17	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-02 02:42:10.145657+00	2020-08-08 19:22:02.807208+00	1	10	1
19	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-02 03:06:59.197741+00	2020-08-08 19:22:21.503457+00	1	11	1
33	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-14 14:51:24.432747+00	2020-07-14 14:51:24.432768+00	1	61	1
31	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-07 13:55:28.38183+00	2020-08-08 19:22:32.814452+00	1	13	1
29	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-07 13:44:09.110932+00	2020-08-08 19:22:58.825869+00	1	15	1
26	Have something to add? Contact us: civam.mt@gmail.com	CIVAM team	2020-07-06 20:41:33.610224+00	2020-08-08 19:23:15.808971+00	1	16	1
38	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-16 13:56:56.874248+00	2020-08-08 19:28:23.202837+00	1	66	1
39	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-16 14:46:14.059465+00	2020-08-08 19:28:39.088785+00	1	67	1
40	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-16 15:33:15.790928+00	2020-08-08 19:28:51.615895+00	1	68	1
37	Have something to add? Contact civam.mt@gmail.com	CIVAM team	2020-07-15 03:25:43.421883+00	2020-08-12 15:20:18.648508+00	1	65	1
15	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-01 23:21:45.191764+00	2020-08-08 19:26:41.554976+00	1	34	1
13	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-01 19:28:14.732294+00	2020-08-08 19:21:52.082151+00	1	9	1
34	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-14 15:05:25.449986+00	2020-07-14 15:05:25.45001+00	1	62	1
42	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-20 18:22:49.779903+00	2020-07-20 18:22:49.779924+00	1	69	1
43	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-20 18:36:48.855465+00	2020-07-20 18:36:48.855486+00	1	70	1
44	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-20 18:49:00.042924+00	2020-07-20 18:49:00.042945+00	1	71	1
30	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-07 13:48:03.604875+00	2020-08-08 19:22:45.636063+00	1	14	1
36	Have something to add? Please contact civam.mt@gmail.com	CIVAM Team	2020-07-14 15:38:18.95513+00	2020-08-04 18:33:18.221357+00	1	64	1
2	The crew consists of every family member, a neighbor, and a couple of young men cousins. The boss, handling the hot branding iron, is Bill Yellowtail Sr. while Jane Yellowtail applies vaccinations. Curtis Hammond (brown hat) was a good neighbor and always traded help. Carson Yellowtail (bareheaded) and Arlen Whiteman “rassel” a calf while Bruce Yellowtail awaits his turn. Young Jim and Brenda Yellowtail handle their share, and Bill Yellowtail ropes calves on his white horse. “A Branding” is a serious and necessary task on the ranch, and custom calls for collaboration among neighbors and relatives. This is a diverse crew involving workers of all sizes, genders and ethnicities, the only qualification being skill and willingness to work hard. The owner of the cattle puts out the call for recruitment, and payment is a hearty meal or two.	Bill Yellowtail	2020-06-09 12:58:46.863061+00	2020-08-04 19:12:27.471094+00	1	3	1
16	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-01 23:35:20.748136+00	2020-08-08 19:24:10.786177+00	1	19	1
25	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-03 21:29:33.161486+00	2020-08-08 19:24:23.761219+00	1	26	1
27	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-07 13:32:46.859815+00	2020-08-08 19:24:39.167046+00	1	28	1
14	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-01 22:51:08.545691+00	2020-08-08 19:26:58.455383+00	1	35	1
10	Have something to add? Contact us: civam.mt@gmail.com	CIVAM team	2020-06-25 16:39:23.516939+00	2020-08-08 19:27:09.664959+00	1	36	1
45	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-20 21:49:08.502218+00	2020-07-20 21:49:08.502239+00	1	72	1
46	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-20 22:05:47.491744+00	2020-07-20 22:05:47.491771+00	1	73	1
32	Elk, Iichiílikaashe, are plentiful in the Big Horn Mountains of the Crow Reservation with a population re-established by the Crow Tribe in the 1950s. Here, when I was a teenager, I gathered meat from a new kill. Hunting for food sustenance has long been an annual task and remains so today. Sport hunters usually regard the antlers of an elk as a trophy, but traditional Crows are disdainful of the practice. Accordingly, the antlers in this photograph were left in the field, while every bit of usable meat was collected.  (July 16, 2020)	Bill Yellowtail	2020-07-09 03:11:14.379103+00	2020-07-31 00:27:44.310464+00	1	47	1
63	Have something to add? Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 18:49:53.454063+00	2020-08-04 18:49:53.454089+00	1	42	1
50	Who needs a sled? A flattened cardboard box is a superior (and economical) vehicle for snow fun. Foothill slopes provide endless venues with degrees of steepness for every appetite for thrills. The only caveat with the cardboard conveyance is that one must choose a route reasonably free of large rocks. (July 16, 2020)	Bill Yellowtail	2020-07-31 02:00:34.09786+00	2020-07-31 02:00:34.097884+00	1	42	1
51	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-08-04 00:36:05.794597+00	2020-08-04 00:36:05.794619+00	1	77	1
52	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-08-04 00:48:45.380153+00	2020-08-04 00:48:45.380186+00	1	78	1
53	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-08-04 01:10:02.124465+00	2020-08-04 01:10:02.124492+00	1	79	1
54	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-08-04 01:20:50.183256+00	2020-08-04 01:20:50.183278+00	1	80	1
55	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-08-04 01:42:13.379408+00	2020-08-04 01:42:13.379429+00	1	82	1
57	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-08-04 02:04:51.022221+00	2020-08-04 02:04:51.022247+00	1	84	1
58	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-08-04 02:14:55.391529+00	2020-08-04 02:14:55.391551+00	1	85	1
59	Drifted snow afforded vacation days from school for the Yellowtail kids. It was six miles across the foothills to the school bus stop, and Dad drove us there and back every school day, rain, snow or shine. The tribal road department seldom maintained the route. Dad would make a valiant effort to bust the road open with his ranch tractor, but sometimes the snowbanks won.	Bill Yellowtail	2020-08-04 15:14:22.676232+00	2020-08-04 15:14:22.676254+00	1	37	1
61	Have something to add?  Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 18:45:21.531485+00	2020-08-04 18:45:21.531507+00	1	47	1
41	The cow camp is semi-permanent during the summer season on the family’s cattle grazing permit on the Bighorn Mountain section of the Crow Reservation. This campsite in the Bighorn Mountains has been in use for more than a century by stockmen tending cattle on the associated Crow Tribal grazing permit. Being adjacent to their private grazing allotments, the permit has been held by Yellowtails for almost all of that time. One or more cowboys occupy the camp and look after the cattle. I spent every summer of my youth living in that camp. Note that the tent is tattered by a marauding black bear. \r\n\r\nMy parents Jane Powers and Bill Yellowtail met as young cowhands and eloped to marry in 1943 because her family objected to the relationship between a white woman and a Crow man. Ironically, marriages between white men and Indian women had been commonplace for more than a century.	Bill Yellowtail	2020-07-16 15:36:11.996222+00	2020-08-04 18:47:49.187193+00	1	1	1
62	Have something to add?  Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 18:47:49.187989+00	2020-08-04 18:47:49.188009+00	1	1	1
64	Have something to add? Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 18:51:54.970307+00	2020-08-04 18:51:54.97033+00	1	37	1
60	Have something to add? Please contact civam.mt@gmail.com	CIVAM team	2020-08-04 15:42:46.449246+00	2020-08-04 19:05:49.537274+00	1	3	1
65	Have something to add? Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 19:21:32.028119+00	2020-08-04 19:21:32.028139+00	1	55	1
6	This cow camp high in the Bighorn Mountains served as headquarters for a summer grazing permit. The sheep wagon was occupied by the boss, while the other cowhands slept in ‘range teepees' pitched nearby. After the crew experienced a screaming apparition, Cousin Larry pulled out and never returned.\r\n\r\nLarry Dean Yellowtail, a first cousin, was regarded like a brother in the Crow kinship tradition. We grew up and cowboyed together on the cattle ranges of the Crow Reservation. Here, Larry prepares to ride out of the cow camp to monitor the family’s cattle on a grazing permit leased from the Tribe. Care for the cattle involves rides in the cool ends of the day -- dawn and twilight. The expression, “it don’t take long to stay all night on this outfit” reflects that schedule, but midday does afford time for a nap in the shade. Cowboys in camp play cards for chores, such as cooking, washing dishes, hauling wood and water, wrangling horses, and so on.	Bill Yellowtail	2020-06-18 04:43:52.536597+00	2020-08-04 19:30:40.383037+00	1	48	1
66	Have something to add? Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 19:30:40.383858+00	2020-08-04 19:30:40.383879+00	1	48	1
67	Have something to add?  Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 19:33:42.853092+00	2020-08-04 19:33:42.853112+00	1	38	1
68	Have something to add? Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 20:38:13.437168+00	2020-08-04 20:38:13.437189+00	1	53	1
69	Have something to add?  Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 20:46:40.394007+00	2020-08-04 20:46:40.394027+00	1	60	1
70	Storytelling is common ground for cowboys and Indians and Indian-cowboys. Bill Yellowtail Sr. and Dale Gibson were life-long neighbors on their adjoining ranches on the Crow Reservation. They enjoyed nothing more than telling and retelling stories by a campfire with a boiled pot of stout coffee. They shared the same landscape and sense of heritage – one the Crow and the other the white guy -- with no distance between them. The conversations extended from events of the day, to well-known tales of characters on the landscape, to recitations of traditional Crow or Irish legends. Dale could speak a little Crow language. With skills honed over lifetimes of these sessions, both cowboys and Indians treasure a singular ability to transform a mundane event into a hilarious story. Teasing is a high art. The smart young person will practice good listening and respectful quietude. Just keep the coffee cups full.	Bill Yellowtail	2020-08-04 20:54:12.056541+00	2020-08-04 20:54:12.056563+00	1	94	1
71	Have something to add? Please contact civam-mt@gmail.com	CIVAM team	2020-08-04 20:54:12.057343+00	2020-08-04 20:54:12.057363+00	1	94	1
20	Have something to add? Contact us: civam.mt@gmail.com	CIVAM Team	2020-07-02 04:26:24.293147+00	2020-08-08 19:26:02.527733+00	1	33	1
49	Have something to add? Please contact us: civam.mt@gmail.com	CIVAM Team	2020-07-21 01:57:50.420888+00	2020-08-11 15:27:31.1665+00	1	76	1
72	Have something to add? Please contact CIVAM at civam-mt@gmail.com	CIVAM team	2020-08-17 01:35:04.528548+00	2020-08-17 01:35:04.528569+00	1	101	1
\.


--
-- Data for Name: civam_personorinstitute; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_personorinstitute (id, name, culture, dates, description, historical_note, "isPerson", cover_image, address, contact, private_notes, created_on, modified_on, created_by_id, modified_by_id) FROM stdin;
1	Yellowtail, Bill	Apsáalooke (Crow/Absaroke)	1948-		William P. Yellowtail, known as Bill, was born in 1948 on the Crow reservation in Montana.  Bill is the eldest of four children of William Yellowtail and Jane Powers who operated a cattle ranch in the Big Horn Mountains. Bill attended Wyola Elementary School and graduated from Lodge Grass High School in 1963. Holding a degree in geography from Dartmouth College, Bill has been a rancher, educator, fishing guide, Montana State Senator and congressional candidate. An expert canoeist and fly fisherman, he was named Angler of the Year for 1991 by Fly Rod and Reel magazine.\r\n\r\nHe served as Regional Administrator for the U.S. Environmental Protection Agency during the Clinton administration, with responsibility for six western states and 27 Indian Tribes. Bill received the Dartmouth Environmental Network's 1994 annual award in recognition of his outstanding contributions to protection of the environment, and he received the Mary G. Ross Award for exemplary service from the Council of Energy Resource Tribes in 1999.  He serves on the Boards of Directors of Humanities Montana, the Burton K. Wheeler Center, and the National Audubon Society.	t	cover_images/pori/Bill_Yellowtail_and_dog_18ZpZqA.jpg	\N	civam-mt@gmail.com	Yellowtail can be reached at byellowtail@hotmail.com.	2020-06-08 20:55:39.514308+00	2020-07-31 00:49:47.105759+00	3	3
2	White Wellknown Buffalo, Peggy	Apsáalooke (Crow/Absaroke)	\N		"Ba La Se She Lesh " (She Who Wears the Money) grew up traditional Crow. Sent away to Indian boarding schools at a young age, she has nurtured more than 200 children in her home as an adult. She practices the Crow sweat lodge and has sponsored numerous Native American Church prayer meetings. With Susie Kelly, she runs The Center Pole, a Native non-profit organization founded in 1999 on the Crow Indian Reservation in Montana and spearheads many community development projects, including the CIVAM.	t	cover_images/pori/White_Wellknown_Buffalo_Peggy_fL9kMyS.jpg	The Center Pole, PO Box 71, Garryowen, MT, 59031	thecenterpole.org		2020-06-09 01:59:48.614469+00	2020-07-06 19:01:26.070334+00	3	3
4	Kelly, Susie	\N	\N		"Dek Gash Bish" (Woman Eagle) helped Peggy create the Center Pole in 1999, bringing practical skills to blend with traditional ways. Originally a photo editor, researcher, writer and project manager in the publishing industry, she brought up multicultural children and worked providing promising youth with opportunities for many years. Her motto: Start where you are...Use what you have...Do what you can--Arthur Ashe.	t	cover_images/pori/Kelly_Suzy_fPuhil4.jpg	The Center Pole, PO Box 71, Garryowen, MT, 59031	wellknownbuffalo@hotmail.com		2020-07-06 18:58:50.449438+00	2020-07-06 19:13:02.764196+00	3	3
3	National Museum of American Indian	\N	\N	To search the NMAI collections, and the Smithsonian Institution collections in general, go to: https://collections.si.edu/search/	About the Museum\r\n\r\nA diverse and multifaceted cultural and educational enterprise, the National Museum of the American Indian (NMAI) is an active and visible component of the Smithsonian Institution, the world's largest museum complex. The NMAI cares for one of the world's most expansive collections of Native artifacts, including objects, photographs, archives, and media covering the entire Western Hemisphere, from the Arctic Circle to Tierra del Fuego.\r\n\r\n The National Museum of the American Indian operates three facilities. The museum on the National Mall in Washington, D.C., offers exhibition galleries and spaces for performances, lectures and symposia, research, and education. The George Gustav Heye Center (GGHC) in New York City houses exhibitions, research, educational activities, and performing arts programs. The Cultural Resources Center (CRC) in Suitland, Maryland, houses the museum's collections as well as the conservation, repatriation, and digital imaging programs, and research facilities. The NMAI's off-site outreach efforts, often referred to as the "fourth museum," include websites, traveling exhibitions, and community programs.\r\n\r\nSince the passage of its enabling legislation in 1989 (amended in 1996), the NMAI has been steadfastly committed to bringing Native voices to what the museum writes and presents, whether on-site at one of the three NMAI venues, through the museum's publications, or via the Internet. The NMAI is also dedicated to acting as a resource for the hemisphere's Native communities and to serving the greater public as an honest and thoughtful conduit to Native cultures—present and past—in all their richness, depth, and diversity.	f	cover_images/pori/nmai.jpg	Fourth Street & Independence Ave., S.W. Washington, DC 20560	https://americanindian.si.edu/		2020-06-25 17:07:25.967553+00	2020-07-06 21:55:18.533878+00	3	3
5	U.S. Department of Interior, Bureau of Indian Affairs, Division of Extension and Industry	\N	\N			f		\N	\N		2020-07-15 02:33:30.658654+00	2020-07-15 02:33:30.658682+00	3	3
6	Runyan, Charles S.	white	\N		Charles S. Runyan was the extension agent for the Bureau of Indian Affairs' Division of Extension and Agency at the Crow reservation, Montana, in the 1930s.  He worked under the supervision of the Crow reservation superintendent Robert Yellowtail.  Runyan wrote a master of science thesis in the department of Agricultural Economics at Montana State College (now Montana State University) in 1939.	f		\N	\N		2020-07-15 02:41:38.909256+00	2020-07-15 02:41:38.90928+00	3	3
7	National Archives and Records Administration, Washington, D.C.	\N	\N			f		\N	\N		2020-07-15 02:42:17.905261+00	2020-07-15 02:42:17.905288+00	3	3
8	Bull, Mike	\N	\N			t		\N	\N	IMG_8727 Mike Bull Chief's Garden After a Visit by Crickets	2020-07-30 14:45:12.028433+00	2020-07-30 14:45:29.494305+00	3	3
9	Old Bull, Tilton	Apsáalooke (Crow/Absaroke)	\N			t		\N	\N		2020-08-04 16:38:56.281969+00	2020-08-04 16:38:56.281998+00	3	3
10	Bull Elk (Apsáalooke)	\N	\N			f		\N	\N		2020-08-04 18:29:06.698734+00	2020-08-04 18:29:06.698761+00	3	3
\.


--
-- Data for Name: civam_video; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.civam_video (id, link, thumbnail, item_id) FROM stdin;
5	https://vimeo.com/428176475		7
7	https://vimeo.com/428278379		9
8	https://vimeo.com/429400297		10
9	https://vimeo.com/429405075		11
11	https://vimeo.com/429420197		13
12	https://vimeo.com/429421924		14
13	https://vimeo.com/429424322		15
14	https://vimeo.com/429427501		16
15	https://vimeo.com/429428875		17
16	https://vimeo.com/429431267		18
28	https://vimeo.com/429475650		36
29	https://vimeo.com/429430505		18
25	https://vimeo.com/429471780		33
6	https://vimeo.com/429460790		8
22	https://vimeo.com/429468977		30
27	https://vimeo.com/429475064		35
26	https://vimeo.com/429474423		34
23	https://vimeo.com/429466722		31
20	https://vimeo.com/429467628		28
24	https://vimeo.com/429470353		32
18	https://vimeo.com/429464273		26
30	https://vimeo.com/438066583		61
31	https://vimeo.com/438066388		62
32	https://vimeo.com/438066109		63
34	https://vimeo.com/438066388		66
36	https://vimeo.com/438065069		68
37	https://vimeo.com/438063442		69
38	https://vimeo.com/438065195		70
39	https://vimeo.com/438065317		71
40	https://vimeo.com/438065731		72
41	https://vimeo.com/438063788		73
45	https://vimeo.com/440149868		76
46	https://vimeo.com/438065835		67
17	https://vimeo.com/443429040		19
33	https://vimeo.com/444092089		64
47	https://vimeo.com/444396390		77
48	https://vimeo.com/444398438		78
50	https://vimeo.com/444404408		80
51	https://vimeo.com/444408002		82
53	https://vimeo.com/444411787		84
54	https://vimeo.com/444413507		85
49	https://vimeo.com/444400412		79
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-05-11 01:47:52.157246+00	1	Test Collection	1	[{"added": {}}]	3	3
2	2020-05-12 19:12:29.946938+00	1	Ceci n'est pas un item	1	[{"added": {}}]	4	3
3	2020-05-20 02:18:30.176445+00	1	Ceci n'est pas un item	3		4	3
4	2020-05-20 02:24:34.734078+00	2	100 tepee camp photograph	1	[{"added": {}}]	4	3
5	2020-05-20 02:25:02.450234+00	2	William P. Yellowtail Photograph Collection	1	[{"added": {}}]	3	3
6	2020-05-20 02:25:23.902929+00	2	100 tepee camp photograph	2	[{"changed": {"fields": ["collection"]}}, {"added": {"name": "image", "object": "Image: 100 tepee camp photograph"}}]	4	3
7	2020-05-20 02:25:30.811711+00	2	100 tepee camp photograph	2	[]	4	3
8	2020-05-20 02:26:35.729408+00	3	IMG-9302	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: IMG-9302"}}]	4	3
9	2020-05-20 02:27:01.881721+00	3	The Crow Indian Extension Service Photographs	1	[{"added": {}}]	3	3
10	2020-05-20 02:27:09.686287+00	3	The Crow Indian Extension Service Photographs	2	[]	3	3
11	2020-05-20 02:27:42.133274+00	2	100 tepee camp photograph	2	[]	4	3
12	2020-05-20 02:33:37.245471+00	3	IMG-9302	2	[{"changed": {"fields": ["collection"]}}]	4	3
13	2020-05-20 02:40:11.356911+00	4	Uncategorized	1	[{"added": {}}]	3	3
14	2020-05-20 02:40:19.852097+00	1	Test Collection	3		3	3
15	2020-05-20 02:41:04.998174+00	4	Baby Carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Baby Carrier"}}]	4	3
16	2020-05-20 02:41:27.539139+00	4	Baby Carrier	2	[]	4	3
17	2020-05-20 02:42:08.519289+00	4	Baby Carrier	2	[{"changed": {"fields": ["description"]}}]	4	3
18	2020-05-20 16:11:04.221048+00	1	Uncategorized	1	[{"added": {}}]	3	3
19	2020-05-20 16:12:07.931761+00	1	Small beaded baby carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Small beaded baby carrier"}}]	4	3
20	2020-05-20 16:12:28.18637+00	2	Bill Yellowtail Photo Collection	1	[{"added": {}}]	3	3
21	2020-05-20 16:15:42.610925+00	1	Small beaded baby carrier	2	[{"changed": {"fields": ["source", "accession_number"]}}]	4	3
22	2020-05-20 16:17:40.965729+00	2	100 tepee camp photograph	1	[{"added": {}}]	4	3
23	2020-05-20 16:19:04.871803+00	3	The Crow Indian Extension Service Photographs	1	[{"added": {}}]	3	3
24	2020-05-20 16:19:09.319678+00	1	Small beaded baby carrier	2	[{"changed": {"name": "video", "object": "Video: Small beaded baby carrier", "fields": ["link"]}}]	4	3
25	2020-05-20 16:20:34.407301+00	1	Uncategorized	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
26	2020-05-20 16:20:53.42743+00	2	100 tepee camp photograph	2	[{"added": {"name": "image", "object": "Image: 100 tepee camp photograph"}}]	4	3
27	2020-05-20 16:22:01.285682+00	3	The Blacklodge Farm Chapter at Play	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: The Blacklodge Farm Chapter at Play"}}]	4	3
28	2020-05-20 16:23:03.691056+00	1	Small beaded baby carrier	2	[{"changed": {"name": "video", "object": "Video: Small beaded baby carrier", "fields": ["link"]}}]	4	3
29	2020-05-20 16:23:03.854302+00	3	The Blacklodge Farm Chapter at Play	2	[{"changed": {"fields": ["description"]}}]	4	3
30	2020-05-20 16:26:44.21491+00	4	A Talk from Bill Yellowtail	1	[{"added": {}}, {"added": {"name": "story", "object": "Story: A Talk from Bill Yellowtail"}}]	4	3
31	2020-05-20 16:29:23.387438+00	3	The Blacklodge Farm Chapter at Play	2	[{"added": {"name": "image", "object": "Image: The Blacklodge Farm Chapter at Play"}}, {"added": {"name": "image", "object": "Image: The Blacklodge Farm Chapter at Play"}}]	4	3
32	2020-05-22 18:12:36.763433+00	1	Chrimst	1	[{"added": {}}]	15	3
33	2020-05-26 15:51:05.660331+00	2	Bill Orangetail Photo Collection	2	[{"changed": {"fields": ["title"]}}]	3	3
34	2020-05-26 15:51:22.573986+00	2	Bill Yellowtail Photo Collection	2	[{"changed": {"fields": ["title"]}}]	3	3
35	2020-05-27 14:19:40.197193+00	1	Test Collection	1	[{"added": {}}]	3	3
36	2020-05-27 14:27:59.853241+00	1	Test Collection	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
37	2020-05-27 20:16:19.195445+00	1	Record Group 79: Bureau of Indian Affairs	1	[{"added": {}}]	18	3
38	2020-05-27 20:16:57.055802+00	1	picture-collection	1	[{"added": {}}]	17	3
39	2020-05-27 20:17:07.954389+00	1	Crow Indian Gardeners and Farmers photographs 1930s-1940s	1	[{"added": {}}]	3	3
40	2020-05-27 20:18:04.431009+00	2	USDA Extension Service	1	[{"added": {}}]	18	3
41	2020-05-27 20:19:14.67417+00	2	Crow Reservation (MT)	1	[{"added": {}}]	17	3
42	2020-05-27 20:19:24.813063+00	3	Feeds	1	[{"added": {}}]	17	3
43	2020-05-27 20:19:43.593581+00	4	Black Lodge District	1	[{"added": {}}]	17	3
44	2020-05-27 20:19:53.498771+00	5	Extension Service, USDA	1	[{"added": {}}]	17	3
45	2020-05-27 20:20:02.632605+00	6	Food	1	[{"added": {}}]	17	3
46	2020-05-27 20:20:10.634696+00	7	Reservation hats	1	[{"added": {}}]	17	3
47	2020-05-27 20:20:27.254333+00	1	Photograph, black and white	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Photograph, black and white"}}]	4	3
48	2020-05-27 20:23:42.982606+00	3	William Yellowtail	1	[{"added": {}}]	18	3
49	2020-05-27 20:26:33.781975+00	4	William P. Yellowtail private collection	1	[{"added": {}}]	18	3
50	2020-05-27 20:27:06.597971+00	2	William P. Yellowtail collection, ca. 1960s-2020	1	[{"added": {}}]	3	3
51	2020-05-27 20:29:44.251734+00	1	Photograph, black and white	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
52	2020-05-27 20:42:55.64553+00	2	test1	1	[{"added": {}}]	4	3
53	2020-05-27 20:55:32.410335+00	2	William P. Yellowtail collection, ca. 1960s-2020	2	[]	3	3
54	2020-05-27 20:56:17.680303+00	8	oral-history	1	[{"added": {}}]	17	3
55	2020-05-27 20:56:28.791493+00	2	test1	2	[{"changed": {"fields": ["keywords"]}}]	4	3
56	2020-05-27 20:56:30.02592+00	3	Test Collection 2	1	[{"added": {}}]	3	3
57	2020-05-27 20:57:35.467816+00	3	Oral History Test	1	[{"added": {}}]	4	3
58	2020-05-27 21:09:58.68838+00	5	All American Indian Days	1	[{"added": {}}]	18	3
59	2020-05-27 21:10:48.25792+00	6	Fulmer County Library	1	[{"added": {}}]	18	3
60	2020-05-27 21:11:10.869933+00	4	Miss Indian America papers	1	[{"added": {}}]	3	3
61	2020-05-27 21:18:47.439707+00	4	headdress	1	[{"added": {}}, {"added": {"name": "story", "object": "Story: headdress"}}, {"added": {"name": "narrative", "object": "Narrative: headdress"}}]	4	3
62	2020-05-28 15:10:40.648861+00	3	Test Collection 2	3		3	3
63	2020-05-28 15:22:34.180687+00	1	Quick Test	1	[{"added": {}}]	3	3
64	2020-05-28 15:22:43.30236+00	1	Quick Test	3		3	3
65	2020-05-28 15:41:39.409626+00	1	William P. Yellowtail	1	[{"added": {}}]	18	3
66	2020-05-28 15:54:06.489223+00	1	William P. Yellowtail Collection	1	[{"added": {}}]	3	3
67	2020-05-28 16:35:17.655828+00	1	William P. Yellowtail	1	[{"added": {}}]	18	3
68	2020-05-28 16:39:06.578177+00	1	William P. Yellowtail collection, 1950s-2020	1	[{"added": {}}]	3	3
127	2020-06-01 18:36:41.985684+00	1	Test1	1	[{"added": {}}]	17	3
69	2020-05-28 16:41:14.023625+00	1	William P. Yellowtail collection, 1960s-2020	2	[{"changed": {"fields": ["title", "description", "summary", "citation", "historical_note", "access_notes_or_rights_and_reproduction"]}}]	3	3
70	2020-05-28 16:41:30.519153+00	1	Ranch life	1	[{"added": {}}]	17	3
71	2020-05-28 16:41:43.547128+00	2	Crow Reservation (MT)	1	[{"added": {}}]	17	3
72	2020-05-28 16:41:49.281748+00	3	Yellowtail, William, Sr. (1910-	1	[{"added": {}}]	17	3
73	2020-05-28 16:41:56.399628+00	3	Yellowtail, William, Sr.	2	[{"changed": {"fields": ["word"]}}]	17	3
74	2020-05-28 16:42:03.655771+00	4	Medicine, Crow, Joseph	1	[{"added": {}}]	17	3
75	2020-05-28 16:42:11.209148+00	5	Big Horn Mountains	1	[{"added": {}}]	17	3
76	2020-05-28 16:42:17.565799+00	6	Cattle ranching	1	[{"added": {}}]	17	3
77	2020-05-28 16:42:22.961498+00	7	Indian-white relations	1	[{"added": {}}]	17	3
78	2020-05-28 16:42:35.265092+00	1	William P. Yellowtail collection, 1960s-2020	2	[{"changed": {"fields": ["keywords"]}}]	3	3
79	2020-05-28 16:44:55.380221+00	1	Campfire at Teepee Pole Spring cow camp	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Campfire at Teepee Pole Spring cow camp"}}]	4	3
80	2020-05-28 16:45:45.285644+00	2	Playing in a beaver pond	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Playing in a beaver pond"}}]	4	3
81	2020-05-28 16:46:17.003112+00	1	Campfire at Teepee Pole Spring cow camp	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
82	2020-05-28 16:47:23.907509+00	4	Trail drive to market	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Trail drive to market"}}]	4	3
83	2020-05-28 16:48:44.166493+00	1	William P. Yellowtail collection, 1960s-2020	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
84	2020-05-28 16:50:19.247951+00	2	The Crow Indian Extension Service Photographs	1	[{"added": {}}]	3	3
85	2020-05-28 16:50:38.449155+00	1	William P. Yellowtail collection, 1960s-2020	2	[{"changed": {"fields": ["geographical_location", "private_cataloger"]}}]	3	3
86	2020-05-28 16:50:50.942968+00	2	The Crow Indian Extension Service Photographs	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
87	2020-05-28 16:51:46.150336+00	6	The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time"}}]	4	3
88	2020-05-28 16:53:19.913397+00	1	William P. Yellowtail	2	[{"changed": {"fields": ["cover_image"]}}]	18	3
89	2020-05-28 16:53:43.557929+00	3	Uncategorized	1	[{"added": {}}]	3	3
90	2020-05-28 16:54:58.583623+00	2	Cindy Ott	1	[{"added": {}}]	18	3
91	2020-05-28 16:55:07.411294+00	8	Small beaded baby carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Small beaded baby carrier"}}]	4	3
92	2020-05-28 16:55:17.07706+00	2	Cindy Ott	2	[{"changed": {"fields": ["culture"]}}]	18	3
93	2020-05-28 16:55:36.774333+00	2	Cindy Ott	2	[{"changed": {"fields": ["cover_image"]}}]	18	3
94	2020-05-28 16:55:55.380873+00	8	Small beaded baby carrier	2	[{"changed": {"name": "video", "object": "Video: Small beaded baby carrier", "fields": ["link"]}}]	4	3
95	2020-05-28 16:56:10.50816+00	2	Cindy Ott	2	[{"changed": {"fields": ["address"]}}]	18	3
96	2020-05-28 17:00:05.175839+00	3	Smithsonian Institution, National Museum of American Indian	1	[{"added": {}}]	18	3
97	2020-05-28 17:04:00.294369+00	4	NMAI Video Recording Collection	1	[{"added": {}}]	3	3
98	2020-05-28 17:07:21.617966+00	8	video	1	[{"added": {}}]	17	3
99	2020-05-28 17:09:55.562028+00	4	Peggy White Wellknown Buffalo	1	[{"added": {}}]	18	3
100	2020-05-28 17:11:02.041614+00	5	Susan Kelly	1	[{"added": {}}]	18	3
101	2020-05-28 17:11:08.094216+00	8	Small beaded baby carrier	2	[{"changed": {"fields": ["collection", "culture_or_community", "catalog_number", "keywords", "creator", "location_of_originals"]}}]	4	3
102	2020-05-28 17:11:29.009481+00	2	Cindy Ott	3		18	3
103	2020-05-28 17:11:42.607356+00	9	oral-history	1	[{"added": {}}]	17	3
104	2020-05-28 17:17:46.518381+00	6	PolicyEd	1	[{"added": {}}]	18	3
105	2020-05-28 17:18:15.870002+00	10	Bill Yellowtail Interview	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Bill Yellowtail Interview"}}]	4	3
106	2020-05-28 17:19:19.576944+00	10	Bill Yellowtail Interview	2	[{"changed": {"name": "video", "object": "Video: Bill Yellowtail Interview", "fields": ["link", "thumbnail"]}}]	4	3
107	2020-05-28 17:22:43.750404+00	10	image	1	[{"added": {}}]	17	3
108	2020-05-28 17:22:51.180832+00	6	The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time	2	[{"changed": {"fields": ["keywords"]}}]	4	3
109	2020-05-28 17:23:03.672886+00	4	Trail drive to market	2	[{"changed": {"fields": ["keywords"]}}]	4	3
110	2020-05-28 17:23:15.848954+00	2	Playing in a beaver pond	2	[{"changed": {"fields": ["keywords"]}}]	4	3
111	2020-05-28 17:23:25.894138+00	1	Campfire at Teepee Pole Spring cow camp	2	[{"changed": {"fields": ["keywords"]}}]	4	3
112	2020-05-28 17:24:55.214685+00	10	Bill Yellowtail Interview	2	[{"changed": {"name": "video", "object": "Video: Bill Yellowtail Interview", "fields": ["link", "thumbnail"]}}]	4	3
113	2020-05-28 17:26:42.038324+00	10	Futuring and Native Leadership	2	[{"changed": {"fields": ["name", "description", "date_of_creation", "external_link", "creator"]}}]	4	3
114	2020-05-28 17:28:35.862196+00	10	Futuring and Native Leadership	2	[{"added": {"name": "narrative", "object": "Narrative: Futuring and Native Leadership"}}]	4	3
115	2020-05-28 17:28:58.906743+00	10	Futuring and Native Leadership	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
116	2020-05-28 17:31:41.050165+00	10	Futuring and Native Leadership	2	[{"added": {"name": "narrative", "object": "Narrative: Futuring and Native Leadership"}}, {"changed": {"name": "narrative", "object": "Narrative: Futuring and Native Leadership", "fields": ["content"]}}]	4	3
117	2020-05-28 17:32:57.213464+00	3	Uncategorized	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
118	2020-05-28 17:36:39.162706+00	11	material-culture	1	[{"added": {}}]	17	3
119	2020-05-28 17:36:43.419062+00	8	Small beaded baby carrier	2	[{"changed": {"fields": ["keywords"]}}]	4	3
120	2020-05-28 17:43:02.034227+00	6	The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time	2	[{"added": {"name": "image", "object": "Image: The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time"}}]	4	3
121	2020-05-28 18:11:46.097326+00	5	Susan Kelly	2	[{"changed": {"fields": ["isPerson"]}}]	18	3
122	2020-05-28 18:11:58.87895+00	5	Susan Kelly	2	[{"changed": {"fields": ["isPerson"]}}]	18	3
123	2020-05-28 18:13:01.53669+00	8	Small beaded baby carrier	2	[{"changed": {"fields": ["keywords"]}}]	4	3
124	2020-05-28 18:13:21.107207+00	8	Small beaded baby carrier	2	[{"changed": {"fields": ["keywords"]}}]	4	3
125	2020-05-28 21:32:27.048142+00	1	Quick Test	1	[{"added": {}}]	3	3
126	2020-05-28 21:32:37.936526+00	1	Quick Test	3		3	3
128	2020-06-01 18:36:51.025099+00	2	Example	1	[{"added": {}}]	17	3
129	2020-06-01 18:37:05.164215+00	3	Example2	1	[{"added": {}}]	17	3
130	2020-06-01 19:26:56.285055+00	3	Example2	3		17	3
131	2020-06-01 19:27:00.879149+00	2	Example	3		17	3
132	2020-06-01 19:27:05.66949+00	1	Test1	3		17	3
133	2020-06-08 20:35:07.38392+00	4	cott	1	[{"added": {}}]	12	3
134	2020-06-08 20:35:49.384311+00	5	gmckeon	1	[{"added": {}}]	12	3
135	2020-06-08 20:36:14.087047+00	6	szaidman	1	[{"added": {}}]	12	3
136	2020-06-08 20:55:39.516215+00	1	Bill Yellowtail	1	[{"added": {}}]	18	3
137	2020-06-08 20:56:45.566854+00	2	William P. Yellowtail photographs, ca. 1960-1980	1	[{"added": {}}]	3	3
138	2020-06-08 21:01:50.922645+00	2	William P. Yellowtail photographs, ca. 1960-1980	2	[{"changed": {"fields": ["creator", "private_notes"]}}]	3	3
139	2020-06-08 21:05:35.579319+00	1	Bill Yellowtail	2	[{"changed": {"fields": ["historical_note", "private_notes"]}}]	18	3
140	2020-06-08 21:09:02.004546+00	2	William P. Yellowtail photographs, ca. 1960-1980	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	3	3
141	2020-06-08 21:13:07.403226+00	4	Crow Indians	1	[{"added": {}}]	17	3
142	2020-06-08 21:13:18.845643+00	5	Crow Reservation (MT)	1	[{"added": {}}]	17	3
143	2020-06-08 21:14:30.478484+00	2	William P. Yellowtail photographs, ca. 1960-1980	2	[{"changed": {"fields": ["cover_image", "keywords"]}}]	3	3
144	2020-06-08 21:14:50.50221+00	5	Crow Indian Reservation (MT)	2	[{"changed": {"fields": ["word"]}}]	17	3
145	2020-06-08 21:15:49.960748+00	6	Big Horn County, Montana	1	[{"added": {}}]	17	3
146	2020-06-08 21:16:22.671098+00	7	Big Horn Mountains, Montana	1	[{"added": {}}]	17	3
147	2020-06-08 21:17:37.209598+00	8	Cattle	1	[{"added": {}}]	17	3
148	2020-06-08 21:17:42.93033+00	9	Ranches	1	[{"added": {}}]	17	3
149	2020-06-08 21:20:38.522608+00	10	Crow Indian cattle ranches	1	[{"added": {}}]	17	3
150	2020-06-08 21:28:22.575092+00	11	Photographs, color	1	[{"added": {}}]	17	3
151	2020-06-08 21:28:33.77352+00	12	Photographs, black & white	1	[{"added": {}}]	17	3
152	2020-06-08 21:30:28.43401+00	2	William P. Yellowtail photographs, ca. 1960-1980	2	[{"changed": {"fields": ["keywords"]}}]	3	3
153	2020-06-08 21:30:48.06381+00	6	Big Horn County, MT	2	[{"changed": {"fields": ["word"]}}]	17	3
154	2020-06-08 21:31:39.012197+00	13	American Indian/white relations	1	[{"added": {}}]	17	3
155	2020-06-08 21:32:31.549891+00	2	William P. Yellowtail photographs, ca. 1960-1980	2	[{"changed": {"fields": ["keywords"]}}]	3	3
156	2020-06-08 21:33:06.809198+00	2	William P. Yellowtail photographs, ca. 1960-1980	2	[]	3	3
157	2020-06-08 23:20:12.803134+00	2	William P. Yellowtail photographs, ca. 1960-1980	2	[{"changed": {"fields": ["description"]}}]	3	3
158	2020-06-09 01:19:18.529829+00	2	William P. Yellowtail photographs, ca. 1960-1980	2	[]	3	3
159	2020-06-09 01:20:24.52243+00	1	Bill Yellowtail	2	[{"changed": {"fields": ["contact"]}}]	18	3
160	2020-06-09 01:29:31.156163+00	1	Bill Yellowtail	2	[{"changed": {"fields": ["isPerson"]}}]	18	3
161	2020-06-09 01:41:36.308634+00	14	Yellowtail, William, Sr.	1	[{"added": {}}]	17	3
162	2020-06-09 01:41:57.430791+00	15	Yellowtail, Jane Power (  )	1	[{"added": {}}]	17	3
163	2020-06-09 01:49:23.059166+00	1	Campfire at Teepee Pole Sprig cow camp, ca. 1964	1	[{"added": {}}, {"added": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Sprig cow camp, ca. 1964"}}]	4	3
164	2020-06-09 01:49:44.24779+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["name"]}}]	4	3
165	2020-06-09 01:50:46.225638+00	16	image	1	[{"added": {}}]	17	3
166	2020-06-09 01:50:50.021307+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["keywords"]}}]	4	3
167	2020-06-09 01:51:53.855287+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
168	2020-06-09 01:53:02.305148+00	2	William P. Yellowtail photographs,   ca. 1960-2000s	2	[{"changed": {"fields": ["title"]}}]	3	3
169	2020-06-09 01:57:05.182522+00	17	material-culture	1	[{"added": {}}]	17	3
170	2020-06-09 01:59:48.621475+00	2	White Wellknown Buffalo, Peggy	1	[{"added": {}}]	18	3
171	2020-06-09 02:01:27.746078+00	2	White Wellknown Buffalo, Peggy	2	[{"changed": {"fields": ["historical_note"]}}]	18	3
172	2020-06-09 02:01:59.547767+00	1	Yellowtail, William P. (Bill)	2	[{"changed": {"fields": ["name"]}}]	18	3
173	2020-06-09 02:04:32.031386+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	1	[{"added": {}}]	3	3
174	2020-06-09 02:09:27.5276+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[{"changed": {"fields": ["dates", "provenance"]}}]	3	3
175	2020-06-09 02:10:33.002625+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[{"changed": {"fields": ["keywords"]}}]	3	3
176	2020-06-09 02:11:11.074184+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[{"changed": {"fields": ["keywords", "private_catalog_date"]}}]	3	3
177	2020-06-09 02:11:57.789618+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
178	2020-06-09 02:12:53.959447+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
179	2020-06-09 02:13:42.746983+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[]	3	3
180	2020-06-09 02:14:19.781674+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
181	2020-06-09 02:14:36.139543+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
182	2020-06-09 02:22:07.843308+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[{"changed": {"fields": ["cover_image"]}}]	3	3
183	2020-06-09 02:27:22.028797+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[]	4	3
184	2020-06-09 02:28:59.206298+00	18	ranchers	1	[{"added": {}}]	17	3
185	2020-06-09 02:33:26.397327+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
186	2020-06-09 02:34:21.84366+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
187	2020-06-09 02:41:12.68249+00	2	Small Beaded Baby Carrier	1	[{"added": {}}]	4	3
188	2020-06-09 02:46:42.268535+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
189	2020-06-09 02:48:16.638139+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
190	2020-06-09 02:48:36.296174+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
191	2020-06-09 12:47:19.242761+00	2	Small Beaded Baby Carrier	2	[]	4	3
192	2020-06-09 12:49:37.71658+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
193	2020-06-09 12:51:25.457822+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
194	2020-06-09 12:57:32.529225+00	3	Branding Day, ca. 1965	1	[{"added": {}}]	4	3
195	2020-06-09 12:58:46.863981+00	3	Branding Day, ca. 1965	2	[{"added": {"name": "narrative", "object": "Narrative: Branding Day, ca. 1965"}}]	4	3
196	2020-06-09 14:19:56.101365+00	3	Branding Day, ca. 1965	2	[{"changed": {"fields": ["keywords", "creator", "location_of_originals"]}}]	4	3
197	2020-06-09 14:21:15.183185+00	3	Branding Day, ca. 1965	2	[{"added": {"name": "image", "object": "Image: Branding Day, ca. 1965"}}]	4	3
198	2020-06-09 14:22:07.387604+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"added": {"name": "image", "object": "Image: Campfire at Teepee Pole Spring cow camp, ca. 1964"}}]	4	3
199	2020-06-09 14:29:07.145418+00	19	Lodge Grass District	1	[{"added": {}}]	17	3
200	2020-06-09 14:29:20.715963+00	20	Lodge Grass Creek	1	[{"added": {}}]	17	3
201	2020-06-09 14:30:06.097433+00	21	Whiteman, Arlen	1	[{"added": {}}]	17	3
202	2020-06-09 14:30:28.021132+00	22	Hammond, Curtis ( )	1	[{"added": {}}]	17	3
203	2020-06-09 14:30:40.95016+00	3	Branding Day, ca. 1965	2	[{"changed": {"fields": ["keywords"]}}]	4	3
204	2020-06-09 14:36:21.311465+00	4	Crow Indian Gardeners & Farmers, 1930s-1940s	1	[{"added": {}}]	3	3
205	2020-06-09 14:51:50.705931+00	2	Small Beaded Baby Carrier	2	[{"added": {"name": "video", "object": "Video: Small Beaded Baby Carrier"}}]	4	3
206	2020-06-09 14:53:02.347214+00	2	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
207	2020-06-09 14:54:24.684426+00	2	Small Beaded Baby Carrier	2	[]	4	3
208	2020-06-09 14:56:39.355147+00	2	Small Beaded Baby Carrier	2	[{"changed": {"name": "video", "object": "Video: Small Beaded Baby Carrier", "fields": ["link"]}}]	4	3
209	2020-06-09 15:39:19.580798+00	5	gmckeon	2	[{"changed": {"fields": ["is_staff"]}}]	12	3
210	2020-06-09 15:39:29.438128+00	6	szaidman	2	[{"changed": {"fields": ["is_staff"]}}]	12	3
211	2020-06-09 15:49:38.564316+00	1	Yellowtail, William P. (Bill)	2	[{"changed": {"fields": ["culture", "private_notes"]}}]	18	3
212	2020-06-09 15:50:31.63532+00	2	White Wellknown Buffalo, Peggy	2	[{"changed": {"fields": ["dates"]}}]	18	3
213	2020-06-09 16:31:47.138628+00	2	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["external_link"]}}]	4	3
214	2020-06-09 16:37:23.335651+00	4	Tape #12 Non-Sacred #2 152441000 Gun Case	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 152441000 Gun Case"}}]	4	3
215	2020-06-09 16:39:26.026945+00	4	Tape #12 Non-Sacred #2 152441000 Gun Case	2	[]	4	3
216	2020-06-09 16:40:08.66172+00	4	Tape #12 Non-Sacred #2 152441000 Gun Case	2	[]	4	3
217	2020-06-09 16:49:58.057343+00	5	Tape #12 Non-Sacred #2 207845001 Knife	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 207845001 Knife"}}]	4	3
218	2020-06-10 16:51:02.204857+00	5	Test Collection	1	[{"added": {}}]	3	3
219	2020-06-10 16:51:18.697891+00	5	Test Collection	3		3	3
220	2020-06-10 16:51:35.275127+00	6	Test Collection	1	[{"added": {}}]	3	3
221	2020-06-10 16:52:10.903768+00	6	Test Item	1	[{"added": {}}]	4	3
222	2020-06-10 16:52:47.917803+00	6	Test Item	2	[{"added": {"name": "image", "object": "Image: Test Item"}}]	4	3
223	2020-06-10 16:53:03.35343+00	6	Test Item	2	[{"deleted": {"name": "image", "object": "Image: Test Item"}}]	4	3
224	2020-06-10 16:53:14.904457+00	6	Test Item	3		4	3
225	2020-06-10 16:53:23.118049+00	6	Test Collection	3		3	3
226	2020-06-11 02:23:17.322947+00	4	Tape #12 Non-Sacred #2 152441000 Gun Case	2	[{"changed": {"fields": ["physical_details", "catalog_number"]}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 152441000 Gun Case"}}]	4	3
227	2020-06-11 19:56:51.307739+00	7	Tape #12 Non-Sacred #2 147876.000 Game	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 147876.000 Game"}}]	4	3
228	2020-06-11 21:22:50.343662+00	7	Tape #12 Non-Sacred #2 147876.000 Game	2	[{"changed": {"fields": ["catalog_number", "external_link"]}}]	4	3
229	2020-06-11 21:36:06.179124+00	8	Tape #12 Non-Sacred #2 184702.000 Saddle Bag	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 184702.000 Saddle Bag"}}]	4	3
230	2020-06-11 21:40:57.273143+00	9	Tape #12 Non-Sacred #2 152441.000 Gun Case	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 152441.000 Gun Case"}}]	4	3
231	2020-06-11 21:42:59.832686+00	4	Tape #12 Non-Sacred #2 152441000 Gun Case	3		4	3
232	2020-06-15 20:49:58.612647+00	10	Tape #12 Non-Sacred #2 027394.000 Game.	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 027394.000 Game."}}]	4	3
233	2020-06-15 20:53:58.279806+00	11	Tape #12 Non-Sacred #2 104378.000 Game	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 104378.000 Game"}}]	4	3
234	2020-06-15 21:44:45.454867+00	12	Tape #12 Non-Sacred #2 118707.000 Bag	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 118707.000 Bag"}}]	4	3
235	2020-06-15 21:54:08.002953+00	13	Tape #12 Non-Sacred #2 143599.000 Baby Carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 143599.000 Baby Carrier"}}]	4	3
236	2020-06-15 22:00:45.635687+00	14	Tape #12 Non-Sacred #2 152440.000 Quiver	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 152440.000 Quiver"}}]	4	3
237	2020-06-15 22:18:12.767881+00	15	Tape #12 Non-Sacred #2 026007.000 Game Hoop Mini	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 026007.000 Game Hoop Mini"}}]	4	3
238	2020-06-15 22:24:29.961557+00	16	Tape #12 Non-Sacred #2 114875.000 Toy Baby Carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 114875.000 Toy Baby Carrier"}}]	4	3
239	2020-06-15 22:30:06.070968+00	17	Tape #12 Non-Sacred #2 239318.000 String of Venetian	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 239318.000 String of Venetian"}}]	4	3
240	2020-06-15 22:44:24.298347+00	18	Tape #12 Non-Sacred #2 103145.000 Knife Sheath	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 103145.000 Knife Sheath"}}]	4	3
241	2020-06-16 01:17:22.106707+00	19	Tape #12 Non-Sacred #2 023144.000 Toy Baby Carriage	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 023144.000 Toy Baby Carriage"}}]	4	3
242	2020-06-16 01:17:26.281433+00	19	Tape #12 Non-Sacred #2 023144.000 Toy Baby Carriage	2	[]	4	3
243	2020-06-16 01:28:55.859852+00	26	Tape #12 Non-Sacred #2 Baby Carrier Ornament	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 Baby Carrier Ornament"}}]	4	3
244	2020-06-16 01:28:59.550057+00	26	Tape #12 Non-Sacred #2 Baby Carrier Ornament	2	[]	4	3
245	2020-06-16 01:34:24.068212+00	27	Tape #12 Non-Sacred #2 108307.000 Needle Case	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 108307.000 Needle Case"}}]	4	3
246	2020-06-16 01:34:29.838742+00	27	Tape #12 Non-Sacred #2 108307.000 Needle Case	2	[]	4	3
247	2020-06-16 01:38:38.99567+00	28	Tape #12 Non-Sacred #2 035418.000 Toy Baby Board	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 035418.000 Toy Baby Board"}}]	4	3
248	2020-06-16 01:38:42.487031+00	28	Tape #12 Non-Sacred #2 035418.000 Toy Baby Board	2	[]	4	3
249	2020-06-16 01:41:51.89181+00	29	Tape #12 Non-Sacred #2 103145.000 Knife Sheath	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 103145.000 Knife Sheath"}}]	4	3
250	2020-06-16 01:41:55.463048+00	29	Tape #12 Non-Sacred #2 103145.000 Knife Sheath	2	[]	4	3
251	2020-06-16 01:45:04.166638+00	30	Tape #12 Non-Sacred #2 118707.000 Bag	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 118707.000 Bag"}}]	4	3
252	2020-06-16 01:45:10.647093+00	30	Tape #12 Non-Sacred #2 118707.000 Bag	2	[]	4	3
253	2020-06-16 01:48:24.478003+00	31	Tape #12 Non-Sacred #2 118710.000 Saddle and Saddle Cloth	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 118710.000 Saddle and Saddle Cloth"}}]	4	3
254	2020-06-16 01:48:27.8101+00	31	Tape #12 Non-Sacred #2 118710.000 Saddle and Saddle Cloth	2	[]	4	3
255	2020-06-16 01:52:12.749826+00	32	Tape #12 Non-Sacred #2 184615.000 Baby Carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 184615.000 Baby Carrier"}}]	4	3
256	2020-06-16 01:52:19.439193+00	32	Tape #12 Non-Sacred #2 184615.000 Baby Carrier	2	[]	4	3
257	2020-06-16 01:59:41.347852+00	33	Tape #12 Non-Sacred #2 221238.000 Back Rest and Tripod	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 221238.000 Back Rest and Tripod"}}]	4	3
258	2020-06-16 01:59:45.062271+00	33	Tape #12 Non-Sacred #2 221238.000 Back Rest and Tripod	2	[]	4	3
259	2020-06-16 02:12:49.387605+00	34	Tape #12 Non-Sacred #2 153321.000 Small Beaded Baby Carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 153321.000 Small Beaded Baby Carrier"}}]	4	3
260	2020-06-16 02:12:54.728432+00	34	Tape #12 Non-Sacred #2 153321.000 Small Beaded Baby Carrier	2	[]	4	3
261	2020-06-16 02:16:05.449435+00	35	Tape #12 Non-Sacred #2 140823.000 Toy Baby Carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 140823.000 Toy Baby Carrier"}}]	4	3
262	2020-06-16 02:16:17.009309+00	35	Tape #12 Non-Sacred #2 140823.000 Toy Baby Carrier	2	[]	4	3
263	2020-06-16 02:19:42.515719+00	36	Tape #12 Non-Sacred #2 210406.000 Baby Carrier	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tape #12 Non-Sacred #2 210406.000 Baby Carrier"}}]	4	3
264	2020-06-16 02:19:46.765932+00	36	Tape #12 Non-Sacred #2 210406.000 Baby Carrier	2	[]	4	3
265	2020-06-18 03:21:11.586296+00	2	William P. Yellowtail photographs,   ca. 1960-2000s	2	[]	3	3
266	2020-06-18 03:55:56.520194+00	37	35.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 35.JPG"}}]	4	3
267	2020-06-18 03:56:02.40829+00	37	35.JPG	2	[]	4	3
268	2020-06-18 03:58:29.09028+00	38	38.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 38.JPG"}}]	4	3
269	2020-06-18 03:58:32.906578+00	38	38.JPG	2	[]	4	3
270	2020-06-18 04:00:49.814724+00	39	69.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 69.JPG"}}]	4	3
271	2020-06-18 04:00:53.881845+00	39	69.JPG	2	[]	4	3
272	2020-06-18 04:03:13.605922+00	40	96.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 96.JPG"}}]	4	3
273	2020-06-18 04:03:54.677197+00	40	96.JPG	2	[]	4	3
274	2020-06-18 04:03:58.847297+00	40	96.JPG	2	[]	4	3
275	2020-06-18 04:05:36.898143+00	41	100.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 100.JPG"}}]	4	3
276	2020-06-18 04:05:40.27274+00	41	100.JPG	2	[]	4	3
277	2020-06-18 04:07:32.548659+00	42	101.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 101.JPG"}}]	4	3
278	2020-06-18 04:07:38.162107+00	42	101.JPG	2	[]	4	3
279	2020-06-18 04:09:23.711118+00	43	402.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 402.JPG"}}]	4	3
280	2020-06-18 04:09:27.349607+00	43	402.JPG	2	[]	4	3
281	2020-06-18 04:11:08.455537+00	44	404.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 404.JPG"}}]	4	3
282	2020-06-18 04:11:11.712613+00	44	404.JPG	2	[]	4	3
283	2020-06-18 04:12:37.766941+00	45	491JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 491JPG"}}]	4	3
284	2020-06-18 04:12:53.408664+00	46	412.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 412.JPG"}}]	4	3
285	2020-06-18 04:12:57.134081+00	46	412.JPG	2	[]	4	3
286	2020-06-18 04:14:22.161829+00	47	447.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 447.JPG"}}]	4	3
287	2020-06-18 04:19:32.957773+00	48	523.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 523.JPG"}}]	4	3
288	2020-06-18 04:19:55.851919+00	49	449.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 449.JPG"}}]	4	3
289	2020-06-18 04:19:58.943581+00	49	449.JPG	2	[]	4	3
290	2020-06-18 04:21:06.608071+00	50	Big Horn Mts Ytail398	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Big Horn Mts Ytail398"}}]	4	3
291	2020-06-18 04:21:11.483913+00	51	456.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 456.JPG"}}]	4	3
292	2020-06-18 04:21:15.205655+00	51	456.JPG	2	[]	4	3
293	2020-06-18 04:22:09.39574+00	52	Big Horn Mts Ytail400	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Big Horn Mts Ytail400"}}]	4	3
294	2020-06-18 04:23:36.583714+00	53	Branding Ytail69	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Branding Ytail69"}}]	4	3
295	2020-06-18 04:24:20.706525+00	54	Crow Branding71	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Crow Branding71"}}]	4	3
296	2020-06-18 04:25:40.130576+00	55	Landscape With Cattle Ytail402	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Landscape With Cattle Ytail402"}}]	4	3
297	2020-06-18 04:26:08.008903+00	56	490.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 490.JPG"}}]	4	3
298	2020-06-18 04:26:11.671295+00	56	490.JPG	2	[]	4	3
299	2020-06-18 04:28:10.417623+00	57	491.JPG	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: 491.JPG"}}]	4	3
300	2020-06-18 04:28:13.69633+00	57	491.JPG	2	[]	4	3
301	2020-06-18 04:28:40.440039+00	58	Roundup Landscape Ytail402	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Roundup Landscape Ytail402"}}]	4	3
302	2020-06-18 04:31:11.091398+00	57	491.JPG	3		4	3
303	2020-06-18 04:32:46.422903+00	59	Wm Ytail &? at Campsite100	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Wm Ytail &? at Campsite100"}}]	4	3
610	2020-07-02 16:00:18.443292+00	34	Small Beaded Cradle Board	2	[]	4	3
304	2020-06-18 04:34:23.402215+00	60	Yellowtail Branding Reel3	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Yellowtail Branding Reel3"}}]	4	3
305	2020-06-18 04:37:42.876414+00	41	100.JPG	2	[{"changed": {"fields": ["description"]}}, {"added": {"name": "narrative", "object": "Narrative: 100.JPG"}}]	4	3
306	2020-06-18 04:41:01.601245+00	3	Branding Day, ca. 1965	2	[]	4	3
307	2020-06-18 04:42:48.644103+00	38	38.JPG	2	[{"changed": {"fields": ["description"]}}, {"added": {"name": "narrative", "object": "Narrative: 38.JPG"}}]	4	3
308	2020-06-18 04:42:52.165329+00	38	38.JPG	2	[]	4	3
309	2020-06-18 04:43:23.475052+00	43	402.JPG	2	[{"changed": {"fields": ["description"]}}, {"added": {"name": "narrative", "object": "Narrative: 402.JPG"}}]	4	3
310	2020-06-18 04:43:52.537572+00	48	523.JPG	2	[{"changed": {"fields": ["description"]}}, {"added": {"name": "narrative", "object": "Narrative: 523.JPG"}}]	4	3
311	2020-06-18 04:44:22.089747+00	53	Branding Ytail69	2	[{"changed": {"fields": ["description"]}}, {"added": {"name": "narrative", "object": "Narrative: Branding Ytail69"}}]	4	3
312	2020-06-18 04:44:41.914788+00	60	Yellowtail Branding Reel3	2	[{"changed": {"fields": ["description"]}}, {"added": {"name": "narrative", "object": "Narrative: Yellowtail Branding Reel3"}}]	4	3
313	2020-06-18 15:57:27.099036+00	29	Tape #12 Non-Sacred #2 103145.000 Knife Sheath	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
314	2020-06-18 15:57:53.311942+00	36	Tape #12 Non-Sacred #2 210406.000 Baby Carrier	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
315	2020-06-18 15:58:22.225548+00	35	Tape #12 Non-Sacred #2 140823.000 Toy Baby Carrier	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
316	2020-06-18 15:58:45.804818+00	34	Tape #12 Non-Sacred #2 153321.000 Small Beaded Baby Carrier	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
317	2020-06-18 15:59:16.495984+00	33	Tape #12 Non-Sacred #2 221238.000 Back Rest and Tripod	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
318	2020-06-18 15:59:41.114055+00	32	Tape #12 Non-Sacred #2 184615.000 Baby Carrier	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
319	2020-06-18 16:00:00.046317+00	31	Tape #12 Non-Sacred #2 118710.000 Saddle and Saddle Cloth	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
320	2020-06-18 16:00:43.070865+00	36	Tape #12 Non-Sacred #2 210406.000 Baby Carrier	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
321	2020-06-18 16:01:01.869753+00	35	Tape #12 Non-Sacred #2 140823.000 Toy Baby Carrier	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
322	2020-06-18 16:01:16.59551+00	34	Tape #12 Non-Sacred #2 153321.000 Small Beaded Baby Carrier	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
323	2020-06-18 16:01:34.425179+00	33	Tape #12 Non-Sacred #2 221238.000 Back Rest and Tripod	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
324	2020-06-18 16:01:51.132+00	29	Tape #12 Non-Sacred #2 103145.000 Knife Sheath	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
325	2020-06-18 16:02:09.975638+00	28	Tape #12 Non-Sacred #2 035418.000 Toy Baby Board	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
326	2020-06-18 16:02:29.32351+00	27	Tape #12 Non-Sacred #2 108307.000 Needle Case	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
327	2020-06-18 16:03:03.337172+00	15	Tape #12 Non-Sacred #2 026007.000 Game Hoop Mini	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
328	2020-06-21 13:46:14.120618+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["name", "cover_image", "physical_details", "provenance"]}}]	4	3
329	2020-06-21 13:53:26.202252+00	8	Saddle Bag Model/Toy	2	[{"changed": {"fields": ["name", "cover_image", "culture_or_community", "physical_details", "provenance"]}}]	4	3
330	2020-06-21 14:25:25.136477+00	9	Gun Case Model	2	[{"changed": {"fields": ["name", "cover_image", "culture_or_community", "physical_details", "catalog_number", "provenance"]}}]	4	3
331	2020-06-21 14:28:09.661488+00	9	Gun Case Model	2	[]	4	3
332	2020-06-21 14:40:46.845692+00	10	Tape #12 Non-Sacred #2 027394.000 Game.	2	[]	4	3
333	2020-06-21 14:51:38.875849+00	11	Tape #12 Non-Sacred #2 104378.000 Game	2	[{"changed": {"fields": ["cover_image", "catalog_number", "provenance"]}}]	4	3
334	2020-06-21 14:58:47.999059+00	12	Bag Model/Miniature	2	[{"changed": {"fields": ["name", "cover_image", "physical_details", "catalog_number", "provenance"]}}]	4	3
335	2020-06-22 03:20:41.874322+00	13	Doll with Cradle/Cradleboard	2	[{"changed": {"fields": ["name", "cover_image", "description", "physical_details", "catalog_number", "provenance"]}}]	4	3
336	2020-06-23 13:35:06.727454+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["name", "cover_image", "physical_details", "catalog_number", "provenance"]}}]	4	3
337	2020-06-23 13:43:45.727605+00	15	Game Hoop Mini	2	[{"changed": {"fields": ["name", "cover_image", "catalog_number", "provenance"]}}]	4	3
338	2020-06-23 13:55:21.486307+00	16	Cradleboard Model/Toy	2	[{"changed": {"fields": ["name", "cover_image", "physical_details", "catalog_number", "provenance"]}}]	4	3
339	2020-06-23 14:01:50.070664+00	17	String of Venetian Necklace	2	[{"changed": {"fields": ["name", "cover_image", "description", "physical_details", "catalog_number", "private_notes"]}}]	4	3
340	2020-06-23 18:05:11.15832+00	50	398	2	[{"changed": {"fields": ["name"]}}]	4	3
341	2020-06-23 18:09:37.062074+00	59	Wm Ytail &? at Campsite100	3		4	3
342	2020-06-23 18:10:43.361523+00	58	Roundup Landscape Ytail402	3		4	3
343	2020-06-23 18:11:05.834942+00	55	402 Landscape With Cattle Ytail	2	[{"changed": {"fields": ["name"]}}]	4	3
344	2020-06-23 18:12:33.084017+00	39	69.JPG	3		4	3
345	2020-06-23 18:13:20.7807+00	52	400 Big Horn Mts Ytail	2	[{"changed": {"fields": ["name"]}}]	4	3
346	2020-06-23 18:14:11.453867+00	54	Crow Branding71	3		4	3
347	2020-06-23 18:15:26.363688+00	41	100.JPG	3		4	3
348	2020-06-23 18:21:06.893242+00	53	Branding Day Upper Lodge Grass Valley, ca. 1965	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
349	2020-06-23 18:22:12.940687+00	53	Branding Day at FO Corrals, Upper Lodge Grass Valley, ca. 1965	2	[{"changed": {"fields": ["name"]}}]	4	3
350	2020-06-23 20:47:23.485414+00	3	FO Corrals, Upper Lodge Grass Valley, Crow reservation, MT, ca. 1965 #71	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
351	2020-06-23 20:48:28.033592+00	53	Branding Day at FO Corrals, Upper Lodge Grass Valley, ca. 1965 #69	2	[{"changed": {"fields": ["name"]}}]	4	3
352	2020-06-23 20:48:45.13717+00	3	Branding day at FO Corrals, Upper Lodge Grass Valley, Crow reservation, MT, ca. 1965 #71	2	[{"changed": {"fields": ["name"]}}]	4	3
353	2020-06-23 21:00:56.090268+00	38	Carson Yellowtail Playing in Beaver Pond, #38	2	[{"changed": {"fields": ["name", "description", "culture_or_community", "other_forms", "date_of_creation", "physical_details", "citation", "private_cataloger", "private_catalog_date"]}}]	4	3
354	2020-06-23 21:02:06.504618+00	3	Branding day at FO Corrals, Upper Lodge Grass Valley, Crow reservation, MT, ca. 1965 #71	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
392	2020-06-24 16:29:25.837548+00	18	Tape #12 Non-Sacred #2 103145.000 Knife Sheath	2	[]	4	3
355	2020-06-23 21:05:50.152267+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["description", "culture_or_community", "other_forms", "physical_details", "provenance", "location_of_originals"]}}, {"changed": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Spring cow camp, ca. 1964", "fields": ["content"]}}]	4	3
356	2020-06-23 21:09:22.602313+00	53	Branding Day at FO Corrals, Upper Lodge Grass Valley, ca. 1965 #69	2	[{"changed": {"fields": ["description", "culture_or_community", "other_forms", "date_of_creation", "physical_details", "citation", "place_created", "private_cataloger", "private_catalog_date"]}}]	4	3
357	2020-06-23 21:10:28.648393+00	1	Yellowtail, William Petzoldt, Jr. (Bill)	2	[{"changed": {"fields": ["name", "dates"]}}]	18	3
358	2020-06-23 21:12:20.585128+00	2	William P. Yellowtail, Jr.  photographs,   ca. 1960-2000s	2	[{"changed": {"fields": ["title", "description", "citation"]}}]	3	3
359	2020-06-23 21:13:08.321198+00	53	Branding Day at FO Corrals, Upper Lodge Grass Valley, ca. 1965 #69	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
360	2020-06-23 21:14:29.152825+00	38	Carson Yellowtail Playing in Beaver Pond, #38	2	[{"changed": {"fields": ["other_forms", "access_notes_or_rights_and_reproduction", "citation", "place_created"]}}]	4	3
361	2020-06-23 21:17:05.892107+00	3	Branding day at FO Corrals, Upper Lodge Grass Valley, Crow reservation, MT, ca. 1965 #71	2	[{"changed": {"fields": ["description", "other_forms", "access_notes_or_rights_and_reproduction", "citation", "place_created", "private_catalog_date"]}}, {"changed": {"name": "narrative", "object": "Narrative: Branding day at FO Corrals, Upper Lodge Grass Valley, Crow reservation, MT, ca. 1965 #71", "fields": ["content"]}}]	4	3
362	2020-06-23 21:18:18.785406+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[]	4	3
363	2020-06-23 21:22:37.195161+00	55	Trail Drive to Market, ca. 1960	2	[{"changed": {"fields": ["name", "description", "other_forms", "date_of_creation", "physical_details", "citation", "place_created", "private_cataloger", "private_catalog_date"]}}]	4	3
364	2020-06-23 21:23:21.410726+00	53	Branding Day at FO Corrals, Upper Lodge Grass Valley, ca. 1965 #69	2	[{"changed": {"fields": ["description"]}}]	4	3
365	2020-06-23 21:25:17.243122+00	53	Branding Day at FO Corrals (Close-up), Upper Lodge Grass Valley, ca. 1965	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
366	2020-06-23 21:27:22.499618+00	38	Carson Yellowtail Playing in Beaver Pond, ca. 1960	2	[{"changed": {"fields": ["name", "description", "citation"]}}]	4	3
367	2020-06-23 21:28:54.449401+00	3	Branding day at FO Corrals, Upper Lodge Grass Valley, Crow Reservation, MT, ca. 1965	2	[{"changed": {"fields": ["name", "description", "citation"]}}]	4	3
368	2020-06-23 21:30:11.72182+00	53	Branding Day at FO Corrals (Close-up), Upper Lodge Grass Valley, ca. 1965	2	[{"changed": {"fields": ["description", "citation"]}}]	4	3
369	2020-06-23 21:30:59.320563+00	55	Trail Drive to Market, ca. 1960	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
370	2020-06-23 21:32:15.226036+00	53	Branding Day at FO Corrals (Close-up), Upper Lodge Grass Valley, ca. 1965	2	[]	4	3
371	2020-06-23 21:33:02.273134+00	38	Carson Yellowtail Playing in Beaver Pond, ca. 1960	2	[{"changed": {"fields": ["description", "citation"]}}]	4	3
372	2020-06-23 21:33:24.130459+00	3	Branding day at FO Corrals, Upper Lodge Grass Valley, Crow Reservation, MT, ca. 1965	2	[]	4	3
373	2020-06-23 21:33:42.968267+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
374	2020-06-23 21:38:17.756041+00	60	Doctoring on the open range, ca. 1971	2	[{"changed": {"fields": ["name", "description", "other_forms", "date_of_creation", "physical_details", "citation", "place_created", "private_cataloger", "private_catalog_date"]}}]	4	3
375	2020-06-23 21:39:33.519419+00	60	Doctoring on the open range, ca. 1971	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}, {"changed": {"name": "narrative", "object": "Narrative: Doctoring on the open range, ca. 1971", "fields": ["content", "author"]}}]	4	3
376	2020-06-23 21:41:20.603838+00	60	Doctoring on the open range, ca. 1971	2	[{"changed": {"name": "narrative", "object": "Narrative: Doctoring on the open range, ca. 1971", "fields": ["author"]}}]	4	3
377	2020-06-23 21:43:00.104217+00	55	Trail Drive to Market, ca. 1960	2	[{"added": {"name": "narrative", "object": "Narrative: Trail Drive to Market, ca. 1960"}}]	4	3
378	2020-06-23 21:43:39.251339+00	53	Branding Day at FO Corrals (Close-up), Upper Lodge Grass Valley, ca. 1965	2	[{"changed": {"name": "narrative", "object": "Narrative: Branding Day at FO Corrals (Close-up), Upper Lodge Grass Valley, ca. 1965", "fields": ["author"]}}]	4	3
379	2020-06-23 21:44:51.907301+00	60	Doctoring on the open range, ca. 1971	2	[{"changed": {"name": "narrative", "object": "Narrative: Doctoring on the open range, ca. 1971", "fields": ["author"]}}]	4	3
380	2020-06-23 21:45:05.694289+00	55	Trail Drive to Market, ca. 1960	2	[{"changed": {"name": "narrative", "object": "Narrative: Trail Drive to Market, ca. 1960", "fields": ["author"]}}]	4	3
381	2020-06-23 21:45:16.060393+00	53	Branding Day at FO Corrals (Close-up), Upper Lodge Grass Valley, ca. 1965	2	[]	4	3
382	2020-06-23 21:45:44.662258+00	38	Carson Yellowtail Playing in Beaver Pond, ca. 1960	2	[{"changed": {"name": "narrative", "object": "Narrative: Carson Yellowtail Playing in Beaver Pond, ca. 1960", "fields": ["author"]}}]	4	3
383	2020-06-23 21:46:52.85336+00	3	Branding day at FO Corrals, Upper Lodge Grass Valley, Crow Reservation, MT, ca. 1965	2	[{"changed": {"name": "narrative", "object": "Narrative: Branding day at FO Corrals, Upper Lodge Grass Valley, Crow Reservation, MT, ca. 1965", "fields": ["author"]}}]	4	3
384	2020-06-23 21:47:09.72179+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Spring cow camp, ca. 1964", "fields": ["author"]}}]	4	3
385	2020-06-23 21:49:51.60138+00	52	400	2	[{"changed": {"fields": ["name", "other_forms", "physical_details", "place_created"]}}]	4	3
386	2020-06-23 21:50:16.740918+00	52	400	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
387	2020-06-23 21:50:33.446484+00	56	490.JPG	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
388	2020-06-23 21:55:13.981561+00	48	Larry Dean Yellowtail ready to saddle up, ca. 1968	2	[{"changed": {"fields": ["name", "description", "other_forms", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "citation", "place_created", "private_cataloger", "private_catalog_date"]}}, {"changed": {"name": "narrative", "object": "Narrative: Larry Dean Yellowtail ready to saddle up, ca. 1968", "fields": ["author"]}}]	4	3
389	2020-06-23 21:56:32.948231+00	43	402.JPG	3		4	3
390	2020-06-23 22:21:22.8189+00	36	Cradle Board NMAI Cat. # 210406.000	2	[{"changed": {"fields": ["name", "description"]}}, {"changed": {"name": "video", "object": "Video: Cradle Board NMAI Cat. # 210406.000", "fields": ["link"]}}]	4	3
391	2020-06-24 00:44:11.93504+00	5	Knife	2	[{"changed": {"fields": ["name", "cover_image", "physical_details", "provenance"]}}]	4	3
393	2020-06-24 16:30:45.032238+00	13	Doll with Cradle/Cradleboard Baakáatiche	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
394	2020-06-24 16:31:43.230109+00	13	Doll with Cradle/Cradleboard            Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
395	2020-06-24 16:47:03.443527+00	2	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["description"]}}]	4	3
396	2020-06-24 16:47:38.41484+00	2	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["description"]}}]	4	3
397	2020-06-24 16:50:43.934213+00	2	Small Beaded Baby Carrier	2	[]	4	3
398	2020-06-24 16:51:18.980281+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["name"]}}]	4	3
399	2020-06-25 00:24:21.661034+00	27	Tape #12 Non-Sacred #2 108307.000 Needle Case	2	[{"added": {"name": "image", "object": "Image: Tape #12 Non-Sacred #2 108307.000 Needle Case"}}]	4	3
400	2020-06-25 00:25:30.62121+00	32	Tape #12 Non-Sacred #2 184615.000 Baby Carrier	2	[{"added": {"name": "image", "object": "Image: Tape #12 Non-Sacred #2 184615.000 Baby Carrier"}}]	4	3
401	2020-06-25 00:27:18.058661+00	18	Tape #12 Non-Sacred #2 103145.000 Knife Sheath	2	[{"added": {"name": "image", "object": "Image: Tape #12 Non-Sacred #2 103145.000 Knife Sheath"}}]	4	3
402	2020-06-25 00:28:14.097361+00	33	Tape #12 Non-Sacred #2 221238.000 Back Rest and Tripod	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
403	2020-06-25 00:29:02.938901+00	35	Tape #12 Non-Sacred #2 140823.000 Toy Baby Carrier	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
404	2020-06-25 00:30:06.93647+00	31	Tape #12 Non-Sacred #2 118710.000 Saddle and Saddle Cloth	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
405	2020-06-25 00:31:06.662488+00	19	Tape #12 Non-Sacred #2 023144.000 Toy Baby Carriage	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
406	2020-06-25 00:31:52.552901+00	36	Cradle Board NMAI Cat. # 210406.000	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
407	2020-06-25 00:32:18.578881+00	33	Back Rest and Tripod	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
408	2020-06-25 00:33:18.231054+00	34	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["name", "cover_image", "description"]}}]	4	3
409	2020-06-25 00:33:32.455282+00	35	Toy Baby Carrier	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
410	2020-06-25 00:34:23.402523+00	18	Knife Sheath	2	[{"changed": {"fields": ["name", "cover_image", "description"]}}]	4	3
411	2020-06-25 00:35:11.621089+00	32	Baby Carrier	2	[{"changed": {"fields": ["name", "cover_image", "description"]}}]	4	3
412	2020-06-25 00:35:27.753502+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
413	2020-06-25 00:36:19.963674+00	30	Bag	2	[{"changed": {"fields": ["name", "cover_image", "description"]}}]	4	3
414	2020-06-25 00:37:15.261125+00	29	Knife Sheath	2	[{"changed": {"fields": ["name", "cover_image", "description"]}}]	4	3
415	2020-06-25 00:38:07.944944+00	28	Toy Baby Board	2	[{"changed": {"fields": ["name", "cover_image", "description"]}}]	4	3
416	2020-06-25 00:39:42.790141+00	27	Needle Case	2	[{"changed": {"fields": ["name", "cover_image", "description"]}}]	4	3
417	2020-06-25 00:40:33.652394+00	26	Baby Carrier Ornament	2	[{"changed": {"fields": ["name", "cover_image", "description"]}}]	4	3
418	2020-06-25 00:40:49.21863+00	19	Toy Baby Carriage	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
419	2020-06-25 15:59:52.615034+00	36	Toy Cradle Board  Baakáatiche	2	[{"changed": {"fields": ["name", "description", "physical_details"]}}]	4	3
420	2020-06-25 16:04:15.572428+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
421	2020-06-25 16:17:34.771664+00	36	Toy cradle board  with doll baakáatiche	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
422	2020-06-25 16:18:28.511105+00	36	toy cradle board  with doll baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
423	2020-06-25 16:39:23.517937+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"fields": ["name", "description", "physical_details", "catalog_number", "provenance", "private_notes", "place_created"]}}, {"added": {"name": "narrative", "object": "Narrative: Toy Cradle Board  with Doll Baak\\u00e1atiche"}}]	4	3
424	2020-06-25 16:40:16.904363+00	23	Apsáalooke (Crow/Absaroke)	1	[{"added": {}}]	17	3
425	2020-06-25 16:51:47.169885+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"fields": ["description", "access_notes_or_rights_and_reproduction", "citation", "keywords"]}}]	4	3
426	2020-06-25 16:59:53.811177+00	24	Crow Indian Reservation	1	[{"added": {}}]	17	3
427	2020-06-25 17:00:44.165704+00	25	Cradle board	1	[{"added": {}}]	17	3
428	2020-06-25 17:00:52.101201+00	26	Beadwork	1	[{"added": {}}]	17	3
429	2020-06-25 17:00:57.338516+00	27	Hide	1	[{"added": {}}]	17	3
430	2020-06-25 17:01:14.12113+00	28	Toy	1	[{"added": {}}]	17	3
431	2020-06-25 17:01:22.69419+00	29	Doll	1	[{"added": {}}]	17	3
432	2020-06-25 17:01:41.15663+00	30	Baakáatiche	1	[{"added": {}}]	17	3
433	2020-06-25 17:02:12.461429+00	31	Greasy Yellow Color	1	[{"added": {}}]	17	3
434	2020-06-25 17:03:26.19822+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"fields": ["citation", "keywords"]}}]	4	3
435	2020-06-25 17:05:51.413657+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"fields": ["keywords"]}}]	4	3
436	2020-06-25 17:06:18.428676+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"fields": ["creator"]}}]	4	3
437	2020-06-25 17:07:25.968437+00	3	National Museum of American Indian	1	[{"added": {}}]	18	3
438	2020-06-25 17:08:37.217076+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"fields": ["location_of_originals", "private_cataloger", "private_catalog_date"]}}]	4	3
439	2020-06-25 17:12:05.297077+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"name": "narrative", "object": "Narrative: Toy Cradle Board  with Doll Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
440	2020-06-29 17:08:05.576037+00	5	Knife	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
441	2020-06-29 17:08:42.21254+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
442	2020-06-29 17:08:53.446979+00	7	Cup and Pin Game	2	[]	4	3
443	2020-06-29 17:09:03.018447+00	8	Toy Saddle Bag	2	[]	4	3
444	2020-06-29 17:09:16.179744+00	9	Gun Case Model	2	[]	4	3
445	2020-06-29 17:13:15.589959+00	10	Tape #12 Non-Sacred #2 027394.000 Game	2	[{"changed": {"fields": ["name", "cover_image", "catalog_number", "provenance"]}}]	4	3
446	2020-06-29 17:17:12.214308+00	11	Tape #12 Non-Sacred #2 104378.000 Game	2	[{"changed": {"fields": ["physical_details", "catalog_number", "provenance"]}}]	4	3
447	2020-06-29 17:17:23.033236+00	12	Bag Model/Miniature	2	[]	4	3
448	2020-06-29 17:17:37.736451+00	13	Doll with Cradle/Cradleboard            Baakáatiche	2	[]	4	3
449	2020-06-29 17:18:01.970426+00	14	Quiver Model/Miniature	2	[]	4	3
450	2020-06-29 17:18:32.510315+00	15	Game Hoop Mini	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
451	2020-06-29 17:25:27.730675+00	17	String of Venetian Necklace	2	[]	4	3
452	2020-06-29 17:26:54.393082+00	2	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["description"]}}]	4	3
453	2020-06-29 17:47:30.280261+00	18	Knife Sheath	2	[{"changed": {"fields": ["description", "physical_details", "private_notes"]}}]	4	3
454	2020-06-29 17:48:48.694502+00	26	Baby Carrier Ornament	2	[{"changed": {"fields": ["description", "provenance"]}}]	4	3
455	2020-06-29 17:51:27.146831+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[]	4	3
456	2020-06-29 17:54:24.875259+00	35	Toy Baby Carrier	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
457	2020-06-29 17:57:01.689358+00	34	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
458	2020-06-29 17:57:16.574649+00	34	Small Beaded Baby Carrier	2	[]	4	3
459	2020-06-29 17:59:43.918736+00	33	Back Rest and Tripod	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
460	2020-06-29 18:03:01.304765+00	32	Baby Carrier	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
461	2020-06-29 18:05:39.755711+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
462	2020-06-29 18:08:00.513799+00	30	Bag	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
463	2020-06-29 18:10:00.466916+00	29	Knife Sheath	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
464	2020-06-29 18:12:19.864676+00	28	Toy Baby Board	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
465	2020-06-29 18:12:36.784913+00	28	Toy Baby Board	2	[]	4	3
466	2020-06-29 18:12:53.963169+00	17	String of Venetian Necklace	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
467	2020-06-29 18:13:13.753192+00	16	Cradleboard Model/Toy	2	[{"changed": {"fields": ["catalog_number", "provenance"]}}]	4	3
468	2020-06-29 18:15:05.684632+00	27	Needle Case	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "provenance"]}}]	4	3
469	2020-06-29 22:25:57.80382+00	35	Toy Baby Carrier	2	[]	4	3
470	2020-06-29 22:27:11.23324+00	2	Small Beaded Baby Carrier  Apsáalooke	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
471	2020-06-29 22:33:03.811236+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["name", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "private_notes"]}}]	4	3
472	2020-06-29 22:35:50.292761+00	5	Knife Bítchiisshe	2	[{"changed": {"fields": ["name", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "private_notes"]}}]	4	3
473	2020-06-29 22:43:15.635386+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["culture_or_community", "catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}]	4	3
474	2020-06-29 22:45:51.542761+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
475	2020-06-29 22:49:20.82788+00	9	Gun Case Model	2	[{"changed": {"fields": ["catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
476	2020-06-29 22:51:20.181621+00	10	Tape #12 Non-Sacred #2 027394.000 Game	2	[{"changed": {"fields": ["catalog_number", "provenance", "private_notes", "creator"]}}]	4	3
477	2020-06-29 22:53:25.598662+00	12	Bag Model/Miniature	2	[{"changed": {"fields": ["catalog_number", "provenance", "private_notes", "creator", "location_of_originals"]}}]	4	3
478	2020-06-29 22:54:22.75025+00	15	Game Hoop Mini	2	[{"changed": {"fields": ["catalog_number", "provenance", "private_notes", "creator"]}}]	4	3
479	2020-06-29 22:56:33.051859+00	18	Knife Sheath Bítchiisshe	2	[{"changed": {"fields": ["name", "description", "catalog_number", "provenance", "creator", "location_of_originals"]}}]	4	3
480	2020-06-29 23:00:10.979488+00	19	Toy Baby Carriage Baakáatiche	2	[{"changed": {"fields": ["name", "description", "physical_details", "catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
481	2020-06-29 23:03:27.13672+00	26	Baby Carrier Ornament	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
482	2020-06-29 23:05:31.066187+00	27	Needle Case	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
483	2020-06-29 23:07:36.696462+00	28	Toy Baby Board	2	[{"changed": {"fields": ["catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
484	2020-06-30 15:40:46.242922+00	5	Knife Bítchiisshe	2	[{"changed": {"name": "video", "object": "Video: Knife B\\u00edtchiisshe", "fields": ["link"]}}]	4	3
485	2020-06-30 15:44:03.372548+00	5	Knife Bítchiisshe	2	[]	4	3
486	2020-06-30 15:47:02.570139+00	29	Knife Sheath	3		4	3
487	2020-06-30 15:51:00.95028+00	18	Knife with Studded Sheath Bítchiisshe	2	[{"changed": {"fields": ["name"]}}, {"added": {"name": "video", "object": "Video: Knife with Studded Sheath B\\u00edtchiisshe"}}]	4	3
488	2020-06-30 16:03:27.14979+00	18	Knife with Studded Sheath Bítchiisshe	2	[]	4	3
489	2020-06-30 16:10:04.496726+00	36	Toy Cradle Board  with Doll Baakáatiche	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
490	2020-06-30 16:16:34.897683+00	32	Cloth	1	[{"added": {}}]	17	3
491	2020-06-30 16:17:48.861988+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["physical_details", "place_created", "creator", "location_of_originals"]}}]	4	3
492	2020-06-30 16:18:16.542451+00	34	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["catalog_number", "place_created", "creator", "location_of_originals"]}}]	4	3
493	2020-06-30 16:20:18.087403+00	33	Back Rest and Tripod	2	[{"changed": {"fields": ["catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
494	2020-06-30 16:21:39.80391+00	32	Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["name", "catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
495	2020-06-30 16:22:28.049314+00	32	Baby Carrier Baakáatiche	2	[]	4	3
496	2020-06-30 16:24:03.022874+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["physical_details", "catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
497	2020-06-30 16:25:17.806641+00	30	Bag	2	[{"changed": {"fields": ["physical_details", "catalog_number", "provenance", "private_notes", "place_created", "creator", "location_of_originals"]}}]	4	3
498	2020-06-30 16:25:49.073645+00	28	Toy Baby Board	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
499	2020-06-30 16:29:58.973618+00	36	Toy Cradle Board with Doll Baakáatiche	2	[{"changed": {"fields": ["name", "physical_details", "keywords"]}}]	4	3
500	2020-06-30 16:31:01.691859+00	33	Back Rest and Tripod	2	[{"changed": {"name": "video", "object": "Video: Back Rest and Tripod", "fields": ["link"]}}]	4	3
501	2020-06-30 19:51:40.208124+00	53	Branding Day at FO Corrals (Close-up), Upper Lodge Grass Valley, ca. 1965	2	[{"changed": {"fields": ["place_created"]}}]	4	3
502	2020-07-01 15:26:16.412366+00	5	Crow Indian Reservation (MT)	3		17	3
503	2020-07-01 17:06:27.862853+00	22	Hammond, Curtis	2	[{"changed": {"fields": ["word"]}}]	17	3
504	2020-07-01 17:10:29.695318+00	21	Whiteman, Arlen (1936-2009)	2	[{"changed": {"fields": ["word"]}}]	17	3
505	2020-07-01 17:24:46.635497+00	20	Lodge Grass Creek, Montana	2	[{"changed": {"fields": ["word"]}}]	17	3
506	2020-07-01 17:25:53.643521+00	19	Lodge Grass, Montana	2	[{"changed": {"fields": ["word"]}}]	17	3
507	2020-07-01 17:34:00.628691+00	33	oral-history	1	[{"added": {}}]	17	3
508	2020-07-01 17:37:02.392885+00	6	Big Horn County, MT	3		17	3
509	2020-07-01 17:37:22.286934+00	34	Big Horn County, Montana	1	[{"added": {}}]	17	3
510	2020-07-01 17:43:10.465778+00	35	Deer bone	1	[{"added": {}}]	17	3
511	2020-07-01 17:43:15.34538+00	36	Yellowtail, William P., Jr.	1	[{"added": {}}]	17	3
512	2020-07-01 17:43:33.790985+00	37	game	1	[{"added": {}}]	17	3
513	2020-07-01 17:45:29.020061+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Cup and Pin Game"}}]	4	3
514	2020-07-01 17:46:01.716642+00	9	Ranches	2	[]	17	3
515	2020-07-01 17:46:19.235669+00	18	Ranchers	2	[{"changed": {"fields": ["word"]}}]	17	3
516	2020-07-01 17:47:35.528463+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["keywords"]}}]	4	3
517	2020-07-01 17:48:38.273419+00	9	ranches	2	[{"changed": {"fields": ["word"]}}]	17	3
518	2020-07-01 17:52:04.601284+00	15	Yellowtail, Jane Power	2	[{"changed": {"fields": ["word"]}}]	17	3
519	2020-07-01 18:04:26.649135+00	12	Black & white images	2	[{"changed": {"fields": ["word"]}}]	17	3
520	2020-07-01 18:04:40.872244+00	11	Color images	2	[{"changed": {"fields": ["word"]}}]	17	3
521	2020-07-01 18:17:22.798581+00	9	Ranches	2	[{"changed": {"fields": ["word"]}}]	17	3
522	2020-07-01 18:18:31.460432+00	10	Ranching, American Indian	2	[{"changed": {"fields": ["word"]}}]	17	3
523	2020-07-01 18:21:01.389244+00	13	American Indian/white relations	2	[]	17	3
524	2020-07-01 18:22:06.653976+00	38	Branding	1	[{"added": {}}]	17	3
525	2020-07-01 18:54:39.490463+00	39	American Indian cowboys	1	[{"added": {}}]	17	3
526	2020-07-01 18:54:52.654357+00	40	African Americans	1	[{"added": {}}]	17	3
527	2020-07-01 18:55:47.673334+00	41	Black Lodge District	1	[{"added": {}}]	17	3
528	2020-07-01 18:56:11.217912+00	42	Bull Elk Divide, Montana	1	[{"added": {}}]	17	3
529	2020-07-01 18:56:43.668731+00	43	Cowboys	1	[{"added": {}}]	17	3
530	2020-07-01 18:57:02.542696+00	44	Cup and pine game	1	[{"added": {}}]	17	3
531	2020-07-01 18:57:40.804084+00	45	Fringe	1	[{"added": {}}]	17	3
532	2020-07-01 18:58:40.189723+00	46	FO Corrals, Big Horn County, MT	1	[{"added": {}}]	17	3
533	2020-07-01 18:59:18.773002+00	47	Knife sheath	1	[{"added": {}}]	17	3
534	2020-07-01 18:59:26.246375+00	48	Knife	1	[{"added": {}}]	17	3
535	2020-07-01 19:00:10.189161+00	49	Percheron Creek, Montana	1	[{"added": {}}]	17	3
536	2020-07-01 19:00:24.527367+00	50	Photographs	1	[{"added": {}}]	17	3
537	2020-07-01 19:00:42.909836+00	51	Pryor, Montana	1	[{"added": {}}]	17	3
538	2020-07-01 19:01:23.499851+00	52	Reno District	1	[{"added": {}}]	17	3
539	2020-07-01 19:01:40.076863+00	7	Cup and Pin Game	2	[]	4	3
540	2020-07-01 19:01:42.075387+00	53	Sagebrush Basin, Montana	1	[{"added": {}}]	17	3
541	2020-07-01 19:01:59.889379+00	54	Sewn	1	[{"added": {}}]	17	3
542	2020-07-01 19:02:10.51669+00	55	Paint	1	[{"added": {}}]	17	3
543	2020-07-01 19:02:44.105772+00	56	Tipi	1	[{"added": {}}]	17	3
544	2020-07-01 19:02:58.917335+00	57	Wyola, Montana	1	[{"added": {}}]	17	3
545	2020-07-01 19:03:59.905472+00	8	Toy Saddle Bag	2	[{"changed": {"name": "video", "object": "Video: Toy Saddle Bag", "fields": ["link"]}}]	4	3
546	2020-07-01 19:11:42.368247+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "provenance", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"changed": {"name": "video", "object": "Video: Toy Saddle Bag", "fields": ["link"]}}, {"added": {"name": "narrative", "object": "Narrative: Toy Saddle Bag"}}]	4	3
547	2020-07-01 19:28:14.733342+00	9	Gun Case Model	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "provenance", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Gun Case Model"}}]	4	3
548	2020-07-01 22:51:08.546784+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["description", "access_notes_or_rights_and_reproduction", "provenance", "private_notes", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Toy Baby Carrier Baak\\u00e1atiche"}}]	4	3
549	2020-07-01 22:54:50.070088+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Toy Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
550	2020-07-01 22:57:36.183037+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Toy Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
551	2020-07-01 22:58:09.88766+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Toy Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
552	2020-07-01 22:58:28.706185+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Toy Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
553	2020-07-01 22:58:49.904002+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Toy Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
554	2020-07-01 23:02:01.027759+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Toy Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
555	2020-07-01 23:03:00.597169+00	35	Toy Baby Carrier Baakáatiche	2	[]	4	3
556	2020-07-01 23:05:55.42083+00	13	Doll with Cradle/Cradleboard            Baakáatiche	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
557	2020-07-01 23:06:27.98218+00	36	Toy Cradle Board with Doll Baakáatiche	2	[]	4	3
608	2020-07-02 15:56:41.287966+00	10	Cup and Pin Game with Red and Black Beads	2	[]	4	3
609	2020-07-02 15:57:10.539352+00	34	Small Beaded Cradle Board	2	[{"changed": {"fields": ["name"]}}]	4	3
662	2020-07-06 19:11:09.900305+00	8	Toy Saddle Bag	2	[]	4	3
558	2020-07-01 23:14:47.67121+00	34	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["description", "physical_details", "access_notes_or_rights_and_reproduction", "provenance", "private_notes", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"changed": {"name": "video", "object": "Video: Small Beaded Baby Carrier", "fields": ["link"]}}]	4	3
559	2020-07-01 23:17:55.189509+00	34	Small Beaded Baby Carrier	2	[{"changed": {"name": "video", "object": "Video: Small Beaded Baby Carrier", "fields": ["link"]}}]	4	3
560	2020-07-01 23:21:45.192858+00	34	Small Beaded Baby Carrier	2	[{"added": {"name": "narrative", "object": "Narrative: Small Beaded Baby Carrier"}}]	4	3
561	2020-07-01 23:22:32.954063+00	16	Cradleboard Model/Toy	2	[]	4	3
562	2020-07-01 23:32:40.24576+00	19	Cradleboard model/toy Baakáatiche	2	[{"changed": {"fields": ["name", "description", "physical_details", "catalog_number", "provenance", "private_notes", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"changed": {"name": "video", "object": "Video: Cradleboard model/toy Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
563	2020-07-01 23:33:07.002315+00	19	Cradleboard model/toy Baakáatiche	2	[]	4	3
564	2020-07-01 23:34:03.952681+00	19	Cradleboard model/toy Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Cradleboard model/toy Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
565	2020-07-01 23:35:20.749306+00	19	Cradleboard model/toy Baakáatiche	2	[{"changed": {"fields": ["physical_details"]}}, {"added": {"name": "narrative", "object": "Narrative: Cradleboard model/toy Baak\\u00e1atiche"}}]	4	3
566	2020-07-01 23:36:48.939697+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
567	2020-07-01 23:40:00.098555+00	35	Toy Baby Carrier Baakáatiche	2	[]	4	3
568	2020-07-01 23:42:37.09863+00	16	Cradleboard Model/Toy	2	[]	4	3
569	2020-07-02 02:12:51.405004+00	9	Gun Case Model	2	[]	4	3
570	2020-07-02 02:14:35.410045+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Toy Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
571	2020-07-02 02:27:32.866629+00	10	Tape #12 Non-Sacred #2 027394.000 Game	2	[]	4	3
572	2020-07-02 02:41:13.589855+00	58	Cup and pin game	1	[{"added": {}}]	17	3
573	2020-07-02 02:42:10.146629+00	10	Red and Black Bead Cup and Pin Game	2	[{"changed": {"fields": ["name", "physical_details", "access_notes_or_rights_and_reproduction", "provenance", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Red and Black Bead Cup and Pin Game"}}]	4	3
574	2020-07-02 02:52:44.564783+00	30	Beaded Bags	2	[{"changed": {"fields": ["name", "physical_details", "access_notes_or_rights_and_reproduction", "provenance", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"changed": {"name": "video", "object": "Video: Beaded Bags", "fields": ["link"]}}, {"added": {"name": "narrative", "object": "Narrative: Beaded Bags"}}]	4	3
575	2020-07-02 02:53:33.724541+00	12	Bag Model/Miniature	3		4	3
576	2020-07-02 02:54:26.250315+00	9	Gun Case Model	2	[]	4	3
577	2020-07-02 03:06:59.198775+00	11	Black Bead Cup and Pin Game	2	[{"changed": {"fields": ["name", "physical_details", "access_notes_or_rights_and_reproduction", "provenance", "citation", "place_created", "keywords", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Black Bead Cup and Pin Game"}}]	4	3
578	2020-07-02 03:09:04.355589+00	11	Black Bead Cup and Pin Game	2	[]	4	3
579	2020-07-02 03:09:40.286142+00	19	Cradleboard model/toy Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Cradleboard model/toy Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
580	2020-07-02 03:12:08.927533+00	19	Cradleboard model/toy Baakáatiche	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "citation"]}}]	4	3
581	2020-07-02 03:18:48.637023+00	35	Toy Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["description", "access_notes_or_rights_and_reproduction", "private_cataloger"]}}, {"changed": {"name": "video", "object": "Video: Toy Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
582	2020-07-02 03:30:14.130715+00	2	Small Beaded Baby Carrier  Apsáalooke	3		4	3
583	2020-07-02 03:33:11.780641+00	34	Small Beaded Baby Carrier	2	[{"changed": {"fields": ["description", "access_notes_or_rights_and_reproduction", "private_cataloger"]}}, {"changed": {"name": "video", "object": "Video: Small Beaded Baby Carrier", "fields": ["link"]}}]	4	3
584	2020-07-02 03:33:56.813681+00	36	Toy Cradle Board with Doll Baakáatiche	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
585	2020-07-02 03:37:43.80328+00	33	Back Rest and Tripod	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "provenance", "citation", "private_cataloger", "private_catalog_date"]}}]	4	3
586	2020-07-02 03:39:41.020992+00	59	Wood	1	[{"added": {}}]	17	3
587	2020-07-02 03:39:48.140082+00	33	Back Rest and Tripod	2	[{"changed": {"fields": ["keywords"]}}]	4	3
588	2020-07-02 04:26:24.294208+00	33	Back Rest and Tripod	2	[{"changed": {"fields": ["description", "physical_details", "access_notes_or_rights_and_reproduction", "provenance", "private_notes", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Back Rest and Tripod"}}]	4	3
589	2020-07-02 04:26:27.888691+00	33	Back Rest and Tripod	2	[]	4	3
590	2020-07-02 04:28:05.336803+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
591	2020-07-02 04:29:05.982255+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
592	2020-07-02 04:31:59.946793+00	8	Toy Saddle Bag	2	[]	4	3
593	2020-07-02 04:32:19.515005+00	33	Back Rest and Tripod	2	[]	4	3
594	2020-07-02 04:33:16.898683+00	9	Gun Case Model	2	[]	4	3
595	2020-07-02 04:40:40.995557+00	36	Toy Cradle Board with Doll Baakáatiche	2	[]	4	3
596	2020-07-02 15:42:14.27555+00	30	Beaded Bags	2	[{"changed": {"fields": ["citation"]}}]	4	3
597	2020-07-02 15:46:26.673006+00	30	Beaded Bags	2	[]	4	3
598	2020-07-02 15:46:46.68676+00	34	Small Beaded Baby Carrier	2	[]	4	3
599	2020-07-02 15:47:06.232694+00	33	Back Rest and Tripod	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
600	2020-07-02 15:47:16.087599+00	35	Toy Baby Carrier Baakáatiche	2	[]	4	3
601	2020-07-02 15:47:45.08623+00	33	Back Rest and Tripod	2	[]	4	3
602	2020-07-02 15:48:16.868222+00	19	Cradleboard model/toy Baakáatiche	2	[]	4	3
603	2020-07-02 15:48:34.437889+00	16	Cradleboard Model/Toy	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
604	2020-07-02 15:50:51.079651+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["name"]}}]	4	3
605	2020-07-02 15:52:44.409001+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["citation"]}}]	4	3
606	2020-07-02 15:54:44.267833+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["place_created"]}}]	4	3
607	2020-07-02 15:55:12.756157+00	10	Cup and Pin Game with Red and Black Beads	2	[]	4	3
611	2020-07-02 19:31:04.724891+00	27	Needle Case	2	[{"changed": {"name": "video", "object": "Video: Needle Case", "fields": ["link"]}}]	4	3
612	2020-07-03 21:04:38.616165+00	27	Needle Case	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction"]}}]	4	3
613	2020-07-03 21:12:46.353589+00	17	String of Venetian Necklace Áapii	2	[{"changed": {"fields": ["name", "description", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "private_notes", "citation", "place_created", "keywords", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: String of Venetian Necklace \\u00c1apii"}}]	4	3
614	2020-07-03 21:15:13.142601+00	18	Knife with Studded Sheath Bítchiisshe	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "citation", "place_created", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Knife with Studded Sheath B\\u00edtchiisshe"}}]	4	3
615	2020-07-03 21:15:32.25704+00	8	Toy Saddle Bag	2	[]	4	3
616	2020-07-03 21:24:08.334891+00	32	Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Baby Carrier Baak\\u00e1atiche"}}]	4	3
617	2020-07-03 21:27:17.710904+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Saddle and Saddle Cloth"}}]	4	3
618	2020-07-03 21:29:33.162469+00	26	Baby Carrier Ornament	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Baby Carrier Ornament"}}]	4	3
619	2020-07-06 16:35:50.082567+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["keywords"]}}]	4	3
620	2020-07-06 17:14:36.471545+00	60	Saddle Bags	1	[{"added": {}}]	17	3
621	2020-07-06 17:14:52.259163+00	60	Saddle bags	2	[{"changed": {"fields": ["word"]}}]	17	3
622	2020-07-06 17:15:53.430316+00	61	Pouches	1	[{"added": {}}]	17	3
623	2020-07-06 17:28:46.337709+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["culture_or_community", "keywords"]}}]	4	3
624	2020-07-06 17:29:29.527261+00	8	Toy Saddle Bag	2	[{"changed": {"name": "narrative", "object": "Narrative: Toy Saddle Bag", "fields": ["content"]}}]	4	3
625	2020-07-06 18:10:07.708484+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["culture_or_community", "access_notes_or_rights_and_reproduction", "keywords"]}}, {"changed": {"name": "narrative", "object": "Narrative: Cup and Pin Game", "fields": ["content"]}}]	4	3
626	2020-07-06 18:11:04.293794+00	44	Cup and pine game	3		17	3
627	2020-07-06 18:14:05.837093+00	9	Gun Case Model	2	[{"changed": {"fields": ["culture_or_community"]}}, {"changed": {"name": "narrative", "object": "Narrative: Gun Case Model", "fields": ["content"]}}]	4	3
628	2020-07-06 18:20:06.579108+00	9	Gun Case Model	2	[{"changed": {"fields": ["description"]}}, {"changed": {"name": "narrative", "object": "Narrative: Gun Case Model", "fields": ["content"]}}]	4	3
629	2020-07-06 18:22:07.15705+00	62	Gun cases	1	[{"added": {}}]	17	3
630	2020-07-06 18:22:17.038812+00	9	Gun Case and Gun Toy/Model	2	[{"changed": {"fields": ["name", "keywords"]}}]	4	3
631	2020-07-06 18:22:45.028492+00	62	Gun case	2	[{"changed": {"fields": ["word"]}}]	17	3
632	2020-07-06 18:23:04.817971+00	63	Gun	1	[{"added": {}}]	17	3
633	2020-07-06 18:23:24.130297+00	61	Pouch	2	[{"changed": {"fields": ["word"]}}]	17	3
634	2020-07-06 18:23:31.113528+00	60	Saddle bag	2	[{"changed": {"fields": ["word"]}}]	17	3
635	2020-07-06 18:23:40.757641+00	50	Photograph	2	[{"changed": {"fields": ["word"]}}]	17	3
636	2020-07-06 18:24:06.596865+00	37	Game	2	[{"changed": {"fields": ["word"]}}]	17	3
637	2020-07-06 18:25:05.576916+00	9	Gun Case and Gun Toy/Model	2	[{"changed": {"fields": ["keywords"]}}]	4	3
638	2020-07-06 18:25:56.64645+00	9	Gun Case and Gun Toy/Model	2	[{"changed": {"fields": ["keywords"]}}]	4	3
639	2020-07-06 18:26:59.402431+00	9	Gun Case and Gun Toy/Model	2	[{"changed": {"fields": ["citation", "keywords"]}}]	4	3
640	2020-07-06 18:27:36.436506+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["keywords"]}}]	4	3
641	2020-07-06 18:31:06.846002+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["culture_or_community", "location_of_originals"]}}, {"changed": {"name": "narrative", "object": "Narrative: Cup and Pin Game with Red and Black Beads", "fields": ["content"]}}]	4	3
642	2020-07-06 18:32:19.934563+00	7	Cup and Pin Game	2	[]	4	3
643	2020-07-06 18:37:21.346085+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"fields": ["name", "culture_or_community", "provenance", "citation"]}}, {"changed": {"name": "narrative", "object": "Narrative: Cup and Pin Game with Black Beads", "fields": ["content"]}}]	4	3
644	2020-07-06 18:38:52.03177+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"fields": ["provenance"]}}]	4	3
645	2020-07-06 18:40:40.185871+00	11	Cup and Pin Game with Black Beads	2	[]	4	3
646	2020-07-06 18:42:09.636618+00	7	Cup and Pin Game	2	[]	4	3
647	2020-07-06 18:43:42.847805+00	9	Gun Case and Gun Toy/Model	2	[]	4	3
648	2020-07-06 18:44:13.800388+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"fields": ["provenance"]}}]	4	3
649	2020-07-06 18:45:04.424247+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["provenance"]}}]	4	3
650	2020-07-06 18:46:13.003576+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["provenance"]}}]	4	3
651	2020-07-06 18:46:46.508426+00	9	Gun Case and Gun Toy/Model	2	[{"changed": {"fields": ["provenance"]}}]	4	3
652	2020-07-06 18:47:20.991784+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["provenance"]}}]	4	3
653	2020-07-06 18:51:32.803647+00	30	Beaded Bags	2	[{"changed": {"fields": ["culture_or_community", "provenance", "citation", "keywords"]}}, {"changed": {"name": "narrative", "object": "Narrative: Beaded Bags", "fields": ["content"]}}]	4	3
654	2020-07-06 18:52:26.134247+00	61	Bag/Pouch	2	[{"changed": {"fields": ["word"]}}]	17	3
655	2020-07-06 18:58:50.450368+00	4	Kelly, Susan	1	[{"added": {}}]	18	3
656	2020-07-06 18:59:25.99865+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["citation", "creator"]}}]	4	3
657	2020-07-06 19:00:03.690134+00	3	Peggy White Wellknown Buffalo & Susie Kelly NMAI Crow Heritage Collection	2	[]	3	3
658	2020-07-06 19:01:26.071456+00	2	White Wellknown Buffalo, Peggy	2	[{"changed": {"fields": ["culture", "dates", "address"]}}]	18	3
659	2020-07-06 19:01:53.57591+00	1	Yellowtail, William Petzoldt, Jr. (Bill)	2	[{"changed": {"fields": ["culture"]}}]	18	3
660	2020-07-06 19:02:54.618803+00	11	Cup and Pin Game with Black Beads	2	[]	4	3
661	2020-07-06 19:06:37.89333+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["citation", "creator"]}}]	4	3
663	2020-07-06 19:11:39.365906+00	9	Gun Case and Gun Toy/Model	2	[{"changed": {"fields": ["citation", "creator"]}}]	4	3
664	2020-07-06 19:12:23.771034+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["citation", "creator"]}}]	4	3
665	2020-07-06 19:13:02.765283+00	4	Kelly, Susie	2	[{"changed": {"fields": ["name"]}}]	18	3
666	2020-07-06 19:20:17.966622+00	34	Small Beaded Cradle Board	2	[{"changed": {"fields": ["culture_or_community", "citation", "keywords", "creator"]}}, {"changed": {"name": "narrative", "object": "Narrative: Small Beaded Cradle Board", "fields": ["content"]}}]	4	3
667	2020-07-06 19:21:10.203055+00	34	Small Beaded Cradle Board Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
668	2020-07-06 19:33:37.206086+00	19	Cradleboard (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name", "description", "culture_or_community", "citation", "creator"]}}, {"changed": {"name": "narrative", "object": "Narrative: Cradleboard (toy/model) Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
669	2020-07-06 19:36:52.500428+00	19	Cradleboard (toy/model) with white beaded border Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
670	2020-07-06 19:40:00.892922+00	19	Cradleboard (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
671	2020-07-06 20:23:41.314109+00	19	Cradleboard (toy/model) Baakáatiche	2	[]	4	3
672	2020-07-06 20:24:17.438267+00	19	Cradleboard (toy/model) Baakáatiche	2	[]	4	3
673	2020-07-06 20:29:03.772969+00	36	Cradle Board (Toy/Model) with Doll Baakáatiche	2	[{"changed": {"fields": ["name", "citation"]}}, {"changed": {"name": "narrative", "object": "Narrative: Cradle Board (Toy/Model) with Doll Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
674	2020-07-06 20:30:34.255222+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
675	2020-07-06 20:33:07.793626+00	34	Cradle Board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name", "physical_details", "citation", "keywords"]}}]	4	3
676	2020-07-06 20:34:01.213029+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["keywords"]}}]	4	3
677	2020-07-06 20:39:38.902226+00	16	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name", "culture_or_community", "physical_details", "keywords", "location_of_originals"]}}]	4	3
678	2020-07-06 20:41:33.611213+00	16	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["provenance", "private_notes"]}}, {"added": {"name": "narrative", "object": "Narrative: Cradle board (toy/model) Baak\\u00e1atiche"}}]	4	3
679	2020-07-06 20:44:40.656029+00	16	Cradle board (toy/model) Baakáatiche	2	[]	4	3
680	2020-07-06 20:45:23.627645+00	36	Cradle Board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["name", "citation", "location_of_originals"]}}]	4	3
681	2020-07-06 20:48:55.08103+00	35	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name", "citation", "keywords", "creator"]}}, {"changed": {"name": "narrative", "object": "Narrative: Cradle board (toy/model) Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
682	2020-07-06 20:50:28.173257+00	36	Cradle Board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["location_of_originals"]}}]	4	3
683	2020-07-06 20:56:42.69938+00	30	Beaded Bags	2	[]	4	3
684	2020-07-06 21:03:54.171712+00	26	Cradle Board Ornament	2	[{"changed": {"fields": ["name", "description", "culture_or_community", "keywords"]}}, {"changed": {"name": "narrative", "object": "Narrative: Cradle Board Ornament", "fields": ["content"]}}]	4	3
685	2020-07-06 21:06:39.618913+00	26	Cradle Board Ornament	2	[{"changed": {"fields": ["provenance", "citation"]}}]	4	3
686	2020-07-06 21:08:17.814442+00	35	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
687	2020-07-06 21:15:35.322098+00	33	Back Rest and Tripod (toy/model)	2	[{"changed": {"fields": ["name", "description", "culture_or_community", "access_notes_or_rights_and_reproduction", "citation", "keywords"]}}, {"changed": {"name": "narrative", "object": "Narrative: Back Rest and Tripod (toy/model)", "fields": ["content"]}}]	4	3
688	2020-07-06 21:16:42.019094+00	64	Furnishings (home)	1	[{"added": {}}]	17	3
689	2020-07-06 21:16:52.04536+00	33	Back Rest and Tripod (toy/model)	2	[{"changed": {"fields": ["keywords"]}}]	4	3
690	2020-07-06 21:36:39.096376+00	9	Gun Case and Gun (toy/model)	2	[{"changed": {"fields": ["name"]}}]	4	3
691	2020-07-06 21:48:04.514243+00	3	National Museum of American Indian	2	[{"changed": {"fields": ["address", "contact"]}}]	18	3
692	2020-07-06 21:51:30.008436+00	3	National Museum of American Indian	2	[{"changed": {"fields": ["description", "historical_note"]}}]	18	3
693	2020-07-06 21:54:01.800371+00	3	National Museum of American Indian	2	[{"changed": {"fields": ["cover_image"]}}]	18	3
694	2020-07-06 21:55:18.535272+00	3	National Museum of American Indian	2	[{"changed": {"fields": ["description"]}}]	18	3
695	2020-07-07 01:20:37.643884+00	9	Gun Case and Gun (toy/model)	2	[{"changed": {"fields": ["creator"]}}]	4	3
696	2020-07-07 13:27:03.742416+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
697	2020-07-07 13:28:09.190938+00	30	Beaded Bags	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
698	2020-07-07 13:32:46.860829+00	28	Toy Baby Board	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "private_notes", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Toy Baby Board"}}]	4	3
699	2020-07-07 13:35:17.724836+00	27	Needle Case	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction", "private_notes", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Needle Case"}}]	4	3
700	2020-07-07 13:36:47.610978+00	26	Cradle Board Ornament	2	[{"changed": {"fields": ["description", "private_notes"]}}]	4	3
701	2020-07-07 13:37:16.023877+00	19	Cradle board (toy/model) Baakáatiche	2	[]	4	3
702	2020-07-07 13:44:09.111957+00	15	Game Hoop Mini	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "external_link", "provenance", "private_notes", "citation", "place_created", "keywords", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Game Hoop Mini"}}]	4	3
703	2020-07-07 13:48:03.605871+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "private_notes", "citation", "place_created", "keywords", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Quiver Model/Miniature"}}]	4	3
704	2020-07-07 13:55:28.382777+00	13	Doll with Cradle/Cradleboard  Baakáatiche	2	[{"changed": {"fields": ["name", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "private_notes", "citation", "place_created", "keywords", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Doll with Cradle/Cradleboard  Baak\\u00e1atiche"}}]	4	3
705	2020-07-07 13:55:54.049845+00	11	Cup and Pin Game with Black Beads	2	[]	4	3
706	2020-07-07 13:56:17.550569+00	56	490.JPG	2	[{"changed": {"fields": ["creator"]}}]	4	3
707	2020-07-07 13:58:19.853206+00	36	Cradle Board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
708	2020-07-07 13:58:35.236452+00	35	Cradle board (toy/model) Baakáatiche	2	[]	4	3
709	2020-07-07 13:58:42.659232+00	34	Cradle Board (toy/model) Baakáatiche	2	[]	4	3
710	2020-07-07 13:58:51.693903+00	33	Back Rest and Tripod (toy/model)	2	[]	4	3
711	2020-07-07 13:59:02.622314+00	33	Back Rest and Tripod (toy/model)	2	[]	4	3
712	2020-07-07 13:59:12.929357+00	32	Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
713	2020-07-07 13:59:24.030302+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
714	2020-07-07 13:59:39.794537+00	30	Beaded Bags	2	[]	4	3
715	2020-07-07 14:00:13.480045+00	28	Toy Baby Board	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
716	2020-07-07 14:00:25.554172+00	27	Needle Case	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
717	2020-07-07 14:00:34.255958+00	26	Cradle Board Ornament	2	[]	4	3
718	2020-07-07 14:00:43.22713+00	19	Cradle board (toy/model) Baakáatiche	2	[]	4	3
719	2020-07-07 14:01:00.232142+00	17	String of Venetian Necklace Áapii	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
720	2020-07-07 14:01:09.804369+00	16	Cradle board (toy/model) Baakáatiche	2	[]	4	3
721	2020-07-07 14:01:21.372082+00	16	Cradle board (toy/model) Baakáatiche	2	[]	4	3
722	2020-07-07 14:01:29.281984+00	15	Game Hoop Mini	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
723	2020-07-07 14:01:57.544604+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["culture_or_community", "catalog_number"]}}]	4	3
724	2020-07-07 14:02:18.13268+00	13	Doll with Cradle/Cradleboard  Baakáatiche	2	[{"changed": {"fields": ["culture_or_community", "keywords"]}}]	4	3
725	2020-07-07 14:03:12.624323+00	17	String of Venetian Necklace Áapii	2	[{"changed": {"fields": ["culture_or_community", "keywords"]}}]	4	3
726	2020-07-07 14:03:22.543666+00	34	Cradle Board (toy/model) Baakáatiche	2	[]	4	3
727	2020-07-07 14:03:32.954195+00	33	Back Rest and Tripod (toy/model)	2	[]	4	3
728	2020-07-07 14:03:50.872535+00	32	Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["keywords"]}}]	4	3
729	2020-07-07 14:04:01.479278+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["keywords"]}}]	4	3
730	2020-07-07 14:04:24.11609+00	30	Beaded Bags	2	[{"changed": {"fields": ["keywords"]}}]	4	3
731	2020-07-07 14:04:36.199155+00	28	Toy Baby Board	2	[{"changed": {"fields": ["keywords"]}}]	4	3
732	2020-07-07 14:04:55.520803+00	27	Needle Case	2	[{"changed": {"fields": ["keywords"]}}]	4	3
733	2020-07-07 14:05:17.490651+00	26	Cradle Board Ornament	2	[]	4	3
734	2020-07-07 14:05:26.946312+00	19	Cradle board (toy/model) Baakáatiche	2	[]	4	3
735	2020-07-07 14:11:02.321021+00	32	Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
736	2020-07-07 14:16:24.4323+00	28	Toy Baby Board	2	[{"changed": {"name": "video", "object": "Video: Toy Baby Board", "fields": ["link"]}}]	4	3
737	2020-07-07 14:17:20.656796+00	28	Toy Baby Board	2	[]	4	3
738	2020-07-07 14:18:47.381948+00	31	Saddle and Saddle Cloth	2	[{"changed": {"name": "video", "object": "Video: Saddle and Saddle Cloth", "fields": ["link"]}}]	4	3
739	2020-07-07 14:21:30.122061+00	28	Toy Baby Board	2	[{"added": {"name": "image", "object": "Image: Toy Baby Board"}}, {"changed": {"name": "video", "object": "Video: Toy Baby Board", "fields": ["link"]}}]	4	3
740	2020-07-07 14:22:32.90452+00	32	Baby Carrier Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Baby Carrier Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
741	2020-07-07 14:25:19.332885+00	35	Cradle board (toy/model) Baakáatiche	2	[{"added": {"name": "image", "object": "Image: Cradle board (toy/model) Baak\\u00e1atiche"}}]	4	3
742	2020-07-07 14:26:09.78406+00	34	Cradle Board (toy/model) Baakáatiche	2	[{"added": {"name": "image", "object": "Image: Cradle Board (toy/model) Baak\\u00e1atiche"}}]	4	3
743	2020-07-07 14:26:55.280421+00	33	Back Rest and Tripod (toy/model)	2	[{"added": {"name": "image", "object": "Image: Back Rest and Tripod (toy/model)"}}]	4	3
744	2020-07-07 14:27:53.832844+00	31	Saddle and Saddle Cloth	2	[{"added": {"name": "image", "object": "Image: Saddle and Saddle Cloth"}}]	4	3
745	2020-07-07 14:29:02.316144+00	26	Cradle Board Ornament	2	[{"added": {"name": "image", "object": "Image: Cradle Board Ornament"}}]	4	3
746	2020-07-07 14:30:00.985584+00	19	Cradle board (toy/model) Baakáatiche	2	[{"added": {"name": "image", "object": "Image: Cradle board (toy/model) Baak\\u00e1atiche"}}]	4	3
747	2020-07-07 14:30:52.622786+00	15	Game Hoop Mini	2	[{"changed": {"fields": ["keywords"]}}, {"added": {"name": "image", "object": "Image: Game Hoop Mini"}}]	4	3
748	2020-07-07 14:31:59.607435+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["keywords"]}}, {"added": {"name": "image", "object": "Image: Quiver Model/Miniature"}}]	4	3
749	2020-07-07 14:32:35.998445+00	13	Doll with Cradle/Cradleboard  Baakáatiche	2	[{"added": {"name": "image", "object": "Image: Doll with Cradle/Cradleboard  Baak\\u00e1atiche"}}]	4	3
750	2020-07-07 14:38:29.653885+00	16	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction", "provenance", "private_notes", "citation", "place_created", "creator", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "image", "object": "Image: Cradle board (toy/model) Baak\\u00e1atiche"}}]	4	3
751	2020-07-07 15:44:11.041221+00	34	Cradle Board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}]	4	3
752	2020-07-07 15:44:15.314991+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"fields": ["creator"]}}]	4	3
753	2020-07-07 16:46:19.665376+00	11	Cup and Pin Game with Black Beads	2	[]	4	3
754	2020-07-09 01:08:01.997364+00	13	Doll with Cradle/Cradleboard Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
755	2020-07-09 03:11:14.380078+00	47	Meat for the Kettle, ca. 1966 447.JPG	2	[{"changed": {"fields": ["name", "description", "culture_or_community", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "provenance", "place_created", "keywords", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Meat for the Kettle, ca. 1966 447.JPG"}}]	4	3
756	2020-07-09 14:38:01.732455+00	26	Cradle Board Ornament	2	[{"changed": {"fields": ["creator"]}}, {"changed": {"name": "video", "object": "Video: Cradle Board Ornament", "fields": ["link"]}}]	4	3
757	2020-07-09 15:21:02.959531+00	18	Knife with Studded Sheath Bítchiisshe	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
758	2020-07-09 15:21:40.83326+00	17	String of Venetian Necklace Áapii	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
759	2020-07-09 15:23:13.942845+00	5	Knife Bítchiisshe	3		4	3
760	2020-07-09 15:24:05.725743+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["creator"]}}]	4	3
761	2020-07-09 15:25:46.917251+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}, {"changed": {"name": "narrative", "object": "Narrative: Cradle board (toy/model) Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
762	2020-07-09 15:26:47.419722+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["creator"]}}]	4	3
763	2020-07-09 15:52:37.20953+00	18	Knife with Studded Sheath Bítchiisshe	2	[{"changed": {"fields": ["culture_or_community", "provenance", "citation", "keywords"]}}]	4	3
764	2020-07-09 15:53:06.647813+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["date_of_creation"]}}]	4	3
765	2020-07-09 15:53:39.425573+00	9	Gun Case and Gun (toy/model)	2	[]	4	3
766	2020-07-09 15:53:53.262851+00	9	Gun Case and Gun (toy/model)	2	[]	4	3
767	2020-07-09 15:54:32.041733+00	13	Doll with Cradle/Cradleboard Baakáatiche	2	[{"changed": {"fields": ["creator"]}}]	4	3
768	2020-07-09 15:55:51.373084+00	13	Doll with Cradle/Cradleboard Baakáatiche	2	[]	4	3
769	2020-07-09 15:57:17.468726+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["date_of_creation", "provenance", "creator"]}}]	4	3
770	2020-07-09 16:00:11.094111+00	15	Game Hoop Mini	2	[{"changed": {"fields": ["provenance", "citation", "creator"]}}]	4	3
771	2020-07-09 16:03:03.41158+00	16	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}]	4	3
772	2020-07-09 16:03:41.97032+00	26	Cradle Board Ornament	2	[{"changed": {"fields": ["provenance", "creator"]}}]	4	3
773	2020-07-09 16:05:53.15547+00	27	Needle Case	2	[{"changed": {"fields": ["physical_details", "provenance", "citation", "creator"]}}]	4	3
774	2020-07-09 16:07:18.214734+00	28	Toy Baby Board	2	[{"changed": {"fields": ["provenance", "citation", "creator"]}}]	4	3
775	2020-07-09 16:07:39.814114+00	30	Beaded Bags	2	[{"changed": {"fields": ["creator"]}}]	4	3
776	2020-07-09 16:09:24.578745+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["provenance", "creator"]}}]	4	3
777	2020-07-09 16:10:46.784033+00	32	Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["provenance", "citation", "creator"]}}]	4	3
778	2020-07-09 16:11:10.091477+00	33	Back Rest and Tripod (toy/model)	2	[{"changed": {"fields": ["creator"]}}]	4	3
779	2020-07-09 16:11:25.61878+00	34	Cradle Board (toy/model) Baakáatiche	2	[]	4	3
780	2020-07-09 16:11:43.540841+00	35	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}]	4	3
781	2020-07-14 14:51:24.433464+00	61	Tape #7 Sacred Items #1 214464 Shield	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Tape #7 Sacred Items #1 214464 Shield"}}, {"added": {"name": "image", "object": "Image: Tape #7 Sacred Items #1 214464 Shield"}}, {"added": {"name": "video", "object": "Video: Tape #7 Sacred Items #1 214464 Shield"}}, {"added": {"name": "narrative", "object": "Narrative: Tape #7 Sacred Items #1 214464 Shield"}}]	4	3
782	2020-07-14 14:51:28.921904+00	61	Tape #7 Sacred Items #1 214464 Shield	2	[]	4	3
783	2020-07-14 15:05:25.450674+00	62	Tap #7 Sacred Items #1 207719 Shield and 029923 Rattle	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tap #7 Sacred Items #1 207719 Shield and 029923 Rattle"}}, {"added": {"name": "narrative", "object": "Narrative: Tap #7 Sacred Items #1 207719 Shield and 029923 Rattle"}}]	4	3
784	2020-07-14 15:05:31.276104+00	62	Tap #7 Sacred Items #1 207719 Shield and 029923 Rattle	2	[]	4	3
785	2020-07-14 15:05:57.757992+00	61	Tape #7 Sacred Items #1 214464 Shield	2	[{"changed": {"fields": ["keywords"]}}, {"deleted": {"name": "image", "object": "Image: Tape #7 Sacred Items #1 214464 Shield"}}, {"deleted": {"name": "image", "object": "Image: Tape #7 Sacred Items #1 214464 Shield"}}]	4	3
786	2020-07-14 15:10:28.448306+00	63	Sacred Items #1 155342 Shield and Covers	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 155342 Shield and Covers"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 155342 Shield and Covers"}}]	4	3
787	2020-07-14 15:30:44.676039+00	61	Tape #7 Sacred Items #1 214464 Shield	2	[]	4	3
788	2020-07-14 15:38:18.955882+00	64	Sacred Items #1 147472 Shield Binnaaché	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 147472 Shield Binnaach\\u00e9"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 147472 Shield Binnaach\\u00e9"}}]	4	3
789	2020-07-14 15:47:56.171684+00	62	Tape #7 Sacred Items #1 207719 Shield and 029923 Rattle	2	[{"changed": {"fields": ["name", "keywords"]}}]	4	3
790	2020-07-15 02:13:37.730679+00	4	Crow Indian Gardeners & Farmers at Work and at Play, 1930s	2	[{"changed": {"fields": ["title", "description", "dates", "provenance", "citation", "historical_note", "access_notes_or_rights_and_reproduction", "geographical_location", "private_notes"]}}]	3	3
791	2020-07-15 02:21:51.260493+00	4	Crow Indian Gardeners & Farmers at Work and at Play, 1930s	2	[{"changed": {"fields": ["description", "dates", "provenance", "historical_note"]}}]	3	3
792	2020-07-15 02:33:30.659599+00	5	U.S. Department of Interior, Bureau of Indian Affairs, Division of Extension and Industry	1	[{"added": {}}]	18	3
793	2020-07-15 02:41:38.910171+00	6	Runyan, Charles S.	1	[{"added": {}}]	18	3
794	2020-07-15 02:42:17.90615+00	7	National Archives and Records Administration, Washington, D.C.	1	[{"added": {}}]	18	3
795	2020-07-15 02:43:24.348253+00	4	Crow Indian Gardeners & Farmers at Work and at Play, 1930s	2	[{"changed": {"fields": ["description", "provenance", "historical_note", "keywords", "creator", "location_of_originals"]}}]	3	3
796	2020-07-15 02:47:20.13906+00	65	"The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time," 1937.	1	[{"added": {}}]	4	3
797	2020-07-15 02:47:35.773292+00	4	Crow Indian Gardeners & Farmers, 1930s	2	[{"changed": {"fields": ["title"]}}]	3	3
798	2020-07-15 02:50:35.128417+00	65	"The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time," 1937.	2	[{"changed": {"fields": ["cover_image", "description"]}}]	4	3
799	2020-07-15 02:51:42.055832+00	65	"The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time," 1937.	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
800	2020-07-15 02:55:37.029916+00	65	"The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time," 1937.	2	[{"changed": {"fields": ["other_forms", "date_of_creation", "physical_details"]}}]	4	3
801	2020-07-15 03:08:38.2417+00	65	"The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time," 1937.	2	[{"changed": {"fields": ["description", "access_notes_or_rights_and_reproduction", "catalog_number", "citation", "historical_note", "place_created"]}}]	4	3
802	2020-07-15 03:12:00.085607+00	65	Feed	1	[{"added": {}}]	17	3
803	2020-07-15 03:12:08.936202+00	66	Food	1	[{"added": {}}]	17	3
804	2020-07-15 03:12:22.816177+00	67	Reservation hat	1	[{"added": {}}]	17	3
805	2020-07-15 03:12:35.58963+00	68	Women	1	[{"added": {}}]	17	3
806	2020-07-15 03:13:54.585214+00	69	Children	1	[{"added": {}}]	17	3
807	2020-07-15 03:14:21.806696+00	70	Farming	1	[{"added": {}}]	17	3
808	2020-07-15 03:16:09.64218+00	65	"The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time," 1937.	2	[{"changed": {"fields": ["provenance", "keywords"]}}]	4	3
809	2020-07-15 03:17:07.472824+00	71	Bureau of Indian Affairs	1	[{"added": {}}]	17	3
810	2020-07-15 03:17:34.341063+00	72	Division Extension & Industry	1	[{"added": {}}]	17	3
811	2020-07-15 03:17:42.161443+00	65	"The Blacklodge Farm Chapter at play.  These recreation meetings occur frequently in the summer time," 1937.	2	[{"changed": {"fields": ["keywords"]}}]	4	3
812	2020-07-15 03:22:30.869592+00	65	Black Lodge Farm Chapter, 1937	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
813	2020-07-15 03:23:51.816627+00	65	Black Lodge Farm Chapter, 1937	2	[{"changed": {"fields": ["description"]}}]	4	3
814	2020-07-15 03:25:43.422939+00	65	Black Lodge Farm Chapter, 1937	2	[{"added": {"name": "narrative", "object": "Narrative: Black Lodge Farm Chapter, 1937"}}]	4	3
815	2020-07-15 03:41:09.866267+00	2	Bill Yellowtail photographs, 1960s-2000s	2	[{"changed": {"fields": ["title"]}}]	3	3
816	2020-07-15 03:42:21.749924+00	1	Yellowtail, Bill	2	[{"changed": {"fields": ["name", "historical_note"]}}]	18	3
817	2020-07-15 04:06:50.001342+00	65	Black Lodge Farm Chapter, 1937	2	[{"added": {"name": "image", "object": "Image: Black Lodge Farm Chapter, 1937"}}]	4	3
818	2020-07-16 02:08:23.559487+00	32	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
819	2020-07-16 13:38:47.884704+00	36	Baby carrier (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
820	2020-07-16 13:39:18.099573+00	35	Baby carrier (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
821	2020-07-16 13:39:28.229942+00	34	Baby carrier (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
822	2020-07-16 13:39:57.730412+00	32	Baby carrier (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
823	2020-07-16 13:40:10.287901+00	19	Baby carrier (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
824	2020-07-16 13:40:53.783792+00	26	Baby Carrier Ornament	2	[{"changed": {"fields": ["name"]}}]	4	3
825	2020-07-16 13:41:27.442523+00	16	Baby Carrier (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
826	2020-07-16 13:41:58.27619+00	13	Doll with Baby Carrier Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
827	2020-07-16 13:46:18.526545+00	62	Tape #7 Sacred Items #1 207719 Shield and 029923 Rattle	2	[{"changed": {"fields": ["cover_image", "keywords", "creator"]}}, {"added": {"name": "image", "object": "Image: Tape #7 Sacred Items #1 207719 Shield and 029923 Rattle"}}]	4	3
828	2020-07-16 13:56:56.874947+00	66	Tap #7 Sacred Items #1 029923 Rattle	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Tap #7 Sacred Items #1 029923 Rattle"}}, {"added": {"name": "narrative", "object": "Narrative: Tap #7 Sacred Items #1 029923 Rattle"}}]	4	3
829	2020-07-16 13:58:49.65177+00	66	Tape #7 Rattle	2	[{"changed": {"fields": ["name", "cover_image", "private_notes"]}}, {"added": {"name": "image", "object": "Image: Tape #7 Rattle"}}]	4	3
830	2020-07-16 13:59:20.604836+00	64	Sacred Items #1 147472 Shield Binnaaché	2	[]	4	3
831	2020-07-16 13:59:32.85039+00	62	Tape #7 Sacred Items #1 207719 Shield Binnaaché and 029923 Rattle	2	[{"changed": {"fields": ["name"]}}]	4	3
832	2020-07-16 13:59:47.489849+00	61	Tape #7 Sacred Items #1 214464 Shield Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
833	2020-07-16 14:01:35.58285+00	63	Sacred Items #1 155342 Shield Binnaaché and Covers	2	[{"changed": {"fields": ["name"]}}]	4	3
834	2020-07-16 14:06:34.066073+00	67	Sacred Items #1 143601 Shield	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Sacred Items #1 143601 Shield"}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 143601 Shield"}}]	4	3
835	2020-07-16 14:31:00.298307+00	16	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
836	2020-07-16 14:31:18.513934+00	36	Cradle board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
837	2020-07-16 14:31:34.801802+00	35	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
838	2020-07-16 14:32:16.797455+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
839	2020-07-16 14:32:45.431239+00	26	Cradle board Ornament	2	[{"changed": {"fields": ["name"]}}]	4	3
840	2020-07-16 14:33:14.385553+00	32	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
841	2020-07-16 14:46:14.060471+00	67	Sacred Items #1 143601 Shield	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "external_link", "provenance", "private_notes", "citation", "place_created", "keywords", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 143601 Shield"}}]	4	3
842	2020-07-16 15:13:17.503661+00	35	Baby carrier (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
843	2020-07-16 15:18:03.506317+00	27	Needle Case	2	[{"deleted": {"name": "video", "object": "Video: Needle Case"}}]	4	3
844	2020-07-16 15:22:48.162357+00	35	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
845	2020-07-16 15:23:12.686734+00	34	Cradle Board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
846	2020-07-16 15:23:30.118674+00	13	Doll with Cradle Board Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
847	2020-07-16 15:23:47.765897+00	68	Sacred Items #1 117678 Buffalo Shield and cover	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Sacred Items #1 117678 Buffalo Shield and cover"}}, {"added": {"name": "image", "object": "Image: Sacred Items #1 117678 Buffalo Shield and cover"}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 117678 Buffalo Shield and cover"}}]	4	3
848	2020-07-16 15:33:15.791973+00	68	Sacred Items #1 117678 Buffalo Shield and cover	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "external_link", "provenance", "place_created", "keywords", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 117678 Buffalo Shield and cover"}}]	4	3
849	2020-07-16 15:34:52.970859+00	68	Sacred Items #1 117678 Buffalo Shield and cover (Prov unfinished GM)	2	[{"changed": {"fields": ["name"]}}]	4	3
850	2020-07-16 15:35:25.735109+00	47	Meat for the Kettle, ca. 1966 447.JPG	2	[]	4	3
851	2020-07-16 15:36:11.997261+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"added": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Spring cow camp, ca. 1964"}}]	4	3
852	2020-07-16 15:37:29.631587+00	14	Quiver Model/Miniature	2	[{"deleted": {"name": "image", "object": "Image: Quiver Model/Miniature"}}]	4	3
853	2020-07-16 15:38:46.216574+00	14	Quiver Model/Miniature	2	[]	4	3
854	2020-07-16 15:39:42.877485+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["creator"]}}]	4	3
855	2020-07-16 15:40:30.123535+00	8	Toy Saddle Bag	2	[{"changed": {"fields": ["creator"]}}]	4	3
856	2020-07-16 15:40:58.192674+00	9	Gun Case and Gun (toy/model)	2	[{"changed": {"fields": ["creator"]}}]	4	3
857	2020-07-16 19:54:24.732368+00	10	Cup and Pin Game with Red and Black Beads	2	[]	4	3
858	2020-07-16 19:54:54.158927+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"fields": ["creator"]}}]	4	3
859	2020-07-16 19:55:25.165432+00	13	Doll with Cradle Board Baakáatiche	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Doll with Cradle Board Baak\\u00e1atiche"}}]	4	3
860	2020-07-16 19:55:55.207867+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["creator"]}}]	4	3
861	2020-07-20 17:13:25.222763+00	68	Sacred Items #1 117678 Buffalo Shield and cover	2	[{"changed": {"fields": ["name", "provenance", "private_notes", "citation", "keywords"]}}]	4	3
862	2020-07-20 18:17:45.950482+00	63	Sacred Items #1 155342 Shield Binnaaché and Covers	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
863	2020-07-20 18:19:13.986793+00	63	Sacred Items #1 155342 Shield Binnaaché and Covers	2	[{"changed": {"fields": ["provenance"]}}]	4	3
864	2020-07-20 18:22:49.780586+00	69	Sacred Items #1 023261 Shield with cover Binnaaché	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 023261 Shield with cover Binnaach\\u00e9"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 023261 Shield with cover Binnaach\\u00e9"}}]	4	3
865	2020-07-20 18:23:22.537558+00	69	Sacred Items #1 023261 Shield with cover Binnaaché	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
866	2020-07-20 18:30:31.5981+00	61	Tape #7 Sacred Items #1 214464 Shield Binnaaché	2	[{"changed": {"fields": ["catalog_number"]}}]	4	3
867	2020-07-20 18:36:48.856137+00	70	Sacred Items #1 117679 Buffalo Shield and Cover Binnaaché	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 117679 Buffalo Shield and Cover Binnaach\\u00e9"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 117679 Buffalo Shield and Cover Binnaach\\u00e9"}}]	4	3
868	2020-07-20 18:49:00.043631+00	71	Sacred Items #1 117681 Shield and Cover Binnaaché	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Sacred Items #1 117681 Shield and Cover Binnaach\\u00e9"}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 117681 Shield and Cover Binnaach\\u00e9"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 117681 Shield and Cover Binnaach\\u00e9"}}]	4	3
869	2020-07-20 18:49:08.925579+00	61	Tape #7 Sacred Items #1 214464 Shield Binnaaché	2	[]	4	3
870	2020-07-20 18:49:22.228009+00	71	Sacred Items #1 117681 Shield and Cover Binnaaché	2	[]	4	3
871	2020-07-20 21:49:00.992591+00	61	Tape #7 Sacred Items #1 214464 Shield Binnaaché	2	[{"changed": {"fields": ["citation"]}}]	4	3
872	2020-07-20 21:49:08.503028+00	72	Sacred Items #1 141576 Shield Binnaaché	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 141576 Shield Binnaach\\u00e9"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 141576 Shield Binnaach\\u00e9"}}]	4	3
873	2020-07-20 21:49:32.040377+00	72	Sacred Items #1 141576 Shield Binnaaché	2	[]	4	3
874	2020-07-20 22:05:47.492417+00	73	Sacred Items #1 024426 Shield and Covers	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 024426 Shield and Covers"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 024426 Shield and Covers"}}]	4	3
875	2020-07-20 22:06:03.187235+00	73	Sacred Items #1 024426 Shield and Covers	2	[]	4	3
876	2020-07-20 22:13:21.362387+00	74	Sacred Items #1 024426.001 Shield and Covers Binnaaché	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items #1 024426.001 Shield and Covers Binnaach\\u00e9"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items #1 024426.001 Shield and Covers Binnaach\\u00e9"}}]	4	3
877	2020-07-20 22:13:50.087272+00	74	Sacred Items #1 024426.001 Shield and Covers Binnaaché	2	[]	4	3
878	2020-07-20 23:07:20.424288+00	15	Game Hoop Mini	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Game Hoop Mini"}}]	4	3
879	2020-07-20 23:08:57.118091+00	16	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Cradle board (toy/model) Baak\\u00e1atiche"}}]	4	3
880	2020-07-20 23:09:45.296616+00	17	String of Venetian Necklace Áapii	2	[{"changed": {"fields": ["creator"]}}]	4	3
881	2020-07-20 23:10:51.445728+00	18	Knife with Studded Sheath Bítchiisshe	2	[{"changed": {"fields": ["provenance", "creator"]}}, {"deleted": {"name": "image", "object": "Image: Knife with Studded Sheath B\\u00edtchiisshe"}}]	4	3
882	2020-07-20 23:13:09.270251+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Cradle board (toy/model) Baak\\u00e1atiche"}}]	4	3
883	2020-07-20 23:14:13.770074+00	26	Cradle board Ornament	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Cradle board Ornament"}}]	4	3
884	2020-07-20 23:27:20.601436+00	27	Needle Case	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Needle Case"}}, {"added": {"name": "video", "object": "Video: Needle Case"}}]	4	3
885	2020-07-20 23:28:53.633195+00	28	Toy Baby Board	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Toy Baby Board"}}]	4	3
886	2020-07-20 23:30:25.036087+00	30	Beaded Bags	2	[{"changed": {"fields": ["creator"]}}]	4	3
887	2020-07-20 23:31:09.491591+00	31	Saddle and Saddle Cloth	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Saddle and Saddle Cloth"}}]	4	3
888	2020-07-20 23:32:11.766282+00	32	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Cradle board (toy/model) Baak\\u00e1atiche"}}]	4	3
889	2020-07-21 00:51:31.225732+00	33	Back Rest and Tripod (toy/model)	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Back Rest and Tripod (toy/model)"}}, {"changed": {"name": "narrative", "object": "Narrative: Back Rest and Tripod (toy/model)", "fields": ["content"]}}]	4	3
890	2020-07-21 00:52:58.615895+00	34	Cradle Board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Cradle Board (toy/model) Baak\\u00e1atiche"}}]	4	3
891	2020-07-21 00:53:55.036329+00	35	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["creator"]}}, {"deleted": {"name": "image", "object": "Image: Cradle board (toy/model) Baak\\u00e1atiche"}}]	4	3
892	2020-07-21 00:54:18.70644+00	36	Cradle board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["creator"]}}]	4	3
893	2020-07-21 01:36:18.546229+00	75	Sacred Items 100693 Necklace	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items 100693 Necklace"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items 100693 Necklace"}}]	4	3
894	2020-07-21 01:36:42.108256+00	75	Sacred Items 100693 Necklace	2	[{"changed": {"name": "video", "object": "Video: Sacred Items 100693 Necklace", "fields": ["link"]}}]	4	3
895	2020-07-21 01:57:50.421588+00	76	Sacred Items 114880 Parfleche Case	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: Sacred Items 114880 Parfleche Case"}}, {"added": {"name": "narrative", "object": "Narrative: Sacred Items 114880 Parfleche Case"}}]	4	3
896	2020-07-21 13:49:29.581869+00	27	Needle Case Biichkawatshúaisshe	2	[{"changed": {"fields": ["name", "private_notes"]}}]	4	3
897	2020-07-21 16:39:13.342734+00	73	Male voice	1	[{"added": {}}]	17	3
898	2020-07-21 16:39:21.517957+00	74	Female voice	1	[{"added": {}}]	17	3
899	2020-07-28 13:15:03.526289+00	67	Sacred Items #1 143601 Shield	2	[{"deleted": {"name": "image", "object": "Image: Sacred Items #1 143601 Shield"}}]	4	3
900	2020-07-28 13:15:25.310151+00	67	Sacred Items #1 143601 Shield	2	[{"deleted": {"name": "video", "object": "Video: Sacred Items #1 143601 Shield"}}]	4	3
901	2020-07-28 13:15:30.301715+00	67	Sacred Items #1 143601 Shield	2	[]	4	3
902	2020-07-28 13:16:26.61003+00	68	Sacred Items #1 117678 Buffalo Shield and cover Bínnaache	2	[{"changed": {"fields": ["name"]}}]	4	3
903	2020-07-28 13:17:16.123876+00	67	Sacred Items #1 143601 Shield Bínnaache	2	[{"changed": {"fields": ["name"]}}]	4	3
904	2020-07-29 22:57:31.775829+00	36	Cradle board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["citation"]}}]	4	3
905	2020-07-29 23:02:36.361776+00	32	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["citation", "keywords"]}}]	4	3
906	2020-07-29 23:03:52.800672+00	32	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["keywords"]}}]	4	3
907	2020-07-29 23:04:42.980371+00	32	Cradle board (toy/model) Baakáatiche	2	[]	4	3
908	2020-07-29 23:10:14.877626+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["description", "keywords"]}}]	4	3
909	2020-07-29 23:15:53.992506+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["description", "citation"]}}]	4	3
910	2020-07-29 23:17:00.064235+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["citation"]}}]	4	3
911	2020-07-29 23:17:53.039875+00	36	Cradle board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["citation"]}}]	4	3
912	2020-07-29 23:19:20.225034+00	30	Beaded Bags	2	[{"changed": {"fields": ["keywords"]}}]	4	3
913	2020-07-29 23:24:04.738346+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["description"]}}]	4	3
914	2020-07-29 23:25:15.047212+00	75	Quiver	1	[{"added": {}}]	17	3
915	2020-07-29 23:26:26.812245+00	76	Hunting and fishing	1	[{"added": {}}]	17	3
916	2020-07-29 23:26:43.330241+00	77	Warfare	1	[{"added": {}}]	17	3
917	2020-07-29 23:26:53.042872+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["keywords"]}}]	4	3
918	2020-07-29 23:50:16.946292+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["private_notes", "citation"]}}]	4	3
919	2020-07-29 23:51:29.317226+00	28	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["name"]}}]	4	3
920	2020-07-29 23:55:32.633666+00	28	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["description", "private_notes", "citation", "keywords"]}}]	4	3
921	2020-07-30 00:37:29.077394+00	8	Saddle Bag (toy/model)	2	[{"changed": {"fields": ["name", "physical_details", "citation"]}}]	4	3
922	2020-07-30 01:00:54.259788+00	31	Saddle and Saddle cloth (toy/model)	2	[{"changed": {"fields": ["name", "description", "provenance", "private_notes", "citation"]}}]	4	3
923	2020-07-30 01:01:57.254872+00	31	Saddle and Saddle cloth (toy/model)	2	[{"changed": {"fields": ["description"]}}]	4	3
924	2020-07-30 01:04:29.341153+00	31	Saddle and Saddle cloth (toy/model)	2	[{"changed": {"fields": ["description"]}}]	4	3
925	2020-07-30 01:05:54.6685+00	78	Saddle	1	[{"added": {}}]	17	3
926	2020-07-30 01:06:00.604682+00	31	Saddle and Saddle cloth (toy/model)	2	[{"changed": {"fields": ["keywords"]}}]	4	3
927	2020-07-30 01:09:57.826266+00	31	Saddle and Saddle cloth (toy/model)	2	[]	4	3
928	2020-07-30 01:11:58.183612+00	34	Cradle Board (toy/model) Baakáatiche	2	[]	4	3
929	2020-07-30 01:16:11.580813+00	15	Game Hoops (minature)	2	[{"changed": {"fields": ["name", "description", "physical_details", "catalog_number", "citation"]}}]	4	3
930	2020-07-30 01:22:07.527229+00	15	Game Hoops (minature)	2	[]	4	3
931	2020-07-30 01:24:12.478993+00	18	Leather knife sheath decorated with brass tacks containing knife with wooden handle Bítchiisshe	2	[{"changed": {"fields": ["name", "provenance"]}}]	4	3
932	2020-07-30 01:26:47.265383+00	18	Knife with wooden handle with leather knife sheath with brass tacks Bítchiisshe	2	[{"changed": {"fields": ["name", "catalog_number", "citation"]}}]	4	3
933	2020-07-30 01:28:12.420251+00	18	Knife sheath with brass tacks containing knife with wooden handle Bítchiisshe	2	[{"changed": {"fields": ["name"]}}]	4	3
934	2020-07-30 01:29:11.124585+00	18	Knife sheath with brass tacks containing knife with wooden handle Bítchiisshe	2	[{"changed": {"fields": ["citation"]}}]	4	3
935	2020-07-30 01:42:26.176128+00	26	Cradle board Ornaments	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
936	2020-07-30 01:52:44.104019+00	26	Cradle board Ornaments	2	[]	4	3
937	2020-07-30 01:54:07.559684+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["provenance"]}}]	4	3
938	2020-07-30 01:54:24.852241+00	79	Huber, John	1	[{"added": {}}]	17	3
939	2020-07-30 01:55:10.120233+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["keywords"]}}]	4	3
940	2020-07-30 01:56:41.597923+00	10	Cup and Pin Game with Red and Black Beads	2	[]	4	3
941	2020-07-30 02:41:15.658063+00	75	Sacred Items 100693 Necklace	2	[{"changed": {"fields": ["provenance"]}}]	4	3
942	2020-07-30 02:44:37.810706+00	76	Sacred Items 114880 Parfleche Case	2	[{"changed": {"fields": ["external_link", "provenance", "private_notes", "place_created", "keywords", "location_of_originals", "private_cataloger", "private_catalog_date"]}}]	4	3
943	2020-07-30 02:46:05.66666+00	76	Sacred Items 114880 Parfleche Case	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
944	2020-07-30 02:49:36.843638+00	75	Sacred Items 100693 Necklace	2	[{"changed": {"fields": ["provenance", "private_cataloger", "private_catalog_date"]}}]	4	3
945	2020-07-30 02:49:50.591679+00	61	Tape #7 Sacred Items #1 214464 Shield Binnaaché	2	[]	4	3
946	2020-07-30 02:50:08.044781+00	62	Tape #7 Sacred Items #1 207719 Shield Binnaaché and 029923 Rattle	2	[{"deleted": {"name": "image", "object": "Image: Tape #7 Sacred Items #1 207719 Shield Binnaach\\u00e9 and 029923 Rattle"}}]	4	3
947	2020-07-30 02:50:15.832105+00	62	Tape #7 Sacred Items #1 207719 Shield Binnaaché and 029923 Rattle	2	[]	4	3
948	2020-07-30 02:52:26.000693+00	63	Sacred Items #1 155342 Shield Binnaaché and Covers	2	[{"changed": {"fields": ["creator"]}}]	4	3
949	2020-07-30 02:54:11.944091+00	64	Sacred Items #1 147472 Shield Binnaaché	2	[{"changed": {"fields": ["keywords", "creator", "location_of_originals"]}}]	4	3
950	2020-07-30 02:54:37.817925+00	66	Tape #7 Rattle	2	[{"deleted": {"name": "image", "object": "Image: Tape #7 Rattle"}}]	4	3
951	2020-07-30 02:54:43.300008+00	66	Tape #7 Rattle	2	[]	4	3
952	2020-07-30 02:55:59.965029+00	67	Sacred Items #1 143601 Shield Bínnaache	2	[{"added": {"name": "video", "object": "Video: Sacred Items #1 143601 Shield Bi\\u0301nnaache"}}]	4	3
953	2020-07-30 02:56:22.06672+00	68	Sacred Items #1 117678 Buffalo Shield and cover Bínnaache	2	[]	4	3
954	2020-07-30 02:56:37.505619+00	69	Sacred Items #1 023261 Shield with cover Binnaaché	2	[]	4	3
955	2020-07-30 02:56:50.487195+00	70	Sacred Items #1 117679 Buffalo Shield and Cover Binnaaché	2	[]	4	3
956	2020-07-30 02:56:55.62171+00	80	Stiles, William F.	1	[{"added": {}}]	17	3
957	2020-07-30 02:57:10.895713+00	71	Sacred Items #1 117681 Shield and Cover Binnaaché	2	[]	4	3
958	2020-07-30 02:57:32.774059+00	72	Sacred Items #1 141576 Shield Binnaaché	2	[]	4	3
959	2020-07-30 02:57:34.269437+00	81	Back rest	1	[{"added": {}}]	17	3
960	2020-07-30 02:57:46.107144+00	73	Sacred Items #1 024426 Shield and Covers	2	[]	4	3
961	2020-07-30 02:58:08.97056+00	33	Back Rest and Tripod (toy/model)	2	[{"changed": {"fields": ["physical_details", "private_notes", "keywords"]}}]	4	3
962	2020-07-30 02:58:22.966836+00	81	Backrest	2	[{"changed": {"fields": ["word"]}}]	17	3
963	2020-07-30 02:58:34.980517+00	74	Sacred Items #1 024426.001 Shield and Covers Binnaaché	2	[]	4	3
964	2020-07-30 02:58:48.895565+00	75	Sacred Items 100693 Necklace	2	[]	4	3
965	2020-07-30 02:59:00.448867+00	76	Sacred Items 114880 Parfleche Case	2	[]	4	3
966	2020-07-30 03:00:17.023873+00	33	Backrest and Tripod/Supprt (toy/model)	2	[{"changed": {"fields": ["name"]}}]	4	3
967	2020-07-30 03:01:50.68857+00	63	Sacred Items #1 155342 Shield Binnaaché and Covers	2	[{"changed": {"fields": ["provenance", "private_cataloger", "private_catalog_date"]}}]	4	3
968	2020-07-30 03:03:00.398321+00	33	Backrest and Tripod/Support (toy/model)	2	[{"changed": {"fields": ["name", "citation", "keywords"]}}]	4	3
969	2020-07-30 03:04:39.9825+00	64	Sacred Items #1 147472 Shield Binnaaché	2	[{"changed": {"fields": ["physical_details", "provenance"]}}]	4	3
970	2020-07-30 03:04:41.824724+00	82	Hickman, Charles H.	1	[{"added": {}}]	17	3
971	2020-07-30 03:04:55.148433+00	83	Fleming, J.T.	1	[{"added": {}}]	17	3
972	2020-07-30 03:04:59.49758+00	36	Cradle board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
973	2020-07-30 03:05:59.475706+00	84	Maynarad, Carolyn	1	[{"added": {}}]	17	3
974	2020-07-30 03:06:02.588776+00	32	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
975	2020-07-30 03:06:50.169864+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
976	2020-07-30 03:07:46.810972+00	85	Rankin, Augusta	1	[{"added": {}}]	17	3
977	2020-07-30 03:07:51.777815+00	30	Beaded Bags	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
978	2020-07-30 03:09:27.153409+00	86	Wildschut, Willem (1883-1955)	1	[{"added": {}}]	17	3
979	2020-07-30 03:09:37.404083+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
980	2020-07-30 03:11:39.836353+00	87	White, John Jay (1860-1923)	1	[{"added": {}}]	17	3
981	2020-07-30 03:12:29.832998+00	88	White, Grace Hoffman (1862-1937	1	[{"added": {}}]	17	3
982	2020-07-30 03:12:36.790432+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"fields": ["provenance", "private_notes", "keywords"]}}]	4	3
983	2020-07-30 03:13:53.299231+00	89	Laron, Irving H. (1889-1973)	1	[{"added": {}}]	17	3
984	2020-07-30 03:13:56.339807+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
985	2020-07-30 03:14:40.517188+00	9	Gun Case and Gun (toy/model)	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
986	2020-07-30 03:15:41.948564+00	9	Gun Case and Gun (toy/model)	2	[]	4	3
987	2020-07-30 03:17:01.681062+00	90	Laidacker, John G.	1	[{"added": {}}]	17	3
988	2020-07-30 03:17:08.168377+00	91	Heye, George	1	[{"added": {}}]	17	3
989	2020-07-30 03:17:16.418234+00	28	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
990	2020-07-30 03:18:15.592539+00	36	Cradle board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
991	2020-07-30 03:18:50.597583+00	32	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
992	2020-07-30 03:19:10.865697+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
993	2020-07-30 03:19:32.108487+00	30	Beaded Bags	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
994	2020-07-30 03:19:59.425027+00	14	Quiver Model/Miniature	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
995	2020-07-30 03:20:25.141563+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
996	2020-07-30 03:20:52.198251+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
997	2020-07-30 03:22:19.015268+00	8	Saddle Bag (toy/model)	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
998	2020-07-30 03:26:10.385928+00	92	Meyer, Fred R. (1874-1939)	1	[{"added": {}}]	17	3
999	2020-07-30 03:26:30.586904+00	93	Meyer, Hattie M. (1886-1971)	1	[{"added": {}}]	17	3
1000	2020-07-30 03:26:38.519947+00	15	Game Hoops (minature)	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
1001	2020-07-30 03:27:40.369469+00	34	Cradle Board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
1002	2020-07-30 03:28:59.075472+00	18	Knife sheath with brass tacks containing knife with wooden handle Bítchiisshe	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
1003	2020-07-30 03:29:08.284191+00	61	Tape #7 Sacred Items #1 214464 Shield Binnaaché	2	[{"changed": {"fields": ["creator"]}}]	4	3
1004	2020-07-30 03:30:00.125246+00	26	Cradle board Ornaments	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
1005	2020-07-30 03:30:48.725461+00	36	Cradle board (toy/model) with Doll Baakáatiche	2	[]	4	3
1006	2020-07-30 03:31:04.498536+00	26	Cradle board Ornaments	2	[]	4	3
1007	2020-07-30 03:33:37.002393+00	13	Cradle Board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["name", "private_notes", "citation", "keywords"]}}]	4	3
1008	2020-07-30 03:34:32.422044+00	33	Backrest and Tripod/Support (toy/model)	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
1009	2020-07-30 03:41:02.841313+00	94	Vernon, David T. (1900-1973)	1	[{"added": {}}]	17	3
1010	2020-07-30 03:44:32.007937+00	95	Venetian glass beads	1	[{"added": {}}]	17	3
1011	2020-07-30 03:44:40.316706+00	96	Necklace	1	[{"added": {}}]	17	3
1012	2020-07-30 03:44:48.176176+00	97	Jewelry	1	[{"added": {}}]	17	3
1013	2020-07-30 03:45:16.796833+00	17	String of Venetian Glass Beads Necklace Áapii	2	[{"changed": {"fields": ["name", "private_notes", "citation", "keywords"]}}]	4	3
1014	2020-07-30 03:46:56.09887+00	98	Kills Good (Apsáalooke scout)	1	[{"added": {}}]	17	3
1015	2020-07-30 03:47:48.989682+00	16	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
1016	2020-07-30 03:49:09.745848+00	99	Chandler, Milford G. (1889-1981	1	[{"added": {}}]	17	3
1017	2020-07-30 03:49:13.161525+00	35	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["private_notes", "keywords"]}}]	4	3
1018	2020-07-30 14:45:12.029341+00	8	Mike Bull	1	[{"added": {}}]	18	3
1019	2020-07-30 14:45:29.49536+00	8	Bull, Mike	2	[{"changed": {"fields": ["name"]}}]	18	3
1020	2020-07-30 21:24:23.915093+00	2	Bill Yellowtail photographs, 1960s-2000	2	[{"changed": {"fields": ["title", "description", "dates", "provenance", "citation", "access_notes_or_rights_and_reproduction"]}}]	3	3
1021	2020-07-31 00:06:50.545406+00	1	Yellowtail, Bill	2	[{"changed": {"fields": ["contact"]}}]	18	3
1022	2020-07-31 00:07:25.982869+00	2	Bill Yellowtail photographs, 1960s-2000	2	[{"changed": {"fields": ["geographical_location"]}}]	3	3
1023	2020-07-31 00:08:18.317821+00	56	490.JPG	3		4	3
1024	2020-07-31 00:10:56.924267+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["name", "citation"]}}]	4	3
1025	2020-07-31 00:14:46.229713+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["description", "access_notes_or_rights_and_reproduction", "provenance"]}}]	4	3
1026	2020-07-31 00:15:01.077568+00	2	Bill Yellowtail photographs, 1960s-2000	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	3	3
1027	2020-07-31 00:25:49.302072+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["other_forms"]}}, {"changed": {"name": "narrative", "object": "Narrative: Meat for the Kettle, ca. 1966", "fields": ["content"]}}]	4	3
1028	2020-07-31 00:26:24.389168+00	100	Iichiílikaashe	1	[{"added": {}}]	17	3
1029	2020-07-31 00:27:44.311589+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["keywords"]}}, {"changed": {"name": "narrative", "object": "Narrative: Meat for the Kettle, ca. 1966", "fields": ["content"]}}]	4	3
1030	2020-07-31 00:27:53.850808+00	101	Elk	1	[{"added": {}}]	17	3
1031	2020-07-31 00:28:12.654913+00	102	1960s	1	[{"added": {}}]	17	3
1032	2020-07-31 00:28:22.422077+00	103	Meat	1	[{"added": {}}]	17	3
1033	2020-07-31 00:29:37.480042+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1034	2020-07-31 00:30:46.254+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["citation", "creator"]}}]	4	3
1035	2020-07-31 00:40:55.718664+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["description"]}}]	4	3
1036	2020-07-31 00:41:32.333042+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
1037	2020-07-31 00:41:55.222969+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["other_forms"]}}]	4	3
1038	2020-07-31 00:43:48.642979+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction", "provenance", "citation"]}}]	4	3
1039	2020-07-31 00:44:18.711424+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["citation"]}}]	4	3
1040	2020-07-31 00:49:25.36078+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Spring cow camp, ca. 1964", "fields": ["content"]}}, {"deleted": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Spring cow camp, ca. 1964"}}]	4	3
1041	2020-07-31 00:49:47.106903+00	1	Yellowtail, Bill	2	[]	18	3
1042	2020-07-31 00:55:37.150492+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["description"]}}, {"changed": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Spring cow camp, ca. 1964", "fields": ["content"]}}]	4	3
1043	2020-07-31 00:56:24.25211+00	15	Powers, Jane (1921-1988)	2	[{"changed": {"fields": ["word"]}}]	17	3
1044	2020-07-31 00:56:52.556273+00	14	Yellowtail, Bill, Sr. (1914-82)	2	[{"changed": {"fields": ["word"]}}]	17	3
1045	2020-07-31 00:57:10.818129+00	104	Bear	1	[{"added": {}}]	17	3
1046	2020-07-31 00:58:18.441946+00	36	Yellowtail, Bill, Jr. (b. 1948)	2	[{"changed": {"fields": ["word"]}}]	17	3
1047	2020-07-31 00:59:59.620401+00	105	Teepee Pole Springs	1	[{"added": {}}]	17	3
1048	2020-07-31 01:00:04.934558+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1049	2020-07-31 01:00:46.907263+00	106	Campfire	1	[{"added": {}}]	17	3
1050	2020-07-31 01:00:53.980312+00	107	Tents	1	[{"added": {}}]	17	3
1051	2020-07-31 01:03:54.144538+00	108	Crow Tribal grazing permit	1	[{"added": {}}]	17	3
1052	2020-07-31 01:04:05.496447+00	109	grazing permits	1	[{"added": {}}]	17	3
1053	2020-07-31 01:04:37.876999+00	110	Cowgirls	1	[{"added": {}}]	17	3
1054	2020-07-31 01:04:46.867752+00	111	Cowhands	1	[{"added": {}}]	17	3
1055	2020-07-31 01:05:13.525182+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1056	2020-07-31 01:05:53.956488+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[]	4	3
1057	2020-07-31 01:54:46.563283+00	42	101.JPG	2	[{"changed": {"fields": ["other_forms", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction"]}}]	4	3
1058	2020-07-31 01:58:03.763659+00	42	Winter Diversion, ca. 1972.	2	[{"changed": {"fields": ["name", "description", "provenance", "citation", "place_created", "keywords", "creator"]}}]	4	3
1059	2020-07-31 01:58:40.814125+00	112	Winter	1	[{"added": {}}]	17	3
1060	2020-07-31 01:58:54.800366+00	113	Toboggans	1	[{"added": {}}]	17	3
1061	2020-07-31 01:59:24.999096+00	114	Sledding	1	[{"added": {}}]	17	3
1062	2020-07-31 01:59:28.829015+00	42	Winter Diversion, ca. 1972.	2	[{"changed": {"fields": ["citation", "keywords"]}}]	4	3
1063	2020-07-31 02:00:34.098971+00	42	Winter Diversion, ca. 1972.	2	[{"added": {"name": "narrative", "object": "Narrative: Winter Diversion, ca. 1972."}}]	4	3
1064	2020-07-31 02:00:41.887823+00	115	Snow	1	[{"added": {}}]	17	3
1065	2020-07-31 02:00:45.628063+00	42	Winter Diversion, ca. 1972.	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1066	2020-07-31 02:29:52.156385+00	42	Winter Diversion, ca. 1972.	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
1067	2020-07-31 02:30:11.355172+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["culture_or_community"]}}]	4	3
1068	2020-07-31 02:31:02.006097+00	42	Winter Diversion, ca. 1972	2	[{"changed": {"fields": ["name"]}}]	4	3
1069	2020-08-02 00:21:01.795778+00	64	Sacred Items #1 147472 Shield Binnaaché	2	[]	4	3
1070	2020-08-02 00:21:24.65723+00	27	Needle Case Biichkawatshúaisshe	3		4	3
1071	2020-08-02 00:22:01.694694+00	14	Quiver (model/miniature)	2	[{"changed": {"fields": ["name"]}}]	4	3
1072	2020-08-02 00:24:15.412549+00	84	Maynard, Carolyn	2	[{"changed": {"fields": ["word"]}}]	17	3
1073	2020-08-02 00:27:29.111557+00	116	Lenders, Emil W. (1864-1934)	1	[{"added": {}}]	17	3
1074	2020-08-02 00:27:32.190731+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1075	2020-08-02 00:30:37.668101+00	117	DeLOng, Lillian A.	1	[{"added": {}}]	17	3
1076	2020-08-02 00:30:40.747441+00	34	Cradle Board (toy/model) Baakáatiche	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1077	2020-08-02 00:32:25.994532+00	118	Ties-Her-Knees	1	[{"added": {}}]	17	3
1078	2020-08-02 00:32:29.089157+00	13	Cradle Board (toy/model) with Doll Baakáatiche	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1079	2020-08-02 00:39:26.953034+00	31	Saddle and Saddle cloth (toy/model)	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1080	2020-08-02 00:40:32.122064+00	85	Rankin, Augusta Mrs.	2	[{"changed": {"fields": ["word"]}}]	17	3
1081	2020-08-02 00:41:42.61962+00	117	DeLong, Lillian A.	2	[{"changed": {"fields": ["word"]}}]	17	3
1082	2020-08-02 00:43:28.018071+00	119	Borein, Edward (1873-1945)	1	[{"added": {}}]	17	3
1083	2020-08-02 00:43:46.404624+00	120	Borein, Lucille E. (1882-1967)	1	[{"added": {}}]	17	3
1084	2020-08-02 00:43:52.334405+00	18	Knife sheath with brass tacks containing knife with wooden handle Bítchiisshe	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1085	2020-08-02 00:45:19.993551+00	118	Ties-Her-Knees  (Apsáalooke)	2	[{"changed": {"fields": ["word"]}}]	17	3
1086	2020-08-02 17:40:54.734148+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
1087	2020-08-02 17:43:02.341855+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"name": "video", "object": "Video: Cradle board (toy/model) Baak\\u00e1atiche", "fields": ["link"]}}]	4	3
1088	2020-08-02 17:43:14.975265+00	19	Cradle board (toy/model) Baakáatiche	2	[]	4	3
1089	2020-08-02 21:05:41.491582+00	75	Sacred Items 100693 Necklace	3		4	3
1090	2020-08-03 13:19:33.051878+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"name": "video", "object": "Video: Bull Elk Shield with feathers Binnaach\\u00e9", "fields": ["link"]}}]	4	3
1091	2020-08-03 13:55:27.980213+00	64	Bull Elk Shield with feathers Binnaaché	2	[]	4	3
1092	2020-08-03 18:05:19.180786+00	67	Shield Bínnaache	2	[{"changed": {"fields": ["name"]}}]	4	3
1093	2020-08-03 18:05:28.542089+00	68	Buffalo Shield and cover Bínnaache	2	[{"changed": {"fields": ["name"]}}]	4	3
1094	2020-08-03 18:05:40.777332+00	69	Shield with cover Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1095	2020-08-03 18:05:48.026096+00	70	Buffalo Shield and Cover Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1096	2020-08-03 18:05:55.472477+00	71	Shield and Cover Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1097	2020-08-03 18:06:03.030319+00	72	Shield Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1098	2020-08-03 18:06:13.389943+00	73	Shield and Covers	2	[{"changed": {"fields": ["name"]}}]	4	3
1099	2020-08-03 18:06:20.022668+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1100	2020-08-03 18:06:31.862277+00	76	Parfleche Case	2	[{"changed": {"fields": ["name"]}}]	4	3
1101	2020-08-03 18:06:39.706169+00	66	Rattle	2	[{"changed": {"fields": ["name"]}}]	4	3
1102	2020-08-03 18:06:54.779304+00	61	Shield Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1103	2020-08-03 18:07:07.898862+00	62	Shield Binnaaché and Rattle	2	[{"changed": {"fields": ["name"]}}]	4	3
1104	2020-08-03 18:07:20.361086+00	63	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1105	2020-08-03 18:07:30.987325+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1106	2020-08-03 18:07:52.512885+00	68	Buffalo Shield and Cover Bínnaache	2	[{"changed": {"fields": ["name"]}}]	4	3
1107	2020-08-04 00:36:05.795275+00	77	001036000 Drum CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: 001036000 Drum CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}, {"added": {"name": "narrative", "object": "Narrative: 001036000 Drum CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}]	4	3
1108	2020-08-04 00:48:45.380864+00	78	001819000 Hair Ornament CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: 001819000 Hair Ornament CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}, {"added": {"name": "narrative", "object": "Narrative: 001819000 Hair Ornament CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}]	4	3
1109	2020-08-04 00:49:14.681306+00	77	001036000 Drum CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["citation"]}}]	4	3
1110	2020-08-04 00:49:40.062427+00	78	001819000 Hair Ornament CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1111	2020-08-04 01:10:02.125303+00	79	002258000 Belt CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: 002258000 Belt CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}, {"added": {"name": "narrative", "object": "Narrative: 002258000 Belt CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}]	4	3
1112	2020-08-04 01:10:33.321523+00	79	002258000 Belt CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1113	2020-08-04 01:20:40.786216+00	62	Shield Binnaaché and Rattle	2	[]	4	3
1114	2020-08-04 01:20:50.183935+00	80	004696000 Head Band CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: 004696000 Head Band CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}, {"added": {"name": "narrative", "object": "Narrative: 004696000 Head Band CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}]	4	3
1115	2020-08-04 01:21:29.744358+00	80	004696000 Head Band CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1116	2020-08-04 01:33:02.799075+00	80	004696000 Head Band CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
1117	2020-08-04 01:42:13.380127+00	82	006079000 Bow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: 006079000 Bow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}, {"added": {"name": "narrative", "object": "Narrative: 006079000 Bow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}]	4	3
1118	2020-08-04 01:42:52.388432+00	82	006079000 Bow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1119	2020-08-04 01:43:07.323218+00	82	006079000 Bow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1120	2020-08-04 01:51:44.271893+00	83	006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: 006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}, {"added": {"name": "narrative", "object": "Narrative: 006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}]	4	3
1121	2020-08-04 01:53:22.403617+00	83	006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1174	2020-08-04 18:44:10.059902+00	47	Meat for the Kettle, ca. 1966	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number"]}}]	4	3
1122	2020-08-04 02:04:51.022919+00	84	008786000 Grave Stick CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: 008786000 Grave Stick CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}, {"added": {"name": "narrative", "object": "Narrative: 008786000 Grave Stick CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}]	4	3
1123	2020-08-04 02:06:09.174465+00	84	008786000 Grave Stick CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["citation"]}}]	4	3
1124	2020-08-04 02:07:12.105335+00	62	Shield Binnaaché and Rattle	2	[]	4	3
1125	2020-08-04 02:14:55.392223+00	85	008776000 Parfleche CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	1	[{"added": {}}, {"added": {"name": "video", "object": "Video: 008776000 Parfleche CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}, {"added": {"name": "narrative", "object": "Narrative: 008776000 Parfleche CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim"}}]	4	3
1126	2020-08-04 02:15:37.614416+00	85	008776000 Parfleche CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1127	2020-08-04 14:53:28.73097+00	86	Brenda on Don	1	[{"added": {}}]	4	3
1128	2020-08-04 14:53:57.571035+00	87	Bring in a New Pair	1	[{"added": {}}]	4	3
1129	2020-08-04 14:57:21.10598+00	88	Card Shark	1	[{"added": {}}]	4	3
1130	2020-08-04 14:58:04.766022+00	89	Chopper Crew at Barry's Landing	1	[{"added": {}}]	4	3
1131	2020-08-04 14:58:29.908696+00	90	Cooling Out a Pie	1	[{"added": {}}]	4	3
1132	2020-08-04 14:59:06.309583+00	91	Cowboy checkers	1	[{"added": {}}]	4	3
1133	2020-08-04 14:59:34.696129+00	92	Dad and Kim on Tractor	1	[{"added": {}}]	4	3
1134	2020-08-04 15:00:19.899174+00	93	Dad & Dale at Campfire	1	[{"added": {}}]	4	3
1135	2020-08-04 15:01:19.906057+00	93	Dad & Dale at Campfire	2	[{"changed": {"fields": ["creator"]}}, {"added": {"name": "image", "object": "Image: Dad & Dale at Campfire"}}]	4	3
1136	2020-08-04 15:01:50.666473+00	92	Dad and Kim on Tractor	2	[{"added": {"name": "image", "object": "Image: Dad and Kim on Tractor"}}]	4	3
1137	2020-08-04 15:02:17.356702+00	91	Cowboy checkers	2	[{"added": {"name": "image", "object": "Image: Cowboy checkers"}}]	4	3
1138	2020-08-04 15:02:33.722186+00	90	Cooling Out a Pie	2	[{"added": {"name": "image", "object": "Image: Cooling Out a Pie"}}]	4	3
1139	2020-08-04 15:02:58.053547+00	89	Chopper Crew at Barry's Landing	2	[{"added": {"name": "image", "object": "Image: Chopper Crew at Barry's Landing"}}]	4	3
1140	2020-08-04 15:03:28.61459+00	88	Card Shark	2	[{"added": {"name": "image", "object": "Image: Card Shark"}}]	4	3
1141	2020-08-04 15:03:52.510164+00	87	Bringing in a New Pair	2	[{"changed": {"fields": ["name"]}}, {"added": {"name": "image", "object": "Image: Bringing in a New Pair"}}]	4	3
1142	2020-08-04 15:04:20.194457+00	86	Brenda on Don	2	[{"added": {"name": "image", "object": "Image: Brenda on Don"}}]	4	3
1143	2020-08-04 15:05:47.808641+00	121	Ranchers, women	1	[{"added": {}}]	17	3
1144	2020-08-04 15:06:30.805855+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1145	2020-08-04 15:08:45.518064+00	122	1970s	1	[{"added": {}}]	17	3
1146	2020-08-04 15:08:48.694515+00	123	Erastus T. Tefft	1	[{"added": {}}]	17	3
1147	2020-08-04 15:09:09.879317+00	42	Winter Diversion, ca. 1972	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1148	2020-08-04 15:10:49.213748+00	82	006079000 Bow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1149	2020-08-04 15:13:19.809294+00	124	Tractors	1	[{"added": {}}]	17	3
1150	2020-08-04 15:14:19.583663+00	125	School	1	[{"added": {}}]	17	3
1151	2020-08-04 15:14:22.677249+00	37	Snowbound, ca. 1970	2	[{"changed": {"fields": ["name", "description", "culture_or_community", "other_forms", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "provenance", "citation", "keywords", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Snowbound, ca. 1970"}}]	4	3
1152	2020-08-04 15:27:53.553895+00	3	Branding day at FO Corrals, ca. 1965	2	[{"changed": {"fields": ["name", "description", "access_notes_or_rights_and_reproduction", "provenance", "citation", "keywords"]}}]	4	3
1153	2020-08-04 15:42:46.450208+00	3	Branding day at FO Corrals, ca. 1965	2	[{"added": {"name": "narrative", "object": "Narrative: Branding day at FO Corrals, ca. 1965"}}]	4	3
1154	2020-08-04 15:44:42.996672+00	3	Branding day at FO Corrals, ca. 1965	2	[{"changed": {"name": "narrative", "object": "Narrative: Branding day at FO Corrals, ca. 1965", "fields": ["author"]}}]	4	3
1155	2020-08-04 15:53:11.309053+00	3	Branding day at FO Corrals, ca. 1965	2	[{"changed": {"fields": ["citation"]}}]	4	3
1156	2020-08-04 16:14:57.744368+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1157	2020-08-04 16:32:11.593683+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1158	2020-08-04 16:36:35.65112+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["citation"]}}]	4	3
1159	2020-08-04 16:38:18.892373+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"name": "narrative", "object": "Narrative: Bull Elk Shield with feathers Binnaach\\u00e9", "fields": ["content"]}}]	4	3
1160	2020-08-04 16:38:56.282905+00	9	Old Bull, Tilton	1	[{"added": {}}]	18	3
1161	2020-08-04 16:43:39.371064+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
1162	2020-08-04 16:46:21.622484+00	64	Bull Elk Shield with feathers Binnaaché	2	[]	4	3
1163	2020-08-04 18:26:41.946788+00	126	Shield	1	[{"added": {}}]	17	3
1164	2020-08-04 18:26:57.867084+00	127	Bull Elk	1	[{"added": {}}]	17	3
1165	2020-08-04 18:27:20.724414+00	128	Crow language	1	[{"added": {}}]	17	3
1166	2020-08-04 18:27:28.010375+00	129	Feathers	1	[{"added": {}}]	17	3
1167	2020-08-04 18:27:35.682861+00	130	Video	1	[{"added": {}}]	17	3
1168	2020-08-04 18:28:15.18488+00	131	Allen, Jirah Isham (1839-1929)	1	[{"added": {}}]	17	3
1169	2020-08-04 18:29:06.699622+00	10	Bull Elk (Apsáalooke)	1	[{"added": {}}]	18	3
1170	2020-08-04 18:29:29.887099+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["description", "access_notes_or_rights_and_reproduction", "provenance", "citation", "place_created", "keywords", "creator"]}}, {"changed": {"name": "narrative", "object": "Narrative: Bull Elk Shield with feathers Binnaach\\u00e9", "fields": ["content"]}}]	4	3
1171	2020-08-04 18:32:52.254308+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
1172	2020-08-04 18:33:18.222475+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"name": "narrative", "object": "Narrative: Bull Elk Shield with feathers Binnaach\\u00e9", "fields": ["content"]}}]	4	3
1173	2020-08-04 18:35:03.159974+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1325	2020-08-11 14:44:21.01137+00	73	Shield and Two Covers	2	[{"changed": {"fields": ["description"]}}]	4	3
1175	2020-08-04 18:45:21.532477+00	47	Meat for the Kettle, ca. 1966	2	[{"added": {"name": "narrative", "object": "Narrative: Meat for the Kettle, ca. 1966"}}]	4	3
1176	2020-08-04 18:47:49.189036+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["physical_details", "catalog_number"]}}, {"added": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Spring cow camp, ca. 1964"}}, {"changed": {"name": "narrative", "object": "Narrative: Campfire at Teepee Pole Spring cow camp, ca. 1964", "fields": ["author"]}}]	4	3
1177	2020-08-04 18:49:53.455025+00	42	Winter Diversion, ca. 1972	2	[{"changed": {"fields": ["physical_details", "catalog_number", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"added": {"name": "narrative", "object": "Narrative: Winter Diversion, ca. 1972"}}]	4	3
1178	2020-08-04 18:51:54.971212+00	37	Snowbound, ca. 1970	2	[{"changed": {"fields": ["description", "physical_details", "catalog_number", "place_created", "keywords", "creator", "location_of_originals"]}}, {"added": {"name": "narrative", "object": "Narrative: Snowbound, ca. 1970"}}]	4	3
1179	2020-08-04 18:52:38.991901+00	51	456.JPG	3		4	3
1180	2020-08-04 18:53:16.436215+00	93	Dad & Dale at Campfire	3		4	3
1181	2020-08-04 18:56:46.280251+00	132	Anglos	1	[{"added": {}}]	17	3
1182	2020-08-04 18:58:00.838398+00	94	Dad & Dale at Campfire	1	[{"added": {}}]	4	3
1183	2020-08-04 18:59:36.237126+00	94	Dad & Dale at Campfire	2	[{"added": {"name": "image", "object": "Image: Dad & Dale at Campfire"}}]	4	3
1184	2020-08-04 19:02:10.12115+00	92	Dad and Kim on Tractor	2	[{"changed": {"fields": ["culture_or_community", "other_forms", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "place_created", "keywords", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}]	4	3
1185	2020-08-04 19:05:49.538345+00	3	Branding day at FO Corrals, ca. 1965	2	[{"changed": {"fields": ["culture_or_community", "physical_details", "catalog_number", "keywords"]}}, {"changed": {"name": "narrative", "object": "Narrative: Branding day at FO Corrals, ca. 1965", "fields": ["content"]}}]	4	3
1186	2020-08-04 19:09:41.571087+00	133	Corrals	1	[{"added": {}}]	17	3
1187	2020-08-04 19:11:38.114603+00	134	Horses	1	[{"added": {}}]	17	3
1188	2020-08-04 19:12:12.978782+00	135	Yellowtail, Carson (b. 1959)	1	[{"added": {}}]	17	3
1189	2020-08-04 19:12:27.472207+00	3	Branding day at FO Corrals, ca. 1965	2	[{"changed": {"fields": ["keywords"]}}, {"changed": {"name": "narrative", "object": "Narrative: Branding day at FO Corrals, ca. 1965", "fields": ["content"]}}]	4	3
1190	2020-08-04 19:13:05.29493+00	44	404.JPG	3		4	3
1191	2020-08-04 19:19:15.697768+00	136	Cattle Drives	1	[{"added": {}}]	17	3
1192	2020-08-04 19:19:24.767822+00	137	Landscape	1	[{"added": {}}]	17	3
1193	2020-08-04 19:21:32.029013+00	55	Trail Drive to Market, ca. 1960	2	[{"changed": {"fields": ["description", "culture_or_community", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "citation", "keywords"]}}, {"added": {"name": "narrative", "object": "Narrative: Trail Drive to Market, ca. 1960"}}, {"changed": {"name": "narrative", "object": "Narrative: Trail Drive to Market, ca. 1960", "fields": ["author"]}}]	4	3
1194	2020-08-04 19:22:17.77736+00	55	Trail Drive to Market, ca. 1960	2	[]	4	3
1195	2020-08-04 19:26:00.599472+00	48	Larry Dean Yellowtail ready to saddle up, ca. 1968	2	[{"changed": {"fields": ["description", "culture_or_community", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "citation"]}}]	4	3
1196	2020-08-04 19:30:11.4887+00	138	Cow camps	1	[{"added": {}}]	17	3
1197	2020-08-04 19:30:27.003987+00	139	Yellowtail, Larry Dean	1	[{"added": {}}]	17	3
1198	2020-08-04 19:30:40.384698+00	48	Larry Dean Yellowtail ready to saddle up, ca. 1968	2	[{"changed": {"fields": ["keywords"]}}, {"added": {"name": "narrative", "object": "Narrative: Larry Dean Yellowtail ready to saddle up, ca. 1968"}}, {"changed": {"name": "narrative", "object": "Narrative: Larry Dean Yellowtail ready to saddle up, ca. 1968", "fields": ["content", "author"]}}]	4	3
1199	2020-08-04 19:31:08.893933+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1200	2020-08-04 19:31:52.467492+00	3	Branding day at FO Corrals, ca. 1965	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1201	2020-08-04 19:32:16.274685+00	48	Larry Dean Yellowtail ready to saddle up, ca. 1968	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1202	2020-08-04 19:33:42.85397+00	38	Carson Yellowtail Playing in Beaver Pond, ca. 1960	2	[{"changed": {"fields": ["creator", "location_of_originals"]}}, {"added": {"name": "narrative", "object": "Narrative: Carson Yellowtail Playing in Beaver Pond, ca. 1960"}}, {"changed": {"name": "narrative", "object": "Narrative: Carson Yellowtail Playing in Beaver Pond, ca. 1960", "fields": ["author"]}}]	4	3
1203	2020-08-04 19:36:29.435111+00	140	ponds	1	[{"added": {}}]	17	3
1204	2020-08-04 19:43:47.441791+00	38	Carson Yellowtail Playing in Beaver Pond, ca. 1960	2	[{"changed": {"fields": ["description", "culture_or_community", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "citation", "keywords"]}}]	4	3
1205	2020-08-04 19:44:41.827918+00	38	Carson Yellowtail Playing in Beaver Pond, ca. 1960	2	[{"changed": {"fields": ["citation"]}}]	4	3
1206	2020-08-04 20:26:05.055383+00	38	Carson Yellowtail Playing in Beaver Pond, ca. 1960	2	[{"changed": {"fields": ["description", "citation"]}}]	4	3
1207	2020-08-04 20:26:25.763892+00	135	Yellowtail, Carson (b. 1951)	2	[{"changed": {"fields": ["word"]}}]	17	3
1208	2020-08-04 20:31:17.306401+00	53	Branding Day at FO Corrals (Close-up), ca. 1965	2	[{"changed": {"fields": ["name", "description", "culture_or_community", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "citation", "place_created"]}}]	4	3
1209	2020-08-04 20:31:51.682704+00	139	Yellowtail, Larry Dean (b.1954)	2	[{"changed": {"fields": ["word"]}}]	17	3
1210	2020-08-04 20:33:10.289511+00	141	Lodge Grass Valley, MT	1	[{"added": {}}]	17	3
1211	2020-08-04 20:34:44.053683+00	53	Branding Day at FO Corrals (Close-up), ca. 1965	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1212	2020-08-04 20:35:40.229044+00	142	Branding iron	1	[{"added": {}}]	17	3
1213	2020-08-04 20:36:37.246289+00	143	Yellowtail, Jim (b. 1955)	1	[{"added": {}}]	17	3
1214	2020-08-04 20:37:04.268421+00	144	Yellowtail, Bruce (b. c1930)	1	[{"added": {}}]	17	3
1215	2020-08-04 20:37:32.513884+00	53	Branding Day at FO Corrals (Close-up), ca. 1965	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1216	2020-08-04 20:38:13.438119+00	53	Branding Day at FO Corrals (Close-up), ca. 1965	2	[{"added": {"name": "narrative", "object": "Narrative: Branding Day at FO Corrals (Close-up), ca. 1965"}}, {"changed": {"name": "narrative", "object": "Narrative: Branding Day at FO Corrals (Close-up), ca. 1965", "fields": ["author"]}}]	4	3
1217	2020-08-04 20:38:35.536131+00	22	Hammond, Curtis (b. c1905)	2	[{"changed": {"fields": ["word"]}}]	17	3
1327	2020-08-11 14:45:56.375312+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1218	2020-08-04 20:46:40.394938+00	60	Doctoring on the open range, 1970	2	[{"changed": {"fields": ["name", "description", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "citation"]}}, {"added": {"name": "narrative", "object": "Narrative: Doctoring on the open range, 1970"}}, {"changed": {"name": "narrative", "object": "Narrative: Doctoring on the open range, 1970", "fields": ["content", "author"]}}]	4	3
1219	2020-08-04 20:50:45.749295+00	145	Spooner, Gary	1	[{"added": {}}]	17	3
1220	2020-08-04 20:50:52.115581+00	146	animal medicine	1	[{"added": {}}]	17	3
1221	2020-08-04 20:50:58.594966+00	147	lariat rope	1	[{"added": {}}]	17	3
1222	2020-08-04 20:51:02.503041+00	60	Doctoring on the open range, 1970	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1223	2020-08-04 20:51:45.342399+00	49	449.JPG	3		4	3
1224	2020-08-04 20:54:12.058184+00	94	Dad & Dale at Campfire, ca. 1968	2	[{"changed": {"fields": ["name", "description"]}}, {"added": {"name": "narrative", "object": "Narrative: Dad & Dale at Campfire, ca. 1968"}}, {"added": {"name": "narrative", "object": "Narrative: Dad & Dale at Campfire, ca. 1968"}}]	4	3
1225	2020-08-04 20:57:06.863915+00	148	Gibson, Dale	1	[{"added": {}}]	17	3
1226	2020-08-04 20:57:20.068079+00	149	Storytelling	1	[{"added": {}}]	17	3
1227	2020-08-04 20:58:21.511948+00	150	Coffee	1	[{"added": {}}]	17	3
1228	2020-08-04 20:58:24.567502+00	94	Dad & Dale at Campfire, ca. 1968	2	[{"changed": {"fields": ["other_forms", "date_of_creation", "provenance", "citation", "keywords"]}}]	4	3
1229	2020-08-04 21:00:50.948189+00	95	Dad and Granny at Christmas	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Dad and Granny at Christmas"}}]	4	3
1230	2020-08-04 21:02:00.611576+00	96	Dad and Kimberly in Kitchen	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Dad and Kimberly in Kitchen"}}]	4	3
1231	2020-08-08 19:10:49.846951+00	64	Bull Elk Shield with feathers Binnaaché	2	[{"changed": {"fields": ["cover_image", "keywords"]}}]	4	3
1232	2020-08-08 19:13:04.924539+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1233	2020-08-08 19:14:07.386554+00	74	Shield and Covers Binnaaché	2	[]	4	3
1234	2020-08-08 19:14:51.419786+00	73	Shield and Covers	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1235	2020-08-08 19:15:03.408666+00	71	Shield and Cover Binnaaché	2	[]	4	3
1236	2020-08-08 19:15:11.903298+00	71	Shield and Cover Binnaaché	2	[]	4	3
1237	2020-08-08 19:16:20.174174+00	72	Shield Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1238	2020-08-08 19:16:51.099985+00	71	Shield and Cover Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1239	2020-08-08 19:17:22.686445+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1240	2020-08-08 19:17:56.170612+00	68	Buffalo Shield and Cover Bínnaache	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1241	2020-08-08 19:18:15.80178+00	71	Shield and Cover Binnaaché	2	[]	4	3
1242	2020-08-08 19:18:32.888027+00	67	Shield Bínnaache	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1243	2020-08-08 19:18:57.23968+00	66	Rattle	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1244	2020-08-08 19:19:04.590792+00	62	Shield Binnaaché and Rattle	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1245	2020-08-08 19:19:38.364738+00	64	Bull Elk Shield with feathers Binnaaché	2	[]	4	3
1246	2020-08-08 19:20:14.604272+00	63	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}, {"changed": {"name": "narrative", "object": "Narrative: Shield and Covers Binnaach\\u00e9", "fields": ["content"]}}]	4	3
1247	2020-08-08 19:20:54.443479+00	62	Shield Binnaaché and Rattle	2	[]	4	3
1248	2020-08-08 19:21:09.113535+00	1	Campfire at Teepee Pole Spring cow camp, ca. 1964	2	[]	4	3
1249	2020-08-08 19:21:16.566082+00	3	Branding day at FO Corrals, ca. 1965	2	[]	4	3
1250	2020-08-08 19:21:26.44856+00	7	Cup and Pin Game	2	[{"changed": {"name": "narrative", "object": "Narrative: Cup and Pin Game", "fields": ["content"]}}]	4	3
1251	2020-08-08 19:21:36.89213+00	8	Saddle Bag (toy/model)	2	[{"changed": {"name": "narrative", "object": "Narrative: Saddle Bag (toy/model)", "fields": ["content"]}}]	4	3
1252	2020-08-08 19:21:52.083317+00	9	Gun Case and Gun (toy/model)	2	[{"changed": {"name": "narrative", "object": "Narrative: Gun Case and Gun (toy/model)", "fields": ["content"]}}]	4	3
1253	2020-08-08 19:22:02.808294+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"name": "narrative", "object": "Narrative: Cup and Pin Game with Red and Black Beads", "fields": ["content"]}}]	4	3
1254	2020-08-08 19:22:21.504594+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"name": "narrative", "object": "Narrative: Cup and Pin Game with Black Beads", "fields": ["content"]}}]	4	3
1255	2020-08-08 19:22:32.815584+00	13	Cradle Board (toy/model) with Doll Baakáatiche	2	[{"changed": {"name": "narrative", "object": "Narrative: Cradle Board (toy/model) with Doll Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
1256	2020-08-08 19:22:45.637176+00	14	Quiver (model/miniature)	2	[{"changed": {"name": "narrative", "object": "Narrative: Quiver (model/miniature)", "fields": ["content"]}}]	4	3
1257	2020-08-08 19:22:58.826971+00	15	Game Hoops (minature)	2	[{"changed": {"name": "narrative", "object": "Narrative: Game Hoops (minature)", "fields": ["content"]}}]	4	3
1258	2020-08-08 19:23:15.810097+00	16	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"name": "narrative", "object": "Narrative: Cradle board (toy/model) Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
1259	2020-08-08 19:23:26.822666+00	17	String of Venetian Glass Beads Necklace Áapii	2	[]	4	3
1260	2020-08-08 19:23:41.840179+00	18	Knife sheath with brass tacks containing knife with wooden handle Bítchiisshe	2	[]	4	3
1261	2020-08-08 19:23:52.188759+00	18	Knife sheath with brass tacks containing knife with wooden handle Bítchiisshe	2	[]	4	3
1262	2020-08-08 19:24:10.787399+00	19	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"name": "narrative", "object": "Narrative: Cradle board (toy/model) Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
1263	2020-08-08 19:24:23.762414+00	26	Cradle board Ornaments	2	[{"changed": {"name": "narrative", "object": "Narrative: Cradle board Ornaments", "fields": ["content"]}}]	4	3
1264	2020-08-08 19:24:39.16815+00	28	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"name": "narrative", "object": "Narrative: Cradle board (toy/model) Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
1265	2020-08-08 19:24:59.388199+00	30	Beaded Bags	2	[{"changed": {"name": "narrative", "object": "Narrative: Beaded Bags", "fields": ["content"]}}]	4	3
1266	2020-08-08 19:25:11.914008+00	31	Saddle and Saddle cloth (toy/model)	2	[]	4	3
1267	2020-08-08 19:25:24.783549+00	31	Saddle and Saddle cloth (toy/model)	2	[]	4	3
1268	2020-08-08 19:25:40.416793+00	32	Cradle board (toy/model) Baakáatiche	2	[]	4	3
1269	2020-08-08 19:26:02.528857+00	33	Backrest and Tripod/Support (toy/model)	2	[{"changed": {"name": "narrative", "object": "Narrative: Backrest and Tripod/Support (toy/model)", "fields": ["content"]}}]	4	3
1270	2020-08-08 19:26:41.556179+00	34	Cradle Board (toy/model) Baakáatiche	2	[{"changed": {"name": "narrative", "object": "Narrative: Cradle Board (toy/model) Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
1271	2020-08-08 19:26:58.456559+00	35	Cradle board (toy/model) Baakáatiche	2	[{"changed": {"name": "narrative", "object": "Narrative: Cradle board (toy/model) Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
1272	2020-08-08 19:27:09.666075+00	36	Cradle board (toy/model) with Doll Baakáatiche	2	[{"changed": {"name": "narrative", "object": "Narrative: Cradle board (toy/model) with Doll Baak\\u00e1atiche", "fields": ["content"]}}]	4	3
1273	2020-08-08 19:27:29.716475+00	61	Shield Binnaaché	2	[]	4	3
1274	2020-08-08 19:27:40.652819+00	62	Shield Binnaaché and Rattle	2	[]	4	3
1275	2020-08-08 19:27:47.97807+00	63	Shield and Covers Binnaaché	2	[]	4	3
1276	2020-08-08 19:28:10.765241+00	65	Black Lodge Farm Chapter, 1937	2	[{"changed": {"name": "narrative", "object": "Narrative: Black Lodge Farm Chapter, 1937", "fields": ["content"]}}]	4	3
1277	2020-08-08 19:28:23.203937+00	66	Rattle	2	[{"changed": {"name": "narrative", "object": "Narrative: Rattle", "fields": ["content"]}}]	4	3
1278	2020-08-08 19:28:39.089913+00	67	Shield Bínnaache	2	[{"changed": {"name": "narrative", "object": "Narrative: Shield Bi\\u0301nnaache", "fields": ["content"]}}]	4	3
1279	2020-08-08 19:28:51.617006+00	68	Buffalo Shield and Cover Bínnaache	2	[{"changed": {"name": "narrative", "object": "Narrative: Buffalo Shield and Cover Bi\\u0301nnaache", "fields": ["content"]}}]	4	3
1280	2020-08-08 19:29:06.297862+00	69	Shield with Cover Binnaaché	2	[]	4	3
1281	2020-08-08 19:29:17.876796+00	70	Buffalo Shield and Cover Binnaaché	2	[]	4	3
1282	2020-08-08 19:29:28.728329+00	71	Shield and Cover Binnaaché	2	[]	4	3
1283	2020-08-08 19:29:38.656139+00	72	Shield Binnaaché	2	[]	4	3
1284	2020-08-08 19:29:48.559168+00	72	Shield Binnaaché	2	[]	4	3
1285	2020-08-08 19:30:01.45592+00	73	Shield and Covers	2	[]	4	3
1286	2020-08-08 19:30:12.502224+00	74	Shield and Covers Binnaaché	2	[]	4	3
1287	2020-08-08 19:30:20.280317+00	77	001036000 Drum CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1288	2020-08-08 19:30:27.117344+00	78	001819000 Hair Ornament CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1289	2020-08-08 19:30:35.900877+00	79	002258000 Belt CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1290	2020-08-08 19:30:46.046198+00	80	004696000 Head Band CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1291	2020-08-08 19:35:01.05148+00	85	008776000 Parfleche CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1292	2020-08-10 13:38:32.200934+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1293	2020-08-10 13:39:36.567128+00	62	Buffalo Hide Shield and Cover with Rattle Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1294	2020-08-10 13:40:31.930706+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1295	2020-08-10 13:40:58.171138+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["name"]}}]	4	3
1296	2020-08-10 13:41:42.412417+00	67	Buffalo Hide Shield with Four Covers Bínnaache	2	[{"changed": {"fields": ["name"]}}]	4	3
1297	2020-08-10 13:42:07.327132+00	68	Buffalo Shield and Cover Bínnaache	2	[]	4	3
1298	2020-08-10 13:42:44.803283+00	69	Shield with Cover Binnaaché	2	[]	4	3
1299	2020-08-10 13:43:46.496845+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1300	2020-08-10 13:44:09.047682+00	64	Bull Elk Shield with Feathers Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1301	2020-08-10 13:45:25.398296+00	71	Buffalo Hide Shield and Two Covers with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1302	2020-08-10 13:46:43.223025+00	72	Buffalo Hide Shield and Cover Decorated with Deer Binnaaché	2	[{"changed": {"fields": ["name", "provenance"]}}]	4	3
1303	2020-08-10 13:47:20.743671+00	73	Shield and Two Covers	2	[{"changed": {"fields": ["name"]}}]	4	3
1304	2020-08-10 13:47:34.848807+00	74	Shield and Covers Binnaaché	2	[]	4	3
1305	2020-08-10 13:47:56.674546+00	69	Shield with Cover Binnaaché	2	[]	4	3
1306	2020-08-10 13:48:32.735194+00	73	Shield and Two Covers	2	[]	4	3
1307	2020-08-10 13:51:16.858278+00	76	Parfleche Case	2	[]	4	3
1308	2020-08-11 14:10:33.622284+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1309	2020-08-11 14:14:40.842453+00	62	Buffalo Hide Shield and Cover with Rattle Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1310	2020-08-11 14:17:50.688612+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["description", "physical_details"]}}]	4	3
1311	2020-08-11 14:19:00.095103+00	151	Yellow Brow	1	[{"added": {}}]	17	3
1312	2020-08-11 14:19:28.964343+00	152	William Wildschut	1	[{"added": {}}]	17	3
1313	2020-08-11 14:19:45.257215+00	71	Buffalo Hide Shield and Two Covers with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords"]}}, {"deleted": {"name": "image", "object": "Image: Buffalo Hide Shield and Two Covers with Cloud and Rain Design Binnaach\\u00e9"}}]	4	3
1314	2020-08-11 14:21:39.636822+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["description", "physical_details"]}}]	4	3
1315	2020-08-11 14:24:37.224273+00	62	Buffalo Hide Shield and Cover with Rattle Binnaaché	2	[]	4	3
1316	2020-08-11 14:24:48.352259+00	67	Buffalo Hide Shield with Four Covers Bínnaache	2	[{"changed": {"fields": ["description"]}}]	4	3
1317	2020-08-11 14:26:33.878878+00	68	Buffalo Shield and Cover Bínnaache	2	[{"changed": {"fields": ["description"]}}, {"deleted": {"name": "image", "object": "Image: Buffalo Shield and Cover Bi\\u0301nnaache"}}, {"deleted": {"name": "image", "object": "Image: Buffalo Shield and Cover Bi\\u0301nnaache"}}]	4	3
1318	2020-08-11 14:29:34.60703+00	68	Buffalo Shield and Cover Bínnaache	2	[{"changed": {"fields": ["description"]}}]	4	3
1319	2020-08-11 14:32:07.221025+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1320	2020-08-11 14:35:42.938346+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1321	2020-08-11 14:39:07.391056+00	71	Buffalo Hide Shield and Two Covers with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1322	2020-08-11 14:39:31.328062+00	66	Rawhide Rattle	2	[]	4	3
1323	2020-08-11 14:40:50.575094+00	83	006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["physical_details"]}}]	4	3
1324	2020-08-11 14:42:17.557599+00	72	Buffalo Hide Shield and Cover Decorated with Deer Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1326	2020-08-11 14:45:00.15852+00	73	Shield and Two Covers	2	[]	4	3
1328	2020-08-11 14:46:17.532397+00	73	Shield and Two Covers Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1329	2020-08-11 14:47:54.520421+00	76	Parfleche Case	2	[{"changed": {"fields": ["description"]}}]	4	3
1330	2020-08-11 14:54:56.261313+00	153	Joseph W. Keppler	1	[{"added": {}}]	17	3
1331	2020-08-11 14:55:08.327766+00	154	George Heye	1	[{"added": {}}]	17	3
1332	2020-08-11 14:55:14.034814+00	84	008786000 Grave Stick CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1333	2020-08-11 14:55:24.275605+00	83	006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1334	2020-08-11 14:55:27.429762+00	83	006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1335	2020-08-11 14:56:09.577507+00	82	006079000 Bow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1336	2020-08-11 14:56:27.263018+00	155	Frank M. Covert	1	[{"added": {}}]	17	3
1337	2020-08-11 15:12:31.594301+00	80	004696000 Head Band CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1338	2020-08-11 15:21:36.122584+00	4	Crow Indian Gardeners & Farmers, 1930s	2	[{"changed": {"fields": ["description", "provenance"]}}]	3	3
1339	2020-08-11 15:25:12.160135+00	156	George	1	[{"added": {}}]	17	3
1340	2020-08-11 15:25:41.648391+00	79	002258000 Belt CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1341	2020-08-11 15:25:57.01887+00	78	001819000 Hair Ornament CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1342	2020-08-11 15:27:02.240188+00	77	001036000 Drum CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1343	2020-08-11 15:27:31.167602+00	76	Parfleche Case	2	[{"changed": {"fields": ["keywords"]}}, {"changed": {"name": "narrative", "object": "Narrative: Parfleche Case", "fields": ["content"]}}]	4	3
1344	2020-08-11 15:28:25.942994+00	157	John E. Linde	1	[{"added": {}}]	17	3
1345	2020-08-11 15:29:54.191344+00	158	Kate S. Linde	1	[{"added": {}}]	17	3
1346	2020-08-11 15:30:01.565869+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1347	2020-08-11 15:30:16.355782+00	73	Shield and Two Covers Binnaaché	2	[]	4	3
1348	2020-08-11 15:30:40.215072+00	159	Field Museum of Natural History	1	[{"added": {}}]	17	3
1349	2020-08-11 15:30:46.522153+00	72	Buffalo Hide Shield and Cover Decorated with Deer Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1350	2020-08-11 15:31:13.475121+00	71	Buffalo Hide Shield and Two Covers with Cloud and Rain Design Binnaaché	2	[]	4	3
1351	2020-08-11 15:32:09.948318+00	160	Sits In The Middle	1	[{"added": {}}]	17	3
1352	2020-08-11 15:32:55.018261+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1353	2020-08-11 15:33:34.367737+00	161	Emil W. Lenders	1	[{"added": {}}]	17	3
1354	2020-08-11 15:33:41.703003+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1355	2020-08-11 15:34:08.053651+00	162	Hump	1	[{"added": {}}]	17	3
1356	2020-08-11 15:34:22.530463+00	163	Two Face	1	[{"added": {}}]	17	3
1357	2020-08-11 15:34:28.931909+00	164	Crazy Head	1	[{"added": {}}]	17	3
1358	2020-08-11 15:34:44.75633+00	165	Knows His Coups	1	[{"added": {}}]	17	3
1359	2020-08-11 15:34:50.567178+00	68	Buffalo Shield and Cover Bínnaache	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1360	2020-08-11 15:35:41.181829+00	166	Pretty-On-Top	1	[{"added": {}}]	17	3
1361	2020-08-11 15:35:47.656998+00	67	Buffalo Hide Shield with Four Covers Bínnaache	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1362	2020-08-11 15:38:08.528876+00	167	Tilton Old Bull	1	[{"added": {}}]	17	3
1363	2020-08-11 15:38:15.940831+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1364	2020-08-11 15:39:39.15839+00	168	Jirah Isham Allen	1	[{"added": {}}]	17	3
1365	2020-08-11 15:40:34.197885+00	64	Bull Elk Shield with Feathers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1366	2020-08-11 15:41:15.744313+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1367	2020-08-11 15:42:23.696226+00	169	Edward Borein	1	[{"added": {}}]	17	3
1368	2020-08-11 15:42:35.683799+00	170	Lucille E. Borein	1	[{"added": {}}]	17	3
1369	2020-08-11 15:42:46.63922+00	62	Buffalo Hide Shield and Cover with Rattle Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1370	2020-08-11 15:44:32.297349+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["name", "description", "citation"]}}]	4	3
1371	2020-08-11 15:45:46.486269+00	171	Paul J. Warner	1	[{"added": {}}]	17	3
1372	2020-08-11 15:45:51.751201+00	65	Black Lodge Farm Chapter, 1937	2	[{"changed": {"fields": ["description", "other_forms", "physical_details"]}}]	4	3
1373	2020-08-11 15:45:59.733119+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1374	2020-08-11 15:47:27.905033+00	64	Bull Elk Shield with Feathers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1375	2020-08-11 15:48:31.496723+00	168	Jirah Isham Allen	3		17	3
1376	2020-08-11 15:49:07.498148+00	64	Bull Elk Shield with Feathers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1377	2020-08-11 15:51:03.830766+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["cover_image"]}}]	4	3
1378	2020-08-11 15:53:42.222091+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1379	2020-08-11 15:54:17.414114+00	62	Buffalo Hide Shield and Cover with Rattle Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1380	2020-08-11 15:54:49.029848+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1381	2020-08-11 15:55:18.072296+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["name", "description"]}}]	4	3
1382	2020-08-11 15:55:27.77134+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["description", "citation"]}}]	4	3
1383	2020-08-11 15:56:22.364146+00	67	Buffalo Hide Shield with Four Covers Bínnaache	2	[{"changed": {"fields": ["description"]}}]	4	3
1384	2020-08-11 15:56:54.296415+00	68	Buffalo Shield and Cover Bínnaache	2	[{"changed": {"fields": ["description"]}}]	4	3
1385	2020-08-11 15:57:29.012765+00	69	Shield with Cover Binnaaché	2	[]	4	3
1386	2020-08-11 15:58:07.159538+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1387	2020-08-11 15:59:29.859329+00	172	Binnaaché	1	[{"added": {}}]	17	3
1388	2020-08-11 16:00:49.029165+00	73	Shield and Two Covers Binnaaché	2	[{"changed": {"fields": ["description", "citation"]}}]	4	3
1389	2020-08-11 16:00:49.844325+00	156	George	3		17	3
1390	2020-08-11 16:00:56.971366+00	173	Deer	1	[{"added": {}}]	17	3
1391	2020-08-11 16:01:04.129058+00	154	George Heye	3		17	3
1392	2020-08-11 16:01:07.934367+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["description", "citation", "keywords", "creator"]}}]	4	3
1393	2020-08-11 16:01:50.259353+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["description", "citation"]}}]	4	3
1394	2020-08-11 16:03:32.188529+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1395	2020-08-11 16:03:51.882857+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1396	2020-08-11 16:04:09.408892+00	62	Buffalo Hide Shield and Cover with Rattle Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1397	2020-08-11 16:05:08.229178+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1398	2020-08-11 16:05:40.742868+00	174	Cloud	1	[{"added": {}}]	17	3
1399	2020-08-11 16:05:48.278673+00	175	Rain	1	[{"added": {}}]	17	3
1400	2020-08-11 16:07:34.241819+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1401	2020-08-11 16:08:26.856237+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1402	2020-08-11 16:09:43.507329+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1403	2020-08-11 16:11:18.224182+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["citation"]}}]	4	3
1404	2020-08-11 16:12:59.753116+00	62	Buffalo Hide Shield and Cover Binnaaché	2	[{"changed": {"fields": ["name", "citation", "keywords"]}}]	4	3
1405	2020-08-11 16:14:30.235103+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["description", "citation", "keywords"]}}]	4	3
1406	2020-08-11 16:15:23.550972+00	64	Bull Elk Shield with Feathers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1407	2020-08-11 16:15:50.555368+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["description", "access_notes_or_rights_and_reproduction", "keywords"]}}]	4	3
1408	2020-08-11 16:16:03.338149+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[]	4	3
1409	2020-08-11 16:16:16.21448+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["citation", "keywords"]}}]	4	3
1410	2020-08-11 16:17:49.813505+00	67	Buffalo Hide Shield with Four Covers Bínnaache	2	[{"changed": {"fields": ["citation", "keywords"]}}]	4	3
1411	2020-08-11 16:18:45.635365+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1412	2020-08-11 16:19:27.502127+00	62	Buffalo Hide Shield and Cover Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1413	2020-08-11 16:19:58.498637+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1414	2020-08-11 16:24:08.138028+00	64	Bull Elk Shield with Feathers Binnaaché	2	[]	4	3
1415	2020-08-11 21:31:42.906946+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1416	2020-08-11 21:32:18.031514+00	77	001036000 Drum CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[]	4	3
1417	2020-08-11 21:33:36.263501+00	74	Shield and Covers Binnaaché	2	[]	4	3
1418	2020-08-11 21:34:58.431768+00	68	Humps Shield and Cover Bínnaache	2	[{"changed": {"fields": ["name", "description", "citation", "keywords"]}}]	4	3
1419	2020-08-11 21:36:57.307293+00	67	Buffalo Hide Shield with Red Painted Covers Bínnaache	2	[{"changed": {"fields": ["name", "description", "citation"]}}]	4	3
1420	2020-08-11 21:38:55.684535+00	73	Shield and Two Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1421	2020-08-11 21:47:28.293815+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1422	2020-08-11 21:47:48.001618+00	73	Shield and Two Covers Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1423	2020-08-11 21:48:10.16908+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1424	2020-08-11 21:48:25.786489+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[]	4	3
1425	2020-08-11 21:48:38.190306+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1426	2020-08-11 21:48:55.891112+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1427	2020-08-11 21:49:14.975115+00	68	Humps Shield and Cover Bínnaache	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1428	2020-08-11 21:49:30.79284+00	67	Buffalo Hide Shield with Red Painted Covers Bínnaache	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1429	2020-08-11 21:50:13.308346+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1430	2020-08-11 21:50:35.564751+00	64	Bull Elk Shield with Feathers Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1431	2020-08-11 21:51:05.482958+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1432	2020-08-11 21:51:22.297597+00	62	Buffalo Hide Shield and Cover Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1433	2020-08-11 21:51:40.704439+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1434	2020-08-11 21:53:12.450997+00	76	Parfleche Case	2	[{"changed": {"fields": ["citation"]}}]	4	3
1435	2020-08-11 21:53:22.964709+00	74	Shield and Covers Binnaaché	2	[]	4	3
1436	2020-08-11 21:54:06.393723+00	73	Shield and Two Covers Binnaaché	2	[]	4	3
1437	2020-08-12 15:04:46.433052+00	64	Bull Elk Shield with Feathers Binnaaché	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1438	2020-08-12 15:18:18.86761+00	176	1930s	1	[{"added": {}}]	17	3
1439	2020-08-12 15:18:50.698753+00	177	Clothing	1	[{"added": {}}]	17	3
1440	2020-08-12 15:20:18.649551+00	65	Black Lodge Farm Chapter, 1937	2	[{"changed": {"fields": ["description", "other_forms", "catalog_number", "citation", "keywords", "creator", "location_of_originals", "private_cataloger", "private_catalog_date"]}}, {"changed": {"name": "narrative", "object": "Narrative: Black Lodge Farm Chapter, 1937", "fields": ["content"]}}]	4	3
1441	2020-08-12 15:31:36.164337+00	100	Morman Crickets & Mike Bull Chief's Garden	1	[{"added": {}}]	4	3
1442	2020-08-12 15:32:07.794286+00	101	phptp 8728	1	[{"added": {}}]	4	3
1443	2020-08-12 15:32:42.670082+00	100	Morman Crickets & Mike Bull Chief's Garden	2	[{"changed": {"fields": ["private_cataloger", "private_catalog_date"]}}, {"added": {"name": "image", "object": "Image: Morman Crickets & Mike Bull Chief's Garden"}}]	4	3
1444	2020-08-12 15:42:11.650625+00	100	Morman Crickets & Mike Bull Chief's Garden	2	[{"changed": {"fields": ["description"]}}]	4	3
1445	2020-08-12 15:46:35.108637+00	100	Morman Crickets & Mike Bull Chief's Garden	2	[{"changed": {"fields": ["culture_or_community", "other_forms", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "citation"]}}]	4	3
1446	2020-08-12 15:55:49.22091+00	178	Crickets (orthoptera)	1	[{"added": {}}]	17	3
1447	2020-08-12 15:56:13.403771+00	179	Mormon Crickets	1	[{"added": {}}]	17	3
1448	2020-08-12 15:56:28.365315+00	180	Fence post	1	[{"added": {}}]	17	3
1449	2020-08-12 15:56:44.732591+00	181	Bull Chief, Mike	1	[{"added": {}}]	17	3
1450	2020-08-12 15:56:51.826287+00	182	Gardens	1	[{"added": {}}]	17	3
1451	2020-08-12 15:57:24.009972+00	183	Agriculutural Agents	1	[{"added": {}}]	17	3
1452	2020-08-12 15:57:28.784383+00	184	Farm	1	[{"added": {}}]	17	3
1453	2020-08-12 15:57:38.571823+00	185	Corn	1	[{"added": {}}]	17	3
1454	2020-08-12 15:57:56.386151+00	186	Gardners	1	[{"added": {}}]	17	3
1455	2020-08-12 15:59:08.228916+00	187	Extension Agents	1	[{"added": {}}]	17	3
1456	2020-08-12 15:59:51.150593+00	188	Crops	1	[{"added": {}}]	17	3
1457	2020-08-12 16:00:03.981902+00	100	Morman Crickets & Mike Bull Chief's Garden	2	[{"changed": {"fields": ["provenance", "keywords"]}}]	4	3
1458	2020-08-12 16:01:07.043317+00	100	Morman Crickets & Mike Bull Chief's Garden	2	[{"changed": {"fields": ["creator", "location_of_originals"]}}]	4	3
1459	2020-08-12 16:02:24.873284+00	100	Morman Crickets & Mike Bull Chief's Garden	2	[{"changed": {"fields": ["citation"]}}]	4	3
1460	2020-08-12 16:02:47.248541+00	180	Fence post	2	[]	17	3
1461	2020-08-12 16:02:48.019357+00	180	Fence posts	2	[{"changed": {"fields": ["word"]}}]	17	3
1462	2020-08-12 16:03:16.644763+00	184	Farms	2	[{"changed": {"fields": ["word"]}}]	17	3
1463	2020-08-12 16:09:39.215438+00	83	006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1464	2020-08-12 16:10:05.398148+00	79	002258000 Belt CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1465	2020-08-13 13:45:20.828595+00	85	Parfleche Bag	2	[{"changed": {"fields": ["name", "citation", "keywords"]}}]	4	3
1466	2020-08-13 13:47:45.658289+00	189	Keppler, Joseph W.  (1872-1956)	1	[{"added": {}}]	17	3
1467	2020-08-13 13:49:03.889703+00	84	Grave Sticker	2	[{"changed": {"fields": ["name", "citation", "keywords"]}}]	4	3
1468	2020-08-13 13:49:43.45727+00	84	Grave Sticker	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1469	2020-08-13 13:50:15.378902+00	83	006080000 Arrow CIVAM tape #13 Non-sacred Items #3 NMAI 10 23 2005_Trim	3		4	3
1470	2020-08-13 13:51:46.106301+00	190	Tefft, Erastus T. (1877-1935)	1	[{"added": {}}]	17	3
1471	2020-08-13 13:52:00.668592+00	191	Rattlesnake skin	1	[{"added": {}}]	17	3
1472	2020-08-13 13:52:12.686839+00	82	Rattlesnake Skin Covered Bow	2	[{"changed": {"fields": ["name", "citation"]}}]	4	3
1473	2020-08-13 13:53:09.112855+00	82	Rattlesnake Skin Covered Bow	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1474	2020-08-13 13:54:12.342175+00	192	Covert,  Frank M. (1858-1929)	1	[{"added": {}}]	17	3
1475	2020-08-13 13:54:39.83671+00	193	Porcupine quills	1	[{"added": {}}]	17	3
1476	2020-08-13 13:54:51.063393+00	194	Quilled	1	[{"added": {}}]	17	3
1477	2020-08-13 13:54:55.431902+00	80	Quilted Headband	2	[{"changed": {"fields": ["name", "citation"]}}]	4	3
1478	2020-08-13 13:55:31.624268+00	80	Quilted Headband	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1479	2020-08-13 13:57:42.270154+00	79	Beaded Leather Belt	2	[{"changed": {"fields": ["name", "citation", "keywords"]}}]	4	3
1480	2020-08-13 13:58:04.708147+00	195	Horsetail	1	[{"added": {}}]	17	3
1481	2020-08-13 13:58:42.262166+00	78	Quilted Hair Ornament	2	[{"changed": {"fields": ["name", "citation"]}}]	4	3
1482	2020-08-13 13:59:16.929119+00	196	Quill-wrapped	1	[{"added": {}}]	17	3
1483	2020-08-13 13:59:35.253937+00	78	Quilted Hair Ornament	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1484	2020-08-13 13:59:50.314673+00	78	Quilted Hair Ornament	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1485	2020-08-13 14:00:11.613966+00	197	Carved	1	[{"added": {}}]	17	3
1486	2020-08-13 14:00:33.213166+00	77	Drum	2	[{"changed": {"fields": ["name"]}}]	4	3
1487	2020-08-13 14:01:17.801351+00	77	Drum	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1488	2020-08-13 14:01:33.468127+00	77	Drum	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1489	2020-08-13 14:01:57.534576+00	78	Quilted Hair Ornament	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1490	2020-08-13 14:02:44.910005+00	198	Leather	1	[{"added": {}}]	17	3
1491	2020-08-13 14:02:51.402306+00	79	Beaded Leather Belt	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1492	2020-08-13 14:02:59.731996+00	79	Beaded Leather Belt	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1493	2020-08-13 14:03:19.279849+00	76	Parfleche Case	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1494	2020-08-13 14:03:52.355868+00	199	Eagle feather	1	[{"added": {}}]	17	3
1495	2020-08-13 14:05:18.568167+00	200	Linde, Johannes E. (1855-1909)	1	[{"added": {}}]	17	3
1496	2020-08-13 14:06:07.582546+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1497	2020-08-13 14:06:27.324682+00	76	Parfleche Case	2	[{"changed": {"fields": ["creator"]}}]	4	3
1498	2020-08-13 14:07:22.303542+00	73	Shield and Two Covers Binnaaché	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1499	2020-08-13 14:07:48.992177+00	201	stitched	1	[{"added": {}}]	17	3
1500	2020-08-13 14:07:56.436334+00	201	Stitched	2	[{"changed": {"fields": ["word"]}}]	17	3
1501	2020-08-13 14:08:48.886529+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1502	2020-08-13 14:10:49.98392+00	171	Paul J. Warner	3		17	3
1503	2020-08-13 14:10:49.986284+00	170	Lucille E. Borein	3		17	3
1504	2020-08-13 14:10:49.987542+00	169	Edward Borein	3		17	3
1505	2020-08-13 14:10:49.988771+00	161	Emil W. Lenders	3		17	3
1506	2020-08-13 14:10:49.990036+00	160	Sits In The Middle	3		17	3
1507	2020-08-13 14:10:49.992015+00	158	Kate S. Linde	3		17	3
1508	2020-08-13 14:10:49.993256+00	157	John E. Linde	3		17	3
1509	2020-08-13 14:10:49.994468+00	155	Frank M. Covert	3		17	3
1510	2020-08-13 14:10:49.995666+00	153	Joseph W. Keppler	3		17	3
1511	2020-08-13 14:10:49.996995+00	152	William Wildschut	3		17	3
1512	2020-08-13 14:10:49.998281+00	123	Erastus T. Tefft	3		17	3
1513	2020-08-13 14:11:25.583001+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1514	2020-08-13 14:11:58.896523+00	202	Bullet hole	1	[{"added": {}}]	17	3
1515	2020-08-13 14:12:51.412373+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1516	2020-08-13 14:14:05.136713+00	203	Warner, Paul	1	[{"added": {}}]	17	3
1517	2020-08-13 14:14:25.882022+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1518	2020-08-13 14:14:48.602348+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1519	2020-08-13 14:17:39.421679+00	62	Buffalo Hide Shield and Cover Binnaaché	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1520	2020-08-13 14:18:00.278919+00	68	Humps Shield and Cover Bínnaache	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1521	2020-08-13 14:19:49.268348+00	204	Otter skin	1	[{"added": {}}]	17	3
1522	2020-08-13 14:20:49.730112+00	67	Buffalo Hide Shield with Red Painted Covers Bínnaache	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1523	2020-08-13 14:22:28.51252+00	67	Buffalo Hide Shield with Red Painted Covers Bínnaache	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1524	2020-08-13 14:22:54.912873+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1525	2020-08-13 14:23:31.424011+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1526	2020-08-13 14:23:56.933911+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["creator"]}}]	4	3
1527	2020-08-13 14:24:00.854534+00	64	Bull Elk Shield with Feathers Binnaaché	2	[]	4	3
1528	2020-08-13 14:24:52.912735+00	64	Bull Elk Shield with Feathers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1529	2020-08-13 14:25:30.434205+00	63	Buffalo Hide Shield with Deerskin Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1530	2020-08-13 14:26:44.364503+00	62	Buffalo Hide Shield and Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1531	2020-08-13 14:27:10.550947+00	66	Rawhide Rattle	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1532	2020-08-13 14:29:42.4598+00	67	Buffalo Hide Shield with Red Painted Covers Bínnaache	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1533	2020-08-13 14:32:15.149256+00	68	Humps Shield and Cover Bínnaache	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1534	2020-08-13 14:33:34.948295+00	205	Bells	1	[{"added": {}}]	17	3
1535	2020-08-13 14:33:51.908442+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1536	2020-08-13 14:35:41.460161+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1537	2020-08-13 14:36:39.151413+00	206	Yellow Brow (Apsáalooke)	1	[{"added": {}}]	17	3
1538	2020-08-13 14:36:48.168059+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1539	2020-08-13 14:37:12.844496+00	207	Deer tail	1	[{"added": {}}]	17	3
1540	2020-08-13 14:38:04.586099+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1541	2020-08-13 14:39:27.885919+00	208	Linde, Kate S.	1	[{"added": {}}]	17	3
1542	2020-08-13 14:40:31.889426+00	73	Shield and Two Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1543	2020-08-13 14:41:08.872007+00	209	Linde, John E.	1	[{"added": {}}]	17	3
1544	2020-08-13 14:41:38.201279+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1545	2020-08-13 14:43:00.13407+00	210	Sits In The Middle (Apsáalooke)	1	[{"added": {}}]	17	3
1546	2020-08-13 14:43:43.879475+00	211	Deer skin	1	[{"added": {}}]	17	3
1547	2020-08-13 14:44:32.456123+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1548	2020-08-13 14:45:13.412858+00	212	Pups (Apsáalooke)	1	[{"added": {}}]	17	3
1549	2020-08-13 14:46:18.775591+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1550	2020-08-13 14:46:44.933513+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1551	2020-08-13 14:47:45.594796+00	72	Deer Shield with Cover Binnaaché	2	[]	4	3
1552	2020-08-13 14:49:14.346206+00	73	Shield and Two Covers Binnaaché	2	[]	4	3
1553	2020-08-13 14:49:54.235359+00	71	Yellow Brow and Pups Shield with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1554	2020-08-13 14:52:27.823987+00	74	Shield and Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1555	2020-08-13 14:53:09.847092+00	76	Parfleche Case	2	[]	4	3
1556	2020-08-13 14:54:03.985724+00	77	Drum	2	[{"changed": {"fields": ["keywords", "creator"]}}]	4	3
1557	2020-08-13 14:54:56.12227+00	78	Quilted Hair Ornament	2	[]	4	3
1558	2020-08-13 14:56:13.995942+00	79	Beaded Leather Belt	2	[]	4	3
1559	2020-08-13 14:56:54.082151+00	80	Quilted Headband	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1560	2020-08-13 14:57:39.144727+00	82	Rattlesnake Skin Covered Bow	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1561	2020-08-13 14:58:37.89826+00	84	Grave Sticker	2	[]	4	3
1562	2020-08-13 14:59:12.026622+00	85	Parfleche Bag	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1563	2020-08-13 15:38:55.688081+00	79	Beaded Leather Belt	2	[{"changed": {"name": "video", "object": "Video: Beaded Leather Belt", "fields": ["link"]}}]	4	3
1564	2020-08-13 15:42:30.095963+00	84	Grave Sticker	2	[]	4	3
1565	2020-08-13 15:44:11.050801+00	14	Quiver (model/miniature)	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1566	2020-08-13 15:44:20.308124+00	61	Buffalo Hide Shield with Red and Black Paint Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1567	2020-08-13 15:44:33.968655+00	62	Buffalo Hide Shield and Cover Binnaaché	2	[]	4	3
1568	2020-08-13 15:44:47.899808+00	7	Cup and Pin Game	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1569	2020-08-13 15:44:55.426387+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1570	2020-08-13 15:45:12.046799+00	70	Buffalo Shield and Cover with Bullet Hole Binnaaché	2	[]	4	3
1571	2020-08-13 15:45:27.364508+00	64	Bull Elk Shield with Feathers Binnaaché	2	[]	4	3
1572	2020-08-13 15:45:32.245756+00	8	Saddle Bag (toy/model)	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1573	2020-08-13 15:45:50.357575+00	66	Rawhide Rattle	2	[]	4	3
1574	2020-08-13 15:46:08.510955+00	67	Buffalo Hide Shield with Red Painted Covers Bínnaache	2	[]	4	3
1575	2020-08-13 15:46:14.075083+00	9	Gun Case and Gun (toy/model)	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1576	2020-08-13 15:46:33.727851+00	68	Humps Shield and Cover Bínnaache	2	[]	4	3
1577	2020-08-13 15:47:03.851135+00	10	Cup and Pin Game with Red and Black Beads	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1578	2020-08-13 15:47:29.664049+00	69	Shield with Cover Binnaaché	2	[]	4	3
1579	2020-08-13 15:52:35.138168+00	11	Cup and Pin Game with Black Beads	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1580	2020-08-13 15:54:38.695852+00	73	Red and Green Elk Shield and Two Covers Binnaaché	2	[{"changed": {"fields": ["name", "citation"]}}]	4	3
1581	2020-08-13 15:54:54.731504+00	74	Shield and Covers Binnaaché	3		4	3
1582	2020-08-13 15:56:03.269649+00	73	Shield with Red Elk and Green Elk with Two Covers Binnaaché	2	[{"changed": {"fields": ["name", "cover_image"]}}]	4	3
1583	2020-08-13 16:00:37.211243+00	71	Shield owned by Yellow Brow and Pups with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["name"]}}]	4	3
1584	2020-08-13 16:04:24.356547+00	85	Parfleche Bag	2	[]	4	3
1585	2020-08-17 01:33:33.297438+00	101	#8728	2	[{"changed": {"fields": ["name", "access_notes_or_rights_and_reproduction", "catalog_number", "citation", "keywords", "creator", "location_of_originals"]}}]	4	3
1586	2020-08-17 01:35:04.529504+00	101	#8728	2	[{"added": {"name": "image", "object": "Image: #8728"}}, {"added": {"name": "narrative", "object": "Narrative: #8728"}}]	4	3
1587	2020-08-17 01:35:58.240518+00	100	Morman Crickets & Mike Bull Chief's Garden, 1937	2	[{"changed": {"fields": ["name"]}}]	4	3
1588	2020-08-17 02:03:27.580712+00	69	Shield with Cover Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1589	2020-08-17 02:12:48.615752+00	213	Spotted Arm	1	[{"added": {}}]	17	3
1590	2020-08-17 02:13:00.703004+00	214	Pryor, MT	1	[{"added": {}}]	17	3
1591	2020-08-17 02:13:11.298762+00	215	1870s	1	[{"added": {}}]	17	3
1592	2020-08-17 02:14:06.878694+00	73	Spotted Arm's Shield with Two Covers Binnaaché	2	[{"changed": {"fields": ["name", "description", "provenance", "citation", "keywords"]}}]	4	3
1593	2020-08-17 02:15:41.493174+00	73	Spotted Arm's Shield with Two Covers Binnaaché	2	[{"changed": {"fields": ["description"]}}]	4	3
1594	2020-08-17 02:18:02.222064+00	73	Spotted Arm's Shield with Two Covers Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1595	2020-08-17 02:18:42.778008+00	167	Old Bull, Tilton (Apsáalooke)	2	[{"changed": {"fields": ["word"]}}]	17	3
1596	2020-08-17 02:18:55.736363+00	199	Eagle feathers	2	[{"changed": {"fields": ["word"]}}]	17	3
1597	2020-08-17 02:19:37.759288+00	166	Pretty-On-Top (Apsáalooke)	2	[{"changed": {"fields": ["word"]}}]	17	3
1598	2020-08-17 02:19:53.618025+00	165	Knows His Coups (Apsáalooke)	2	[{"changed": {"fields": ["word"]}}]	17	3
1599	2020-08-17 02:20:48.477654+00	151	Yellow Brow	2	[]	17	3
1600	2020-08-17 02:21:38.466719+00	213	Spotted Arm (Apsáalooke)	2	[{"changed": {"fields": ["word"]}}]	17	3
1601	2020-08-17 02:22:08.090963+00	151	Yellow Brow	3		17	3
1602	2020-08-17 02:23:14.865297+00	71	Shield owned by Yellow Brow and Pups with Cloud and Rain Design Binnaaché	2	[]	4	3
1603	2020-08-17 02:27:23.792724+00	216	Deer ears	1	[{"added": {}}]	17	3
1604	2020-08-17 02:27:28.990299+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1605	2020-08-17 02:33:36.916328+00	72	Deer Shield with Cover Binnaaché	2	[{"changed": {"fields": ["provenance", "keywords"]}}]	4	3
1606	2020-08-17 02:34:00.987888+00	159	Field Museum of Natural History	2	[]	17	3
1607	2020-08-17 02:40:55.3624+00	217	Owls	1	[{"added": {}}]	17	3
1608	2020-08-17 02:41:03.572821+00	218	Owl feathers	1	[{"added": {}}]	17	3
1609	2020-08-17 02:41:19.500393+00	219	Bullets	1	[{"added": {}}]	17	3
1610	2020-08-17 02:41:27.484754+00	220	Pine trees	1	[{"added": {}}]	17	3
1611	2020-08-17 02:41:35.875572+00	221	War medicine	1	[{"added": {}}]	17	3
1612	2020-08-17 02:41:45.661389+00	71	Shield owned by Yellow Brow and Pups with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["provenance", "keywords"]}}]	4	3
1613	2020-08-17 02:42:44.723516+00	71	Shield owned by Yellow Brow and Pups with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
1614	2020-08-17 02:43:27.004353+00	71	Shield owned by Yellow Brow and Pups with Cloud and Rain Design Binnaaché	2	[{"changed": {"fields": ["private_notes"]}}]	4	3
1615	2020-08-17 03:04:06.713013+00	222	Buffalo hide	1	[{"added": {}}]	17	3
1616	2020-08-17 03:04:17.501389+00	223	Tobacco Society	1	[{"added": {}}]	17	3
1617	2020-08-17 03:04:25.385486+00	224	Tobacco seeds	1	[{"added": {}}]	17	3
1618	2020-08-17 03:06:27.511409+00	66	Tobacco Society Rattles (3)	2	[{"changed": {"fields": ["name", "description", "catalog_number", "provenance", "citation", "keywords"]}}]	4	3
1619	2020-08-17 20:12:47.154119+00	225	Mrs L Walks Over Ice	1	[{"added": {}}]	17	3
1620	2020-08-17 20:12:56.827087+00	226	St Xavier	1	[{"added": {}}]	17	3
1621	2020-08-17 20:13:11.130829+00	101	Mrs. L Walks Over Ice Farming at St Xavier	2	[{"changed": {"fields": ["name", "cover_image", "description", "culture_or_community", "date_of_creation", "physical_details", "provenance", "keywords"]}}]	4	3
1622	2020-08-17 20:14:35.544837+00	227	Seed Beds	1	[{"added": {}}]	17	3
1623	2020-08-17 20:14:42.591225+00	101	Mrs. L Walks Over Ice Farming at St Xavier	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1624	2020-08-17 20:20:23.197451+00	103	Anna Big Day Gardens at Pryor	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Anna Big Day Gardens at Pryor"}}]	4	3
1625	2020-08-17 20:22:27.394652+00	228	Big Day, Anna	1	[{"added": {}}]	17	3
1626	2020-08-17 20:22:38.549943+00	103	Anna Big Day Gardens at Pryor	2	[{"changed": {"fields": ["keywords"]}}]	4	3
1627	2020-08-17 20:25:13.031438+00	103	Anna Big Day Gardens at Pryor	2	[{"changed": {"fields": ["culture_or_community", "other_forms", "date_of_creation", "catalog_number", "provenance", "citation", "creator", "location_of_originals"]}}]	4	3
1628	2020-08-17 20:25:13.473392+00	103	Anna Big Day Gardens at Pryor	2	[]	4	3
1629	2020-08-17 20:25:54.932774+00	103	Anna Big Day Gardens at Pryor	2	[{"changed": {"fields": ["physical_details", "access_notes_or_rights_and_reproduction"]}}]	4	3
1630	2020-08-17 20:26:50.954489+00	226	St Xavier, Montana	2	[{"changed": {"fields": ["word"]}}]	17	3
1631	2020-08-17 20:27:31.153477+00	225	Walks Over Ice, L	2	[{"changed": {"fields": ["word"]}}]	17	3
1632	2020-08-17 20:30:25.681554+00	104	WM Spotted's Garden	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: WM Spotted's Garden"}}]	4	3
1633	2020-08-17 20:32:07.537359+00	104	WM Spotted's Garden	2	[{"changed": {"fields": ["culture_or_community", "other_forms", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "citation", "creator", "location_of_originals", "private_cataloger"]}}]	4	3
1634	2020-08-17 20:34:30.08165+00	229	Spotted, WM	1	[{"added": {}}]	17	3
1635	2020-08-17 20:35:41.360223+00	104	WM Spotted's Garden	2	[{"changed": {"fields": ["description", "keywords"]}}]	4	3
1636	2020-09-16 14:58:22.927393+00	105	Maggie Brass in her Garden	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Maggie Brass in her Garden"}}]	4	3
1637	2020-09-16 15:08:23.847225+00	230	Brass, Maggie	1	[{"added": {}}]	17	3
1638	2020-09-16 15:08:30.909863+00	231	Peas	1	[{"added": {}}]	17	3
1639	2020-09-16 15:09:53.520385+00	105	Maggie Brass in her Garden	2	[{"changed": {"fields": ["description", "culture_or_community", "other_forms", "digital_heritage_item", "date_of_creation", "physical_details", "access_notes_or_rights_and_reproduction", "catalog_number", "provenance", "citation", "keywords", "creator", "location_of_originals"]}}]	4	3
1640	2020-09-16 15:21:34.92473+00	232	Cashen, WM	1	[{"added": {}}]	17	3
1641	2020-09-16 15:21:45.684894+00	233	Yellowtail, Tommy	1	[{"added": {}}]	17	3
1642	2020-09-16 15:22:03.799241+00	106	Tommy Yellowtail and WM Cashen in St. Xavier Gardens	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Tommy Yellowtail and WM Cashen in St. Xavier Gardens"}}]	4	3
1643	2020-09-16 15:26:07.315708+00	106	Tommy Yellowtail and WM Cashen in St. Xavier Gardens	2	[]	4	3
1644	2020-09-16 15:26:46.169355+00	105	Maggie Brass in her Garden	2	[{"changed": {"fields": ["citation"]}}]	4	3
1645	2020-09-16 15:29:04.673515+00	105	Maggie Brass in her Garden	2	[{"changed": {"fields": ["provenance"]}}]	4	3
1646	2020-09-16 15:29:20.784373+00	106	Tommy Yellowtail and WM Cashen in St. Xavier Gardens	2	[{"changed": {"fields": ["provenance"]}}]	4	3
1647	2020-09-16 15:40:41.507228+00	234	Iron, Robin	1	[{"added": {}}]	17	3
1648	2020-09-16 15:40:54.966684+00	235	John, Little	1	[{"added": {}}]	17	3
1649	2020-09-16 15:42:55.996515+00	107	Robin Iron and Little John With The Cattle	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Robin Iron and Little John With The Cattle"}}]	4	3
1650	2020-09-16 15:43:19.355477+00	106	Tommy Yellowtail and WM Cashen in St. Xavier Gardens	2	[{"changed": {"fields": ["other_forms"]}}]	4	3
1651	2020-09-16 16:04:13.491351+00	106	Tommy Yellowtail and WM Cashen in St. Xavier Gardens	2	[{"changed": {"fields": ["access_notes_or_rights_and_reproduction"]}}]	4	3
1652	2020-09-16 16:07:50.064636+00	236	Cattle Association	1	[{"added": {}}]	17	3
1653	2020-09-16 16:08:04.455894+00	237	Little Horn, MT	1	[{"added": {}}]	17	3
1654	2020-09-16 16:08:17.314601+00	238	Black Hawk, Eli	1	[{"added": {}}]	17	3
1655	2020-09-16 16:08:30.063569+00	108	Eli Black Hawk and the Cattle Association	1	[{"added": {}}, {"added": {"name": "image", "object": "Image: Eli Black Hawk and the Cattle Association"}}]	4	3
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	guardian	groupobjectpermission
2	guardian	userobjectpermission
3	civam	collection
4	civam	item
5	civam	video
6	civam	story
7	civam	image
8	civam	collectiongroup
9	admin	logentry
10	auth	permission
11	auth	group
12	auth	user
13	contenttypes	contenttype
14	sessions	session
15	civam	pori
16	civam	itempori
17	civam	keyword
18	civam	personorinstitute
19	civam	narrative
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-05-05 18:39:47.824415+00
2	auth	0001_initial	2020-05-05 18:39:47.86109+00
3	admin	0001_initial	2020-05-05 18:39:47.91202+00
4	admin	0002_logentry_remove_auto_add	2020-05-05 18:39:47.927597+00
5	admin	0003_logentry_add_action_flag_choices	2020-05-05 18:39:47.948916+00
6	contenttypes	0002_remove_content_type_name	2020-05-05 18:39:47.965014+00
7	auth	0002_alter_permission_name_max_length	2020-05-05 18:39:47.969989+00
8	auth	0003_alter_user_email_max_length	2020-05-05 18:39:47.978842+00
9	auth	0004_alter_user_username_opts	2020-05-05 18:39:47.987022+00
10	auth	0005_alter_user_last_login_null	2020-05-05 18:39:47.995033+00
11	auth	0006_require_contenttypes_0002	2020-05-05 18:39:47.996966+00
12	auth	0007_alter_validators_add_error_messages	2020-05-05 18:39:48.004617+00
13	auth	0008_alter_user_username_max_length	2020-05-05 18:39:48.017777+00
14	auth	0009_alter_user_last_name_max_length	2020-05-05 18:39:48.025449+00
15	auth	0010_alter_group_name_max_length	2020-05-05 18:39:48.032919+00
16	auth	0011_update_proxy_permissions	2020-05-05 18:39:48.040223+00
18	guardian	0001_initial	2020-05-05 18:39:48.221692+00
19	guardian	0002_generic_permissions_index	2020-05-05 18:39:48.260267+00
20	sessions	0001_initial	2020-05-05 18:39:48.268987+00
28	civam	0001_initial	2020-05-28 21:29:39.281031+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
1syvrb7poocdgntwplrvpwk4e6h9dw2e	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-05-25 01:47:25.869987+00
t0ln8ramh7bxa1h1kysja2bz5irztnn5	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-02 18:33:36.354884+00
28n7jdeplz077llid6eey1vr0jgwugok	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-03 16:09:57.065139+00
o3ttlchr0wzno041w4iprv2z5q5k21hh	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-03 16:10:22.556373+00
3873zue42n5zag0l5v5ykug8nokx10rm	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-03 16:10:49.277247+00
4lbxvc1fptokpdg3ahhn8j7aamzbwvxw	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-03 17:09:20.45361+00
9kc2cvf1fwvlgjyw3uwzc44ux0vw8w9z	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-05 20:35:40.360107+00
kd2svw4u6q9z4vk5f4n3557fti199eaq	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-10 20:11:34.354813+00
pxlcq8hvpu0fr0czvfh2veppghvktlgf	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-10 20:40:19.006444+00
d02he98b7xirkf8ofiie86bf35wewvsq	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-10 20:41:42.537934+00
sapwo1sbvux81thqfsc4q8tf6mda3d6u	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-11 15:08:00.617814+00
44zwyqdmnv70hf77kvahfo4zx2kkcrg3	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-16 15:47:08.353521+00
36s0ijescvf2uwrad2lc5h2ghcwzxw4c	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-23 15:43:27.252142+00
y1dstd2ko47j0icpgv5gsivnr4qkmp1x	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-23 15:43:33.338431+00
eekaf73wp3nup1ywvv0wkbm38u22gmwx	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-23 17:47:48.409312+00
8yvnfv8r7foojre90qe2sw0tpovhsv0a	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-25 18:21:06.259203+00
mrdh8p4t5e4fconmy1j0884wmevgdd3z	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-06-29 00:58:46.620925+00
rwefqnxwzuopua4460ulv547u5htcuap	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-07-02 15:46:57.391849+00
d2lday6vvcbg8lv7nr6nsevc9s93u5ez	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-07-08 00:42:58.004588+00
y4y7wglzdckqyauzpgxp9e6wg1nfbm14	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-07-09 00:18:55.245912+00
8qtwpus0e5ptu4cjz07ws2da1y61w4n1	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-07-15 17:04:33.065722+00
p5f5ibfeo8x4cng0nyzbmykilwjrjv4u	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-07-20 16:26:21.831744+00
6r8emoshfupcobzu3ch0ags0fzd2kk2c	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-07-23 01:05:40.962059+00
8njrdikbswve5ddnxdngl7ter791cwqq	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-07-23 03:02:09.349326+00
oax7nn0cscacct0mugwia72qdzxkx5xw	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-08-04 16:15:33.602018+00
g5ziry9skxvu7vwoysv2lduc8lryy25h	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-08-11 12:58:07.526237+00
vw2nkudxkixniuje9zmzbd4vq1mr8b6i	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-08-11 17:09:02.764596+00
g1leemegt3lygeigea0f66gvq9m1a3am	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-08-13 14:41:56.277223+00
n9cqyoncbru3vnoywxw0fucjio2gih7w	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-08-18 16:27:07.668945+00
zfzjm1i2qtnin3cjsdtwsfu0e78xyk7k	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-08-25 14:03:38.843347+00
ykgbr5ai3wf0v4w8jh2zijxew2s0avas	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-08-26 15:25:32.754346+00
rm6jqfcli9vz2vi58kqgbijie2dad39x	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-08-27 14:08:47.238152+00
ntdk07mjhgugbp03yzu6e655zs63i4b8	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-09-18 23:00:54.958488+00
i6ja3n1ne3rm43pjnek9dwojn4lh025x	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-09-30 14:51:16.454697+00
uj9y976c3n4dw8cj8yt4vwju77iean4g	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-10-07 18:05:01.730771+00
t01c1yka1g41gqvzn5uxzmapfvt6tdci	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-10-07 19:13:41.491675+00
j68nxxvbezh5b12vpoi1fp7ba9x2ixk7	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-10-07 19:14:42.909337+00
5rqvvpim6cqwomrolrixokut5znxlmlb	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-10-09 19:35:17.973816+00
tths7qpj9u8wb7ysgaia7ea2xcno1627	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-10-18 18:02:25.259207+00
f3g0zfsu17sgfwx3oobd5f17noqoanh8	NjU3ZTUwY2NjMzJjNmFkMGVjOTExMTcwYTRjODNjMDhlYjNiMGVhNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0ODQyZDYzZGM4YzM1MWUwMmRlODIyNTZiZmJkZTljNWYzOTYwMTVkIn0=	2020-10-18 19:25:06.47461+00
\.


--
-- Data for Name: guardian_groupobjectpermission; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.guardian_groupobjectpermission (id, object_pk, content_type_id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: guardian_userobjectpermission; Type: TABLE DATA; Schema: public; Owner: django_user
--

COPY public.guardian_userobjectpermission (id, object_pk, content_type_id, permission_id, user_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 6, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: civam_collection_creator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_collection_creator_id_seq', 3, true);


--
-- Name: civam_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_collection_id_seq', 6, true);


--
-- Name: civam_collection_keywords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_collection_keywords_id_seq', 15, true);


--
-- Name: civam_collection_location_of_originals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_collection_location_of_originals_id_seq', 2, true);


--
-- Name: civam_collectiongroup_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_collectiongroup_id_seq', 1, false);


--
-- Name: civam_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_image_id_seq', 69, true);


--
-- Name: civam_item_creator_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_item_creator_id_seq', 164, true);


--
-- Name: civam_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_item_id_seq', 108, true);


--
-- Name: civam_item_keywords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_item_keywords_id_seq', 827, true);


--
-- Name: civam_item_location_of_originals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_item_location_of_originals_id_seq', 74, true);


--
-- Name: civam_keyword_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_keyword_id_seq', 238, true);


--
-- Name: civam_narrative_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_narrative_id_seq', 72, true);


--
-- Name: civam_personorinstitute_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_personorinstitute_id_seq', 10, true);


--
-- Name: civam_video_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.civam_video_id_seq', 54, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1655, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: guardian_groupobjectpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.guardian_groupobjectpermission_id_seq', 1, false);


--
-- Name: guardian_userobjectpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: django_user
--

SELECT pg_catalog.setval('public.guardian_userobjectpermission_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: civam_collection_creator civam_collection_creator_collection_id_personorin_98115f1c_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_creator
    ADD CONSTRAINT civam_collection_creator_collection_id_personorin_98115f1c_uniq UNIQUE (collection_id, personorinstitute_id);


--
-- Name: civam_collection_creator civam_collection_creator_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_creator
    ADD CONSTRAINT civam_collection_creator_pkey PRIMARY KEY (id);


--
-- Name: civam_collection_keywords civam_collection_keyword_collection_id_keyword_id_94a8dd26_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_keywords
    ADD CONSTRAINT civam_collection_keyword_collection_id_keyword_id_94a8dd26_uniq UNIQUE (collection_id, keyword_id);


--
-- Name: civam_collection_keywords civam_collection_keywords_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_keywords
    ADD CONSTRAINT civam_collection_keywords_pkey PRIMARY KEY (id);


--
-- Name: civam_collection_location_of_originals civam_collection_locatio_collection_id_personorin_ff1a8c62_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_location_of_originals
    ADD CONSTRAINT civam_collection_locatio_collection_id_personorin_ff1a8c62_uniq UNIQUE (collection_id, personorinstitute_id);


--
-- Name: civam_collection_location_of_originals civam_collection_location_of_originals_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_location_of_originals
    ADD CONSTRAINT civam_collection_location_of_originals_pkey PRIMARY KEY (id);


--
-- Name: civam_collection civam_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection
    ADD CONSTRAINT civam_collection_pkey PRIMARY KEY (id);


--
-- Name: civam_collection civam_collection_title_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection
    ADD CONSTRAINT civam_collection_title_key UNIQUE (title);


--
-- Name: civam_collectiongroup civam_collectiongroup_name_collection_id_7a3769c7_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collectiongroup
    ADD CONSTRAINT civam_collectiongroup_name_collection_id_7a3769c7_uniq UNIQUE (name, collection_id);


--
-- Name: civam_collectiongroup civam_collectiongroup_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collectiongroup
    ADD CONSTRAINT civam_collectiongroup_pkey PRIMARY KEY (id);


--
-- Name: civam_image civam_image_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_image
    ADD CONSTRAINT civam_image_pkey PRIMARY KEY (id);


--
-- Name: civam_item_creator civam_item_creator_item_id_personorinstitute_id_6349c21a_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_creator
    ADD CONSTRAINT civam_item_creator_item_id_personorinstitute_id_6349c21a_uniq UNIQUE (item_id, personorinstitute_id);


--
-- Name: civam_item_creator civam_item_creator_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_creator
    ADD CONSTRAINT civam_item_creator_pkey PRIMARY KEY (id);


--
-- Name: civam_item_keywords civam_item_keywords_item_id_keyword_id_38316d45_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_keywords
    ADD CONSTRAINT civam_item_keywords_item_id_keyword_id_38316d45_uniq UNIQUE (item_id, keyword_id);


--
-- Name: civam_item_keywords civam_item_keywords_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_keywords
    ADD CONSTRAINT civam_item_keywords_pkey PRIMARY KEY (id);


--
-- Name: civam_item_location_of_originals civam_item_location_of_o_item_id_personorinstitut_f271a563_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_location_of_originals
    ADD CONSTRAINT civam_item_location_of_o_item_id_personorinstitut_f271a563_uniq UNIQUE (item_id, personorinstitute_id);


--
-- Name: civam_item_location_of_originals civam_item_location_of_originals_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_location_of_originals
    ADD CONSTRAINT civam_item_location_of_originals_pkey PRIMARY KEY (id);


--
-- Name: civam_item civam_item_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item
    ADD CONSTRAINT civam_item_pkey PRIMARY KEY (id);


--
-- Name: civam_keyword civam_keyword_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_keyword
    ADD CONSTRAINT civam_keyword_pkey PRIMARY KEY (id);


--
-- Name: civam_keyword civam_keyword_word_key; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_keyword
    ADD CONSTRAINT civam_keyword_word_key UNIQUE (word);


--
-- Name: civam_narrative civam_narrative_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_narrative
    ADD CONSTRAINT civam_narrative_pkey PRIMARY KEY (id);


--
-- Name: civam_personorinstitute civam_personorinstitute_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_personorinstitute
    ADD CONSTRAINT civam_personorinstitute_pkey PRIMARY KEY (id);


--
-- Name: civam_video civam_video_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_video
    ADD CONSTRAINT civam_video_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: guardian_groupobjectpermission guardian_groupobjectperm_group_id_permission_id_o_3f189f7c_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobjectperm_group_id_permission_id_o_3f189f7c_uniq UNIQUE (group_id, permission_id, object_pk);


--
-- Name: guardian_groupobjectpermission guardian_groupobjectpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobjectpermission_pkey PRIMARY KEY (id);


--
-- Name: guardian_userobjectpermission guardian_userobjectpermi_user_id_permission_id_ob_b0b3d2fc_uniq; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectpermi_user_id_permission_id_ob_b0b3d2fc_uniq UNIQUE (user_id, permission_id, object_pk);


--
-- Name: guardian_userobjectpermission guardian_userobjectpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectpermission_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: civam_collection_created_by_id_b1d49415; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_created_by_id_b1d49415 ON public.civam_collection USING btree (created_by_id);


--
-- Name: civam_collection_creator_collection_id_fde0cdbf; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_creator_collection_id_fde0cdbf ON public.civam_collection_creator USING btree (collection_id);


--
-- Name: civam_collection_creator_personorinstitute_id_698784e6; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_creator_personorinstitute_id_698784e6 ON public.civam_collection_creator USING btree (personorinstitute_id);


--
-- Name: civam_collection_keywords_collection_id_9d9f6ed6; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_keywords_collection_id_9d9f6ed6 ON public.civam_collection_keywords USING btree (collection_id);


--
-- Name: civam_collection_keywords_keyword_id_7b4e58f1; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_keywords_keyword_id_7b4e58f1 ON public.civam_collection_keywords USING btree (keyword_id);


--
-- Name: civam_collection_location__personorinstitute_id_fa8c9c97; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_location__personorinstitute_id_fa8c9c97 ON public.civam_collection_location_of_originals USING btree (personorinstitute_id);


--
-- Name: civam_collection_location_of_originals_collection_id_3fe846be; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_location_of_originals_collection_id_3fe846be ON public.civam_collection_location_of_originals USING btree (collection_id);


--
-- Name: civam_collection_modified_by_id_a2a660db; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_modified_by_id_a2a660db ON public.civam_collection USING btree (modified_by_id);


--
-- Name: civam_collection_title_25877fd9_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collection_title_25877fd9_like ON public.civam_collection USING btree (title varchar_pattern_ops);


--
-- Name: civam_collectiongroup_collection_id_cff864ff; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collectiongroup_collection_id_cff864ff ON public.civam_collectiongroup USING btree (collection_id);


--
-- Name: civam_collectiongroup_group_id_c46c6420; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_collectiongroup_group_id_c46c6420 ON public.civam_collectiongroup USING btree (group_id);


--
-- Name: civam_image_item_id_7cf3f182; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_image_item_id_7cf3f182 ON public.civam_image USING btree (item_id);


--
-- Name: civam_item_collection_id_03926882; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_collection_id_03926882 ON public.civam_item USING btree (collection_id);


--
-- Name: civam_item_created_by_id_5b4d4cfe; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_created_by_id_5b4d4cfe ON public.civam_item USING btree (created_by_id);


--
-- Name: civam_item_creator_item_id_72039756; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_creator_item_id_72039756 ON public.civam_item_creator USING btree (item_id);


--
-- Name: civam_item_creator_personorinstitute_id_70b77e78; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_creator_personorinstitute_id_70b77e78 ON public.civam_item_creator USING btree (personorinstitute_id);


--
-- Name: civam_item_keywords_item_id_00de4cc5; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_keywords_item_id_00de4cc5 ON public.civam_item_keywords USING btree (item_id);


--
-- Name: civam_item_keywords_keyword_id_d6eddadd; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_keywords_keyword_id_d6eddadd ON public.civam_item_keywords USING btree (keyword_id);


--
-- Name: civam_item_location_of_originals_item_id_1062a355; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_location_of_originals_item_id_1062a355 ON public.civam_item_location_of_originals USING btree (item_id);


--
-- Name: civam_item_location_of_originals_personorinstitute_id_cc87f552; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_location_of_originals_personorinstitute_id_cc87f552 ON public.civam_item_location_of_originals USING btree (personorinstitute_id);


--
-- Name: civam_item_modified_by_id_97720de0; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_item_modified_by_id_97720de0 ON public.civam_item USING btree (modified_by_id);


--
-- Name: civam_keyword_created_by_id_422c76c4; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_keyword_created_by_id_422c76c4 ON public.civam_keyword USING btree (created_by_id);


--
-- Name: civam_keyword_modified_by_id_9f670191; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_keyword_modified_by_id_9f670191 ON public.civam_keyword USING btree (modified_by_id);


--
-- Name: civam_keyword_word_fdc69cea_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_keyword_word_fdc69cea_like ON public.civam_keyword USING btree (word varchar_pattern_ops);


--
-- Name: civam_narrative_created_by_id_718c18b9; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_narrative_created_by_id_718c18b9 ON public.civam_narrative USING btree (created_by_id);


--
-- Name: civam_narrative_item_id_4964f044; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_narrative_item_id_4964f044 ON public.civam_narrative USING btree (item_id);


--
-- Name: civam_narrative_modified_by_id_6e793b60; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_narrative_modified_by_id_6e793b60 ON public.civam_narrative USING btree (modified_by_id);


--
-- Name: civam_personorinstitute_created_by_id_cfa8fe6d; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_personorinstitute_created_by_id_cfa8fe6d ON public.civam_personorinstitute USING btree (created_by_id);


--
-- Name: civam_personorinstitute_modified_by_id_2c74c2e0; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_personorinstitute_modified_by_id_2c74c2e0 ON public.civam_personorinstitute USING btree (modified_by_id);


--
-- Name: civam_video_item_id_6b118b91; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX civam_video_item_id_6b118b91 ON public.civam_video USING btree (item_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: guardian_gr_content_ae6aec_idx; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX guardian_gr_content_ae6aec_idx ON public.guardian_groupobjectpermission USING btree (content_type_id, object_pk);


--
-- Name: guardian_groupobjectpermission_content_type_id_7ade36b8; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX guardian_groupobjectpermission_content_type_id_7ade36b8 ON public.guardian_groupobjectpermission USING btree (content_type_id);


--
-- Name: guardian_groupobjectpermission_group_id_4bbbfb62; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX guardian_groupobjectpermission_group_id_4bbbfb62 ON public.guardian_groupobjectpermission USING btree (group_id);


--
-- Name: guardian_groupobjectpermission_permission_id_36572738; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX guardian_groupobjectpermission_permission_id_36572738 ON public.guardian_groupobjectpermission USING btree (permission_id);


--
-- Name: guardian_us_content_179ed2_idx; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX guardian_us_content_179ed2_idx ON public.guardian_userobjectpermission USING btree (content_type_id, object_pk);


--
-- Name: guardian_userobjectpermission_content_type_id_2e892405; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX guardian_userobjectpermission_content_type_id_2e892405 ON public.guardian_userobjectpermission USING btree (content_type_id);


--
-- Name: guardian_userobjectpermission_permission_id_71807bfc; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX guardian_userobjectpermission_permission_id_71807bfc ON public.guardian_userobjectpermission USING btree (permission_id);


--
-- Name: guardian_userobjectpermission_user_id_d5c1e964; Type: INDEX; Schema: public; Owner: django_user
--

CREATE INDEX guardian_userobjectpermission_user_id_d5c1e964 ON public.guardian_userobjectpermission USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collection_creator civam_collection_cre_collection_id_fde0cdbf_fk_civam_col; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_creator
    ADD CONSTRAINT civam_collection_cre_collection_id_fde0cdbf_fk_civam_col FOREIGN KEY (collection_id) REFERENCES public.civam_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collection_creator civam_collection_cre_personorinstitute_id_698784e6_fk_civam_per; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_creator
    ADD CONSTRAINT civam_collection_cre_personorinstitute_id_698784e6_fk_civam_per FOREIGN KEY (personorinstitute_id) REFERENCES public.civam_personorinstitute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collection civam_collection_created_by_id_b1d49415_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection
    ADD CONSTRAINT civam_collection_created_by_id_b1d49415_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collection_keywords civam_collection_key_collection_id_9d9f6ed6_fk_civam_col; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_keywords
    ADD CONSTRAINT civam_collection_key_collection_id_9d9f6ed6_fk_civam_col FOREIGN KEY (collection_id) REFERENCES public.civam_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collection_keywords civam_collection_key_keyword_id_7b4e58f1_fk_civam_key; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_keywords
    ADD CONSTRAINT civam_collection_key_keyword_id_7b4e58f1_fk_civam_key FOREIGN KEY (keyword_id) REFERENCES public.civam_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collection_location_of_originals civam_collection_loc_collection_id_3fe846be_fk_civam_col; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_location_of_originals
    ADD CONSTRAINT civam_collection_loc_collection_id_3fe846be_fk_civam_col FOREIGN KEY (collection_id) REFERENCES public.civam_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collection_location_of_originals civam_collection_loc_personorinstitute_id_fa8c9c97_fk_civam_per; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection_location_of_originals
    ADD CONSTRAINT civam_collection_loc_personorinstitute_id_fa8c9c97_fk_civam_per FOREIGN KEY (personorinstitute_id) REFERENCES public.civam_personorinstitute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collection civam_collection_modified_by_id_a2a660db_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collection
    ADD CONSTRAINT civam_collection_modified_by_id_a2a660db_fk_auth_user_id FOREIGN KEY (modified_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collectiongroup civam_collectiongrou_collection_id_cff864ff_fk_civam_col; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collectiongroup
    ADD CONSTRAINT civam_collectiongrou_collection_id_cff864ff_fk_civam_col FOREIGN KEY (collection_id) REFERENCES public.civam_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_collectiongroup civam_collectiongroup_group_id_c46c6420_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_collectiongroup
    ADD CONSTRAINT civam_collectiongroup_group_id_c46c6420_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_image civam_image_item_id_7cf3f182_fk_civam_item_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_image
    ADD CONSTRAINT civam_image_item_id_7cf3f182_fk_civam_item_id FOREIGN KEY (item_id) REFERENCES public.civam_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item civam_item_collection_id_03926882_fk_civam_collection_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item
    ADD CONSTRAINT civam_item_collection_id_03926882_fk_civam_collection_id FOREIGN KEY (collection_id) REFERENCES public.civam_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item civam_item_created_by_id_5b4d4cfe_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item
    ADD CONSTRAINT civam_item_created_by_id_5b4d4cfe_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item_creator civam_item_creator_item_id_72039756_fk_civam_item_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_creator
    ADD CONSTRAINT civam_item_creator_item_id_72039756_fk_civam_item_id FOREIGN KEY (item_id) REFERENCES public.civam_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item_creator civam_item_creator_personorinstitute_id_70b77e78_fk_civam_per; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_creator
    ADD CONSTRAINT civam_item_creator_personorinstitute_id_70b77e78_fk_civam_per FOREIGN KEY (personorinstitute_id) REFERENCES public.civam_personorinstitute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item_keywords civam_item_keywords_item_id_00de4cc5_fk_civam_item_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_keywords
    ADD CONSTRAINT civam_item_keywords_item_id_00de4cc5_fk_civam_item_id FOREIGN KEY (item_id) REFERENCES public.civam_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item_keywords civam_item_keywords_keyword_id_d6eddadd_fk_civam_keyword_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_keywords
    ADD CONSTRAINT civam_item_keywords_keyword_id_d6eddadd_fk_civam_keyword_id FOREIGN KEY (keyword_id) REFERENCES public.civam_keyword(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item_location_of_originals civam_item_location__item_id_1062a355_fk_civam_ite; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_location_of_originals
    ADD CONSTRAINT civam_item_location__item_id_1062a355_fk_civam_ite FOREIGN KEY (item_id) REFERENCES public.civam_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item_location_of_originals civam_item_location__personorinstitute_id_cc87f552_fk_civam_per; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item_location_of_originals
    ADD CONSTRAINT civam_item_location__personorinstitute_id_cc87f552_fk_civam_per FOREIGN KEY (personorinstitute_id) REFERENCES public.civam_personorinstitute(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_item civam_item_modified_by_id_97720de0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_item
    ADD CONSTRAINT civam_item_modified_by_id_97720de0_fk_auth_user_id FOREIGN KEY (modified_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_keyword civam_keyword_created_by_id_422c76c4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_keyword
    ADD CONSTRAINT civam_keyword_created_by_id_422c76c4_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_keyword civam_keyword_modified_by_id_9f670191_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_keyword
    ADD CONSTRAINT civam_keyword_modified_by_id_9f670191_fk_auth_user_id FOREIGN KEY (modified_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_narrative civam_narrative_created_by_id_718c18b9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_narrative
    ADD CONSTRAINT civam_narrative_created_by_id_718c18b9_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_narrative civam_narrative_item_id_4964f044_fk_civam_item_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_narrative
    ADD CONSTRAINT civam_narrative_item_id_4964f044_fk_civam_item_id FOREIGN KEY (item_id) REFERENCES public.civam_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_narrative civam_narrative_modified_by_id_6e793b60_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_narrative
    ADD CONSTRAINT civam_narrative_modified_by_id_6e793b60_fk_auth_user_id FOREIGN KEY (modified_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_personorinstitute civam_personorinstitute_created_by_id_cfa8fe6d_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_personorinstitute
    ADD CONSTRAINT civam_personorinstitute_created_by_id_cfa8fe6d_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_personorinstitute civam_personorinstitute_modified_by_id_2c74c2e0_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_personorinstitute
    ADD CONSTRAINT civam_personorinstitute_modified_by_id_2c74c2e0_fk_auth_user_id FOREIGN KEY (modified_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: civam_video civam_video_item_id_6b118b91_fk_civam_item_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.civam_video
    ADD CONSTRAINT civam_video_item_id_6b118b91_fk_civam_item_id FOREIGN KEY (item_id) REFERENCES public.civam_item(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guardian_groupobjectpermission guardian_groupobject_content_type_id_7ade36b8_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobject_content_type_id_7ade36b8_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guardian_groupobjectpermission guardian_groupobject_group_id_4bbbfb62_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobject_group_id_4bbbfb62_fk_auth_grou FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guardian_groupobjectpermission guardian_groupobject_permission_id_36572738_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_groupobjectpermission
    ADD CONSTRAINT guardian_groupobject_permission_id_36572738_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guardian_userobjectpermission guardian_userobjectp_content_type_id_2e892405_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectp_content_type_id_2e892405_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guardian_userobjectpermission guardian_userobjectp_permission_id_71807bfc_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectp_permission_id_71807bfc_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: guardian_userobjectpermission guardian_userobjectpermission_user_id_d5c1e964_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: django_user
--

ALTER TABLE ONLY public.guardian_userobjectpermission
    ADD CONSTRAINT guardian_userobjectpermission_user_id_d5c1e964_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

