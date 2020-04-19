--
-- PostgreSQL database dump
--

-- Dumped from database version 11.7
-- Dumped by pg_dump version 12.2

-- Started on 2020-04-19 15:15:25

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
-- TOC entry 4129 (class 0 OID 0)
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
-- TOC entry 4130 (class 0 OID 0)
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
-- TOC entry 4131 (class 0 OID 0)
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
-- TOC entry 4132 (class 0 OID 0)
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
-- TOC entry 4133 (class 0 OID 0)
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
-- TOC entry 4134 (class 0 OID 0)
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
    name character varying(50) NOT NULL
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
-- TOC entry 4135 (class 0 OID 0)
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
    role character varying(3) NOT NULL,
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
-- TOC entry 4136 (class 0 OID 0)
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
-- TOC entry 4137 (class 0 OID 0)
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
-- TOC entry 4138 (class 0 OID 0)
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
-- TOC entry 4139 (class 0 OID 0)
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
-- TOC entry 4140 (class 0 OID 0)
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
    document_ptr_id integer NOT NULL
);


ALTER TABLE public.document_internaldoc OWNER TO doadmin;

--
-- TOC entry 224 (class 1259 OID 16650)
-- Name: work_delegateuser; Type: TABLE; Schema: public; Owner: doadmin
--

CREATE TABLE public.work_delegateuser (
    id integer NOT NULL,
    result boolean,
    review_date timestamp with time zone NOT NULL,
    employee_id integer NOT NULL,
    work_id integer NOT NULL
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
-- TOC entry 4141 (class 0 OID 0)
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
    type character varying(2) NOT NULL
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
-- TOC entry 4142 (class 0 OID 0)
-- Dependencies: 225
-- Name: work_work_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: doadmin
--

ALTER SEQUENCE public.work_work_id_seq OWNED BY public.work_work.id;


--
-- TOC entry 3872 (class 2604 OID 16430)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3873 (class 2604 OID 16440)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3871 (class 2604 OID 16422)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3874 (class 2604 OID 16448)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3875 (class 2604 OID 16458)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3876 (class 2604 OID 16466)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3880 (class 2604 OID 16624)
-- Name: authen_department id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_department ALTER COLUMN id SET DEFAULT nextval('public.authen_department_id_seq'::regclass);


--
-- TOC entry 3881 (class 2604 OID 16632)
-- Name: authen_employee id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee ALTER COLUMN id SET DEFAULT nextval('public.authen_employee_id_seq'::regclass);


--
-- TOC entry 3877 (class 2604 OID 16526)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3870 (class 2604 OID 16412)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3869 (class 2604 OID 16401)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3879 (class 2604 OID 16569)
-- Name: document_document id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_document ALTER COLUMN id SET DEFAULT nextval('public.document_document_id_seq'::regclass);


--
-- TOC entry 3882 (class 2604 OID 16653)
-- Name: work_delegateuser id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_delegateuser ALTER COLUMN id SET DEFAULT nextval('public.work_delegateuser_id_seq'::regclass);


--
-- TOC entry 3883 (class 2604 OID 16661)
-- Name: work_work id; Type: DEFAULT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work ALTER COLUMN id SET DEFAULT nextval('public.work_work_id_seq'::regclass);


--
-- TOC entry 4100 (class 0 OID 16427)
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
-- TOC entry 4102 (class 0 OID 16437)
-- Dependencies: 205
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4098 (class 0 OID 16419)
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
-- TOC entry 4104 (class 0 OID 16445)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$2yrCx3BHLYcx$H9U9EfstRW3MtNQJ3lKgeE5Row7r9HIkPag1b2gnaMg=	2020-04-19 07:59:01.229027+00	t	admin				t	t	2020-04-17 18:47:04.201005+00
\.


--
-- TOC entry 4106 (class 0 OID 16455)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 4108 (class 0 OID 16463)
-- Dependencies: 211
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 4117 (class 0 OID 16621)
-- Dependencies: 220
-- Data for Name: authen_department; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.authen_department (id, name) FROM stdin;
1	R&D
\.


--
-- TOC entry 4119 (class 0 OID 16629)
-- Dependencies: 222
-- Data for Name: authen_employee; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.authen_employee (id, role, department_id, user_id) FROM stdin;
1	SVP	1	1
\.


--
-- TOC entry 4110 (class 0 OID 16523)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-04-19 08:13:46.228954+00	1	DCC	1	[{"added": {}}]	3	1
2	2020-04-19 08:13:51.506145+00	2	MR	1	[{"added": {}}]	3	1
3	2020-04-19 08:13:57.479618+00	3	VP	1	[{"added": {}}]	3	1
4	2020-04-19 08:14:01.751202+00	4	SVP	1	[{"added": {}}]	3	1
\.


--
-- TOC entry 4096 (class 0 OID 16409)
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
-- TOC entry 4094 (class 0 OID 16398)
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
\.


--
-- TOC entry 4111 (class 0 OID 16554)
-- Dependencies: 214
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
0nr1266h9novxigk5fxptd7we4vulr08	MWU2MDY5ZGRjNDAxNjczODc3N2Q5ZTQ0Mzc5YTViNTczNDEyZDI1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3NmVkMzQzMjZkMzEyODI2YzZhYzcyZTU1NGE4YTJlZDAwZjc2NzFlIn0=	2020-05-03 07:59:01.274017+00
\.


--
-- TOC entry 4113 (class 0 OID 16566)
-- Dependencies: 216
-- Data for Name: document_document; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.document_document (id, name, file_location) FROM stdin;
8	Otto von Bismarck	\N
9	COVID-19 Report	\N
12	Test Internal Doc 1	\N
13	Test Internal Doc 2	\N
14	Test Internal Doc 3 with parent	\N
15	Test ModelForm	\N
16	test upload	fh.jpg
17	Test Link Document Creation with Work	
\.


--
-- TOC entry 4114 (class 0 OID 16572)
-- Dependencies: 217
-- Data for Name: document_externaldoc; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.document_externaldoc (source, detail, document_ptr_id, create_date, creator_id) FROM stdin;
https://en.wikipedia.org/wiki/Otto_von_Bismarck	Wikipedia page of Otto von Bismarck	8	2020-04-18 18:13:07.888498+00	1
https://covid19.ddc.moph.go.th/	Offical COVID-19 report from Ministry of Disease	9	2020-04-18 18:13:07.888498+00	1
Test ModelForm	Test ModelForm	15	2020-04-18 18:13:07.888498+00	1
test upload	test upload	16	2020-04-18 18:13:07.888498+00	1
\.


--
-- TOC entry 4115 (class 0 OID 16580)
-- Dependencies: 218
-- Data for Name: document_internaldoc; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.document_internaldoc (version, running_no, type, state, parent_doc_id, document_ptr_id) FROM stdin;
1	1	M	I	\N	12
1	2	W	O	\N	13
1	1	W	O	13	14
2	1	P	IN	\N	17
\.


--
-- TOC entry 4121 (class 0 OID 16650)
-- Dependencies: 224
-- Data for Name: work_delegateuser; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.work_delegateuser (id, result, review_date, employee_id, work_id) FROM stdin;
\.


--
-- TOC entry 4123 (class 0 OID 16658)
-- Dependencies: 226
-- Data for Name: work_work; Type: TABLE DATA; Schema: public; Owner: doadmin
--

COPY public.work_work (id, complete_date, create_date, document_id, creator_id, state, type) FROM stdin;
3	\N	2020-04-19 07:42:10.328628+00	17	1	N	CR
\.


--
-- TOC entry 4143 (class 0 OID 0)
-- Dependencies: 202
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);


--
-- TOC entry 4144 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 4145 (class 0 OID 0)
-- Dependencies: 200
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- TOC entry 4146 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 4147 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 4148 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 4149 (class 0 OID 0)
-- Dependencies: 219
-- Name: authen_department_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.authen_department_id_seq', 1, true);


--
-- TOC entry 4150 (class 0 OID 0)
-- Dependencies: 221
-- Name: authen_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.authen_employee_id_seq', 1, true);


--
-- TOC entry 4151 (class 0 OID 0)
-- Dependencies: 212
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);


--
-- TOC entry 4152 (class 0 OID 0)
-- Dependencies: 198
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- TOC entry 4153 (class 0 OID 0)
-- Dependencies: 196
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 34, true);


--
-- TOC entry 4154 (class 0 OID 0)
-- Dependencies: 215
-- Name: document_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.document_document_id_seq', 17, true);


--
-- TOC entry 4155 (class 0 OID 0)
-- Dependencies: 223
-- Name: work_delegateuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.work_delegateuser_id_seq', 1, false);


--
-- TOC entry 4156 (class 0 OID 0)
-- Dependencies: 225
-- Name: work_work_id_seq; Type: SEQUENCE SET; Schema: public; Owner: doadmin
--

SELECT pg_catalog.setval('public.work_work_id_seq', 3, true);


--
-- TOC entry 3897 (class 2606 OID 16552)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3902 (class 2606 OID 16479)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3905 (class 2606 OID 16442)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3899 (class 2606 OID 16432)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3892 (class 2606 OID 16470)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3894 (class 2606 OID 16424)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3913 (class 2606 OID 16460)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3916 (class 2606 OID 16494)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3907 (class 2606 OID 16450)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3919 (class 2606 OID 16468)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3922 (class 2606 OID 16508)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3910 (class 2606 OID 16546)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3940 (class 2606 OID 16626)
-- Name: authen_department authen_department_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_department
    ADD CONSTRAINT authen_department_pkey PRIMARY KEY (id);


--
-- TOC entry 3943 (class 2606 OID 16634)
-- Name: authen_employee authen_employee_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_pkey PRIMARY KEY (id);


--
-- TOC entry 3945 (class 2606 OID 16636)
-- Name: authen_employee authen_employee_user_id_key; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_user_id_key UNIQUE (user_id);


--
-- TOC entry 3925 (class 2606 OID 16532)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3887 (class 2606 OID 16416)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3889 (class 2606 OID 16414)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3885 (class 2606 OID 16406)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3929 (class 2606 OID 16561)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3932 (class 2606 OID 16571)
-- Name: document_document document_document_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_document
    ADD CONSTRAINT document_document_pkey PRIMARY KEY (id);


--
-- TOC entry 3935 (class 2606 OID 16604)
-- Name: document_externaldoc document_externaldoc_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_externaldoc
    ADD CONSTRAINT document_externaldoc_pkey PRIMARY KEY (document_ptr_id);


--
-- TOC entry 3938 (class 2606 OID 16612)
-- Name: document_internaldoc document_internaldoc_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_internaldoc
    ADD CONSTRAINT document_internaldoc_pkey PRIMARY KEY (document_ptr_id);


--
-- TOC entry 3948 (class 2606 OID 16655)
-- Name: work_delegateuser work_delegateuser_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_delegateuser
    ADD CONSTRAINT work_delegateuser_pkey PRIMARY KEY (id);


--
-- TOC entry 3953 (class 2606 OID 16663)
-- Name: work_work work_work_pkey; Type: CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work
    ADD CONSTRAINT work_work_pkey PRIMARY KEY (id);


--
-- TOC entry 3895 (class 1259 OID 16553)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3900 (class 1259 OID 16490)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3903 (class 1259 OID 16491)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3890 (class 1259 OID 16476)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3911 (class 1259 OID 16506)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3914 (class 1259 OID 16505)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3917 (class 1259 OID 16520)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3920 (class 1259 OID 16519)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3908 (class 1259 OID 16547)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3941 (class 1259 OID 16647)
-- Name: authen_employee_dept_id_id_308eb801; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX authen_employee_dept_id_id_308eb801 ON public.authen_employee USING btree (department_id);


--
-- TOC entry 3923 (class 1259 OID 16543)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3926 (class 1259 OID 16544)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3927 (class 1259 OID 16563)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3930 (class 1259 OID 16562)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3933 (class 1259 OID 16759)
-- Name: document_externaldoc_creator_id_4df79e10; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX document_externaldoc_creator_id_4df79e10 ON public.document_externaldoc USING btree (creator_id);


--
-- TOC entry 3936 (class 1259 OID 16600)
-- Name: document_internaldoc_parent_doc_id_ca149d5f; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX document_internaldoc_parent_doc_id_ca149d5f ON public.document_internaldoc USING btree (parent_doc_id);


--
-- TOC entry 3946 (class 1259 OID 16707)
-- Name: work_delegateuser_employee_id_id_490725dd; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_delegateuser_employee_id_id_490725dd ON public.work_delegateuser USING btree (employee_id);


--
-- TOC entry 3949 (class 1259 OID 16713)
-- Name: work_delegateuser_work_id_id_67eb4e47; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_delegateuser_work_id_id_67eb4e47 ON public.work_delegateuser USING btree (work_id);


--
-- TOC entry 3950 (class 1259 OID 16706)
-- Name: work_work_creator_id_d2effccb; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_work_creator_id_d2effccb ON public.work_work USING btree (creator_id);


--
-- TOC entry 3951 (class 1259 OID 16680)
-- Name: work_work_document_id_id_3587ef0c; Type: INDEX; Schema: public; Owner: doadmin
--

CREATE INDEX work_work_document_id_id_3587ef0c ON public.work_work USING btree (document_id);


--
-- TOC entry 3956 (class 2606 OID 16485)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3955 (class 2606 OID 16480)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3954 (class 2606 OID 16471)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3958 (class 2606 OID 16500)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3957 (class 2606 OID 16495)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3960 (class 2606 OID 16514)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3959 (class 2606 OID 16509)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3967 (class 2606 OID 16734)
-- Name: authen_employee authen_employee_department_id_b65497f7_fk_authen_department_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_department_id_b65497f7_fk_authen_department_id FOREIGN KEY (department_id) REFERENCES public.authen_department(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3966 (class 2606 OID 16642)
-- Name: authen_employee authen_employee_user_id_8e354367_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.authen_employee
    ADD CONSTRAINT authen_employee_user_id_8e354367_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3961 (class 2606 OID 16533)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3962 (class 2606 OID 16538)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3964 (class 2606 OID 16760)
-- Name: document_externaldoc document_externaldoc_creator_id_4df79e10_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_externaldoc
    ADD CONSTRAINT document_externaldoc_creator_id_4df79e10_fk_auth_user_id FOREIGN KEY (creator_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3963 (class 2606 OID 16605)
-- Name: document_externaldoc document_externaldoc_document_ptr_id_506f851f_fk_document_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_externaldoc
    ADD CONSTRAINT document_externaldoc_document_ptr_id_506f851f_fk_document_ FOREIGN KEY (document_ptr_id) REFERENCES public.document_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3965 (class 2606 OID 16613)
-- Name: document_internaldoc document_internaldoc_document_ptr_id_ba5e6f80_fk_document_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.document_internaldoc
    ADD CONSTRAINT document_internaldoc_document_ptr_id_ba5e6f80_fk_document_ FOREIGN KEY (document_ptr_id) REFERENCES public.document_document(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3968 (class 2606 OID 16719)
-- Name: work_delegateuser work_delegateuser_employee_id_f3d832ac_fk_authen_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_delegateuser
    ADD CONSTRAINT work_delegateuser_employee_id_f3d832ac_fk_authen_employee_id FOREIGN KEY (employee_id) REFERENCES public.authen_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3969 (class 2606 OID 16724)
-- Name: work_delegateuser work_delegateuser_work_id_795dd735_fk_work_work_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_delegateuser
    ADD CONSTRAINT work_delegateuser_work_id_795dd735_fk_work_work_id FOREIGN KEY (work_id) REFERENCES public.work_work(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3970 (class 2606 OID 16699)
-- Name: work_work work_work_creator_id_d2effccb_fk_authen_employee_id; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work
    ADD CONSTRAINT work_work_creator_id_d2effccb_fk_authen_employee_id FOREIGN KEY (creator_id) REFERENCES public.authen_employee(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3971 (class 2606 OID 16729)
-- Name: work_work work_work_document_id_4c646e26_fk_document_; Type: FK CONSTRAINT; Schema: public; Owner: doadmin
--

ALTER TABLE ONLY public.work_work
    ADD CONSTRAINT work_work_document_id_4c646e26_fk_document_ FOREIGN KEY (document_id) REFERENCES public.document_internaldoc(document_ptr_id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2020-04-19 15:15:35

--
-- PostgreSQL database dump complete
--

