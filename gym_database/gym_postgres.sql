--
-- PostgreSQL database dump
--

-- Dumped from database version 17.5
-- Dumped by pg_dump version 17.5

-- Started on 2025-08-21 17:21:28

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16898)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    email character varying(100) NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16897)
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO postgres;

--
-- TOC entry 4820 (class 0 OID 0)
-- Dependencies: 219
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- TOC entry 218 (class 1259 OID 16889)
-- Name: memberships; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.memberships (
    id integer NOT NULL,
    membership_start date,
    membership_end date,
    last_checkin timestamp without time zone,
    last_checkout timestamp without time zone,
    consumption numeric(5,2),
    first_name character varying(200),
    last_name character varying(200),
    price numeric(5,2),
    billing_frequency integer,
    gender character varying(200)
);


ALTER TABLE public.memberships OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16888)
-- Name: memberships_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.memberships_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.memberships_id_seq OWNER TO postgres;

--
-- TOC entry 4821 (class 0 OID 0)
-- Dependencies: 217
-- Name: memberships_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.memberships_id_seq OWNED BY public.memberships.id;


--
-- TOC entry 222 (class 1259 OID 16907)
-- Name: orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    amount_billed numeric(10,2) NOT NULL,
    customer_id integer NOT NULL,
    CONSTRAINT orders_amount_billed_check CHECK ((amount_billed > (0)::numeric))
);


ALTER TABLE public.orders OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16906)
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.orders_id_seq OWNER TO postgres;

--
-- TOC entry 4822 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- TOC entry 4652 (class 2604 OID 16901)
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- TOC entry 4651 (class 2604 OID 16892)
-- Name: memberships id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships ALTER COLUMN id SET DEFAULT nextval('public.memberships_id_seq'::regclass);


--
-- TOC entry 4653 (class 2604 OID 16910)
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- TOC entry 4812 (class 0 OID 16898)
-- Dependencies: 220
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, first_name, last_name, email) FROM stdin;
1	John	Doe	john@gmail.com
2	Jane	Smith	jane@gmail.com
3	Alice	Johnson	alice@gmail.com
4	Ken	Brooks	ken@gmail.com
13	Jonas	Blue	jonas@test.com
\.


--
-- TOC entry 4810 (class 0 OID 16889)
-- Dependencies: 218
-- Data for Name: memberships; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.memberships (id, membership_start, membership_end, last_checkin, last_checkout, consumption, first_name, last_name, price, billing_frequency, gender) FROM stdin;
1	2021-10-01	\N	2021-10-01 05:17:36	2021-10-01 06:20:45	26.49	John	Doe	19.99	12	male
2	2020-05-10	2022-05-09	2021-11-03 10:01:56	2021-11-03 14:30:00	100.26	Jane	Smith	199.99	1	male
3	2021-02-18	2022-02-17	2021-10-29 15:26:05	2021-10-29 17:01:33	5.10	Alice	Johnson	199.99	1	female
4	2021-10-18	2021-11-18	2021-11-01 08:56:01	2021-11-01 09:20:12	\N	John	Doe	19.99	12	divers
5	2021-05-02	\N	2021-06-05 11:52:25	2021-06-05 11:58:08	\N	Monti	Durns	199.99	1	male
\.


--
-- TOC entry 4814 (class 0 OID 16907)
-- Dependencies: 222
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.orders (id, amount_billed, customer_id) FROM stdin;
1	48.99	1
2	27.45	2
3	19.49	1
4	8.49	3
7	103.12	4
11	103.12	13
\.


--
-- TOC entry 4823 (class 0 OID 0)
-- Dependencies: 219
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 13, true);


--
-- TOC entry 4824 (class 0 OID 0)
-- Dependencies: 217
-- Name: memberships_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.memberships_id_seq', 5, true);


--
-- TOC entry 4825 (class 0 OID 0)
-- Dependencies: 221
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_id_seq', 11, true);


--
-- TOC entry 4658 (class 2606 OID 16905)
-- Name: customers customers_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_email_key UNIQUE (email);


--
-- TOC entry 4660 (class 2606 OID 16903)
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- TOC entry 4656 (class 2606 OID 16896)
-- Name: memberships memberships_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.memberships
    ADD CONSTRAINT memberships_pkey PRIMARY KEY (id);


--
-- TOC entry 4662 (class 2606 OID 16913)
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- TOC entry 4663 (class 2606 OID 16914)
-- Name: orders orders_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


-- Completed on 2025-08-21 17:21:29

--
-- PostgreSQL database dump complete
--

