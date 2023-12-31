PGDMP          -    
        
    {            eventos_fotografos    15.3    15.3 u    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    29392    eventos_fotografos    DATABASE     �   CREATE DATABASE eventos_fotografos WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 "   DROP DATABASE eventos_fotografos;
                postgres    false                        2615    31774    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    5            �           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    5            `           1247    31787    PhotographerType    TYPE     N   CREATE TYPE public."PhotographerType" AS ENUM (
    'person',
    'studio'
);
 %   DROP TYPE public."PhotographerType";
       public          postgres    false    5            c           1247    31792    StatePhotoSale    TYPE     J   CREATE TYPE public."StatePhotoSale" AS ENUM (
    'paid',
    'unpaid'
);
 #   DROP TYPE public."StatePhotoSale";
       public          postgres    false    5            f           1247    31798    TypePhotoSale    TYPE     N   CREATE TYPE public."TypePhotoSale" AS ENUM (
    'digital',
    'physical'
);
 "   DROP TYPE public."TypePhotoSale";
       public          postgres    false    5            �            1259    31854    Client    TABLE     �   CREATE TABLE public."Client" (
    id integer NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Client";
       public         heap    postgres    false    5            �            1259    31853    Client_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Client_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."Client_id_seq";
       public          postgres    false    226    5            �           0    0    Client_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public."Client_id_seq" OWNED BY public."Client".id;
          public          postgres    false    225            �            1259    31862    Event    TABLE     �  CREATE TABLE public."Event" (
    id integer NOT NULL,
    title text NOT NULL,
    description text NOT NULL,
    "dateTime" timestamp(3) without time zone NOT NULL,
    location text NOT NULL,
    qr text NOT NULL,
    "organizerId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Event";
       public         heap    postgres    false    5            �            1259    31900    EventClient    TABLE       CREATE TABLE public."EventClient" (
    id integer NOT NULL,
    "eventId" integer NOT NULL,
    "clientId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
 !   DROP TABLE public."EventClient";
       public         heap    postgres    false    5            �            1259    31899    EventClient_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EventClient_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."EventClient_id_seq";
       public          postgres    false    5    236            �           0    0    EventClient_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."EventClient_id_seq" OWNED BY public."EventClient".id;
          public          postgres    false    235            �            1259    31892    EventPhotographer    TABLE       CREATE TABLE public."EventPhotographer" (
    id integer NOT NULL,
    "eventId" integer NOT NULL,
    "photographerId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
 '   DROP TABLE public."EventPhotographer";
       public         heap    postgres    false    5            �            1259    31891    EventPhotographer_id_seq    SEQUENCE     �   CREATE SEQUENCE public."EventPhotographer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."EventPhotographer_id_seq";
       public          postgres    false    5    234            �           0    0    EventPhotographer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."EventPhotographer_id_seq" OWNED BY public."EventPhotographer".id;
          public          postgres    false    233            �            1259    31861    Event_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Event_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Event_id_seq";
       public          postgres    false    5    228            �           0    0    Event_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Event_id_seq" OWNED BY public."Event".id;
          public          postgres    false    227            �            1259    31824    History    TABLE       CREATE TABLE public."History" (
    id integer NOT NULL,
    action text NOT NULL,
    description text NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."History";
       public         heap    postgres    false    5            �            1259    31823    History_id_seq    SEQUENCE     �   CREATE SEQUENCE public."History_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."History_id_seq";
       public          postgres    false    220    5            �           0    0    History_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public."History_id_seq" OWNED BY public."History".id;
          public          postgres    false    219            �            1259    31872 
   Invitation    TABLE       CREATE TABLE public."Invitation" (
    id integer NOT NULL,
    email text NOT NULL,
    "evenId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
     DROP TABLE public."Invitation";
       public         heap    postgres    false    5            �            1259    31871    Invitation_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Invitation_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."Invitation_id_seq";
       public          postgres    false    5    230            �           0    0    Invitation_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Invitation_id_seq" OWNED BY public."Invitation".id;
          public          postgres    false    229            �            1259    31834 	   Organizer    TABLE     �   CREATE TABLE public."Organizer" (
    id integer NOT NULL,
    "webSite" text,
    "userId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Organizer";
       public         heap    postgres    false    5            �            1259    31833    Organizer_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Organizer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Organizer_id_seq";
       public          postgres    false    5    222            �           0    0    Organizer_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."Organizer_id_seq" OWNED BY public."Organizer".id;
          public          postgres    false    221            �            1259    31882    Photo    TABLE     �  CREATE TABLE public."Photo" (
    id integer NOT NULL,
    "imageUrl" text NOT NULL,
    "imageUrlCopy" text NOT NULL,
    price integer NOT NULL,
    "isPublic" boolean NOT NULL,
    "eventId" integer NOT NULL,
    "photographerId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Photo";
       public         heap    postgres    false    5            �            1259    31908 	   PhotoSale    TABLE     �  CREATE TABLE public."PhotoSale" (
    id integer NOT NULL,
    total numeric(65,30) NOT NULL,
    "dateTime" timestamp(3) without time zone NOT NULL,
    "methodOfPayment" text NOT NULL,
    state public."StatePhotoSale" NOT NULL,
    type public."TypePhotoSale" NOT NULL,
    "clientId" integer NOT NULL,
    "photoId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."PhotoSale";
       public         heap    postgres    false    867    5    870            �            1259    31907    PhotoSale_id_seq    SEQUENCE     �   CREATE SEQUENCE public."PhotoSale_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."PhotoSale_id_seq";
       public          postgres    false    238    5            �           0    0    PhotoSale_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public."PhotoSale_id_seq" OWNED BY public."PhotoSale".id;
          public          postgres    false    237            �            1259    31881    Photo_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Photo_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Photo_id_seq";
       public          postgres    false    5    232            �           0    0    Photo_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public."Photo_id_seq" OWNED BY public."Photo".id;
          public          postgres    false    231            �            1259    31844    Photographer    TABLE     r  CREATE TABLE public."Photographer" (
    id integer NOT NULL,
    type public."PhotographerType" NOT NULL,
    specialty text,
    portfolio text,
    experince integer,
    rate integer NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
 "   DROP TABLE public."Photographer";
       public         heap    postgres    false    5    864            �            1259    31843    Photographer_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Photographer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Photographer_id_seq";
       public          postgres    false    5    224            �           0    0    Photographer_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."Photographer_id_seq" OWNED BY public."Photographer".id;
          public          postgres    false    223            �            1259    31804    Rol    TABLE     �   CREATE TABLE public."Rol" (
    id integer NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."Rol";
       public         heap    postgres    false    5            �            1259    31803 
   Rol_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Rol_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public."Rol_id_seq";
       public          postgres    false    5    216            �           0    0 
   Rol_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public."Rol_id_seq" OWNED BY public."Rol".id;
          public          postgres    false    215            �            1259    31814    User    TABLE     �  CREATE TABLE public."User" (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "imageSecureUrl" text NOT NULL,
    "imagePublicId" text NOT NULL,
    phone text,
    address text,
    "tokenMovil" text,
    "rolId" integer NOT NULL,
    "createdAt" timestamp(3) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "updatedAt" timestamp(3) without time zone NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false    5            �            1259    31813    User_id_seq    SEQUENCE     �   CREATE SEQUENCE public."User_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_id_seq";
       public          postgres    false    218    5            �           0    0    User_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;
          public          postgres    false    217            �            1259    31775    _prisma_migrations    TABLE     �  CREATE TABLE public._prisma_migrations (
    id character varying(36) NOT NULL,
    checksum character varying(64) NOT NULL,
    finished_at timestamp with time zone,
    migration_name character varying(255) NOT NULL,
    logs text,
    rolled_back_at timestamp with time zone,
    started_at timestamp with time zone DEFAULT now() NOT NULL,
    applied_steps_count integer DEFAULT 0 NOT NULL
);
 &   DROP TABLE public._prisma_migrations;
       public         heap    postgres    false    5            �           2604    31857 	   Client id    DEFAULT     j   ALTER TABLE ONLY public."Client" ALTER COLUMN id SET DEFAULT nextval('public."Client_id_seq"'::regclass);
 :   ALTER TABLE public."Client" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226            �           2604    31865    Event id    DEFAULT     h   ALTER TABLE ONLY public."Event" ALTER COLUMN id SET DEFAULT nextval('public."Event_id_seq"'::regclass);
 9   ALTER TABLE public."Event" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    31903    EventClient id    DEFAULT     t   ALTER TABLE ONLY public."EventClient" ALTER COLUMN id SET DEFAULT nextval('public."EventClient_id_seq"'::regclass);
 ?   ALTER TABLE public."EventClient" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    236    236            �           2604    31895    EventPhotographer id    DEFAULT     �   ALTER TABLE ONLY public."EventPhotographer" ALTER COLUMN id SET DEFAULT nextval('public."EventPhotographer_id_seq"'::regclass);
 E   ALTER TABLE public."EventPhotographer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    234    234            �           2604    31827 
   History id    DEFAULT     l   ALTER TABLE ONLY public."History" ALTER COLUMN id SET DEFAULT nextval('public."History_id_seq"'::regclass);
 ;   ALTER TABLE public."History" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    31875    Invitation id    DEFAULT     r   ALTER TABLE ONLY public."Invitation" ALTER COLUMN id SET DEFAULT nextval('public."Invitation_id_seq"'::regclass);
 >   ALTER TABLE public."Invitation" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    230    229    230            �           2604    31837    Organizer id    DEFAULT     p   ALTER TABLE ONLY public."Organizer" ALTER COLUMN id SET DEFAULT nextval('public."Organizer_id_seq"'::regclass);
 =   ALTER TABLE public."Organizer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    31885    Photo id    DEFAULT     h   ALTER TABLE ONLY public."Photo" ALTER COLUMN id SET DEFAULT nextval('public."Photo_id_seq"'::regclass);
 9   ALTER TABLE public."Photo" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232            �           2604    31911    PhotoSale id    DEFAULT     p   ALTER TABLE ONLY public."PhotoSale" ALTER COLUMN id SET DEFAULT nextval('public."PhotoSale_id_seq"'::regclass);
 =   ALTER TABLE public."PhotoSale" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237    238            �           2604    31847    Photographer id    DEFAULT     v   ALTER TABLE ONLY public."Photographer" ALTER COLUMN id SET DEFAULT nextval('public."Photographer_id_seq"'::regclass);
 @   ALTER TABLE public."Photographer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    31807    Rol id    DEFAULT     d   ALTER TABLE ONLY public."Rol" ALTER COLUMN id SET DEFAULT nextval('public."Rol_id_seq"'::regclass);
 7   ALTER TABLE public."Rol" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    31817    User id    DEFAULT     f   ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);
 8   ALTER TABLE public."User" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �          0    31854    Client 
   TABLE DATA           J   COPY public."Client" (id, "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    226   7�       �          0    31862    Event 
   TABLE DATA           |   COPY public."Event" (id, title, description, "dateTime", location, qr, "organizerId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    228   q�       �          0    31900    EventClient 
   TABLE DATA           \   COPY public."EventClient" (id, "eventId", "clientId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    236   �       �          0    31892    EventPhotographer 
   TABLE DATA           h   COPY public."EventPhotographer" (id, "eventId", "photographerId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    234   Z�       �          0    31824    History 
   TABLE DATA           `   COPY public."History" (id, action, description, "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    220   ��       �          0    31872 
   Invitation 
   TABLE DATA           U   COPY public."Invitation" (id, email, "evenId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    230   ��       �          0    31834 	   Organizer 
   TABLE DATA           X   COPY public."Organizer" (id, "webSite", "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    222   ��       �          0    31882    Photo 
   TABLE DATA           �   COPY public."Photo" (id, "imageUrl", "imageUrlCopy", price, "isPublic", "eventId", "photographerId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    232   O�       �          0    31908 	   PhotoSale 
   TABLE DATA           �   COPY public."PhotoSale" (id, total, "dateTime", "methodOfPayment", state, type, "clientId", "photoId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    238   ��       �          0    31844    Photographer 
   TABLE DATA           }   COPY public."Photographer" (id, type, specialty, portfolio, experince, rate, "userId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    224   �       �          0    31804    Rol 
   TABLE DATA           C   COPY public."Rol" (id, name, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    216   \�       �          0    31814    User 
   TABLE DATA           �   COPY public."User" (id, name, email, password, "imageSecureUrl", "imagePublicId", phone, address, "tokenMovil", "rolId", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    218   ѝ                 0    31775    _prisma_migrations 
   TABLE DATA           �   COPY public._prisma_migrations (id, checksum, finished_at, migration_name, logs, rolled_back_at, started_at, applied_steps_count) FROM stdin;
    public          postgres    false    214   p�       �           0    0    Client_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public."Client_id_seq"', 1, true);
          public          postgres    false    225            �           0    0    EventClient_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."EventClient_id_seq"', 1, true);
          public          postgres    false    235            �           0    0    EventPhotographer_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."EventPhotographer_id_seq"', 1, true);
          public          postgres    false    233            �           0    0    Event_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Event_id_seq"', 1, true);
          public          postgres    false    227            �           0    0    History_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public."History_id_seq"', 1, false);
          public          postgres    false    219            �           0    0    Invitation_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Invitation_id_seq"', 1, true);
          public          postgres    false    229            �           0    0    Organizer_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public."Organizer_id_seq"', 1, true);
          public          postgres    false    221            �           0    0    PhotoSale_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."PhotoSale_id_seq"', 1, false);
          public          postgres    false    237            �           0    0    Photo_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public."Photo_id_seq"', 1, true);
          public          postgres    false    231            �           0    0    Photographer_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."Photographer_id_seq"', 1, true);
          public          postgres    false    223            �           0    0 
   Rol_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public."Rol_id_seq"', 4, true);
          public          postgres    false    215            �           0    0    User_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public."User_id_seq"', 4, true);
          public          postgres    false    217            �           2606    31860    Client Client_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Client"
    ADD CONSTRAINT "Client_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Client" DROP CONSTRAINT "Client_pkey";
       public            postgres    false    226            �           2606    31906    EventClient EventClient_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."EventClient"
    ADD CONSTRAINT "EventClient_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."EventClient" DROP CONSTRAINT "EventClient_pkey";
       public            postgres    false    236            �           2606    31898 (   EventPhotographer EventPhotographer_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."EventPhotographer"
    ADD CONSTRAINT "EventPhotographer_pkey" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public."EventPhotographer" DROP CONSTRAINT "EventPhotographer_pkey";
       public            postgres    false    234            �           2606    31870    Event Event_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Event"
    ADD CONSTRAINT "Event_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Event" DROP CONSTRAINT "Event_pkey";
       public            postgres    false    228            �           2606    31832    History History_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."History"
    ADD CONSTRAINT "History_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."History" DROP CONSTRAINT "History_pkey";
       public            postgres    false    220            �           2606    31880    Invitation Invitation_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."Invitation"
    ADD CONSTRAINT "Invitation_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."Invitation" DROP CONSTRAINT "Invitation_pkey";
       public            postgres    false    230            �           2606    31842    Organizer Organizer_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Organizer"
    ADD CONSTRAINT "Organizer_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."Organizer" DROP CONSTRAINT "Organizer_pkey";
       public            postgres    false    222            �           2606    31916    PhotoSale PhotoSale_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."PhotoSale"
    ADD CONSTRAINT "PhotoSale_pkey" PRIMARY KEY (id);
 F   ALTER TABLE ONLY public."PhotoSale" DROP CONSTRAINT "PhotoSale_pkey";
       public            postgres    false    238            �           2606    31890    Photo Photo_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Photo"
    ADD CONSTRAINT "Photo_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Photo" DROP CONSTRAINT "Photo_pkey";
       public            postgres    false    232            �           2606    31852    Photographer Photographer_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Photographer"
    ADD CONSTRAINT "Photographer_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."Photographer" DROP CONSTRAINT "Photographer_pkey";
       public            postgres    false    224            �           2606    31812    Rol Rol_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public."Rol"
    ADD CONSTRAINT "Rol_pkey" PRIMARY KEY (id);
 :   ALTER TABLE ONLY public."Rol" DROP CONSTRAINT "Rol_pkey";
       public            postgres    false    216            �           2606    31822    User User_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    218            �           2606    31783 *   _prisma_migrations _prisma_migrations_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public._prisma_migrations
    ADD CONSTRAINT _prisma_migrations_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public._prisma_migrations DROP CONSTRAINT _prisma_migrations_pkey;
       public            postgres    false    214            �           1259    31921    Client_userId_key    INDEX     S   CREATE UNIQUE INDEX "Client_userId_key" ON public."Client" USING btree ("userId");
 '   DROP INDEX public."Client_userId_key";
       public            postgres    false    226            �           1259    31919    Organizer_userId_key    INDEX     Y   CREATE UNIQUE INDEX "Organizer_userId_key" ON public."Organizer" USING btree ("userId");
 *   DROP INDEX public."Organizer_userId_key";
       public            postgres    false    222            �           1259    31920    Photographer_userId_key    INDEX     _   CREATE UNIQUE INDEX "Photographer_userId_key" ON public."Photographer" USING btree ("userId");
 -   DROP INDEX public."Photographer_userId_key";
       public            postgres    false    224            �           1259    31917    User_email_key    INDEX     K   CREATE UNIQUE INDEX "User_email_key" ON public."User" USING btree (email);
 $   DROP INDEX public."User_email_key";
       public            postgres    false    218            �           1259    31918    User_phone_key    INDEX     K   CREATE UNIQUE INDEX "User_phone_key" ON public."User" USING btree (phone);
 $   DROP INDEX public."User_phone_key";
       public            postgres    false    218            �           2606    31942    Client Client_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Client"
    ADD CONSTRAINT "Client_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 G   ALTER TABLE ONLY public."Client" DROP CONSTRAINT "Client_userId_fkey";
       public          postgres    false    226    218    3274            �           2606    31982 %   EventClient EventClient_clientId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EventClient"
    ADD CONSTRAINT "EventClient_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES public."Client"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."EventClient" DROP CONSTRAINT "EventClient_clientId_fkey";
       public          postgres    false    226    3284    236            �           2606    31977 $   EventClient EventClient_eventId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EventClient"
    ADD CONSTRAINT "EventClient_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public."EventClient" DROP CONSTRAINT "EventClient_eventId_fkey";
       public          postgres    false    236    3287    228            �           2606    31967 0   EventPhotographer EventPhotographer_eventId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EventPhotographer"
    ADD CONSTRAINT "EventPhotographer_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public."EventPhotographer" DROP CONSTRAINT "EventPhotographer_eventId_fkey";
       public          postgres    false    228    3287    234            �           2606    31972 7   EventPhotographer EventPhotographer_photographerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."EventPhotographer"
    ADD CONSTRAINT "EventPhotographer_photographerId_fkey" FOREIGN KEY ("photographerId") REFERENCES public."Photographer"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."EventPhotographer" DROP CONSTRAINT "EventPhotographer_photographerId_fkey";
       public          postgres    false    3281    234    224            �           2606    31947    Event Event_organizerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Event"
    ADD CONSTRAINT "Event_organizerId_fkey" FOREIGN KEY ("organizerId") REFERENCES public."Organizer"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public."Event" DROP CONSTRAINT "Event_organizerId_fkey";
       public          postgres    false    3278    222    228            �           2606    31927    History History_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."History"
    ADD CONSTRAINT "History_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public."History" DROP CONSTRAINT "History_userId_fkey";
       public          postgres    false    220    218    3274            �           2606    31952 !   Invitation Invitation_evenId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Invitation"
    ADD CONSTRAINT "Invitation_evenId_fkey" FOREIGN KEY ("evenId") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."Invitation" DROP CONSTRAINT "Invitation_evenId_fkey";
       public          postgres    false    3287    230    228            �           2606    31932    Organizer Organizer_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Organizer"
    ADD CONSTRAINT "Organizer_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."Organizer" DROP CONSTRAINT "Organizer_userId_fkey";
       public          postgres    false    222    3274    218            �           2606    31987 !   PhotoSale PhotoSale_clientId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PhotoSale"
    ADD CONSTRAINT "PhotoSale_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES public."Client"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public."PhotoSale" DROP CONSTRAINT "PhotoSale_clientId_fkey";
       public          postgres    false    226    3284    238            �           2606    31992     PhotoSale PhotoSale_photoId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."PhotoSale"
    ADD CONSTRAINT "PhotoSale_photoId_fkey" FOREIGN KEY ("photoId") REFERENCES public."Photo"(id) ON UPDATE CASCADE ON DELETE RESTRICT;
 N   ALTER TABLE ONLY public."PhotoSale" DROP CONSTRAINT "PhotoSale_photoId_fkey";
       public          postgres    false    232    3291    238            �           2606    31957    Photo Photo_eventId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Photo"
    ADD CONSTRAINT "Photo_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public."Event"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 F   ALTER TABLE ONLY public."Photo" DROP CONSTRAINT "Photo_eventId_fkey";
       public          postgres    false    3287    228    232            �           2606    31962    Photo Photo_photographerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Photo"
    ADD CONSTRAINT "Photo_photographerId_fkey" FOREIGN KEY ("photographerId") REFERENCES public."Photographer"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 M   ALTER TABLE ONLY public."Photo" DROP CONSTRAINT "Photo_photographerId_fkey";
       public          postgres    false    224    3281    232            �           2606    31937 %   Photographer Photographer_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Photographer"
    ADD CONSTRAINT "Photographer_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 S   ALTER TABLE ONLY public."Photographer" DROP CONSTRAINT "Photographer_userId_fkey";
       public          postgres    false    218    3274    224            �           2606    31922    User User_rolId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_rolId_fkey" FOREIGN KEY ("rolId") REFERENCES public."Rol"(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_rolId_fkey";
       public          postgres    false    3270    218    216            �   *   x�3�4�4202�54�5�P04�21�2��35�!����� F	�      �   �	  x�}X�z�Z��~��s�A�|s�D�E�W��	�!ou�a^l�������6��V��
���G�Ǟ�߿��'����ɉ��/W߽��s�t;�ޟ�g��ĉ�:ܯN��K��k�e���{�9L���4���ǻsv~�����<��k眼�Gh�.�KG����f �{�k��ð������iv)��%�����/����S��W���Z���jû�6{Yg�
��q���[�$Q�ﺯݏ��Y���suR�=dKg��J���;�a/��I8��a7�?N��a�q֗�np�y�*�c�u��]x�y`a��N�yTȹ���Ka
�NIE��]���ko�A���N�'>?�la+��[��X�����H[��_a��í�obe���+τ����-?b�V��ٶ�>�o��M���˕���
Y��6W��H��$, �C����=[��$���@}���Y���������,�æ�Y���H�6{J�or����>���5�>��f��r�1BmaG�x�7�X�C7gu�R'����p������χ�e��e!]�H�}�n�+~յfj(�kG�ؚ+�ho[x
�����Y�=5g0���6G��F��h��)Dx_��R͞2�2��v1rkW[����,�C�>�*�#_LX���Z;�و�{�]2�˜<��*;i�/di�yC?��d
��0b�a��!��@�m�`��΋1���^6)�b1������D?z�2�*gU[�:3^m���*+�qex�?�T��wކ4�]8�z�{��8ww���:8Yr����R���<�B�+����A.�~���[_,���h����f�ȍ�Ua^��)ti�1�]�͝xN޷�q�*g�q�������l'^V�O���A�� ����^�k�&~q�p��%A#�+��Gj��T	����s�+�f��'ʸ���H�r���pr��|a���	��k`�ӑ&���Ƀ��Y�b]l+�7��5�P0�����9��ZC��,�]9���S�ᮗ�zl���f�@?�����3�'-	��wX�1`I���^�3�u�S߮-��]���`�jp��i�!�����'�~ֽ�_���q����,N���p1pR�sR�� ��]�sf�\��~�nqC^��Xe����L����7�X[893[���*���Z�S�Gfz��cR�w�W�w��|�eIkZ���Ɠ�+��2���ﰆ-���$�h��9��r
����x�O0�	S�CN)�����I�l-뤇֌Q���P�`����J��7q�aJ�ux���U� ��O%ѫ`N�����������ԍhæ������p���;�-�xpj��v�Y��?־8{�a�A�A�Ĥ/�#����=䶽�U7��6Cjz�ヮ�*��I�r}d͓M�q����q�^�o�~�/���XŽ�J4w��ߏ}��=A]_�^`2ZZ�:hu�_��z��"�� %mQ߂롆"'H�_�h�)lvt����Rz伃($�DQk�I�#6Gk�p���fI��j)͋�=�<<�3��5�䚣|	|;���}s� �E}�p$S�{�����+_��ԭٻ����?�zV�m�� '���"�Ǽ�F=s�<B5��UW��)O�	x�͏Z��^S7�=*�;�?��ę�����M��TCX����>���£������d�
�L��.�!��QJ�=k�C� ׹����3|�Ѱ�lמ��/Xg��O[s�G[&k�����J����x�e� '] ����\���)?��T�������7l9���q�K��[�}����vMR��p.��M���W�I<�1Rq�g��V/�wS� ��8>m���T��T$ZE�끿l�`8H}�Z�p�#g���(��eS�|թ���!ٷ��L(���[P-��Gw��<j3�Q��6�M�#pR���p9�pd�3x�}B��ٳ�m?�ɡ���p�~Bi�4�q�osW�&N;���:��n^�,�`�HM��R�1�^�����&#�����b��w�o����E�x�#��j��qF���G�|	ZZ�!����^�rͬ��n������x~a�i���Q��j�)`M�W��l����Ʒ��5��4sh�I�L�Y�9�W�ysѹ�8���lk>�QC@�����'�	��3=����[0'��u�a�Q�A!:���� q�3�N�g�ۼh�-��N-ڽ���;[���m�j�^�mp,ԯ��#��������l���y�KI��K<����+h4��aً������<�/���A�Z���m.h�/ .�gB-H�ⴝƦU��&X#��ֿ�� _�8�^���h�0J�k.����W*�6��D�&+G����7�!�/SA��G�
�@z������͹y�����w��M�Ν�2���0ݴ���L����]��u�'���?�����u�w�������� ߿�q      �   +   x�3�4B##c]CC]#Cc+S3+cC=cs\�\1z\\\ 6�
b      �   +   x�3�4B##c]CC]#Cc+S3+cC=cs\�\1z\\\ 6�
b      �      x������ � �      �   ;   x�3��M,J�wH�M���K���4�4202�54�5�P04�25�26�360�%����� ���      �   B   x�3�,//�K-K�+�/�MK,J���K���4�4202�54�5�P04�25�2��3�0�%����� }{�      �   �   x���A� E�qY��ϧ�V�bҐ�X[�Pj��5N���7�op�����9�f��T�<'V7�������<��Jl���#]�%o:Y�>R��_�m�\2��n��e��!�җwޞ�U��5�EM��xTB��c��o��!�	" S�      �      x������ � �      �   7   x�3�,H-*����"CNcN##c]CC]#Cc+S#+3=KSK\�\1z\\\ xU3      �   e   x�3�tL����4202�54�5�P00�20�2��375�%�e��_����Y���_�]��%.q.cN������Ĵ|�j,q�s�p:�d�敤�Pa�K�+F��� ˯3#      �   �  x���Yo�0��ï�C_����4@��=l��R�,8�8Y	�~�Q%fJU�d]K�Y:�/`�yX e��a%����6�0AQ�y�0��}�Gܔ����z��g/�Ar�<�=��m��.�g{Ox�W��O��k̀	�"��ς��bZ�Q����]ޯuO�P�#�p��iL��W@Q� � �#��AΧ}���Dq�`���;��a^�0P�" �A5ѐtN��{zKd�4��۸�:��|-[Mv(�W�Kw>�f����g[���q�	�"mp���a�#]9~�
 ��%>8#؜�e_����՗uѩ.G\9�o���ĿY ѐ�!(�.�����̑S&}����}�!����kw�hخ�ζ�\���Qs���V��v�p�p�~BIվ�$�W_5'>7���+%xKC~���ނ�ee�����O�Z�r㄄@*�v��B�v�%�|m��6��O;~�{:�u��p �?�4�+J�����:u�N�|����D��3���k�l��M_�%p������\�W��9<7`��m�Y`O6I��ඐ����:O�ݍH4���63Z��#���ф�Bmb+a��2y!y];R�^:C��RĲ��?�k�[�35��:N����QZWTq7!#}�.I1����ʒeC���^�V��R�v         �   x�m��	1c�
7�c�ڕ�pF_�đ�ǲc�D�10ڻ��%4�$m��$=��ԦfW���e��ٱqU��xC�ue�V�.dӽ�&���l�PK�	�℘�o����䢮	��"��K~^���Ǘގ���=��c� �-e     