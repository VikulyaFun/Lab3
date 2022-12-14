PGDMP         3                 z            lab3 dz    15.1    15.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16484    lab3 dz    DATABASE     }   CREATE DATABASE "lab3 dz" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "lab3 dz";
                postgres    false            ?            1259    16486    kafedra    TABLE     ?   CREATE TABLE public.kafedra (
    id integer NOT NULL,
    name character varying NOT NULL,
    deckanat character varying NOT NULL
);
    DROP TABLE public.kafedra;
       public         heap    postgres    false            ?            1259    16485    kafedra_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.kafedra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.kafedra_id_seq;
       public          postgres    false    215                       0    0    kafedra_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.kafedra_id_seq OWNED BY public.kafedra.id;
          public          postgres    false    214            ?            1259    16504 
   stud_group    TABLE     v   CREATE TABLE public.stud_group (
    id integer NOT NULL,
    name character varying NOT NULL,
    kafedra integer
);
    DROP TABLE public.stud_group;
       public         heap    postgres    false            ?            1259    16503    stud_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.stud_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.stud_group_id_seq;
       public          postgres    false    217                       0    0    stud_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.stud_group_id_seq OWNED BY public.stud_group.id;
          public          postgres    false    216            ?            1259    16518    students    TABLE     ?   CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying NOT NULL,
    passport character varying NOT NULL,
    stud_group integer
);
    DROP TABLE public.students;
       public         heap    postgres    false            ?            1259    16517    students_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public          postgres    false    219                       0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
          public          postgres    false    218            o           2604    16489 
   kafedra id    DEFAULT     h   ALTER TABLE ONLY public.kafedra ALTER COLUMN id SET DEFAULT nextval('public.kafedra_id_seq'::regclass);
 9   ALTER TABLE public.kafedra ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215            p           2604    16507    stud_group id    DEFAULT     n   ALTER TABLE ONLY public.stud_group ALTER COLUMN id SET DEFAULT nextval('public.stud_group_id_seq'::regclass);
 <   ALTER TABLE public.stud_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            q           2604    16521    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            	          0    16486    kafedra 
   TABLE DATA           5   COPY public.kafedra (id, name, deckanat) FROM stdin;
    public          postgres    false    215   \                 0    16504 
   stud_group 
   TABLE DATA           7   COPY public.stud_group (id, name, kafedra) FROM stdin;
    public          postgres    false    217   ?                 0    16518    students 
   TABLE DATA           B   COPY public.students (id, name, passport, stud_group) FROM stdin;
    public          postgres    false    219   ?                  0    0    kafedra_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.kafedra_id_seq', 1, false);
          public          postgres    false    214                       0    0    stud_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.stud_group_id_seq', 1, false);
          public          postgres    false    216                       0    0    students_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.students_id_seq', 1, false);
          public          postgres    false    218            s           2606    16493    kafedra kafedra_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.kafedra
    ADD CONSTRAINT kafedra_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.kafedra DROP CONSTRAINT kafedra_pkey;
       public            postgres    false    215            u           2606    16511    stud_group stud_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.stud_group
    ADD CONSTRAINT stud_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.stud_group DROP CONSTRAINT stud_group_pkey;
       public            postgres    false    217            w           2606    16525    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public            postgres    false    219            x           2606    16512 "   stud_group stud_group_kafedra_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.stud_group
    ADD CONSTRAINT stud_group_kafedra_fkey FOREIGN KEY (kafedra) REFERENCES public.kafedra(id);
 L   ALTER TABLE ONLY public.stud_group DROP CONSTRAINT stud_group_kafedra_fkey;
       public          postgres    false    217    215    3187            y           2606    16526 !   students students_stud_group_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_stud_group_fkey FOREIGN KEY (stud_group) REFERENCES public.stud_group(id);
 K   ALTER TABLE ONLY public.students DROP CONSTRAINT students_stud_group_fkey;
       public          postgres    false    3189    217    219            	   J   x?3???K?/?M,??ND???BR?3??s??3S??9]sR?K???@ʂS2??R??rR?2????b???? k?8         6   x?3??0?s???8?L ?Y@?1???k?5?2?)640*????? 0??         B  x?u?aN?@??ڻx?A?Ѥ?hҘc?????p????Pц????7?̓???ZJ_????{?dȋ|.i??I?????b}g??,?2?l87?????~!=??@ްhQ????J?;qlxJ|f???V?
d?BJ?O?Q;!??u?@}?j Z?>?,???:????b?h?Y???+???<5M`???g}???6??&??E6t???	????u?ѐϺP<%??DQ???D3???O????#1?K?.2???ꇸ?X??d??Ɂ[?1A??-;?A״οA?_1ܝ???r?q?$5?????? ??4     