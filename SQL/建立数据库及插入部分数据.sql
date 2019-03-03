CREATE SCHEMA `student_manage` ;
CREATE TABLE `student_manage`.`stu_info` (
    `stu_num` VARCHAR(10) NOT NULL,
    `name` VARCHAR(10) NULL,
    `age` INT NULL,
    `sex` VARCHAR(2) NULL,
    `hobby` VARCHAR(45) NULL,
    `colleague_id` VARCHAR(45) NULL,
    `profession_id` VARCHAR(45) NULL,
    PRIMARY KEY (`stu_num`),
    FOREIGN KEY (`colleague_id`)
        REFERENCES `student_manage`.`colleague_info` (`colleague_id`),
    FOREIGN KEY (`profession_id`)
        REFERENCES `student_manage`.`profession_info` (`profession_id`)
);
CREATE TABLE `student_manage`.`colleague_info` (
  `colleague_id` VARCHAR(8) NOT NULL,
  `colleague_name` VARCHAR(45) NULL,
  PRIMARY KEY (`colleague_id`));
INSERT INTO `student_manage`.`colleague_info` (`colleague_id`, `colleague_name`) VALUES ('manage', '管理学院');
INSERT INTO `student_manage`.`colleague_info` (`colleague_id`, `colleague_name`) VALUES ('computer', '计算机学院');
INSERT INTO `student_manage`.`colleague_info` (`colleague_id`, `colleague_name`) VALUES ('marx', '马克思学院');
CREATE TABLE `student_manage`.`profession_info` (
  `profession_id` VARCHAR(8) NOT NULL,
  `profession_name` VARCHAR(45) NULL,
  `coleague_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`profession_id`,`coleague_id`),
  INDEX `coleague_name_idx` (`coleague_id` ASC) VISIBLE,
  CONSTRAINT `coleague_id`
    FOREIGN KEY (`coleague_id`)
    REFERENCES `student_manage`.`colleague_info` (`colleague_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('001', '信息管理与信息系', 'manage');
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('002', '会计学', 'manage');
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('003', '物流管理', 'manage');
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('004', '近代史', 'marx');
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('005', '形式与政策', 'marx');
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('006', '马克思主义', 'marx');
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('007', '数据结构', 'computer');
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('008', '软件工程', 'computer');
INSERT INTO `student_manage`.`profession_info` (`profession_id`, `profession_name`, `coleague_id`) VALUES ('009', '项目管理', 'computer');
