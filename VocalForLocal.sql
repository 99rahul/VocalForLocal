PGDMP              
        
    x            sgd    11.9    12.4 �    P           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            R           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            S           1262    16393    sgd    DATABASE     �   CREATE DATABASE sgd WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE sgd;
                postgres    false                        3079    16394    postgis 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS postgis WITH SCHEMA public;
    DROP EXTENSION postgis;
                   false            T           0    0    EXTENSION postgis    COMMENT     g   COMMENT ON EXTENSION postgis IS 'PostGIS geometry, geography, and raster spatial types and functions';
                        false    2            �            1259    24607 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            postgres    false            �            1259    24605    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            U           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    24617    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            postgres    false            �            1259    24615    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            V           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    24599    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            postgres    false            �            1259    24597    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            W           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    24625 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public            postgres    false            �            1259    24635    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public            postgres    false            �            1259    24633    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            X           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    24623    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            Y           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    24643    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public            postgres    false            �            1259    24641 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            Z           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    24703    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public            postgres    false            �            1259    24701    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            [           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    24589    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            postgres    false            �            1259    24587    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            \           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    24578    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            postgres    false            �            1259    24576    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            ]           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    24734    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            postgres    false            �            1259    40962    shop_dress1    TABLE     �  CREATE TABLE public.shop_dress1 (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price integer NOT NULL,
    "desc" text NOT NULL,
    shop_name character varying(200) NOT NULL,
    address character varying(1000) NOT NULL,
    latitude numeric(8,6) NOT NULL,
    longitude numeric(8,6) NOT NULL,
    geo_location public.geometry(Point,4326),
    img character varying(2000000) NOT NULL,
    area text NOT NULL
);
    DROP TABLE public.shop_dress1;
       public            postgres    false    2    2    2    2    2    2    2    2            �            1259    40960    shop_dress1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_dress1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.shop_dress1_id_seq;
       public          postgres    false    228            ^           0    0    shop_dress1_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.shop_dress1_id_seq OWNED BY public.shop_dress1.id;
          public          postgres    false    227            �            1259    24746    shop_homeart    TABLE     �  CREATE TABLE public.shop_homeart (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price integer NOT NULL,
    "desc" text NOT NULL,
    shop_name character varying(200) NOT NULL,
    address character varying(1000) NOT NULL,
    latitude numeric(8,6) NOT NULL,
    longitude numeric(8,6) NOT NULL,
    geo_location public.geometry(Point,4326),
    img character varying(2000000) NOT NULL,
    insta text NOT NULL,
    area text NOT NULL
);
     DROP TABLE public.shop_homeart;
       public            postgres    false    2    2    2    2    2    2    2    2            �            1259    24759    shop_homeart1    TABLE     �  CREATE TABLE public.shop_homeart1 (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price integer NOT NULL,
    "desc" text NOT NULL,
    shop_name character varying(200) NOT NULL,
    address character varying(1000) NOT NULL,
    latitude numeric(8,6) NOT NULL,
    longitude numeric(8,6) NOT NULL,
    geo_location public.geometry(Point,4326),
    img character varying(2000000) NOT NULL,
    insta text NOT NULL,
    area text NOT NULL
);
 !   DROP TABLE public.shop_homeart1;
       public            postgres    false    2    2    2    2    2    2    2    2            �            1259    24757    shop_homeart1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_homeart1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.shop_homeart1_id_seq;
       public          postgres    false    224            _           0    0    shop_homeart1_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.shop_homeart1_id_seq OWNED BY public.shop_homeart1.id;
          public          postgres    false    223            �            1259    24744    shop_homeart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_homeart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.shop_homeart_id_seq;
       public          postgres    false    222            `           0    0    shop_homeart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.shop_homeart_id_seq OWNED BY public.shop_homeart.id;
          public          postgres    false    221            �            1259    49154    shop_organicveggies1    TABLE     �  CREATE TABLE public.shop_organicveggies1 (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price integer NOT NULL,
    "desc" text NOT NULL,
    shop_name character varying(200) NOT NULL,
    address character varying(1000) NOT NULL,
    latitude numeric(8,6) NOT NULL,
    longitude numeric(8,6) NOT NULL,
    geo_location public.geometry(Point,4326),
    img character varying(2000000) NOT NULL,
    area text NOT NULL
);
 (   DROP TABLE public.shop_organicveggies1;
       public            postgres    false    2    2    2    2    2    2    2    2            �            1259    49152    shop_organicveggies1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_organicveggies1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.shop_organicveggies1_id_seq;
       public          postgres    false    230            a           0    0    shop_organicveggies1_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.shop_organicveggies1_id_seq OWNED BY public.shop_organicveggies1.id;
          public          postgres    false    229            �            1259    65538 
   shop_post1    TABLE     �   CREATE TABLE public.shop_post1 (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(500),
    text text NOT NULL,
    published_date timestamp with time zone
);
    DROP TABLE public.shop_post1;
       public            postgres    false            �            1259    65536    shop_post1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_post1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.shop_post1_id_seq;
       public          postgres    false    232            b           0    0    shop_post1_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.shop_post1_id_seq OWNED BY public.shop_post1.id;
          public          postgres    false    231            �            1259    73730 
   shop_post2    TABLE     �   CREATE TABLE public.shop_post2 (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(500),
    text text NOT NULL,
    published_date timestamp with time zone
);
    DROP TABLE public.shop_post2;
       public            postgres    false            �            1259    73728    shop_post2_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_post2_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.shop_post2_id_seq;
       public          postgres    false    234            c           0    0    shop_post2_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.shop_post2_id_seq OWNED BY public.shop_post2.id;
          public          postgres    false    233            �            1259    73741 
   shop_post3    TABLE     �   CREATE TABLE public.shop_post3 (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(500),
    text text NOT NULL,
    published_date timestamp with time zone
);
    DROP TABLE public.shop_post3;
       public            postgres    false            �            1259    73739    shop_post3_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_post3_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.shop_post3_id_seq;
       public          postgres    false    236            d           0    0    shop_post3_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.shop_post3_id_seq OWNED BY public.shop_post3.id;
          public          postgres    false    235            �            1259    73752 
   shop_post4    TABLE     �   CREATE TABLE public.shop_post4 (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    email character varying(500),
    text text NOT NULL,
    published_date timestamp with time zone
);
    DROP TABLE public.shop_post4;
       public            postgres    false            �            1259    73750    shop_post4_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_post4_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.shop_post4_id_seq;
       public          postgres    false    238            e           0    0    shop_post4_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.shop_post4_id_seq OWNED BY public.shop_post4.id;
          public          postgres    false    237            �            1259    32770    shop_streetfood1    TABLE     �  CREATE TABLE public.shop_streetfood1 (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    price integer NOT NULL,
    "desc" text NOT NULL,
    shop_name character varying(200) NOT NULL,
    address character varying(1000) NOT NULL,
    latitude numeric(8,6) NOT NULL,
    longitude numeric(8,6) NOT NULL,
    geo_location public.geometry(Point,4326),
    img character varying(2000000) NOT NULL,
    area text NOT NULL
);
 $   DROP TABLE public.shop_streetfood1;
       public            postgres    false    2    2    2    2    2    2    2    2            �            1259    32768    shop_streetfood1_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shop_streetfood1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.shop_streetfood1_id_seq;
       public          postgres    false    226            f           0    0    shop_streetfood1_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.shop_streetfood1_id_seq OWNED BY public.shop_streetfood1.id;
          public          postgres    false    225            J           2604    24610    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209            K           2604    24620    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            I           2604    24602    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            L           2604    24628    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            M           2604    24638    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            N           2604    24646    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            O           2604    24706    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            H           2604    24592    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            G           2604    24581    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            T           2604    40965    shop_dress1 id    DEFAULT     p   ALTER TABLE ONLY public.shop_dress1 ALTER COLUMN id SET DEFAULT nextval('public.shop_dress1_id_seq'::regclass);
 =   ALTER TABLE public.shop_dress1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    228    228            Q           2604    24749    shop_homeart id    DEFAULT     r   ALTER TABLE ONLY public.shop_homeart ALTER COLUMN id SET DEFAULT nextval('public.shop_homeart_id_seq'::regclass);
 >   ALTER TABLE public.shop_homeart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            R           2604    24762    shop_homeart1 id    DEFAULT     t   ALTER TABLE ONLY public.shop_homeart1 ALTER COLUMN id SET DEFAULT nextval('public.shop_homeart1_id_seq'::regclass);
 ?   ALTER TABLE public.shop_homeart1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            U           2604    49157    shop_organicveggies1 id    DEFAULT     �   ALTER TABLE ONLY public.shop_organicveggies1 ALTER COLUMN id SET DEFAULT nextval('public.shop_organicveggies1_id_seq'::regclass);
 F   ALTER TABLE public.shop_organicveggies1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            V           2604    65541    shop_post1 id    DEFAULT     n   ALTER TABLE ONLY public.shop_post1 ALTER COLUMN id SET DEFAULT nextval('public.shop_post1_id_seq'::regclass);
 <   ALTER TABLE public.shop_post1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            W           2604    73733    shop_post2 id    DEFAULT     n   ALTER TABLE ONLY public.shop_post2 ALTER COLUMN id SET DEFAULT nextval('public.shop_post2_id_seq'::regclass);
 <   ALTER TABLE public.shop_post2 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            X           2604    73744    shop_post3 id    DEFAULT     n   ALTER TABLE ONLY public.shop_post3 ALTER COLUMN id SET DEFAULT nextval('public.shop_post3_id_seq'::regclass);
 <   ALTER TABLE public.shop_post3 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            Y           2604    73755    shop_post4 id    DEFAULT     n   ALTER TABLE ONLY public.shop_post4 ALTER COLUMN id SET DEFAULT nextval('public.shop_post4_id_seq'::regclass);
 <   ALTER TABLE public.shop_post4 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            S           2604    32773    shop_streetfood1 id    DEFAULT     z   ALTER TABLE ONLY public.shop_streetfood1 ALTER COLUMN id SET DEFAULT nextval('public.shop_streetfood1_id_seq'::regclass);
 B   ALTER TABLE public.shop_streetfood1 ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            0          0    24607 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �      2          0    24617    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �      .          0    24599    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207         4          0    24625 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    213   Y      6          0    24635    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    215         8          0    24643    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    217   2      :          0    24703    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    219   O      ,          0    24589    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   #      *          0    24578    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �#      ;          0    24734    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    220   &      C          0    40962    shop_dress1 
   TABLE DATA           �   COPY public.shop_dress1 (id, name, price, "desc", shop_name, address, latitude, longitude, geo_location, img, area) FROM stdin;
    public          postgres    false    228   �)      =          0    24746    shop_homeart 
   TABLE DATA           �   COPY public.shop_homeart (id, name, price, "desc", shop_name, address, latitude, longitude, geo_location, img, insta, area) FROM stdin;
    public          postgres    false    222   �0      ?          0    24759    shop_homeart1 
   TABLE DATA           �   COPY public.shop_homeart1 (id, name, price, "desc", shop_name, address, latitude, longitude, geo_location, img, insta, area) FROM stdin;
    public          postgres    false    224   �0      E          0    49154    shop_organicveggies1 
   TABLE DATA           �   COPY public.shop_organicveggies1 (id, name, price, "desc", shop_name, address, latitude, longitude, geo_location, img, area) FROM stdin;
    public          postgres    false    230   �;      G          0    65538 
   shop_post1 
   TABLE DATA           K   COPY public.shop_post1 (id, name, email, text, published_date) FROM stdin;
    public          postgres    false    232   D      I          0    73730 
   shop_post2 
   TABLE DATA           K   COPY public.shop_post2 (id, name, email, text, published_date) FROM stdin;
    public          postgres    false    234   �D      K          0    73741 
   shop_post3 
   TABLE DATA           K   COPY public.shop_post3 (id, name, email, text, published_date) FROM stdin;
    public          postgres    false    236   ,E      M          0    73752 
   shop_post4 
   TABLE DATA           K   COPY public.shop_post4 (id, name, email, text, published_date) FROM stdin;
    public          postgres    false    238   IE      A          0    32770    shop_streetfood1 
   TABLE DATA           �   COPY public.shop_streetfood1 (id, name, price, "desc", shop_name, address, latitude, longitude, geo_location, img, area) FROM stdin;
    public          postgres    false    226   fE      E          0    16699    spatial_ref_sys 
   TABLE DATA           X   COPY public.spatial_ref_sys (srid, auth_name, auth_srid, srtext, proj4text) FROM stdin;
    public          postgres    false    198   `M      g           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            h           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            i           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);
          public          postgres    false    206            j           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    214            k           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);
          public          postgres    false    212            l           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            m           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 82, true);
          public          postgres    false    218            n           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);
          public          postgres    false    204            o           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          postgres    false    202            p           0    0    shop_dress1_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.shop_dress1_id_seq', 15, true);
          public          postgres    false    227            q           0    0    shop_homeart1_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.shop_homeart1_id_seq', 21, true);
          public          postgres    false    223            r           0    0    shop_homeart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.shop_homeart_id_seq', 1, false);
          public          postgres    false    221            s           0    0    shop_organicveggies1_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.shop_organicveggies1_id_seq', 14, true);
          public          postgres    false    229            t           0    0    shop_post1_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.shop_post1_id_seq', 2, true);
          public          postgres    false    231            u           0    0    shop_post2_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.shop_post2_id_seq', 1, true);
          public          postgres    false    233            v           0    0    shop_post3_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.shop_post3_id_seq', 1, false);
          public          postgres    false    235            w           0    0    shop_post4_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.shop_post4_id_seq', 1, false);
          public          postgres    false    237            x           0    0    shop_streetfood1_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.shop_streetfood1_id_seq', 19, true);
          public          postgres    false    225            i           2606    24732    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            n           2606    24659 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            q           2606    24622 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            k           2606    24612    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            d           2606    24650 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            f           2606    24604 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            y           2606    24640 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            |           2606    24674 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            s           2606    24630    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213                       2606    24648 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            �           2606    24688 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            v           2606    24726     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            �           2606    24712 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            _           2606    24596 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            a           2606    24594 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            ]           2606    24586 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    24741 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    220            �           2606    40970    shop_dress1 shop_dress1_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.shop_dress1
    ADD CONSTRAINT shop_dress1_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.shop_dress1 DROP CONSTRAINT shop_dress1_pkey;
       public            postgres    false    228            �           2606    24767     shop_homeart1 shop_homeart1_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.shop_homeart1
    ADD CONSTRAINT shop_homeart1_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.shop_homeart1 DROP CONSTRAINT shop_homeart1_pkey;
       public            postgres    false    224            �           2606    24754    shop_homeart shop_homeart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.shop_homeart
    ADD CONSTRAINT shop_homeart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.shop_homeart DROP CONSTRAINT shop_homeart_pkey;
       public            postgres    false    222            �           2606    49162 .   shop_organicveggies1 shop_organicveggies1_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.shop_organicveggies1
    ADD CONSTRAINT shop_organicveggies1_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.shop_organicveggies1 DROP CONSTRAINT shop_organicveggies1_pkey;
       public            postgres    false    230            �           2606    65546    shop_post1 shop_post1_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.shop_post1
    ADD CONSTRAINT shop_post1_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.shop_post1 DROP CONSTRAINT shop_post1_pkey;
       public            postgres    false    232            �           2606    73738    shop_post2 shop_post2_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.shop_post2
    ADD CONSTRAINT shop_post2_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.shop_post2 DROP CONSTRAINT shop_post2_pkey;
       public            postgres    false    234            �           2606    73749    shop_post3 shop_post3_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.shop_post3
    ADD CONSTRAINT shop_post3_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.shop_post3 DROP CONSTRAINT shop_post3_pkey;
       public            postgres    false    236            �           2606    73760    shop_post4 shop_post4_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.shop_post4
    ADD CONSTRAINT shop_post4_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.shop_post4 DROP CONSTRAINT shop_post4_pkey;
       public            postgres    false    238            �           2606    32778 &   shop_streetfood1 shop_streetfood1_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.shop_streetfood1
    ADD CONSTRAINT shop_streetfood1_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.shop_streetfood1 DROP CONSTRAINT shop_streetfood1_pkey;
       public            postgres    false    226            g           1259    24733    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            l           1259    24670 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            o           1259    24671 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            b           1259    24656 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            w           1259    24686 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            z           1259    24685 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            }           1259    24700 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            �           1259    24699 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            t           1259    24727     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            �           1259    24723 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            �           1259    24724 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �           1259    24743 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    220            �           1259    24742 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    220            �           1259    40971    shop_dress1_geo_location_id    INDEX     Z   CREATE INDEX shop_dress1_geo_location_id ON public.shop_dress1 USING gist (geo_location);
 /   DROP INDEX public.shop_dress1_geo_location_id;
       public            postgres    false    228    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    24768    shop_homeart1_geo_location_id    INDEX     ^   CREATE INDEX shop_homeart1_geo_location_id ON public.shop_homeart1 USING gist (geo_location);
 1   DROP INDEX public.shop_homeart1_geo_location_id;
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    224            �           1259    24755    shop_homeart_geo_location_id    INDEX     \   CREATE INDEX shop_homeart_geo_location_id ON public.shop_homeart USING gist (geo_location);
 0   DROP INDEX public.shop_homeart_geo_location_id;
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    222            �           1259    49163 $   shop_organicveggies1_geo_location_id    INDEX     l   CREATE INDEX shop_organicveggies1_geo_location_id ON public.shop_organicveggies1 USING gist (geo_location);
 8   DROP INDEX public.shop_organicveggies1_geo_location_id;
       public            postgres    false    230    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2            �           1259    32779     shop_streetfood1_geo_location_id    INDEX     d   CREATE INDEX shop_streetfood1_geo_location_id ON public.shop_streetfood1 USING gist (geo_location);
 4   DROP INDEX public.shop_streetfood1_geo_location_id;
       public            postgres    false    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    2    226            �           2606    24665 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    3686    211    207            �           2606    24660 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3691    209    211            �           2606    24651 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3681    207    205            �           2606    24680 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    3691    209    215            �           2606    24675 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    215    3699    213            �           2606    24694 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    217    207    3686            �           2606    24689 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3699    217    213            �           2606    24713 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    205    3681            �           2606    24718 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3699    213    219            0      x������ � �      2      x������ � �      .   >  x�m�]n�0��g�9�*����F�
^��B���~�x�qx���_a�F���K?��e��y_�Qq�'�a�-��{?�A�4E��G�%LS=��)�� Ԕ�gX?�m��YYH�	��8������S����\W*�u�z*��[�+���؅��L0�����])��ª<?�������O��oG�/O��w�2�:-�ʛ˼ǯv��A5P�Sǌ6wRa��]��>��2+�R���U[Ƒ�b������n'�y���N�
����|�~���p����d��0���aQalk��B��Ȩ;O2�]O�%�"4'U�Yڗ���h�o���wY���iF;����_�sq$�_�sv.$N_�S:%���Q���Q�Fډ�A#�'��������,h�/�����;�����W�ڋ�p���<'���s���;0'O����+�-n���1�^���!y7d��d���E��z'*�2�TX�\�
 �"SW�a�XY�T�u'*�2�T8��� ����+���hZY�T������4����^W `�tuV�u{� J��o������?      4   �  x�}��n�P�kx
/�#�}�4F�m�V�&�"�)O?Lk'm��՟�d���_���<�ѯ&e���2 @0h��n�A���g/h��`��ɏhn�Y�9l|�g�(�ybTEh�O�[��6�X��N�D1P�"�c���~�2�{�I��;),�����0&��Y^�ڣ��	3@����aX�n�D3'�3���2��n� �+��7�f�acI��E{�j����[7aZ�I��h���+�б�CUR������٫RM�V��E�
9�f++E�Q��Ø7���/�Fm��<݉]P��c_���u�f쭇���"�(u��
�Y!�.
]s�*�y<�a�<~�#�odiw+��ͧH�s	�38�j�-�����~����T�d�*�=;+X�s�����٩DĊv�J<����      6      x������ � �      8      x������ � �      :   �  x���Mn7�ףSZ%L�~I�r���b��l�=E��=�&g�B��+�Y��#;�?@��ra�iA�9��e����ק����W�}���������w��ǟw�������_�vy7��1 Ngq��x Ж b!J�:;�4f��-ᖀ�-�)�R�1�D���G3�z\��J���[�p�� ��Z8�N�8���Y;� �	��[��p��0.�c�o��ť��GH"B南��<���(�-�϶lye�C�#h������=l�7N��Z����G�HS�;"�cȪ������@�+��6MQ(���F��D��@PN�]d ���L� 9�&9�2��N�P�q�rR���R`*(�hT���` ���'ھmӄ	�V��T/�X��fE־Ɓ``�<Q�ޚ=�y�)0"�Y�Ɗ������x����߇���ݟ��>�
����w�̈́�__�}	^�mf)*����K�/!ZwH�Hg}���-�������__"�j-�l��Y���Dޖ �R:;r�/Q|�dM�&.�٩qu	��5G���Ar}�EJ�G!�s�����m�AP��Q^_d��P	����8���x�Cl��s�邝^_��܊�)���^_�D���>��O�sϲ6����y�����p!���L���apA
\���{D��F̎h�G�Y���v�!���!�C2�I �PR��r�+*��GRm<e���9L	���k�-�C�0Z4$:�@uv�(X�'���lѐ�\綤D�:�9�i7?��b�#�9L)�v�֙9$�뭬6:l�a$oP���A�N�3'�v�PD��'�%4��=�,�vH�!�XD�lޠ�A����X���h��+T����l�nV�XH�ޠ�/�v��wKi�=��Is:�u��S1	y�T��Z�iPB�r�9�v+�IR,B$.��w����o
1���Y#՟ I%b�x�v��'v��s��qÞ<������67�;����@˞f�n���xܰ��qm�j̚swt�6`�i<��a��-��Q�ᆽw���q��v�������C�˵OpJ�]��~��Ù:Dm�1���xh� {�Ԁ3���r���0T<0��{;���si�:`e��d�ն6���<�m "�ձ=p��H�X9b&]���
�U!k"5S�r�	�Gߧ����>��|���hZPG��6���>/̸�#j\p\��TL���k��T��J�b j��c3����<7UCCBY�g��5,;,�L2J�w;�r�׸�T_��r�7㎭�q�s��E��#w��qǞ׸�q�&M����>̸c�k��\A�ʉ�Mu1v�F���	'ɮ��O3�<�\~'�z���	(�>��\s_ld�d��G���3�<�]FON��H�%�e71�
�+������      ,   �   x�U��
�0����b�l�?��I�bWpMI:awo���,�_���	��n؁_��u�fQ���5�kX�%�:+[f�������g�Y2̲�ׂ�?^��(s��L�tlm����E�Oq|r�߽k=��?���ܮi���v@���S�      *   >  x���݊�0F�����eB���,�Н�j�h3o�Q4
��B�=Ǫ/��=����{�cE)�0�VH��}G���F]sC�� �����V�5=/ A	0��W�U�х������;���M�8}����m�"Z�x�j�ц�U#v�5��>��ۏ�5�����8�q�5�U'��[M�;?�����M�b��'Z�N>���.��\ج�������֩M���M[m�1�s��)T(�*2Eď��X���t�� r+hш��u�4�D�-���IPZS��PD2���RI{�;x�1�*�y��UkA��7�4.#�S��v~]�i� �m���iR����/.�#�k��Ħ���_��i�6%1YD`_CN��!ů�Ü�ń(�}ʜ[��?{R��F�~�b� A�F�I2�����C�����
�3vޥ	vL�ьA-\q�m��1;N���#�ǁ�o�j�jJ	��m- ��Gʽ �@P##��l��fV acj\i�?�f�Y�)"��h^hi�8���A�5eD�.��@Q�0��l9�����orN�<���v���f      ;   �  x�U�َ�Z ��뮧��fo�wL
(�Lj:1�̳�O�UI�sr���,�Tk�W��I���A�;��.�v����<��ׅs����1�./S>5���*�ojB�u4��m����<������N\�fK�D���3�6�A�mF"s�0?�~�&��u� ��0��ɕk��T��;����U�!�B��q�ǀ�d���-�A�<8X'����SH�:�M)!U�NFc�1%-�&Aj:�l��01�|�#��w,I�,�P>�a����c������ic[v��8��o�m*���*�>�lN _���������ߜC�*���4��sJ��Xq֕�ۥۏ��.遬� D�W���� ���Oׁ��tJ��I�	�~��5�!�� W����b���
�o�p1��\��,V���O��{�)g�os��ʴ��򴱙a���i�L<*4r�ȳ��W���K�(^M\2j�T�R�-d��~J�������M֬7�tS���%�=�e��
��ʐ��,G�wd����"놙��� ��5�j��>��i���j�N~�z�`���X"4l#&��ew�ns�꽚j��(e�>+��+m�z�Z����*��8��v�G�++R����]�|m�	zvl1�۴Ż�Y�;�5lR�)����r$� ���e!���5ɜGp#��-ILtX�}7(M�9���1`��*$w��lo�u�X��*lr�/%�ڞ�Y���u<�����P����=K�";G`�m���K'����Vf&��M��M�fM�!���UtT^�c��]�6�zPު�	�j,�*� y�[/P�]���6ഄ �6h�HIN���O�{�~�@_s
��%Ce\�y��#"9
r�c 	q��������/{�sF      C   �  x���[w�8��ɯ�ۼ�.H�#H��m�\V�f-/�V��(��_?G�����}H�1����9l�ĺ�x�bY�+��U���k���OI*�ڰMӘd�Ne�FU�Ja$���=���R����{�Z�|��*Uʛ�B���Pp��x�!U���@�X˪.y-a��$�b����kEU��|�K��S^�*��l�t�aycˡf�c�v�aZ��a3r�_̈X��R��Rl��I1e���#�6���>K<����t�}�\���.Έq�t+�R,�6-��1
�J9�~,���[��RT��䙑�$�آ�V���E#��~����A�t����|�1���x������8�;�����`����'�*.�m����F��U�'��j���������+Á=(Hy]����%uwҳ���6��ES��Vr��/|���k��埛��^o����XᐆM�����#3�������1j����J��|��Yӹ#�\����JIZ.7p�`�I�j��3�@�_�,S�B5������/ �@�(P�p�f%��_�k5Fx�'��C:>�kun��g�|��-VP�h>؉}��n����"���c>�Y�Qk����e��P�z�"�N
�(���d5ى�Ti0��>�ž@�|�f����=��OT�xi�U
�+��&"�*Ac�6h"�}px�^/߿��-GC�����G;�&��N�ti<�c�������2��|̑^5<Cw��R�C�\*^�'U����LnГ���]/�{&m��VI>AN�R�9�ڲ� 1��@:��q�tǤ��������V'��n�>�L��y)�����X����%�1�ޠl�_�����@^�-t�*M�[����j}�֗�9ގ�҂3������G�]���wW��bwX�g[]��r��vX,���~DY`p4����g{�N��N,
��ՙg���gM����<����L������NC���5l�Y���¦\st���/����Hu=�u��C=�T��&Kc8�Ɇ�a���q<����>�����u@���Q�8Ē^6�`�^m����BeXd�����m��i��0vt�lW�[�|�� ���y�+��,t*jYx@�� ��#�~�X4t#�aYX����k�d��a�f\������G"��:^|4k�0��)��:�������"�'�v �� Y a�<a���b	�v�=i�����9�p��ūv�'�̡����P8��w��jJ{c@d�yѼ�ʯ���:�u��HM�N1�m�� w=����`��3��t;��s>d@�+#�	^W�	��3 h���-K}ȯ0�(8$�k��$W&����<H�Q�Do�&j-�>�m@��eva�f��Ůs�%Ʊ��w� č��a�� �ܟL⧛��N� ��7J�a���-��.��:U�=~b��Հ�p����Ng����,�h�*�
JU-�Q�������~�D�>��OV�Ռ0sz˄6v�D���#{.�o����������/�����;]�����!�O�@�:q�Y��o/p͆��Q���!�o��l��>NQ�Z'(��B�IG!pX��S�(@.��8�?P�!��I�V�E�S��^�^��T�pЯ_�h_�c~����8��Y�G�_��#��iNfsl{ݻ�L�T6�����!��P5��NdR�5�5�0�N��W���`������?+ٵ�      =      x������ � �      ?   :  x����n����W�?�������N|�a�q[|��W�J<��R�|G���Xg������v[�R�<|g杵����'Q�f��,]�nټ`��˦&�٠��+8?>}5z��\����#v�E��H�-yHzd�
Y�)�csV��eY�9+��m�	𓥬bu*+F�su�֨ߧ�i��}�uM��t
��e�G��B#�� 6]۰�A�S�wuwhD�i��JLy�u�nu<U�����J������(j�����2߭c�O������שH�V>[�=?�Ǵ]�j�%��Tsʹu헨�$�e�	��L9yh
�WpҮ�.��K^i-7 �+B�	S�N�Z���WeS �;�!7�X����˫2��S*�Z��J�|�#���25lǤ�bj�>�}�t`�(����M�z�Da؞1�U��L�>�ٮ�1��B��\�䎩�\���,�\ۅqA�c�����RL;|�{/-�V�iӝ� ��E��r��<���� E���~[J��+%K�� ��$�n)uZ�R��}��N�\�pD��$M�s¡����ޑ��P��5�Jx��g奙�-�ou$IҶ^j�]�9�Y:r˒��@><N@��.iMTU%^ ��Yt��2e���X�oԾ��S)0� �x���4f	�<�DC)Q�Ԅ�A~�a�;���/�a��0�eZ� ����;/���ߩ����U��q��S-��TS�A���s��[!+1e����b^�P�� !S�o�=�N��RG=��z���m6��9�yd	 �)��]�K���J@'��ऎ�	���rMĩ�f���|JC����gm��1�E:)��*Zm4u�曞��|�뜃�Pb�;Ȧ���5���#m&m��	{�(�ؚ�+c��Pg�Jj9\n��Z�ӑ%<���	���(�� �*jWLd����6�]��F��C��K�o0�vr�ر���Q3�%��c�W��e;�~��ZH9s�bq(���h�s,���k�璀*�H�+��i�B�l䣫����z�_��?���ow��en�K<cz���o��C@n��8 7���Ï �gpO�8u��ŷ��M�E�B���]UU߰�U�>��C��еŹ�Ck��M�#����b��?�Rc�����Zh��_�o���C�)fM��Ē���A�g\J�� ���xH�J漐����:�Y����3$SxMj��Gn�	�;S� �ϿGh�Т���S�I�В�0�*���]o�!��B]��&�U���I}r�j�8�6�ct^c���K��l*�b�$bWi2ْ�k�;�����#��3-�=k
ꍀ�^F)���5Ӡ�eE�36�����(���5�ϸ(W�(j৔J��*�n�*��)�[Q��k�j?Bl�C,������H8�������1��t���a\xZ�
(��d���)��c�`�B��<�d4�W_�kV�l�
�hY��8��;Gu#T�~,�,��#����H��<�.v��Ξ$Ju��m���yo�u���S�5j!�����}Ŷ�{a���^�?��laE��R�~-�%ƽ�-]�r6cOv�2�]�kݢ�r���+a�آi��Z�h���3�׮aA�A�咑`
�"��Of��WB��:m��ujl2bmoh۝1� U0���<�W����,�ٿ0������K��N���V�z\����]r]�:W�v=<�D����ܫ�P��]��� ���b����=�����l����+�'�jۖѩ�rN�S���j�t���C_����_is=X�mR]��n��cl���)��>?���-4%�BM�i�CI�0u�Y�o�^���_ ��ʊ%I
�=4��2p�=���b���c�������w�Ղr鞪�VS�U[McÊ#�����1���l�}��~�`!��lL�@12��}4���%��蒔c��:���Z��!�
f5�п��=7��ܢ���D]u����بp������
F��&�[%:����m:��(��d7�f7�B���F�Տm)ƀ6���U��\��O�2�[ݝΝj���q\��rY���J�*iG�=�ݩ)�
�f����B�E����O�j���~9�f�}�q�DJ���f�3��&O�<?y:����Vo�Y.�(`��̺{�|,�9� ��I����ܷ�쏁y��hC���^��e��v����#	u0D��~�&)8���hH�sj�Y�ACn��(�d͸��AЪ�Z~��گ�J���dE3�z���Ϫ����LN���B��ށ�OXn�x7�l�t�>�.�풬Y��7ět�|?�Z$$ע��]ַ-e�
ᡩ���b��\g�
���ۆg����ԳO��8���A�E��s'(:�����7;?�w�[���e��E�iݝ_P�=8ț{�LѤ��-��بL����b}eο��I�1C������I�W��g���%U�����IrEr�0�-98�t�D����Y���x'��
pǏ�Wv��R4�s����0(̄l�Kt���Y�O�<I{d�d���Gۥ5n&��hǓ� E���fS5�ͻ����Ju��l��z�k��wu�+^'|ƚL�-�W6��L�e�X.-M�t�����i���:tjHu�o�'�&~(E������;��.n0�o�ن�X�E�I8S�H�:�a���E�A�ӑ��kQ	���7t�*���L'��7��Yo���Z��w�hK�������Z�T���O��0D���4]�T�4v��c(N6�� Xȁn�4�7�DЏ��uh�o�3x����)�/�,�
ߟ������`l      E     x���Ys�8���_����b�K�@R�K��v'驮R�$L"��"G��瀔��$鱫,�����{t��X%5}�v"Y)��L+�d�w�p�*a�[]�25dE"���#�F�lT�����L𖄼�x��*�Ve�#K��YJTb�KV��9�N�*�����"S�v���'&��rְ6�F,M�S����+�1�,��5E��C�:��N�0����L�6,�wݐN]���4-MY���o7��S����|^g�~�I�֭H�]�1ۊJ�'�f�t�0��� VlI۱���V��1(�5��꒰4�)�oD~��Qm��e#6�Qɂ7=	X���=ےE�V�CnY&g���>�p<������g�Y�ħ����4�� �)>ci|��y��)>����#D������-o6�ު#��ĳH+H\�M��J!���X����n��]�}ҵ�)W)���^��~㩋���7Q%�}*1�H�����23�9�g8;���Nգض��0m�iꅆe��c����t��k��ɺ:�d8��6o�T�\�w�b�@�<���wD��M��޳Bt[B7LRV�%�K���!��3�k��D�v�`
-{���#��r���Fp����ŞY�eD���eC�������]��ɂܭq+!�+Q�T�KG:l��B�Պ�ǹJ"Q�u�����=f��:ހܵL�?��2�qÝ4-��Tw'>En-�~N"-*N�i�0Cg�5�����E[�UU�T���7�s��U��de�Ъ_a��?d��{��:�!\���
�6��%PX�E����;��Q1<�:CŴ� ���z����Q��65�c*����v��N�8_�p�)��<��LH԰˺N�L�.�]�J����b�՞�C
�uu!:��DTrw{��.�j{��h��ʙ�:�i�tLK���qtIǏ#�t%۳l����?Ռ������)�@��-V����P>�M4���V=UO�c��m9;����7�
�9��Q�I~;�R6�Ӑ�9oȔ,��3{XF薬�D#^���*ͥd��+$g��o����8��K�l3��ӧ~��𘜻4��E���@n��O��$�������'����|%쉣�#d���ت���&X#+X�$oss��a3��'>:�9��C���]����X�΢�����g{��Yc��]@e���Q`JDA9�B�f �B�;F�-c��m�8��5��:�kĦ躦<�|;X�\d9Ґ%I�D��(�"ڼ�m;���G%r{��=��M�y�-k�J2){����E�%Q]7�b,�U+���B�vB&t&"�a2	F2�Hl�@��}GHڮ��\�7�6+�4v�)u"�fL�I���Y�1I�)�.�J��itw?�dAgs����G�CyDy� ���z�ʢ�(��Z��U]r�6��l@8�x�D���lsp�����+��������u|/.�	n�Q,�����hӆ���7�B=��Qz��k���r[������
��ѻ��"5�����N��ђ�
��
�ْ^<#�zI.(z�2�m.�.�F�^w�=dZ@�UGfu�B@iB���Q�
���"e�z����b�1�n
��0t��u7X%r�ò7�����c���ơKc�ޕ=XA+�)}V_�$q٭^���%<k%�V�SgY����v:�zY����j=�������Bv��ˑ��� ���oT�D��5�W;vQ3����x��]���"�9r4�1�������:�2t�������gֆ�E�3LM��:�h�	+cIET֏���/tS�X[�u�X�E7��LP���]/���\P�?h�L���^�)~?�3!w/�X��R�E�LZ�t��ʊ��P���y
۷��Ƥ��巃�B�Hb4g�������9�FCy첂�5!s���^l�c5Y
�v�eCW8u���3V���K��|��\�Pˑ��ʍ���%9HH#�]R�ؗ�����.U���5�2��@��8�FT7���S�f���D�(��#M...�����      G   �   x�]��
�  �>����:��Ԉh�((v�Ȓm�0�!{�v��w��Uuې{u9Wr����m�(�n�s?;�Ծ���h�'��1�U�ƹ��l��,y����8p(+`G ��Zr*��6 u	��`�bP�9�ϙR��ؔ��e���J�;U~�'� j�4      I   U   x�3��K�HTp/��H�K��r���s3s���s9s�2��9��tu,���L̬�,�͵L���b���� ��q      K      x������ � �      M      x������ � �      A   �  x����r�8������n������ :c'�7J9���R�EX�E�,�h�~u��Y�ƾ�����nD�(�E�7�X�|���ҧq���T6k5���;U������Rn`Kn���{�~��V��>@'�%���� �fд9��4�"�&�?��'Pz-�ڼk�ڌ1�&<��V@<q���6a�G��;|`��Ǟ#�$�G�,d��|�K1�,�����k���︨��g�L��\XG�;�S�w9�`�*oq�F�� >����s��%#�{Xoi\U���
�T6��w�}ϵ��3D[��T"�sE��=O��X���hz��&SXU-�����j��kh�Dẏ�(�A�T���f�ex�˲k$����7�2zE�2o�Bя�\�y��V;��<�_B����!�"�s�	CyN���jBi*�-7u?"�f�(��N.� k�5�(�2�*�Dj-���Ct	4��	�4�jz_]�4�ߴ���BI��n��ht���
�Jj��PSo,��g�",�=�"I0p;v������x^9"=BQ�z���=�K���=���~���3t����.
h[Z=�y#Ť/�5	3�)�bjiZU�/k��'Ufms��R�;C���s��p]*I�#� rY�$�N�7��R�N�`���織��Pf����Y^��+�h��5�{�9ǈ��y^C��S6�)��q� �b��'ǎ ";ux�Y|����3���ނ�b=�5��K !Ɖ��o�g�Cޡ�M�s��L��H�{�\�S�� �GpS/�/<��'�I��� U����|T���m	��溑Ϙ��:]�]�ٟw=���K]>z��)颢�UC��z��,��}ڗ��
(�B-wP���<�ac+�U~Q���F�6�$B�8���ٰ�#D����~߈�n(ŀc���BU�+��^m���/��j�^�]���
��l+T����g-�n`ul ߫��V_�lҫ"� �ǁ�-l4�������_�� s���l�A���-_�-�&���>_���{���n�� ]��s�%]~5�*�+��h-�;�Y�T[d��}�5U��B�t�d��USʆ���_�����!O.-�A�{�Ec�M".�h$❯�XD8��0%$�%�n#���$��1�n~8�d�~�'p �d�]��y��È6-C#�E�A��9 Dh�����E�OCmp�꠫$��;�	N��thl������8Wh�zT���{_�������5*�8u��dG,��4@h���Ā�-���'5g8��9|�d�.���V�<�+�L��\�
Ϻ��M����4�,�׌=��m�����~�rn�7��A�'f�G�S���7\�����P͗�{�-}�n�������8�S��rޡO�ժ�0�C�k(�8��	���{W�`�f�H�p�4IǃK���r�	�Q�z�z�8��9D*�8�g�Z8D;E_��4s�h� �.��l&�������zbߘS���N��E�葩5z�;1Flf̸�����)��<;�7?��$d��,����~��H�l��֮0v���A-��/�!�����GW����͈���<Vt�:��'<��)=�c+�&1�Ex"i����d��g���y���8&?p�+Y�<ΫyU�q�o��r![r�ǋ�1��Ch�֜�d���_莰�,�pd#ל�\������=vLtƽ4�#���Yŉ�S����e��^��g2����tcn�� N`��9����`�j�c�+l�d�żsc�<b�q2�>��<�F'f�?��O��q��1W��M5nw5��$^fРb�WԺ^q̮k=;�_�&pIA-���,�O2�`4��Ǉ�NQ=+����_TD0��z�����sh8O�tiE��`n3̾k��>���Ѝau|����$m0�Jj ��[�������]�s�70<�0��'�����ϣ�D6ݕ`ܽb�W��-�m��.cN�������ɤ      E      x������ � �     