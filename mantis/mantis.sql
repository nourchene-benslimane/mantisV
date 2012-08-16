-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le : Ven 17 Août 2012 à 01:10
-- Version du serveur: 5.5.16
-- Version de PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `mantisdb`
--

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bugnote_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bugnote_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reporter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bugnote_text_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `note_type` int(11) DEFAULT '0',
  `note_attr` varchar(250) DEFAULT '',
  `time_tracking` int(10) unsigned NOT NULL DEFAULT '0',
  `last_modified` int(10) unsigned NOT NULL DEFAULT '1',
  `date_submitted` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug` (`bug_id`),
  KEY `idx_last_mod` (`last_modified`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `mantis_bugnote_table`
--

INSERT INTO `mantis_bugnote_table` (`id`, `bug_id`, `reporter_id`, `bugnote_text_id`, `view_state`, `note_type`, `note_attr`, `time_tracking`, `last_modified`, `date_submitted`) VALUES
(1, 1, 1, 1, 10, 0, '', 0, 1344501860, 1344501860);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bugnote_text_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bugnote_text_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `note` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `mantis_bugnote_text_table`
--

INSERT INTO `mantis_bugnote_text_table` (`id`, `note`) VALUES
(1, 'le bug a été résolu');

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_file_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_file_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob NOT NULL,
  `date_added` int(10) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_bug_file_bug_id` (`bug_id`),
  KEY `idx_diskfile` (`diskfile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `mantis_bug_file_table`
--

INSERT INTO `mantis_bug_file_table` (`id`, `bug_id`, `title`, `description`, `diskfile`, `filename`, `folder`, `filesize`, `file_type`, `content`, `date_added`, `user_id`) VALUES
(1, 2, '', '', 'd815307626ec1a49e56556a7648f2b9b', 'mantisCode.php', '', 2024, 'application/octet-stream', 0x3c3f7068700d0a2320646f6e277420646973706c6179202241737369676e656420746f204d6522206275677320746f207573657273207468617420627567732063616e27742062652061737369676e656420746f0d0a0909656c736520696620282024745f626f785f7469746c65203d3d202761737369676e65642720262620282063757272656e745f757365725f69735f616e6f6e796d6f75732829204f5220757365725f6765745f61737369676e65645f6f70656e5f6275675f636f756e74282024745f63757272656e745f757365725f69642c2024745f70726f6a6563745f69642029203d3d203020292029207b0d0a09090924745f6e756d6265725f6f665f626f786573203d2024745f6e756d6265725f6f665f626f786573202d20313b0d0a09097d0d0a09090d0a09092f2f6966202863757272656e745f757365725f69735f616e6f6e796d6f75732829204f522028757365725f6765745f61737369676e65645f6f70656e5f6275675f636f756e74282024745f63757272656e745f757365725f69642c2024745f70726f6a6563745f69642029203d3d20302029290d0a0d0a09092320646f6e277420646973706c617920224d6f6e69746f726564206279204d6522206275677320746f20757365727320746861742063616e2774206d6f6e69746f7220627567730d0a0909656c736520696620282024745f626f785f7469746c65203d3d20276d6f6e69746f7265642720262620282063757272656e745f757365725f69735f616e6f6e796d6f75732829204f5220216163636573735f6861735f70726f6a6563745f6c6576656c2820636f6e6669675f6765742820276d6f6e69746f725f6275675f7468726573686f6c642720292c2024745f70726f6a6563745f69642c2024745f63757272656e745f757365725f6964202920292029207b0d0a09090924745f6e756d6265725f6f665f626f786573203d2024745f6e756d6265725f6f665f626f786573202d20313b0d0a09097d0d0a0d0a09092320646f6e277420646973706c617920225265706f72746564206279204d6522206275677320746f20757365727320746861742063616e2774207265706f727420627567730d0a0909656c7365206966202820696e5f6172726179282024745f626f785f7469746c652c2061727261792820277265706f72746564272c2027666565646261636b272c202776657269667927202920292026260d0a09090909282063757272656e745f757365725f69735f616e6f6e796d6f75732829204f5220216163636573735f6861735f70726f6a6563745f6c6576656c2820636f6e6669675f6765742820277265706f72745f6275675f7468726573686f6c642720292c2024745f70726f6a6563745f69642c2024745f63757272656e745f757365725f6964202920292029207b0d0a09090924745f6e756d6265725f6f665f626f786573203d2024745f6e756d6265725f6f665f626f786573202d20313b0d0a09097d0d0a0d0a09090d0a09090d0a69662028202163757272656e745f757365725f69735f616e6f6e796d6f757328292029207b0d0a24745f63757272656e745f757365725f6964203d20617574685f6765745f63757272656e745f757365725f696428293b0d0a090924745f686964655f737461747573203d20636f6e6669675f6765742820276275675f7265736f6c7665645f7374617475735f7468726573686f6c642720293b0d0a09096563686f20273c64697620636c6173733d22717569636b2d73756d6d6172792d6c656674223e273b0d0a09096563686f206c616e675f6765742820276f70656e5f616e645f61737369676e65645f746f5f6d65272029202e20273a20273b0d0a09097072696e745f6c696e6b282022766965775f616c6c5f7365742e7068703f747970653d312668616e646c65725f69643d24745f63757272656e745f757365725f696426686964655f7374617475733d24745f686964655f737461747573222c2063757272656e745f757365725f6765745f61737369676e65645f6f70656e5f6275675f636f756e7428292c2066616c73652c2027737562746c652720293b0d0a09096563686f20273c2f6469763e273b0d0a0d0a09096563686f20273c64697620636c6173733d22717569636b2d73756d6d6172792d7269676874223e273b0d0a09096563686f206c616e675f6765742820276f70656e5f616e645f7265706f727465645f746f5f6d65272029202e20273a20273b0d0a09097072696e745f6c696e6b282022766965775f616c6c5f7365742e7068703f747970653d31267265706f727465725f69643d24745f63757272656e745f757365725f696426686964655f7374617475733d24745f686964655f737461747573222c2063757272656e745f757365725f6765745f7265706f727465645f6f70656e5f6275675f636f756e7428292c2066616c73652c2027737562746c652720293b0d0a09096563686f20273c2f6469763e273b0d0a0d0a09096563686f20273c64697620636c6173733d22717569636b2d73756d6d6172792d6c656674223e273b0d0a09096563686f206c616e675f6765742820276c6173745f7669736974272029202e20273a20273b0d0a09096563686f20646174652820636f6e6669675f6765742820276e6f726d616c5f646174655f666f726d61742720292c2063757272656e745f757365725f6765745f6669656c642820276c6173745f766973697427202920293b0d0a09096563686f20273c2f6469763e273b0d0a097d0d0a093f3e, 1345121798, 1);
INSERT INTO `mantis_bug_file_table` (`id`, `bug_id`, `title`, `description`, `diskfile`, `filename`, `folder`, `filesize`, `file_type`, `content`, `date_added`, `user_id`) VALUES

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_history_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_history_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(64) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `type` smallint(6) NOT NULL DEFAULT '0',
  `date_modified` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_history_bug_id` (`bug_id`),
  KEY `idx_history_user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `mantis_bug_history_table`
--

INSERT INTO `mantis_bug_history_table` (`id`, `user_id`, `bug_id`, `field_name`, `old_value`, `new_value`, `type`, `date_modified`) VALUES
(1, 1, 1, '', '', '', 1, 1344424501),
(2, 1, 1, 'status', '10', '50', 0, 1344424501),
(3, 1, 1, 'handler_id', '0', '1', 0, 1344424501),
(4, 1, 1, '', '0000001', '', 2, 1344501860),
(5, 1, 1, 'status', '50', '80', 0, 1344501860),
(6, 1, 1, 'resolution', '10', '20', 0, 1344501860),
(7, 1, 1, 'category', 'analyse détaillée', '(No Category)', 0, 1344514292),
(8, 1, 2, '', '', '', 1, 1345121798),
(9, 1, 2, '', 'mantisCode.php', '', 9, 1345121798),
(10, 1, 2, '', 'administration_guide.pdf', '', 9, 1345121976);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_monitor_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_monitor_table` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_relationship_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_relationship_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `destination_bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `relationship_type` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_relationship_source` (`source_bug_id`),
  KEY `idx_relationship_destination` (`destination_bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_revision_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_revision_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int(10) unsigned NOT NULL,
  `bugnote_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_rev_type` (`type`),
  KEY `idx_bug_rev_id_time` (`bug_id`,`timestamp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reporter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `handler_id` int(10) unsigned NOT NULL DEFAULT '0',
  `duplicate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` smallint(6) NOT NULL DEFAULT '30',
  `severity` smallint(6) NOT NULL DEFAULT '50',
  `reproducibility` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `resolution` smallint(6) NOT NULL DEFAULT '10',
  `projection` smallint(6) NOT NULL DEFAULT '10',
  `eta` smallint(6) NOT NULL DEFAULT '10',
  `bug_text_id` int(10) unsigned NOT NULL DEFAULT '0',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '',
  `fixed_in_version` varchar(64) NOT NULL DEFAULT '',
  `build` varchar(32) NOT NULL DEFAULT '',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `summary` varchar(128) NOT NULL DEFAULT '',
  `sponsorship_total` int(11) NOT NULL DEFAULT '0',
  `sticky` tinyint(4) NOT NULL DEFAULT '0',
  `target_version` varchar(64) NOT NULL DEFAULT '',
  `category_id` int(10) unsigned NOT NULL DEFAULT '1',
  `date_submitted` int(10) unsigned NOT NULL DEFAULT '1',
  `due_date` int(10) unsigned NOT NULL DEFAULT '1',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_sponsorship_total` (`sponsorship_total`),
  KEY `idx_bug_fixed_in_version` (`fixed_in_version`),
  KEY `idx_bug_status` (`status`),
  KEY `idx_project` (`project_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `mantis_bug_table`
--

INSERT INTO `mantis_bug_table` (`id`, `project_id`, `reporter_id`, `handler_id`, `duplicate_id`, `priority`, `severity`, `reproducibility`, `status`, `resolution`, `projection`, `eta`, `bug_text_id`, `os`, `os_build`, `platform`, `version`, `fixed_in_version`, `build`, `profile_id`, `view_state`, `summary`, `sponsorship_total`, `sticky`, `target_version`, `category_id`, `date_submitted`, `due_date`, `last_updated`) VALUES
(1, 2, 1, 1, 0, 30, 50, 70, 80, 20, 10, 10, 1, '', '', '', '', '', '', 0, 10, 'Incorrect order of versions in dropdowns', 0, 0, '', 0, 1344424501, 1, 1344501865),
(2, 2, 1, 0, 0, 30, 50, 70, 10, 10, 10, 10, 2, '', '', '', '', '', '', 0, 10, 'vgnbn', 0, 0, '', 50, 1345121798, 1, 1345121976);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_tag_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_tag_table` (
  `bug_id` int(10) unsigned NOT NULL DEFAULT '0',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_attached` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bug_id`,`tag_id`),
  KEY `idx_bug_tag_tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_bug_text_table`
--

CREATE TABLE IF NOT EXISTS `mantis_bug_text_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `mantis_bug_text_table`
--

INSERT INTO `mantis_bug_text_table` (`id`, `description`, `steps_to_reproduce`, `additional_information`) VALUES
(1, 'The versions being displayed in the dropdowns for Product Version, Fixed in Version and Target Version are incorrectly ordered. Currently they use an unknown order - probably the order they were added.\r\n\r\nThey should be ordered from latest version to oldest version in the dropdown. It makes sense that the latest version would be at the top as most bugs will be filed against that. Also it doesn''t make sense for a random order as it makes it harder to find the version.', 'View any of the version drop downs in the lists. You''ll note the order will be something like this:\r\n\r\n''7.1.7''\r\n''8.0.0''\r\n''7.1.2''\r\n''8.1.3''\r\n''8.1.2''\r\n\r\nThey should look like this:\r\n\r\n''8.1.3''\r\n''8.1.2''\r\n''8.0.0''\r\n''7.1.7''\r\n''7.1.2''', 'I have created a small patch for this which I tested in version 1.1.8:\r\n\r\nLine 832 in /usr/share/mantis/www/core/print_api.php\r\n\r\nAdd in the following code:\r\n\r\n// Sort the versions from highest to lowest\r\nusort($versions, function($a, $b)\r\n{\r\n    return version_compare($a[''version''], $b[''version''], ''<'');\r\n});'),
(2, 'fdgh', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `mantis_category_table`
--

CREATE TABLE IF NOT EXISTS `mantis_category_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_category_project_name` (`project_id`,`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=51 ;

--
-- Contenu de la table `mantis_category_table`
--

INSERT INTO `mantis_category_table` (`id`, `project_id`, `user_id`, `name`, `status`) VALUES
(50, 0, 0, 'General', 0);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_config_table`
--

CREATE TABLE IF NOT EXISTS `mantis_config_table` (
  `config_id` varchar(64) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `access_reqd` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '90',
  `value` longtext NOT NULL,
  PRIMARY KEY (`config_id`,`project_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mantis_config_table`
--

INSERT INTO `mantis_config_table` (`config_id`, `project_id`, `user_id`, `access_reqd`, `type`, `value`) VALUES
('database_version', 0, 0, 90, 1, '183'),
('plugin_MantisGraph_schema', 0, 0, 90, 1, '-1'),
('plugin_XmlImportExport_schema', 0, 0, 90, 1, '-1');

-- --------------------------------------------------------

--
-- Structure de la table `mantis_custom_field_project_table`
--

CREATE TABLE IF NOT EXISTS `mantis_custom_field_project_table` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sequence` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`project_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mantis_custom_field_project_table`
--

INSERT INTO `mantis_custom_field_project_table` (`field_id`, `project_id`, `sequence`) VALUES
(2, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_custom_field_string_table`
--

CREATE TABLE IF NOT EXISTS `mantis_custom_field_string_table` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`bug_id`),
  KEY `idx_custom_field_bug` (`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mantis_custom_field_string_table`
--

INSERT INTO `mantis_custom_field_string_table` (`field_id`, `bug_id`, `value`) VALUES
(2, 1, 'analyse détaillée '),
(2, 2, 'analyse détaillée ');

-- --------------------------------------------------------

--
-- Structure de la table `mantis_custom_field_table`
--

CREATE TABLE IF NOT EXISTS `mantis_custom_field_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `possible_values` text NOT NULL,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `valid_regexp` varchar(255) NOT NULL DEFAULT '',
  `access_level_r` smallint(6) NOT NULL DEFAULT '0',
  `access_level_rw` smallint(6) NOT NULL DEFAULT '0',
  `length_min` int(11) NOT NULL DEFAULT '0',
  `length_max` int(11) NOT NULL DEFAULT '0',
  `require_report` tinyint(4) NOT NULL DEFAULT '0',
  `require_update` tinyint(4) NOT NULL DEFAULT '0',
  `display_report` tinyint(4) NOT NULL DEFAULT '0',
  `display_update` tinyint(4) NOT NULL DEFAULT '1',
  `require_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `display_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `display_closed` tinyint(4) NOT NULL DEFAULT '0',
  `require_closed` tinyint(4) NOT NULL DEFAULT '0',
  `filter_by` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_custom_field_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `mantis_custom_field_table`
--

INSERT INTO `mantis_custom_field_table` (`id`, `name`, `type`, `possible_values`, `default_value`, `valid_regexp`, `access_level_r`, `access_level_rw`, `length_min`, `length_max`, `require_report`, `require_update`, `display_report`, `display_update`, `require_resolved`, `display_resolved`, `display_closed`, `require_closed`, `filter_by`) VALUES
(2, 'phase', 3, 'analyse détaillée | tests d''intégration | recette utilisateurs | préproduction | production', '', '', 10, 10, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_email_table`
--

CREATE TABLE IF NOT EXISTS `mantis_email_table` (
  `email_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `metadata` longtext NOT NULL,
  `body` longtext NOT NULL,
  `submitted` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=89 ;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_filters_table`
--

CREATE TABLE IF NOT EXISTS `mantis_filters_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `project_id` int(11) NOT NULL DEFAULT '0',
  `is_public` tinyint(4) DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `filter_string` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `mantis_filters_table`
--

INSERT INTO `mantis_filters_table` (`id`, `user_id`, `project_id`, `is_public`, `name`, `filter_string`) VALUES
(1, 1, 0, 0, '', 'v8#a:41:{s:8:"_version";s:2:"v8";s:10:"_view_type";s:6:"simple";s:13:"show_category";a:1:{i:0;s:1:"0";}s:13:"show_severity";a:1:{i:0;i:0;}s:11:"show_status";a:1:{i:0;i:0;}s:8:"per_page";i:50;s:17:"highlight_changed";i:6;s:11:"reporter_id";a:1:{i:0;i:0;}s:10:"handler_id";a:1:{i:0;i:1;}s:10:"project_id";a:1:{i:0;i:-3;}s:4:"sort";s:12:"last_updated";s:3:"dir";s:4:"DESC";s:11:"start_month";i:8;s:9:"start_day";i:1;s:10:"start_year";i:2012;s:9:"end_month";i:8;s:7:"end_day";i:9;s:8:"end_year";i:2012;s:6:"search";s:0:"";s:11:"hide_status";a:1:{i:0;i:80;}s:16:"and_not_assigned";b:0;s:15:"show_resolution";a:1:{i:0;i:0;}s:10:"show_build";a:1:{i:0;s:1:"0";}s:12:"show_version";a:1:{i:0;s:1:"0";}s:17:"do_filter_by_date";b:0;s:16:"fixed_in_version";a:1:{i:0;s:1:"0";}s:14:"target_version";a:1:{i:0;s:1:"0";}s:13:"show_priority";a:1:{i:0;i:0;}s:12:"user_monitor";a:1:{i:0;i:0;}s:10:"view_state";i:0;s:13:"custom_fields";a:1:{i:2;a:1:{i:0;s:1:"0";}}s:13:"sticky_issues";s:3:"off";s:17:"relationship_type";i:-1;s:16:"relationship_bug";i:0;s:12:"show_profile";a:1:{i:0;i:0;}s:8:"platform";a:1:{i:0;i:0;}s:2:"os";a:1:{i:0;i:0;}s:8:"os_build";a:1:{i:0;i:0;}s:10:"tag_string";s:0:"";s:10:"tag_select";i:0;s:12:"note_user_id";a:1:{i:0;i:0;}}'),
(2, 1, -7, 0, '', 'v8#a:41:{s:8:"_version";s:2:"v8";s:10:"_view_type";s:6:"simple";s:13:"show_category";a:1:{i:0;s:1:"0";}s:13:"show_severity";a:1:{i:0;i:0;}s:11:"show_status";a:1:{i:0;i:0;}s:8:"per_page";i:50;s:17:"highlight_changed";i:6;s:11:"reporter_id";a:1:{i:0;i:0;}s:10:"handler_id";a:1:{i:0;i:1;}s:10:"project_id";a:1:{i:0;i:-3;}s:4:"sort";s:7:"summary";s:3:"dir";s:4:"DESC";s:11:"start_month";i:8;s:9:"start_day";i:1;s:10:"start_year";i:2012;s:9:"end_month";i:8;s:7:"end_day";i:9;s:8:"end_year";i:2012;s:6:"search";s:0:"";s:11:"hide_status";a:1:{i:0;i:80;}s:16:"and_not_assigned";b:0;s:15:"show_resolution";a:1:{i:0;i:0;}s:10:"show_build";a:1:{i:0;s:1:"0";}s:12:"show_version";a:1:{i:0;s:1:"0";}s:17:"do_filter_by_date";b:0;s:16:"fixed_in_version";a:1:{i:0;s:1:"0";}s:14:"target_version";a:1:{i:0;s:1:"0";}s:13:"show_priority";a:1:{i:0;i:0;}s:12:"user_monitor";a:1:{i:0;i:0;}s:10:"view_state";i:0;s:13:"custom_fields";a:1:{i:2;a:1:{i:0;s:1:"0";}}s:13:"sticky_issues";s:3:"off";s:17:"relationship_type";i:-1;s:16:"relationship_bug";i:0;s:12:"show_profile";a:1:{i:0;i:0;}s:8:"platform";a:1:{i:0;i:0;}s:2:"os";a:1:{i:0;i:0;}s:8:"os_build";a:1:{i:0;i:0;}s:10:"tag_string";s:0:"";s:10:"tag_select";i:0;s:12:"note_user_id";a:1:{i:0;i:0;}}');

-- --------------------------------------------------------

--
-- Structure de la table `mantis_news_table`
--

CREATE TABLE IF NOT EXISTS `mantis_news_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `poster_id` int(10) unsigned NOT NULL DEFAULT '0',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `announcement` tinyint(4) NOT NULL DEFAULT '0',
  `headline` varchar(64) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `last_modified` int(10) unsigned NOT NULL DEFAULT '1',
  `date_posted` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `mantis_news_table`
--

INSERT INTO `mantis_news_table` (`id`, `project_id`, `poster_id`, `view_state`, `announcement`, `headline`, `body`, `last_modified`, `date_posted`) VALUES
(1, 0, 1, 10, 1, 'news du 09/08/2012', 'NEWS', 1344514176, 1344509727);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_plugin_table`
--

CREATE TABLE IF NOT EXISTS `mantis_plugin_table` (
  `basename` varchar(40) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '0',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`basename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mantis_plugin_table`
--

INSERT INTO `mantis_plugin_table` (`basename`, `enabled`, `protected`, `priority`) VALUES
('MantisCoreFormatting', 1, 0, 3),
('MantisGraph', 1, 0, 3),
('XmlImportExport', 1, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_project_file_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_file_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob NOT NULL,
  `date_added` int(10) unsigned NOT NULL DEFAULT '1',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_project_hierarchy_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_hierarchy_table` (
  `child_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL,
  `inherit_parent` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `idx_project_hierarchy_child_id` (`child_id`),
  KEY `idx_project_hierarchy_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mantis_project_hierarchy_table`
--

INSERT INTO `mantis_project_hierarchy_table` (`child_id`, `parent_id`, `inherit_parent`) VALUES
(15, 2, 1),
(7, 2, 1),
(8, 2, 1),
(10, 2, 1),
(16, 2, 1),
(11, 2, 1),
(13, 2, 1),
(9, 2, 1),
(14, 2, 1),
(17, 2, 1),
(6, 2, 1),
(12, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_project_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `view_state` smallint(6) NOT NULL DEFAULT '10',
  `access_min` smallint(6) NOT NULL DEFAULT '10',
  `file_path` varchar(250) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `category_id` int(10) unsigned NOT NULL DEFAULT '1',
  `inherit_global` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_name` (`name`),
  KEY `idx_project_view` (`view_state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Contenu de la table `mantis_project_table`
--

INSERT INTO `mantis_project_table` (`id`, `name`, `status`, `enabled`, `view_state`, `access_min`, `file_path`, `description`, `category_id`, `inherit_global`) VALUES
(6, 'REF- référentiel client/compte ', 10, 1, 10, 10, '', '', 1, 1),
(2, 'BTL Afek integration du SI cible', 10, 1, 10, 10, '', '', 1, 1),
(7, 'CPT- comptabilité', 10, 1, 10, 10, '', '', 1, 1),
(8, 'AGE- agence', 10, 1, 10, 10, '', '', 1, 1),
(9, 'MDP- moyen de paiement', 10, 1, 10, 10, '', '', 1, 1),
(10, 'GGR- garanties risque', 10, 1, 10, 10, '', '', 1, 1),
(11, 'INT- international', 10, 1, 10, 10, '', '', 1, 1),
(12, 'SDM- trésorerie / salle de marché', 10, 1, 10, 10, '', '', 1, 1),
(13, 'ITF- interface', 10, 1, 10, 10, '', '', 1, 1),
(14, 'MIG- migration des données', 10, 1, 10, 10, '', '', 1, 1),
(15, 'EDT- architecture éditique ', 10, 1, 10, 10, '', '', 1, 1),
(16, 'INF- infrastructure', 10, 1, 10, 10, '', '', 1, 1),
(17, 'PRF- performance', 10, 1, 10, 10, '', '', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_project_user_list_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_user_list_table` (
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `access_level` smallint(6) NOT NULL DEFAULT '10',
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `idx_project_user` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mantis_project_user_list_table`
--

INSERT INTO `mantis_project_user_list_table` (`project_id`, `user_id`, `access_level`) VALUES
(2, 4, 70),
(2, 6, 70);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_project_version_table`
--

CREATE TABLE IF NOT EXISTS `mantis_project_version_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `version` varchar(64) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `released` tinyint(4) NOT NULL DEFAULT '1',
  `obsolete` tinyint(4) NOT NULL DEFAULT '0',
  `date_order` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_version` (`project_id`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_sponsorship_table`
--

CREATE TABLE IF NOT EXISTS `mantis_sponsorship_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bug_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `date_submitted` int(10) unsigned NOT NULL DEFAULT '1',
  `last_updated` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_sponsorship_bug_id` (`bug_id`),
  KEY `idx_sponsorship_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_tag_table`
--

CREATE TABLE IF NOT EXISTS `mantis_tag_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `date_created` int(10) unsigned NOT NULL DEFAULT '1',
  `date_updated` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`name`),
  KEY `idx_tag_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_tokens_table`
--

CREATE TABLE IF NOT EXISTS `mantis_tokens_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '1',
  `expiry` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_typeowner` (`type`,`owner`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Contenu de la table `mantis_tokens_table`
--

INSERT INTO `mantis_tokens_table` (`id`, `owner`, `type`, `value`, `timestamp`, `expiry`) VALUES
(95, 1, 3, '2', 1345121798, 1345208377),
(96, 1, 4, '1', 1345123869, 1345124553);

-- --------------------------------------------------------

--
-- Structure de la table `mantis_user_pref_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_pref_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `default_profile` int(10) unsigned NOT NULL DEFAULT '0',
  `default_project` int(10) unsigned NOT NULL DEFAULT '0',
  `refresh_delay` int(11) NOT NULL DEFAULT '0',
  `redirect_delay` int(11) NOT NULL DEFAULT '0',
  `bugnote_order` varchar(4) NOT NULL DEFAULT 'ASC',
  `email_on_new` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_assigned` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_feedback` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_resolved` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_closed` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_reopened` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_bugnote` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_status` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_priority` tinyint(4) NOT NULL DEFAULT '0',
  `email_on_priority_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_status_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_bugnote_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_reopened_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_closed_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_resolved_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_feedback_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_assigned_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_on_new_min_severity` smallint(6) NOT NULL DEFAULT '10',
  `email_bugnote_limit` smallint(6) NOT NULL DEFAULT '0',
  `language` varchar(32) NOT NULL DEFAULT 'english',
  `timezone` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `mantis_user_pref_table`
--

INSERT INTO `mantis_user_pref_table` (`id`, `user_id`, `project_id`, `default_profile`, `default_project`, `refresh_delay`, `redirect_delay`, `bugnote_order`, `email_on_new`, `email_on_assigned`, `email_on_feedback`, `email_on_resolved`, `email_on_closed`, `email_on_reopened`, `email_on_bugnote`, `email_on_status`, `email_on_priority`, `email_on_priority_min_severity`, `email_on_status_min_severity`, `email_on_bugnote_min_severity`, `email_on_reopened_min_severity`, `email_on_closed_min_severity`, `email_on_resolved_min_severity`, `email_on_feedback_min_severity`, `email_on_assigned_min_severity`, `email_on_new_min_severity`, `email_bugnote_limit`, `language`, `timezone`) VALUES
(2, 4, 0, 0, 2, 30, 2, 'ASC', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'french', 'Europe/Berlin'),
(5, 1, 0, 0, 0, 30, 2, 'ASC', 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'english', 'Europe/Berlin');

-- --------------------------------------------------------

--
-- Structure de la table `mantis_user_print_pref_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_print_pref_table` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `print_pref` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_user_profile_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_profile_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `mantis_user_table`
--

CREATE TABLE IF NOT EXISTS `mantis_user_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '',
  `realname` varchar(64) NOT NULL DEFAULT '',
  `email` varchar(64) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `protected` tinyint(4) NOT NULL DEFAULT '0',
  `access_level` smallint(6) NOT NULL DEFAULT '10',
  `login_count` int(11) NOT NULL DEFAULT '0',
  `lost_password_request_count` smallint(6) NOT NULL DEFAULT '0',
  `failed_login_count` smallint(6) NOT NULL DEFAULT '0',
  `cookie_string` varchar(64) NOT NULL DEFAULT '',
  `last_visit` int(10) unsigned NOT NULL DEFAULT '1',
  `date_created` int(10) unsigned NOT NULL DEFAULT '1',
  `role` smallint(6) NOT NULL DEFAULT '10',
  `agency` smallint(6) NOT NULL DEFAULT '0',
  `unit_department` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_cookie_string` (`cookie_string`),
  UNIQUE KEY `idx_user_username` (`username`),
  KEY `idx_enable` (`enabled`),
  KEY `idx_access` (`access_level`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=59 ;

--
-- Contenu de la table `mantis_user_table`
--

INSERT INTO `mantis_user_table` (`id`, `username`, `realname`, `email`, `password`, `enabled`, `protected`, `access_level`, `login_count`, `lost_password_request_count`, `failed_login_count`, `cookie_string`, `last_visit`, `date_created`, `role`, `agency`, `unit_department`) VALUES
(1, 'administrator', '', 'nourchene.benslimane@targa-consult.com', '21232f297a57a5a743894a0e4a801fc3', 1, 0, 90, 101, 0, 0, '3fc0c12e4cc85a40f53a4385e2009c4f2695b5aa802e258c3a62e2e7410165a4', 1345124253, 1343814552, 10, 10, 0),
(4, 'adlen.kamoun', 'Adlen KAMOUN', 'adlen.kamoun@targa-consult.com', '839314403b6bcb77a5ff1d41b935363b', 1, 0, 70, 0, 0, 7, 'c59764d0b866ea26cf07cdfd2c2213f2b3289a7be0fa8d41bfd1c88f22a00d06', 1344346092, 1344346092, 10, 10, 0),
(6, 'fadhel.maina', 'Fadhel MAINA', 'fadhel.maina@targa-consult.com ', 'a5b7468e22d4c1270b85177f359a0dd4', 1, 0, 70, 0, 0, 0, '4b5adf22650595c0930e66d398cc7d5d66a1c0ad126a1d7ebaefa0ef6bfe9a04', 1344347203, 1344347203, 10, 10, 0),
(58, 'username', 'realname', 'user@domain.com', '28c6834b3a20897d73c86e8e9f0bf040', 1, 0, 70, 0, 0, 0, '9cf07b0c1317286e1af26d09b40003bd1e1fe9ee769aa6bf328f0f83b09e028b', 1344948877, 1344948877, 20, 30, 10);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;