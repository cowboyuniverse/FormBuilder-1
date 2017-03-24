
    create table public.users (
        user_id int4 not null,
        address1 varchar(255),
        address2 varchar(255),
        city varchar(255),
        country varchar(255),
        phone_cell varchar(255),
        phone_home varchar(255),
        phone_work varchar(255),
        state varchar(255),
        zip varchar(255),
        email varchar(255),
        first_name varchar(255),
        last_name varchar(255),
        role varchar(255),
        primary key (user_id)
    );

    alter table public.users 
        add constraint UK_6dotkott2kjsp8vw4d0m25fb7 unique (email);
create sequence hibernate_sequence start 1 increment 1;

    create table binder (
        binder_id int4 not null,
        available boolean,
        create_date timestamp,
        description varchar(255),
        finished boolean,
        name varchar(255),
        submit_date timestamp,
        update_date timestamp,
        user_user_id int4,
        primary key (binder_id)
    );

    create table block (
        id int4 not null,
        available boolean not null,
        block_order int4,
        description varchar(255),
        name varchar(255),
        page_id int4,
        primary key (id)
    );

    create table form (
        id int4 not null,
        available boolean not null,
        create_date timestamp,
        description varchar(255),
        finished boolean,
        name varchar(255),
        submit_date timestamp,
        update_date timestamp,
        user_user_id int4,
        primary key (id)
    );

    create table Item (
        DTYPE varchar(31) not null,
        id int4 not null,
        available boolean not null,
        description varchar(255),
        required boolean,
        type int4,
        name varchar(255),
        order_id int4,
        max int4,
        min int4,
        text_length int4,
        block_id int4,
        matchField_id int4,
        answer_id int4,
        primary key (id)
    );

    create table page (
        id int4 not null,
        available boolean not null,
        page_number int4,
        form_id int4,
        primary key (id)
    );

    create table pdf (
        id int4 not null,
        available boolean not null,
        name varchar(255),
        upload_date timestamp,
        user_user_id int4,
        primary key (id)
    );

    create table pdf_field (
        id int4 not null,
        available boolean not null,
        description varchar(255),
        name varchar(255),
        pdf_id int4,
        primary key (id)
    );

    create table pdf_field_Item (
        pdf_field_id int4 not null,
        items_id int4 not null
    );

    create table question (
        question_id int4 not null,
        description varchar(255),
        required boolean,
        type int4,
        name varchar(255),
        order_id int4,
        matchField_id int4,
        template_id int4,
        user_id int4,
        primary key (question_id)
    );

    create table question_selection_answer (
        id int4 not null,
        user_user_id int4,
        primary key (id)
    );

    create table question_selection_answer_selections (
        question_selection_answer_id int4 not null,
        selection_selection_id int4 not null,
        primary key (question_selection_answer_id, selection_selection_id)
    );

    create table Questiontext_answer (
        id int4 not null,
        answer varchar(255),
        question_question_id int4,
        user_user_id int4,
        primary key (id)
    );

    create table selection_answer (
        id int4 not null,
        user_user_id int4,
        primary key (id)
    );

    create table selection_answer_selections (
        selection_answer_id int4 not null,
        selection_selection_id int4 not null,
        primary key (selection_answer_id, selection_selection_id)
    );

    create table selections (
        selection_id int4 not null,
        description varchar(255),
        name varchar(255),
        order_id int4,
        value varchar(255),
        item_id int4,
        primary key (selection_id)
    );

    create table templates (
        template_id int4 not null,
        available boolean,
        create_date timestamp,
        description varchar(255),
        finished boolean,
        name varchar(255),
        submit_date timestamp,
        update_date timestamp,
        binder_id int4,
        user_user_id int4,
        primary key (template_id)
    );

    create table text_answer (
        id int4 not null,
        answer varchar(255),
        item_id int4,
        user_user_id int4,
        primary key (id)
    );

    alter table pdf_field_Item 
        add constraint UK_b425yubpwrfa9magjw5nq4pi8 unique (items_id);

    alter table question_selection_answer_selections 
        add constraint UK_rxsx2d59ypuj7s1w0kv4j0qf6 unique (selection_selection_id);

    alter table selection_answer_selections 
        add constraint UK_5vre6vj11mq5q7lek9a5hw8ka unique (selection_selection_id);

    alter table binder 
        add constraint FKm6hy3058uh70hf3idpoen9xnd 
        foreign key (user_user_id) 
        references public.users;

    alter table block 
        add constraint FKe3nwc03y9f19kvqltc9ss3nar 
        foreign key (page_id) 
        references page;

    alter table form 
        add constraint FKufiw1a83lvh6jbanfipamllb 
        foreign key (user_user_id) 
        references public.users;

    alter table Item 
        add constraint FK66635usqnh41ur8dkkgjg5d4w 
        foreign key (block_id) 
        references block;

    alter table Item 
        add constraint FKffffx1tdy9t70hepd0rm6sg99 
        foreign key (matchField_id) 
        references pdf_field;

    alter table Item 
        add constraint FKax808cyt2vg5qx0fnsegv7ywn 
        foreign key (answer_id) 
        references selection_answer;

    alter table page 
        add constraint FKe927owsiu7yiit9nmohw42a60 
        foreign key (form_id) 
        references form;

    alter table pdf 
        add constraint FKb7u3htpvu7ft2ykeagfx9xudi 
        foreign key (user_user_id) 
        references public.users;

    alter table pdf_field 
        add constraint FKn4gis1mi2hmn14uuipt141fwg 
        foreign key (pdf_id) 
        references pdf;

    alter table pdf_field_Item 
        add constraint FKd0i6b9iojnngwettsrmdwcq9v 
        foreign key (items_id) 
        references Item;

    alter table pdf_field_Item 
        add constraint FK5g8n72xoowa3ndd69pob3ekd5 
        foreign key (pdf_field_id) 
        references pdf_field;

    alter table question 
        add constraint FK4jhexsn0e7mn8hvkgo2sr1qex 
        foreign key (matchField_id) 
        references pdf_field;

    alter table question 
        add constraint FKo9i3uaghbadhpm2wtloqowviv 
        foreign key (template_id) 
        references templates;

    alter table question 
        add constraint FK7rnpup7eaonh2ubt922ormoij 
        foreign key (user_id) 
        references public.users;

    alter table question_selection_answer 
        add constraint FKdm808ndo063dan0aosecgpian 
        foreign key (user_user_id) 
        references public.users;

    alter table question_selection_answer_selections 
        add constraint FKph6vss8e6pneh0ruxloj4e1u3 
        foreign key (selection_selection_id) 
        references selections;

    alter table question_selection_answer_selections 
        add constraint FK3kt9wdqe98b2wayuvbktk6q1u 
        foreign key (question_selection_answer_id) 
        references question_selection_answer;

    alter table Questiontext_answer 
        add constraint FKivgr4br47evf6vrwj643dro0d 
        foreign key (question_question_id) 
        references question;

    alter table Questiontext_answer 
        add constraint FKtnnkq1n8ks39ugqxnfenl2aqd 
        foreign key (user_user_id) 
        references public.users;

    alter table selection_answer 
        add constraint FK8007vyi4sxourjr1em4w45gt9 
        foreign key (user_user_id) 
        references public.users;

    alter table selection_answer_selections 
        add constraint FKih5a4d2ujckabyxheukw17wwy 
        foreign key (selection_selection_id) 
        references selections;

    alter table selection_answer_selections 
        add constraint FKtfgcswe88v572x62ma7bv759j 
        foreign key (selection_answer_id) 
        references selection_answer;

    alter table selections 
        add constraint FK3da1thhy273hdum4tgxv1quan 
        foreign key (item_id) 
        references Item;

    alter table templates 
        add constraint FKat78f1muaciv2hwpssq29vpu9 
        foreign key (binder_id) 
        references binder;

    alter table templates 
        add constraint FKhgdj6nkx7wdyq7f3nmng7g4tl 
        foreign key (user_user_id) 
        references public.users;

    alter table text_answer 
        add constraint FKoox2vkrjr61wwj6gspib07043 
        foreign key (item_id) 
        references Item;

    alter table text_answer 
        add constraint FKocu1tjt99nv7budo1bsxcigur 
        foreign key (user_user_id) 
        references public.users;