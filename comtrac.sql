-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2013 at 05:55 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `comtrac`
--

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups`
--

CREATE TABLE IF NOT EXISTS `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=123 ;

--
-- Dumping data for table `fieldgroups`
--

INSERT INTO `fieldgroups` (`id`, `name`) VALUES
(2, 'admin'),
(3, 'user'),
(4, 'role'),
(5, 'permission'),
(1, 'home'),
(88, 'sitemap'),
(83, 'basic-page'),
(80, 'search'),
(104, 'faq'),
(103, 'blog'),
(102, 'solutions'),
(105, 'contact'),
(106, 'enquiry_form'),
(107, 'why-comtrac'),
(108, 'features'),
(110, 'admin_list'),
(111, 'faq-model'),
(112, 'faq_admin'),
(113, 'custom'),
(114, 'news-model'),
(115, 'process_action'),
(116, 'branch_model'),
(117, 'our_ethos'),
(118, 'newsletter_form'),
(119, 'blog_admin'),
(120, 'branch_admin'),
(121, 'enquiry_admin'),
(122, 'subscription_admin');

-- --------------------------------------------------------

--
-- Table structure for table `fieldgroups_fields`
--

CREATE TABLE IF NOT EXISTS `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `fields_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(11) unsigned NOT NULL DEFAULT '0',
  `data` text,
  PRIMARY KEY (`fieldgroups_id`,`fields_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fieldgroups_fields`
--

INSERT INTO `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`) VALUES
(2, 2, 1, NULL),
(2, 1, 0, NULL),
(3, 3, 0, NULL),
(3, 4, 2, NULL),
(4, 5, 0, NULL),
(5, 1, 0, NULL),
(3, 92, 1, NULL),
(104, 1, 0, NULL),
(1, 112, 15, ''),
(80, 1, 0, NULL),
(83, 1, 0, NULL),
(83, 44, 5, NULL),
(83, 76, 3, NULL),
(83, 82, 4, NULL),
(1, 111, 14, ''),
(83, 78, 1, NULL),
(83, 79, 2, NULL),
(88, 79, 1, NULL),
(105, 125, 1, ''),
(88, 1, 0, NULL),
(1, 110, 13, ''),
(1, 109, 12, ''),
(1, 108, 11, ''),
(1, 107, 10, ''),
(1, 106, 9, ''),
(103, 1, 0, NULL),
(1, 105, 8, ''),
(1, 104, 7, ''),
(102, 121, 4, ''),
(1, 103, 6, ''),
(1, 102, 5, ''),
(1, 101, 4, ''),
(1, 76, 3, ''),
(1, 79, 2, ''),
(1, 78, 1, ''),
(1, 1, 0, ''),
(102, 124, 9, ''),
(102, 119, 2, ''),
(102, 120, 3, ''),
(102, 1, 0, ''),
(102, 118, 1, ''),
(106, 114, 1, ''),
(106, 116, 3, ''),
(106, 113, 2, ''),
(106, 1, 0, ''),
(107, 124, 18, ''),
(107, 109, 17, ''),
(107, 108, 16, ''),
(107, 107, 15, ''),
(107, 106, 14, ''),
(107, 105, 13, ''),
(107, 104, 12, ''),
(107, 103, 11, ''),
(107, 102, 10, ''),
(107, 134, 9, ''),
(107, 133, 8, ''),
(107, 132, 7, ''),
(107, 131, 6, ''),
(107, 130, 5, ''),
(107, 129, 4, ''),
(107, 128, 3, ''),
(107, 127, 2, ''),
(107, 126, 1, ''),
(107, 1, 0, ''),
(108, 124, 26, ''),
(108, 122, 25, '{"label":"Third right content"}'),
(108, 121, 24, '{"label":"Third left content"}'),
(108, 131, 23, ''),
(108, 134, 22, ''),
(108, 142, 21, ''),
(108, 140, 20, ''),
(108, 138, 19, ''),
(108, 136, 18, ''),
(108, 130, 17, ''),
(108, 133, 16, ''),
(108, 132, 15, ''),
(108, 129, 14, ''),
(108, 128, 13, ''),
(108, 145, 12, ''),
(108, 144, 11, ''),
(108, 127, 10, ''),
(108, 126, 9, ''),
(108, 109, 8, ''),
(108, 108, 7, ''),
(108, 107, 6, ''),
(108, 106, 5, ''),
(108, 105, 4, ''),
(108, 104, 3, ''),
(108, 103, 2, ''),
(108, 102, 1, ''),
(108, 1, 0, ''),
(110, 1, 0, ''),
(111, 1, 0, ''),
(111, 148, 1, ''),
(112, 1, 0, ''),
(113, 1, 0, NULL),
(114, 150, 1, ''),
(114, 1, 0, ''),
(114, 151, 2, NULL),
(114, 152, 3, NULL),
(102, 122, 5, ''),
(102, 123, 8, ''),
(102, 155, 7, ''),
(102, 154, 6, ''),
(115, 1, 0, ''),
(111, 149, 2, ''),
(111, 156, 3, NULL),
(117, 164, 6, ''),
(116, 158, 1, ''),
(116, 159, 2, ''),
(116, 160, 3, ''),
(116, 161, 4, ''),
(105, 1, 0, ''),
(116, 1, 0, ''),
(117, 134, 5, ''),
(117, 163, 4, ''),
(117, 130, 3, ''),
(117, 162, 2, ''),
(117, 125, 1, ''),
(117, 1, 0, ''),
(117, 124, 7, NULL),
(118, 165, 1, NULL),
(118, 1, 0, ''),
(119, 1, 0, ''),
(120, 1, 0, ''),
(121, 1, 0, ''),
(106, 115, 4, ''),
(106, 117, 5, ''),
(106, 166, 6, NULL),
(122, 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `label` varchar(255) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=168 ;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `type`, `name`, `flags`, `label`, `data`) VALUES
(1, 'FieldtypePageTitle', 'title', 13, 'Title', '{"required":1,"textformatters":["TextformatterEntities"],"size":0,"maxlength":255}'),
(2, 'FieldtypeModule', 'process', 25, 'Process', '{"description":"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don''t change the value of this unless adding your own pages in the admin.","collapsed":1,"required":1,"moduleTypes":["Process"],"permanent":1}'),
(3, 'FieldtypePassword', 'pass', 24, 'Set Password', '{"collapsed":1,"size":50,"maxlength":128}'),
(5, 'FieldtypePage', 'permissions', 24, 'Permissions', '{"derefAsPage":0,"parent_id":31,"labelFieldName":"title","inputfield":"InputfieldCheckboxes"}'),
(4, 'FieldtypePage', 'roles', 24, 'Roles', '{"derefAsPage":0,"parent_id":30,"labelFieldName":"name","inputfield":"InputfieldCheckboxes","description":"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page''s template."}'),
(92, 'FieldtypeEmail', 'email', 9, 'E-Mail Address', '{"size":70,"maxlength":255}'),
(82, 'FieldtypeTextarea', 'sidebar', 0, 'Sidebar', '{"inputfieldClass":"InputfieldTinyMCE","rows":5,"theme_advanced_buttons1":"formatselect,styleselect|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(44, 'FieldtypeImage', 'background_image', 0, 'Background Image', '{"extensions":"gif jpg jpeg png","entityEncode":1,"adminThumbs":1,"inputfieldClass":"InputfieldImage","maxFiles":1,"descriptionRows":1,"fileSchema":2}'),
(79, 'FieldtypeTextarea', 'summary', 1, 'Summary', '{"textformatters":["TextformatterEntities"],"inputfieldClass":"InputfieldTextarea","collapsed":2,"rows":3}'),
(76, 'FieldtypeTextarea', 'body', 0, 'Body', '{"inputfieldClass":"InputfieldTinyMCE","collapsed":0,"rows":10,"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre","plugins":"inlinepopups,safari,media,paste,fullscreen","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],code,pre"}'),
(78, 'FieldtypeText', 'headline', 0, 'Headline', '{"description":"Use this instead of the Title if a longer headline is needed than what you want to appear in navigation.","textformatters":["TextformatterEntities"],"collapsed":2,"size":0,"maxlength":1024}'),
(100, 'FieldtypeTextarea', 'enquiry_bottom', 0, 'Enquiry bottom block', '{"description":"The enquiry block available in all pages bottom. Link to go the \\"contact us\\" page","textformatters":["TextformatterEntities"],"inputfieldClass":"InputfieldTinyMCE","collapsed":2,"required":1,"rows":5}'),
(101, 'FieldtypeCheckbox', 'display_keyfeatures', 0, 'Display the Key features block', '{"description":"Display or not the Key Features''s block in the current page"}'),
(102, 'FieldtypeText', 'col1_title', 0, 'Column 1 Title', '{"description":"KeyFeature 1 title display in the current page","size":0,"maxlength":2048,"clone_field":1}'),
(103, 'FieldtypeTextarea', 'col1_content', 0, 'Column 1 Content', '{"description":"Key Features 1''s content ","inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(104, 'FieldtypeText', 'col2_title', 0, 'Column 2 Title', '{"size":0,"maxlength":2048,"clone_field":1}'),
(105, 'FieldtypeTextarea', 'col2_content', 0, 'Column 2 Content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(106, 'FieldtypeText', 'col3_title', 0, 'Column 3 Title', '{"size":0,"maxlength":2048,"clone_field":1}'),
(107, 'FieldtypeTextarea', 'col3_content', 0, 'Column 3 Content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(108, 'FieldtypeText', 'col4_title', 0, 'Column 4 Title', '{"size":0,"maxlength":2048,"clone_field":1}'),
(109, 'FieldtypeTextarea', 'col4_content', 0, 'Column 4 Content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(110, 'FieldtypeText', 'home_sectiontitle', 0, 'Home section title', ''),
(111, 'FieldtypeTextarea', 'home_sectionintro', 0, 'Home section introduction', '{"textformatters":["TextformatterEntities"],"inputfieldClass":"InputfieldTextarea","rows":5}'),
(112, 'FieldtypeTextarea', 'home_sectioncontent', 0, 'Home Section Content', '{"inputfieldClass":"InputfieldTextarea","rows":5}'),
(113, 'FieldtypeText', 'enquiry_company', 0, 'Enquiry company', '{"size":0,"maxlength":2048}'),
(114, 'FieldtypeText', 'enquiry_name', 0, 'Enquiry name', '{"size":0,"maxlength":2048}'),
(115, 'FieldtypeText', 'enquiry_email', 0, 'Enquiry email', ''),
(116, 'FieldtypeText', 'enquiry_phone', 0, 'Enquiry phone', ''),
(117, 'FieldtypeTextarea', 'enquiry_content', 0, 'Enquiry demand', ''),
(118, 'FieldtypeTextarea', 'services_title', 0, 'Solutions title', '{"inputfieldClass":"InputfieldTextarea","rows":5}'),
(119, 'FieldtypeTextarea', 'services_subtitle', 0, 'Solutions subtitle', '{"inputfieldClass":"InputfieldTinyMCE","rows":5,"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(120, 'FieldtypeTextarea', 'services_intro', 0, 'Solutions introduction', '{"inputfieldClass":"InputfieldTextarea","rows":5}'),
(121, 'FieldtypeTextarea', 'services_leftcontent', 0, 'Solutions left content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5,"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(147, 'FieldtypeTextarea', 'ACP_scripts_and_styles', 0, 'Scripts and styles for admin pages', '{"description":"Add the .js and .css URLs in this field textarea, one in each line. can be absolute or relative (relative is assumed from the site root eg: site\\/templates\\/styles\\/my.css)"}'),
(122, 'FieldtypeTextarea', 'services_rightcontent', 0, 'Solutions right content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5,"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(123, 'FieldtypeTextarea', 'services_lastcontent', 0, 'Solutions last content', '{"inputfieldClass":"InputfieldTextarea","rows":5,"textformatters":["TextformatterEntities"],"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(124, 'FieldtypeText', 'bottom_linkenquiry', 0, 'Bottom enquiry link', '{"size":0,"maxlength":2048}'),
(125, 'FieldtypeText', 'first_title', 0, 'First title', '{"size":0,"maxlength":2048}'),
(126, 'FieldtypeText', 'left_title', 0, 'Left title', ''),
(127, 'FieldtypeTextarea', 'left_content', 0, 'Left content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5,"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(128, 'FieldtypeText', 'right_title', 0, 'Right title', ''),
(129, 'FieldtypeTextarea', 'right_content', 0, 'Right content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5,"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(130, 'FieldtypeText', 'second_head', 0, 'Second head title', ''),
(131, 'FieldtypeTextarea', 'second_subtitle', 0, 'second_subtitle', '{"textformatters":["TextformatterEntities"],"inputfieldClass":"InputfieldTextarea","rows":5,"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(132, 'FieldtypeTextarea', 'second_left_content', 0, 'Second left content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5,"theme_advanced_buttons1":"formatselect,|,bold,italic,|,bullist,numlist,|,link,unlink,|,image,|,code,|,fullscreen","theme_advanced_blockformats":"p,h2,h3,h4,blockquote,pre,code","plugins":"inlinepopups,safari,table,media,paste,fullscreen,preelementfix","valid_elements":"@[id|class],a[href|target|name],strong\\/b,em\\/i,br,img[src|id|class|width|height|alt],ul,ol,li,p[class],h2,h3,h4,blockquote,-p,-table[border=0|cellspacing|cellpadding|width|frame|rules|height|align|summary|bgcolor|background|bordercolor],-tr[rowspan|width|height|align|valign|bgcolor|background|bordercolor],tbody,thead,tfoot,#td[colspan|rowspan|width|height|align|valign|bgcolor|background|bordercolor|scope],#th[colspan|rowspan|width|height|align|valign|scope],pre,code"}'),
(133, 'FieldtypeTextarea', 'second_right_content', 0, 'Second right content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(134, 'FieldtypeText', 'third_header', 0, 'Third header', ''),
(135, 'FieldtypeText', 'fourth_header', 0, 'Fourth header', '{"size":0,"maxlength":2048}'),
(136, 'FieldtypeTextarea', 'second_col1_content', 0, 'Second Column 1 Content', '{"description":"Column 1''s content ","inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(137, 'FieldtypeText', 'second_col1_title', 0, 'Second Column 1 Title', '{"description":"Col 1 title display in the current page","size":0,"maxlength":2048}'),
(138, 'FieldtypeTextarea', 'second_col2_content', 0, 'Column 2 Content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(139, 'FieldtypeText', 'second_col2_title', 0, 'Column 2 Title', '{"size":0,"maxlength":2048}'),
(140, 'FieldtypeTextarea', 'second_col3_content', 0, 'Column 3 Content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(141, 'FieldtypeText', 'second_col3_title', 0, 'Column 3 Title', '{"size":0,"maxlength":2048}'),
(142, 'FieldtypeTextarea', 'second_col4_content', 0, 'Column 4 Content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(143, 'FieldtypeText', 'second_col4_title', 0, 'Column 4 Title', '{"size":0,"maxlength":2048}'),
(144, 'FieldtypeImage', 'right_image', 0, 'Right Image', '{"extensions":"gif jpg jpeg png","maxFiles":1,"inputfieldClass":"InputfieldImage","descriptionRows":1,"fileSchema":2}'),
(145, 'FieldtypeImage', 'left_image', 0, 'Left image', '{"extensions":"gif jpg jpeg png","maxFiles":1,"inputfieldClass":"InputfieldImage","descriptionRows":1,"fileSchema":2}'),
(146, 'FieldtypeImage', 'features_images', 0, 'Features images', '{"extensions":"gif jpg jpeg png","maxFiles":4,"inputfieldClass":"InputfieldImage","descriptionRows":1,"fileSchema":2}'),
(148, 'FieldtypeTextarea', 'faq_question', 0, 'FAQ Question', ''),
(149, 'FieldtypeTextarea', 'faq_answer', 0, 'FAQ Answer', ''),
(150, 'FieldtypeText', 'news_title', 0, 'News title', ''),
(151, 'FieldtypeTextarea', 'news_description', 0, 'News article', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(152, 'FieldtypeDatetime', 'news_datetime', 0, 'News date', '{"dateOutputFormat":"d.m.Y","size":25,"datepicker":3,"_dateInputFormat":"Y-m-d","dateInputFormat":"Y-m-d","_dateOutputFormat":"d.m.Y","defaultToday":1}'),
(154, 'FieldtypeText', 'services_quote', 0, 'Solutions quote', '{"size":0,"maxlength":2048}'),
(155, 'FieldtypeText', 'services_quote_author', 0, 'Solutions quote author', '{"size":0,"maxlength":2048}'),
(156, 'FieldtypeTextarea', 'faq_complementary_answer', 0, 'FAQ Complementary answer', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(162, 'FieldtypeText', 'first_content', 0, 'First content', ''),
(158, 'FieldtypeText', 'branch_number', 0, 'Branch phone number', ''),
(159, 'FieldtypeText', 'branch_place', 0, 'Branch place', '{"size":0,"maxlength":2048}'),
(160, 'FieldtypeText', 'branch_address', 0, 'Branch Address', ''),
(161, 'FieldtypeText', 'branch_city_state_postcode', 0, 'Branch City / State / Postcode', ''),
(163, 'FieldtypeTextarea', 'second_content', 0, 'Second content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(164, 'FieldtypeTextarea', 'third_content', 0, 'Third content', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}'),
(165, 'FieldtypeText', 'email_field', 0, 'Email field', ''),
(166, 'FieldtypeCheckbox', 'enquiry_answered', 0, 'Enquiry answered?', ''),
(167, 'FieldtypeTextarea', 'solution_left2', 0, 'Solutions Left Content 2', '{"inputfieldClass":"InputfieldTinyMCE","rows":5}');

-- --------------------------------------------------------

--
-- Table structure for table `field_acp_scripts_and_styles`
--

CREATE TABLE IF NOT EXISTS `field_acp_scripts_and_styles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_background_image`
--

CREATE TABLE IF NOT EXISTS `field_background_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_body`
--

CREATE TABLE IF NOT EXISTS `field_body` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_body`
--

INSERT INTO `field_body` (`pages_id`, `data`) VALUES
(27, '<h3>The page you were looking for is not found.</h3>\r\n<p>Please use our search engine or navigation above to find the page.</p>'),
(1, '<h2>What is ProcessWire?</h2><p>ProcessWire gives you full control over your fields, templates and markup. It provides a powerful template system that works the way you do. Not to mention, ProcessWire''s API makes working with your content easy and enjoyable. <a href="http://processwire.com">Learn more</a></p><h2>Basic Site Profile</h2><p>This is a basic starter site for you to use in developing your own site. There are a few pages here to serve as examples, but this site profile does not make any attempt to demonstrate all that ProcessWire can do. To learn more or ask questions, visit the <a href="http://www.processwire.com/talk/" target="_blank">ProcessWire forums</a>. If you are building a new site, this basic profile is a good place to start. You may use these existing templates and design as they are, or you may replace them entirely. <a href="./templates/">Read more</a></p><h2>Browse the Site</h2>');

-- --------------------------------------------------------

--
-- Table structure for table `field_bottom_linkenquiry`
--

CREATE TABLE IF NOT EXISTS `field_bottom_linkenquiry` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_bottom_linkenquiry`
--

INSERT INTO `field_bottom_linkenquiry` (`pages_id`, `data`) VALUES
(1013, 'Organise a live demo'),
(1014, 'Organise a live demo'),
(1017, 'Organise a live demo'),
(1021, 'Organise a live demo'),
(1018, 'Organise a live demo'),
(1019, 'Organise a live demo'),
(1020, 'Organise a live demo'),
(1025, 'Organise a live demo');

-- --------------------------------------------------------

--
-- Table structure for table `field_branch_address`
--

CREATE TABLE IF NOT EXISTS `field_branch_address` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_branch_address`
--

INSERT INTO `field_branch_address` (`pages_id`, `data`) VALUES
(1064, '32 Turbot Street');

-- --------------------------------------------------------

--
-- Table structure for table `field_branch_city_state_postcode`
--

CREATE TABLE IF NOT EXISTS `field_branch_city_state_postcode` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_branch_city_state_postcode`
--

INSERT INTO `field_branch_city_state_postcode` (`pages_id`, `data`) VALUES
(1064, 'Brisbane QLD 4000');

-- --------------------------------------------------------

--
-- Table structure for table `field_branch_number`
--

CREATE TABLE IF NOT EXISTS `field_branch_number` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_branch_number`
--

INSERT INTO `field_branch_number` (`pages_id`, `data`) VALUES
(1064, '(07) 3040 2111'),
(1065, '(02) 8091 7333'),
(1066, '(03) 9028 8222');

-- --------------------------------------------------------

--
-- Table structure for table `field_branch_place`
--

CREATE TABLE IF NOT EXISTS `field_branch_place` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_branch_place`
--

INSERT INTO `field_branch_place` (`pages_id`, `data`) VALUES
(1064, 'Level 27 Santos Place');

-- --------------------------------------------------------

--
-- Table structure for table `field_col1_content`
--

CREATE TABLE IF NOT EXISTS `field_col1_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_col1_content`
--

INSERT INTO `field_col1_content` (`pages_id`, `data`) VALUES
(1, 'Proven to reduce investigation time frames by 50% or more. Increase capacity and capability of front line services through innovative investigative technology. Do more (investigations) with less (resources).'),
(1013, '<ul class="circle list"><li>Reduce costs associated with prolonged, unsuccessful or poorly managed inspections or investigations</li><li>The small, per-user, annual fee for using COMtrac is a very small price to pay when compared with the efficiency and staff productivity gains that result</li></ul>'),
(1014, '<ul class="plain list"><li>Generates an element based investigation plan.</li><li>Real time analysis of the evidentiary state of investigations.</li><li>Self generating electronic brief of evidence.</li><li>Automatically prepares investigator witness statements.</li><li>Stores and manages evidence.</li><li>Map investigative activity to lawful authority.</li><li>Identifies evidence shortfalls and potential defences.</li><li>Maps evidence to offences, elements and proofs.</li><li>Generates business intelligence for regulatory reporting.</li><li>Integrates with most IT support systems, and usable on mobile Apple and Android.</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_col1_title`
--

CREATE TABLE IF NOT EXISTS `field_col1_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_col1_title`
--

INSERT INTO `field_col1_title` (`pages_id`, `data`) VALUES
(1, 'Increase Efficiency'),
(1013, 'Reduce Costs'),
(1014, 'For Investigators');

-- --------------------------------------------------------

--
-- Table structure for table `field_col2_content`
--

CREATE TABLE IF NOT EXISTS `field_col2_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_col2_content`
--

INSERT INTO `field_col2_content` (`pages_id`, `data`) VALUES
(1, 'Replace individual  evidence and brief management practices with consistent strategic methodologies. Proven to reduce risk associated with investigations through technology driven pathways.'),
(1013, '<ul class="circle list"><li>Investigators or other staff need only enter simple data and upload exhibits into COMtrac – the system does the rest</li><li>Save over 50% of staff time by automating the administrative functions of an inspection or investigation</li><li>Share the case load with other investigators in remote locations</li></ul>'),
(1014, '<ul class="plain list"><li>Generates a comprehensive Inspection or audit plan for investigators.</li><li>Produces detailed scope for inspections or audits.</li><li>Provides procedural advice for conducting inspections.</li><li>Outlines evidence sources/test to seek during inspections to confirm compliance.</li><li>Creates inspection checklists and inspection input areas (mapped against inspection conditions).</li><li>Automatically produces non-compliance notice for entity.</li><li>Generates a wide range of compliance reports.</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_col2_title`
--

CREATE TABLE IF NOT EXISTS `field_col2_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_col2_title`
--

INSERT INTO `field_col2_title` (`pages_id`, `data`) VALUES
(1, 'Reduce Risk'),
(1013, 'Simplifies & Saves Time'),
(1014, 'For Inspectors');

-- --------------------------------------------------------

--
-- Table structure for table `field_col3_content`
--

CREATE TABLE IF NOT EXISTS `field_col3_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_col3_content`
--

INSERT INTO `field_col3_content` (`pages_id`, `data`) VALUES
(1, 'Increase quality of investigations through evidence to offence element mapping, real time evidence evaluation, automated brief checking and event chronologies.'),
(1013, '<ul class="circle list"><li>COMtrac automatically elementises all offences – resulting in consistent and strategic inspection or investigative and brief management processes</li><li>Increase regulatory efficiency with COMtrac managing the administrative burdens of your inspections and investigations</li><li>Use of intuitive reporting to monitor case load, efficiency and effectiveness</li></ul>'),
(1014, '<ul class="plain list"><li>Customisable manager dashboard with at a glance team overviews, and summaries of each investigators case load, current status of inspections or investigations.</li><li>Ability to create business intelligence reports for reporting on regulatory outcomes.</li><li>Back end documents can be customised to meet your organisational needs.</li><li>No major capital purchases required for software, installation or build. COMtrac is a flexible web based application designed to meet your individual needs.</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_col3_title`
--

CREATE TABLE IF NOT EXISTS `field_col3_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_col3_title`
--

INSERT INTO `field_col3_title` (`pages_id`, `data`) VALUES
(1, 'Improve Quality'),
(1013, 'Increase Productivity'),
(1014, 'For Management');

-- --------------------------------------------------------

--
-- Table structure for table `field_col4_content`
--

CREATE TABLE IF NOT EXISTS `field_col4_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_col4_content`
--

INSERT INTO `field_col4_content` (`pages_id`, `data`) VALUES
(1, 'Electronic briefs of evidence, investigator statements, and other compliance reports are built systematically and automatically as investigation progresses.'),
(1013, '<ul class="circle list"><li>Avoid reputational harm from poor practices through a streamlined and professional approach</li><li>Decrease legal risks associated with investigations</li></ul>'),
(1014, '<ul class="plain list"><li>Contains prosecutor’s analytical tools, which assesses strength of evidence.</li><li>Real time analysis of the evidentiary state of inspections or investigations.</li><li>Electronic brief of evidence with ability to automate separation of charges or offenders.</li><li>Electronic brief of evidence compatible with all Windows and Apple operating systems.</li><li>Courtroom brief of evidence navigation.</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_col4_title`
--

CREATE TABLE IF NOT EXISTS `field_col4_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_col4_title`
--

INSERT INTO `field_col4_title` (`pages_id`, `data`) VALUES
(1, 'Electronic Evidence Briefs'),
(1013, 'Electronic Evidence Briefs'),
(1014, 'For Prosecutors');

-- --------------------------------------------------------

--
-- Table structure for table `field_display_keyfeatures`
--

CREATE TABLE IF NOT EXISTS `field_display_keyfeatures` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_display_keyfeatures`
--

INSERT INTO `field_display_keyfeatures` (`pages_id`, `data`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `field_email`
--

CREATE TABLE IF NOT EXISTS `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_email`
--

INSERT INTO `field_email` (`pages_id`, `data`) VALUES
(41, 'mickael@digital8.com.au');

-- --------------------------------------------------------

--
-- Table structure for table `field_email_field`
--

CREATE TABLE IF NOT EXISTS `field_email_field` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_email_field`
--

INSERT INTO `field_email_field` (`pages_id`, `data`) VALUES
(1067, 'melmaleh@gmail.com'),
(1068, 'mike@digital8.com.au');

-- --------------------------------------------------------

--
-- Table structure for table `field_enquiry_answered`
--

CREATE TABLE IF NOT EXISTS `field_enquiry_answered` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` tinyint(4) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_enquiry_answered`
--

INSERT INTO `field_enquiry_answered` (`pages_id`, `data`) VALUES
(1039, 1);

-- --------------------------------------------------------

--
-- Table structure for table `field_enquiry_bottom`
--

CREATE TABLE IF NOT EXISTS `field_enquiry_bottom` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_enquiry_company`
--

CREATE TABLE IF NOT EXISTS `field_enquiry_company` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_enquiry_company`
--

INSERT INTO `field_enquiry_company` (`pages_id`, `data`) VALUES
(1039, 'Digital8'),
(1069, 'Digital8'),
(1070, 'DigitalContact'),
(1071, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `field_enquiry_content`
--

CREATE TABLE IF NOT EXISTS `field_enquiry_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_enquiry_content`
--

INSERT INTO `field_enquiry_content` (`pages_id`, `data`) VALUES
(1039, 'TEST Enquiry'),
(1069, 'Test From Home Enquiry'),
(1070, 'Test From Contact page'),
(1071, '045615601');

-- --------------------------------------------------------

--
-- Table structure for table `field_enquiry_email`
--

CREATE TABLE IF NOT EXISTS `field_enquiry_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_enquiry_email`
--

INSERT INTO `field_enquiry_email` (`pages_id`, `data`) VALUES
(1039, 'mickael@digital8.com.au'),
(1069, 'mickael@digital8.com.au'),
(1070, 'mike@digital8.com.au'),
(1071, 'melmaleh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `field_enquiry_name`
--

CREATE TABLE IF NOT EXISTS `field_enquiry_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_enquiry_name`
--

INSERT INTO `field_enquiry_name` (`pages_id`, `data`) VALUES
(1039, 'Mike Test'),
(1069, 'Mike FromHome'),
(1070, 'Mike FromContact'),
(1071, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `field_enquiry_phone`
--

CREATE TABLE IF NOT EXISTS `field_enquiry_phone` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_enquiry_phone`
--

INSERT INTO `field_enquiry_phone` (`pages_id`, `data`) VALUES
(1039, '0105405405'),
(1069, '0401505610'),
(1070, '04180564106'),
(1071, '50056');

-- --------------------------------------------------------

--
-- Table structure for table `field_faq_answer`
--

CREATE TABLE IF NOT EXISTS `field_faq_answer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_faq_answer`
--

INSERT INTO `field_faq_answer` (`pages_id`, `data`) VALUES
(1030, 'COMtrac is for any agency, which has a role or responsibility for conducting criminal, statutory, civil or internal investigations, who wants structured and consistent investigations. '),
(1049, 'COMtrac can be hosted on our secure servers with Web24 which have the following certified web security measures. Or alternatively, COMtrac can be hosted your own agency intranet servers.'),
(1050, 'We understand the importance of security. COMtrac''s data centre, network and system security is tightly controlled to provide you with peace of mind.'),
(1051, 'For agency based clients Investigation Management Australia can provide an optional support package which includes: '),
(1052, 'COMtrac patented design is applicable to all government and private sector agencies.  The only customisation is the input of client agency legislation, offences and authorised investigative powers.  This can be done through the administration area by your agency, or IMA can provide a consultancy service to elementise offences and map legislative or administrative evidence gathering powers to investigative task.'),
(1053, 'Yes. COMtrac is web based Investigation Management system. It’s build using latest Microsoft web technologies: ASP.net, .Net 4.0, SQL Server 2008. COMtrac can be used over the internet as well as an intranet application on the local network. It can be run on the single server or in web farm environment. COMtrac includes a resource area where access to existing agency databases can be integrated with COMtrac.'),
(1054, 'It''s up to you!  There is an optional support agreement for agencies who require specific agency development.  For single or small user groups there are no maintenance fees.  IMA has a continued development and quality program where users will received free upgrades and improvements to their license database during the term of the licensed agreement.'),
(1055, 'All COMtrac licenses are on a minimum 12-month agreement.'),
(1056, 'Yes. The user management feature allows any tier level structure to be created for individual users so that they only have access to investigations which they oversee, manage or individually are assigned to investigate.'),
(1057, 'Because COMtrac is designed to work with all investigative processes it can be implemented immediately.  The only set up time is associated with the input of legislation and authorities into the administration area.'),
(1058, 'Yes. Forms can be adjusted if the user or client agency has entered into a 12-month support agreement, which provides three days a month of additional formatting or development.'),
(1059, 'Yes. COMtrac can be used on any mobile tablet.'),
(1060, 'COMtrac is suitable for any type of investigation including criminal, civil, administrative or disciplinary. The concept of COMtrac was developed through the patented technology of “Elementising Evidence” which can be applied to any investigation which has an objective based outcome.');

-- --------------------------------------------------------

--
-- Table structure for table `field_faq_complementary_answer`
--

CREATE TABLE IF NOT EXISTS `field_faq_complementary_answer` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_faq_complementary_answer`
--

INSERT INTO `field_faq_complementary_answer` (`pages_id`, `data`) VALUES
(1051, '<ul class="circle list"><li>Unlimited help desk support</li><li>Coverage Monday to Friday - 8:30 am - 5:30 pm AEST</li><li>Technical issue resolution via telephone, email and/or web</li><li>Preferred access to our support team</li><li>Office link wireless server database maintenance</li><li>On site technical support</li><li>Three days per month of additional development for specific client agency based features</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_faq_question`
--

CREATE TABLE IF NOT EXISTS `field_faq_question` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_faq_question`
--

INSERT INTO `field_faq_question` (`pages_id`, `data`) VALUES
(1030, 'Who is COMTrac for?'),
(1049, 'Where is the database located?'),
(1050, 'How is information security maintained?'),
(1051, 'What level of support is available?'),
(1052, 'Does it need to be customised to our agency?'),
(1053, 'Can COMtrac integrate with existing databases?'),
(1054, 'Are there ongoing maintenance fees?'),
(1055, 'What are the contract periods?'),
(1056, 'Can the database have different access and security levels?'),
(1057, 'How long is implementation time?'),
(1058, 'Can electronic forms be adjusted?'),
(1059, 'Does it work on mobile devices? '),
(1060, 'What type of investigations does it cater for?');

-- --------------------------------------------------------

--
-- Table structure for table `field_features_images`
--

CREATE TABLE IF NOT EXISTS `field_features_images` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_first_content`
--

CREATE TABLE IF NOT EXISTS `field_first_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_first_content`
--

INSERT INTO `field_first_content` (`pages_id`, `data`) VALUES
(1025, 'The vision of COMtrac is to replace individual investigative practices with consistent and systematic processes to ensure efficiency and excellence in investigations and inspections.');

-- --------------------------------------------------------

--
-- Table structure for table `field_first_title`
--

CREATE TABLE IF NOT EXISTS `field_first_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_first_title`
--

INSERT INTO `field_first_title` (`pages_id`, `data`) VALUES
(1027, 'Investment Management Australia Pty Ltd'),
(1025, 'Our Vision');

-- --------------------------------------------------------

--
-- Table structure for table `field_fourth_header`
--

CREATE TABLE IF NOT EXISTS `field_fourth_header` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_headline`
--

CREATE TABLE IF NOT EXISTS `field_headline` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_headline`
--

INSERT INTO `field_headline` (`pages_id`, `data`) VALUES
(1, 'COMTrac - Homepage');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_sectioncontent`
--

CREATE TABLE IF NOT EXISTS `field_home_sectioncontent` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_home_sectioncontent`
--

INSERT INTO `field_home_sectioncontent` (`pages_id`, `data`) VALUES
(1, 'COMtrac will revitalize front line services delivered by law enforcement and regulatory agencies by providing officers with the technology and operational tools, that until now have not been available. COMtrac provides a solution to the need to keep regulatory and law enforcement officers active in the community not behind desks preparing briefs of evidence and the escalating costs of investigations both to Government and the community. COMtrac enables officers to take a new path in their operational role to provide the community with a more efficient and effective law enforcement and regulatory service.');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_sectionintro`
--

CREATE TABLE IF NOT EXISTS `field_home_sectionintro` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_home_sectionintro`
--

INSERT INTO `field_home_sectionintro` (`pages_id`, `data`) VALUES
(1, 'COMtrac is the evolution of evidence brief management technology for law enforcement and regulatory agencies.');

-- --------------------------------------------------------

--
-- Table structure for table `field_home_sectiontitle`
--

CREATE TABLE IF NOT EXISTS `field_home_sectiontitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_home_sectiontitle`
--

INSERT INTO `field_home_sectiontitle` (`pages_id`, `data`) VALUES
(1, 'What is COMtrac?');

-- --------------------------------------------------------

--
-- Table structure for table `field_left_content`
--

CREATE TABLE IF NOT EXISTS `field_left_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_left_content`
--

INSERT INTO `field_left_content` (`pages_id`, `data`) VALUES
(1013, '<p>COMtrac is a logical and intuitive workflow tool which will significantly increase the effectiveness and efficiency of criminal, civil and administrative investigations and/or inspections. COMtrac is a unique product that reverse engineers from a brief of evidence or administrative decision.</p><p>COMtrac automatically elementises offences applying a practical and intuitive world-first project management approach. COMtrac is for any agency with a regulatory, administrative, fact finding or law enforcement or audit role.</p><p>COMtrac has been developed in Australia. A product of Investigation Management Australia - a company with over 50 years experience in policing, compliance, enforcement and regulation at the Local, State and Commonwealth level.</p>'),
(1014, '<ul class="plain list"><li>Simple, quick and easy to set up.</li><li>Entirely web based – no software to install or hardware to buy.</li><li>Fully expandable to cater for future change including bulk changes of staffs and mass updates to staff data.</li><li>Very simple; minimal user training required.</li><li>Compatible with PCs and Macs, tablets and other mobile devices.</li><li>Customisable with a company’s own logo, legislation and document requirements.</li><li>Scalable solution for organisations with thousands of users, or just a handful.</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_left_image`
--

CREATE TABLE IF NOT EXISTS `field_left_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_left_image`
--

INSERT INTO `field_left_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1014, 'screenshot-ipad.png', 0, '', '2013-12-17 01:49:32', '2013-12-17 01:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `field_left_title`
--

CREATE TABLE IF NOT EXISTS `field_left_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_left_title`
--

INSERT INTO `field_left_title` (`pages_id`, `data`) VALUES
(1013, 'Best practice inspections, investigations, compliance & enforcement is here.'),
(1014, 'Software Features');

-- --------------------------------------------------------

--
-- Table structure for table `field_news_datetime`
--

CREATE TABLE IF NOT EXISTS `field_news_datetime` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_news_datetime`
--

INSERT INTO `field_news_datetime` (`pages_id`, `data`) VALUES
(1042, '2013-12-16 00:00:00'),
(1043, '2013-11-08 00:00:00'),
(1044, '2013-12-01 00:00:00'),
(1045, '2013-11-02 00:00:00'),
(1046, '2013-09-09 00:00:00'),
(1047, '2013-07-17 00:00:00'),
(1048, '2013-03-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `field_news_description`
--

CREATE TABLE IF NOT EXISTS `field_news_description` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_news_description`
--

INSERT INTO `field_news_description` (`pages_id`, `data`) VALUES
(1045, '<p>The Environmental Sustainability Unit within NSW Resources &amp; Energy set to increase efficiency and effectiveness of site inspections, audits and investigations into breaches of Mining Act 1992 and Petroleum (Onshore) Act 1991.</p>'),
(1046, '<p>COMtrac to be utilized by ACTPLA for investigating complaints about breaches of the Planning and Development Act 2007, Construction Occupations (Licensing) Act 2004 and Building Act 2004.</p>'),
(1047, '<p>NSW Trade &amp; Investment (Mine Safety) take up COMtrac as the investigation and brief management system for investigations into breaches of workplace health and safety legislation.</p>'),
(1048, '<p>NT police commence trial of COMtrac as a solution for evidence and brief management.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_news_title`
--

CREATE TABLE IF NOT EXISTS `field_news_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_news_title`
--

INSERT INTO `field_news_title` (`pages_id`, `data`) VALUES
(1042, 'COMtrac now being used as the lead investigation system by the Queensland Police.'),
(1044, 'Hunt Migration now uses COMtrac for compiling legal briefs.'),
(1043, 'COMtrac enters the mining industry in NT, SA and NSW.'),
(1045, 'NSW Resources & Energy'),
(1046, 'ACT Planning & Land Authority'),
(1047, 'NSW Mine Safety Investigations'),
(1048, 'NT Police commence trial');

-- --------------------------------------------------------

--
-- Table structure for table `field_pass`
--

CREATE TABLE IF NOT EXISTS `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;

--
-- Dumping data for table `field_pass`
--

INSERT INTO `field_pass` (`pages_id`, `data`, `salt`) VALUES
(41, '/icl9HF.FdMqkVXoiEB34OlinFajNv2', '$2y$11$ZrNKo9lzOT9GuORswdpZxO'),
(40, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `field_permissions`
--

CREATE TABLE IF NOT EXISTS `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_permissions`
--

INSERT INTO `field_permissions` (`pages_id`, `data`, `sort`) VALUES
(38, 32, 1),
(38, 34, 2),
(38, 35, 3),
(37, 36, 0),
(38, 36, 0),
(38, 50, 4),
(38, 51, 5),
(38, 52, 7),
(38, 53, 8),
(38, 54, 6);

-- --------------------------------------------------------

--
-- Table structure for table `field_process`
--

CREATE TABLE IF NOT EXISTS `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT '0',
  `data` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_process`
--

INSERT INTO `field_process` (`pages_id`, `data`) VALUES
(6, 17),
(3, 12),
(8, 12),
(9, 14),
(10, 7),
(11, 47),
(16, 48),
(300, 104),
(21, 50),
(29, 66),
(23, 10),
(304, 138),
(31, 136),
(22, 76),
(30, 68),
(303, 129),
(2, 87),
(302, 121),
(301, 109),
(28, 76),
(1075, 150);

-- --------------------------------------------------------

--
-- Table structure for table `field_right_content`
--

CREATE TABLE IF NOT EXISTS `field_right_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_right_content`
--

INSERT INTO `field_right_content` (`pages_id`, `data`) VALUES
(1013, '<ul class="circle list"><li>Generates an element based investigation plan</li><li>Real time analysis of the evidentiary state of investigations</li><li>Self generating electronic brief of evidence</li><li>Automatically prepares investigator witness statements</li><li>Stores and manages evidence</li><li>Maps investigative activity to lawful authority</li><li>Identifies evidence shortfalls and potential defences</li><li>Maps evidence to offences, elements and proofs</li><li>Contains prosecutors analytical tool</li><li>Generates business intelligence for regulatory reporting</li></ul>'),
(1014, '<p class="introduction main">COMtrac was designed and built to be accessible on both desktop computers and also mobile devices (Windows, iOS &amp; Android).</p><p>This includes the ability to record photographs, video and audio on mobile devices directly into the COMtrac application.</p><p>Specific features of COMTrac can also be included as mobile applications, which are not dependent on Internet connectivity and can be readily synced to primary database from the mobile applications.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_right_image`
--

CREATE TABLE IF NOT EXISTS `field_right_image` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(255) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  FULLTEXT KEY `description` (`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_right_image`
--

INSERT INTO `field_right_image` (`pages_id`, `data`, `sort`, `description`, `modified`, `created`) VALUES
(1014, 'screenshot-admin.png', 0, '', '2013-12-17 01:49:16', '2013-12-17 01:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `field_right_title`
--

CREATE TABLE IF NOT EXISTS `field_right_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_right_title`
--

INSERT INTO `field_right_title` (`pages_id`, `data`) VALUES
(1013, 'At a Glance'),
(1014, 'Mobile Application');

-- --------------------------------------------------------

--
-- Table structure for table `field_roles`
--

CREATE TABLE IF NOT EXISTS `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`sort`),
  KEY `data` (`data`,`pages_id`,`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_roles`
--

INSERT INTO `field_roles` (`pages_id`, `data`, `sort`) VALUES
(40, 37, 0),
(41, 37, 0),
(41, 38, 1);

-- --------------------------------------------------------

--
-- Table structure for table `field_second_col1_content`
--

CREATE TABLE IF NOT EXISTS `field_second_col1_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_col1_content`
--

INSERT INTO `field_second_col1_content` (`pages_id`, `data`) VALUES
(1014, '<p>Is a web based Inspection, Investigation and Brief Management system.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_second_col1_title`
--

CREATE TABLE IF NOT EXISTS `field_second_col1_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_second_col2_content`
--

CREATE TABLE IF NOT EXISTS `field_second_col2_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_col2_content`
--

INSERT INTO `field_second_col2_content` (`pages_id`, `data`) VALUES
(1014, '<p>Built using latest Microsoft web technologies: ASP.net, .Net 4.0, SQL Server 2008.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_second_col2_title`
--

CREATE TABLE IF NOT EXISTS `field_second_col2_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_second_col3_content`
--

CREATE TABLE IF NOT EXISTS `field_second_col3_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_col3_content`
--

INSERT INTO `field_second_col3_content` (`pages_id`, `data`) VALUES
(1014, '<p>Can be used over the Internet as well as an intranet application on the local network. It can be run on the single server or in web farm environment.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_second_col3_title`
--

CREATE TABLE IF NOT EXISTS `field_second_col3_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_second_col4_content`
--

CREATE TABLE IF NOT EXISTS `field_second_col4_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_col4_content`
--

INSERT INTO `field_second_col4_content` (`pages_id`, `data`) VALUES
(1014, '<p>Includes a resource area where access to existing agency databases can be integrated with COMtrac.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_second_col4_title`
--

CREATE TABLE IF NOT EXISTS `field_second_col4_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_second_content`
--

CREATE TABLE IF NOT EXISTS `field_second_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_content`
--

INSERT INTO `field_second_content` (`pages_id`, `data`) VALUES
(1025, '<ul class="circle list"><li>Provide our clients with a holistic solution for inspection, investigation and brief management.</li><li>Create or compliment existing case, inspection or investigation management systems with innovative brief management software.</li><li>Continue to research and deliver best practice inspection and investigation management solutions.</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_second_head`
--

CREATE TABLE IF NOT EXISTS `field_second_head` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_head`
--

INSERT INTO `field_second_head` (`pages_id`, `data`) VALUES
(1013, 'What is COMtrac?'),
(1014, 'Integration features'),
(1025, 'Our Mission');

-- --------------------------------------------------------

--
-- Table structure for table `field_second_left_content`
--

CREATE TABLE IF NOT EXISTS `field_second_left_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_left_content`
--

INSERT INTO `field_second_left_content` (`pages_id`, `data`) VALUES
(1013, '<p>Quite simply, COMtrac™ re-engineers investigative and regulatory processes, building key documents (i.e. an Authorised Officer Witness Statement, Exhibit Register etc) and ''outcomes'' (e.g. Brief of Evidence, Compliance Report) from the commencement of an inspection or investigation.</p><p>COMtrac provides an intuitive and practical inspection, investigation and brief management system conceived out of real investigation and policing experience and through an extensive analysis of investigative best practices. Many case management systems are about reporting the investigations. COMtrac™ is all about supporting the inspections and investigations.</p><p>COMtrac will save time, effort and resources, while ensuring greater legal certainty, and a more consistent and robust work flow approach.</p>'),
(1014, '<p class="introduction">For agencies considering replacing hard copy notebooks, COMTrac can also have integrated into the system an electronic notebook (eNB). The eNB has the following features;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_second_right_content`
--

CREATE TABLE IF NOT EXISTS `field_second_right_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_right_content`
--

INSERT INTO `field_second_right_content` (`pages_id`, `data`) VALUES
(1013, '<p>COMtrac™ is not a complaints management database. COMtrac™ specifically assists law enforcement and regulatory officers ‘manage and assess’ inspections and investigations by providing a ‘best practice’ workflow.</p><p>Practical features of COMtrac™ include; creating inspection and investigation plans, automating the elements of offences, creating contemporaneous running sheets, automating investigators statements, evidence analysis and exhibit registration. COMtrac™ generates the brief of evidence as the investigation progresses – saving investigators time and administrative efforts. COMtrac™ also provides a range of functions to assist team leaders and managers to oversee the progress and state of inspections or investigations; the system may also be used to present evidence in legal proceedings through the provision of an electronic brief of evidence.</p>'),
(1014, '<ul class="circle list"><li>Activity entries made into the running sheet are automatically recorded into the eNB along with links to any associated exhibits recorded against those activities</li><li>Officers can manually enter notes into the eNB</li><li>Officers can create audio files of interviews or other field activities which are automatically uploaded into the eNB with a self generating time and date reference</li><li>Officers can take photographs or videos which are automatically uploaded into the eNB with a self generating time and date reference</li><li>Officers can record all other officers and person present during any activity</li><li>Officers can use the search engine to search for key events of activities</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_second_subtitle`
--

CREATE TABLE IF NOT EXISTS `field_second_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_second_subtitle`
--

INSERT INTO `field_second_subtitle` (`pages_id`, `data`) VALUES
(1013, 'With an Australian provisional patent granted for a unique ''investigation management method and system'' COMtrac is an innovative and intuitive product that will increase the efficiency and effectiveness of your investigation and/or inspection program.'),
(1014, 'COMtrac can be hosted on your own agency intranet or where required on our secure servers with Web24, which have the following security & certification\r\n												');

-- --------------------------------------------------------

--
-- Table structure for table `field_services_intro`
--

CREATE TABLE IF NOT EXISTS `field_services_intro` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_services_intro`
--

INSERT INTO `field_services_intro` (`pages_id`, `data`) VALUES
(1017, 'COMtrac automates the evidence gathering process so that investigators statements, briefs of evidence, investigation reports and evidence matrices are automatically built as the investigation progresses.'),
(1021, 'For agencies considering replacing hard copy notebooks, COMtrac can also have integrated into the system an electronic notebook (eNB).  The eNB has the following features;'),
(1018, 'As with criminal investigations, COMtrac ensures that administrative investigations are planned and carried out with a clear strategic direction. On selecting the relevant breach of the code of conduct, employment agreement or workplace legislation, COMtrac automatically creates an investigation plan so the key objectives (or required points of proof) form the foundation of the administrative investigation. This ensures that the information and evidence gathered, upon which administrative action is taken, is mapped and recorded accurately and effectively.'),
(1019, 'Investigators then map the information and evidence against each category as the investigation progresses.  As the investigation progresses the incident report is automatically built in the background, which identifies which contributory areas have been examined and the relevant findings.'),
(1020, 'COMtrac provides a strategic platform under which the regulatory activities associated with inspections are planned, undertaken and reported on.  The key features of COMtrac’s inspection and audit system are:');

-- --------------------------------------------------------

--
-- Table structure for table `field_services_lastcontent`
--

CREATE TABLE IF NOT EXISTS `field_services_lastcontent` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_services_lastcontent`
--

INSERT INTO `field_services_lastcontent` (`pages_id`, `data`) VALUES
(1021, 'A report can be created and exported based on selected parameters requested for production in any proceedings as contemporaneous notes.'),
(1020, 'Supported by the electronic notebook (ENB) mobile device application, COMtrac will increase the efficiency and effectiveness of all inspections, simple or complex.  In the ever-increasing environment of reduced resources, COMtrac provides an evolutionary environment where the capacity and capability of regulatory agencies can be increased while at the same time reducing the administrative burden on front line inspectors.');

-- --------------------------------------------------------

--
-- Table structure for table `field_services_leftcontent`
--

CREATE TABLE IF NOT EXISTS `field_services_leftcontent` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_services_leftcontent`
--

INSERT INTO `field_services_leftcontent` (`pages_id`, `data`) VALUES
(1014, '<ul class="circle list"><li>24x7 manned security office and personnel entrance check-point</li><li>Perimeter vehicular security check-points</li><li>CCTV monitoring and capture of perimeter and internal access</li><li>Proximity card access points to data hall and other secure areas</li><li>Certification to ISO-27001 Information Systems Security Management</li><li>Certification to ASIO T4 Intruder Resistance</li></ul>'),
(1017, '<p>The electronic brief of evidence and evidence chronology provides a state of the art delivery and presentation tool for judicial proceedings. In addition to the electronic brief of evidence, COMtrac can also produce a complete indexed PDF version of the brief of evidence for hard copy delivery.</p>'),
(1021, '<ul class="circle list"><li>Activity entries made into the running sheet are automatically recorded into the eNB along with links to any associated exhibits recorded against those activities</li><li>Officers can manually enter notes into the eNB</li><li>Officers can create audio files of interviews or other field activities which are automatically uploaded into the eNB with a self generating time and date reference</li><li>Officers can take photographs or videos which are automatically uploaded into the eNB with a self generating time and date reference</li></ul>'),
(1018, '<p>COMtrac will record and track investigative activity and automate the investigation report athat will allowing administrative decision makers to select the most appropriate and defensible action in response to nature and seriousness of the breach.</p>'),
(1019, '<p>COMtrac will provide an environment where all aspects of incident investigations including gathering evidence, determining causes and identifying corrective actions can be recorded and managed efficiently. Corrective action can be a costly exercise for any agency or company and subsequently the decision to implement new preventative measures (or take administrative action against responsible persons) should be an ‘evidence’ based decision.</p>'),
(1020, '<ul class="circle list"><li>Automatically sets conditions to guide the audit/inspection</li><li>Provides advice on the type of evidence and procedures that should be used against each condition subject to the audit/inspection</li><li>Allows for an inspector to record observations, causes of any non-compliance, level of compliance, action taken, compliance behaviour</li><li>Designed to work on field based applications such as iPads, Windows or Android tablets, as well as desktop computers</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_services_quote`
--

CREATE TABLE IF NOT EXISTS `field_services_quote` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_services_quote`
--

INSERT INTO `field_services_quote` (`pages_id`, `data`) VALUES
(1017, 'Simplification of processes is the ultimate form of sophistication.');

-- --------------------------------------------------------

--
-- Table structure for table `field_services_quote_author`
--

CREATE TABLE IF NOT EXISTS `field_services_quote_author` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_services_quote_author`
--

INSERT INTO `field_services_quote_author` (`pages_id`, `data`) VALUES
(1017, 'Steve Jobs 2011');

-- --------------------------------------------------------

--
-- Table structure for table `field_services_rightcontent`
--

CREATE TABLE IF NOT EXISTS `field_services_rightcontent` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_services_rightcontent`
--

INSERT INTO `field_services_rightcontent` (`pages_id`, `data`) VALUES
(1014, '<p>COMtrac also has a built in security to protect data against unauthorised access through third party programs. COMtrac uses a SQL Server, Symmetric Key, and Column level encryption to protect sensitive data stored in the database. In short, this means that any third party that does not have direct access to the COMtrac database, if uses a third party program to breach the system will only be able to view encrypted and unintelligible data.</p>'),
(1017, '<p>Supported by the electronic notebook (eNB) mobile device application, COMtrac will increase the efficiency and effectiveness of all criminal investigations, simple or complex. In the ever-increasing environment of reduced resources, COMtrac provides an evolutionary environment where the capacity and capability of law enforcement and regulatory agencies is increased while at the same time reducing the administrative burden on front line investigators.</p>'),
(1021, '<ul class="circle list"><li>Sketches or diagrams can be drawn into notebook entries</li><li>Officers can record all other officers and person present during any activity</li><li>Officers can use the search engine to search for key events of activities</li><li>The eNB can also record the GEO code which identifies the location where the notes and exhibits were recorded which assist in maintaining integrity of officers notes.</li></ul>'),
(1018, '<p>COMtrac automates the evidence gathering process so that investigator statements, investigation reports and evidence matrices are automatically built as the investigation progresses. This allows investigators and managers the opportunity to make an informed decision at any point during the investigation to proceed, take action or even withdraw complaints.</p>'),
(1019, '<p>Supported by the electronic notebook (ENB) mobile device application for field based investigative activity, COMtrac will increase the efficiency and effectiveness of all incident investigations, simple or complex and ensure that corrective action is justifiable and defensible.</p>'),
(1020, '<ul class="circle list"><li>Automatically produces an electronic non-compliance notice</li><li>Automatically produces an audit/inspection report based on data captured during inspection – which can be emailed in the field</li><li>Allows for the production of business intelligence reports based on any categories relevant to the inspection</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_services_subtitle`
--

CREATE TABLE IF NOT EXISTS `field_services_subtitle` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_services_subtitle`
--

INSERT INTO `field_services_subtitle` (`pages_id`, `data`) VALUES
(1017, '<p>COMtrac creates investigation plans based on the elements (points of proof) of offences to which all investigative and evidence activity is mapped.</p><p>The patented ''investigation art'' provides a real time analysis of the evidentiary strength of the investigation from the case commencement through to court. This allows investigators, managers and legal officers to make strategic, evidence based decisions throughout the life of the investigation.</p>'),
(1021, '<p>COMtrac eNB was designed and built to ensure it can be accessed and utilised on both desktop computers and mobile devices (Windows, IOS &amp; Android).</p><p>COMtrac eNB includes the ability to record photographs, video and audio on mobile devices directly into the COMtrac application. All features of COMtrac can also be included as mobile applications, which are not dependent on Internet connectivity and can be readily synced to the primary database from the mobile applications.</p>'),
(1018, '<p>Although the standard of proof is lower, administrative investigations still need to be conducted in an environment that promotes a high level of professionalism and procedural fairness at all times.</p>'),
(1019, '<p>An incident investigation is often designed to determine whether there was a failure in one or more procedures, equipment, environment, and persons.</p><p>As with any investigation, the key to efficiency and effectiveness is to ensure that a strategic plan is created and followed throughout the life of the investigation.   COMtrac sets the investigation objectives to determine contributory factors that might fall under the categories of:</p><ul class="circle list"><li>Design</li><li>Behaviour</li><li>Environment</li><li>Management System</li></ul>'),
(1020, '<p>This is regardless as to whether the objective is to prove compliance or detect non-compliance to statutory instruments such as licenses, permits or other authorities under which a regulated entity might be operating.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_services_title`
--

CREATE TABLE IF NOT EXISTS `field_services_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_services_title`
--

INSERT INTO `field_services_title` (`pages_id`, `data`) VALUES
(1017, 'For law enforcement and regulatory investigations, COMtrac provides a platform, which ensures all investigations are conducted to a consistent methodology.'),
(1021, 'COMtrac electronic notebook (eNB) is a mobile based application for use by investigators, inspectors or auditors which provides a secure and efficient environment where notes and exhibits (audio, photo, video) can be captured in a contemporaneous manner.'),
(1018, 'Administrative investigations into misconduct or other breaches of workplace legislation are governed by the same principles of natural justice and procedural fairness as criminal investigations'),
(1019, 'Incident investigations primary objectives are not always to find fault but also to investigate incidents to determine immediate actions, root causes, corrective actions and communications to prevent a reoccurrence.  '),
(1020, 'Regulatory inspections or audits, like investigations, are an evidence-based activity.');

-- --------------------------------------------------------

--
-- Table structure for table `field_sidebar`
--

CREATE TABLE IF NOT EXISTS `field_sidebar` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_sidebar`
--

INSERT INTO `field_sidebar` (`pages_id`, `data`) VALUES
(1, '<h3>About ProcessWire</h3><p>ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients.</p><p><a href="http://processwire.com/about/" target="_blank">About ProcessWire</a><br /><a href="http://processwire.com/api/">Developer API</a><br /><a href="http://processwire.com/contact/">Contact Us</a><br /><a href="http://twitter.com/rc_d">Follow Us on Twitter</a></p>');

-- --------------------------------------------------------

--
-- Table structure for table `field_solution_left2`
--

CREATE TABLE IF NOT EXISTS `field_solution_left2` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `field_summary`
--

CREATE TABLE IF NOT EXISTS `field_summary` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_summary`
--

INSERT INTO `field_summary` (`pages_id`, `data`) VALUES
(1, 'ProcessWire is an open source CMS and web application framework aimed at the needs of designers, developers and their clients. ');

-- --------------------------------------------------------

--
-- Table structure for table `field_third_content`
--

CREATE TABLE IF NOT EXISTS `field_third_content` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_third_content`
--

INSERT INTO `field_third_content` (`pages_id`, `data`) VALUES
(1025, '<ul class="circle list"><li>Reduce legal and administrative risk associated with investigations and inspections</li><li>Increase professionalism through consistent proven investigative practices</li><li>Reduce time, effort and costs of investigative processes</li><li>Create support systems for investigators and inspectors</li></ul>');

-- --------------------------------------------------------

--
-- Table structure for table `field_third_header`
--

CREATE TABLE IF NOT EXISTS `field_third_header` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_third_header`
--

INSERT INTO `field_third_header` (`pages_id`, `data`) VALUES
(1013, 'Key Benefits'),
(1014, 'Security & Data Features'),
(1025, 'Our Goal');

-- --------------------------------------------------------

--
-- Table structure for table `field_title`
--

CREATE TABLE IF NOT EXISTS `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `field_title`
--

INSERT INTO `field_title` (`pages_id`, `data`) VALUES
(14, 'Edit Template'),
(15, 'Add Template'),
(12, 'Templates'),
(11, 'Templates'),
(19, 'Field groups'),
(20, 'Edit Fieldgroup'),
(16, 'Fields'),
(17, 'Fields'),
(18, 'Edit Field'),
(22, 'Setup'),
(3, 'Pages'),
(6, 'Add Page'),
(8, 'Page List'),
(9, 'Save Sort'),
(10, 'Edit Page'),
(21, 'Modules'),
(29, 'Users'),
(30, 'Roles'),
(2, 'Admin'),
(7, 'Trash'),
(27, '404 Page Not Found'),
(302, 'Insert Link'),
(23, 'Login'),
(304, 'Profile'),
(301, 'Empty Trash'),
(300, 'Search'),
(303, 'Insert Image'),
(28, 'Access'),
(31, 'Permissions'),
(32, 'Edit pages'),
(34, 'Delete pages'),
(35, 'Move pages (change parent)'),
(36, 'View pages'),
(50, 'Sort child pages'),
(51, 'Change templates on pages'),
(52, 'Administer users (role must also have template edit access)'),
(53, 'User can update profile/password'),
(54, 'Lock or unlock a page'),
(1, 'Home'),
(1015, 'FAQ'),
(1000, 'Search'),
(1014, 'Features'),
(1013, 'Why COMTrac?'),
(1017, 'Criminal Investigation Systems'),
(1016, 'Solutions'),
(1012, 'How it works'),
(1018, 'Administrative Investigation Systems'),
(1019, 'Incident Investigation Systems'),
(1020, 'Regulatory Inspection Systems'),
(1021, 'Electronic Notebook Application'),
(1022, 'Nationally Recognised Training'),
(1023, 'Company'),
(1024, 'Company Profile'),
(1025, 'Our Ethos'),
(1026, 'Blog'),
(1027, 'Contact'),
(1034, 'FAQ'),
(1030, 'Who is Comtrac for'),
(1031, 'Enquiries'),
(1032, 'FAQs'),
(1035, 'Newsletter Subscription'),
(1036, 'Blog'),
(1037, 'Mailer'),
(1038, 'News'),
(1039, 'Mike Test Digital8'),
(1040, 'Articles'),
(1042, 'COMtrac now being used as the lead investigation system by the Queensland Police.'),
(1043, 'COMtrac enters the mining industry in NT, SA and NSW.'),
(1044, 'Hunt Migration now uses COMtrac for compiling legal briefs.'),
(1045, 'NSW Resources & Energy'),
(1046, 'ACT Planning & Land Authority'),
(1047, 'NSW Mine Safety Investigations'),
(1048, 'NT Police commence trial'),
(1049, 'Where is the database located?'),
(1050, 'How is information security maintained?'),
(1051, 'What level of support is available?'),
(1052, 'Does it need to be customised to our agency?'),
(1053, 'Can COMtrac integrate with existing databases?'),
(1054, 'Are there ongoing maintenance fees?'),
(1055, 'What are the contract periods?'),
(1056, 'Can the database have different access and security levels?'),
(1057, 'How long is implementation time?'),
(1058, 'Can electronic forms be adjusted?'),
(1059, 'Does it work on mobile devices?'),
(1060, 'What type of investigations does it cater for?'),
(1061, 'Branches'),
(1064, 'Brisbane'),
(1065, 'Sydney'),
(1066, 'Melbourne'),
(1067, 'melmaleh@gmail.com'),
(1068, 'mike@digital8.com.au'),
(1069, 'Mike FromHome Digital8'),
(1070, 'Mike FromContact DigitalContact'),
(1071, 'test test'),
(1072, 'Branches'),
(1073, 'Enquiries'),
(1074, 'Subscriptions'),
(1075, 'Google Analytics'),
(1076, 'View Google Analytics Page');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=152 ;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `class`, `flags`, `data`) VALUES
(1, 'FieldtypeTextarea', 0, ''),
(2, 'FieldtypeNumber', 0, ''),
(3, 'FieldtypeText', 0, ''),
(4, 'FieldtypePage', 0, ''),
(30, 'InputfieldForm', 0, ''),
(6, 'FieldtypeFile', 0, ''),
(7, 'ProcessPageEdit', 1, ''),
(10, 'ProcessLogin', 0, ''),
(147, 'TextformatterPstripper', 1, ''),
(12, 'ProcessPageList', 0, '{"pageLabelField":"title","paginationLimit":25,"limit":50}'),
(121, 'ProcessPageEditLink', 1, ''),
(14, 'ProcessPageSort', 0, ''),
(15, 'InputfieldPageListSelect', 0, ''),
(117, 'JqueryUI', 1, ''),
(17, 'ProcessPageAdd', 0, ''),
(125, 'SessionLoginThrottle', 3, ''),
(122, 'InputfieldPassword', 0, ''),
(25, 'InputfieldAsmSelect', 0, ''),
(116, 'JqueryCore', 1, ''),
(27, 'FieldtypeModule', 0, ''),
(28, 'FieldtypeDatetime', 0, ''),
(29, 'FieldtypeEmail', 0, ''),
(108, 'InputfieldURL', 0, ''),
(32, 'InputfieldSubmit', 0, ''),
(33, 'InputfieldWrapper', 0, ''),
(34, 'InputfieldText', 0, ''),
(35, 'InputfieldTextarea', 0, ''),
(36, 'InputfieldSelect', 0, ''),
(37, 'InputfieldCheckbox', 0, ''),
(38, 'InputfieldCheckboxes', 0, ''),
(39, 'InputfieldRadios', 0, ''),
(40, 'InputfieldHidden', 0, ''),
(41, 'InputfieldName', 0, ''),
(43, 'InputfieldSelectMultiple', 0, ''),
(45, 'JqueryWireTabs', 0, ''),
(46, 'ProcessPage', 0, ''),
(47, 'ProcessTemplate', 0, ''),
(48, 'ProcessField', 0, ''),
(50, 'ProcessModule', 0, ''),
(114, 'PagePermissions', 3, ''),
(97, 'FieldtypeCheckbox', 1, ''),
(115, 'PageRender', 3, '{"clearCache":1}'),
(55, 'InputfieldFile', 0, ''),
(56, 'InputfieldImage', 0, ''),
(57, 'FieldtypeImage', 0, ''),
(60, 'InputfieldPage', 0, '{"inputfieldClasses":["InputfieldSelect","InputfieldSelectMultiple","InputfieldCheckboxes","InputfieldRadios","InputfieldAsmSelect","InputfieldPageListSelect","InputfieldPageListSelectMultiple"]}'),
(61, 'TextformatterEntities', 0, ''),
(145, 'TextformatterMarkdownExtra', 1, ''),
(146, 'TextformatterSmartypants', 1, ''),
(66, 'ProcessUser', 0, '{"showFields":["name","email","roles"]}'),
(67, 'MarkupAdminDataTable', 0, ''),
(68, 'ProcessRole', 0, '{"showFields":["name"]}'),
(76, 'ProcessList', 0, ''),
(78, 'InputfieldFieldset', 0, ''),
(79, 'InputfieldMarkup', 0, ''),
(80, 'InputfieldEmail', 0, ''),
(89, 'FieldtypeFloat', 1, ''),
(83, 'ProcessPageView', 0, ''),
(84, 'FieldtypeInteger', 0, ''),
(85, 'InputfieldInteger', 0, ''),
(86, 'InputfieldPageName', 0, ''),
(87, 'ProcessHome', 0, ''),
(90, 'InputfieldFloat', 0, ''),
(92, 'InputfieldTinyMCE', 0, ''),
(94, 'InputfieldDatetime', 0, ''),
(98, 'MarkupPagerNav', 0, ''),
(129, 'ProcessPageEditImageSelect', 1, ''),
(102, 'JqueryFancybox', 1, ''),
(103, 'JqueryTableSorter', 1, ''),
(104, 'ProcessPageSearch', 1, '{"searchFields":"title body","displayField":"title path"}'),
(105, 'FieldtypeFieldsetOpen', 1, ''),
(106, 'FieldtypeFieldsetClose', 1, ''),
(107, 'FieldtypeFieldsetTabOpen', 1, ''),
(109, 'ProcessPageTrash', 1, ''),
(111, 'FieldtypePageTitle', 1, ''),
(112, 'InputfieldPageTitle', 0, ''),
(113, 'MarkupPageArray', 3, ''),
(131, 'InputfieldButton', 0, ''),
(133, 'FieldtypePassword', 1, ''),
(134, 'ProcessPageType', 1, '{"showFields":[]}'),
(135, 'FieldtypeURL', 1, ''),
(136, 'ProcessPermission', 1, '{"showFields":["name","title"]}'),
(137, 'InputfieldPageListSelectMultiple', 0, ''),
(138, 'ProcessProfile', 1, '{"profileFields":["pass","email"]}'),
(139, 'SystemUpdater', 1, '{"systemVersion":3}'),
(148, 'MarkupSimpleNavigation', 1, ''),
(149, 'ProcessAdminCustomPages', 1, ''),
(150, 'ProcessGoogleAnalytics', 1, '{"accessToken":"","refreshToken":"","tokenExpires":"","tokenCreated":"","clientId":"","clientSecret":"","accountId":"","dateRange":"m1","compareToPrevious":"","maxResults":30,"cacheTime":1800,"chartColor":"#DB1174","dateFormat":"%d %B %Y","dateFormatInput":"Y-m-d"}'),
(151, 'MarkupCache', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `templates_id` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT '1',
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT '2',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`,`parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1077 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `parent_id`, `templates_id`, `name`, `status`, `modified`, `modified_users_id`, `created`, `created_users_id`, `sort`) VALUES
(1, 0, 1, 'home', 9, '2013-12-16 06:10:43', 41, '0000-00-00 00:00:00', 2, 0),
(2, 1, 2, 'processwire', 1035, '2013-12-12 03:01:43', 40, '0000-00-00 00:00:00', 2, 7),
(3, 2, 2, 'page', 21, '2011-03-29 11:37:06', 41, '0000-00-00 00:00:00', 2, 0),
(6, 3, 2, 'add', 21, '2011-03-29 11:37:06', 41, '0000-00-00 00:00:00', 2, 0),
(7, 1, 2, 'trash', 1039, '2011-08-14 12:04:52', 41, '2010-02-06 19:29:39', 2, 16),
(8, 3, 2, 'list', 21, '2011-03-29 11:37:06', 41, '0000-00-00 00:00:00', 2, 1),
(9, 3, 2, 'sort', 23, '2011-03-29 11:37:06', 41, '0000-00-00 00:00:00', 2, 2),
(10, 3, 2, 'edit', 21, '2011-03-29 11:37:06', 41, '0000-00-00 00:00:00', 2, 3),
(11, 22, 2, 'template', 21, '2011-03-29 11:37:06', 41, '2010-02-01 01:04:54', 2, 0),
(16, 22, 2, 'field', 21, '2011-03-29 11:37:06', 41, '2010-02-01 02:44:07', 2, 2),
(21, 2, 2, 'module', 21, '2011-03-29 11:37:06', 41, '2010-02-02 00:02:24', 2, 8),
(22, 2, 2, 'setup', 21, '2011-03-29 11:37:06', 41, '2010-02-09 02:16:59', 2, 7),
(23, 2, 2, 'login', 1035, '2011-05-03 13:38:10', 41, '2010-02-16 23:59:39', 2, 11),
(27, 1, 29, 'http404', 1035, '2011-08-14 12:04:52', 41, '2010-06-02 20:53:03', 3, 15),
(28, 2, 2, 'access', 13, '2011-05-03 13:38:10', 41, '2011-03-19 09:14:20', 2, 9),
(29, 28, 2, 'users', 29, '2011-04-04 14:39:08', 41, '2011-03-19 09:15:29', 2, 0),
(30, 28, 2, 'roles', 29, '2011-04-04 14:38:39', 41, '2011-03-19 09:15:45', 2, 1),
(31, 28, 2, 'permissions', 29, '2011-04-04 14:53:52', 41, '2011-03-19 09:16:00', 2, 2),
(32, 31, 5, 'page-edit', 25, '2011-09-06 05:34:24', 41, '2011-03-19 09:17:03', 2, 2),
(34, 31, 5, 'page-delete', 25, '2011-09-06 05:34:33', 41, '2011-03-19 09:17:23', 2, 3),
(35, 31, 5, 'page-move', 25, '2011-09-06 05:34:48', 41, '2011-03-19 09:17:41', 2, 4),
(36, 31, 5, 'page-view', 25, '2011-09-06 05:34:14', 41, '2011-03-19 09:17:57', 2, 0),
(37, 30, 4, 'guest', 25, '2011-04-04 15:37:19', 41, '2011-03-19 09:18:41', 2, 0),
(38, 30, 4, 'superuser', 25, '2011-08-17 04:34:39', 41, '2011-03-19 09:18:55', 2, 1),
(41, 29, 3, 'admin', 1, '2013-12-12 03:01:43', 40, '2011-03-19 09:41:26', 2, 0),
(40, 29, 3, 'guest', 25, '2011-08-17 04:26:09', 41, '2011-03-20 07:31:59', 2, 1),
(50, 31, 5, 'page-sort', 25, '2011-09-06 05:34:58', 41, '2011-03-26 12:04:50', 41, 5),
(51, 31, 5, 'page-template', 25, '2011-09-06 05:35:09', 41, '2011-03-26 12:25:31', 41, 6),
(52, 31, 5, 'user-admin', 25, '2011-09-06 05:35:42', 41, '2011-03-29 14:06:47', 41, 10),
(53, 31, 5, 'profile-edit', 1, '2011-08-16 12:32:48', 41, '2011-04-25 14:02:22', 41, 13),
(54, 31, 5, 'page-lock', 1, '2011-08-15 07:48:12', 41, '2011-08-15 07:45:48', 41, 8),
(300, 3, 2, 'search', 21, '2011-03-29 11:37:06', 41, '2010-08-03 19:23:59', 2, 5),
(301, 3, 2, 'trash', 23, '2011-03-29 11:37:06', 41, '2010-09-27 19:39:30', 2, 5),
(302, 3, 2, 'link', 17, '2011-03-29 11:37:06', 41, '2010-09-30 19:03:56', 2, 6),
(303, 3, 2, 'image', 17, '2011-03-29 11:37:06', 41, '2010-10-12 17:56:48', 2, 7),
(304, 2, 2, 'profile', 1025, '2011-05-03 13:38:10', 41, '2011-04-25 13:57:18', 41, 10),
(1000, 1, 26, 'search', 1025, '2011-08-31 09:17:38', 41, '2010-09-05 19:05:28', 2, 3),
(1018, 1016, 48, 'administrative-investigation-systems', 1, '2013-12-18 03:01:02', 41, '2013-12-16 03:37:03', 41, 1),
(1017, 1016, 48, 'criminal-investigations', 1, '2013-12-19 23:51:15', 41, '2013-12-16 03:36:31', 41, 0),
(1014, 1012, 54, 'features', 1, '2013-12-17 07:15:58', 41, '2013-12-16 03:34:06', 41, 1),
(1015, 1012, 50, 'faq', 1, '2013-12-16 03:34:27', 41, '2013-12-16 03:34:23', 41, 2),
(1016, 1, 29, 'solutions', 1, '2013-12-20 06:52:16', 41, '2013-12-16 03:35:20', 41, 5),
(1013, 1012, 53, 'why-comtrac', 1, '2013-12-17 04:44:56', 41, '2013-12-16 03:33:49', 41, 0),
(1012, 1, 29, 'how-it-works', 1, '2013-12-16 03:33:00', 41, '2013-12-16 03:32:21', 41, 4),
(1019, 1016, 48, 'incident-investigation-systems', 1, '2013-12-18 03:06:25', 41, '2013-12-16 03:37:27', 41, 2),
(1020, 1016, 48, 'regulatory-inspection-systems', 1, '2013-12-18 03:23:25', 41, '2013-12-16 03:37:43', 41, 3),
(1021, 1016, 48, 'electronic-notebook', 1, '2013-12-19 23:51:30', 41, '2013-12-16 03:38:05', 41, 4),
(1022, 1016, 48, 'nationally-recognised-training', 1025, '2013-12-18 03:32:57', 41, '2013-12-16 03:38:21', 41, 5),
(1023, 1, 29, 'company', 1, '2013-12-16 03:47:55', 41, '2013-12-16 03:47:52', 41, 6),
(1024, 1023, 29, 'company-profile', 1025, '2013-12-20 00:14:14', 41, '2013-12-16 03:48:17', 41, 0),
(1025, 1023, 63, 'our-ethos', 1, '2013-12-19 03:29:42', 41, '2013-12-16 03:48:45', 41, 1),
(1026, 1023, 49, 'blog', 1, '2013-12-16 03:49:05', 41, '2013-12-16 03:49:02', 41, 2),
(1027, 1023, 51, 'contact', 1, '2013-12-19 02:56:07', 41, '2013-12-16 03:49:20', 41, 3),
(1036, 2, 65, 'news-list', 1, '2013-12-19 05:18:46', 41, '2013-12-17 08:38:09', 41, 1),
(1035, 1, 29, 'newsletter-subscription', 1025, '2013-12-19 03:02:04', 41, '2013-12-17 08:34:05', 41, 9),
(1030, 1032, 57, 'who-is-comtrac-for', 1, '2013-12-17 08:05:20', 41, '2013-12-17 07:46:24', 41, 8),
(1031, 1, 29, 'enquiries', 1025, '2013-12-19 03:01:25', 41, '2013-12-17 07:52:30', 41, 8),
(1032, 1, 29, 'faqs', 1025, '2013-12-19 01:50:06', 41, '2013-12-17 08:04:44', 41, 10),
(1034, 2, 58, 'faq-list', 1, '2013-12-19 00:31:51', 41, '2013-12-17 08:27:56', 41, 2),
(1037, 1, 61, 'mailer', 1025, '2013-12-18 02:24:34', 41, '2013-12-18 02:24:28', 41, 11),
(1038, 1, 29, 'news', 1025, '2013-12-18 08:09:48', 41, '2013-12-18 03:40:40', 41, 12),
(1039, 1031, 52, 'mike-test-digital8', 1, '2013-12-19 06:47:29', 41, '2013-12-18 04:57:16', 41, 0),
(1040, 1, 29, 'blog', 1025, '2013-12-19 00:45:03', 41, '2013-12-18 06:41:45', 41, 13),
(1043, 1038, 60, 'comtrac-enters-the-mining-industry-in-nt-sa-and-nsw', 1, '2013-12-18 08:28:07', 41, '2013-12-18 08:01:13', 41, 1),
(1042, 1038, 60, 'comtrac-now-being-used-as-the-lead-investigation-system-by-the-queensland-police', 1, '2013-12-18 08:00:37', 41, '2013-12-18 07:59:57', 41, 0),
(1044, 1038, 60, 'hunt-migration-now-uses-comtrac-for-compiling-legal-briefs', 1, '2013-12-18 08:01:48', 41, '2013-12-18 08:01:42', 41, 2),
(1045, 1040, 60, 'nsw-resources-energy', 1, '2013-12-19 00:37:45', 41, '2013-12-19 00:36:28', 41, 0),
(1046, 1040, 60, 'act-planning-land-authority', 1, '2013-12-19 00:38:51', 41, '2013-12-19 00:38:04', 41, 1),
(1047, 1040, 60, 'nsw-mine-safety-investigations', 1, '2013-12-19 00:39:28', 41, '2013-12-19 00:39:01', 41, 2),
(1048, 1040, 60, 'nt-police-commence-trial', 1, '2013-12-19 00:39:57', 41, '2013-12-19 00:39:40', 41, 3),
(1049, 1032, 57, 'where-is-the-database-located', 1, '2013-12-19 01:46:16', 41, '2013-12-19 01:45:56', 41, 1),
(1050, 1032, 57, 'how-is-information-security-maintained', 1, '2013-12-19 01:48:40', 41, '2013-12-19 01:47:07', 41, 2),
(1051, 1032, 57, 'what-level-of-support-is-available', 1, '2013-12-19 01:53:14', 41, '2013-12-19 01:52:53', 41, 3),
(1052, 1032, 57, 'does-it-need-to-be-customised-to-our-agency', 1, '2013-12-19 01:53:36', 41, '2013-12-19 01:53:26', 41, 4),
(1053, 1032, 57, 'can-comtrac-integrate-with-existing-databases', 1, '2013-12-19 01:54:00', 41, '2013-12-19 01:53:49', 41, 5),
(1054, 1032, 57, 'are-there-ongoing-maintenance-fees', 1, '2013-12-19 01:54:26', 41, '2013-12-19 01:54:16', 41, 6),
(1055, 1032, 57, 'what-are-the-contract-periods', 1, '2013-12-19 01:54:48', 41, '2013-12-19 01:54:41', 41, 7),
(1056, 1032, 57, 'can-the-database-have-different-access-and-security-levels', 1, '2013-12-19 01:55:06', 41, '2013-12-19 01:54:58', 41, 8),
(1057, 1032, 57, 'how-long-is-implementation-time', 1, '2013-12-19 01:55:34', 41, '2013-12-19 01:55:24', 41, 9),
(1058, 1032, 57, 'can-electronic-forms-be-adjusted', 1, '2013-12-19 01:55:53', 41, '2013-12-19 01:55:43', 41, 10),
(1059, 1032, 57, 'does-it-work-on-mobile-devices', 1, '2013-12-19 01:56:17', 41, '2013-12-19 01:56:09', 41, 11),
(1060, 1032, 57, 'what-type-of-investigations-does-it-cater-for', 1, '2013-12-19 01:56:57', 41, '2013-12-19 01:56:39', 41, 12),
(1061, 1, 29, 'branches', 1025, '2013-12-19 02:22:41', 41, '2013-12-19 02:22:31', 41, 14),
(1064, 1061, 62, 'brisbane', 1, '2013-12-19 02:31:48', 41, '2013-12-19 02:31:16', 41, 0),
(1065, 1061, 62, 'sydney', 1, '2013-12-19 02:32:21', 41, '2013-12-19 02:32:10', 41, 1),
(1066, 1061, 62, 'melbourne', 1, '2013-12-19 02:32:37', 41, '2013-12-19 02:32:32', 41, 2),
(1067, 1035, 64, 'melmaleh-gmail.com', 1, '2013-12-19 04:45:03', 41, '2013-12-19 04:45:03', 41, 0),
(1068, 1035, 64, 'mike-digital8.com.au', 1, '2013-12-19 04:57:11', 41, '2013-12-19 04:57:11', 41, 1),
(1069, 1031, 52, 'mike-fromhome-digital8', 1, '2013-12-19 04:59:14', 41, '2013-12-19 04:59:14', 41, 1),
(1070, 1031, 52, 'mike-fromcontact-digitalcontact', 1, '2013-12-19 05:01:53', 41, '2013-12-19 05:01:53', 41, 2),
(1071, 1031, 52, 'test-test', 1, '2013-12-19 05:58:19', 41, '2013-12-19 05:58:19', 41, 3),
(1072, 2, 66, 'branches', 1, '2013-12-19 06:08:18', 41, '2013-12-19 06:08:18', 41, 3),
(1073, 2, 67, 'enquiries', 1, '2013-12-19 06:24:40', 41, '2013-12-19 06:24:40', 41, 4),
(1074, 2, 68, 'subscriptions', 1, '2013-12-19 06:50:06', 41, '2013-12-19 06:50:06', 41, 5),
(1075, 2, 2, 'google-analytics', 1, '2013-12-19 07:42:57', 41, '2013-12-19 07:42:57', 41, 6),
(1076, 31, 5, 'ga-view', 1, '2013-12-19 07:42:57', 41, '2013-12-19 07:42:57', 41, 9);

-- --------------------------------------------------------

--
-- Table structure for table `pages_access`
--

CREATE TABLE IF NOT EXISTS `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_access`
--

INSERT INTO `pages_access` (`pages_id`, `templates_id`, `ts`) VALUES
(37, 2, '2011-09-06 02:10:09'),
(38, 2, '2011-09-06 02:10:09'),
(32, 2, '2011-09-06 02:10:09'),
(34, 2, '2011-09-06 02:10:09'),
(35, 2, '2011-09-06 02:10:09'),
(36, 2, '2011-09-06 02:10:09'),
(50, 2, '2011-09-06 02:10:09'),
(51, 2, '2011-09-06 02:10:09'),
(52, 2, '2011-09-06 02:10:09'),
(53, 2, '2011-09-06 02:10:09'),
(54, 2, '2011-09-06 02:10:09'),
(1016, 1, '2013-12-16 03:35:20'),
(1017, 1, '2013-12-16 03:36:31'),
(1015, 1, '2013-12-16 03:34:23'),
(1012, 1, '2013-12-16 03:32:21'),
(1013, 1, '2013-12-16 03:33:49'),
(1014, 1, '2013-12-16 03:34:06'),
(1018, 1, '2013-12-16 03:37:03'),
(1019, 1, '2013-12-16 03:37:27'),
(1020, 1, '2013-12-16 03:37:43'),
(1021, 1, '2013-12-16 03:38:05'),
(1022, 1, '2013-12-16 03:38:21'),
(1023, 1, '2013-12-16 03:47:52'),
(1024, 1, '2013-12-16 03:48:17'),
(1025, 1, '2013-12-16 03:48:45'),
(1026, 1, '2013-12-16 03:49:02'),
(1027, 1, '2013-12-16 03:49:20'),
(1037, 1, '2013-12-18 02:24:28'),
(1035, 1, '2013-12-19 03:02:04'),
(1053, 1, '2013-12-19 01:53:49'),
(1034, 2, '2013-12-17 08:28:35'),
(1046, 1, '2013-12-19 00:38:04'),
(1045, 1, '2013-12-19 00:36:28'),
(1040, 1, '2013-12-19 00:33:21'),
(1038, 1, '2013-12-18 08:07:40'),
(1047, 1, '2013-12-19 00:39:01'),
(1048, 1, '2013-12-19 00:39:40'),
(1052, 1, '2013-12-19 01:53:26'),
(1051, 1, '2013-12-19 01:52:53'),
(1032, 1, '2013-12-19 01:49:25'),
(1054, 1, '2013-12-19 01:54:16'),
(1055, 1, '2013-12-19 01:54:41'),
(1056, 1, '2013-12-19 01:54:58'),
(1057, 1, '2013-12-19 01:55:24'),
(1058, 1, '2013-12-19 01:55:43'),
(1059, 1, '2013-12-19 01:56:09'),
(1060, 1, '2013-12-19 01:56:39'),
(1061, 1, '2013-12-19 02:22:31'),
(1064, 1, '2013-12-19 02:31:16'),
(1065, 1, '2013-12-19 02:32:10'),
(1066, 1, '2013-12-19 02:32:32'),
(1031, 1, '2013-12-19 03:01:25'),
(1067, 1, '2013-12-19 04:45:03'),
(1068, 1, '2013-12-19 04:57:11'),
(1069, 1, '2013-12-19 04:59:14'),
(1070, 1, '2013-12-19 05:01:53'),
(1036, 2, '2013-12-19 05:18:46'),
(1071, 1, '2013-12-19 05:58:19'),
(1072, 2, '2013-12-19 06:08:18'),
(1073, 2, '2013-12-19 06:24:40'),
(1074, 2, '2013-12-19 06:50:06'),
(1076, 2, '2013-12-19 07:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `pages_parents`
--

CREATE TABLE IF NOT EXISTS `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`,`parents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages_parents`
--

INSERT INTO `pages_parents` (`pages_id`, `parents_id`) VALUES
(2, 1),
(3, 1),
(3, 2),
(7, 1),
(22, 1),
(22, 2),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(29, 28),
(30, 1),
(30, 2),
(30, 28),
(31, 1),
(31, 2),
(31, 28),
(1012, 1),
(1016, 1),
(1023, 1),
(1031, 1),
(1032, 1),
(1035, 1),
(1038, 1),
(1040, 1),
(1061, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_sortfields`
--

CREATE TABLE IF NOT EXISTS `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `session_login_throttle`
--

CREATE TABLE IF NOT EXISTS `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT '0',
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `cache_time` mediumint(9) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id`, `name`, `fieldgroups_id`, `flags`, `cache_time`, `data`) VALUES
(2, 'admin', 2, 8, 0, '{"useRoles":1,"parentTemplates":[2],"allowPageNum":1,"redirectLogin":23,"slashUrls":1,"noGlobal":1}'),
(3, 'user', 3, 8, 0, '{"useRoles":1,"noChildren":1,"parentTemplates":[2],"slashUrls":1,"pageClass":"User","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"nameContentTab":1}'),
(4, 'role', 4, 8, 0, '{"noChildren":1,"parentTemplates":[2],"slashUrls":1,"pageClass":"Role","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"nameContentTab":1}'),
(5, 'permission', 5, 8, 0, '{"noChildren":1,"parentTemplates":[2],"slashUrls":1,"guestSearchable":1,"pageClass":"Permission","noGlobal":1,"noMove":1,"noTrash":1,"noSettings":1,"noChangeTemplate":1,"nameContentTab":1}'),
(1, 'home', 1, 0, 0, '{"useRoles":1,"noParents":1,"slashUrls":1,"roles":[37]}'),
(29, 'basic-page', 83, 0, 0, '{"slashUrls":1}'),
(26, 'search', 80, 0, 0, '{"noChildren":1,"noParents":1,"allowPageNum":1,"slashUrls":1}'),
(34, 'sitemap', 88, 0, 0, '{"noChildren":1,"noParents":1,"redirectLogin":23,"slashUrls":1}'),
(51, 'contact', 105, 0, 0, '{"slashUrls":1}'),
(50, 'faq', 104, 0, 0, '{"slashUrls":1}'),
(48, 'solutions', 102, 0, 0, '{"slashUrls":1}'),
(49, 'blog', 103, 0, 0, '{"slashUrls":1}'),
(52, 'enquiry_form', 106, 0, 0, '{"slashUrls":1}'),
(53, 'why-comtrac', 107, 0, 0, '{"slashUrls":1}'),
(54, 'features', 108, 0, 0, '{"slashUrls":1}'),
(56, 'admin_list', 110, 0, 0, '{"slashUrls":1,"altFilename":"admin"}'),
(57, 'faq-model', 111, 0, 0, '{"slashUrls":1,"altFilename":"custom"}'),
(58, 'faq_admin', 112, 0, 0, '{"slashUrls":1,"altFilename":"custom"}'),
(59, 'custom', 113, 0, 0, '{"slashUrls":1}'),
(60, 'news-model', 114, 0, 0, '{"slashUrls":1}'),
(61, 'process_action', 115, 0, 0, '{"slashUrls":1}'),
(62, 'branch_model', 116, 0, 0, '{"slashUrls":1}'),
(63, 'our_ethos', 117, 0, 0, '{"slashUrls":1}'),
(64, 'newsletter_form', 118, 0, 0, '{"slashUrls":1}'),
(65, 'blog_admin', 119, 0, 0, '{"slashUrls":1,"altFilename":"custom"}'),
(66, 'branch_admin', 120, 0, 0, '{"slashUrls":1,"altFilename":"custom"}'),
(67, 'enquiry_admin', 121, 0, 0, '{"slashUrls":1,"altFilename":"custom"}'),
(68, 'subscription_admin', 122, 0, 0, '{"slashUrls":1,"altFilename":"custom"}');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
