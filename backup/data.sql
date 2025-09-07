SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4
-- Dumped by pg_dump version 17.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
00000000-0000-0000-0000-000000000000	9a6c2fe4-42e3-490f-a503-c536ea99fa6d	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"jk@aol.com","user_id":"456c1ed4-d71f-4272-8349-44d4003fc5f0","user_phone":""}}	2025-08-20 05:24:51.30335+00	
00000000-0000-0000-0000-000000000000	67b966dd-14aa-48fa-95dc-6a03317d66a3	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"jk@aol.com","user_id":"456c1ed4-d71f-4272-8349-44d4003fc5f0","user_phone":""}}	2025-08-20 05:29:13.938456+00	
00000000-0000-0000-0000-000000000000	d3f8cd8a-bf90-4afd-898b-13785c726781	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"justininkrakow@gmail.com","user_id":"57f54a86-88ee-4431-9926-90d220b87c3b","user_phone":""}}	2025-08-22 11:12:29.85494+00	
00000000-0000-0000-0000-000000000000	bafc8d45-c9c5-4b2f-9893-99e48077bd3b	{"action":"login","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-24 10:42:58.854969+00	
00000000-0000-0000-0000-000000000000	46bb017e-7c39-4465-a45e-ecd799087651	{"action":"login","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-24 11:23:15.909082+00	
00000000-0000-0000-0000-000000000000	da226bf1-064f-4886-91eb-6cfddc81d106	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-24 19:58:41.151647+00	
00000000-0000-0000-0000-000000000000	c3063c61-f1e3-4fca-b6e4-55b24c9ff6bb	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-24 19:58:41.153558+00	
00000000-0000-0000-0000-000000000000	db85e892-dbe1-4f97-ad40-1b4520dc060b	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-24 20:58:07.897136+00	
00000000-0000-0000-0000-000000000000	59688ae7-0a5b-47d3-9dea-82c797704a40	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-24 20:58:07.898317+00	
00000000-0000-0000-0000-000000000000	a8685e75-7836-476c-9374-9397f62db730	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-24 20:58:07.910776+00	
00000000-0000-0000-0000-000000000000	4fc80218-735a-4ff7-bcae-1ef4901e64eb	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-24 20:58:07.931894+00	
00000000-0000-0000-0000-000000000000	946ab973-4a46-43c3-9060-12af265c2cb3	{"action":"logout","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-24 21:52:18.428251+00	
00000000-0000-0000-0000-000000000000	c4c55c82-971b-4ac5-a329-53b5a70cdcc0	{"action":"login","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-24 21:53:05.307707+00	
00000000-0000-0000-0000-000000000000	f073cee0-7020-463e-aa19-eeb7f8be3762	{"action":"user_signedup","actor_id":"119934c8-3b0f-4a7b-bbea-c97bbcea4049","actor_username":"admin@snaptrip.io","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}	2025-08-24 22:32:13.764439+00	
00000000-0000-0000-0000-000000000000	1551a7d4-00a0-4428-90ac-c2a2e23ee911	{"action":"login","actor_id":"119934c8-3b0f-4a7b-bbea-c97bbcea4049","actor_username":"admin@snaptrip.io","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-24 22:32:13.767419+00	
00000000-0000-0000-0000-000000000000	8a84e00a-fed5-4a18-a1f6-402c5ec5c917	{"action":"logout","actor_id":"119934c8-3b0f-4a7b-bbea-c97bbcea4049","actor_username":"admin@snaptrip.io","actor_via_sso":false,"log_type":"account"}	2025-08-24 22:32:29.353481+00	
00000000-0000-0000-0000-000000000000	f1168920-d76c-4e7e-8b87-4c6b142c6de2	{"action":"login","actor_id":"119934c8-3b0f-4a7b-bbea-c97bbcea4049","actor_username":"admin@snaptrip.io","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-24 22:32:42.767373+00	
00000000-0000-0000-0000-000000000000	0ca67d6d-8db8-463e-80c4-8b2d4f2db0fe	{"action":"logout","actor_id":"119934c8-3b0f-4a7b-bbea-c97bbcea4049","actor_username":"admin@snaptrip.io","actor_via_sso":false,"log_type":"account"}	2025-08-24 22:43:31.262044+00	
00000000-0000-0000-0000-000000000000	b4d1ac52-f48c-417b-a6f7-01c32f4ae37b	{"action":"login","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-24 22:43:35.579273+00	
00000000-0000-0000-0000-000000000000	2da408aa-fb7f-49a7-a035-80a29fdbc430	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"admin@snaptrip.io","user_id":"119934c8-3b0f-4a7b-bbea-c97bbcea4049","user_phone":""}}	2025-08-24 22:54:04.743895+00	
00000000-0000-0000-0000-000000000000	b4ffd933-9669-47eb-b0cd-c987cf6b50e9	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"admin@snaptrip.io","user_id":"8a39c5d0-4c66-4113-9c7f-13c5bd9e00b2","user_phone":""}}	2025-08-24 22:54:35.158285+00	
00000000-0000-0000-0000-000000000000	f34b4738-153a-49ec-a4e2-51ceb8894215	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"editor@snaptrip.io","user_id":"3d3ddd94-d687-44c6-a60a-31097f46fe44","user_phone":""}}	2025-08-24 22:55:07.688006+00	
00000000-0000-0000-0000-000000000000	30f45949-66ad-4943-bf26-326ac1b94180	{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"provider":"email","user_email":"viewer@snaptrip.io","user_id":"689482bc-fb0f-4d05-bbf5-016e2c295a29","user_phone":""}}	2025-08-24 22:55:36.153478+00	
00000000-0000-0000-0000-000000000000	5da81b51-a19e-4298-b085-301cb00aaa04	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"viewer@snaptrip.io","user_id":"689482bc-fb0f-4d05-bbf5-016e2c295a29","user_phone":""}}	2025-08-24 23:29:26.77111+00	
00000000-0000-0000-0000-000000000000	6ca14467-3bfd-4d83-84cd-3718f54a4613	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"editor@snaptrip.io","user_id":"3d3ddd94-d687-44c6-a60a-31097f46fe44","user_phone":""}}	2025-08-24 23:29:26.770925+00	
00000000-0000-0000-0000-000000000000	ee194a05-984d-4a60-a12a-9a301fd807f9	{"action":"user_deleted","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"admin@snaptrip.io","user_id":"8a39c5d0-4c66-4113-9c7f-13c5bd9e00b2","user_phone":""}}	2025-08-24 23:29:26.782156+00	
00000000-0000-0000-0000-000000000000	3cb78e08-29e6-403e-b120-735811c211f8	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-25 08:47:05.122754+00	
00000000-0000-0000-0000-000000000000	376c9696-77ff-43bb-86b7-2f8a01beb56b	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-25 08:47:05.123614+00	
00000000-0000-0000-0000-000000000000	4f26faf0-883b-4ae6-a09f-bc1bf6c35eb3	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-25 15:13:08.699305+00	
00000000-0000-0000-0000-000000000000	f1437bb1-9401-4adf-87dd-4d9b39fef7db	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-25 15:13:08.701049+00	
00000000-0000-0000-0000-000000000000	3879a25c-c1be-4c76-8019-36fd37b53293	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 08:01:10.158377+00	
00000000-0000-0000-0000-000000000000	20538d01-8f54-4481-beff-5838625c9c6e	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 08:01:10.160009+00	
00000000-0000-0000-0000-000000000000	1dcb9857-d4fd-48cc-8a67-694fba104533	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 09:11:43.903354+00	
00000000-0000-0000-0000-000000000000	a80210d8-aa57-4bd0-800f-c803188b1983	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 09:11:43.905714+00	
00000000-0000-0000-0000-000000000000	337f2b77-db95-4f10-8671-ac2a2af4d3ac	{"action":"logout","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"account"}	2025-08-26 09:59:48.4539+00	
00000000-0000-0000-0000-000000000000	5c0b8181-2819-4d56-9b32-24539702d65e	{"action":"login","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-26 10:00:47.955662+00	
00000000-0000-0000-0000-000000000000	84a54a08-d366-4f2b-975c-9aa13eb68951	{"action":"login","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}	2025-08-26 10:00:48.837018+00	
00000000-0000-0000-0000-000000000000	2b7f0813-8784-4c17-9be6-12358c67ab39	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 23:50:36.811602+00	
00000000-0000-0000-0000-000000000000	405e1aba-cc9a-4214-abf4-421811f1f757	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-26 23:50:36.816038+00	
00000000-0000-0000-0000-000000000000	827084f7-9caa-4bfe-87a5-9a35d76b115a	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-27 10:37:50.802354+00	
00000000-0000-0000-0000-000000000000	202c46db-c340-4f91-b1bd-ec69fc975747	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-27 10:37:50.803693+00	
00000000-0000-0000-0000-000000000000	3aff90b0-8f41-4531-acc0-a449d7ef9729	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-27 12:53:53.943828+00	
00000000-0000-0000-0000-000000000000	d4f69b1f-98bf-4e35-9a22-625377396200	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-27 12:53:53.94548+00	
00000000-0000-0000-0000-000000000000	fedcc0bd-8dc6-4e88-8745-f43ca3e06878	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 08:13:03.770655+00	
00000000-0000-0000-0000-000000000000	e46a4773-55e1-47b3-bdb8-48cb8b5b54c9	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 08:13:03.772093+00	
00000000-0000-0000-0000-000000000000	9d283b34-f5fe-4400-afb9-52912bc627f7	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 09:11:26.621196+00	
00000000-0000-0000-0000-000000000000	c8cada0b-c11c-451d-b2f3-c11f29b80570	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 09:11:26.622131+00	
00000000-0000-0000-0000-000000000000	594487e6-8d97-400e-9db7-c808647bb3e1	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 12:15:05.051002+00	
00000000-0000-0000-0000-000000000000	12043dda-aead-4156-bf05-d8fac80ff2f9	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 12:15:05.052398+00	
00000000-0000-0000-0000-000000000000	7031190e-3efa-4501-8395-2ff37ac9b07a	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 19:35:36.148459+00	
00000000-0000-0000-0000-000000000000	3e3f3401-0752-4c20-b447-bfcde411b5dc	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 19:35:36.149787+00	
00000000-0000-0000-0000-000000000000	08809e2b-75b7-4a8b-9953-c56567673ea7	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 21:30:30.610897+00	
00000000-0000-0000-0000-000000000000	84782c36-7489-406c-9c37-bede3a1e7097	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 21:30:30.612079+00	
00000000-0000-0000-0000-000000000000	32646ca3-1395-4787-8052-f2cb55d6abef	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 22:29:51.907418+00	
00000000-0000-0000-0000-000000000000	24a79a17-0870-44e8-9c9d-d9c61f0cf711	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 22:29:51.908767+00	
00000000-0000-0000-0000-000000000000	dde8a873-072f-4bf3-a930-77a5b26eb3b0	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 23:32:41.733792+00	
00000000-0000-0000-0000-000000000000	5196fc41-f81e-4988-ac5e-897e6830882f	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-28 23:32:41.73511+00	
00000000-0000-0000-0000-000000000000	50a14cad-72ed-4913-acd9-6806a4585faf	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 00:31:07.003968+00	
00000000-0000-0000-0000-000000000000	601fcc92-bd02-4551-8170-9aeaacc93fd9	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 00:31:07.005821+00	
00000000-0000-0000-0000-000000000000	0339174e-96a1-46af-9731-0b41b6e6224b	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 01:29:36.921013+00	
00000000-0000-0000-0000-000000000000	5fb1855a-4ba2-496a-bda6-26597efda4a0	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 01:29:36.922566+00	
00000000-0000-0000-0000-000000000000	0b0b64bd-2a13-4c99-a7c4-ba8984bebd2a	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 02:27:36.808992+00	
00000000-0000-0000-0000-000000000000	009c3c36-07f3-415f-85b2-9be412e0352c	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 02:27:36.81145+00	
00000000-0000-0000-0000-000000000000	e9e3c35e-800a-43f1-8c5f-364017b45bb3	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 03:25:36.724981+00	
00000000-0000-0000-0000-000000000000	1a6c0df6-9070-4a6b-83b7-7efcb9ca4517	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 03:25:36.726475+00	
00000000-0000-0000-0000-000000000000	85497b55-9e0a-46b2-8d9a-c2e32c695a25	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 04:23:36.670751+00	
00000000-0000-0000-0000-000000000000	f26e6cbc-150e-466d-ab51-de791af62c70	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 04:23:36.672417+00	
00000000-0000-0000-0000-000000000000	9f6b5a03-c670-4ab3-ad73-f1dcad53e2cb	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 05:21:36.54266+00	
00000000-0000-0000-0000-000000000000	9b6e9165-9c8a-47e4-b7bf-0d75363780e8	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 05:21:36.543916+00	
00000000-0000-0000-0000-000000000000	6c58d306-eaa8-451a-af91-51fbed718fab	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 06:19:36.442424+00	
00000000-0000-0000-0000-000000000000	d387f34c-b198-428b-be70-9e1df935ae11	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 06:19:36.444093+00	
00000000-0000-0000-0000-000000000000	c1f213ab-15e3-4088-ae67-e9855a1dc105	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 07:17:36.362951+00	
00000000-0000-0000-0000-000000000000	65fab584-a93e-472a-9e2f-727f31141f8c	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 07:17:36.364592+00	
00000000-0000-0000-0000-000000000000	0a557d36-b339-4f59-877a-46b30dde1f88	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 08:15:36.250192+00	
00000000-0000-0000-0000-000000000000	21f7ef91-92ca-426d-ba36-c464f5489656	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 08:15:36.251732+00	
00000000-0000-0000-0000-000000000000	822da221-1ff4-42ba-9c5e-5e7f0b1fe4f0	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 10:28:17.759462+00	
00000000-0000-0000-0000-000000000000	2da2384a-f9ef-42be-a025-70849f7f6196	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 10:28:17.761356+00	
00000000-0000-0000-0000-000000000000	0dad139a-d447-443b-b9f7-5116d9004f89	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 11:54:03.474143+00	
00000000-0000-0000-0000-000000000000	72f7c4ce-ef15-4e7f-9bef-520561dc8e66	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 11:54:03.475676+00	
00000000-0000-0000-0000-000000000000	056b889b-cadb-458e-993c-1b5186611c51	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 16:30:57.484724+00	
00000000-0000-0000-0000-000000000000	6eafca81-9b50-4292-91bb-1316c0cbf9dd	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 16:30:57.487173+00	
00000000-0000-0000-0000-000000000000	2c9906b9-82dd-4c95-801c-31da975a75aa	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 15:31:48.607869+00	
00000000-0000-0000-0000-000000000000	3d75d727-8e59-4c23-a2fc-5d936b467217	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-08-29 15:31:48.609824+00	
00000000-0000-0000-0000-000000000000	d610d118-39ac-44a0-bf32-d3b1d6d3d034	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-01 22:33:55.201814+00	
00000000-0000-0000-0000-000000000000	63021c26-c841-455a-87b5-453611a5ca0b	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-01 22:33:55.205219+00	
00000000-0000-0000-0000-000000000000	03280af0-c470-4ea7-a275-b79e5456863d	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 09:30:59.394669+00	
00000000-0000-0000-0000-000000000000	212f0572-1588-4596-9626-89db94a3af72	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 09:30:59.396085+00	
00000000-0000-0000-0000-000000000000	906c08d9-be43-410c-be12-cd09361289dc	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 10:51:49.472874+00	
00000000-0000-0000-0000-000000000000	b492c57e-03e3-4a03-8504-57c006d05278	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 10:51:49.473722+00	
00000000-0000-0000-0000-000000000000	6a059e12-0937-4595-b5de-ece24d2d9773	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 10:51:49.508339+00	
00000000-0000-0000-0000-000000000000	0894fd9d-9e68-4cab-914f-c7c98fefcd5a	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 12:44:26.50496+00	
00000000-0000-0000-0000-000000000000	ca8eda6a-7e41-4222-bc06-8d739af83f32	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 12:44:26.50985+00	
00000000-0000-0000-0000-000000000000	cbf51f3a-655f-43c4-a031-591244bb1bdc	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 12:44:26.523185+00	
00000000-0000-0000-0000-000000000000	a3d6e51d-72bc-4571-9b63-1b04bf2a6607	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 12:44:26.536641+00	
00000000-0000-0000-0000-000000000000	f45d7109-d23a-4830-b6e7-1953efcfbd0b	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 14:29:04.678777+00	
00000000-0000-0000-0000-000000000000	d75d5317-b461-4acb-8f49-460925161a5d	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 14:29:04.684092+00	
00000000-0000-0000-0000-000000000000	e1d99050-5579-49ab-8386-160b3e9ad113	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 20:01:26.482503+00	
00000000-0000-0000-0000-000000000000	3fcc03fa-d28c-475e-96ee-3b4a14357dda	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 20:01:26.484198+00	
00000000-0000-0000-0000-000000000000	fae0eed8-d5bb-461c-a01f-858fbe59f147	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 21:00:31.755597+00	
00000000-0000-0000-0000-000000000000	982884d9-f33a-4988-906b-cb21dbf3807f	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 21:00:31.756605+00	
00000000-0000-0000-0000-000000000000	58158421-ab04-49f7-9b70-ab4d854f9c7c	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 22:04:02.847807+00	
00000000-0000-0000-0000-000000000000	6d76b486-45f2-41a0-9db9-9e628e0b2444	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 22:04:02.851601+00	
00000000-0000-0000-0000-000000000000	909df812-c85a-49d2-bcf6-3a544fd4c086	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 23:19:55.360011+00	
00000000-0000-0000-0000-000000000000	396a8075-21fb-455d-aaa8-036818b51140	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 23:19:55.360844+00	
00000000-0000-0000-0000-000000000000	596672e6-bf2a-414a-8993-d3779abaa977	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-04 23:19:55.375459+00	
00000000-0000-0000-0000-000000000000	533ea143-7881-497d-95b7-a41ef3f0261f	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 00:38:40.514075+00	
00000000-0000-0000-0000-000000000000	db870273-d29f-4b5e-bf8e-0c6435128ac8	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 00:38:40.514996+00	
00000000-0000-0000-0000-000000000000	1d54e240-8d30-4fbb-99d2-d1e30a459eb8	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 00:38:40.535013+00	
00000000-0000-0000-0000-000000000000	dd1c69ea-be72-410b-a854-8116f9e98160	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 10:00:59.349651+00	
00000000-0000-0000-0000-000000000000	60e67582-590f-4734-a690-8e94aeb5123a	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 10:00:59.35046+00	
00000000-0000-0000-0000-000000000000	aeaf2c04-2a82-4573-b54f-ba0534f59c22	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 11:56:08.843078+00	
00000000-0000-0000-0000-000000000000	ea6a9490-0fd9-4a18-8b89-47ba45bf9cfc	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 11:56:08.843991+00	
00000000-0000-0000-0000-000000000000	d47ffc7f-52d0-42ae-820b-0dc9d46c07f2	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 13:01:34.186055+00	
00000000-0000-0000-0000-000000000000	75fb26fe-b588-428c-8f0d-48e7cb8e7491	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 13:01:34.188013+00	
00000000-0000-0000-0000-000000000000	bce6aa19-5a30-4d98-ab33-b2355cf853c4	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 16:47:39.224811+00	
00000000-0000-0000-0000-000000000000	11b481e9-7c7e-4a1e-b554-1e857735d537	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 16:47:39.231323+00	
00000000-0000-0000-0000-000000000000	6a47ebfe-13de-4183-9a5f-0b1715342580	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 18:50:45.006674+00	
00000000-0000-0000-0000-000000000000	7454580c-ba47-4c5b-a6dd-412f734de1cc	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-05 18:50:45.008911+00	
00000000-0000-0000-0000-000000000000	c73048a4-8366-4e80-8c76-178a269fdfb0	{"action":"token_refreshed","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-06 21:39:11.397649+00	
00000000-0000-0000-0000-000000000000	e11ec3ef-aa8b-468f-bb70-fd3c7ba38a83	{"action":"token_revoked","actor_id":"57f54a86-88ee-4431-9926-90d220b87c3b","actor_username":"justininkrakow@gmail.com","actor_via_sso":false,"log_type":"token"}	2025-09-06 21:39:11.399114+00	
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
00000000-0000-0000-0000-000000000000	57f54a86-88ee-4431-9926-90d220b87c3b	authenticated	authenticated	justininkrakow@gmail.com	$2a$10$49GtgyV68VaOeCQUFmeiCefAaKVnyOM2GIAP7/qGSz78QtpJPlCqy	2025-08-22 11:12:29.857053+00	\N		\N		\N			\N	2025-08-26 10:00:48.839347+00	{"provider": "email", "providers": ["email"]}	{"email_verified": true}	\N	2025-08-22 11:12:29.851119+00	2025-09-06 21:39:11.400986+00	\N	\N			\N		0	\N		\N	f	\N	f
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
57f54a86-88ee-4431-9926-90d220b87c3b	57f54a86-88ee-4431-9926-90d220b87c3b	{"sub": "57f54a86-88ee-4431-9926-90d220b87c3b", "email": "justininkrakow@gmail.com", "email_verified": false, "phone_verified": false}	email	2025-08-22 11:12:29.853805+00	2025-08-22 11:12:29.853825+00	2025-08-22 11:12:29.853825+00	a3afd88c-b1ef-46ef-94d1-3a8fedf57f3d
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") FROM stdin;
0cd382c9-8218-44bb-ba8b-7850643baded	57f54a86-88ee-4431-9926-90d220b87c3b	2025-08-26 10:00:47.957525+00	2025-08-26 10:00:47.957525+00	\N	aal1	\N	\N	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36	192.168.65.1	\N
ac280d4b-31d3-4c85-8445-ea9b92c1d4bb	57f54a86-88ee-4431-9926-90d220b87c3b	2025-08-26 10:00:48.839473+00	2025-09-06 21:39:11.403236+00	\N	aal1	\N	2025-09-06 21:39:11.403203	Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36	172.18.0.1	\N
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
0cd382c9-8218-44bb-ba8b-7850643baded	2025-08-26 10:00:47.961082+00	2025-08-26 10:00:47.961082+00	password	3e681374-4eb7-4d42-a6d8-f1faade618f6
ac280d4b-31d3-4c85-8445-ea9b92c1d4bb	2025-08-26 10:00:48.841536+00	2025-08-26 10:00:48.841536+00	password	f15455c1-7a2f-4fa6-880c-05505a464d58
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
00000000-0000-0000-0000-000000000000	51	vfon4xo2t2qx	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-05 16:47:39.23331+00	2025-09-05 18:50:45.009439+00	sufpyarsjwzx	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	52	zhnkprnmzt27	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-05 18:50:45.010245+00	2025-09-06 21:39:11.399414+00	vfon4xo2t2qx	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	53	74f6hl5kbrgl	57f54a86-88ee-4431-9926-90d220b87c3b	f	2025-09-06 21:39:11.400327+00	2025-09-06 21:39:11.400327+00	zhnkprnmzt27	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	13	qj4ggwg4zqnq	57f54a86-88ee-4431-9926-90d220b87c3b	f	2025-08-26 10:00:47.958832+00	2025-08-26 10:00:47.958832+00	\N	0cd382c9-8218-44bb-ba8b-7850643baded
00000000-0000-0000-0000-000000000000	14	ktglaasn6b5r	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-26 10:00:48.840349+00	2025-08-26 23:50:36.821037+00	\N	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	15	ib2vdzlq3sc6	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-26 23:50:36.823284+00	2025-08-27 10:37:50.804327+00	ktglaasn6b5r	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	16	ectjwzl6x424	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-27 10:37:50.805984+00	2025-08-27 12:53:53.946123+00	ib2vdzlq3sc6	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	17	ae7erkbdsfn2	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-27 12:53:53.948065+00	2025-08-28 08:13:03.772533+00	ectjwzl6x424	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	18	jr4yzbbhjfu6	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-28 08:13:03.773586+00	2025-08-28 09:11:26.622575+00	ae7erkbdsfn2	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	19	37js322chfrj	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-28 09:11:26.623157+00	2025-08-28 12:15:05.053048+00	jr4yzbbhjfu6	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	20	ikgi5owwgcfg	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-28 12:15:05.053911+00	2025-08-28 19:35:36.150478+00	37js322chfrj	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	21	hm7j52rrilxp	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-28 19:35:36.151148+00	2025-08-28 21:30:30.612799+00	ikgi5owwgcfg	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	22	nro5zw447fmi	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-28 21:30:30.613587+00	2025-08-28 22:29:51.909104+00	hm7j52rrilxp	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	23	3nstja32iawl	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-28 22:29:51.91001+00	2025-08-28 23:32:41.735521+00	nro5zw447fmi	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	24	nfqhkbn33pjp	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-28 23:32:41.736191+00	2025-08-29 00:31:07.006614+00	3nstja32iawl	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	25	hccdfsgsjx5u	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 00:31:07.007479+00	2025-08-29 01:29:36.92327+00	nfqhkbn33pjp	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	26	7e3nnon6sbpq	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 01:29:36.924104+00	2025-08-29 02:27:36.812132+00	hccdfsgsjx5u	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	27	jzb2idixo374	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 02:27:36.813046+00	2025-08-29 03:25:36.727231+00	7e3nnon6sbpq	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	28	fiyevgpsngr2	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 03:25:36.727995+00	2025-08-29 04:23:36.673204+00	jzb2idixo374	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	29	uz77dywdqdji	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 04:23:36.674031+00	2025-08-29 05:21:36.544544+00	fiyevgpsngr2	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	30	liv7yjd5q7th	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 05:21:36.54531+00	2025-08-29 06:19:36.44489+00	uz77dywdqdji	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	31	qb4arlwqalj3	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 06:19:36.445783+00	2025-08-29 07:17:36.365354+00	liv7yjd5q7th	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	32	agncc75ueejr	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 07:17:36.366207+00	2025-08-29 08:15:36.252558+00	qb4arlwqalj3	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	33	gfc6nob32upt	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 08:15:36.25348+00	2025-08-29 10:28:17.761696+00	agncc75ueejr	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	34	fo37oh5vrnmv	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 10:28:17.762231+00	2025-08-29 11:54:03.476526+00	gfc6nob32upt	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	35	ew6qmsfgczws	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 11:54:03.477076+00	2025-08-29 15:31:48.61022+00	fo37oh5vrnmv	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	36	ggpluhx6pmh5	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 15:31:48.612067+00	2025-08-29 16:30:57.487694+00	ew6qmsfgczws	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	37	c7tsg4s3z3qy	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-08-29 16:30:57.488985+00	2025-09-01 22:33:55.205506+00	ggpluhx6pmh5	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	38	ob5hbneyea2h	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-01 22:33:55.207348+00	2025-09-04 09:30:59.39638+00	c7tsg4s3z3qy	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	39	sob27czmnhe2	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-04 09:30:59.402846+00	2025-09-04 10:51:49.474352+00	ob5hbneyea2h	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	40	rntg3yxu5pgo	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-04 10:51:49.475358+00	2025-09-04 12:44:26.510469+00	sob27czmnhe2	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	41	kmpwb2whwu3n	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-04 12:44:26.511308+00	2025-09-04 14:29:04.684661+00	rntg3yxu5pgo	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	42	iksfzon4diqn	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-04 14:29:04.686615+00	2025-09-04 20:01:26.484562+00	kmpwb2whwu3n	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	43	36uhswgsdfpg	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-04 20:01:26.485816+00	2025-09-04 21:00:31.757046+00	iksfzon4diqn	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	44	b7gbzl7jejol	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-04 21:00:31.757717+00	2025-09-04 22:04:02.852907+00	36uhswgsdfpg	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	45	hhn3hew5vuql	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-04 22:04:02.853692+00	2025-09-04 23:19:55.361227+00	b7gbzl7jejol	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	46	ixzs3e6bi5gb	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-04 23:19:55.361814+00	2025-09-05 00:38:40.515409+00	hhn3hew5vuql	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	47	7n6apgvemk5v	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-05 00:38:40.516034+00	2025-09-05 10:00:59.35128+00	ixzs3e6bi5gb	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	48	vwiebigrv25h	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-05 10:00:59.351999+00	2025-09-05 11:56:08.844429+00	7n6apgvemk5v	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	49	dn7b3z5xijqp	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-05 11:56:08.845029+00	2025-09-05 13:01:34.188389+00	vwiebigrv25h	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
00000000-0000-0000-0000-000000000000	50	sufpyarsjwzx	57f54a86-88ee-4431-9926-90d220b87c3b	t	2025-09-05 13:01:34.189483+00	2025-09-05 16:47:39.23225+00	dn7b3z5xijqp	ac280d4b-31d3-4c85-8445-ea9b92c1d4bb
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: labels; Type: TABLE DATA; Schema: i18n; Owner: postgres
--

COPY "i18n"."labels" ("id") FROM stdin;
\.


--
-- Data for Name: continents; Type: TABLE DATA; Schema: iso; Owner: postgres
--

COPY "iso"."continents" ("id", "name") FROM stdin;
AF	Africa
AN	Antarctica
AS	Asia
EU	Europe
NA	North America
OC	Oceania
SA	South America
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: iso; Owner: postgres
--

COPY "iso"."countries" ("id", "continent", "name", "flag", "tld", "prefix", "is_eu", "enabled") FROM stdin;
ad	EU	Andorra	🇦🇩	ad	376	f	f
ae	AS	United Arab Emirates	🇦🇪	ae	971	f	f
af	AS	Afghanistan	🇦🇫	af	93	f	f
ag	NA	Antigua and Barbuda	🇦🇬	ag	1268	f	f
ai	NA	Anguilla	🇦🇮	ai	1264	f	f
al	EU	Albania	🇦🇱	al	355	f	f
am	AS	Armenia	🇦🇲	am	374	f	f
ao	AF	Angola	🇦🇴	ao	244	f	f
aq	AN	Antarctica	🇦🇶	aq		f	f
ar	SA	Argentina	🇦🇷	ar	54	f	f
as	OC	American Samoa	🇦🇸	as	1684	f	f
at	EU	Austria	🇦🇹	at	43	t	f
au	OC	Australia	🇦🇺	au	61	f	f
aw	NA	Aruba	🇦🇼	aw	297	f	f
ax	EU	Åland Islands	🇦🇽	ax	358	f	f
az	AS	Azerbaijan	🇦🇿	az	994	f	f
ba	EU	Bosnia and Herzegovina	🇧🇦	ba	387	f	f
bb	NA	Barbados	🇧🇧	bb	1246	f	f
bd	AS	Bangladesh	🇧🇩	bd	880	f	f
be	EU	Belgium	🇧🇪	be	32	t	f
bf	AF	Burkina Faso	🇧🇫	bf	226	f	f
bg	EU	Bulgaria	🇧🇬	bg	359	t	f
bh	AS	Bahrain	🇧🇭	bh	973	f	f
bi	AF	Burundi	🇧🇮	bi	257	f	f
bj	AF	Benin	🇧🇯	bj	229	f	f
bl	NA	Saint Barthélemy	🇧🇱	bl	590	f	f
bm	NA	Bermuda	🇧🇲	bm	1441	f	f
bn	AS	Brunei	🇧🇳	bn	673	f	f
bo	SA	Bolivia	🇧🇴	bo	591	f	f
bq	NA	Caribbean Netherlands	🇧🇶	  	599	f	f
br	SA	Brazil	🇧🇷	br	55	f	f
bs	NA	Bahamas	🇧🇸	bs	1242	f	f
bt	AS	Bhutan	🇧🇹	bt	975	f	f
bv	AN	Bouvet Island	🇧🇻	bv		f	f
bw	AF	Botswana	🇧🇼	bw	267	f	f
by	EU	Belarus	🇧🇾	by	375	f	f
bz	NA	Belize	🇧🇿	bz	501	f	f
ca	NA	Canada	🇨🇦	ca	1	f	f
cc	AS	Cocos (Keeling) Islands	🇨🇨	cc	61	f	f
cd	AF	DR Congo	🇨🇩	cd	243	f	f
cf	AF	Central African Republic	🇨🇫	cf	236	f	f
cg	AF	Republic of the Congo	🇨🇬	cg	242	f	f
ch	EU	Switzerland	🇨🇭	ch	41	f	f
ci	AF	Ivory Coast	🇨🇮	ci	225	f	f
ck	OC	Cook Islands	🇨🇰	ck	682	f	f
cl	SA	Chile	🇨🇱	cl	56	f	f
cm	AF	Cameroon	🇨🇲	cm	237	f	f
cn	AS	China	🇨🇳	cn	86	f	f
co	SA	Colombia	🇨🇴	co	57	f	f
cr	NA	Costa Rica	🇨🇷	cr	506	f	f
cu	NA	Cuba	🇨🇺	cu	53	f	f
cv	AF	Cape Verde	🇨🇻	cv	238	f	f
cw	NA	Curaçao	🇨🇼	cw	599	f	f
cx	AS	Christmas Island	🇨🇽	cx	61	f	f
cy	EU	Cyprus	🇨🇾	cy	357	t	f
cz	EU	Czech Republic	🇨🇿	cz	420	t	f
de	EU	Germany	🇩🇪	de	49	t	f
dj	AF	Djibouti	🇩🇯	dj	253	f	f
dk	EU	Denmark	🇩🇰	dk	45	t	f
dm	NA	Dominica	🇩🇲	dm	1767	f	f
do	NA	Dominican Republic	🇩🇴	do	1809,1829,1849	f	f
dz	AF	Algeria	🇩🇿	dz	213	f	f
ec	SA	Ecuador	🇪🇨	ec	593	f	f
ee	EU	Estonia	🇪🇪	ee	372	t	f
eg	AF	Egypt	🇪🇬	eg	20	f	f
eh	AF	Western Sahara	🇪🇭	eh	212	f	f
er	AF	Eritrea	🇪🇷	er	291	f	f
es	EU	Spain	🇪🇸	es	34	t	f
et	AF	Ethiopia	🇪🇹	et	251	f	f
fi	EU	Finland	🇫🇮	fi	358	t	f
fj	OC	Fiji	🇫🇯	fj	679	f	f
fk	SA	Falkland Islands	🇫🇰	fk	500	f	f
fm	OC	Micronesia	🇫🇲	fm	691	f	f
fo	EU	Faroe Islands	🇫🇴	fo	298	f	f
fr	EU	France	🇫🇷	fr	33	t	f
ga	AF	Gabon	🇬🇦	ga	241	f	f
gb	EU	United Kingdom	🇬🇧	uk	44	f	f
gd	NA	Grenada	🇬🇩	gd	1473	f	f
ge	AS	Georgia	🇬🇪	ge	995	f	f
gf	SA	French Guiana	🇬🇫	gf	594	f	f
gg	EU	Guernsey	🇬🇬	gg	44	f	f
gh	AF	Ghana	🇬🇭	gh	233	f	f
gi	EU	Gibraltar	🇬🇮	gi	350	f	f
gl	NA	Greenland	🇬🇱	gl	299	f	f
gm	AF	Gambia	🇬🇲	gm	220	f	f
gn	AF	Guinea	🇬🇳	gn	224	f	f
gp	NA	Guadeloupe	🇬🇵	gp	590	f	f
gq	AF	Equatorial Guinea	🇬🇶	gq	240	f	f
gr	EU	Greece	🇬🇷	gr	30	t	f
gs	AN	South Georgia	🇬🇸	gs	500	f	f
gt	NA	Guatemala	🇬🇹	gt	502	f	f
gu	OC	Guam	🇬🇺	gu	1671	f	f
gw	AF	Guinea-Bissau	🇬🇼	gw	245	f	f
gy	SA	Guyana	🇬🇾	gy	592	f	f
hk	AS	Hong Kong	🇭🇰	hk	852	f	f
hm	AN	Heard Island and McDonald Islands	🇭🇲	hm		f	f
hn	NA	Honduras	🇭🇳	hn	504	f	f
hr	EU	Croatia	🇭🇷	hr	385	t	f
ht	NA	Haiti	🇭🇹	ht	509	f	f
hu	EU	Hungary	🇭🇺	hu	36	t	f
id	AS	Indonesia	🇮🇩	id	62	f	f
ie	EU	Ireland	🇮🇪	ie	353	t	f
il	AS	Israel	🇮🇱	il	972	f	f
im	EU	Isle of Man	🇮🇲	im	44	f	f
in	AS	India	🇮🇳	in	91	f	f
io	AS	British Indian Ocean Territory	🇮🇴	io	246	f	f
iq	AS	Iraq	🇮🇶	iq	964	f	f
ir	AS	Iran	🇮🇷	ir	98	f	f
is	EU	Iceland	🇮🇸	is	354	f	f
it	EU	Italy	🇮🇹	it	39	t	f
je	EU	Jersey	🇯🇪	je	44	f	f
jm	NA	Jamaica	🇯🇲	jm	1876	f	f
jo	AS	Jordan	🇯🇴	jo	962	f	f
jp	AS	Japan	🇯🇵	jp	81	f	f
ke	AF	Kenya	🇰🇪	ke	254	f	f
kg	AS	Kyrgyzstan	🇰🇬	kg	996	f	f
kh	AS	Cambodia	🇰🇭	kh	855	f	f
ki	OC	Kiribati	🇰🇮	ki	686	f	f
km	AF	Comoros	🇰🇲	km	269	f	f
kn	NA	Saint Kitts and Nevis	🇰🇳	kn	1869	f	f
kp	AS	North Korea	🇰🇵	kp	850	f	f
kr	AS	South Korea	🇰🇷	kr	82	f	f
kw	AS	Kuwait	🇰🇼	kw	965	f	f
ky	NA	Cayman Islands	🇰🇾	ky	1345	f	f
kz	AS	Kazakhstan	🇰🇿	kz	76,77	f	f
la	AS	Laos	🇱🇦	la	856	f	f
lb	AS	Lebanon	🇱🇧	lb	961	f	f
lc	NA	Saint Lucia	🇱🇨	lc	1758	f	f
li	EU	Liechtenstein	🇱🇮	li	423	f	f
lk	AS	Sri Lanka	🇱🇰	lk	94	f	f
lr	AF	Liberia	🇱🇷	lr	231	f	f
ls	AF	Lesotho	🇱🇸	ls	266	f	f
lt	EU	Lithuania	🇱🇹	lt	370	t	f
lu	EU	Luxembourg	🇱🇺	lu	352	t	f
lv	EU	Latvia	🇱🇻	lv	371	t	f
ly	AF	Libya	🇱🇾	ly	218	f	f
ma	AF	Morocco	🇲🇦	ma	212	f	f
mc	EU	Monaco	🇲🇨	mc	377	f	f
md	EU	Moldova	🇲🇩	md	373	f	f
me	EU	Montenegro	🇲🇪	me	382	f	f
mf	NA	Saint Martin	🇲🇫	fr	590	f	f
mg	AF	Madagascar	🇲🇬	mg	261	f	f
mh	OC	Marshall Islands	🇲🇭	mh	692	f	f
mk	EU	Macedonia	🇲🇰	mk	389	f	f
ml	AF	Mali	🇲🇱	ml	223	f	f
mm	AS	Myanmar	🇲🇲	mm	95	f	f
mn	AS	Mongolia	🇲🇳	mn	976	f	f
mo	AS	Macau	🇲🇴	mo	853	f	f
mp	OC	Northern Mariana Islands	🇲🇵	mp	1670	f	f
mq	NA	Martinique	🇲🇶	mq	596	f	f
mr	AF	Mauritania	🇲🇷	mr	222	f	f
ms	NA	Montserrat	🇲🇸	ms	1664	f	f
mt	EU	Malta	🇲🇹	mt	356	t	f
mu	AF	Mauritius	🇲🇺	mu	230	f	f
mv	AS	Maldives	🇲🇻	mv	960	f	f
mw	AF	Malawi	🇲🇼	mw	265	f	f
mx	NA	Mexico	🇲🇽	mx	52	f	f
my	AS	Malaysia	🇲🇾	my	60	f	f
mz	AF	Mozambique	🇲🇿	mz	258	f	f
na	AF	Namibia	🇳🇦	na	264	f	f
nc	OC	New Caledonia	🇳🇨	nc	687	f	f
ne	AF	Niger	🇳🇪	ne	227	f	f
nf	OC	Norfolk Island	🇳🇫	nf	672	f	f
ng	AF	Nigeria	🇳🇬	ng	234	f	f
ni	NA	Nicaragua	🇳🇮	ni	505	f	f
nl	EU	Netherlands	🇳🇱	nl	31	t	f
no	EU	Norway	🇳🇴	no	47	f	f
np	AS	Nepal	🇳🇵	np	977	f	f
nr	OC	Nauru	🇳🇷	nr	674	f	f
nu	OC	Niue	🇳🇺	nu	683	f	f
nz	OC	New Zealand	🇳🇿	nz	64	f	f
om	AS	Oman	🇴🇲	om	968	f	f
pa	NA	Panama	🇵🇦	pa	507	f	f
pe	SA	Peru	🇵🇪	pe	51	f	f
pf	OC	French Polynesia	🇵🇫	pf	689	f	f
pg	OC	Papua New Guinea	🇵🇬	pg	675	f	f
ph	AS	Philippines	🇵🇭	ph	63	f	f
pk	AS	Pakistan	🇵🇰	pk	92	f	f
pl	EU	Poland	🇵🇱	pl	48	t	f
pm	NA	Saint Pierre and Miquelon	🇵🇲	pm	508	f	f
pn	OC	Pitcairn Islands	🇵🇳	pn	64	f	f
pr	NA	Puerto Rico	🇵🇷	pr	1787,1939	f	f
ps	AS	Palestine	🇵🇸	ps	970	f	f
pt	EU	Portugal	🇵🇹	pt	351	t	f
pw	OC	Palau	🇵🇼	pw	680	f	f
py	SA	Paraguay	🇵🇾	py	595	f	f
qa	AS	Qatar	🇶🇦	qa	974	f	f
re	AF	Réunion	🇷🇪	re	262	f	f
ro	EU	Romania	🇷🇴	ro	40	t	f
rs	EU	Serbia	🇷🇸	rs	381	f	f
ru	EU	Russia	🇷🇺	ru	7	f	f
rw	AF	Rwanda	🇷🇼	rw	250	f	f
sa	AS	Saudi Arabia	🇸🇦	sa	966	f	f
sb	OC	Solomon Islands	🇸🇧	sb	677	f	f
sc	AF	Seychelles	🇸🇨	sc	248	f	f
sd	AF	Sudan	🇸🇩	sd	249	f	f
se	EU	Sweden	🇸🇪	se	46	t	f
sg	AS	Singapore	🇸🇬	sg	65	f	f
sh	AF	Saint Helena	🇸🇭	  	290	f	f
si	EU	Slovenia	🇸🇮	si	386	t	f
sj	EU	Svalbard and Jan Mayen	🇸🇯	sj	4779	f	f
sk	EU	Slovakia	🇸🇰	sk	421	t	f
sl	AF	Sierra Leone	🇸🇱	sl	232	f	f
sm	EU	San Marino	🇸🇲	sm	378	f	f
sn	AF	Senegal	🇸🇳	sn	221	f	f
so	AF	Somalia	🇸🇴	so	252	f	f
sr	SA	Suriname	🇸🇷	sr	597	f	f
ss	AF	South Sudan	🇸🇸	ss	211	f	f
st	AF	São Tomé and Príncipe	🇸🇹	st	239	f	f
sv	NA	El Salvador	🇸🇻	sv	503	f	f
sx	NA	Sint Maarten	🇸🇽	sx	1721	f	f
sy	AS	Syria	🇸🇾	sy	963	f	f
sz	AF	Swaziland	🇸🇿	sz	268	f	f
tc	NA	Turks and Caicos Islands	🇹🇨	tc	1649	f	f
td	AF	Chad	🇹🇩	td	235	f	f
tf	AN	French Southern and Antarctic Lands	🇹🇫	tf		f	f
tg	AF	Togo	🇹🇬	tg	228	f	f
th	AS	Thailand	🇹🇭	th	66	f	f
tj	AS	Tajikistan	🇹🇯	tj	992	f	f
tk	OC	Tokelau	🇹🇰	tk	690	f	f
tl	OC	Timor-Leste	🇹🇱	tl	670	f	f
tm	AS	Turkmenistan	🇹🇲	tm	993	f	f
tn	AF	Tunisia	🇹🇳	tn	216	f	f
to	OC	Tonga	🇹🇴	to	676	f	f
tr	AS	Turkey	🇹🇷	tr	90	f	f
tt	NA	Trinidad and Tobago	🇹🇹	tt	1868	f	f
tv	OC	Tuvalu	🇹🇻	tv	688	f	f
tw	AS	Taiwan	🇹🇼	tw	886	f	f
tz	AF	Tanzania	🇹🇿	tz	255	f	f
ua	EU	Ukraine	🇺🇦	ua	380	f	f
ug	AF	Uganda	🇺🇬	ug	256	f	f
um	OC	United States Minor Outlying Islands	🇺🇲	us		f	f
us	NA	United States	🇺🇸	us	1	f	f
uy	SA	Uruguay	🇺🇾	uy	598	f	f
uz	AS	Uzbekistan	🇺🇿	uz	998	f	f
va	EU	Vatican City	🇻🇦	va	3906698,379	f	f
vc	NA	Saint Vincent and the Grenadines	🇻🇨	vc	1784	f	f
ve	SA	Venezuela	🇻🇪	ve	58	f	f
vg	NA	British Virgin Islands	🇻🇬	vg	1284	f	f
vi	NA	United States Virgin Islands	🇻🇮	vi	1340	f	f
vn	AS	Vietnam	🇻🇳	vn	84	f	f
vu	OC	Vanuatu	🇻🇺	vu	678	f	f
wf	OC	Wallis and Futuna	🇼🇫	wf	681	f	f
ws	OC	Samoa	🇼🇸	ws	685	f	f
xk	EU	Kosovo	🇽🇰	  	383	f	f
ye	AS	Yemen	🇾🇪	ye	967	f	f
yt	AF	Mayotte	🇾🇹	yt	262	f	f
za	AF	South Africa	🇿🇦	za	27	f	f
zm	AF	Zambia	🇿🇲	zm	260	f	f
zw	AF	Zimbabwe	🇿🇼	zw	263	f	f
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: iso; Owner: postgres
--

COPY "iso"."languages" ("id", "name", "enabled") FROM stdin;
afr	Afrikaans	f
amh	Amharic	f
ara	Arabic	f
arc	Aramaic	f
aym	Aymara	f
aze	Azerbaijani	f
bar	Austro-Bavarian German	f
bel	Belarusian	f
ben	Bengali	f
ber	Berber	f
bis	Bislama	f
bjz	Belizean Creole	f
bos	Bosnian	f
bul	Bulgarian	f
bwg	Chibarwe	f
cal	Carolinian	f
cat	Catalan	f
ces	Czech	f
cha	Chamorro	f
ckb	Sorani	f
cmn	Mandarin	f
crs	Seychellois Creole	f
dan	Danish	f
deu	German	f
div	Maldivian	f
dzo	Dzongkha	f
ell	Greek	f
eng	English	f
est	Estonian	f
eus	Basque	f
fao	Faroese	f
fas	Persian	f
fij	Fijian	f
fil	Filipino	f
fin	Finnish	f
fra	French	f
gil	Gilbertese	f
gle	Irish	f
glg	Galician	f
glv	Manx	f
grn	Guaraní	f
gsw	Swiss German	f
hat	Haitian Creole	f
heb	Hebrew	f
her	Herero	f
hgm	Khoekhoe	f
hif	Fiji Hindi	f
hin	Hindi	f
hmo	Hiri Motu	f
hrv	Croatian	f
hun	Hungarian	f
hye	Armenian	f
ind	Indonesian	f
isl	Icelandic	f
ita	Italian	f
jam	Jamaican Patois	f
jpn	Japanese	f
kal	Greenlandic	f
kat	Georgian	f
kaz	Kazakh	f
kck	Kalanga	f
khi	Khoisan	f
khm	Khmer	f
kin	Kinyarwanda	f
kir	Kyrgyz	f
kon	Kikongo	f
kor	Korean	f
kwn	Kwangali	f
lao	Lao	f
lat	Latin	f
lav	Latvian	f
lin	Lingala	f
lit	Lithuanian	f
loz	Lozi	f
ltz	Luxembourgish	f
lua	Tshiluba	f
mah	Marshallese	f
mey	Hassaniya	f
mfe	Mauritian Creole	f
mkd	Macedonian	f
mlg	Malagasy	f
mlt	Maltese	f
mon	Mongolian	f
mri	Māori	f
msa	Malay	f
mya	Burmese	f
nau	Nauru	f
nbl	Southern Ndebele	f
ndc	Ndau	f
nde	Northern Ndebele	f
ndo	Ndonga	f
nep	Nepali	f
nfr	Guernésiais	f
niu	Niuean	f
nld	Dutch	f
nno	Norwegian Nynorsk	f
nob	Norwegian Bokmål	f
nor	Norwegian	f
nrf	Jèrriais	f
nso	Northern Sotho	f
nya	Chewa	f
nzs	New Zealand Sign Language	f
oci	Occitan	f
pap	Papiamento	f
pau	Palauan	f
pih	Norfuk	f
pol	Polish	f
por	Portuguese	f
prs	Dari	f
pus	Pashto	f
que	Quechua	f
rar	Cook Islands Māori	f
roh	Romansh	f
ron	Romanian	f
run	Kirundi	f
rus	Russian	f
sag	Sango	f
sin	Sinhala	f
slk	Slovak	f
slv	Slovene	f
smi	Sami	f
smo	Samoan	f
sna	Shona	f
som	Somali	f
sot	Sotho	f
spa	Spanish	f
sqi	Albanian	f
srd	Sardinian	f
srp	Serbian	f
ssw	Swazi	f
swa	Swahili	f
swe	Swedish	f
tam	Tamil	f
tet	Tetum	f
tgk	Tajik	f
tha	Thai	f
tir	Tigrinya	f
tkl	Tokelauan	f
toi	Tonga	f
ton	Tongan	f
tpi	Tok Pisin	f
tsn	Tswana	f
tso	Tsonga	f
tuk	Turkmen	f
tur	Turkish	f
tvl	Tuvaluan	f
ukr	Ukrainian	f
urd	Urdu	f
uzb	Uzbek	f
ven	Venda	f
vie	Vietnamese	f
xho	Xhosa	f
zdj	Comorian	f
zho	Chinese	f
zib	Zimbabwean Sign Language	f
zul	Zulu	f
\.


--
-- Data for Name: country_languages; Type: TABLE DATA; Schema: iso; Owner: postgres
--

COPY "iso"."country_languages" ("id", "country", "language", "enabled") FROM stdin;
1	ad	cat	f
2	ae	ara	f
3	af	prs	f
4	af	pus	f
5	af	tuk	f
6	ag	eng	f
7	ai	eng	f
8	al	sqi	f
9	am	hye	f
10	am	rus	f
11	ao	por	f
12	ar	grn	f
13	ar	spa	f
14	as	eng	f
15	as	smo	f
16	at	bar	f
17	au	eng	f
18	aw	nld	f
19	aw	pap	f
20	ax	swe	f
21	az	aze	f
22	az	rus	f
23	ba	bos	f
24	ba	hrv	f
25	ba	srp	f
26	bb	eng	f
27	bd	ben	f
28	be	deu	f
29	be	fra	f
30	be	nld	f
31	bf	fra	f
32	bg	bul	f
33	bh	ara	f
34	bi	fra	f
35	bi	run	f
36	bj	fra	f
37	bl	fra	f
38	bm	eng	f
39	bn	msa	f
40	bo	aym	f
41	bo	grn	f
42	bo	que	f
43	bo	spa	f
44	bq	eng	f
45	br	por	f
46	bs	eng	f
47	bt	dzo	f
48	bv	nor	f
49	bw	eng	f
50	bw	tsn	f
51	by	bel	f
52	by	rus	f
53	bz	bjz	f
54	bz	eng	f
55	bz	spa	f
56	ca	eng	f
57	ca	fra	f
58	cc	eng	f
59	cd	fra	f
60	cd	kon	f
61	cd	lin	f
62	cd	lua	f
63	cd	swa	f
64	cf	fra	f
65	cf	sag	f
66	cg	fra	f
67	cg	kon	f
68	cg	lin	f
69	ch	fra	f
70	ch	gsw	f
71	ch	ita	f
72	ch	roh	f
73	ci	fra	f
74	ck	eng	f
75	ck	rar	f
76	cl	spa	f
77	cm	eng	f
78	cm	fra	f
79	cn	cmn	f
80	co	spa	f
81	cr	spa	f
82	cu	spa	f
83	cv	por	f
84	cw	eng	f
85	cw	nld	f
86	cw	pap	f
87	cx	eng	f
88	cy	ell	f
89	cy	tur	f
90	cz	ces	f
91	cz	slk	f
92	de	deu	f
93	dj	ara	f
94	dj	fra	f
95	dk	dan	f
96	dm	eng	f
97	do	spa	f
98	dz	ara	f
99	ec	spa	f
100	ee	est	f
101	eg	ara	f
102	eh	ber	f
103	eh	mey	f
104	eh	spa	f
105	er	ara	f
106	er	eng	f
107	er	tir	f
108	es	cat	f
109	es	eus	f
110	es	glg	f
111	es	oci	f
112	es	spa	f
113	et	amh	f
114	fi	fin	f
115	fi	swe	f
116	fj	eng	f
117	fj	fij	f
118	fj	hif	f
119	fk	eng	f
120	fm	eng	f
121	fo	dan	f
122	fo	fao	f
123	fr	fra	f
124	ga	fra	f
125	gb	eng	f
126	gd	eng	f
127	ge	kat	f
128	gf	fra	f
129	gg	eng	f
130	gg	fra	f
131	gg	nfr	f
132	gh	eng	f
133	gi	eng	f
134	gl	kal	f
135	gm	eng	f
136	gn	fra	f
137	gp	fra	f
138	gq	fra	f
139	gq	por	f
140	gq	spa	f
141	gr	ell	f
142	gs	eng	f
143	gt	spa	f
144	gu	cha	f
145	gu	eng	f
146	gu	spa	f
147	gw	por	f
148	gy	eng	f
149	hk	eng	f
150	hk	zho	f
151	hm	eng	f
152	hn	spa	f
153	hr	hrv	f
154	ht	fra	f
155	ht	hat	f
156	hu	hun	f
157	id	ind	f
158	ie	eng	f
159	ie	gle	f
160	il	ara	f
161	il	heb	f
162	im	eng	f
163	im	glv	f
164	in	eng	f
165	in	hin	f
166	in	tam	f
167	io	eng	f
168	iq	ara	f
169	iq	arc	f
170	iq	ckb	f
171	ir	fas	f
172	is	isl	f
173	it	bar	f
174	it	ita	f
175	it	srd	f
176	je	eng	f
177	je	fra	f
178	je	nrf	f
179	jm	eng	f
180	jm	jam	f
181	jo	ara	f
182	jp	jpn	f
183	ke	eng	f
184	ke	swa	f
185	kg	kir	f
186	kg	rus	f
187	kh	khm	f
188	ki	eng	f
189	ki	gil	f
190	km	ara	f
191	km	fra	f
192	km	zdj	f
193	kn	eng	f
194	kp	kor	f
195	kr	kor	f
196	kw	ara	f
197	ky	eng	f
198	kz	kaz	f
199	kz	rus	f
200	la	lao	f
201	lb	ara	f
202	lb	fra	f
203	lc	eng	f
204	li	deu	f
205	lk	sin	f
206	lk	tam	f
207	lr	eng	f
208	ls	eng	f
209	ls	sot	f
210	lt	lit	f
211	lu	deu	f
212	lu	fra	f
213	lu	ltz	f
214	lv	lav	f
215	ly	ara	f
216	ma	ara	f
217	ma	ber	f
218	mc	fra	f
219	md	ron	f
220	me	srp	f
221	mf	fra	f
222	mg	fra	f
223	mg	mlg	f
224	mh	eng	f
225	mh	mah	f
226	mk	mkd	f
227	ml	fra	f
228	mm	mya	f
229	mn	mon	f
230	mo	por	f
231	mo	zho	f
232	mp	cal	f
233	mp	cha	f
234	mp	eng	f
235	mq	fra	f
236	mr	ara	f
237	ms	eng	f
238	mt	eng	f
239	mt	mlt	f
240	mu	eng	f
241	mu	fra	f
242	mu	mfe	f
243	mv	div	f
244	mw	eng	f
245	mw	nya	f
246	mx	spa	f
247	my	eng	f
248	my	msa	f
249	mz	por	f
250	na	afr	f
251	na	deu	f
252	na	eng	f
253	na	her	f
254	na	hgm	f
255	na	kwn	f
256	na	loz	f
257	na	ndo	f
258	na	tsn	f
259	nc	fra	f
260	ne	fra	f
261	nf	eng	f
262	nf	pih	f
263	ng	eng	f
264	ni	spa	f
265	nl	nld	f
266	no	nno	f
267	no	nob	f
268	no	smi	f
269	np	nep	f
270	nr	eng	f
271	nr	nau	f
272	nu	eng	f
273	nu	niu	f
274	nz	eng	f
275	nz	mri	f
276	nz	nzs	f
277	om	ara	f
278	pa	spa	f
279	pe	aym	f
280	pe	que	f
281	pe	spa	f
282	pf	fra	f
283	pg	eng	f
284	pg	hmo	f
285	pg	tpi	f
286	ph	eng	f
287	ph	fil	f
288	pk	eng	f
289	pk	urd	f
290	pl	pol	f
291	pm	fra	f
292	pn	eng	f
293	pr	eng	f
294	pr	spa	f
295	ps	ara	f
296	pt	por	f
297	pw	eng	f
298	pw	pau	f
299	py	grn	f
300	py	spa	f
301	qa	ara	f
302	re	fra	f
303	ro	ron	f
304	rs	srp	f
305	ru	rus	f
306	rw	eng	f
307	rw	fra	f
308	rw	kin	f
309	sa	ara	f
310	sb	eng	f
311	sc	crs	f
312	sc	eng	f
313	sc	fra	f
314	sd	ara	f
315	sd	eng	f
316	se	swe	f
317	sg	cmn	f
318	sg	eng	f
319	sg	msa	f
320	sg	tam	f
321	sh	eng	f
322	si	slv	f
323	sj	nor	f
324	sk	slk	f
325	sl	eng	f
326	sm	ita	f
327	sn	fra	f
328	so	ara	f
329	so	som	f
330	sr	nld	f
331	ss	eng	f
332	st	por	f
333	sv	spa	f
334	sx	eng	f
335	sx	fra	f
336	sx	nld	f
337	sy	ara	f
338	sz	eng	f
339	sz	ssw	f
340	tc	eng	f
341	td	ara	f
342	td	fra	f
343	tf	fra	f
344	tg	fra	f
345	th	tha	f
346	tj	rus	f
347	tj	tgk	f
348	tk	eng	f
349	tk	smo	f
350	tk	tkl	f
351	tl	por	f
352	tl	tet	f
353	tm	rus	f
354	tm	tuk	f
355	tn	ara	f
356	to	eng	f
357	to	ton	f
358	tr	tur	f
359	tt	eng	f
360	tv	eng	f
361	tv	tvl	f
362	tw	cmn	f
363	tz	eng	f
364	tz	swa	f
365	ua	ukr	f
366	ug	eng	f
367	ug	swa	f
368	um	eng	f
369	us	eng	f
370	uy	spa	f
371	uz	rus	f
372	uz	uzb	f
373	va	ita	f
374	va	lat	f
375	vc	eng	f
376	ve	spa	f
377	vg	eng	f
378	vi	eng	f
379	vn	vie	f
380	vu	bis	f
381	vu	eng	f
382	vu	fra	f
383	wf	fra	f
384	ws	eng	f
385	ws	smo	f
386	xk	sqi	f
387	xk	srp	f
388	ye	ara	f
389	yt	fra	f
390	za	afr	f
391	za	eng	f
392	za	nbl	f
393	za	nso	f
394	za	sot	f
395	za	ssw	f
396	za	tsn	f
397	za	tso	f
398	za	ven	f
399	za	xho	f
400	za	zul	f
401	zm	eng	f
402	zw	bwg	f
403	zw	eng	f
404	zw	kck	f
405	zw	khi	f
406	zw	ndc	f
407	zw	nde	f
408	zw	nya	f
409	zw	sna	f
410	zw	sot	f
411	zw	toi	f
412	zw	tsn	f
413	zw	tso	f
414	zw	ven	f
415	zw	xho	f
416	zw	zib	f
\.


--
-- Data for Name: country_language_labels; Type: TABLE DATA; Schema: i18n; Owner: postgres
--

COPY "i18n"."country_language_labels" ("id", "country_language", "label", "text") FROM stdin;
\.


--
-- Data for Name: currencies; Type: TABLE DATA; Schema: iso; Owner: postgres
--

COPY "iso"."currencies" ("id", "name") FROM stdin;
AED	UAE Dirham
AFN	Afghani
ALL	Lek
AMD	Armenian Dram
ANG	Netherlands Antillean Guilder
AOA	Kwanza
ARS	Argentine Peso
AUD	Australian Dollar
AWG	Aruban Florin
AZN	Azerbaijanian Manat
BAM	Convertible Mark
BBD	Barbados Dollar
BDT	Taka
BGN	Bulgarian Lev
BHD	Bahraini Dinar
BIF	Burundi Franc
BMD	Bermudian Dollar
BND	Brunei Dollar
BOB	Boliviano
BRL	Brazilian Real
BSD	Bahamian Dollar
BTN	Bhutanese ngultrum
BWP	Pula
BYN	Belarussian Ruble
BZD	Belize Dollar
CAD	Canadian Dollar
CDF	Congolese franc
CHF	Swiss Franc
CLP	Chilean Peso
CNY	Yuan Renminbi
COP	Colombian Peso
CRC	Costa Rican Colon
CUP	Cuban Peso
CVE	Cabo Verde Escudo
CZK	Czech Koruna
DJF	Djibouti Franc
DKK	Danish Krone
DOP	Dominican Peso
DZD	Algerian Dinar
EGP	Egyptian Pound
ERN	Nakfa
ETB	Ethiopian Birr
EUR	Euro
FJD	Fiji Dollar
FKP	Falkland Islands Pound
GBP	Pound Sterling
GEL	Lari
GHS	Ghana Cedi
GIP	Gibraltar Pound
GMD	Dalasi
GNF	Guinea Franc
GTQ	Quetzal
GYD	Guyana Dollar
HKD	Hong Kong dollar
HNL	Lempira
HRK	Croatian Kuna
HTG	Haitian gourde
HUF	Forint
IDR	Rupiah
ILS	Israeli new shekel
INR	Indian Rupee
IQD	Iraqi Dinar
IRR	Iranian rial
ISK	Iceland Krona
JMD	Jamaican Dollar
JOD	Jordanian Dinar
JPY	Yen
KES	Kenyan Shilling
KGS	Som
KHR	Riel
KMF	Comoro Franc
KPW	North Korean won
KRW	South Korean won
KWD	Kuwaiti Dinar
KYD	Cayman Islands Dollar
KZT	Tenge
LAK	Kip
LBP	Lebanese Pound
LKR	Sri Lanka Rupee
LRD	Liberian Dollar
LSL	Lesotho loti
LYD	Libyan Dinar
MAD	Moroccan Dirham
MDL	Moldovan leu
MGA	Malagasy Ariary
MKD	Macedonian denar
MMK	Kyat
MNT	Tugrik
MOP	Macanese pataca
MRO	Ouguiya
MUR	Mauritius Rupee
MVR	Rufiyaa
MWK	Kwacha
MXN	Mexican Peso
MYR	Malaysian Ringgit
MZN	Mozambique Metical
NAD	Namibian dollar
NGN	Naira
NIO	Cordoba Oro
NOK	Norwegian krone
NPR	Nepalese Rupee
NZD	New Zealand Dollar
OMR	Rial Omani
PAB	Panamanian balboa
PEN	Nuevo Sol
PGK	Kina
PHP	Philippine Peso
PKR	Pakistan Rupee
PLN	Zloty
PYG	Guarani
QAR	Qatari Rial
RON	New Romanian Leu
RSD	Serbian Dinar
RUB	Russian Ruble
RWF	Rwanda Franc
SAR	Saudi Riyal
SBD	Solomon Islands Dollar
SCR	Seychelles Rupee
SDG	Sudanese Pound
SEK	Swedish Krona
SGD	Singapore Dollar
SHP	Saint Helena pound
SLL	Leone
SOS	Somali Shilling
SRD	Surinam Dollar
SSP	South Sudanese Pound
STD	Dobra
SVC	Salvadoran colón
SYP	Syrian Pound
SZL	Lilangeni
THB	Baht
TJS	Somoni
TMT	Turkmenistan New Manat
TND	Tunisian Dinar
TOP	Pa’anga
TRY	Turkish Lira
TTD	Trinidad and Tobago Dollar
TWD	New Taiwan dollar
TZS	Tanzanian shilling
UAH	Hryvnia
UGX	Uganda Shilling
USD	US Dollar
UYU	Peso Uruguayo
UZS	Uzbekistan Sum
VES	Venezuelan bolívar soberano
VND	Dong
VUV	Vatu
WST	Tala
XAF	CFA Franc BEAC
XCD	East Caribbean Dollar
XOF	CFA Franc BCEAO
XPF	CFP franc (franc Pacifique)
YER	Yemeni Rial
ZAR	Rand
ZMW	Zambian Kwacha
ZWL	Zimbabwe Dollar
\.


--
-- Data for Name: country_currencies; Type: TABLE DATA; Schema: iso; Owner: postgres
--

COPY "iso"."country_currencies" ("id", "country", "currency", "enabled") FROM stdin;
1	ad	EUR	f
2	ae	AED	f
3	af	AFN	f
4	ag	XCD	f
5	ai	XCD	f
6	al	ALL	f
7	am	AMD	f
8	ao	AOA	f
9	ar	ARS	f
10	as	USD	f
11	at	EUR	f
12	au	AUD	f
13	aw	AWG	f
14	ax	EUR	f
15	az	AZN	f
16	ba	BAM	f
17	bb	BBD	f
18	bd	BDT	f
19	be	EUR	f
20	bf	XOF	f
21	bg	BGN	f
22	bh	BHD	f
23	bi	BIF	f
24	bj	XOF	f
25	bl	EUR	f
26	bm	BMD	f
27	bn	BND	f
28	bo	BOB	f
29	bq	USD	f
30	br	BRL	f
31	bs	BSD	f
32	bt	BTN	f
33	bv	NOK	f
34	bw	BWP	f
35	by	BYN	f
36	bz	BZD	f
37	ca	CAD	f
38	cc	AUD	f
39	cd	CDF	f
40	cf	XAF	f
41	cg	XAF	f
42	ch	CHF	f
43	ci	XOF	f
44	ck	NZD	f
45	cl	CLP	f
46	cm	XAF	f
47	cn	CNY	f
48	co	COP	f
49	cr	CRC	f
50	cu	CUP	f
51	cv	CVE	f
52	cw	ANG	f
53	cx	AUD	f
54	cy	EUR	f
55	cz	CZK	f
56	de	EUR	f
57	dj	DJF	f
58	dk	DKK	f
59	dm	XCD	f
60	do	DOP	f
61	dz	DZD	f
62	ec	USD	f
63	ee	EUR	f
64	eg	EGP	f
65	eh	MAD	f
66	er	ERN	f
67	es	EUR	f
68	et	ETB	f
69	fi	EUR	f
70	fj	FJD	f
71	fk	FKP	f
72	fm	USD	f
73	fo	DKK	f
74	fr	EUR	f
75	ga	XAF	f
76	gb	GBP	f
77	gd	XCD	f
78	ge	GEL	f
79	gf	EUR	f
80	gg	GBP	f
81	gh	GHS	f
82	gi	GIP	f
83	gl	DKK	f
84	gm	GMD	f
85	gn	GNF	f
86	gp	EUR	f
87	gq	XAF	f
88	gr	EUR	f
89	gs	GBP	f
90	gt	GTQ	f
91	gu	USD	f
92	gw	XOF	f
93	gy	GYD	f
94	hk	HKD	f
95	hm	AUD	f
96	hn	HNL	f
97	hr	HRK	f
98	ht	HTG	f
99	hu	HUF	f
100	id	IDR	f
101	ie	EUR	f
102	il	ILS	f
103	im	GBP	f
104	in	INR	f
105	io	USD	f
106	iq	IQD	f
107	ir	IRR	f
108	is	ISK	f
109	it	EUR	f
110	je	GBP	f
111	jm	JMD	f
112	jo	JOD	f
113	jp	JPY	f
114	ke	KES	f
115	kg	KGS	f
116	kh	KHR	f
117	ki	AUD	f
118	km	KMF	f
119	kn	XCD	f
120	kp	KPW	f
121	kr	KRW	f
122	kw	KWD	f
123	ky	KYD	f
124	kz	KZT	f
125	la	LAK	f
126	lb	LBP	f
127	lc	XCD	f
128	li	CHF	f
129	lk	LKR	f
130	lr	LRD	f
131	ls	LSL	f
132	lt	EUR	f
133	lu	EUR	f
134	lv	EUR	f
135	ly	LYD	f
136	ma	MAD	f
137	mc	EUR	f
138	md	MDL	f
139	me	EUR	f
140	mf	EUR	f
141	mg	MGA	f
142	mh	USD	f
143	mk	MKD	f
144	ml	XOF	f
145	mm	MMK	f
146	mn	MNT	f
147	mo	MOP	f
148	mp	USD	f
149	mq	EUR	f
150	mr	MRO	f
151	ms	XCD	f
152	mt	EUR	f
153	mu	MUR	f
154	mv	MVR	f
155	mw	MWK	f
156	mx	MXN	f
157	my	MYR	f
158	mz	MZN	f
159	na	NAD	f
160	nc	XPF	f
161	ne	XOF	f
162	nf	AUD	f
163	ng	NGN	f
164	ni	NIO	f
165	nl	EUR	f
166	no	NOK	f
167	np	NPR	f
168	nr	AUD	f
169	nu	NZD	f
170	nz	NZD	f
171	om	OMR	f
172	pa	PAB	f
173	pe	PEN	f
174	pf	XPF	f
175	pg	PGK	f
176	ph	PHP	f
177	pk	PKR	f
178	pl	PLN	f
179	pm	EUR	f
180	pn	NZD	f
181	pr	USD	f
182	ps	ILS	f
183	pt	EUR	f
184	pw	USD	f
185	py	PYG	f
186	qa	QAR	f
187	re	EUR	f
188	ro	RON	f
189	rs	RSD	f
190	ru	RUB	f
191	rw	RWF	f
192	sa	SAR	f
193	sb	SBD	f
194	sc	SCR	f
195	sd	SDG	f
196	se	SEK	f
197	sg	SGD	f
198	sh	SHP	f
199	si	EUR	f
200	sj	NOK	f
201	sk	EUR	f
202	sl	SLL	f
203	sm	EUR	f
204	sn	XOF	f
205	so	SOS	f
206	sr	SRD	f
207	ss	SSP	f
208	st	STD	f
209	sv	SVC	f
210	sx	ANG	f
211	sy	SYP	f
212	sz	SZL	f
213	tc	USD	f
214	td	XAF	f
215	tf	EUR	f
216	tg	XOF	f
217	th	THB	f
218	tj	TJS	f
219	tk	NZD	f
220	tl	USD	f
221	tm	TMT	f
222	tn	TND	f
223	to	TOP	f
224	tr	TRY	f
225	tt	TTD	f
226	tv	AUD	f
227	tw	TWD	f
228	tz	TZS	f
229	ua	UAH	f
230	ug	UGX	f
231	um	USD	f
232	us	USD	f
233	uy	UYU	f
234	uz	UZS	f
235	va	EUR	f
236	vc	XCD	f
237	ve	VES	f
238	vg	USD	f
239	vi	USD	f
240	vn	VND	f
241	vu	VUV	f
242	wf	XPF	f
243	ws	WST	f
244	xk	EUR	f
245	ye	YER	f
246	yt	EUR	f
247	za	ZAR	f
248	zm	ZMW	f
249	zw	ZWL	f
\.


--
-- Data for Name: instruments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instruments" ("id", "name") FROM stdin;
1	violin
2	viola
3	cello
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type") FROM stdin;
first-bucket	first-bucket	\N	2025-08-23 20:54:25.012155+00	2025-08-23 20:54:25.012155+00	t	f	\N	\N	\N	STANDARD
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("id", "type", "format", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: iceberg_namespaces; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."iceberg_namespaces" ("id", "bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: iceberg_tables; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."iceberg_tables" ("id", "namespace_id", "bucket_id", "name", "location", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "level") FROM stdin;
20997b15-b8db-42dc-a426-f553cf83d7c7	first-bucket	bless-this-mess.jpg	\N	2025-08-23 20:55:40.6649+00	2025-08-23 20:55:40.6649+00	2025-08-23 20:55:40.6649+00	{"eTag": "\\"97bdc8531ae4f72734b1c83d376eeaaa\\"", "size": 49459, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-23T20:55:40.648Z", "contentLength": 49459, "httpStatusCode": 200}	de6a6027-d8fa-480b-bb28-46cb88fdd18c	\N	\N	1
ec1e4ed7-1c00-431e-ad5a-841e935a8904	first-bucket	america-poland.jpg	\N	2025-08-23 20:55:40.666261+00	2025-08-23 20:55:40.666261+00	2025-08-23 20:55:40.666261+00	{"eTag": "\\"1cfe6354607a01f79a31954b61e0e215\\"", "size": 149090, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-23T20:55:40.648Z", "contentLength": 149090, "httpStatusCode": 200}	ae01ddea-4dd9-4aa5-b758-c4f39f628e41	\N	\N	1
7c063045-3ca0-4daa-b826-a1e61aac4d6b	first-bucket	wave-growth-mugshot.jpg	\N	2025-08-23 20:55:40.674441+00	2025-08-23 20:55:40.674441+00	2025-08-23 20:55:40.674441+00	{"eTag": "\\"810d1773b00452966da5fcbda3c581be\\"", "size": 387870, "mimetype": "image/jpeg", "cacheControl": "max-age=3600", "lastModified": "2025-08-23T20:55:40.648Z", "contentLength": 387870, "httpStatusCode": 200}	d986a6bb-2cba-4681-8960-4ea536ca1212	\N	\N	1
\.


--
-- Data for Name: prefixes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."prefixes" ("bucket_id", "name", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--

COPY "supabase_functions"."hooks" ("id", "hook_table_id", "hook_name", "created_at", "request_id") FROM stdin;
\.


--
-- Data for Name: countries; Type: TABLE DATA; Schema: world; Owner: postgres
--

COPY "world"."countries" ("id", "country", "enabled") FROM stdin;
1	af	f
2	ax	f
3	al	f
4	dz	f
5	as	f
6	ad	f
7	ao	f
8	ai	f
9	aq	f
10	ag	f
11	ar	f
12	am	f
13	aw	f
14	au	f
15	at	f
16	az	f
17	bs	f
18	bh	f
19	bd	f
20	bb	f
21	by	f
22	be	f
23	bz	f
24	bj	f
25	bm	f
26	bt	f
27	bo	f
28	ba	f
29	bw	f
30	bv	f
31	br	f
32	io	f
33	vg	f
34	bn	f
35	bg	f
36	bf	f
37	bi	f
38	kh	f
39	cm	f
40	ca	f
41	cv	f
42	bq	f
43	ky	f
44	cf	f
45	td	f
46	cl	f
47	cn	f
48	cx	f
49	cc	f
50	co	f
51	km	f
52	ck	f
53	cr	f
54	hr	f
55	cu	f
56	cw	f
57	cy	f
58	cz	f
59	dk	f
60	dj	f
61	dm	f
62	do	f
63	cd	f
64	ec	f
65	eg	f
66	sv	f
67	gq	f
68	er	f
69	ee	f
70	et	f
71	fk	f
72	fo	f
73	fj	f
74	fi	f
75	fr	f
76	gf	f
77	pf	f
78	tf	f
79	ga	f
80	gm	f
81	ge	f
82	de	f
83	gh	f
84	gi	f
85	gr	f
86	gl	f
87	gd	f
88	gp	f
89	gu	f
90	gt	f
91	gg	f
92	gn	f
93	gw	f
94	gy	f
95	ht	f
96	hm	f
97	hn	f
98	hk	f
99	hu	f
100	is	f
101	in	f
102	id	f
103	ir	f
104	iq	f
105	ie	f
106	im	f
107	il	f
108	it	f
109	ci	f
110	jm	f
111	jp	f
112	je	f
113	jo	f
114	kz	f
115	ke	f
116	ki	f
117	xk	f
118	kw	f
119	kg	f
120	la	f
121	lv	f
122	lb	f
123	ls	f
124	lr	f
125	ly	f
126	li	f
127	lt	f
128	lu	f
129	mo	f
130	mk	f
131	mg	f
132	mw	f
133	my	f
134	mv	f
135	ml	f
136	mt	f
137	mh	f
138	mq	f
139	mr	f
140	mu	f
141	yt	f
142	mx	f
143	fm	f
144	md	f
145	mc	f
146	mn	f
147	me	f
148	ms	f
149	ma	f
150	mz	f
151	mm	f
152	na	f
153	nr	f
154	np	f
155	nl	f
156	nc	f
157	nz	f
158	ni	f
159	ne	f
160	ng	f
161	nu	f
162	nf	f
163	kp	f
164	mp	f
165	no	f
166	om	f
167	pk	f
168	pw	f
169	ps	f
170	pa	f
171	pg	f
172	py	f
173	pe	f
174	ph	f
175	pn	f
176	pl	f
177	pt	f
178	pr	f
179	qa	f
180	cg	f
181	re	f
182	ro	f
183	ru	f
184	rw	f
185	bl	f
186	sh	f
187	kn	f
188	lc	f
189	mf	f
190	pm	f
191	vc	f
192	ws	f
193	sm	f
194	st	f
195	sa	f
196	sn	f
197	rs	f
198	sc	f
199	sl	f
200	sg	f
201	sx	f
202	sk	f
203	si	f
204	sb	f
205	so	f
206	za	f
207	gs	f
208	kr	f
209	ss	f
210	es	f
211	lk	f
212	sd	f
213	sr	f
214	sj	f
215	sz	f
216	se	f
217	ch	f
218	sy	f
219	tw	f
220	tj	f
221	tz	f
222	th	f
223	tl	f
224	tg	f
225	tk	f
226	to	f
227	tt	f
228	tn	f
229	tr	f
230	tm	f
231	tc	f
232	tv	f
233	ug	f
234	ua	f
235	ae	f
236	gb	f
237	us	f
238	um	f
239	vi	f
240	uy	f
241	uz	f
242	vu	f
243	va	f
244	ve	f
245	vn	f
246	wf	f
247	eh	f
248	ye	f
249	zm	f
250	zw	f
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 53, true);


--
-- Name: country_language_labels_id_seq; Type: SEQUENCE SET; Schema: i18n; Owner: postgres
--

SELECT pg_catalog.setval('"i18n"."country_language_labels_id_seq"', 1, false);


--
-- Name: country_currencies_id_seq; Type: SEQUENCE SET; Schema: iso; Owner: postgres
--

SELECT pg_catalog.setval('"iso"."country_currencies_id_seq"', 249, true);


--
-- Name: country_languages_id_seq; Type: SEQUENCE SET; Schema: iso; Owner: postgres
--

SELECT pg_catalog.setval('"iso"."country_languages_id_seq"', 416, true);


--
-- Name: instruments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instruments_id_seq"', 3, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- Name: countries_id_seq; Type: SEQUENCE SET; Schema: world; Owner: postgres
--

SELECT pg_catalog.setval('"world"."countries_id_seq"', 250, true);


--
-- PostgreSQL database dump complete
--

RESET ALL;
