drop table  pii_regex_metadata_configurator;
 CREATE TABLE `pii_regex_metadata_configurator` (
  `pii_id` int(11) NOT NULL DEFAULT '0',
  `pii_type` varchar(100) DEFAULT NULL,
  `expression` varchar(40) DEFAULT 're',
  `pii_sub_type_entity` varchar(60) DEFAULT NULL,
  `search_prefix` varchar(10) DEFAULT '^.*',
  `search_suffix` varchar(10) DEFAULT '.*$',
  `is_ignore_case` varchar(1) DEFAULT 'Y',
  PRIMARY KEY (`pii_id`)
);

--to make a new entry, add a new insert statement corresponding to an existing PII Type and any new PII Sub Type 
 delete from pii_regex_metadata_configurator;
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (1, 'PERSON', 'firstname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (2, 'PERSON', 'fname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (3, 'PERSON', 'lastname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (4, 'PERSON', 'lname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (5, 'PERSON', 'fullname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (6, 'PERSON', 'maidenname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (7, 'PERSON', 'nickname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (8, 'PERSON', 'name_suffix');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (9, 'EMAIL', 'email');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (10, 'EMAIL', 'e-mail');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (11, 'EMAIL', 'mail');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (12, 'BIRTH_DATE', 'date_of_birth');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (13, 'BIRTH_DATE', 'dateofbirth');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (14, 'BIRTH_DATE', 'dob');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (15, 'BIRTH_DATE', 'birthday');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (16, 'BIRTH_DATE', 'date_of_death');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (17, 'BIRTH_DATE', 'dateofdeath');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (18, 'GENDER', 'gender');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (19, 'NATIONALITY', 'nationality');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (20, 'ADDRESS', 'address');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (21, 'ADDRESS', 'city');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (22, 'ADDRESS', 'state');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (23, 'ADDRESS', 'county');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (24, 'ADDRESS', 'country');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (25, 'ADDRESS', 'zipcode');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (26, 'ADDRESS', 'postal');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (27, 'ADDRESS', 'zone');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (28, 'ADDRESS', 'borough');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (29, 'ADDRESS', 'mail');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (30, 'ADDRESS', 'zip');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (31, 'ADDRESS', 'geo');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (32, 'ADDRESS', 'theatre');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (33, 'ADDRESS', 'theater');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (34, 'ADDRESS', 'region');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (35, 'PASSWORD', 'passw');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (36, 'SSN', 'ssn');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (37, 'SSN', 'social');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (38, 'URL', 'url');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (39, 'URL', 'link');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (40, 'FREE_TEXT', 'comment');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (41, 'FREE_TEXT', 'notes');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (42, 'FREE_TEXT', 'desc');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (43, 'FREE_TEXT', 'text');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (44, 'SOCIAL', 'fb');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (45, 'SOCIAL', 'facebook');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (46, 'SOCIAL', 'linked');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (47, 'SOCIAL', 'twitter');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (48, 'SOCIAL', 'instagram');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (49, 'SOCIAL', 'skype');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (50, 'SOCIAL', 'whatsapp');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (51, 'ADMINISTRATIVE', 'email');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (52, 'ADMINISTRATIVE', 'cert');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (53, 'ADMINISTRATIVE', 'regist');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (54, 'ADMINISTRATIVE', 'ccexp');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (55, 'ADMINISTRATIVE', 'ccnumber');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (56, 'ADMINISTRATIVE', 'expirationdate');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (57, 'ADMINISTRATIVE', 'accountid');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (58, 'ADMINISTRATIVE', 'elpid');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (59, 'ADMINISTRATIVE', 'uuid');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (60, 'ADMINISTRATIVE', 'tenantid');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (61, 'ADMINISTRATIVE', 'associationid');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (62, 'ADMINISTRATIVE', 'cscoid');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (63, 'ADMINISTRATIVE', 'domain');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (64, 'ADMINISTRATIVE', 'phone');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (65, 'ADMINISTRATIVE', 'cco');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (66, 'ADMINISTRATIVE', 'contact');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (67, 'ADMINISTRATIVE', 'billing');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (68, 'ADMINISTRATIVE', 'bill');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (69, 'ADMINISTRATIVE', 'shipping');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (70, 'ADMINISTRATIVE', 'ship');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (71, 'ADMINISTRATIVE', 'soldto');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (72, 'ADMINISTRATIVE', 'cisco');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (73, 'ADMINISTRATIVE', 'cec');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (74, 'ADMINISTRATIVE', 'order');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (75, 'ADMINISTRATIVE', 'deal');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (76, 'ADMINISTRATIVE', 'logged');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (77, 'HR', 'user_id');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (78, 'HR', 'userid');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (79, 'HR', 'username');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (80, 'HR', 'full_name');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (81, 'HR', 'first_name');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (82, 'HR', 'firstname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (83, 'HR', 'mailing');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (84, 'HR', 'last_name');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (85, 'HR', 'lastname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (86, 'HR', 'middle_name');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (87, 'HR', 'middlename');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (88, 'HR', 'legalname');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (89, 'HR', 'extension');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (90, 'HR', 'edby');
 insert into pii_regex_metadata_configurator(pii_id, pii_type, pii_sub_type_entity) values (91, 'HR', 'ed_by');
 
commit;

--Run below 2 statements to generate scanner regex code and insert in scanner.py between  "regex = {" and "}"
SET sql_mode='ANSI';

select 'PiiTypes.'||pii_type||': '||expression||'.compile('||'"'||search_prefix||'('||group_concat(pii_sub_type_entity separator '|')||')'||search_suffix||'"'||case when is_ignore_case = 'Y' then ', re.IGNORECASE' else null end||'),' from pii_regex_metadata_configurator group by pii_type;

