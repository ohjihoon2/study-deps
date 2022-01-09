CREATE TABLE `project_m` (
	`project_m_seq`	bigint(20)	NOT NULL,
	`project_name`	varchar(50)	NULL,
	`procjet_type`	varchar(50)	NULL,
	`project_start_date`	datetime	NULL,
	`project_end_date`	datetime	NULL,
	`project_state`	varchar(10)	NULL,
	`project_predict_start_date`	datetime	NULL,
	`project_predict_end_date`	datetime	NULL,
	`project_desc`	varchar(255)	NULL,
	`create_user`	varchar(255)	NULL,
	`create_date`	datetime	NULL,
	`update_user`	varchar(255)	NULL,
	`update_date`	datetime	NULL
);

CREATE TABLE `users_m` (
	`user_id`	varchar(50)	NOT NULL,
	`user_name`	varchar(50)	NULL,
	`user_pwd`	varchar(255)	NULL,
	`user_gender`	varchar(10)	NULL,
	`user_email`	varchar(255)	NULL,
	`user_birth_date`	varchar(20)	NULL
);

CREATE TABLE `project_s_user` (
	`project_s_user_seq`	bigint(20)	NOT NULL,
	`project_m_seq`	bigint(20)	NULL,
	`user_m_seq`	bigint(20)	NULL,
	`Field`	VARCHAR(255)	NULL
);

CREATE TABLE `user_s_role` (
	`Key`	VARCHAR(255)	NOT NULL
);

CREATE TABLE `role_m` (
	`role_seq`	VARCHAR(255)	NOT NULL,
	`role_name`	varchar(50)	NULL
);

CREATE TABLE `task_m` (
	`task_m_seq`	bigint(20)	NOT NULL,
	`project_menu_seq`	varchar(50)	NULL,
	`parent_task_m_seq`	VARCHAR(255)	NULL,
	`task_name`	VARCHAR(255)	NULL,
	`task_content`	VARCHAR(255)	NULL,
	`task_state`	VARCHAR(255)	NULL,
	`task_start_date`	VARCHAR(255)	NULL,
	`task_end_date`	VARCHAR(255)	NULL,
	`task_predict_start_date`	VARCHAR(255)	NULL,
	`task_predict_end_date`	VARCHAR(255)	NULL,
	`task_manager_user_id`	VARCHAR(255)	NULL,
	`task_help_flag`	VARCHAR(255)	NULL,
	`task_help_content`	VARCHAR(255)	NULL,
	`task_help_user_id`	VARCHAR(255)	NULL,
	`task_m_progress_rate`	VARCHAR(255)	NULL
);

CREATE TABLE `task_s_history` (
	`task_s_seq`	VARCHAR(255)	NOT NULL,
	`task_m_seq`	VARCHAR(255)	NULL,
	`task_handler_user_id`	VARCHAR(255)	NULL,
	`task_start_time`	VARCHAR(255)	NULL,
	`task_end_time`	VARCHAR(255)	NULL,
	`task_processing_time`	VARCHAR(255)	NULL,
	`task_remark`	VARCHAR(255)	NULL,
	`task_s_progress_rate`	VARCHAR(255)	NULL,
	`Field7`	VARCHAR(255)	NULL,
	`Field8`	VARCHAR(255)	NULL,
	`Field9`	VARCHAR(255)	NULL
);

CREATE TABLE `project_s_menu` (
	`project_menu_seq`	VARCHAR(255)	NOT NULL,
	`parent_project_menu_seq`	VARCHAR(255)	NULL,
	`project_m_seq`	VARCHAR(255)	NULL,
	`menu_name`	VARCHAR(255)	NULL,
	`menu_sort_no`	VARCHAR(255)	NULL,
	`menu_use_flag`	VARCHAR(255)	NULL,
	`menu_type`	VARCHAR(255)	NULL,
	`menu_depth`	VARCHAR(255)	NULL,
	`Field3`	VARCHAR(255)	NULL,
	`Field4`	VARCHAR(255)	NULL,
	`Field5`	VARCHAR(255)	NULL
);

CREATE TABLE `menu_template` (
	`menu_seq`	VARCHAR(255)	NOT NULL,
	`parent_menu_seq`	VARCHAR(255)	NULL,
	`menu_name`	VARCHAR(255)	NULL,
	`menu_sort_no`	VARCHAR(255)	NULL,
	`menu_use_flag`	VARCHAR(255)	NULL,
	`menu_type`	VARCHAR(255)	NULL,
	`menu_depth`	VARCHAR(255)	NULL,
	`Field3`	VARCHAR(255)	NULL,
	`Field4`	VARCHAR(255)	NULL,
	`Field5`	VARCHAR(255)	NULL
);

CREATE TABLE `file_m` (
	`file_m_seq`	VARCHAR(255)	NOT NULL,
	`table_name`	VARCHAR(255)	NULL,
	`table_seq`	VARCHAR(255)	NULL,
	`file_name_client`	VARCHAR(255)	NULL,
	`file_name_server`	VARCHAR(255)	NULL,
	`file_path_server`	VARCHAR(255)	NULL,
	`file_ext`	VARCHAR(255)	NULL,
	`file_size`	VARCHAR(255)	NULL,
	`file_use_flag`	VARCHAR(255)	NULL,
	`Field`	VARCHAR(255)	NULL,
	`Field2`	VARCHAR(255)	NULL
);

CREATE TABLE `issue_m` (
	`issue_m_seq`	VARCHAR(255)	NOT NULL,
	`project_m_seq`	VARCHAR(255)	NULL,
	`task_m_seq`	VARCHAR(255)	NULL,
	`issue_title`	VARCHAR(255)	NULL,
	`issue_content`	VARCHAR(255)	NULL,
	`issue_acceptance_flag`	VARCHAR(255)	NULL,
	`issue_grade`	VARCHAR(255)	NULL,
	`create_user_id`	VARCHAR(255)	NULL,
	`create_date`	VARCHAR(255)	NULL,
	`handle_user_id`	VARCHAR(255)	NULL,
	`handle_start_date`	VARCHAR(255)	NULL,
	`handle_end_date`	VARCHAR(255)	NULL,
	`handle_processing_time`	VARCHAR(255)	NULL
);

CREATE TABLE `require_m` (
	`require_m_seq`	VARCHAR(255)	NOT NULL,
	`project_m_seq`	VARCHAR(255)	NULL,
	`require_title`	VARCHAR(255)	NULL,
	`require_content`	VARCHAR(255)	NULL,
	`require_acceptance_flag`	VARCHAR(255)	NULL,
	`require_grade`	VARCHAR(255)	NULL,
	`requestor`	VARCHAR(255)	NULL,
	`require_create_date`	VARCHAR(255)	NULL,
	`require_create_user_id`	VARCHAR(255)	NULL
);

CREATE TABLE `require_s_handle` (
	`require_s_seq`	VARCHAR(255)	NOT NULL,
	`require_m_seq`	VARCHAR(255)	NULL,
	`task_m_seq`	VARCHAR(255)	NULL
);

CREATE TABLE `stm_code_m` (
	`code_m_seq`	VARCHAR(255)	NOT NULL,
	`code_desc`	VARCHAR(255)	NULL,
	`sort_no`	VARCHAR(255)	NULL,
	`use_flag`	VARCHAR(255)	NULL
);

CREATE TABLE `stm_code_s` (
	`code_s_seq`	VARCHAR(255)	NOT NULL,
	`code_m_seq`	VARCHAR(255)	NULL,
	`code_name`	VARCHAR(255)	NULL,
	`code_desc`	VARCHAR(255)	NULL,
	`sort_no`	VARCHAR(255)	NULL,
	`use_flag`	VARCHAR(255)	NULL
);

ALTER TABLE `project_m` ADD CONSTRAINT `PK_PROJECT_M` PRIMARY KEY (
	`project_m_seq`
);

ALTER TABLE `users_m` ADD CONSTRAINT `PK_USERS_M` PRIMARY KEY (
	`user_id`
);

ALTER TABLE `project_s_user` ADD CONSTRAINT `PK_PROJECT_S_USER` PRIMARY KEY (
	`project_s_user_seq`
);

ALTER TABLE `user_s_role` ADD CONSTRAINT `PK_USER_S_ROLE` PRIMARY KEY (
	`Key`
);

ALTER TABLE `role_m` ADD CONSTRAINT `PK_ROLE_M` PRIMARY KEY (
	`role_seq`
);

ALTER TABLE `task_m` ADD CONSTRAINT `PK_TASK_M` PRIMARY KEY (
	`task_m_seq`
);

ALTER TABLE `task_s_history` ADD CONSTRAINT `PK_TASK_S_HISTORY` PRIMARY KEY (
	`task_s_seq`
);

ALTER TABLE `project_s_menu` ADD CONSTRAINT `PK_PROJECT_S_MENU` PRIMARY KEY (
	`project_menu_seq`
);

ALTER TABLE `menu_template` ADD CONSTRAINT `PK_MENU_TEMPLATE` PRIMARY KEY (
	`menu_seq`
);

ALTER TABLE `file_m` ADD CONSTRAINT `PK_FILE_M` PRIMARY KEY (
	`file_m_seq`
);

ALTER TABLE `issue_m` ADD CONSTRAINT `PK_ISSUE_M` PRIMARY KEY (
	`issue_m_seq`
);

ALTER TABLE `require_m` ADD CONSTRAINT `PK_REQUIRE_M` PRIMARY KEY (
	`require_m_seq`
);

ALTER TABLE `require_s_handle` ADD CONSTRAINT `PK_REQUIRE_S_HANDLE` PRIMARY KEY (
	`require_s_seq`
);

ALTER TABLE `stm_code_m` ADD CONSTRAINT `PK_STM_CODE_M` PRIMARY KEY (
	`code_m_seq`
);

ALTER TABLE `stm_code_s` ADD CONSTRAINT `PK_STM_CODE_S` PRIMARY KEY (
	`code_s_seq`
);

