PGDMP         4                 z            mtuci_db    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    mtuci_db    DATABASE     |   CREATE DATABASE mtuci_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE mtuci_db;
                postgres    false            ?            1259    16437    student    TABLE     ?   CREATE TABLE public.student (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    passport character varying(10) NOT NULL,
    group_numb integer
);
    DROP TABLE public.student;
       public         heap    postgres    false            ?            1259    16419    student_group    TABLE     ?   CREATE TABLE public.student_group (
    id integer NOT NULL,
    numb character varying NOT NULL,
    chair character varying NOT NULL
);
 !   DROP TABLE public.student_group;
       public         heap    postgres    false            ?            1259    16418    student_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.student_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.student_group_id_seq;
       public          postgres    false    215            	           0    0    student_group_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.student_group_id_seq OWNED BY public.student_group.id;
          public          postgres    false    214            ?            1259    16436    student_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.student_id_seq;
       public          postgres    false    217            
           0    0    student_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;
          public          postgres    false    216            k           2604    16440 
   student id    DEFAULT     h   ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);
 9   ALTER TABLE public.student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            j           2604    16422    student_group id    DEFAULT     t   ALTER TABLE ONLY public.student_group ALTER COLUMN id SET DEFAULT nextval('public.student_group_id_seq'::regclass);
 ?   ALTER TABLE public.student_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16437    student 
   TABLE DATA           F   COPY public.student (id, full_name, passport, group_numb) FROM stdin;
    public          postgres    false    217   ?                  0    16419    student_group 
   TABLE DATA           8   COPY public.student_group (id, numb, chair) FROM stdin;
    public          postgres    false    215                     0    0    student_group_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.student_group_id_seq', 1, true);
          public          postgres    false    214                       0    0    student_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.student_id_seq', 1, false);
          public          postgres    false    216            m           2606    16426     student_group student_group_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.student_group
    ADD CONSTRAINT student_group_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.student_group DROP CONSTRAINT student_group_pkey;
       public            postgres    false    215            o           2606    16444    student student_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    217            p           2606    16445    student student_group_numb_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_group_numb_fkey FOREIGN KEY (group_numb) REFERENCES public.student_group(id);
 I   ALTER TABLE ONLY public.student DROP CONSTRAINT student_group_numb_fkey;
       public          postgres    false    3181    215    217                  x?????? ? ?          #   x?3??0?s???8/,???r??qqq ??     