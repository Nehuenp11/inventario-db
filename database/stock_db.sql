--
-- PostgreSQL database dump
--

\restrict n469nEEzukK57M7VjQnl5Pz3C5i8O6STaYBQ1IdSPaqPNoDaMliPW5CYX88nPmp

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

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
-- Name: categoria; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public.categoria OWNER TO postgres;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categoria_id_categoria_seq OWNER TO postgres;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;


--
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    cod_empleado integer NOT NULL,
    dni character varying(20),
    nombre character varying(100),
    apellido character varying(100),
    fecha_ingreso date
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- Name: empleado_cod_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_cod_empleado_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.empleado_cod_empleado_seq OWNER TO postgres;

--
-- Name: empleado_cod_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_cod_empleado_seq OWNED BY public.empleado.cod_empleado;


--
-- Name: entrada; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.entrada (
    id_entrada integer NOT NULL,
    cod_producto integer,
    cod_inventario integer,
    cantidad integer,
    fecha_entrada timestamp without time zone
);


ALTER TABLE public.entrada OWNER TO postgres;

--
-- Name: entrada_id_entrada_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.entrada_id_entrada_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.entrada_id_entrada_seq OWNER TO postgres;

--
-- Name: entrada_id_entrada_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.entrada_id_entrada_seq OWNED BY public.entrada.id_entrada;


--
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventario (
    cod_inventario integer NOT NULL,
    usuario integer
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- Name: inventario_cod_inventario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventario_cod_inventario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventario_cod_inventario_seq OWNER TO postgres;

--
-- Name: inventario_cod_inventario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventario_cod_inventario_seq OWNED BY public.inventario.cod_inventario;


--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    cod_producto integer NOT NULL,
    nombre character varying(150),
    descripcion text,
    precio numeric(10,2),
    id_categoria integer,
    cod_inventario integer
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- Name: producto_cod_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_cod_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.producto_cod_producto_seq OWNER TO postgres;

--
-- Name: producto_cod_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_cod_producto_seq OWNED BY public.producto.cod_producto;


--
-- Name: rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rol (
    id_rol integer NOT NULL,
    nombre character varying(100)
);


ALTER TABLE public.rol OWNER TO postgres;

--
-- Name: rol_id_rol_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rol_id_rol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rol_id_rol_seq OWNER TO postgres;

--
-- Name: rol_id_rol_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rol_id_rol_seq OWNED BY public.rol.id_rol;


--
-- Name: salida; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salida (
    id_salida integer NOT NULL,
    cod_producto integer,
    cod_inventario integer,
    cantidad integer,
    fecha_salida timestamp without time zone
);


ALTER TABLE public.salida OWNER TO postgres;

--
-- Name: salida_id_salida_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.salida_id_salida_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.salida_id_salida_seq OWNER TO postgres;

--
-- Name: salida_id_salida_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.salida_id_salida_seq OWNED BY public.salida.id_salida;


--
-- Name: sucursal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sucursal (
    id_sucursal integer NOT NULL,
    nombre character varying(150),
    direccion character varying(200)
);


ALTER TABLE public.sucursal OWNER TO postgres;

--
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sucursal_id_sucursal_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sucursal_id_sucursal_seq OWNER TO postgres;

--
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sucursal_id_sucursal_seq OWNED BY public.sucursal.id_sucursal;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(100),
    contrasena character varying(200),
    id_sucursal integer,
    id_rol integer,
    cod_empleado integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_id_usuario_seq OWNED BY public.usuario.id_usuario;


--
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);


--
-- Name: empleado cod_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN cod_empleado SET DEFAULT nextval('public.empleado_cod_empleado_seq'::regclass);


--
-- Name: entrada id_entrada; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada ALTER COLUMN id_entrada SET DEFAULT nextval('public.entrada_id_entrada_seq'::regclass);


--
-- Name: inventario cod_inventario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario ALTER COLUMN cod_inventario SET DEFAULT nextval('public.inventario_cod_inventario_seq'::regclass);


--
-- Name: producto cod_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN cod_producto SET DEFAULT nextval('public.producto_cod_producto_seq'::regclass);


--
-- Name: rol id_rol; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol ALTER COLUMN id_rol SET DEFAULT nextval('public.rol_id_rol_seq'::regclass);


--
-- Name: salida id_salida; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salida ALTER COLUMN id_salida SET DEFAULT nextval('public.salida_id_salida_seq'::regclass);


--
-- Name: sucursal id_sucursal; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal ALTER COLUMN id_sucursal SET DEFAULT nextval('public.sucursal_id_sucursal_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuario_id_usuario_seq'::regclass);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria (id_categoria, nombre) FROM stdin;
1	Aceites
2	Accesorios
3	Bujias
4	Chalecos Salvavidas
5	Acoples
6	Enganches
7	Sogas
8	Trailler
9	Matafuegos
10	Relojeria
11	Ecosondas
\.


--
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.empleado (cod_empleado, dni, nombre, apellido, fecha_ingreso) FROM stdin;
1	30111222	Juan	Pérez	2020-01-15
2	30222333	María	Gómez	2019-03-10
3	30333444	Carlos	López	2021-07-01
4	30444555	Ana	Martínez	2022-02-20
5	30555666	Luis	Fernández	2018-11-05
6	30666777	Sofía	Rodríguez	2020-09-12
7	30777888	Martín	García	2021-05-30
8	30888999	Laura	Sánchez	2019-12-25
9	30999000	Diego	Ramírez	2022-06-18
10	31000111	Valeria	Torres	2023-01-10
11	31111222	Esteban	Morales	2023-03-05
\.


--
-- Data for Name: entrada; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.entrada (id_entrada, cod_producto, cod_inventario, cantidad, fecha_entrada) FROM stdin;
1	1	1	10	2023-01-10 00:00:00
2	2	1	50	2023-01-12 00:00:00
3	3	2	20	2023-01-15 00:00:00
4	4	3	30	2023-01-18 00:00:00
5	5	4	15	2023-01-20 00:00:00
6	6	5	25	2023-01-22 00:00:00
7	7	6	12	2023-01-25 00:00:00
8	8	7	18	2023-01-28 00:00:00
9	9	8	40	2023-02-01 00:00:00
10	10	9	8	2023-02-05 00:00:00
11	11	10	22	2023-02-08 00:00:00
\.


--
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventario (cod_inventario, usuario) FROM stdin;
1	1
2	2
3	3
4	4
5	5
6	6
7	7
8	8
9	9
10	10
11	11
\.


--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.producto (cod_producto, nombre, descripcion, precio, id_categoria, cod_inventario) FROM stdin;
1	Laptop Lenovo	Laptop de 15 pulgadas	1200.00	1	1
2	Mouse Logitech	Mouse inalámbrico	25.00	2	1
3	Monitor Samsung	Monitor LED 24"	300.00	2	2
4	Teclado Genius	Teclado mecánico	45.00	2	3
5	Impresora HP	Impresora multifunción	150.00	3	4
6	Auriculares Sony	Auriculares Bluetooth	80.00	2	5
7	Tablet Samsung	Tablet 10 pulgadas	400.00	1	6
8	Disco Duro WD	Disco externo 1TB	70.00	2	7
9	Memoria Kingston	RAM DDR4 8GB	60.00	2	8
10	Silla Gamer	Silla ergonómica	200.00	4	9
11	Webcam Logitech	Cámara HD	50.00	2	10
\.


--
-- Data for Name: rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rol (id_rol, nombre) FROM stdin;
1	Administrador
2	Empleado
\.


--
-- Data for Name: salida; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.salida (id_salida, cod_producto, cod_inventario, cantidad, fecha_salida) FROM stdin;
1	1	1	2	2023-02-15 00:00:00
2	2	1	5	2023-02-16 00:00:00
3	3	2	3	2023-02-17 00:00:00
4	4	3	4	2023-02-18 00:00:00
5	5	4	2	2023-02-19 00:00:00
6	6	5	6	2023-02-20 00:00:00
7	7	6	1	2023-02-21 00:00:00
8	8	7	2	2023-02-22 00:00:00
9	9	8	7	2023-02-23 00:00:00
10	10	9	1	2023-02-24 00:00:00
11	11	10	3	2023-02-25 00:00:00
\.


--
-- Data for Name: sucursal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sucursal (id_sucursal, nombre, direccion) FROM stdin;
1	Sucursal San Jose	Ex Ruta 26 km 5
2	Sucursal Colon	Bolivar 772
\.


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.usuario (id_usuario, nombre_usuario, contrasena, id_sucursal, id_rol, cod_empleado) FROM stdin;
1	admin1	pass123	1	1	1
2	user2	pass234	1	2	2
3	user3	pass345	1	2	3
4	user4	pass456	1	2	4
5	user5	pass567	1	2	5
6	user6	pass678	1	2	6
7	user7	pass789	1	2	7
8	user8	pass890	1	2	8
9	user9	pass901	1	2	9
10	user10	pass012	1	2	10
11	user11	pass111	1	2	11
\.


--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 11, true);


--
-- Name: empleado_cod_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_cod_empleado_seq', 11, true);


--
-- Name: entrada_id_entrada_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.entrada_id_entrada_seq', 11, true);


--
-- Name: inventario_cod_inventario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_cod_inventario_seq', 11, true);


--
-- Name: producto_cod_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_cod_producto_seq', 11, true);


--
-- Name: rol_id_rol_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rol_id_rol_seq', 2, true);


--
-- Name: salida_id_salida_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.salida_id_salida_seq', 11, true);


--
-- Name: sucursal_id_sucursal_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sucursal_id_sucursal_seq', 2, true);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_id_usuario_seq', 11, true);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- Name: empleado empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT empleado_pkey PRIMARY KEY (cod_empleado);


--
-- Name: entrada entrada_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT entrada_pkey PRIMARY KEY (id_entrada);


--
-- Name: inventario inventario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT inventario_pkey PRIMARY KEY (cod_inventario);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (cod_producto);


--
-- Name: rol rol_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (id_rol);


--
-- Name: salida salida_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salida
    ADD CONSTRAINT salida_pkey PRIMARY KEY (id_salida);


--
-- Name: sucursal sucursal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sucursal
    ADD CONSTRAINT sucursal_pkey PRIMARY KEY (id_sucursal);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: entrada fk_entrada_inventario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT fk_entrada_inventario FOREIGN KEY (cod_inventario) REFERENCES public.inventario(cod_inventario);


--
-- Name: entrada fk_entrada_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.entrada
    ADD CONSTRAINT fk_entrada_producto FOREIGN KEY (cod_producto) REFERENCES public.producto(cod_producto);


--
-- Name: inventario fk_inventario_usuario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT fk_inventario_usuario FOREIGN KEY (usuario) REFERENCES public.usuario(id_usuario);


--
-- Name: producto fk_producto_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_producto_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria(id_categoria);


--
-- Name: producto fk_producto_inventario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT fk_producto_inventario FOREIGN KEY (cod_inventario) REFERENCES public.inventario(cod_inventario);


--
-- Name: salida fk_salida_inventario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salida
    ADD CONSTRAINT fk_salida_inventario FOREIGN KEY (cod_inventario) REFERENCES public.inventario(cod_inventario);


--
-- Name: salida fk_salida_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salida
    ADD CONSTRAINT fk_salida_producto FOREIGN KEY (cod_producto) REFERENCES public.producto(cod_producto);


--
-- Name: usuario fk_usuario_empleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_empleado FOREIGN KEY (cod_empleado) REFERENCES public.empleado(cod_empleado);


--
-- Name: usuario fk_usuario_rol; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_rol FOREIGN KEY (id_rol) REFERENCES public.rol(id_rol);


--
-- Name: usuario fk_usuario_sucursal; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_sucursal FOREIGN KEY (id_sucursal) REFERENCES public.sucursal(id_sucursal);


--
-- PostgreSQL database dump complete
--

\unrestrict n469nEEzukK57M7VjQnl5Pz3C5i8O6STaYBQ1IdSPaqPNoDaMliPW5CYX88nPmp

