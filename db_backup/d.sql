--
-- TOC entry 4128 (class 0 OID 16427)
-- Dependencies: 203
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.auth_group VALUES (1, 'DCC');
INSERT INTO public.auth_group VALUES (2, 'MR');
INSERT INTO public.auth_group VALUES (3, 'VP');
INSERT INTO public.auth_group VALUES (4, 'SVP');

--
-- TOC entry 4132 (class 0 OID 16445)
-- Dependencies: 207
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.auth_user VALUES (28, 'pbkdf2_sha256$180000$syCJ3yOXEVim$0RrS6kGdoWmGa9OtjOji9/7F/o9GK1+CvAelp9IWvgU=', NULL, false, 's_svp', 'S', 'SVP', '', false, true, '2020-04-24 17:35:47.076236+00');
INSERT INTO public.auth_user VALUES (29, 'pbkdf2_sha256$180000$6N5o0Zm3nXJz$ZQoxzG3ZaaUkVNutdWkvGPqm9jgEnBIr9YoG7dWiyyY=', NULL, false, 'f_dcc', 'F', 'DCC', '', false, true, '2020-04-24 17:35:47.612541+00');
INSERT INTO public.auth_user VALUES (10, 'pbkdf2_sha256$180000$66tZwTGeZh6j$Pjyav9LymxeYjpa6iAR21Dkdm8b3PWSkYwATsP3Cpwk=', NULL, false, 'rd_employee', 'R&D', 'Employee', '', false, true, '2020-04-24 17:14:01.249176+00');
INSERT INTO public.auth_user VALUES (11, 'pbkdf2_sha256$180000$1LMkPVnwuFZh$Lwe0696d9QdFAqwwBYqIa3bArqic16hw4O/9XXxL/KA=', NULL, false, 'hr_employee', 'HR', 'Employee', '', false, true, '2020-04-24 17:14:32.597519+00');
INSERT INTO public.auth_user VALUES (12, 'pbkdf2_sha256$180000$Sq7L8dZQbFOU$14oeXwwgJXHwO0MtUQuz/01wgfrFY/ya3KW+vTDu1hA=', '2020-04-30 03:31:24.318668+00', false, 'it_employee', 'IT', 'Employee', '', false, true, '2020-04-24 17:14:57.981865+00');
INSERT INTO public.auth_user VALUES (14, 'pbkdf2_sha256$180000$akW2Ltux1TlL$btyc7u8AuSIUXLJajtevQVkdKlmsTapjyX+dY8Ut3PQ=', NULL, false, 'f_employee', 'F', 'Employee', '', false, true, '2020-04-24 17:15:52.827069+00');
INSERT INTO public.auth_user VALUES (15, 'pbkdf2_sha256$180000$C1LQXzGx0RDE$lIsVFaND2JfA5UG3NCjNqnorv5NtfolEfXzhQM5ajnw=', NULL, false, 's_employee', 'S', 'Employee', '', false, true, '2020-04-24 17:16:09.551569+00');
INSERT INTO public.auth_user VALUES (16, 'pbkdf2_sha256$180000$lGlcSHLFZ5GI$P+D9Ehib96/xrPfXidBQRMzdKwho/Ein1g/8e6ojGiU=', NULL, false, 'm_employee', 'M', 'Employee', '', false, true, '2020-04-24 17:16:30.102343+00');
INSERT INTO public.auth_user VALUES (30, 'pbkdf2_sha256$180000$7fqqulkVD7WH$nG4h4DJSTVaT7GjnUNIOkzHsYLLMjjcxHiOIB+pLWEE=', NULL, false, 'f_mr', 'F', 'MR', '', false, true, '2020-04-24 17:35:48.158095+00');
INSERT INTO public.auth_user VALUES (31, 'pbkdf2_sha256$180000$sRDuFYjyIiXS$JNU+SHA6JzHwQwNujdnd9+44YEXLcdEvAs+rSTNCk7s=', NULL, false, 'f_vp', 'F', 'VP', '', false, true, '2020-04-24 17:35:48.676254+00');
INSERT INTO public.auth_user VALUES (21, 'pbkdf2_sha256$180000$XFObLHxzjs0r$d/Cd7kElQz12fEODnbFjBL3FSatJa0NHLRPwE2tMNww=', NULL, false, 'm_dcc', 'M', 'DCC', '', false, true, '2020-04-24 17:35:43.451701+00');
INSERT INTO public.auth_user VALUES (37, 'pbkdf2_sha256$180000$V9dD25LGb6Zz$8hFuGbs5IJ52QAQ6J2DRSER580J7TweF/U3bFL6f6G0=', '2020-04-30 03:32:13.521696+00', false, 'it_dcc', 'IT', 'DCC', '', false, true, '2020-04-24 17:35:51.970785+00');
INSERT INTO public.auth_user VALUES (23, 'pbkdf2_sha256$180000$hScO1LyzTitZ$y0U5zChFn73TqW95N9FFXbCI2xODDtddGbmVY+oagTE=', NULL, false, 'm_vp', 'M', 'VP', '', false, true, '2020-04-24 17:35:44.509698+00');
INSERT INTO public.auth_user VALUES (32, 'pbkdf2_sha256$180000$m5IAMnjWlGhV$j8NngvnLjgp4rKEuM1ZVUgkC/tzb8nvXtgsMeN6VutU=', NULL, false, 'f_svp', 'F', 'SVP', '', false, true, '2020-04-24 17:35:49.236253+00');
INSERT INTO public.auth_user VALUES (24, 'pbkdf2_sha256$180000$9VDHrxIl6WbV$XND6c4jsdX4caPjenijxoRNWFFoxB4Cn9Obrdz/bhQw=', NULL, false, 'm_svp', 'M', 'SVP', '', false, true, '2020-04-24 17:35:45.013918+00');
INSERT INTO public.auth_user VALUES (25, 'pbkdf2_sha256$180000$tpyrovxEfMa8$CF/mSnyFMyKhaHz0lYrPnu14Y1znVPQsOKHz/nEld0Y=', NULL, false, 's_dcc', 'S', 'DCC', '', false, true, '2020-04-24 17:35:45.537853+00');
INSERT INTO public.auth_user VALUES (33, 'pbkdf2_sha256$180000$cGZNaLfDfnFz$xl06zFa9qxEUWe98gDL8YoKovCgfDuh4SjcCb/tSnJY=', NULL, false, 'pr_dcc', 'PR', 'DCC', '', false, true, '2020-04-24 17:35:49.811355+00');
INSERT INTO public.auth_user VALUES (26, 'pbkdf2_sha256$180000$GEmvUjNJBNnZ$arSLm9z91LH/IyLFWLy4UROSEEG+tQ9xM+842+Y547E=', NULL, false, 's_mr', 'S', 'MR', '', false, true, '2020-04-24 17:35:46.050998+00');
INSERT INTO public.auth_user VALUES (34, 'pbkdf2_sha256$180000$iVpj0nyJhrfC$EssxL2X13znKoz5yyp2L5bckoeg0z/vg6D3re7B2E3w=', NULL, false, 'pr_mr', 'PR', 'MR', '', false, true, '2020-04-24 17:35:50.366258+00');
INSERT INTO public.auth_user VALUES (27, 'pbkdf2_sha256$180000$ngdpsnh8Wzhj$bVL8TSJ2MeGxFQhhuCtBwo6zkBD26FfRLmIs6Mo92ok=', NULL, false, 's_vp', 'S', 'VP', '', false, true, '2020-04-24 17:35:46.555094+00');
INSERT INTO public.auth_user VALUES (35, 'pbkdf2_sha256$180000$6DmW4BdkTnHO$iq2OGwkf37AFcTg0VGJG3fp+pwn0kT4/J6J5Ij5DRQs=', NULL, false, 'pr_vp', 'PR', 'VP', '', false, true, '2020-04-24 17:35:50.884988+00');
INSERT INTO public.auth_user VALUES (36, 'pbkdf2_sha256$180000$pl9KnKWIkLA3$VNSUDy3ezMoKgzWnRwubzsjAGGUZG8EtcXFKnAsohd8=', NULL, false, 'pr_svp', 'PR', 'SVP', '', false, true, '2020-04-24 17:35:51.447959+00');
INSERT INTO public.auth_user VALUES (48, 'pbkdf2_sha256$180000$oTImUokRyEJL$HwIo1Yg+LNFxhANbC1AtTaHoB9uOZ6oh9I9OP9OXStM=', '2020-04-28 09:35:24.549549+00', false, 'rd_svp', 'RD', 'SVP', '', false, true, '2020-04-24 17:35:57.758753+00');
INSERT INTO public.auth_user VALUES (41, 'pbkdf2_sha256$180000$ivVwdu3uvboV$97EVMthZY+0qnJq1Ls2T8ts9WHyO2u/SeCa9hNrqjJc=', NULL, false, 'hr_dcc', 'HR', 'DCC', '', false, true, '2020-04-24 17:35:54.027147+00');
INSERT INTO public.auth_user VALUES (42, 'pbkdf2_sha256$180000$qKL1bxAl1vou$hun550Y7jNxVb0CJdPQ4hC/jBXeBBA4UPoJ0ZprjT+w=', NULL, false, 'hr_mr', 'HR', 'MR', '', false, true, '2020-04-24 17:35:54.564464+00');
INSERT INTO public.auth_user VALUES (43, 'pbkdf2_sha256$180000$icK2GZheiLwQ$TvAH6eZuzivJAKr2CrSuLHJIWyQihH/fMDysSpyP8EM=', NULL, false, 'hr_vp', 'HR', 'VP', '', false, true, '2020-04-24 17:35:55.089357+00');
INSERT INTO public.auth_user VALUES (45, 'pbkdf2_sha256$180000$J0QHgGC76JCZ$Gm/UTPpPGWya/o4R1OKYA9QjTaFvWUS0d377ZJXF+pQ=', '2020-04-28 09:40:39.635224+00', false, 'rd_dcc', 'RD', 'DCC', '', false, true, '2020-04-24 17:35:56.154339+00');
INSERT INTO public.auth_user VALUES (38, 'pbkdf2_sha256$180000$mYHEYf4n8MJ9$cYxIJJ8WoW5jW2JyjnYukKdaXbrSsiGCEOvJ0ul8YLo=', '2020-04-30 03:32:57.336346+00', false, 'it_mr', 'IT', 'MR', '', false, true, '2020-04-24 17:35:52.474664+00');
INSERT INTO public.auth_user VALUES (46, 'pbkdf2_sha256$180000$TB2tpvrkHxru$rzJiPGWRFlj0jd6ox4KUD6LQhgCkn+VufR3VG3yV3rg=', '2020-04-28 09:41:01.305568+00', false, 'rd_mr', 'RD', 'MR', '', false, true, '2020-04-24 17:35:56.674721+00');
INSERT INTO public.auth_user VALUES (47, 'pbkdf2_sha256$180000$SlRGDmpbjb92$V0b5Lxwtsmy2cfiWCs10s7+EH00NRooaWR5wYPomBSw=', '2020-04-28 09:41:23.19006+00', false, 'rd_vp', 'RD', 'VP', '', false, true, '2020-04-24 17:35:57.245776+00');
INSERT INTO public.auth_user VALUES (44, 'pbkdf2_sha256$180000$p5eXFpQkbztq$Plc1bb+5JziAmMk0TKPiq+4/pgiNVDxPVwsOjbMegPs=', '2020-04-28 09:41:53.82016+00', false, 'hr_svp', 'HR', 'SVP', '', false, true, '2020-04-24 17:35:55.6253+00');
INSERT INTO public.auth_user VALUES (22, 'pbkdf2_sha256$180000$PEyqJ2subT1r$urZ0It+hAvQP5A4wc8yUVoHU77T0J8vg2nlUF6Ql1Mk=', '2020-04-25 05:42:36.649849+00', false, 'm_mr', 'M', 'MR', '', false, true, '2020-04-24 17:35:43.965465+00');
INSERT INTO public.auth_user VALUES (39, 'pbkdf2_sha256$180000$6k8B4VMtyH2v$pLdBBs/kpjE5rUZj96WNaMqrgm9Oyz7vOB9Sub11BTc=', '2020-04-30 03:33:25.044386+00', false, 'it_vp', 'IT', 'VP', '', false, true, '2020-04-24 17:35:52.978178+00');
INSERT INTO public.auth_user VALUES (13, 'pbkdf2_sha256$180000$lcTNqzNwMC6i$mWZOyst2WzAlZuEvwnWY7SF1DPOKduViSXblyCPU9XA=', '2020-04-28 10:46:15.869582+00', false, 'pr_employee', 'PR', 'Employee', '', false, true, '2020-04-24 17:15:21.088666+00');
INSERT INTO public.auth_user VALUES (40, 'pbkdf2_sha256$180000$zXd4cesGu3Im$DPQi5Y5vosmBBeOmWAwCtFI8CxxprfS/DNBPL4+olbY=', '2020-04-30 03:33:46.813321+00', false, 'it_svp', 'IT', 'SVP', '', false, true, '2020-04-24 17:35:53.519237+00');
INSERT INTO public.auth_user VALUES (1, 'pbkdf2_sha256$180000$7IuwOXOKlMXn$5Lokt0EV0VV+CMN+Mbo5OQOuPN5GhXscqsKHrrbhM2Q=', '2020-05-01 10:12:37.319057+00', true, 'admin', 'System', 'Admin', '', true, true, '2020-04-17 18:47:04+00');
INSERT INTO public.auth_user VALUES (49, 'pbkdf2_sha256$180000$fDX64k5uHK07$mDHRP1Vzog2jScnwkWUJnIbK4UgikjcdNxWWSNMEz0w=', '2020-05-01 19:31:26.355518+00', false, 'readonly', '', '', '', false, true, '2020-04-26 15:51:32.113564+00');


--
-- TOC entry 4134 (class 0 OID 16455)
-- Dependencies: 209
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.auth_user_groups VALUES (5, 21, 1);
INSERT INTO public.auth_user_groups VALUES (6, 22, 2);
INSERT INTO public.auth_user_groups VALUES (7, 23, 3);
INSERT INTO public.auth_user_groups VALUES (8, 24, 4);
INSERT INTO public.auth_user_groups VALUES (9, 25, 1);
INSERT INTO public.auth_user_groups VALUES (10, 26, 2);
INSERT INTO public.auth_user_groups VALUES (11, 27, 3);
INSERT INTO public.auth_user_groups VALUES (12, 28, 4);
INSERT INTO public.auth_user_groups VALUES (13, 29, 1);
INSERT INTO public.auth_user_groups VALUES (14, 30, 2);
INSERT INTO public.auth_user_groups VALUES (15, 31, 3);
INSERT INTO public.auth_user_groups VALUES (16, 32, 4);
INSERT INTO public.auth_user_groups VALUES (17, 33, 1);
INSERT INTO public.auth_user_groups VALUES (18, 34, 2);
INSERT INTO public.auth_user_groups VALUES (19, 35, 3);
INSERT INTO public.auth_user_groups VALUES (20, 36, 4);
INSERT INTO public.auth_user_groups VALUES (21, 37, 1);
INSERT INTO public.auth_user_groups VALUES (22, 38, 2);
INSERT INTO public.auth_user_groups VALUES (23, 39, 3);
INSERT INTO public.auth_user_groups VALUES (24, 40, 4);
INSERT INTO public.auth_user_groups VALUES (25, 41, 1);
INSERT INTO public.auth_user_groups VALUES (26, 42, 2);
INSERT INTO public.auth_user_groups VALUES (27, 43, 3);
INSERT INTO public.auth_user_groups VALUES (28, 44, 4);
INSERT INTO public.auth_user_groups VALUES (29, 45, 1);
INSERT INTO public.auth_user_groups VALUES (30, 46, 2);
INSERT INTO public.auth_user_groups VALUES (31, 47, 3);
INSERT INTO public.auth_user_groups VALUES (32, 48, 4);

--
-- TOC entry 4145 (class 0 OID 16621)
-- Dependencies: 220
-- Data for Name: authen_department; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.authen_department VALUES (1, 'Research and Development', 'RD');
INSERT INTO public.authen_department VALUES (2, 'Human Resource', 'HR');
INSERT INTO public.authen_department VALUES (3, 'Information Technology', 'IT');
INSERT INTO public.authen_department VALUES (4, 'Public Relations', 'PR');
INSERT INTO public.authen_department VALUES (5, 'Financial', 'F');
INSERT INTO public.authen_department VALUES (6, 'Sales', 'S');
INSERT INTO public.authen_department VALUES (7, 'Marketing', 'M');


--
-- TOC entry 4147 (class 0 OID 16629)
-- Dependencies: 222
-- Data for Name: authen_employee; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.authen_employee VALUES (6, 1, 1);
INSERT INTO public.authen_employee VALUES (7, 1, 10);
INSERT INTO public.authen_employee VALUES (8, 2, 11);
INSERT INTO public.authen_employee VALUES (9, 3, 12);
INSERT INTO public.authen_employee VALUES (10, 4, 13);
INSERT INTO public.authen_employee VALUES (11, 5, 14);
INSERT INTO public.authen_employee VALUES (12, 6, 15);
INSERT INTO public.authen_employee VALUES (13, 7, 16);
INSERT INTO public.authen_employee VALUES (14, 7, 21);
INSERT INTO public.authen_employee VALUES (15, 7, 22);
INSERT INTO public.authen_employee VALUES (16, 7, 23);
INSERT INTO public.authen_employee VALUES (17, 7, 24);
INSERT INTO public.authen_employee VALUES (18, 6, 25);
INSERT INTO public.authen_employee VALUES (19, 6, 26);
INSERT INTO public.authen_employee VALUES (20, 6, 27);
INSERT INTO public.authen_employee VALUES (21, 6, 28);
INSERT INTO public.authen_employee VALUES (22, 5, 29);
INSERT INTO public.authen_employee VALUES (23, 5, 30);
INSERT INTO public.authen_employee VALUES (24, 5, 31);
INSERT INTO public.authen_employee VALUES (25, 5, 32);
INSERT INTO public.authen_employee VALUES (26, 4, 33);
INSERT INTO public.authen_employee VALUES (27, 4, 34);
INSERT INTO public.authen_employee VALUES (28, 4, 35);
INSERT INTO public.authen_employee VALUES (29, 4, 36);
INSERT INTO public.authen_employee VALUES (30, 3, 37);
INSERT INTO public.authen_employee VALUES (31, 3, 38);
INSERT INTO public.authen_employee VALUES (32, 3, 39);
INSERT INTO public.authen_employee VALUES (33, 3, 40);
INSERT INTO public.authen_employee VALUES (34, 2, 41);
INSERT INTO public.authen_employee VALUES (35, 2, 42);
INSERT INTO public.authen_employee VALUES (36, 2, 43);
INSERT INTO public.authen_employee VALUES (37, 2, 44);
INSERT INTO public.authen_employee VALUES (38, 1, 45);
INSERT INTO public.authen_employee VALUES (39, 1, 46);
INSERT INTO public.authen_employee VALUES (40, 1, 47);
INSERT INTO public.authen_employee VALUES (41, 1, 48);


--
-- TOC entry 4138 (class 0 OID 16523)
-- Dependencies: 213
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.django_admin_log VALUES (1, '2020-04-19 08:13:46.228954+00', '1', 'DCC', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log VALUES (2, '2020-04-19 08:13:51.506145+00', '2', 'MR', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log VALUES (3, '2020-04-19 08:13:57.479618+00', '3', 'VP', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log VALUES (4, '2020-04-19 08:14:01.751202+00', '4', 'SVP', 1, '[{"added": {}}]', 3, 1);
INSERT INTO public.django_admin_log VALUES (5, '2020-04-20 14:27:37.343737+00', '2', 'test_dcc', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (6, '2020-04-20 14:27:45.462656+00', '2', 'test_dcc', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (7, '2020-04-20 16:49:21.987396+00', '3', 'test_mr', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (8, '2020-04-20 16:49:31.618025+00', '4', 'test_vp', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (9, '2020-04-20 16:49:43.494014+00', '5', 'test_svp', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (10, '2020-04-20 16:49:53.168022+00', '5', 'test_svp', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (11, '2020-04-20 16:50:06.886432+00', '3', 'test_mr', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (12, '2020-04-20 16:50:15.423967+00', '4', 'test_vp', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (13, '2020-04-23 13:15:27.166235+00', '6', 'test_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (14, '2020-04-23 14:06:07.444336+00', '7', 'test_ex', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (15, '2020-04-23 14:06:39.598436+00', '7', 'test_ex', 3, '', 4, 1);
INSERT INTO public.django_admin_log VALUES (16, '2020-04-23 14:10:03.498878+00', '8', 'test_user', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (17, '2020-04-24 17:02:36.4109+00', '1', 'Research and Development', 2, '[{"changed": {"fields": ["Name"]}}]', 10, 1);
INSERT INTO public.django_admin_log VALUES (18, '2020-04-24 17:02:49.485834+00', '2', 'Human Resource', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log VALUES (19, '2020-04-24 17:03:15.224455+00', '3', 'Information Technology', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log VALUES (20, '2020-04-24 17:04:05.901336+00', '4', 'Public Relations', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log VALUES (21, '2020-04-24 17:04:38.306992+00', '5', 'Financial', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log VALUES (22, '2020-04-24 17:04:44.978925+00', '6', 'Sales', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log VALUES (23, '2020-04-24 17:04:54.902838+00', '7', 'Marketing', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log VALUES (24, '2020-04-24 17:11:15.211462+00', '6', 'System Admin', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (25, '2020-04-24 17:12:03.192083+00', '9', 'm_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (26, '2020-04-24 17:13:28.958333+00', '9', 'm_employee', 3, '', 4, 1);
INSERT INTO public.django_admin_log VALUES (27, '2020-04-24 17:14:01.560302+00', '10', 'rd_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (28, '2020-04-24 17:14:19.455177+00', '7', ' ', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (29, '2020-04-24 17:14:32.901472+00', '11', 'hr_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (30, '2020-04-24 17:14:36.780551+00', '8', ' ', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (31, '2020-04-24 17:14:58.28982+00', '12', 'it_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (32, '2020-04-24 17:15:01.639193+00', '9', ' ', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (33, '2020-04-24 17:15:21.412359+00', '13', 'pr_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (34, '2020-04-24 17:15:28.724404+00', '10', ' ', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (35, '2020-04-24 17:15:53.159919+00', '14', 'f_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (36, '2020-04-24 17:15:55.96506+00', '11', ' ', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (37, '2020-04-24 17:16:09.8744+00', '15', 's_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (38, '2020-04-24 17:16:16.116154+00', '12', ' ', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (39, '2020-04-24 17:16:30.432571+00', '16', 'm_employee', 1, '[{"added": {}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (40, '2020-04-24 17:16:32.99031+00', '13', ' ', 1, '[{"added": {}}]', 11, 1);
INSERT INTO public.django_admin_log VALUES (41, '2020-04-25 09:25:28.482645+00', '1', 'admin', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (42, '2020-04-25 09:25:42.541926+00', '1', 'admin', 2, '[]', 4, 1);
INSERT INTO public.django_admin_log VALUES (43, '2020-04-25 09:28:36.249457+00', '1', 'admin', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1);
INSERT INTO public.django_admin_log VALUES (44, '2020-04-26 15:51:32.306516+00', '49', 'readonly', 1, '[{"added": {}}]', 4, 1);


--
-- TOC entry 4141 (class 0 OID 16566)
-- Dependencies: 216
-- Data for Name: document_document; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.document_document VALUES (95, 'Peck Nickel Olivaceous', 'download_sYXkmja.pdf');
INSERT INTO public.document_document VALUES (96, 'Langley Titanium Watchet', 'download_WqvSA65.pdf');
INSERT INTO public.document_document VALUES (97, 'Quad Platinum Whey', 'download_nRwgLhw.pdf');
INSERT INTO public.document_document VALUES (98, 'Hand Platinum Albicant', 'download_3qqTPQc.pdf');
INSERT INTO public.document_document VALUES (75, 'Fresnel Iron Cyaneous', 'dummy.pdf');
INSERT INTO public.document_document VALUES (85, '2019-20 Coronavirus Pandemic', '201920_coronavirus_pandemic_-_Wikipedia.pdf');
INSERT INTO public.document_document VALUES (86, 'Penny Penates', 'Penny_Penates_-_Wikipedia.pdf');
INSERT INTO public.document_document VALUES (87, 'Nototropis falcatus', 'Nototropis_falcatus_-_Wikipedia.pdf');
INSERT INTO public.document_document VALUES (88, 'Half-Life: Opposing Force', 'Half-Life__Opposing_Force_-_Wikipedia.pdf');
INSERT INTO public.document_document VALUES (71, 'Kip Bronze Coccineous', 'dummy.pdf');
INSERT INTO public.document_document VALUES (69, 'Dummy', 'dummy.pdf');
INSERT INTO public.document_document VALUES (72, 'Horsepower Titanium Cretaceous', 'dummy.pdf');
INSERT INTO public.document_document VALUES (73, 'Lux Platinum Corbeau', 'dummy.pdf');
INSERT INTO public.document_document VALUES (74, 'Kip Bronze Coccineous', 'dummy.pdf');
INSERT INTO public.document_document VALUES (70, 'Fresnel Iron Hyacinthine', 'dummy.pdf');
INSERT INTO public.document_document VALUES (76, 'Ampere ﻿Aluminium Cyaneous', 'dummy.pdf');
INSERT INTO public.document_document VALUES (77, 'Quarter Platinum Spadiceous', 'dummy.pdf');
INSERT INTO public.document_document VALUES (78, 'Pitch ﻿Aluminium Titian', 'dummy.pdf');
INSERT INTO public.document_document VALUES (80, 'Hobbet Titanium Solferino', 'dummy.pdf');
INSERT INTO public.document_document VALUES (81, 'Angstrom Platinum Citreous', 'dummy.pdf');
INSERT INTO public.document_document VALUES (79, 'Volt Nickel Primrose', 'dummy.pdf');
INSERT INTO public.document_document VALUES (82, 'Cubit Bronze Luteous', 'dummy.pdf');
INSERT INTO public.document_document VALUES (83, 'Palm Lead Filemot', 'dummy.pdf');
INSERT INTO public.document_document VALUES (84, 'Kilderkin Mercury Navy', 'dummy.pdf');
INSERT INTO public.document_document VALUES (89, 'Gill Zinc Cerulean', 'dummy.pdf');
INSERT INTO public.document_document VALUES (90, 'Virgate Tin ﻿Aeneous', '');
INSERT INTO public.document_document VALUES (91, 'Hertz Copper Titian', '');
INSERT INTO public.document_document VALUES (93, 'Fathom Gold Ochroleucous', 'download_Y3Pvgij.pdf');
INSERT INTO public.document_document VALUES (94, 'Denier Silver Puce', 'documenttttt.pdf');


--
-- TOC entry 4142 (class 0 OID 16572)
-- Dependencies: 217
-- Data for Name: document_externaldoc; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.document_externaldoc VALUES ('https://en.wikipedia.org/wiki/2019–20_coronavirus_pandemic', 'Information about the ongoing event of coronavirus pandemic', 85, '2020-04-26 14:14:18.072442+00', 6);
INSERT INTO public.document_externaldoc VALUES ('https://en.wikipedia.org/wiki/Penny_Penates', 'The world''s oldest postcard mailed in 1840', 86, '2020-04-26 14:16:00.701955+00', 9);
INSERT INTO public.document_externaldoc VALUES ('https://en.wikipedia.org/wiki/Nototropis_falcatus', 'Nototropis falcatus is a species of amphipod crustacean found in the northeastern Atlantic Ocean and North Sea', 87, '2020-04-26 14:16:53.641127+00', 9);
INSERT INTO public.document_externaldoc VALUES ('https://en.wikipedia.org/wiki/Half-Life:_Opposing_Force', 'Half-Life: Opposing Force is an expansion pack for Valve''s science fiction first-person shooter video game Half-Life', 88, '2020-04-26 14:20:15.328346+00', 9);


--
-- TOC entry 4143 (class 0 OID 16580)
-- Dependencies: 218
-- Data for Name: document_internaldoc; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.document_internaldoc VALUES (2, 2, 'M', 'RE', 70, 71, 41);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'M', 'OB', NULL, 69, 6);
INSERT INTO public.document_internaldoc VALUES (1, 3, 'P', 'RC', NULL, 72, 39);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'W', 'IN', 70, 73, 39);
INSERT INTO public.document_internaldoc VALUES (3, 2, 'M', 'IN', 70, 74, 30);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'M', 'OB', NULL, 70, 39);
INSERT INTO public.document_internaldoc VALUES (2, 1, 'M', 'RE', NULL, 75, 30);
INSERT INTO public.document_internaldoc VALUES (2, 1, 'M', 'RC', 72, 76, 41);
INSERT INTO public.document_internaldoc VALUES (1, 2, 'F', 'RE', 73, 77, 41);
INSERT INTO public.document_internaldoc VALUES (5, 2, 'W', 'IN', NULL, 78, 41);
INSERT INTO public.document_internaldoc VALUES (12, 2, 'W', 'IN', NULL, 80, 41);
INSERT INTO public.document_internaldoc VALUES (4, 5, 'W', 'IN', 70, 81, 41);
INSERT INTO public.document_internaldoc VALUES (2, 1, 'M', 'RE', NULL, 79, 41);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'F', 'RC', NULL, 82, 30);
INSERT INTO public.document_internaldoc VALUES (2, 1, 'M', 'OB', NULL, 83, 6);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'M', 'IN', 77, 84, 39);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'P', 'RE', NULL, 89, 41);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'P', 'IN', NULL, 90, 10);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'M', 'IN', 73, 91, 6);
INSERT INTO public.document_internaldoc VALUES (1, 1, 'M', 'RE', NULL, 93, 9);
INSERT INTO public.document_internaldoc VALUES (4, 5, 'P', 'RE', NULL, 94, 9);
INSERT INTO public.document_internaldoc VALUES (3, 1, 'M', 'RE', NULL, 95, 9);
INSERT INTO public.document_internaldoc VALUES (2, 1, 'M', 'RC', NULL, 96, 9);
INSERT INTO public.document_internaldoc VALUES (4, 5, 'M', 'RE', NULL, 97, 9);
INSERT INTO public.document_internaldoc VALUES (4, 5, 'M', 'RE', NULL, 98, 9);


--
-- TOC entry 4151 (class 0 OID 16658)
-- Dependencies: 226
-- Data for Name: work_work; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.work_work VALUES (83, '2020-04-25 05:49:42.33128+00', '2020-04-25 05:39:01.045727+00', 69, 6, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (101, '2020-04-28 09:42:30.730593+00', '2020-04-28 09:37:57.617345+00', 89, 41, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (102, NULL, '2020-04-28 10:46:40.261999+00', 90, 10, 'N', 'CR', '', 10, NULL);
INSERT INTO public.work_work VALUES (103, NULL, '2020-04-29 12:34:00.300041+00', 91, 6, 'N', 'CR', '', 6, NULL);
INSERT INTO public.work_work VALUES (84, '2020-04-25 06:02:24.257345+00', '2020-04-25 05:56:48.693454+00', 70, 39, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (85, '2020-04-25 06:13:52.714522+00', '2020-04-25 06:08:20.428407+00', 71, 41, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (86, '2020-04-25 06:16:26.025897+00', '2020-04-25 06:15:27.827948+00', 69, 32, 'C', 'CA', 'not good', NULL, NULL);
INSERT INTO public.work_work VALUES (105, '2020-04-29 16:58:17.161954+00', '2020-04-29 16:54:02.571413+00', 93, 9, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (87, '2020-04-25 06:18:23.227314+00', '2020-04-25 06:17:32.290103+00', 72, 39, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (88, NULL, '2020-04-25 06:20:59.211186+00', 73, 39, 'DCC', 'CR', '', 30, NULL);
INSERT INTO public.work_work VALUES (89, NULL, '2020-04-25 06:22:07.482175+00', 71, 30, 'DCC', 'E', 'not good', 30, 74);
INSERT INTO public.work_work VALUES (106, '2020-04-30 03:52:15.378775+00', '2020-04-30 03:48:22.379304+00', 94, 9, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (90, NULL, '2020-04-25 06:23:47.266555+00', 70, 30, 'SVP', 'E', 'not good', 41, 75);
INSERT INTO public.work_work VALUES (91, '2020-04-25 06:29:16.725846+00', '2020-04-25 06:28:29.336974+00', 76, 41, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (107, '2020-04-30 04:28:49.962997+00', '2020-04-30 04:25:02.177152+00', 95, 9, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (92, '2020-04-25 06:31:04.480228+00', '2020-04-25 06:30:07.786853+00', 77, 41, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (93, NULL, '2020-04-25 06:32:40.939536+00', 78, 41, 'DCC', 'CR', '', 30, NULL);
INSERT INTO public.work_work VALUES (108, '2020-04-30 04:38:02.256394+00', '2020-04-30 04:37:35.539815+00', 96, 9, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (95, NULL, '2020-04-25 06:36:52.555015+00', 80, 41, 'DCC', 'CR', '', 30, NULL);
INSERT INTO public.work_work VALUES (96, NULL, '2020-04-25 06:37:13.618617+00', 81, 41, 'DCC', 'CR', '', 30, NULL);
INSERT INTO public.work_work VALUES (109, '2020-04-30 04:44:26.529388+00', '2020-04-30 04:41:09.76548+00', 97, 9, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (94, '2020-04-25 06:38:46.728601+00', '2020-04-25 06:34:02.505734+00', 79, 41, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (97, '2020-04-25 06:41:45.002382+00', '2020-04-25 06:40:57.394194+00', 82, 30, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (110, '2020-04-30 05:24:01.369463+00', '2020-04-30 05:19:29.763098+00', 98, 9, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (98, '2020-04-25 09:23:25.46344+00', '2020-04-25 09:18:35.723643+00', 83, 6, 'C', 'CR', '', NULL, NULL);
INSERT INTO public.work_work VALUES (99, '2020-04-25 09:28:17.162125+00', '2020-04-25 09:27:14.380852+00', 83, 39, 'C', 'CA', 'ยกเลิก', NULL, NULL);
INSERT INTO public.work_work VALUES (100, NULL, '2020-04-25 18:03:48.336594+00', 84, 39, 'DCC', 'CR', '', 38, NULL);


--
-- TOC entry 4149 (class 0 OID 16650)
-- Dependencies: 224
-- Data for Name: work_delegateuser; Type: TABLE DATA; Schema: public; Owner: doadmin
--

INSERT INTO public.work_delegateuser VALUES (162, NULL, '2020-04-30 05:39:01.080635+00', 6, 83, true);
INSERT INTO public.work_delegateuser VALUES (163, NULL, '2020-04-30 05:39:50.690419+00', 38, 83, true);
INSERT INTO public.work_delegateuser VALUES (164, NULL, '2020-04-30 05:40:17.647625+00', 39, 83, true);
INSERT INTO public.work_delegateuser VALUES (165, NULL, '2020-04-30 05:46:34.422881+00', 40, 83, true);
INSERT INTO public.work_delegateuser VALUES (166, NULL, '2020-04-30 05:49:05.753114+00', 41, 83, true);
INSERT INTO public.work_delegateuser VALUES (167, NULL, '2020-04-30 05:56:48.727392+00', 39, 84, true);
INSERT INTO public.work_delegateuser VALUES (168, NULL, '2020-04-30 05:57:18.275041+00', 38, 84, true);
INSERT INTO public.work_delegateuser VALUES (169, NULL, '2020-04-30 06:00:38.476044+00', 39, 84, true);
INSERT INTO public.work_delegateuser VALUES (170, NULL, '2020-04-30 06:00:50.426771+00', 40, 84, true);
INSERT INTO public.work_delegateuser VALUES (171, NULL, '2020-04-30 06:00:58.432428+00', 41, 84, true);
INSERT INTO public.work_delegateuser VALUES (172, NULL, '2020-04-30 06:08:20.463317+00', 41, 85, true);
INSERT INTO public.work_delegateuser VALUES (173, NULL, '2020-04-30 06:08:58.841128+00', 30, 85, true);
INSERT INTO public.work_delegateuser VALUES (174, NULL, '2020-04-30 06:12:41.754722+00', 39, 85, true);
INSERT INTO public.work_delegateuser VALUES (175, NULL, '2020-04-30 06:13:06.974867+00', 32, 85, true);
INSERT INTO public.work_delegateuser VALUES (176, NULL, '2020-04-30 06:13:30.085326+00', 41, 85, true);
INSERT INTO public.work_delegateuser VALUES (177, NULL, '2020-04-30 06:15:27.861938+00', 30, 86, true);
INSERT INTO public.work_delegateuser VALUES (178, NULL, '2020-04-30 06:15:42.225783+00', 39, 86, true);
INSERT INTO public.work_delegateuser VALUES (179, NULL, '2020-04-30 06:15:57.871731+00', 32, 86, true);
INSERT INTO public.work_delegateuser VALUES (180, NULL, '2020-04-30 06:16:21.838354+00', 41, 86, true);
INSERT INTO public.work_delegateuser VALUES (181, NULL, '2020-04-30 06:17:32.325377+00', 39, 87, true);
INSERT INTO public.work_delegateuser VALUES (182, NULL, '2020-04-30 06:17:49.138139+00', 30, 87, true);
INSERT INTO public.work_delegateuser VALUES (183, NULL, '2020-04-30 06:20:59.247515+00', 39, 88, true);
INSERT INTO public.work_delegateuser VALUES (184, NULL, '2020-04-30 06:21:08.369487+00', 30, 88, false);
INSERT INTO public.work_delegateuser VALUES (185, NULL, '2020-04-30 06:22:07.516141+00', 30, 89, true);
INSERT INTO public.work_delegateuser VALUES (186, NULL, '2020-04-30 06:22:35.599411+00', 30, 89, false);
INSERT INTO public.work_delegateuser VALUES (187, NULL, '2020-04-30 06:23:47.303544+00', 30, 90, true);
INSERT INTO public.work_delegateuser VALUES (188, NULL, '2020-04-30 06:23:56.409976+00', 30, 90, true);
INSERT INTO public.work_delegateuser VALUES (189, NULL, '2020-04-30 06:24:08.366687+00', 39, 90, true);
INSERT INTO public.work_delegateuser VALUES (190, NULL, '2020-04-30 06:24:25.852392+00', 32, 90, true);
INSERT INTO public.work_delegateuser VALUES (191, NULL, '2020-04-30 06:24:47.859873+00', 41, 90, true);
INSERT INTO public.work_delegateuser VALUES (192, NULL, '2020-04-30 06:28:29.370948+00', 41, 91, true);
INSERT INTO public.work_delegateuser VALUES (193, NULL, '2020-04-30 06:29:02.933281+00', 30, 91, true);
INSERT INTO public.work_delegateuser VALUES (194, NULL, '2020-04-30 06:30:07.825262+00', 41, 92, true);
INSERT INTO public.work_delegateuser VALUES (195, NULL, '2020-04-30 06:30:15.650128+00', 30, 92, true);
INSERT INTO public.work_delegateuser VALUES (196, NULL, '2020-04-30 06:30:29.052523+00', 39, 92, true);
INSERT INTO public.work_delegateuser VALUES (197, NULL, '2020-04-30 06:30:35.568433+00', 32, 92, true);
INSERT INTO public.work_delegateuser VALUES (198, NULL, '2020-04-30 06:30:49.728529+00', 41, 92, true);
INSERT INTO public.work_delegateuser VALUES (199, NULL, '2020-04-30 06:32:40.973446+00', 41, 93, true);
INSERT INTO public.work_delegateuser VALUES (200, NULL, '2020-04-30 06:32:48.548112+00', 30, 93, false);
INSERT INTO public.work_delegateuser VALUES (201, NULL, '2020-04-30 06:34:02.541638+00', 41, 94, true);
INSERT INTO public.work_delegateuser VALUES (203, NULL, '2020-04-30 06:36:52.59092+00', 41, 95, true);
INSERT INTO public.work_delegateuser VALUES (204, NULL, '2020-04-30 06:36:59.558666+00', 30, 95, false);
INSERT INTO public.work_delegateuser VALUES (205, NULL, '2020-04-30 06:37:13.654497+00', 41, 96, true);
INSERT INTO public.work_delegateuser VALUES (206, NULL, '2020-04-30 06:37:20.591132+00', 30, 96, false);
INSERT INTO public.work_delegateuser VALUES (202, NULL, '2020-04-30 06:34:09.811168+00', 30, 94, true);
INSERT INTO public.work_delegateuser VALUES (207, NULL, '2020-04-30 06:38:09.007455+00', 39, 94, true);
INSERT INTO public.work_delegateuser VALUES (208, NULL, '2020-04-30 06:38:21.141857+00', 32, 94, true);
INSERT INTO public.work_delegateuser VALUES (209, NULL, '2020-04-30 06:38:40.111122+00', 41, 94, true);
INSERT INTO public.work_delegateuser VALUES (210, NULL, '2020-04-30 06:40:57.427162+00', 30, 97, true);
INSERT INTO public.work_delegateuser VALUES (211, NULL, '2020-04-30 06:41:04.793116+00', 38, 97, true);
INSERT INTO public.work_delegateuser VALUES (212, NULL, '2020-04-30 09:18:35.75855+00', 6, 98, true);
INSERT INTO public.work_delegateuser VALUES (213, NULL, '2020-04-30 09:19:06.352032+00', 38, 98, true);
INSERT INTO public.work_delegateuser VALUES (214, NULL, '2020-04-30 09:20:18.181366+00', 39, 98, true);
INSERT INTO public.work_delegateuser VALUES (215, NULL, '2020-04-30 09:21:22.516978+00', 40, 98, true);
INSERT INTO public.work_delegateuser VALUES (216, NULL, '2020-04-30 09:22:26.834224+00', 41, 98, true);
INSERT INTO public.work_delegateuser VALUES (217, NULL, '2020-04-30 09:27:14.434597+00', 6, 99, true);
INSERT INTO public.work_delegateuser VALUES (218, NULL, '2020-04-30 09:28:07.348807+00', 6, 99, true);
INSERT INTO public.work_delegateuser VALUES (219, NULL, '2020-04-30 09:28:11.847774+00', 6, 99, true);
INSERT INTO public.work_delegateuser VALUES (220, NULL, '2020-04-30 09:28:15.04668+00', 6, 99, true);
INSERT INTO public.work_delegateuser VALUES (221, NULL, '2020-04-30 18:03:48.373496+00', 39, 100, true);
INSERT INTO public.work_delegateuser VALUES (222, NULL, '2020-04-30 18:04:12.213723+00', 38, 100, false);
INSERT INTO public.work_delegateuser VALUES (223, NULL, '2020-05-03 09:37:57.661319+00', 41, 101, true);
INSERT INTO public.work_delegateuser VALUES (224, NULL, '2020-05-03 09:40:22.010666+00', 38, 101, true);
INSERT INTO public.work_delegateuser VALUES (225, NULL, '2020-05-03 09:40:50.241857+00', 39, 101, true);
INSERT INTO public.work_delegateuser VALUES (226, NULL, '2020-05-03 09:41:10.898537+00', 40, 101, true);
INSERT INTO public.work_delegateuser VALUES (227, NULL, '2020-05-03 09:41:42.692689+00', 37, 101, true);
INSERT INTO public.work_delegateuser VALUES (228, NULL, '2020-05-03 10:46:40.264692+00', 10, 102, false);
INSERT INTO public.work_delegateuser VALUES (229, NULL, '2020-05-04 12:34:00.302492+00', 6, 103, false);
INSERT INTO public.work_delegateuser VALUES (254, NULL, '2020-05-05 04:43:07.188218+00', 31, 109, true);
INSERT INTO public.work_delegateuser VALUES (255, NULL, '2020-05-05 04:43:45.512989+00', 32, 109, true);
INSERT INTO public.work_delegateuser VALUES (256, NULL, '2020-05-05 04:44:03.19016+00', 33, 109, true);
INSERT INTO public.work_delegateuser VALUES (235, NULL, '2020-05-04 16:54:02.573624+00', 9, 105, true);
INSERT INTO public.work_delegateuser VALUES (236, NULL, '2020-05-04 16:55:24.591151+00', 30, 105, true);
INSERT INTO public.work_delegateuser VALUES (237, NULL, '2020-05-04 16:56:47.900208+00', 31, 105, true);
INSERT INTO public.work_delegateuser VALUES (238, NULL, '2020-05-04 16:57:21.217484+00', 32, 105, true);
INSERT INTO public.work_delegateuser VALUES (239, NULL, '2020-05-04 16:57:39.342808+00', 33, 105, true);
INSERT INTO public.work_delegateuser VALUES (240, NULL, '2020-05-05 03:48:22.381878+00', 9, 106, true);
INSERT INTO public.work_delegateuser VALUES (241, NULL, '2020-05-05 03:49:54.836509+00', 30, 106, true);
INSERT INTO public.work_delegateuser VALUES (242, NULL, '2020-05-05 03:50:35.314609+00', 31, 106, true);
INSERT INTO public.work_delegateuser VALUES (243, NULL, '2020-05-05 03:51:25.236603+00', 32, 106, true);
INSERT INTO public.work_delegateuser VALUES (244, NULL, '2020-05-05 03:51:46.643804+00', 33, 106, true);
INSERT INTO public.work_delegateuser VALUES (245, NULL, '2020-05-05 04:25:02.183711+00', 9, 107, true);
INSERT INTO public.work_delegateuser VALUES (246, NULL, '2020-05-05 04:26:25.630552+00', 30, 107, true);
INSERT INTO public.work_delegateuser VALUES (247, NULL, '2020-05-05 04:27:27.382768+00', 31, 107, true);
INSERT INTO public.work_delegateuser VALUES (248, NULL, '2020-05-05 04:28:02.640089+00', 32, 107, true);
INSERT INTO public.work_delegateuser VALUES (249, NULL, '2020-05-05 04:28:25.970146+00', 33, 107, true);
INSERT INTO public.work_delegateuser VALUES (250, NULL, '2020-05-05 04:37:35.542139+00', 9, 108, true);
INSERT INTO public.work_delegateuser VALUES (251, NULL, '2020-05-05 04:37:48.113441+00', 30, 108, true);
INSERT INTO public.work_delegateuser VALUES (252, NULL, '2020-05-05 04:41:09.767411+00', 9, 109, true);
INSERT INTO public.work_delegateuser VALUES (253, NULL, '2020-05-05 04:42:17.031602+00', 30, 109, true);
INSERT INTO public.work_delegateuser VALUES (257, NULL, '2020-05-05 05:19:29.766661+00', 9, 110, true);
INSERT INTO public.work_delegateuser VALUES (258, NULL, '2020-05-05 05:22:20.201445+00', 30, 110, true);
INSERT INTO public.work_delegateuser VALUES (259, NULL, '2020-05-05 05:22:57.801151+00', 31, 110, true);
INSERT INTO public.work_delegateuser VALUES (260, NULL, '2020-05-05 05:23:20.15148+00', 32, 110, true);
INSERT INTO public.work_delegateuser VALUES (261, NULL, '2020-05-05 05:23:43.727645+00', 33, 110, true);