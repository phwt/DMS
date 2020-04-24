--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-24 22:14:09

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

--
-- TOC entry 203 (class 1259 OID 16427)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO doadmin;

--
-- TOC entry 202 (class 1259 OID 16425)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO doadmin;

--
-- TOC entry 4136 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 205 (class 1259 OID 16437)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO doadmin;

--
-- TOC entry 204 (class 1259 OID 16435)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO doadmin;

--
-- TOC entry 4137 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 201 (class 1259 OID 16419)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO doadmin;

--
-- TOC entry 200 (class 1259 OID 16417)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO doadmin;

--
-- TOC entry 4138 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 207 (class 1259 OID 16445)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: doadmin
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


ALTER TABLE public.auth_user OWNER TO doadmin;

--
-- TOC entry 209 (class 1259 OID 16455)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO doadmin;

--
-- TOC entry 208 (class 1259 OID 16453)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO doadmin;

--
-- TOC entry 4139 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 206 (class 1259 OID 16443)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO doadmin;

--
-- TOC entry 4140 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 211 (class 1259 OID 16463)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO doadmin;

--
-- TOC entry 210 (class 1259 OID 16461)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO doadmin;

--
-- TOC entry 4141 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 220 (class 1259 OID 16621)
-- Name: authen_department; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.authen_department (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    abbreviation character varying(2) NOT NULL
);


ALTER TABLE public.authen_department OWNER TO doadmin;

--
-- TOC entry 219 (class 1259 OID 16619)
-- Name: authen_department_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.authen_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authen_department_id_seq OWNER TO doadmin;

--
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 219
-- Name: authen_department_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.authen_department_id_seq OWNED BY public.authen_department.id;


--
-- TOC entry 222 (class 1259 OID 16629)
-- Name: authen_employee; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.authen_employee (
    id integer NOT NULL,
    department_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authen_employee OWNER TO doadmin;

--
-- TOC entry 221 (class 1259 OID 16627)
-- Name: authen_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.authen_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authen_employee_id_seq OWNER TO doadmin;

--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 221
-- Name: authen_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.authen_employee_id_seq OWNED BY public.authen_employee.id;


--
-- TOC entry 213 (class 1259 OID 16523)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: doadmin
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


ALTER TABLE public.django_admin_log OWNER TO doadmin;

--
-- TOC entry 212 (class 1259 OID 16521)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO doadmin;

--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 199 (class 1259 OID 16409)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO doadmin;

--
-- TOC entry 198 (class 1259 OID 16407)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO doadmin;

--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 197 (class 1259 OID 16398)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO doadmin;

--
-- TOC entry 196 (class 1259 OID 16396)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO doadmin;

--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 214 (class 1259 OID 16554)
-- Name: django_session; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO doadmin;

--
-- TOC entry 216 (class 1259 OID 16566)
-- Name: document_document; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.document_document (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    file_location character varying(100)
);


ALTER TABLE public.document_document OWNER TO doadmin;

--
-- TOC entry 215 (class 1259 OID 16564)
-- Name: document_document_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.document_document_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_document_id_seq OWNER TO doadmin;

--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 215
-- Name: document_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.document_document_id_seq OWNED BY public.document_document.id;


--
-- TOC entry 217 (class 1259 OID 16572)
-- Name: document_externaldoc; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.document_externaldoc (
    source text NOT NULL,
    detail text,
    document_ptr_id integer NOT NULL,
    create_date timestamp with time zone NOT NULL,
    creator_id integer NOT NULL
);


ALTER TABLE public.document_externaldoc OWNER TO doadmin;

--
-- TOC entry 218 (class 1259 OID 16580)
-- Name: document_internaldoc; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.document_internaldoc (
    version integer NOT NULL,
    running_no integer NOT NULL,
    type character varying(1) NOT NULL,
    state character varying(2) NOT NULL,
    parent_doc_id integer,
    document_ptr_id integer NOT NULL,
    creator_id integer NOT NULL
);


ALTER TABLE public.document_internaldoc OWNER TO doadmin;

--
-- TOC entry 224 (class 1259 OID 16650)
-- Name: work_delegateuser; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.work_delegateuser (
    id integer NOT NULL,
    result boolean,
    deadline timestamp with time zone NOT NULL,
    employee_id integer NOT NULL,
    work_id integer NOT NULL,
    completed boolean NOT NULL
);


ALTER TABLE public.work_delegateuser OWNER TO doadmin;

--
-- TOC entry 223 (class 1259 OID 16648)
-- Name: work_delegateuser_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.work_delegateuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_delegateuser_id_seq OWNER TO doadmin;

--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 223
-- Name: work_delegateuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.work_delegateuser_id_seq OWNED BY public.work_delegateuser.id;


--
-- TOC entry 226 (class 1259 OID 16658)
-- Name: work_work; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.work_work (
    id integer NOT NULL,
    complete_date timestamp with time zone,
    create_date timestamp with time zone NOT NULL,
    document_id integer NOT NULL,
    creator_id integer NOT NULL,
    state character varying(3) NOT NULL,
    type character varying(2) NOT NULL,
    detail text NOT NULL,
    latest_delegate_id integer,
    new_document_id integer
);


ALTER TABLE public.work_work OWNER TO doadmin;

--
-- TOC entry 225 (class 1259 OID 16656)
-- Name: work_work_id_seq; Type: SEQUENCE; Schema: public; Owner: doadmin
--

CREATE SEQUENCE public.work_work_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.work_work_id_seq OWNER TO doadmin;

--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 225
-- Name: work_work_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.work_work_id_seq OWNED BY public.work_work.id;


--
-- TOC entry 3873 (class 2604 OID 16430)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3874 (class 2604 OID 16440)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3872 (class 2604 OID 16422)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3875 (class 2604 OID 16448)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3876 (class 2604 OID 16458)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3877 (class 2604 OID 16466)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3881 (class 2604 OID 16624)
-- Name: authen_department id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_department ALTER COLUMN id SET DEFAULT nextval('public.authen_department_id_seq'::regclass);


--
-- TOC entry 3882 (class 2604 OID 16632)
-- Name: authen_employee id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee ALTER COLUMN id SET DEFAULT nextval('public.authen_employee_id_seq'::regclass);


--
-- TOC entry 3878 (class 2604 OID 16526)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3871 (class 2604 OID 16412)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3870 (class 2604 OID 16401)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3880 (class 2604 OID 16569)
-- Name: document_document id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_document ALTER COLUMN id SET DEFAULT nextval('public.document_document_id_seq'::regclass);


--
-- TOC entry 3883 (class 2604 OID 16653)
-- Name: work_delegateuser id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_delegateuser ALTER COLUMN id SET DEFAULT nextval('public.work_delegateuser_id_seq'::regclass);


--
-- TOC entry 3884 (class 2604 OID 16661)
-- Name: work_work id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work ALTER COLUMN id SET DEFAULT nextval('public.work_work_id_seq'::regclass);


--
-- TOC entry 4107 (class 0 OID 16427)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_group (id, name) FROM stdin;
1	DCC
2	MR
3	VP
4	SVP
\.


--
-- TOC entry 4109 (class 0 OID 16437)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4105 (class 0 OID 16419)
-- Dependencies: 201
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add external doc	7	add_externaldoc
26	Can change external doc	7	change_externaldoc
27	Can delete external doc	7	delete_externaldoc
28	Can view external doc	7	view_externaldoc
29	Can add internal doc	8	add_internaldoc
30	Can change internal doc	8	change_internaldoc
31	Can delete internal doc	8	delete_internaldoc
32	Can view internal doc	8	view_internaldoc
33	Can add document	9	add_document
34	Can change document	9	change_document
35	Can delete document	9	delete_document
36	Can view document	9	view_document
37	Can add department	10	add_department
38	Can change department	10	change_department
39	Can delete department	10	delete_department
40	Can view department	10	view_department
41	Can add employee	11	add_employee
42	Can change employee	11	change_employee
43	Can delete employee	11	delete_employee
44	Can view employee	11	view_employee
45	Can add delegate user	12	add_delegateuser
46	Can change delegate user	12	change_delegateuser
47	Can delete delegate user	12	delete_delegateuser
48	Can view delegate user	12	view_delegateuser
49	Can add work	13	add_work
50	Can change work	13	change_work
51	Can delete work	13	delete_work
52	Can view work	13	view_work
\.


--
-- TOC entry 4111 (class 0 OID 16445)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$2yrCx3BHLYcx$H9U9EfstRW3MtNQJ3lKgeE5Row7r9HIkPag1b2gnaMg=	2020-04-24 14:27:53.372131+00	t	admin	System	Admin		t	t	2020-04-17 18:47:04.201005+00
8	pbkdf2_sha256$180000$WTXweQkPmG6y$F54eFmp3CU3U8f4g91BhC/8XSzGytlWRPKB0KnLVgKQ=	\N	f	test_user				f	t	2020-04-23 14:10:03.063344+00
5	pbkdf2_sha256$180000$yXxBKHu2Ludu$kLatj/f5fuAfhPR7J53y+KimQbmVHkKdOHmZHfKMWNg=	2020-04-23 15:02:32.057858+00	f	test_svp	SVP	Employee		f	t	2020-04-20 16:49:43+00
3	pbkdf2_sha256$180000$9FdieeVDx76j$eFyeUxruMYUHKaNA/e7TUdEnxOL9yuVNKC3kHiPK73w=	2020-04-23 15:06:22.542527+00	f	test_mr	MR	Employee		f	t	2020-04-20 16:49:21+00
4	pbkdf2_sha256$180000$r2dqNxCDj8qm$Me2GThX58IfuH2IndSvPjp7uKmIUfHEGiAMl5Bmvjq8=	2020-04-23 15:09:31.959729+00	f	test_vp	VP	Employee		f	t	2020-04-20 16:49:31+00
2	pbkdf2_sha256$180000$3BBydSdA5D17$q7a7MNUF8ny8Kyu4iRLuodx1RHNZ7MQceptk5V8TajQ=	2020-04-23 15:09:36.807361+00	f	test_dcc	DCC	Employee		f	t	2020-04-20 14:27:36+00
6	pbkdf2_sha256$180000$YC3RimaEMhox$fqfBqXTKrgwgMS5seGbkLIfRJdJahhZuNYxWnLFAPZ4=	2020-04-23 15:05:51.188758+00	f	test_employee	Employee	Employee		f	t	2020-04-23 13:15:26.846989+00
\.


--
-- TOC entry 4113 (class 0 OID 16455)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
2	5	4
3	3	2
4	4	3
\.


--
-- TOC entry 4115 (class 0 OID 16463)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4124 (class 0 OID 16621)
-- Dependencies: 220
-- Data for Name: authen_department; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.authen_department (id, name, abbreviation) FROM stdin;
1	R&D	RD
\.


--
-- TOC entry 4126 (class 0 OID 16629)
-- Dependencies: 222
-- Data for Name: authen_employee; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.authen_employee (id, department_id, user_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
\.


--
-- TOC entry 4117 (class 0 OID 16523)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-04-19 08:13:46.228954+00	1	DCC	1	[{"added": {}}]	3	1
2	2020-04-19 08:13:51.506145+00	2	MR	1	[{"added": {}}]	3	1
3	2020-04-19 08:13:57.479618+00	3	VP	1	[{"added": {}}]	3	1
4	2020-04-19 08:14:01.751202+00	4	SVP	1	[{"added": {}}]	3	1
5	2020-04-20 14:27:37.343737+00	2	test_dcc	1	[{"added": {}}]	4	1
6	2020-04-20 14:27:45.462656+00	2	test_dcc	2	[{"changed": {"fields": ["Groups"]}}]	4	1
7	2020-04-20 16:49:21.987396+00	3	test_mr	1	[{"added": {}}]	4	1
8	2020-04-20 16:49:31.618025+00	4	test_vp	1	[{"added": {}}]	4	1
9	2020-04-20 16:49:43.494014+00	5	test_svp	1	[{"added": {}}]	4	1
10	2020-04-20 16:49:53.168022+00	5	test_svp	2	[{"changed": {"fields": ["Groups"]}}]	4	1
11	2020-04-20 16:50:06.886432+00	3	test_mr	2	[{"changed": {"fields": ["Groups"]}}]	4	1
12	2020-04-20 16:50:15.423967+00	4	test_vp	2	[{"changed": {"fields": ["Groups"]}}]	4	1
13	2020-04-23 13:15:27.166235+00	6	test_employee	1	[{"added": {}}]	4	1
14	2020-04-23 14:06:07.444336+00	7	test_ex	1	[{"added": {}}]	4	1
15	2020-04-23 14:06:39.598436+00	7	test_ex	3		4	1
16	2020-04-23 14:10:03.498878+00	8	test_user	1	[{"added": {}}]	4	1
\.


--
-- TOC entry 4103 (class 0 OID 16409)
-- Dependencies: 199
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	document	externaldoc
8	document	internaldoc
9	document	document
10	authen	department
11	authen	employee
12	work	delegateuser
13	work	work
\.


--
-- TOC entry 4101 (class 0 OID 16398)
-- Dependencies: 197
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-04-16 16:38:21.94841+00
2	auth	0001_initial	2020-04-16 16:38:22.421456+00
3	admin	0001_initial	2020-04-16 16:38:23.508439+00
4	admin	0002_logentry_remove_auto_add	2020-04-16 16:38:23.849932+00
5	admin	0003_logentry_add_action_flag_choices	2020-04-16 16:38:24.034426+00
6	contenttypes	0002_remove_content_type_name	2020-04-16 16:38:24.330558+00
7	auth	0002_alter_permission_name_max_length	2020-04-16 16:38:24.542185+00
8	auth	0003_alter_user_email_max_length	2020-04-16 16:38:24.763535+00
9	auth	0004_alter_user_username_opts	2020-04-16 16:38:24.929426+00
10	auth	0005_alter_user_last_login_null	2020-04-16 16:38:25.153088+00
11	auth	0006_require_contenttypes_0002	2020-04-16 16:38:25.31409+00
12	auth	0007_alter_validators_add_error_messages	2020-04-16 16:38:25.491154+00
13	auth	0008_alter_user_username_max_length	2020-04-16 16:38:25.718443+00
14	auth	0009_alter_user_last_name_max_length	2020-04-16 16:38:25.939536+00
15	auth	0010_alter_group_name_max_length	2020-04-16 16:38:26.144557+00
16	auth	0011_update_proxy_permissions	2020-04-16 16:38:26.327672+00
17	sessions	0001_initial	2020-04-16 16:38:26.543012+00
18	document	0001_initial	2020-04-17 14:56:29.781584+00
19	document	0002_auto_20200417_2237	2020-04-17 15:37:26.376984+00
20	document	0003_auto_20200417_2322	2020-04-17 16:22:28.281243+00
21	document	0004_auto_20200417_2323	2020-04-17 16:23:59.237729+00
22	document	0005_document_file_location	2020-04-17 17:26:51.915788+00
23	document	0006_auto_20200419_0112	2020-04-18 18:13:08.06842+00
24	authen	0001_initial	2020-04-18 19:16:14.880581+00
25	work	0001_initial	2020-04-18 19:34:45.611613+00
26	document	0007_auto_20200419_1358	2020-04-19 07:09:36.612314+00
27	work	0002_auto_20200419_1358	2020-04-19 07:09:37.756674+00
28	work	0003_auto_20200419_1409	2020-04-19 07:09:38.639532+00
29	work	0004_auto_20200419_1410	2020-04-19 07:10:40.362649+00
30	work	0005_auto_20200419_1425	2020-04-19 07:25:23.554555+00
31	authen	0002_auto_20200419_1444	2020-04-19 07:44:24.999591+00
32	authen	0003_auto_20200419_1449	2020-04-19 07:49:51.556771+00
33	document	0008_auto_20200419_1452	2020-04-19 07:52:40.80402+00
34	document	0009_auto_20200419_1453	2020-04-19 07:53:19.643076+00
35	authen	0004_remove_employee_role	2020-04-19 08:19:21.092595+00
36	work	0006_work_detail	2020-04-19 11:32:19.271471+00
37	work	0007_auto_20200420_2022	2020-04-20 13:22:52.633508+00
38	work	0008_delegateuser_completed	2020-04-20 13:52:01.324032+00
39	document	0010_auto_20200421_2046	2020-04-21 13:46:37.813942+00
40	work	0009_work_latest_delegate	2020-04-21 13:46:38.055033+00
41	document	0011_auto_20200422_2045	2020-04-22 13:45:29.46577+00
42	work	0010_work_new_document	2020-04-23 19:59:38.186927+00
43	authen	0005_department_abbreviation	2020-04-24 08:15:52.717031+00
\.


--
-- TOC entry 4118 (class 0 OID 16554)
-- Dependencies: 214
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
y54vd4t0wwa3lsn98uj34be1oqtigvek	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-07 14:05:09.481246+00
mseolrg7i59yr3di2jp806gjhs7bjfg2	NGJmODhlNjRkMGU4NWFjYTU2NDI0ZWI5YjRlZTFiODBkYjE5NWFlYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMTQzYTVkOTQ4ZTk1OTkxMzBhNTVjMTk3NzVlYTllNzM5OTBjZGYzIn0=	2020-05-07 14:41:07.15606+00
9minp3uomprcfvonp6x7brphjjh29hej	NGJmODhlNjRkMGU4NWFjYTU2NDI0ZWI5YjRlZTFiODBkYjE5NWFlYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMTQzYTVkOTQ4ZTk1OTkxMzBhNTVjMTk3NzVlYTllNzM5OTBjZGYzIn0=	2020-05-07 15:05:13.330549+00
71wsokx3386ei8g8nsp1dh2kctg4a9d8	ZWRlNDk3OGUzNDRmMDcwNGRkMGU0NzFlZWQ4ZDI4ODAwMzQ5YTM5YTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwZWUxYzljYmMxNzBlYjZiYmM3OWVmMmVlZTZhZTFlNjU1OWU3MDQ2In0=	2020-05-07 15:06:22.584494+00
4oy63tepyi9fohihk9fbrzan5zpdxu82	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-03 14:06:34.682418+00
4m5rl9knel9v6678xmzckileryqucsan	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-03 17:01:20.821593+00
9hgts1fyit9ltey0orjv9aiub3c43y6h	NGJmODhlNjRkMGU4NWFjYTU2NDI0ZWI5YjRlZTFiODBkYjE5NWFlYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMTQzYTVkOTQ4ZTk1OTkxMzBhNTVjMTk3NzVlYTllNzM5OTBjZGYzIn0=	2020-05-07 15:09:36.841493+00
whyfhoqd465k7fmepv42bu2wxmikq8yx	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-04 12:34:58.623794+00
rfp39zeuvl6x7jabdixheqruifet1xdi	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-08 09:37:25.728052+00
ij77zdoht3iy0bavjgv0crp4jcujguls	NGJmODhlNjRkMGU4NWFjYTU2NDI0ZWI5YjRlZTFiODBkYjE5NWFlYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMTQzYTVkOTQ4ZTk1OTkxMzBhNTVjMTk3NzVlYTllNzM5OTBjZGYzIn0=	2020-05-05 09:12:37.180529+00
pu2g7o2o5md5qqiwwqi5qyidcnkgjmzw	NGJmODhlNjRkMGU4NWFjYTU2NDI0ZWI5YjRlZTFiODBkYjE5NWFlYjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMTQzYTVkOTQ4ZTk1OTkxMzBhNTVjMTk3NzVlYTllNzM5OTBjZGYzIn0=	2020-05-05 10:12:02.486326+00
2ftn59kdco1e9cbv4rkvgwasd1adlvte	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-08 14:26:44.507703+00
8kwqh5mgyag6u6lvf5g1uusyw8scenvd	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-06 13:19:09.816865+00
rhip4g5d66or4e081f3hgt6zs0bdmgu0	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-08 14:27:53.429336+00
\.


--
-- TOC entry 4120 (class 0 OID 16566)
-- Dependencies: 216
-- Data for Name: document_document; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.document_document (id, name, file_location) FROM stdin;
16	test upload	fh.jpg
8	Otto von Bismarck	dummy.pdf
9	COVID-19 Report	dummy.pdf
12	Test Internal Doc 1	dummy.pdf
13	Test Internal Doc 2	dummy.pdf
14	Test Internal Doc 3 with parent	dummy.pdf
15	Test ModelForm	dummy.pdf
17	Test Link Document Creation with Work	dummy.pdf
18	Test work creation	dummy.pdf
19	Test work creation	dummy.pdf
20	1	
21	Test Delegate	
22	Test Delegate 2	
23	Test Delegate 3	
24	Test Delegate 3	
25	Test Delegate Recall	
26	Test Delegate Recall 2	
27	Test Approval	
28	Test Save	
29	test save 2	dummy_JNpQoCp.pdf
62	doggy	dummy_bDiKoCN.pdf
31	Test Hide	dummy_5oqJ70O.pdf
32	parent test	dummy_BaIuYlY.pdf
33	Test Work 1	
35	Test Complete (Recall)	dummy_hEdU3go.pdf
36	Test In-Progress	dummy_p8MSdxi.pdf
37	Test New	
38	Test New Again	
40	test	dummy_DmcoRav.pdf
41	test	dummy_tNOXACd.pdf
34	Test Completed	dummy_o3MJOHy.pdf
30	test save 3	fh_baUeRkf.jpg
42	Chisqr	
43	กระเพรากุ้ง	
44	chisqr2	
46	Chisqr4	
45	หมึกผัดไข่เค็ม	aetrjhsrtjsdrjtj.jpg
47	ชูก้ากระเทียมพริกไทย	p9aczamcob2myEoF37a-o.jpg
49	hey	dummy_r97NIhj.pdf
50	Test Emloyee add ext	dummy_6lInr8r.pdf
48	ชูก้ากระเทียมพริกไทยV.2	dummy_7Qldby5.pdf
52	kwai	fh_XYpVlKT.jpg
53	ASD	
54		
55	doggy	
56	ชูก้ากระเทียมพริกไทยV.2	
57	หมึกผัดไข่เค็ม	
58	หมึกผัดไข่เค็ม	
59	Test work creation	
60	doggy	
61	doggy	
51	doggy	swag_rFPKTXO.png
\.


--
-- TOC entry 4121 (class 0 OID 16572)
-- Dependencies: 217
-- Data for Name: document_externaldoc; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.document_externaldoc (source, detail, document_ptr_id, create_date, creator_id) FROM stdin;
Test ModelForm	Test ModelForm	15	2020-04-18 18:13:07.888498+00	1
test upload	test upload	16	2020-04-18 18:13:07.888498+00	1
tet	taste	40	2020-04-21 14:27:44.902718+00	1
tet	taste	41	2020-04-21 14:28:04.931874+00	1
https://en.wikipedia.org/wiki/Otto_von_Bismarck	Wikipedia page of Otto von Bismarck	8	2020-04-18 18:13:07.888498+00	2
https://covid19.ddc.moph.go.th/	Offical COVID-19 report from Ministry of Disease	9	2020-04-18 18:13:07.888498+00	2
wakeup	sada	49	2020-04-23 14:38:53.582327+00	1
asdad	asdad	50	2020-04-23 14:39:34.154914+00	6
\.


--
-- TOC entry 4122 (class 0 OID 16580)
-- Dependencies: 218
-- Data for Name: document_internaldoc; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.document_internaldoc (version, running_no, type, state, parent_doc_id, document_ptr_id, creator_id) FROM stdin;
2	1	P	IN	\N	17	1
1	1	M	IN	\N	12	1
1	2	W	OB	\N	13	1
1	1	W	OB	13	14	1
1	1	W	RE	\N	18	1
1	1	W	RC	\N	19	1
1	1	M	IN	12	20	1
1	1	P		\N	21	1
1	1	W		\N	22	1
1	1	W		\N	23	1
1	1	M		\N	24	1
1	1	M		\N	25	1
1	1	W		\N	26	1
1	1	M		\N	27	1
1	1	M		\N	28	1
1	1	M		\N	29	1
1	1	P	RC	\N	31	1
1	1	W	IN	14	32	1
1	1	M	IN	\N	33	1
1	1	W	RC	\N	35	1
1	1	P	IN	\N	36	1
1	1	F	IN	\N	37	1
1	1	P	IN	\N	38	1
1	1	M	OB	\N	34	1
2	1	P	RE	\N	30	1
1	1	M	IN	12	42	1
20	5	M	IN	20	43	1
1	1	M	IN	42	44	1
1	1	M	IN	\N	46	2
5	2	M	RE	\N	45	2
100	1	P	RC	\N	47	3
100	2	P	RE	\N	48	3
1	1	M	IN	\N	52	3
1	1	P	IN	\N	53	3
2	1	W	IN	\N	54	3
2	1	M	IN	\N	55	3
101	2	P	IN	\N	56	3
6	2	M	IN	\N	57	3
6	2	M	IN	\N	58	3
2	1	W	IN	\N	59	3
2	1	M	IN	\N	60	3
2	1	M	IN	\N	61	3
1	1	M	OB	\N	51	6
2	1	M	RE	\N	62	3
\.


--
-- TOC entry 4128 (class 0 OID 16650)
-- Dependencies: 224
-- Data for Name: work_delegateuser; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.work_delegateuser (id, result, deadline, employee_id, work_id, completed) FROM stdin;
107	\N	2020-04-28 22:07:14.442685+00	2	54	f
38	\N	2020-04-26 20:53:04.5139+00	1	21	t
39	\N	2020-04-26 20:53:14.900983+00	2	21	t
40	\N	2020-04-26 20:55:09.898186+00	3	21	t
41	\N	2020-04-26 20:55:12.043107+00	4	21	t
42	\N	2020-04-26 20:55:14.457668+00	5	21	t
43	\N	2020-04-26 20:55:41.449579+00	1	22	t
44	\N	2020-04-26 20:55:46.862415+00	2	22	t
45	\N	2020-04-26 20:55:50.197667+00	3	22	t
46	\N	2020-04-26 20:55:53.100838+00	4	22	t
47	\N	2020-04-26 20:56:23.63185+00	1	23	t
48	\N	2020-04-26 20:56:33.773942+00	2	23	f
49	\N	2020-04-26 20:56:46.427479+00	1	24	f
50	\N	2020-04-26 21:19:08.646969+00	1	25	f
51	\N	2020-04-27 19:46:13.253742+00	2	31	f
52	\N	2020-04-27 19:46:39.097141+00	2	32	t
53	\N	2020-04-27 19:47:05.638313+00	3	32	t
54	\N	2020-04-27 19:47:08.703078+00	4	32	t
55	\N	2020-04-27 19:47:10.815762+00	5	32	t
56	\N	2020-04-27 19:47:54.681481+00	2	33	t
57	\N	2020-04-27 19:48:05.721051+00	2	33	t
58	\N	2020-04-27 19:48:08.996224+00	3	33	t
59	\N	2020-04-27 19:48:10.971587+00	4	33	t
60	\N	2020-04-27 19:48:13.265222+00	5	33	t
61	\N	2020-04-27 19:49:18.309475+00	2	34	t
62	\N	2020-04-27 19:49:25.3031+00	2	34	t
63	\N	2020-04-27 19:49:27.711398+00	3	34	t
64	\N	2020-04-27 19:49:29.699737+00	4	34	t
65	\N	2020-04-27 19:49:31.618906+00	5	34	t
66	\N	2020-04-28 20:12:30.115736+00	1	35	f
67	\N	2020-04-28 20:12:41.097803+00	1	36	f
68	\N	2020-04-28 20:28:52.212941+00	1	37	f
69	\N	2020-04-28 20:29:44.492264+00	2	38	t
70	\N	2020-04-28 20:30:32.619119+00	2	38	t
72	\N	2020-04-28 20:34:12.653982+00	2	39	f
71	\N	2020-04-28 20:31:39.27323+00	3	38	t
73	\N	2020-04-28 20:37:25.722779+00	4	38	t
74	\N	2020-04-28 20:38:30.272585+00	5	38	t
76	\N	2020-04-28 20:42:04.775527+00	2	41	f
75	\N	2020-04-28 20:40:56.557419+00	2	40	t
77	\N	2020-04-28 20:42:56.902974+00	2	40	t
78	\N	2020-04-28 20:43:39.832076+00	3	40	t
79	\N	2020-04-28 20:46:05.311185+00	4	40	t
80	\N	2020-04-28 20:47:17.088831+00	5	40	t
81	\N	2020-04-28 20:49:43.322505+00	2	42	f
82	\N	2020-04-28 20:55:16.777095+00	3	43	t
83	\N	2020-04-28 20:55:41.673461+00	2	43	t
84	\N	2020-04-28 20:57:49.207765+00	3	44	t
85	\N	2020-04-28 20:57:57.808688+00	2	44	t
86	\N	2020-04-28 20:58:08.972111+00	3	44	t
87	\N	2020-04-28 20:58:23.332065+00	4	44	t
88	\N	2020-04-28 20:58:33.357358+00	5	44	t
89	\N	2020-04-28 20:59:27.061044+00	2	45	t
90	\N	2020-04-28 21:00:36.253022+00	2	45	t
91	\N	2020-04-28 21:00:43.141443+00	3	45	t
92	\N	2020-04-28 21:42:07.987338+00	2	46	f
93	\N	2020-04-28 21:52:35.594929+00	4	47	t
94	\N	2020-04-28 21:53:06.066502+00	2	47	f
95	\N	2020-04-28 21:53:56.135555+00	2	48	t
96	\N	2020-04-28 21:54:04.29155+00	2	48	t
97	\N	2020-04-28 21:54:07.902594+00	3	48	f
98	\N	2020-04-28 21:58:54.479318+00	6	49	t
99	\N	2020-04-28 22:01:21.907789+00	2	49	t
100	\N	2020-04-28 22:01:48.022535+00	3	49	t
101	\N	2020-04-28 22:02:05.976488+00	4	49	t
102	\N	2020-04-28 22:02:26.458127+00	5	49	t
103	\N	2020-04-28 22:03:33.092754+00	2	50	f
104	\N	2020-04-28 22:04:56.129767+00	4	51	f
105	\N	2020-04-28 22:06:01.451708+00	6	52	f
106	\N	2020-04-28 22:06:31.817053+00	3	53	f
108	\N	2020-04-28 22:08:51.869775+00	4	55	t
109	\N	2020-04-28 22:08:59.017677+00	2	55	f
110	\N	2020-04-28 22:09:47.414499+00	2	56	t
111	\N	2020-04-28 22:10:01.573866+00	2	56	f
112	\N	2020-04-28 22:10:20.785325+00	2	57	t
113	\N	2020-04-28 22:11:13.559787+00	2	57	f
114	\N	2020-04-28 23:07:39.470676+00	3	58	t
115	\N	2020-04-28 23:08:00.530537+00	2	58	f
116	\N	2020-04-28 23:19:05.561595+00	3	62	f
117	\N	2020-04-28 23:19:45.197051+00	3	63	f
118	\N	2020-04-28 23:20:08.089596+00	2	64	f
119	\N	2020-04-28 20:13:49.734995+00	3	65	f
120	\N	2020-04-28 20:16:21.078029+00	3	66	f
121	\N	2020-04-28 20:23:02.707602+00	3	67	f
122	\N	2020-04-28 20:24:52.306112+00	3	68	f
123	\N	2020-04-29 07:36:50.712854+00	3	69	f
124	\N	2020-04-29 07:38:18.505389+00	3	70	f
125	\N	2020-04-29 07:41:57.150264+00	3	71	t
126	\N	2020-04-29 07:44:03.242962+00	2	71	f
127	\N	2020-04-29 07:48:05.65841+00	3	72	t
128	\N	2020-04-29 07:48:44.032215+00	2	72	t
129	\N	2020-04-29 07:56:07.332645+00	3	72	t
130	\N	2020-04-29 07:56:09.769954+00	4	72	t
131	\N	2020-04-29 07:56:12.088817+00	5	72	t
\.


--
-- TOC entry 4130 (class 0 OID 16658)
-- Dependencies: 226
-- Data for Name: work_work; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.work_work (id, complete_date, create_date, document_id, creator_id, state, type, detail, latest_delegate_id, new_document_id) FROM stdin;
22	2020-04-21 20:55:55.181305+00	2020-04-21 13:55:41.408464+00	35	1	C	CR		\N	\N
23	\N	2020-04-21 13:56:23.587862+00	36	1	DCC	CR		2	\N
24	\N	2020-04-21 13:56:46.379491+00	37	1	N	CR		\N	\N
25	\N	2020-04-21 14:19:08.576938+00	38	1	N	CR		1	\N
26	\N	2020-04-22 09:21:00.525871+00	14	1	N	CA		\N	\N
27	\N	2020-04-22 09:21:07.683723+00	23	1	N	E		\N	\N
28	\N	2020-04-22 09:21:07.984393+00	23	1	N	E		\N	\N
29	\N	2020-04-22 10:02:34.701531+00	20	1	DCC	CA		\N	\N
30	\N	2020-04-22 10:16:40.124538+00	34	1	DCC	CA		\N	\N
31	\N	2020-04-22 12:46:13.200773+00	18	1	DCC	CA	dunno	2	\N
32	2020-04-22 19:47:13.266794+00	2020-04-22 12:46:39.054166+00	34	1	C	CA	asd	\N	\N
63	\N	2020-04-23 16:19:45.149078+00	30	3	N	E	FD	3	\N
33	2020-04-22 19:48:20.447015+00	2020-04-22 12:47:54.634496+00	30	1	C	E	edit	\N	\N
64	\N	2020-04-23 16:20:08.04757+00	30	3	DCC	CA	SDFSD	2	\N
34	2020-04-22 19:49:34.126007+00	2020-04-22 12:49:18.268502+00	30	1	C	E	asd	\N	\N
35	\N	2020-04-23 13:12:30.083985+00	42	1	N	CR		1	\N
36	\N	2020-04-23 13:12:41.062897+00	43	1	N	CR		1	\N
37	\N	2020-04-23 13:28:52.181272+00	44	1	N	CR		1	\N
65	\N	2020-04-23 20:13:49.69203+00	18	3	N	E	edit	3	\N
39	\N	2020-04-23 13:34:12.616997+00	46	2	N	CR		2	\N
38	2020-04-23 20:39:50.535163+00	2020-04-23 13:29:44.459354+00	45	2	C	CR		\N	\N
41	\N	2020-04-23 13:42:04.735725+00	30	5	DCC	CA	ยกเลิกทิ้ง	2	\N
66	\N	2020-04-23 20:16:21.038052+00	51	3	N	E	edit	3	\N
40	2020-04-23 20:48:17.125641+00	2020-04-23 13:40:56.522542+00	45	5	C	E	แก้ให้ด้วย ไม่กินหมึก	\N	\N
42	\N	2020-04-23 13:49:43.288756+00	45	5	DCC	CA	cancel	2	\N
43	2020-04-23 20:56:12.764657+00	2020-04-23 13:55:16.742184+00	47	3	C	CR		\N	\N
21	2020-04-21 20:55:16.804923+00	2020-04-21 13:53:04.473802+00	34	1	C	CR		\N	\N
44	2020-04-23 20:58:46.736248+00	2020-04-23 13:57:49.173889+00	48	3	C	CR		\N	\N
67	\N	2020-04-23 20:23:02.666482+00	48	3	N	E	sz	3	\N
45	2020-04-23 21:01:18.220273+00	2020-04-23 13:59:27.029066+00	48	2	C	E	asd	\N	\N
46	\N	2020-04-23 14:42:07.946222+00	45	4	N	E	Test VP edit	2	\N
47	\N	2020-04-23 14:52:35.552938+00	48	4	DCC	E	asdsad	2	\N
68	\N	2020-04-23 20:24:52.265118+00	45	3	N	E	asdsad	3	\N
48	\N	2020-04-23 14:53:56.092578+00	48	2	MR	E	sad	3	\N
49	2020-04-23 22:02:59.484985+00	2020-04-23 14:58:54.445278+00	51	6	C	CR		\N	\N
50	\N	2020-04-23 15:03:33.057785+00	51	3	N	E	aaaa	2	\N
51	\N	2020-04-23 15:04:56.084765+00	51	4	N	E	EDIT	4	\N
52	\N	2020-04-23 15:06:01.408746+00	51	6	N	E	ASDASD	6	\N
53	\N	2020-04-23 15:06:31.776028+00	30	3	N	E	ada	3	\N
54	\N	2020-04-23 15:07:14.408088+00	51	2	N	E	3rqwea2sfZXDC	2	\N
55	\N	2020-04-23 15:08:51.828939+00	51	4	DCC	E	a	2	\N
56	\N	2020-04-23 15:09:47.379979+00	51	2	DCC	E	jgv	2	\N
57	\N	2020-04-23 15:10:20.750341+00	51	2	DCC	E	asdasd	2	\N
58	\N	2020-04-23 16:07:39.427654+00	52	3	DCC	CR		2	\N
62	\N	2020-04-23 16:19:05.517633+00	53	3	N	CR		3	\N
69	\N	2020-04-24 07:36:50.450745+00	45	3	N	E	edit	3	\N
70	\N	2020-04-24 07:38:18.464138+00	18	3	N	E	asda	3	\N
71	\N	2020-04-24 07:41:57.102292+00	51	3	DCC	E	asf	2	61
72	\N	2020-04-24 07:48:05.613452+00	51	3	SVP	E	e	5	62
\.


--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);


--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);


--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 8, true);


--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 219
-- Name: authen_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.authen_department_id_seq', 1, true);


--
-- TOC entry 4157 (class 0 OID 0)
-- Dependencies: 221
-- Name: authen_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.authen_employee_id_seq', 5, true);


--
-- TOC entry 4158 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- TOC entry 4159 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- TOC entry 4160 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 43, true);


--
-- TOC entry 4161 (class 0 OID 0)
-- Dependencies: 215
-- Name: document_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.document_document_id_seq', 63, true);


--
-- TOC entry 4162 (class 0 OID 0)
-- Dependencies: 223
-- Name: work_delegateuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.work_delegateuser_id_seq', 133, true);


--
-- TOC entry 4163 (class 0 OID 0)
-- Dependencies: 225
-- Name: work_work_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.work_work_id_seq', 73, true);


--
-- TOC entry 3898 (class 2606 OID 16552)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3903 (class 2606 OID 16479)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3906 (class 2606 OID 16442)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3900 (class 2606 OID 16432)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3893 (class 2606 OID 16470)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3895 (class 2606 OID 16424)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3914 (class 2606 OID 16460)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3917 (class 2606 OID 16494)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3908 (class 2606 OID 16450)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3920 (class 2606 OID 16468)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3923 (class 2606 OID 16508)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3911 (class 2606 OID 16546)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3942 (class 2606 OID 16626)
-- Name: authen_department authen_department_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_department
    ADD CONSTRAINT authen_department_pkey PRIMARY KEY (id);


--
-- TOC entry 3945 (class 2606 OID 16634)
-- Name: authen_employee authen_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3947 (class 2606 OID 16636)
-- Name: authen_employee authen_employee_user_id_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_user_id_key UNIQUE (user_id);


--
-- TOC entry 3926 (class 2606 OID 16532)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3888 (class 2606 OID 16416)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3890 (class 2606 OID 16414)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3886 (class 2606 OID 16406)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3930 (class 2606 OID 16561)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3933 (class 2606 OID 16571)
-- Name: document_document document_document_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_document
    ADD CONSTRAINT document_document_pkey PRIMARY KEY (id);


--
-- TOC entry 3936 (class 2606 OID 16604)
-- Name: document_externaldoc document_externaldoc_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_externaldoc
    ADD CONSTRAINT document_externaldoc_pkey PRIMARY KEY (document_ptr_id);


--
-- TOC entry 3940 (class 2606 OID 16612)
-- Name: document_internaldoc document_internaldoc_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_internaldoc
    ADD CONSTRAINT document_internaldoc_pkey PRIMARY KEY (document_ptr_id);


--
-- TOC entry 3950 (class 2606 OID 16655)
-- Name: work_delegateuser work_delegateuser_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_delegateuser
    ADD CONSTRAINT work_delegateuser_pkey PRIMARY KEY (id);


--
-- TOC entry 3957 (class 2606 OID 16663)
-- Name: work_work work_work_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work
    ADD CONSTRAINT work_work_pkey PRIMARY KEY (id);


--
-- TOC entry 3896 (class 1259 OID 16553)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3901 (class 1259 OID 16490)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3904 (class 1259 OID 16491)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3891 (class 1259 OID 16476)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3912 (class 1259 OID 16506)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3915 (class 1259 OID 16505)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3918 (class 1259 OID 16520)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3921 (class 1259 OID 16519)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3909 (class 1259 OID 16547)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3943 (class 1259 OID 16647)
-- Name: authen_employee_dept_id_id_308eb801; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX authen_employee_dept_id_id_308eb801 ON public.authen_employee USING btree (department_id);


--
-- TOC entry 3924 (class 1259 OID 16543)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3927 (class 1259 OID 16544)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3928 (class 1259 OID 16563)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3931 (class 1259 OID 16562)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3934 (class 1259 OID 16759)
-- Name: document_externaldoc_creator_id_4df79e10; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX document_externaldoc_creator_id_4df79e10 ON public.document_externaldoc USING btree (creator_id);


--
-- TOC entry 3937 (class 1259 OID 16787)
-- Name: document_internaldoc_creator_id_76100eca; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX document_internaldoc_creator_id_76100eca ON public.document_internaldoc USING btree (creator_id);


--
-- TOC entry 3938 (class 1259 OID 16600)
-- Name: document_internaldoc_parent_doc_id_ca149d5f; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX document_internaldoc_parent_doc_id_ca149d5f ON public.document_internaldoc USING btree (parent_doc_id);


--
-- TOC entry 3948 (class 1259 OID 16707)
-- Name: work_delegateuser_employee_id_id_490725dd; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_delegateuser_employee_id_id_490725dd ON public.work_delegateuser USING btree (employee_id);


--
-- TOC entry 3951 (class 1259 OID 16713)
-- Name: work_delegateuser_work_id_id_67eb4e47; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_delegateuser_work_id_id_67eb4e47 ON public.work_delegateuser USING btree (work_id);


--
-- TOC entry 3952 (class 1259 OID 16706)
-- Name: work_work_creator_id_d2effccb; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_work_creator_id_d2effccb ON public.work_work USING btree (creator_id);


--
-- TOC entry 3953 (class 1259 OID 16680)
-- Name: work_work_document_id_id_3587ef0c; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_work_document_id_id_3587ef0c ON public.work_work USING btree (document_id);


--
-- TOC entry 3954 (class 1259 OID 16775)
-- Name: work_work_latest_delegate_id_f0e5d8ef; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_work_latest_delegate_id_f0e5d8ef ON public.work_work USING btree (latest_delegate_id);


--
-- TOC entry 3955 (class 1259 OID 16793)
-- Name: work_work_new_document_id_13d514ee; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_work_new_document_id_13d514ee ON public.work_work USING btree (new_document_id);


--
-- TOC entry 3960 (class 2606 OID 16485)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3959 (class 2606 OID 16480)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3958 (class 2606 OID 16471)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3962 (class 2606 OID 16500)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3961 (class 2606 OID 16495)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3964 (class 2606 OID 16514)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3963 (class 2606 OID 16509)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3972 (class 2606 OID 16734)
-- Name: authen_employee authen_employee_department_id_b65497f7_fk_authen_department_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_department_id_b65497f7_fk_authen_department_id FOREIGN KEY (department_id) REFERENCES public.authen_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3971 (class 2606 OID 16642)
-- Name: authen_employee authen_employee_user_id_8e354367_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_user_id_8e354367_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3965 (class 2606 OID 16533)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3966 (class 2606 OID 16538)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3968 (class 2606 OID 16782)
-- Name: document_externaldoc document_externaldoc_creator_id_4df79e10_fk_authen_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_externaldoc
    ADD CONSTRAINT document_externaldoc_creator_id_4df79e10_fk_authen_employee_id FOREIGN KEY (creator_id) REFERENCES public.authen_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3967 (class 2606 OID 16605)
-- Name: document_externaldoc document_externaldoc_document_ptr_id_506f851f_fk_document_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_externaldoc
    ADD CONSTRAINT document_externaldoc_document_ptr_id_506f851f_fk_document_ FOREIGN KEY (document_ptr_id) REFERENCES public.document_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3970 (class 2606 OID 16777)
-- Name: document_internaldoc document_internaldoc_creator_id_76100eca_fk_authen_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_internaldoc
    ADD CONSTRAINT document_internaldoc_creator_id_76100eca_fk_authen_employee_id FOREIGN KEY (creator_id) REFERENCES public.authen_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3969 (class 2606 OID 16613)
-- Name: document_internaldoc document_internaldoc_document_ptr_id_ba5e6f80_fk_document_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_internaldoc
    ADD CONSTRAINT document_internaldoc_document_ptr_id_ba5e6f80_fk_document_ FOREIGN KEY (document_ptr_id) REFERENCES public.document_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3973 (class 2606 OID 16719)
-- Name: work_delegateuser work_delegateuser_employee_id_f3d832ac_fk_authen_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_delegateuser
    ADD CONSTRAINT work_delegateuser_employee_id_f3d832ac_fk_authen_employee_id FOREIGN KEY (employee_id) REFERENCES public.authen_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3974 (class 2606 OID 16724)
-- Name: work_delegateuser work_delegateuser_work_id_795dd735_fk_work_work_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_delegateuser
    ADD CONSTRAINT work_delegateuser_work_id_795dd735_fk_work_work_id FOREIGN KEY (work_id) REFERENCES public.work_work(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3975 (class 2606 OID 16699)
-- Name: work_work work_work_creator_id_d2effccb_fk_authen_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work
    ADD CONSTRAINT work_work_creator_id_d2effccb_fk_authen_employee_id FOREIGN KEY (creator_id) REFERENCES public.authen_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3976 (class 2606 OID 16729)
-- Name: work_work work_work_document_id_4c646e26_fk_document_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work
    ADD CONSTRAINT work_work_document_id_4c646e26_fk_document_ FOREIGN KEY (document_id) REFERENCES public.document_internaldoc(document_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3977 (class 2606 OID 16770)
-- Name: work_work work_work_latest_delegate_id_f0e5d8ef_fk_authen_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work
    ADD CONSTRAINT work_work_latest_delegate_id_f0e5d8ef_fk_authen_employee_id FOREIGN KEY (latest_delegate_id) REFERENCES public.authen_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3978 (class 2606 OID 16788)
-- Name: work_work work_work_new_document_id_13d514ee_fk_document_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work
    ADD CONSTRAINT work_work_new_document_id_13d514ee_fk_document_ FOREIGN KEY (new_document_id) REFERENCES public.document_internaldoc(document_ptr_id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-04-24 22:14:20

--
-- PostgreSQL database dump complete
--

