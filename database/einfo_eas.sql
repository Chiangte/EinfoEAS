/*
Navicat MySQL Data Transfer

Source Server         : Chiangte
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : einfo_eas

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-12-19 13:36:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS `college`;
CREATE TABLE `college` (
  `collegeID` int(11) NOT NULL,
  `collegeName` varchar(200) NOT NULL COMMENT '课程名',
  PRIMARY KEY (`collegeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO `college` VALUES ('1', '软件工程系');
INSERT INTO `college` VALUES ('2', '工商管理系');
INSERT INTO `college` VALUES ('3', '金融系');
INSERT INTO `college` VALUES ('4', '市场营销系');
INSERT INTO `college` VALUES ('5', '国际经济与贸易系');
INSERT INTO `college` VALUES ('6', '信息安全系');
INSERT INTO `college` VALUES ('7', '土木工程系');
INSERT INTO `college` VALUES ('8', '国际金融系');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseID` int(11) NOT NULL,
  `courseName` varchar(200) NOT NULL COMMENT '课程名称',
  `teacherID` int(11) NOT NULL COMMENT '教师ID',
  `courseTime` varchar(200) DEFAULT NULL COMMENT '开课时间',
  `classRoom` varchar(200) DEFAULT NULL COMMENT '开课地点',
  `courseWeek` int(200) DEFAULT NULL COMMENT '学时',
  `courseType` varchar(20) DEFAULT NULL COMMENT '课程类型',
  `collegeID` int(11) NOT NULL COMMENT '所属院系',
  `score` int(11) NOT NULL COMMENT '学分',
  PRIMARY KEY (`courseID`),
  KEY `collegeID` (`collegeID`),
  KEY `teacherID` (`teacherID`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`),
  CONSTRAINT `course_ibfk_2` FOREIGN KEY (`teacherID`) REFERENCES `teacher` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', 'C语言程序设计', '1001', '周一', 'X401', '18', '必修课', '1', '3');
INSERT INTO `course` VALUES ('2', 'Python爬虫技巧', '1002', '周二', 'Y402', '18', '必修课', '2', '3');
INSERT INTO `course` VALUES ('3', '数据结构', '1003', '周三', 'Z403', '18', '必修课', '3', '2');
INSERT INTO `course` VALUES ('4', 'Java程序设计', '1004', '周四', 'X401', '18', '必修课', '4', '2');
INSERT INTO `course` VALUES ('5', '英语', '1005', '周五', 'Y402', '18', '必修课', '5', '1');
INSERT INTO `course` VALUES ('6', 'Java讲义', '1006', '周一', 'Z403', '18', '选修课', '6', '2');
INSERT INTO `course` VALUES ('7', 'JavaEE开发的颠覆者', '1007', '周二', 'X401', '18', '选修课', '7', '3');
INSERT INTO `course` VALUES ('8', 'Java并发编程的艺术', '1008', '周三', 'Y402', '18', '选修课', '8', '2');
INSERT INTO `course` VALUES ('9', 'Java虚拟机', '1008', '周四', 'Z403', '18', '选修课', '8', '2');
INSERT INTO `course` VALUES ('10', 'JVM垃圾回收机制', '1007', '周五', 'X401', '18', '选修课', '7', '2');
INSERT INTO `course` VALUES ('11', '面向对象编程思想', '1006', '周一', 'Y402', '18', '选修课', '6', '3');
INSERT INTO `course` VALUES ('12', 'Web安全攻防', '1005', '周二', 'Z403', '18', '选修课', '5', '2');
INSERT INTO `course` VALUES ('13', '深入理解Java虚拟机', '1004', '周三', 'X401', '18', '必修课', '4', '1');
INSERT INTO `course` VALUES ('14', '码出高效', '1003', '周四', 'Y402', '18', '选修课', '3', '2');
INSERT INTO `course` VALUES ('15', 'SpringCloud微服务实战', '1002', '周五', 'Z403', '18', '选修课', '2', '3');
INSERT INTO `course` VALUES ('16', '深入浅出Spring', '1001', '周二', 'X401', '18', '选修课', '1', '2');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `roleID` int(11) NOT NULL,
  `roleName` varchar(20) NOT NULL,
  `permissions` varchar(255) DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('0', 'admin', null);
INSERT INTO `role` VALUES ('1', 'teacher', null);
INSERT INTO `role` VALUES ('2', 'student', null);

-- ----------------------------
-- Table structure for selectedcourse
-- ----------------------------
DROP TABLE IF EXISTS `selectedcourse`;
CREATE TABLE `selectedcourse` (
  `courseID` int(11) NOT NULL,
  `studentID` int(11) NOT NULL,
  `mark` int(11) DEFAULT NULL COMMENT '成绩',
  KEY `courseID` (`courseID`),
  KEY `studentID` (`studentID`),
  CONSTRAINT `selectedcourse_ibfk_1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`),
  CONSTRAINT `selectedcourse_ibfk_2` FOREIGN KEY (`studentID`) REFERENCES `student` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of selectedcourse
-- ----------------------------
INSERT INTO `selectedcourse` VALUES ('1', '10001', '77');
INSERT INTO `selectedcourse` VALUES ('2', '10002', '95');
INSERT INTO `selectedcourse` VALUES ('3', '10003', '66');
INSERT INTO `selectedcourse` VALUES ('4', '10004', '66');
INSERT INTO `selectedcourse` VALUES ('5', '10005', '99');
INSERT INTO `selectedcourse` VALUES ('6', '10006', '66');
INSERT INTO `selectedcourse` VALUES ('7', '10007', '66');
INSERT INTO `selectedcourse` VALUES ('8', '10008', '99');
INSERT INTO `selectedcourse` VALUES ('9', '10009', '99');
INSERT INTO `selectedcourse` VALUES ('10', '10010', '99');
INSERT INTO `selectedcourse` VALUES ('11', '10011', '68');
INSERT INTO `selectedcourse` VALUES ('12', '10012', '88');
INSERT INTO `selectedcourse` VALUES ('13', '10013', '72');
INSERT INTO `selectedcourse` VALUES ('14', '10014', '60');
INSERT INTO `selectedcourse` VALUES ('15', '10015', '58');
INSERT INTO `selectedcourse` VALUES ('16', '10016', '100');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthYear` date DEFAULT NULL COMMENT '出生日期',
  `grade` date DEFAULT NULL COMMENT '入学时间',
  `collegeID` int(11) NOT NULL COMMENT '院系id',
  PRIMARY KEY (`userID`),
  KEY `collegeID` (`collegeID`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10017 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('10001', 'Huawei', '男', '1998-11-11', '2018-12-17', '1');
INSERT INTO `student` VALUES ('10002', 'SAMSUNG', '女', '1998-11-11', '2018-12-17', '2');
INSERT INTO `student` VALUES ('10003', 'Apple', '女', '1998-11-11', '2018-12-17', '3');
INSERT INTO `student` VALUES ('10004', 'SONY', '女', '1998-11-11', '2018-12-17', '4');
INSERT INTO `student` VALUES ('10005', 'NOKIA', '女', '1998-11-11', '2018-12-17', '5');
INSERT INTO `student` VALUES ('10006', 'Smartisan', '女', '1998-11-11', '2018-12-17', '6');
INSERT INTO `student` VALUES ('10007', 'Vivo', '女', '1998-11-11', '2018-12-17', '7');
INSERT INTO `student` VALUES ('10008', 'OPPO', '女', '1998-11-11', '2018-12-17', '8');
INSERT INTO `student` VALUES ('10009', 'OnePlus', '女', '1998-11-11', '2018-12-17', '1');
INSERT INTO `student` VALUES ('10010', 'ZTE', '女', '1998-11-11', '2018-12-17', '2');
INSERT INTO `student` VALUES ('10011', 'Lenovo', '女', '1998-11-11', '2018-12-17', '3');
INSERT INTO `student` VALUES ('10012', 'MIUI', '女', '1998-11-11', '2018-12-17', '4');
INSERT INTO `student` VALUES ('10013', 'GIONEE', '女', '1998-11-11', '2018-12-17', '5');
INSERT INTO `student` VALUES ('10014', 'MEIZU', '女', '1998-11-11', '2018-12-17', '6');
INSERT INTO `student` VALUES ('10015', 'LG', '女', '1998-11-11', '2018-12-17', '7');
INSERT INTO `student` VALUES ('10016', 'Vivo', '女', '1998-11-11', '2018-12-17', '8');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `birthYear` date NOT NULL,
  `degree` varchar(20) DEFAULT NULL COMMENT '学历',
  `title` varchar(255) DEFAULT NULL COMMENT '职称',
  `grade` date DEFAULT NULL COMMENT '入职时间',
  `collegeID` int(11) NOT NULL COMMENT '院系',
  PRIMARY KEY (`userID`),
  KEY `collegeID` (`collegeID`),
  CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`collegeID`) REFERENCES `college` (`collegeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1001', '新老师', '女', '1988-06-01', '本科', '普通教师', '2018-12-12', '1');
INSERT INTO `teacher` VALUES ('1002', '垣老师', '女', '1988-06-01', '研究生', '普通教师', '2018-12-12', '2');
INSERT INTO `teacher` VALUES ('1003', '结老师', '女', '1988-06-01', '学士', '教授', '2018-12-12', '3');
INSERT INTO `teacher` VALUES ('1004', '衣老师', '女', '1988-06-01', '硕士', '助教', '2018-12-12', '4');
INSERT INTO `teacher` VALUES ('1005', '我老师', '女', '1988-06-01', '博士', '教授', '2018-12-12', '5');
INSERT INTO `teacher` VALUES ('1006', '老老师', '女', '1988-06-01', '九年义务教育', '普通教师', '2018-12-12', '6');
INSERT INTO `teacher` VALUES ('1007', '婆老师', '女', '1988-06-01', '小学生', '助教', '2018-12-12', '7');
INSERT INTO `teacher` VALUES ('1008', '啊老师', '女', '1998-06-01', '幼儿园', '助教', '2018-12-12', '8');

-- ----------------------------
-- Table structure for userlogin
-- ----------------------------
DROP TABLE IF EXISTS `userlogin`;
CREATE TABLE `userlogin` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` int(11) NOT NULL DEFAULT '2' COMMENT '角色权限',
  PRIMARY KEY (`userID`),
  KEY `role` (`role`),
  CONSTRAINT `userlogin_ibfk_1` FOREIGN KEY (`role`) REFERENCES `role` (`roleID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlogin
-- ----------------------------
INSERT INTO `userlogin` VALUES ('1', 'admin', 'admin', '0');
INSERT INTO `userlogin` VALUES ('2', '10001', 'admin', '2');
INSERT INTO `userlogin` VALUES ('3', '10002', 'admin', '2');
INSERT INTO `userlogin` VALUES ('4', '10003', 'admin', '2');
INSERT INTO `userlogin` VALUES ('5', '10005', 'admin', '2');
INSERT INTO `userlogin` VALUES ('6', '10004', 'admin', '2');
INSERT INTO `userlogin` VALUES ('7', '10006', 'admin', '2');
INSERT INTO `userlogin` VALUES ('8', '10007', 'admin', '2');
INSERT INTO `userlogin` VALUES ('9', '10007', 'admin', '2');
INSERT INTO `userlogin` VALUES ('10', '10008', 'admin', '2');
INSERT INTO `userlogin` VALUES ('11', '10009', 'admin', '2');
INSERT INTO `userlogin` VALUES ('12', '10010', 'admin', '2');
INSERT INTO `userlogin` VALUES ('13', '10011', 'admin', '2');
INSERT INTO `userlogin` VALUES ('14', '10012', 'admin', '2');
INSERT INTO `userlogin` VALUES ('15', '10013', 'admin', '2');
INSERT INTO `userlogin` VALUES ('16', '10014', 'admin', '2');
INSERT INTO `userlogin` VALUES ('17', '10015', 'admin', '2');
INSERT INTO `userlogin` VALUES ('18', '10016', 'admin', '2');
INSERT INTO `userlogin` VALUES ('19', '1001', 'admin', '1');
INSERT INTO `userlogin` VALUES ('20', '1002', 'admin', '1');
INSERT INTO `userlogin` VALUES ('21', '1003', 'admin', '1');
INSERT INTO `userlogin` VALUES ('22', '1004', 'admin', '1');
INSERT INTO `userlogin` VALUES ('23', '1005', 'admin', '1');
INSERT INTO `userlogin` VALUES ('24', '1006', 'admin', '1');
INSERT INTO `userlogin` VALUES ('25', '1007', 'admin', '1');
INSERT INTO `userlogin` VALUES ('26', '1007', 'admin', '1');
INSERT INTO `userlogin` VALUES ('27', '1008', 'admin', '1');
