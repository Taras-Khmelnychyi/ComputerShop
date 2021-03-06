PGDMP                         x           computer_shop    12.2    12.2 �    L           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            M           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            N           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            O           1262    24765    computer_shop    DATABASE     �   CREATE DATABASE computer_shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1251' LC_CTYPE = 'English_United States.1251';
    DROP DATABASE computer_shop;
                postgres    false            �            1259    24797 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    24795    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            P           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    24807    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    24805    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            Q           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    24789    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    24787    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            R           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    24815 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    24825    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    24823    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    215            S           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    214            �            1259    24813    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    213            T           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    212            �            1259    24833    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    24831 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    217            U           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    216            �            1259    24926    computers_case    TABLE       CREATE TABLE public.computers_case (
    id integer NOT NULL,
    name character varying(150),
    type character varying(150),
    color character varying(150),
    power_supply character varying(150),
    side_panel_window character varying(150),
    external_5_25_bays integer,
    external_3_5_bays integer,
    price double precision,
    CONSTRAINT computers_case_external_3_5_bays_0ed41b60_check CHECK ((external_3_5_bays >= 0)),
    CONSTRAINT computers_case_external_5_25_bays_f4872550_check CHECK ((external_5_25_bays >= 0))
);
 "   DROP TABLE public.computers_case;
       public         heap    postgres    false            �            1259    24924    computers_case_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_case_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.computers_case_id_seq;
       public          postgres    false    221            V           0    0    computers_case_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.computers_case_id_seq OWNED BY public.computers_case.id;
          public          postgres    false    220            �            1259    25008    computers_computer    TABLE     C  CREATE TABLE public.computers_computer (
    id integer NOT NULL,
    name character varying(150),
    case_id integer,
    cpu_id integer,
    cpu_cooler_id integer,
    motherboard_id integer,
    psu_id integer,
    video_card_id integer,
    description text,
    price double precision,
    profit double precision
);
 &   DROP TABLE public.computers_computer;
       public         heap    postgres    false            �            1259    25006    computers_computer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_computer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.computers_computer_id_seq;
       public          postgres    false    237            W           0    0    computers_computer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.computers_computer_id_seq OWNED BY public.computers_computer.id;
          public          postgres    false    236            �            1259    25081    computers_computer_memory    TABLE     �   CREATE TABLE public.computers_computer_memory (
    id integer NOT NULL,
    computer_id integer NOT NULL,
    memory_id integer NOT NULL
);
 -   DROP TABLE public.computers_computer_memory;
       public         heap    postgres    false            �            1259    25079     computers_computer_memory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_computer_memory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.computers_computer_memory_id_seq;
       public          postgres    false    239            X           0    0     computers_computer_memory_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.computers_computer_memory_id_seq OWNED BY public.computers_computer_memory.id;
          public          postgres    false    238            �            1259    25089    computers_computer_storage    TABLE     �   CREATE TABLE public.computers_computer_storage (
    id integer NOT NULL,
    computer_id integer NOT NULL,
    storage_id integer NOT NULL
);
 .   DROP TABLE public.computers_computer_storage;
       public         heap    postgres    false            �            1259    25087 !   computers_computer_storage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_computer_storage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.computers_computer_storage_id_seq;
       public          postgres    false    241            Y           0    0 !   computers_computer_storage_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.computers_computer_storage_id_seq OWNED BY public.computers_computer_storage.id;
          public          postgres    false    240            �            1259    24937    computers_cpu    TABLE     o  CREATE TABLE public.computers_cpu (
    id integer NOT NULL,
    name character varying(150),
    model character varying(150),
    series character varying(150),
    socket character varying(150),
    core_count integer,
    core_clock double precision,
    price double precision,
    CONSTRAINT computers_cpu_core_count_2188af06_check CHECK ((core_count >= 0))
);
 !   DROP TABLE public.computers_cpu;
       public         heap    postgres    false            �            1259    24935    computers_cpu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_cpu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.computers_cpu_id_seq;
       public          postgres    false    223            Z           0    0    computers_cpu_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.computers_cpu_id_seq OWNED BY public.computers_cpu.id;
          public          postgres    false    222            �            1259    24948    computers_cpucooler    TABLE       CREATE TABLE public.computers_cpucooler (
    id integer NOT NULL,
    name character varying(150),
    fan_rpm character varying(150),
    noise_level character varying(150),
    color character varying(150),
    radiator_size character varying(150),
    price double precision
);
 '   DROP TABLE public.computers_cpucooler;
       public         heap    postgres    false            �            1259    24946    computers_cpucooler_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_cpucooler_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.computers_cpucooler_id_seq;
       public          postgres    false    225            [           0    0    computers_cpucooler_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.computers_cpucooler_id_seq OWNED BY public.computers_cpucooler.id;
          public          postgres    false    224            �            1259    25145    computers_customer    TABLE        CREATE TABLE public.computers_customer (
    id integer NOT NULL,
    full_name character varying(150),
    user_id integer
);
 &   DROP TABLE public.computers_customer;
       public         heap    postgres    false            �            1259    25143    computers_customer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.computers_customer_id_seq;
       public          postgres    false    243            \           0    0    computers_customer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.computers_customer_id_seq OWNED BY public.computers_customer.id;
          public          postgres    false    242            �            1259    24959    computers_memory    TABLE     !  CREATE TABLE public.computers_memory (
    id integer NOT NULL,
    name character varying(150),
    speed character varying(150),
    type character varying(150),
    modules_count integer,
    modules_memory integer,
    cas_latency integer,
    price double precision,
    CONSTRAINT computers_memory_cas_latency_6ed62db0_check CHECK ((cas_latency >= 0)),
    CONSTRAINT computers_memory_modules_count_3b4960c7_check CHECK ((modules_count >= 0)),
    CONSTRAINT computers_memory_modules_memory_dcde4434_check CHECK ((modules_memory >= 0))
);
 $   DROP TABLE public.computers_memory;
       public         heap    postgres    false            �            1259    24957    computers_memory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_memory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.computers_memory_id_seq;
       public          postgres    false    227            ]           0    0    computers_memory_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.computers_memory_id_seq OWNED BY public.computers_memory.id;
          public          postgres    false    226            �            1259    24967    computers_motherboard    TABLE     �  CREATE TABLE public.computers_motherboard (
    id integer NOT NULL,
    name character varying(150),
    socket character varying(150),
    form_factor character varying(150),
    memory_max integer,
    memory_slots integer,
    price double precision,
    CONSTRAINT computers_motherboard_memory_max_af3cc572_check CHECK ((memory_max >= 0)),
    CONSTRAINT computers_motherboard_memory_slots_c78a6c72_check CHECK ((memory_slots >= 0))
);
 )   DROP TABLE public.computers_motherboard;
       public         heap    postgres    false            �            1259    24965    computers_motherboard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_motherboard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.computers_motherboard_id_seq;
       public          postgres    false    229            ^           0    0    computers_motherboard_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.computers_motherboard_id_seq OWNED BY public.computers_motherboard.id;
          public          postgres    false    228            �            1259    25155    computers_order    TABLE     �  CREATE TABLE public.computers_order (
    id integer NOT NULL,
    computer_id integer,
    customer_id integer,
    address character varying(150),
    city character varying(150),
    country character varying(150),
    phone_number character varying(20),
    state character varying(150),
    zip_code character varying(5),
    status character varying(10),
    date_created timestamp with time zone
);
 #   DROP TABLE public.computers_order;
       public         heap    postgres    false            �            1259    25153    computers_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.computers_order_id_seq;
       public          postgres    false    245            _           0    0    computers_order_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.computers_order_id_seq OWNED BY public.computers_order.id;
          public          postgres    false    244            �            1259    24975    computers_powersupply    TABLE     g  CREATE TABLE public.computers_powersupply (
    id integer NOT NULL,
    name character varying(150),
    form_factor character varying(150),
    efficiency_rating character varying(150),
    wattage integer,
    modular character varying(150),
    price double precision,
    CONSTRAINT computers_powersupply_wattage_ab1b4c0c_check CHECK ((wattage >= 0))
);
 )   DROP TABLE public.computers_powersupply;
       public         heap    postgres    false            �            1259    24973    computers_powersupply_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_powersupply_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.computers_powersupply_id_seq;
       public          postgres    false    231            `           0    0    computers_powersupply_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.computers_powersupply_id_seq OWNED BY public.computers_powersupply.id;
          public          postgres    false    230            �            1259    24986    computers_storage    TABLE     6  CREATE TABLE public.computers_storage (
    id integer NOT NULL,
    name character varying(150),
    capacity character varying(150),
    type character varying(150),
    cache character varying(150),
    form_factor character varying(150),
    interface character varying(150),
    price double precision
);
 %   DROP TABLE public.computers_storage;
       public         heap    postgres    false            �            1259    24984    computers_storage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_storage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.computers_storage_id_seq;
       public          postgres    false    233            a           0    0    computers_storage_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.computers_storage_id_seq OWNED BY public.computers_storage.id;
          public          postgres    false    232            �            1259    24997    computers_videocard    TABLE       CREATE TABLE public.computers_videocard (
    id integer NOT NULL,
    name character varying(150),
    chipset character varying(150),
    memory character varying(150),
    core_clock double precision,
    interface character varying(150),
    price double precision
);
 '   DROP TABLE public.computers_videocard;
       public         heap    postgres    false            �            1259    24995    computers_videocard_id_seq    SEQUENCE     �   CREATE SEQUENCE public.computers_videocard_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.computers_videocard_id_seq;
       public          postgres    false    235            b           0    0    computers_videocard_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.computers_videocard_id_seq OWNED BY public.computers_videocard.id;
          public          postgres    false    234            �            1259    24893    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    24891    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    219            c           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    218            �            1259    24779    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    24777    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            d           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    24768    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    24766    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            e           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    25184    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false                       2604    24800    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    24810    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    24792    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                       2604    24818    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213                       2604    24828    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    24836    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    24929    computers_case id    DEFAULT     v   ALTER TABLE ONLY public.computers_case ALTER COLUMN id SET DEFAULT nextval('public.computers_case_id_seq'::regclass);
 @   ALTER TABLE public.computers_case ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            )           2604    25011    computers_computer id    DEFAULT     ~   ALTER TABLE ONLY public.computers_computer ALTER COLUMN id SET DEFAULT nextval('public.computers_computer_id_seq'::regclass);
 D   ALTER TABLE public.computers_computer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            *           2604    25084    computers_computer_memory id    DEFAULT     �   ALTER TABLE ONLY public.computers_computer_memory ALTER COLUMN id SET DEFAULT nextval('public.computers_computer_memory_id_seq'::regclass);
 K   ALTER TABLE public.computers_computer_memory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239            +           2604    25092    computers_computer_storage id    DEFAULT     �   ALTER TABLE ONLY public.computers_computer_storage ALTER COLUMN id SET DEFAULT nextval('public.computers_computer_storage_id_seq'::regclass);
 L   ALTER TABLE public.computers_computer_storage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241                       2604    24940    computers_cpu id    DEFAULT     t   ALTER TABLE ONLY public.computers_cpu ALTER COLUMN id SET DEFAULT nextval('public.computers_cpu_id_seq'::regclass);
 ?   ALTER TABLE public.computers_cpu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    24951    computers_cpucooler id    DEFAULT     �   ALTER TABLE ONLY public.computers_cpucooler ALTER COLUMN id SET DEFAULT nextval('public.computers_cpucooler_id_seq'::regclass);
 E   ALTER TABLE public.computers_cpucooler ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            ,           2604    25148    computers_customer id    DEFAULT     ~   ALTER TABLE ONLY public.computers_customer ALTER COLUMN id SET DEFAULT nextval('public.computers_customer_id_seq'::regclass);
 D   ALTER TABLE public.computers_customer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    243    243                       2604    24962    computers_memory id    DEFAULT     z   ALTER TABLE ONLY public.computers_memory ALTER COLUMN id SET DEFAULT nextval('public.computers_memory_id_seq'::regclass);
 B   ALTER TABLE public.computers_memory ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            "           2604    24970    computers_motherboard id    DEFAULT     �   ALTER TABLE ONLY public.computers_motherboard ALTER COLUMN id SET DEFAULT nextval('public.computers_motherboard_id_seq'::regclass);
 G   ALTER TABLE public.computers_motherboard ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228    229            -           2604    25158    computers_order id    DEFAULT     x   ALTER TABLE ONLY public.computers_order ALTER COLUMN id SET DEFAULT nextval('public.computers_order_id_seq'::regclass);
 A   ALTER TABLE public.computers_order ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    245    244    245            %           2604    24978    computers_powersupply id    DEFAULT     �   ALTER TABLE ONLY public.computers_powersupply ALTER COLUMN id SET DEFAULT nextval('public.computers_powersupply_id_seq'::regclass);
 G   ALTER TABLE public.computers_powersupply ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230    231            '           2604    24989    computers_storage id    DEFAULT     |   ALTER TABLE ONLY public.computers_storage ALTER COLUMN id SET DEFAULT nextval('public.computers_storage_id_seq'::regclass);
 C   ALTER TABLE public.computers_storage ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    233    233            (           2604    25000    computers_videocard id    DEFAULT     �   ALTER TABLE ONLY public.computers_videocard ALTER COLUMN id SET DEFAULT nextval('public.computers_videocard_id_seq'::regclass);
 E   ALTER TABLE public.computers_videocard ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    24896    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219                       2604    24782    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    24771    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            $          0    24797 
   auth_group 
   TABLE DATA                 public          postgres    false    209   �#      &          0    24807    auth_group_permissions 
   TABLE DATA                 public          postgres    false    211   �#      "          0    24789    auth_permission 
   TABLE DATA                 public          postgres    false    207   $      (          0    24815 	   auth_user 
   TABLE DATA                 public          postgres    false    213   \'      *          0    24825    auth_user_groups 
   TABLE DATA                 public          postgres    false    215   E)      ,          0    24833    auth_user_user_permissions 
   TABLE DATA                 public          postgres    false    217   �)      0          0    24926    computers_case 
   TABLE DATA                 public          postgres    false    221   �)      @          0    25008    computers_computer 
   TABLE DATA                 public          postgres    false    237   +      B          0    25081    computers_computer_memory 
   TABLE DATA                 public          postgres    false    239   z/      D          0    25089    computers_computer_storage 
   TABLE DATA                 public          postgres    false    241   �0      2          0    24937    computers_cpu 
   TABLE DATA                 public          postgres    false    223   �1      4          0    24948    computers_cpucooler 
   TABLE DATA                 public          postgres    false    225   �2      F          0    25145    computers_customer 
   TABLE DATA                 public          postgres    false    243   J4      6          0    24959    computers_memory 
   TABLE DATA                 public          postgres    false    227   �4      8          0    24967    computers_motherboard 
   TABLE DATA                 public          postgres    false    229    6      H          0    25155    computers_order 
   TABLE DATA                 public          postgres    false    245   /7      :          0    24975    computers_powersupply 
   TABLE DATA                 public          postgres    false    231   g9      <          0    24986    computers_storage 
   TABLE DATA                 public          postgres    false    233   �:      >          0    24997    computers_videocard 
   TABLE DATA                 public          postgres    false    235   �;      .          0    24893    django_admin_log 
   TABLE DATA                 public          postgres    false    219   9=                 0    24779    django_content_type 
   TABLE DATA                 public          postgres    false    205   O?                0    24768    django_migrations 
   TABLE DATA                 public          postgres    false    203   s@      I          0    25184    django_session 
   TABLE DATA                 public          postgres    false    246   ]D      f           0    0    auth_group_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);
          public          postgres    false    208            g           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            h           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);
          public          postgres    false    206            i           0    0    auth_user_groups_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);
          public          postgres    false    214            j           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 3, true);
          public          postgres    false    212            k           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    216            l           0    0    computers_case_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.computers_case_id_seq', 5, true);
          public          postgres    false    220            m           0    0    computers_computer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.computers_computer_id_seq', 29, true);
          public          postgres    false    236            n           0    0     computers_computer_memory_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.computers_computer_memory_id_seq', 49, true);
          public          postgres    false    238            o           0    0 !   computers_computer_storage_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.computers_computer_storage_id_seq', 56, true);
          public          postgres    false    240            p           0    0    computers_cpu_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.computers_cpu_id_seq', 6, true);
          public          postgres    false    222            q           0    0    computers_cpucooler_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.computers_cpucooler_id_seq', 5, true);
          public          postgres    false    224            r           0    0    computers_customer_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.computers_customer_id_seq', 3, true);
          public          postgres    false    242            s           0    0    computers_memory_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.computers_memory_id_seq', 5, true);
          public          postgres    false    226            t           0    0    computers_motherboard_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.computers_motherboard_id_seq', 5, true);
          public          postgres    false    228            u           0    0    computers_order_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.computers_order_id_seq', 15, true);
          public          postgres    false    244            v           0    0    computers_powersupply_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.computers_powersupply_id_seq', 5, true);
          public          postgres    false    230            w           0    0    computers_storage_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.computers_storage_id_seq', 5, true);
          public          postgres    false    232            x           0    0    computers_videocard_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.computers_videocard_id_seq', 5, true);
          public          postgres    false    234            y           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 14, true);
          public          postgres    false    218            z           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);
          public          postgres    false    204            {           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);
          public          postgres    false    202            ;           2606    24922    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            @           2606    24849 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            C           2606    24812 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            =           2606    24802    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209            6           2606    24840 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207            8           2606    24794 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            K           2606    24830 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    215            N           2606    24864 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    215    215            E           2606    24820    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    213            Q           2606    24838 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    217            T           2606    24878 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    217    217            H           2606    24916     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    213            Z           2606    24934 "   computers_case computers_case_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.computers_case
    ADD CONSTRAINT computers_case_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.computers_case DROP CONSTRAINT computers_case_pkey;
       public            postgres    false    221            s           2606    25096 W   computers_computer_memory computers_computer_memory_computer_id_memory_id_cb503b7c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer_memory
    ADD CONSTRAINT computers_computer_memory_computer_id_memory_id_cb503b7c_uniq UNIQUE (computer_id, memory_id);
 �   ALTER TABLE ONLY public.computers_computer_memory DROP CONSTRAINT computers_computer_memory_computer_id_memory_id_cb503b7c_uniq;
       public            postgres    false    239    239            v           2606    25086 8   computers_computer_memory computers_computer_memory_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.computers_computer_memory
    ADD CONSTRAINT computers_computer_memory_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.computers_computer_memory DROP CONSTRAINT computers_computer_memory_pkey;
       public            postgres    false    239            n           2606    25013 *   computers_computer computers_computer_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.computers_computer
    ADD CONSTRAINT computers_computer_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.computers_computer DROP CONSTRAINT computers_computer_pkey;
       public            postgres    false    237            y           2606    25110 Z   computers_computer_storage computers_computer_storage_computer_id_storage_id_7eb1c294_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer_storage
    ADD CONSTRAINT computers_computer_storage_computer_id_storage_id_7eb1c294_uniq UNIQUE (computer_id, storage_id);
 �   ALTER TABLE ONLY public.computers_computer_storage DROP CONSTRAINT computers_computer_storage_computer_id_storage_id_7eb1c294_uniq;
       public            postgres    false    241    241            {           2606    25094 :   computers_computer_storage computers_computer_storage_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.computers_computer_storage
    ADD CONSTRAINT computers_computer_storage_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.computers_computer_storage DROP CONSTRAINT computers_computer_storage_pkey;
       public            postgres    false    241            \           2606    24945     computers_cpu computers_cpu_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.computers_cpu
    ADD CONSTRAINT computers_cpu_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.computers_cpu DROP CONSTRAINT computers_cpu_pkey;
       public            postgres    false    223            ^           2606    24956 ,   computers_cpucooler computers_cpucooler_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.computers_cpucooler
    ADD CONSTRAINT computers_cpucooler_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.computers_cpucooler DROP CONSTRAINT computers_cpucooler_pkey;
       public            postgres    false    225            ~           2606    25150 *   computers_customer computers_customer_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.computers_customer
    ADD CONSTRAINT computers_customer_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.computers_customer DROP CONSTRAINT computers_customer_pkey;
       public            postgres    false    243            �           2606    25152 1   computers_customer computers_customer_user_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.computers_customer
    ADD CONSTRAINT computers_customer_user_id_key UNIQUE (user_id);
 [   ALTER TABLE ONLY public.computers_customer DROP CONSTRAINT computers_customer_user_id_key;
       public            postgres    false    243            `           2606    24964 &   computers_memory computers_memory_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.computers_memory
    ADD CONSTRAINT computers_memory_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.computers_memory DROP CONSTRAINT computers_memory_pkey;
       public            postgres    false    227            b           2606    24972 0   computers_motherboard computers_motherboard_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.computers_motherboard
    ADD CONSTRAINT computers_motherboard_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.computers_motherboard DROP CONSTRAINT computers_motherboard_pkey;
       public            postgres    false    229            �           2606    25160 $   computers_order computers_order_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.computers_order
    ADD CONSTRAINT computers_order_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.computers_order DROP CONSTRAINT computers_order_pkey;
       public            postgres    false    245            d           2606    24983 0   computers_powersupply computers_powersupply_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.computers_powersupply
    ADD CONSTRAINT computers_powersupply_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.computers_powersupply DROP CONSTRAINT computers_powersupply_pkey;
       public            postgres    false    231            f           2606    24994 (   computers_storage computers_storage_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.computers_storage
    ADD CONSTRAINT computers_storage_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.computers_storage DROP CONSTRAINT computers_storage_pkey;
       public            postgres    false    233            h           2606    25005 ,   computers_videocard computers_videocard_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.computers_videocard
    ADD CONSTRAINT computers_videocard_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.computers_videocard DROP CONSTRAINT computers_videocard_pkey;
       public            postgres    false    235            W           2606    24902 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    219            1           2606    24786 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205            3           2606    24784 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205            /           2606    24776 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            �           2606    25191 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    246            9           1259    24923    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            >           1259    24860 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            A           1259    24861 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211            4           1259    24846 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            I           1259    24876 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    215            L           1259    24875 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    215            O           1259    24890 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    217            R           1259    24889 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    217            F           1259    24917     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    213            i           1259    25054 #   computers_computer_case_id_4dfa5a53    INDEX     e   CREATE INDEX computers_computer_case_id_4dfa5a53 ON public.computers_computer USING btree (case_id);
 7   DROP INDEX public.computers_computer_case_id_4dfa5a53;
       public            postgres    false    237            j           1259    25056 )   computers_computer_cpu_cooler_id_3f6873b4    INDEX     q   CREATE INDEX computers_computer_cpu_cooler_id_3f6873b4 ON public.computers_computer USING btree (cpu_cooler_id);
 =   DROP INDEX public.computers_computer_cpu_cooler_id_3f6873b4;
       public            postgres    false    237            k           1259    25055 "   computers_computer_cpu_id_492967ca    INDEX     c   CREATE INDEX computers_computer_cpu_id_492967ca ON public.computers_computer USING btree (cpu_id);
 6   DROP INDEX public.computers_computer_cpu_id_492967ca;
       public            postgres    false    237            q           1259    25107 .   computers_computer_memory_computer_id_e8f9f2b6    INDEX     {   CREATE INDEX computers_computer_memory_computer_id_e8f9f2b6 ON public.computers_computer_memory USING btree (computer_id);
 B   DROP INDEX public.computers_computer_memory_computer_id_e8f9f2b6;
       public            postgres    false    239            t           1259    25108 ,   computers_computer_memory_memory_id_5ff08126    INDEX     w   CREATE INDEX computers_computer_memory_memory_id_5ff08126 ON public.computers_computer_memory USING btree (memory_id);
 @   DROP INDEX public.computers_computer_memory_memory_id_5ff08126;
       public            postgres    false    239            l           1259    25058 *   computers_computer_motherboard_id_b249a440    INDEX     s   CREATE INDEX computers_computer_motherboard_id_b249a440 ON public.computers_computer USING btree (motherboard_id);
 >   DROP INDEX public.computers_computer_motherboard_id_b249a440;
       public            postgres    false    237            o           1259    25059 "   computers_computer_psu_id_3649c3f5    INDEX     c   CREATE INDEX computers_computer_psu_id_3649c3f5 ON public.computers_computer USING btree (psu_id);
 6   DROP INDEX public.computers_computer_psu_id_3649c3f5;
       public            postgres    false    237            w           1259    25121 /   computers_computer_storage_computer_id_677e4978    INDEX     }   CREATE INDEX computers_computer_storage_computer_id_677e4978 ON public.computers_computer_storage USING btree (computer_id);
 C   DROP INDEX public.computers_computer_storage_computer_id_677e4978;
       public            postgres    false    241            |           1259    25122 .   computers_computer_storage_storage_id_99cf2ca0    INDEX     {   CREATE INDEX computers_computer_storage_storage_id_99cf2ca0 ON public.computers_computer_storage USING btree (storage_id);
 B   DROP INDEX public.computers_computer_storage_storage_id_99cf2ca0;
       public            postgres    false    241            p           1259    25061 )   computers_computer_video_card_id_18fda48e    INDEX     q   CREATE INDEX computers_computer_video_card_id_18fda48e ON public.computers_computer USING btree (video_card_id);
 =   DROP INDEX public.computers_computer_video_card_id_18fda48e;
       public            postgres    false    237            �           1259    25176 $   computers_order_computer_id_637e476a    INDEX     g   CREATE INDEX computers_order_computer_id_637e476a ON public.computers_order USING btree (computer_id);
 8   DROP INDEX public.computers_order_computer_id_637e476a;
       public            postgres    false    245            �           1259    25183 $   computers_order_customer_id_0e1c4ee3    INDEX     g   CREATE INDEX computers_order_customer_id_0e1c4ee3 ON public.computers_order USING btree (customer_id);
 8   DROP INDEX public.computers_order_customer_id_0e1c4ee3;
       public            postgres    false    245            U           1259    24913 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    219            X           1259    24914 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    219            �           1259    25193 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    246            �           1259    25192 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    246            �           2606    24855 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2872    207    211            �           2606    24850 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    211    2877    209            �           2606    24841 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    207    2867    205            �           2606    24870 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    2877    209    215            �           2606    24865 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    2885    215    213            �           2606    24884 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2872    217    207            �           2606    24879 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2885    217    213            �           2606    25014 K   computers_computer computers_computer_case_id_4dfa5a53_fk_computers_case_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer
    ADD CONSTRAINT computers_computer_case_id_4dfa5a53_fk_computers_case_id FOREIGN KEY (case_id) REFERENCES public.computers_case(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.computers_computer DROP CONSTRAINT computers_computer_case_id_4dfa5a53_fk_computers_case_id;
       public          postgres    false    2906    237    221            �           2606    25024 I   computers_computer computers_computer_cpu_cooler_id_3f6873b4_fk_computers    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer
    ADD CONSTRAINT computers_computer_cpu_cooler_id_3f6873b4_fk_computers FOREIGN KEY (cpu_cooler_id) REFERENCES public.computers_cpucooler(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.computers_computer DROP CONSTRAINT computers_computer_cpu_cooler_id_3f6873b4_fk_computers;
       public          postgres    false    2910    225    237            �           2606    25019 I   computers_computer computers_computer_cpu_id_492967ca_fk_computers_cpu_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer
    ADD CONSTRAINT computers_computer_cpu_id_492967ca_fk_computers_cpu_id FOREIGN KEY (cpu_id) REFERENCES public.computers_cpu(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.computers_computer DROP CONSTRAINT computers_computer_cpu_id_492967ca_fk_computers_cpu_id;
       public          postgres    false    2908    237    223            �           2606    25128 P   computers_computer_memory computers_computer_m_computer_id_e8f9f2b6_fk_computers    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer_memory
    ADD CONSTRAINT computers_computer_m_computer_id_e8f9f2b6_fk_computers FOREIGN KEY (computer_id) REFERENCES public.computers_computer(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.computers_computer_memory DROP CONSTRAINT computers_computer_m_computer_id_e8f9f2b6_fk_computers;
       public          postgres    false    237    239    2926            �           2606    25123 N   computers_computer_memory computers_computer_m_memory_id_5ff08126_fk_computers    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer_memory
    ADD CONSTRAINT computers_computer_m_memory_id_5ff08126_fk_computers FOREIGN KEY (memory_id) REFERENCES public.computers_memory(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.computers_computer_memory DROP CONSTRAINT computers_computer_m_memory_id_5ff08126_fk_computers;
       public          postgres    false    2912    227    239            �           2606    25034 J   computers_computer computers_computer_motherboard_id_b249a440_fk_computers    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer
    ADD CONSTRAINT computers_computer_motherboard_id_b249a440_fk_computers FOREIGN KEY (motherboard_id) REFERENCES public.computers_motherboard(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.computers_computer DROP CONSTRAINT computers_computer_motherboard_id_b249a440_fk_computers;
       public          postgres    false    237    2914    229            �           2606    25039 Q   computers_computer computers_computer_psu_id_3649c3f5_fk_computers_powersupply_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer
    ADD CONSTRAINT computers_computer_psu_id_3649c3f5_fk_computers_powersupply_id FOREIGN KEY (psu_id) REFERENCES public.computers_powersupply(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.computers_computer DROP CONSTRAINT computers_computer_psu_id_3649c3f5_fk_computers_powersupply_id;
       public          postgres    false    2916    231    237            �           2606    25138 Q   computers_computer_storage computers_computer_s_computer_id_677e4978_fk_computers    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer_storage
    ADD CONSTRAINT computers_computer_s_computer_id_677e4978_fk_computers FOREIGN KEY (computer_id) REFERENCES public.computers_computer(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.computers_computer_storage DROP CONSTRAINT computers_computer_s_computer_id_677e4978_fk_computers;
       public          postgres    false    2926    241    237            �           2606    25133 P   computers_computer_storage computers_computer_s_storage_id_99cf2ca0_fk_computers    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer_storage
    ADD CONSTRAINT computers_computer_s_storage_id_99cf2ca0_fk_computers FOREIGN KEY (storage_id) REFERENCES public.computers_storage(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.computers_computer_storage DROP CONSTRAINT computers_computer_s_storage_id_99cf2ca0_fk_computers;
       public          postgres    false    233    2918    241            �           2606    25049 I   computers_computer computers_computer_video_card_id_18fda48e_fk_computers    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_computer
    ADD CONSTRAINT computers_computer_video_card_id_18fda48e_fk_computers FOREIGN KEY (video_card_id) REFERENCES public.computers_videocard(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.computers_computer DROP CONSTRAINT computers_computer_video_card_id_18fda48e_fk_computers;
       public          postgres    false    2920    235    237            �           2606    25161 F   computers_customer computers_customer_user_id_e95fb9e9_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_customer
    ADD CONSTRAINT computers_customer_user_id_e95fb9e9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.computers_customer DROP CONSTRAINT computers_customer_user_id_e95fb9e9_fk_auth_user_id;
       public          postgres    false    2885    243    213            �           2606    25166 M   computers_order computers_order_computer_id_637e476a_fk_computers_computer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_order
    ADD CONSTRAINT computers_order_computer_id_637e476a_fk_computers_computer_id FOREIGN KEY (computer_id) REFERENCES public.computers_computer(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.computers_order DROP CONSTRAINT computers_order_computer_id_637e476a_fk_computers_computer_id;
       public          postgres    false    245    237    2926            �           2606    25178 M   computers_order computers_order_customer_id_0e1c4ee3_fk_computers_customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.computers_order
    ADD CONSTRAINT computers_order_customer_id_0e1c4ee3_fk_computers_customer_id FOREIGN KEY (customer_id) REFERENCES public.computers_customer(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.computers_order DROP CONSTRAINT computers_order_customer_id_0e1c4ee3_fk_computers_customer_id;
       public          postgres    false    243    2942    245            �           2606    24903 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    219    205    2867            �           2606    24908 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    219    213    2885            $   X   x���v
Q���W((M��L�K,-ɈO/�/-P��L�Q�K�M�Ts�	uV�0�QPOL���S״��$U�PwriqI~nj� .. B�'=      &   
   x���          "   >  x���MO�@���{��"��TU�**�kd�U�g-����wg�Yy�"�Gz�z�����ǧ�ߦ�^O��[ֵo����i��l���ܜ���M�έ=������a���?�1�~����l�ss�3;��(��L����jn�y?���0��>{�j����[v>؄�X�)�d�T!��
kRx?ڏD`b���/��KZ6D�r	��ŝ܃Ăl�㫐8�] ܳm8Ԯ�z��!|FP�r	8���2{�؁�%���}�@��%�5��k
��@�2gƥ�q�L��)dz�3f`1{�����=}CI��O!;��7���O���M��|&<�Z�-x�kl�?��ňZ�>I�}�
��'h���I�O
�/Ϛa����`����Ǹ� C�n���/����ß8�[\^u=t�?AޣT��1^X���E�Es�!Zt%����N�O܏��_'1K�1m��&�\Z��#-�j�C��ox�-]8��*�BV�N�i	�|��$���ע�I���ͭt훭_]V?����*܄F\���r&q�&��Mx��@[�{����i��:�����9�!��7��zh}ٛP��=��<�M��Z��æuuvj�"���rlV5Q���@�Ee_���8*~x�C�y�|?���%��~��PU!S���ꐩ�XC��T��XA�	˪k}�]�GB�A�ɅP
\΃H��6(.�A��V]���|�*��/�������[ uPMR;�-�:���@��=���xWF����t��b�E-l��<��iJA.      (   �  x�͒Yo�0���~@�4�e4R��0����Lp�d�a���@�2�汖l_�{dr�=x�A�=�x�����}�Y�%���* �R"�)��d�GkV �����}��!X�\d��������׮���EQ'�iv��	[l#��#�Z��x�P�������X���Q�������.��5���w*�#��a��PM�7����c��a�f?KY"�>A�	c��E��u���eH2�K}�ݨ��6!�>��?Bq��ә�=��E@�"�R���aj(�}�Qh~S��+�܎���ۘ�_��v(��V�3��Č;��(��u�w�g����.�צ���v�j!U�T�)Tx����@�S�E4�芦�:���W����L��^�mO�H���,���Gm�u;��/�(�<�Ķ��\,[���cZ�P6H�z��-���[ȗB����������M�T�!
ĸG�      *   \   x���v
Q���W((M��L�K,-Ɉ/-N-�O/�/-(V��L�Q �`A KS!��'�5XA�PG�4��<�`���Q�4cc�i\\ �>J?      ,   
   x���          0   ?  x�ՒMO1�����I%�ǪO�H�ª�KS��4��i���{��Ƌ��t:�af���8�'��ivf�����^�M��Q�BC�[#��4��ZjK��-Z�6�Ȓ�9R�J�*�[��C�4���.Y�>i]�.+86�>��%sh�	���EWa;��&�09dվJxX��O�վf�6h1��d�y% �!p���yQb�Gľd��?#v���%Z�2W|����m7&�Tp��J|s[z���G�w��=�e�`��ĳ�)��x*a�K��*��_�y�Ϗ<ܛm�7��d�L�f����}��Z�ϕ}�      @   P  x�ݘKo�6����C�pRo��<�ٴy,o��%�%Zb-�*Eś��R���E=	l�2�#������s����C7,j��\5�`�#8��Zވ���4��1W�ڝ6�TB/ׅ;����EB=�ۯ��ZvF�m�̅=��4�������p����G����S��b�uki*xx�&ZJ�o�?)�x�Aۄ���	�̀� �ہ����
pv)rS�4�Y���4!�?���zº����`���������H�1�"���� a	�b�b�O��"�w1�F5p����}AL��𘞞�EA��_=� {w��
�ix8�Kѯ �p�r!���������w�X�vWv��/��R-vF1�m�,�A�g�M\��ʊ���&5B���g?��`�+Hc��4#�1R�O2�.�d9F�צ8p�JCo�p�3(7G�W֘<�j� �"��O�|(Jave϶��me�n������0�gp!I��Cf�����Į��o�������Ζh�`�ھ�0���S�� ���JknW�V��/��Ta���F�z:�U�r��*h���*̂f�+xQ�᥀k��й���
��Jv8��}�y��vNm������W�7,#7u�H࿸��Tnn.�	:�y��5�u�m^5\�z��VSq�y�u�g�tƋ��`�(��w�	��`���-{���+�����}�%�����gK�^�zf�*��FY#����
{1c`��7��+�
��x�>�Q�uk����|E�鍇B9�J5�;�P�z����8�eU�_�/�xg��{�e`aH��pe�|cZ�ƪ4��t9�p�ZiPZ\W�Z���/Q�|�/�Ŵ*���'\ɒ/^1�6���P�,�V�zY���Z���$cq� �z�>q�ۗ9|���o�Oo�K��C�����}��(�7�p߀�}��	�KJ����l!]�F�p�p�!��,���wm���f�o��|�Vy�f'��Pp{��*�!a��-�g�����O��oC���b�o]YFJ`�l�|��+����V�W8(WŲ*��2��K�"R�;8��?�R      B     x����
�P��>�,.���V-Za��V�ZIQ���q�'耋���ǹw��M��uT7ݖ���z�m�O����W�xo�7ŗ���C���L����-�֐\�2���v3�A؞���1>��3�F��lL���.娽�(o��pL��G���8�N���1ٖ��}�tP�HV�ؽS:&w/���܃�A�\.���s��ܥ̽T:ȝO��(��*����� swJ�ˬf0��t�{�tL9���%�(� g�"      D   !  x����JAE���L H�����,$��n�� %!����J���虁��VWw����y����ɝn�_�����}�]����o��\��Ͻ�>f��k��#�{}x|Y��$̜<qz?� =*�@�$�{Vz��E��*=C��ҩ�6�Y(�r^؜|���d�W��BR<��u���ⱍ)��7�c�ҵ���+��$������&ɦW �h��|rp<�����9�r6>�/'g$�j|�_�7&п�｛9�⍏��}��?�����Y���0� G��      2   1  x���;o�0�w~�� �D~ı�NI�UT
ЊN�5��<����i��[,������N��.6;W�5��GiGgI^W�(:�a��A�dG#(M���L�
��
s�Y���ؾ ȋH�)��˗�&������ۤ �	��c+�gv7K�`��]�]][$�x�T�RӻQ8<k1q���ۼ�����׀������p��]��_xk=��Юs�����A$fʆ�a�{��Yi6���'����0�>���;��~��ۃ����ZL
���փWxBO�q1�����Gm      4   ;  x�ŒMO�0����m�JI���ⴡ
*ee�׵
i�,ҥ��$���+�����رc%��i�H�KH��=T̓B�
]V�V�:U#�V�� 6��<�Mn�Җk�+�����6^ �j���jg+�Ba=f�dρ�M������{�l�=��}�^G���Ħ�l�vb[���-�c�n�{��{Ss��=B����2�V{�~p�N�:�����	.a�j'����=y4>=�DK�	N
ܢ��}	��2j}!ǀ��&8�����N�#�(��%��0ev�X��/@G�t��#�P�����4�      F   �   x���=�0 НS|�4&��d"CQ1�����6���t���\�=:N�����5Z���k�0D.Sܼ� ��	,��E)b�z��s���	��@9x���$���#�Yf"�7eѸ]�]�9��r���OY�\&|Z�      6   
  x���Ok�0��⹵�TZuV�i�E��u2v�,>�l����������;y����ᗤ�&+ I�P�CÙ�d��uW��J}�)�	�"�N!���D+���br�[�n`��ڣ`&��gP^mo79L�&�Rw�k(Q<"a�����zb~GQ��]g�8�s�D�ng�!s��ʳ�`vi%�8�/Y���������Y\��Οy�@��}��h�3����p���q��>T�ŻE
�k=�C��$߮r����Ĳ^z44�      8     x���Ok�0��i!-M��e��i3V�:eic���R�
��[�96�]Wx!	�!?^�H&q
t�FP�C�-�dy����R��B�*�;;��*�_D�`����3^+�@
��i+���{uPu���<��j�� #賄­�ېF��������0�=��k�!hc�
�G���\,ձ�8
!Ic�i��B��"���]��+9]]���G�����xM�)5~��3~��;�7����)�O�h[fp���/TVp��[�#�+���Ən`��qt!�C���)ַ���H{�3�/�      H   (  x�ݖ�n�@��y���U]k��6'D{��
"m\";�7��	np�K�=q�R%*ϰ~#f�"� ������w�������app�fMr���q1�5�)�QQ����,��gq�%MUӛ$N��TV������u���E��Q�LSzP�qm<x��F�"5�B�o�X�K�C���aK{ =`����}g��+��~i��9�w>��X��W.;��q�jNiJ�>�^�o�\h���d��9޶n�q<5y��.d��]"wi�EDF���B����z��dx@�e�����+��!⃢��g~�x�;���4^L��n����Q��֥15$�yv�z����y6M��e��k!�Z�?n��ˤ�▮��>�!	��sA"zi[R"� ��jrvr6IO�G\0���hq�P�m6��#�/Z�^8�k=�__����hDH$�υ�zõG�*��B��sꠌ/=u0
ضLGR����l���������qW10����|��N8x`\�?}_H��2.��,b�g� 7\z��      :     x����N�0�;O1��H �O����q���P�Ɩ6�d]�ނ1�gN��d_&��E�/!��{�%�Ss&�e_	~�1A�`�Ɔ1lC�%�ZT+.m�mKj���\I�Hw�ᄔBG��x3P���$5����=����.{D$�w�`��Y+=M��1"���6��BWnJu���ֵ�-��g�I��^������I�)��C��)�v�A��I���v��m��_ԍ����-0#�xN�^
jG��%CT�7CR��:�ɛ���Nk��XI      <   E  x�œ�n�0E�|Ũ@M��$��+!��Hh�h0&�Dr$����	�˲߱G>�W^�b�*�6�Wǋ�:ϒ�*�*E�)��I����,o�������9S�ጜ4�)M��~�$C�������HaZp����a��7b���EΩ������7�&�	Z��{��$LKw��Go����c)�C��W'�Y{a�� j<��a�~Ӳ��H�_��h
,��I�)NF5&E����X\����������!�6���z� �DA�)�e,K���x�J�;�K±��zJ6q�T�%Yؚ�����7����~ �B      >   I  x���K��0�����SbxH�̊Q$dL�;���4#��N��OI\8�g��{�~���Ga��ΒOx�W׋����<��g�#y�Pd����eՈ��\�e}W��{~.��Y��_WsU-�c�S/���0t�k��/����rY�-���UYs�0��\G"۲a�Wòuu�.��Aڊ9s&�3~}i0[Ny����g.W]xJ ,��a�#N�m;�
���UL��EX
`�ya��`q� _��<���mu,0;�
����T��[��4S?��\^�EH'4�o��oo�������w7A����˶H')��@� R�      .     x���[o�0 ���
��$E>6Þ��ڢMi��ijU!�݄�Kd�CT��אP��h{	YG��?�Y�7׿B�Z�7�Po�4��s\��(�yZDY�C���(NTZ�Jsa�r�,5��P��|����;%{}墪�������� ڡu%�����ϻ�Z���|��` p ��ŨK����\w��h'��f�Ës.�����G]Ku���l5&���®�=�HS$u��\�I��g<����O��e\逜l�G�:�)�t�`|�e}��Ǔ����[L��J�eٮͨ�Oh؈я}.����`f�!��C}8p����0(;C����\����[�3�We](y4LdlT�D\�����\�I6�}z���m���,*�|+d�z�7�es{�F@�6�~��E�t;�]�PT
�&��=o@�A� ������� ��>��L��Ȟ�ȇ�C'�!��ﾥ@&$"�"��ۉ`B":(" ��xB���
!�	�6�(vw9"�Q�����N��`��� I��>            x���;O�0���
oi�� 11t���Dk��Vjd�N~���q�%a��N���w�+��������X���/ѵP5�Յ*\P������2� �Y�ϗ׏��-x�r!���h�=wɗ�YI�_���=���{}�oD�Con��+GG�&�x�?��9�h��^-$cL'x^n1�eO���#��z`(���O%VY��0�gg�jNjVS�O�"���f=�� N��C�7Sŷ�
�vmg�5&����S�,�c����U�e�wD#r         �  x���M��F���+t������C)Ф�TI�L!Y�>��/�v�+y�� A����˗�?||�����ç߲a��U^�]���a,����M��r�c�5��mh�ٟ�������x���87�y~��_3���c�C��לq���w`3�t�! ̨������#	
ǟ*�����2�IDD��p��Aj&�$e���������t���c�z_��.��ZqR(��/P��*��?���W��P������[G
�����u���}���bJ
������/۹�Ќ]����Eߕ_}���l��5�lv�&.l˄��+C{�ӊ��K�Ɗ�S��aޕ�L8�4[C��Pm9ͱ&siw�B	Gk� k(���g	�wş��G��2I��jc���/e�r�����8���i*�f���8hb�g��A��I�r��Dv+��\�z,���a��f.k���^s�_�Yㇱ����g�5�q�5`N���#���iZ+� ���;�n�jC�����\�J�ǚ�����]&���%�����L�iF+#	&�e���1Y�5�}r�`����)��vb�"�dVLփ�.��s�Z-h�d��j�����Ǻwqp�'^*�J��!�!R;i�y\�h��5Q�*k"�Ii��<��ml(�\še�ie�FF]�Ѽ��{��� ��W�r$��*S�0�a�`x��Y��%n�r��{�=�(���8����� ^]D±A���BB*��ι6Ԟ-��>���[�+��-�>Z��g��b����9{NY-��0m0WL�]3)W �h刕�0n,��vVr�0wR�R�ZC)�vy���jl��2�Dn9�8w	��l'�`�;4��S:Ǌ�(�2%�o�?�����9��r)�%�KD�����d?䲅�Nk���L�9/k
�rOa�Xx*��jG��q��P[Xu+w��TuE�Kkq��0���6/��      I   T  x�=�]o�0 E��}sfn)�ئ���)���K�Z��(��O�mo�$'����.@h0�:�2{�URn���8�dU��߰�m�A���>(��<w(z �V�x�&��.v����G�6M�4Zc,�����A���ʂPшK�~�L�+U���Dp�?X��7���woDD/�����&�r.IC�U�hb�S��c�3=�,�G�;�*ɧ����lO/i�l���,a2�����i��:u=��Y������͏7X
�	������Qs��ZLm�܆!�Z��#���#O�fg�!���;�$%���G�'��m`Y�8D��C��G����N���)     