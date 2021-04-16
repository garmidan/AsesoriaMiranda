-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-04-2021 a las 01:18:36
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `asesoriamiranda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivoscargardos`
--

CREATE TABLE `archivoscargardos` (
  `idarchivoscargardos` int(11) NOT NULL,
  `archivo` varchar(50) NOT NULL,
  `fecha` datetime NOT NULL,
  `idusuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution`
--

CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `START_TIME` datetime DEFAULT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_job_execution`
--

INSERT INTO `batch_job_execution` (`JOB_EXECUTION_ID`, `VERSION`, `JOB_INSTANCE_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`, `JOB_CONFIGURATION_LOCATION`) VALUES
(1, 2, 1, '2020-10-08 21:26:50', '2020-10-08 21:26:51', '2020-10-08 21:26:51', 'FAILED', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:410)\r\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:136)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy490.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.execute(JobLauncherApplicationRunner.java:199)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.executeLocalJobs(JobLauncherApplicationRunner.java:173)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.launchJobFrom', '2020-10-08 21:26:51', NULL),
(2, 2, 2, '2020-10-08 21:32:01', '2020-10-08 21:32:01', '2020-10-08 21:32:01', 'FAILED', 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:410)\r\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:136)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy502.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.execute(JobLauncherApplicationRunner.java:199)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.executeLocalJobs(JobLauncherApplicationRunner.java:173)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.launchJobFrom', '2020-10-08 21:32:01', NULL),
(3, 2, 3, '2020-10-08 21:32:24', '2020-10-08 21:32:24', '2020-10-08 21:32:24', 'COMPLETED', 'COMPLETED', '', '2020-10-08 21:32:24', NULL),
(4, 2, 4, '2020-10-08 21:34:37', '2020-10-08 21:34:37', '2020-10-08 21:34:37', 'COMPLETED', 'COMPLETED', '', '2020-10-08 21:34:37', NULL),
(5, 2, 5, '2020-10-08 21:37:12', '2020-10-08 21:37:12', '2020-10-08 21:37:12', 'COMPLETED', 'COMPLETED', '', '2020-10-08 21:37:12', NULL),
(6, 2, 5, '2020-10-08 21:39:43', '2020-10-08 21:39:43', '2020-10-08 21:39:43', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:39:43', NULL),
(7, 2, 5, '2020-10-08 21:41:26', '2020-10-08 21:41:26', '2020-10-08 21:41:26', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:41:26', NULL),
(8, 2, 5, '2020-10-08 21:41:47', '2020-10-08 21:41:47', '2020-10-08 21:41:47', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:41:47', NULL),
(9, 2, 5, '2020-10-08 21:43:39', '2020-10-08 21:43:39', '2020-10-08 21:43:39', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:43:39', NULL),
(10, 2, 5, '2020-10-08 21:44:05', '2020-10-08 21:44:05', '2020-10-08 21:44:05', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:44:05', NULL),
(11, 2, 5, '2020-10-08 21:44:33', '2020-10-08 21:44:33', '2020-10-08 21:44:33', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:44:33', NULL),
(12, 2, 5, '2020-10-08 21:45:23', '2020-10-08 21:45:23', '2020-10-08 21:45:23', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:45:23', NULL),
(13, 2, 5, '2020-10-08 21:46:08', '2020-10-08 21:46:08', '2020-10-08 21:46:08', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:46:08', NULL),
(14, 2, 5, '2020-10-08 21:48:09', '2020-10-08 21:48:09', '2020-10-08 21:48:09', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-08 21:48:09', NULL),
(15, 2, 5, '2020-10-09 01:12:11', '2020-10-09 01:12:11', '2020-10-09 01:12:11', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 01:12:11', NULL),
(16, 2, 5, '2020-10-09 01:29:25', '2020-10-09 01:29:25', '2020-10-09 01:29:25', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 01:29:25', NULL),
(17, 2, 5, '2020-10-09 13:21:23', '2020-10-09 13:21:23', '2020-10-09 13:21:23', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:21:23', NULL),
(18, 2, 5, '2020-10-09 13:23:36', '2020-10-09 13:23:36', '2020-10-09 13:23:36', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:23:36', NULL),
(19, 2, 5, '2020-10-09 13:24:03', '2020-10-09 13:24:03', '2020-10-09 13:24:03', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:24:03', NULL),
(20, 2, 5, '2020-10-09 13:24:38', '2020-10-09 13:24:38', '2020-10-09 13:24:38', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:24:38', NULL),
(21, 2, 5, '2020-10-09 13:26:42', '2020-10-09 13:26:42', '2020-10-09 13:26:42', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:26:42', NULL),
(22, 2, 5, '2020-10-09 13:30:48', '2020-10-09 13:30:48', '2020-10-09 13:30:48', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:30:48', NULL),
(23, 2, 5, '2020-10-09 13:30:56', '2020-10-09 13:30:56', '2020-10-09 13:30:56', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:30:56', NULL),
(24, 2, 5, '2020-10-09 13:31:09', '2020-10-09 13:31:09', '2020-10-09 13:31:09', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:31:09', NULL),
(25, 2, 5, '2020-10-09 13:32:54', '2020-10-09 13:32:54', '2020-10-09 13:32:54', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:32:54', NULL),
(26, 2, 5, '2020-10-09 13:37:48', '2020-10-09 13:37:48', '2020-10-09 13:37:49', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:37:49', NULL),
(27, 2, 5, '2020-10-09 13:43:31', '2020-10-09 13:43:31', '2020-10-09 13:43:32', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:43:32', NULL),
(28, 2, 5, '2020-10-09 13:44:06', '2020-10-09 13:44:06', '2020-10-09 13:44:06', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:44:06', NULL),
(29, 2, 5, '2020-10-09 13:44:23', '2020-10-09 13:44:23', '2020-10-09 13:44:23', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:44:23', NULL),
(30, 2, 5, '2020-10-09 13:44:30', '2020-10-09 13:44:30', '2020-10-09 13:44:30', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:44:30', NULL),
(31, 2, 5, '2020-10-09 13:44:38', '2020-10-09 13:44:38', '2020-10-09 13:44:38', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:44:38', NULL),
(32, 2, 5, '2020-10-09 13:44:46', '2020-10-09 13:44:46', '2020-10-09 13:44:46', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:44:46', NULL),
(33, 2, 5, '2020-10-09 13:44:52', '2020-10-09 13:44:52', '2020-10-09 13:44:52', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:44:52', NULL),
(34, 2, 5, '2020-10-09 13:45:01', '2020-10-09 13:45:01', '2020-10-09 13:45:01', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:45:01', NULL),
(35, 2, 5, '2020-10-09 13:45:08', '2020-10-09 13:45:08', '2020-10-09 13:45:08', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:45:08', NULL),
(36, 2, 5, '2020-10-09 13:45:38', '2020-10-09 13:45:38', '2020-10-09 13:45:38', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:45:38', NULL),
(37, 2, 5, '2020-10-09 13:46:20', '2020-10-09 13:46:20', '2020-10-09 13:46:20', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:46:20', NULL),
(38, 2, 5, '2020-10-09 13:47:08', '2020-10-09 13:47:08', '2020-10-09 13:47:08', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:47:08', NULL),
(39, 2, 5, '2020-10-09 13:50:08', '2020-10-09 13:50:08', '2020-10-09 13:50:08', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:50:08', NULL),
(40, 2, 5, '2020-10-09 13:50:24', '2020-10-09 13:50:24', '2020-10-09 13:50:25', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:50:25', NULL),
(41, 2, 5, '2020-10-09 13:50:43', '2020-10-09 13:50:43', '2020-10-09 13:50:43', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:50:43', NULL),
(42, 2, 5, '2020-10-09 13:52:41', '2020-10-09 13:52:41', '2020-10-09 13:52:41', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:52:41', NULL),
(43, 2, 5, '2020-10-09 13:57:08', '2020-10-09 13:57:08', '2020-10-09 13:57:09', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:57:09', NULL),
(44, 2, 5, '2020-10-09 13:57:28', '2020-10-09 13:57:28', '2020-10-09 13:57:28', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:57:28', NULL),
(45, 2, 5, '2020-10-09 13:57:36', '2020-10-09 13:57:36', '2020-10-09 13:57:36', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:57:36', NULL),
(46, 2, 5, '2020-10-09 13:57:57', '2020-10-09 13:57:57', '2020-10-09 13:57:57', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:57:57', NULL),
(47, 2, 5, '2020-10-09 13:58:05', '2020-10-09 13:58:05', '2020-10-09 13:58:05', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:58:05', NULL),
(48, 2, 5, '2020-10-09 13:59:15', '2020-10-09 13:59:15', '2020-10-09 13:59:16', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 13:59:16', NULL),
(49, 2, 5, '2020-10-09 14:00:08', '2020-10-09 14:00:08', '2020-10-09 14:00:08', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:00:08', NULL),
(50, 2, 5, '2020-10-09 14:00:17', '2020-10-09 14:00:17', '2020-10-09 14:00:17', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:00:17', NULL),
(51, 2, 5, '2020-10-09 14:00:28', '2020-10-09 14:00:28', '2020-10-09 14:00:28', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:00:28', NULL),
(52, 2, 5, '2020-10-09 14:00:34', '2020-10-09 14:00:34', '2020-10-09 14:00:34', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:00:34', NULL),
(53, 2, 5, '2020-10-09 14:01:45', '2020-10-09 14:01:45', '2020-10-09 14:01:45', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:01:45', NULL),
(54, 2, 5, '2020-10-09 14:02:22', '2020-10-09 14:02:22', '2020-10-09 14:02:22', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:02:22', NULL),
(55, 2, 5, '2020-10-09 14:02:37', '2020-10-09 14:02:37', '2020-10-09 14:02:37', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:02:37', NULL),
(56, 2, 5, '2020-10-09 14:03:43', '2020-10-09 14:03:43', '2020-10-09 14:03:44', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:03:44', NULL),
(57, 2, 5, '2020-10-09 14:04:30', '2020-10-09 14:04:30', '2020-10-09 14:04:30', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:04:30', NULL),
(58, 2, 5, '2020-10-09 14:04:52', '2020-10-09 14:04:52', '2020-10-09 14:04:52', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:04:52', NULL),
(59, 2, 5, '2020-10-09 14:05:02', '2020-10-09 14:05:02', '2020-10-09 14:05:02', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:05:02', NULL),
(60, 2, 5, '2020-10-09 14:06:32', '2020-10-09 14:06:32', '2020-10-09 14:06:33', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:06:33', NULL),
(61, 2, 5, '2020-10-09 14:06:43', '2020-10-09 14:06:43', '2020-10-09 14:06:43', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:06:43', NULL),
(62, 2, 5, '2020-10-09 14:06:58', '2020-10-09 14:06:59', '2020-10-09 14:06:59', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:06:59', NULL),
(63, 2, 6, '2020-10-09 14:07:01', '2020-10-09 14:07:01', '2020-10-09 14:07:01', 'COMPLETED', 'COMPLETED', '', '2020-10-09 14:07:01', NULL),
(64, 2, 5, '2020-10-09 14:09:05', '2020-10-09 14:09:05', '2020-10-09 14:09:05', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:09:05', NULL),
(65, 2, 7, '2020-10-09 14:09:19', '2020-10-09 14:09:19', '2020-10-09 14:09:19', 'FAILED', 'FAILED', '', '2020-10-09 14:09:19', NULL),
(66, 2, 5, '2020-10-09 14:09:53', '2020-10-09 14:09:53', '2020-10-09 14:09:53', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:09:53', NULL),
(67, 2, 8, '2020-10-09 14:10:28', '2020-10-09 14:10:28', '2020-10-09 14:10:29', 'COMPLETED', 'COMPLETED', '', '2020-10-09 14:10:29', NULL),
(68, 2, 5, '2020-10-09 14:11:46', '2020-10-09 14:11:46', '2020-10-09 14:11:47', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:11:47', NULL),
(69, 2, 5, '2020-10-09 14:12:03', '2020-10-09 14:12:03', '2020-10-09 14:12:03', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:12:03', NULL),
(70, 2, 5, '2020-10-09 14:12:54', '2020-10-09 14:12:54', '2020-10-09 14:12:54', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:12:54', NULL),
(71, 2, 5, '2020-10-09 14:13:05', '2020-10-09 14:13:05', '2020-10-09 14:13:05', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:13:05', NULL),
(72, 2, 5, '2020-10-09 14:13:16', '2020-10-09 14:13:16', '2020-10-09 14:13:16', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:13:16', NULL),
(73, 2, 9, '2020-10-09 14:13:23', '2020-10-09 14:13:23', '2020-10-09 14:13:23', 'FAILED', 'FAILED', '', '2020-10-09 14:13:23', NULL),
(74, 2, 5, '2020-10-09 14:15:59', '2020-10-09 14:15:59', '2020-10-09 14:15:59', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:15:59', NULL),
(75, 2, 10, '2020-10-09 14:16:04', '2020-10-09 14:16:04', '2020-10-09 14:16:04', 'FAILED', 'FAILED', '', '2020-10-09 14:16:04', NULL),
(76, 2, 5, '2020-10-09 14:20:12', '2020-10-09 14:20:12', '2020-10-09 14:20:13', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:20:13', NULL),
(77, 2, 11, '2020-10-09 14:20:22', '2020-10-09 14:20:22', '2020-10-09 14:20:22', 'FAILED', 'FAILED', '', '2020-10-09 14:20:22', NULL),
(78, 2, 5, '2020-10-09 14:22:31', '2020-10-09 14:22:32', '2020-10-09 14:22:32', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:22:32', NULL),
(79, 2, 12, '2020-10-09 14:22:37', '2020-10-09 14:22:37', '2020-10-09 14:22:37', 'FAILED', 'FAILED', '', '2020-10-09 14:22:37', NULL),
(80, 2, 5, '2020-10-09 14:23:07', '2020-10-09 14:23:07', '2020-10-09 14:23:07', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:23:07', NULL),
(81, 2, 5, '2020-10-09 14:23:28', '2020-10-09 14:23:28', '2020-10-09 14:23:28', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:23:28', NULL),
(82, 2, 5, '2020-10-09 14:24:09', '2020-10-09 14:24:09', '2020-10-09 14:24:09', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:24:09', NULL),
(83, 2, 13, '2020-10-09 14:24:14', '2020-10-09 14:24:14', '2020-10-09 14:24:14', 'COMPLETED', 'COMPLETED', '', '2020-10-09 14:24:14', NULL),
(84, 2, 5, '2020-10-09 14:29:05', '2020-10-09 14:29:05', '2020-10-09 14:29:05', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:29:05', NULL),
(85, 2, 14, '2020-10-09 14:29:12', '2020-10-09 14:29:12', '2020-10-09 14:29:12', 'COMPLETED', 'COMPLETED', '', '2020-10-09 14:29:12', NULL),
(86, 2, 5, '2020-10-09 14:32:16', '2020-10-09 14:32:16', '2020-10-09 14:32:17', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:32:17', NULL),
(87, 2, 15, '2020-10-09 14:32:21', '2020-10-09 14:32:21', '2020-10-09 14:32:21', 'COMPLETED', 'COMPLETED', '', '2020-10-09 14:32:21', NULL),
(88, 2, 5, '2020-10-09 14:50:23', '2020-10-09 14:50:23', '2020-10-09 14:50:23', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:50:23', NULL),
(89, 2, 16, '2020-10-09 14:50:35', '2020-10-09 14:50:35', '2020-10-09 14:50:35', 'FAILED', 'FAILED', '', '2020-10-09 14:50:35', NULL),
(90, 2, 5, '2020-10-09 14:51:16', '2020-10-09 14:51:16', '2020-10-09 14:51:16', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:51:16', NULL),
(91, 2, 5, '2020-10-09 14:52:23', '2020-10-09 14:52:23', '2020-10-09 14:52:23', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:52:23', NULL),
(92, 2, 17, '2020-10-09 14:52:26', '2020-10-09 14:52:26', '2020-10-09 14:52:27', 'FAILED', 'FAILED', '', '2020-10-09 14:52:27', NULL),
(93, 2, 5, '2020-10-09 14:53:30', '2020-10-09 14:53:30', '2020-10-09 14:53:30', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:53:30', NULL),
(94, 2, 5, '2020-10-09 14:53:48', '2020-10-09 14:53:48', '2020-10-09 14:53:48', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:53:48', NULL),
(95, 2, 18, '2020-10-09 14:54:43', '2020-10-09 14:54:44', '2020-10-09 14:54:44', 'FAILED', 'FAILED', '', '2020-10-09 14:54:44', NULL),
(96, 2, 5, '2020-10-09 14:56:21', '2020-10-09 14:56:21', '2020-10-09 14:56:21', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:56:21', NULL),
(97, 2, 19, '2020-10-09 14:56:25', '2020-10-09 14:56:25', '2020-10-09 14:56:25', 'FAILED', 'FAILED', '', '2020-10-09 14:56:25', NULL),
(98, 2, 5, '2020-10-09 14:56:47', '2020-10-09 14:56:48', '2020-10-09 14:56:48', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 14:56:48', NULL),
(99, 2, 5, '2020-10-09 15:08:14', '2020-10-09 15:08:14', '2020-10-09 15:08:14', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:08:14', NULL),
(100, 2, 20, '2020-10-09 15:08:19', '2020-10-09 15:08:19', '2020-10-09 15:08:19', 'FAILED', 'FAILED', '', '2020-10-09 15:08:19', NULL),
(101, 2, 5, '2020-10-09 15:10:23', '2020-10-09 15:10:23', '2020-10-09 15:10:23', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:10:23', NULL),
(102, 2, 5, '2020-10-09 15:10:51', '2020-10-09 15:10:51', '2020-10-09 15:10:51', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:10:51', NULL),
(103, 2, 5, '2020-10-09 15:11:43', '2020-10-09 15:11:43', '2020-10-09 15:11:43', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:11:43', NULL),
(104, 2, 5, '2020-10-09 15:12:29', '2020-10-09 15:12:29', '2020-10-09 15:12:30', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:12:30', NULL),
(105, 2, 5, '2020-10-09 15:13:03', '2020-10-09 15:13:03', '2020-10-09 15:13:03', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:13:03', NULL),
(106, 2, 5, '2020-10-09 15:13:13', '2020-10-09 15:13:13', '2020-10-09 15:13:13', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:13:13', NULL),
(107, 2, 5, '2020-10-09 15:13:41', '2020-10-09 15:13:41', '2020-10-09 15:13:41', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:13:41', NULL),
(108, 2, 21, '2020-10-09 15:13:48', '2020-10-09 15:13:48', '2020-10-09 15:13:48', 'COMPLETED', 'COMPLETED', '', '2020-10-09 15:13:48', NULL),
(109, 2, 5, '2020-10-09 15:16:25', '2020-10-09 15:16:25', '2020-10-09 15:16:25', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:16:25', NULL),
(110, 2, 5, '2020-10-09 15:17:07', '2020-10-09 15:17:07', '2020-10-09 15:17:08', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:17:08', NULL),
(111, 2, 5, '2020-10-09 15:19:12', '2020-10-09 15:19:12', '2020-10-09 15:19:12', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:19:12', NULL),
(112, 2, 5, '2020-10-09 15:19:24', '2020-10-09 15:19:24', '2020-10-09 15:19:24', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:19:24', NULL),
(113, 2, 5, '2020-10-09 15:19:32', '2020-10-09 15:19:32', '2020-10-09 15:19:32', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:19:32', NULL),
(114, 2, 22, '2020-10-09 15:19:54', '2020-10-09 15:19:54', '2020-10-09 15:19:54', 'COMPLETED', 'COMPLETED', '', '2020-10-09 15:19:54', NULL),
(115, 2, 5, '2020-10-09 15:21:22', '2020-10-09 15:21:22', '2020-10-09 15:21:22', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:21:22', NULL),
(116, 2, 5, '2020-10-09 15:25:37', '2020-10-09 15:25:37', '2020-10-09 15:25:38', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:25:38', NULL),
(117, 2, 23, '2020-10-09 15:26:12', '2020-10-09 15:26:12', '2020-10-09 15:26:12', 'COMPLETED', 'COMPLETED', '', '2020-10-09 15:26:12', NULL),
(118, 2, 5, '2020-10-09 15:26:31', '2020-10-09 15:26:31', '2020-10-09 15:26:32', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:26:32', NULL),
(119, 2, 5, '2020-10-09 15:26:39', '2020-10-09 15:26:39', '2020-10-09 15:26:39', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:26:39', NULL),
(120, 2, 24, '2020-10-09 15:26:43', '2020-10-09 15:26:43', '2020-10-09 15:26:43', 'COMPLETED', 'COMPLETED', '', '2020-10-09 15:26:43', NULL),
(121, 2, 5, '2020-10-09 15:26:52', '2020-10-09 15:26:52', '2020-10-09 15:26:52', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:26:52', NULL),
(122, 2, 25, '2020-10-09 15:40:11', '2020-10-09 15:40:11', '2020-10-09 15:40:11', 'FAILED', 'FAILED', '', '2020-10-09 15:40:11', NULL),
(123, 2, 5, '2020-10-09 15:40:33', '2020-10-09 15:40:33', '2020-10-09 15:40:33', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:40:33', NULL),
(124, 2, 26, '2020-10-09 15:40:38', '2020-10-09 15:40:38', '2020-10-09 15:40:38', 'COMPLETED', 'COMPLETED', '', '2020-10-09 15:40:38', NULL),
(125, 2, 5, '2020-10-09 15:41:36', '2020-10-09 15:41:37', '2020-10-09 15:41:37', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:41:37', NULL),
(126, 2, 5, '2020-10-09 15:41:40', '2020-10-09 15:41:40', '2020-10-09 15:41:40', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:41:40', NULL),
(127, 2, 27, '2020-10-09 15:42:26', '2020-10-09 15:42:26', '2020-10-09 15:42:26', 'FAILED', 'FAILED', '', '2020-10-09 15:42:26', NULL),
(128, 2, 5, '2020-10-09 15:42:46', '2020-10-09 15:42:46', '2020-10-09 15:42:46', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:42:46', NULL),
(129, 2, 28, '2020-10-09 15:42:56', '2020-10-09 15:42:56', '2020-10-09 15:42:56', 'FAILED', 'FAILED', '', '2020-10-09 15:42:56', NULL),
(130, 2, 5, '2020-10-09 15:44:14', '2020-10-09 15:44:14', '2020-10-09 15:44:14', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:44:14', NULL),
(131, 2, 5, '2020-10-09 15:44:18', '2020-10-09 15:44:18', '2020-10-09 15:44:18', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:44:18', NULL),
(132, 2, 29, '2020-10-09 15:44:23', '2020-10-09 15:44:23', '2020-10-09 15:44:23', 'COMPLETED', 'COMPLETED', '', '2020-10-09 15:44:23', NULL),
(133, 2, 5, '2020-10-09 15:45:33', '2020-10-09 15:45:33', '2020-10-09 15:45:33', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:45:33', NULL),
(134, 2, 5, '2020-10-09 15:45:37', '2020-10-09 15:45:37', '2020-10-09 15:45:37', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:45:37', NULL),
(135, 2, 5, '2020-10-09 15:45:46', '2020-10-09 15:45:46', '2020-10-09 15:45:46', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:45:46', NULL),
(136, 2, 5, '2020-10-09 15:45:57', '2020-10-09 15:45:57', '2020-10-09 15:45:58', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:45:58', NULL),
(137, 2, 30, '2020-10-09 15:46:03', '2020-10-09 15:46:03', '2020-10-09 15:46:03', 'FAILED', 'FAILED', '', '2020-10-09 15:46:03', NULL),
(138, 2, 5, '2020-10-09 15:46:41', '2020-10-09 15:46:41', '2020-10-09 15:46:41', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:46:41', NULL),
(139, 2, 31, '2020-10-09 15:46:47', '2020-10-09 15:46:47', '2020-10-09 15:46:47', 'COMPLETED', 'COMPLETED', '', '2020-10-09 15:46:47', NULL),
(140, 2, 5, '2020-10-09 15:49:35', '2020-10-09 15:49:35', '2020-10-09 15:49:35', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:49:35', NULL),
(141, 2, 5, '2020-10-09 15:49:48', '2020-10-09 15:49:48', '2020-10-09 15:49:48', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:49:48', NULL),
(142, 2, 5, '2020-10-09 15:49:58', '2020-10-09 15:49:58', '2020-10-09 15:49:59', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:49:59', NULL),
(143, 2, 32, '2020-10-09 15:50:23', '2020-10-09 15:50:23', '2020-10-09 15:50:23', 'FAILED', 'FAILED', '', '2020-10-09 15:50:23', NULL),
(144, 2, 5, '2020-10-09 15:51:02', '2020-10-09 15:51:02', '2020-10-09 15:51:03', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:51:03', NULL),
(145, 2, 33, '2020-10-09 15:51:06', '2020-10-09 15:51:06', '2020-10-09 15:51:07', 'FAILED', 'FAILED', '', '2020-10-09 15:51:07', NULL),
(146, 2, 5, '2020-10-09 15:51:31', '2020-10-09 15:51:31', '2020-10-09 15:51:31', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:51:31', NULL),
(147, 2, 5, '2020-10-09 15:51:39', '2020-10-09 15:51:39', '2020-10-09 15:51:39', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:51:39', NULL),
(148, 2, 34, '2020-10-09 15:52:39', '2020-10-09 15:52:39', '2020-10-09 15:52:39', 'FAILED', 'FAILED', '', '2020-10-09 15:52:39', NULL),
(149, 2, 5, '2020-10-09 15:53:09', '2020-10-09 15:53:09', '2020-10-09 15:53:09', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:53:09', NULL),
(150, 2, 5, '2020-10-09 15:53:14', '2020-10-09 15:53:14', '2020-10-09 15:53:14', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:53:14', NULL),
(151, 2, 5, '2020-10-09 15:53:20', '2020-10-09 15:53:20', '2020-10-09 15:53:20', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:53:20', NULL),
(152, 2, 35, '2020-10-09 15:54:09', '2020-10-09 15:54:09', '2020-10-09 15:54:09', 'FAILED', 'FAILED', '', '2020-10-09 15:54:09', NULL),
(153, 2, 5, '2020-10-09 15:54:47', '2020-10-09 15:54:48', '2020-10-09 15:54:48', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:54:48', NULL),
(154, 2, 5, '2020-10-09 15:55:03', '2020-10-09 15:55:03', '2020-10-09 15:55:03', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:55:03', NULL),
(155, 2, 5, '2020-10-09 15:55:31', '2020-10-09 15:55:31', '2020-10-09 15:55:31', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 15:55:31', NULL),
(156, 2, 36, '2020-10-09 15:55:51', '2020-10-09 15:55:51', '2020-10-09 15:55:51', 'FAILED', 'FAILED', '', '2020-10-09 15:55:51', NULL),
(157, 2, 5, '2020-10-09 16:00:27', '2020-10-09 16:00:27', '2020-10-09 16:00:27', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:00:27', NULL),
(158, 2, 5, '2020-10-09 16:00:35', '2020-10-09 16:00:35', '2020-10-09 16:00:35', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:00:35', NULL),
(159, 2, 5, '2020-10-09 16:02:57', '2020-10-09 16:02:57', '2020-10-09 16:02:57', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:02:57', NULL),
(160, 2, 37, '2020-10-09 16:03:43', '2020-10-09 16:03:43', '2020-10-09 16:03:43', 'FAILED', 'FAILED', '', '2020-10-09 16:03:43', NULL),
(161, 2, 5, '2020-10-09 16:04:01', '2020-10-09 16:04:01', '2020-10-09 16:04:01', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:04:01', NULL),
(162, 2, 5, '2020-10-09 16:04:58', '2020-10-09 16:04:58', '2020-10-09 16:04:58', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:04:58', NULL),
(163, 2, 5, '2020-10-09 16:10:07', '2020-10-09 16:10:08', '2020-10-09 16:10:08', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:10:08', NULL),
(164, 2, 5, '2020-10-09 16:12:05', '2020-10-09 16:12:05', '2020-10-09 16:12:05', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:12:05', NULL),
(165, 2, 5, '2020-10-09 16:12:10', '2020-10-09 16:12:10', '2020-10-09 16:12:10', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:12:10', NULL),
(166, 2, 5, '2020-10-09 16:12:32', '2020-10-09 16:12:32', '2020-10-09 16:12:32', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:12:32', NULL),
(167, 2, 5, '2020-10-09 16:12:58', '2020-10-09 16:12:58', '2020-10-09 16:12:58', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:12:58', NULL),
(168, 2, 5, '2020-10-09 16:13:10', '2020-10-09 16:13:10', '2020-10-09 16:13:10', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:13:10', NULL),
(169, 2, 38, '2020-10-09 16:13:37', '2020-10-09 16:13:37', '2020-10-09 16:13:37', 'FAILED', 'FAILED', '', '2020-10-09 16:13:37', NULL),
(170, 2, 5, '2020-10-09 16:15:28', '2020-10-09 16:15:28', '2020-10-09 16:15:28', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:15:28', NULL),
(171, 2, 5, '2020-10-09 16:15:42', '2020-10-09 16:15:42', '2020-10-09 16:15:42', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:15:42', NULL),
(172, 2, 39, '2020-10-09 16:15:59', '2020-10-09 16:15:59', '2020-10-09 16:15:59', 'COMPLETED', 'COMPLETED', '', '2020-10-09 16:15:59', NULL),
(173, 2, 5, '2020-10-09 16:16:34', '2020-10-09 16:16:34', '2020-10-09 16:16:34', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:16:34', NULL),
(174, 2, 5, '2020-10-09 16:16:42', '2020-10-09 16:16:42', '2020-10-09 16:16:42', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:16:42', NULL),
(175, 2, 5, '2020-10-09 16:35:07', '2020-10-09 16:35:08', '2020-10-09 16:35:08', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:35:08', NULL),
(176, 2, 5, '2020-10-09 16:53:05', '2020-10-09 16:53:05', '2020-10-09 16:53:06', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:53:06', NULL),
(177, 2, 5, '2020-10-09 16:53:24', '2020-10-09 16:53:24', '2020-10-09 16:53:24', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:53:24', NULL),
(178, 2, 5, '2020-10-09 16:54:07', '2020-10-09 16:54:07', '2020-10-09 16:54:07', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 16:54:07', NULL),
(179, 2, 40, '2020-10-09 16:54:57', '2020-10-09 16:54:57', '2020-10-09 16:54:57', 'COMPLETED', 'COMPLETED', '', '2020-10-09 16:54:57', NULL),
(180, 2, 5, '2020-10-09 17:07:41', '2020-10-09 17:07:41', '2020-10-09 17:07:41', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:07:41', NULL),
(181, 2, 5, '2020-10-09 17:09:33', '2020-10-09 17:09:33', '2020-10-09 17:09:33', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:09:33', NULL),
(182, 2, 5, '2020-10-09 17:11:54', '2020-10-09 17:11:54', '2020-10-09 17:11:54', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:11:54', NULL),
(183, 2, 5, '2020-10-09 17:15:56', '2020-10-09 17:15:56', '2020-10-09 17:15:56', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:15:56', NULL),
(184, 2, 5, '2020-10-09 17:16:41', '2020-10-09 17:16:41', '2020-10-09 17:16:41', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:16:41', NULL),
(185, 2, 5, '2020-10-09 17:17:13', '2020-10-09 17:17:13', '2020-10-09 17:17:13', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:17:13', NULL),
(186, 2, 5, '2020-10-09 17:17:29', '2020-10-09 17:17:29', '2020-10-09 17:17:29', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:17:29', NULL),
(187, 2, 41, '2020-10-09 17:17:41', '2020-10-09 17:17:41', '2020-10-09 17:17:42', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:17:42', NULL),
(188, 2, 5, '2020-10-09 17:23:26', '2020-10-09 17:23:26', '2020-10-09 17:23:26', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:23:26', NULL),
(189, 2, 5, '2020-10-09 17:27:01', '2020-10-09 17:27:01', '2020-10-09 17:27:01', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:27:01', NULL),
(190, 2, 5, '2020-10-09 17:29:00', '2020-10-09 17:29:00', '2020-10-09 17:29:00', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:29:00', NULL),
(191, 2, 5, '2020-10-09 17:32:04', '2020-10-09 17:32:04', '2020-10-09 17:32:04', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:32:04', NULL),
(192, 2, 5, '2020-10-09 17:32:43', '2020-10-09 17:32:43', '2020-10-09 17:32:43', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:32:43', NULL),
(193, 2, 5, '2020-10-09 17:32:49', '2020-10-09 17:32:49', '2020-10-09 17:32:49', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:32:49', NULL),
(194, 2, 42, '2020-10-09 17:33:24', '2020-10-09 17:33:25', '2020-10-09 17:33:25', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:33:25', NULL),
(195, 2, 5, '2020-10-09 17:33:53', '2020-10-09 17:33:54', '2020-10-09 17:33:54', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:33:54', NULL),
(196, 2, 5, '2020-10-09 17:34:07', '2020-10-09 17:34:07', '2020-10-09 17:34:07', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:34:07', NULL),
(197, 2, 43, '2020-10-09 17:34:12', '2020-10-09 17:34:12', '2020-10-09 17:34:12', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:34:12', NULL),
(198, 2, 5, '2020-10-09 17:36:51', '2020-10-09 17:36:51', '2020-10-09 17:36:51', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:36:51', NULL),
(199, 2, 44, '2020-10-09 17:36:58', '2020-10-09 17:36:58', '2020-10-09 17:36:59', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:36:59', NULL),
(200, 2, 5, '2020-10-09 17:37:37', '2020-10-09 17:37:37', '2020-10-09 17:37:37', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:37:37', NULL),
(201, 2, 45, '2020-10-09 17:37:40', '2020-10-09 17:37:40', '2020-10-09 17:37:40', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:37:40', NULL),
(202, 2, 5, '2020-10-09 17:38:03', '2020-10-09 17:38:03', '2020-10-09 17:38:03', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:38:03', NULL),
(203, 2, 46, '2020-10-09 17:38:05', '2020-10-09 17:38:05', '2020-10-09 17:38:05', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:38:05', NULL),
(204, 2, 5, '2020-10-09 17:38:24', '2020-10-09 17:38:24', '2020-10-09 17:38:24', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:38:24', NULL),
(205, 2, 5, '2020-10-09 17:39:33', '2020-10-09 17:39:33', '2020-10-09 17:39:34', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:39:34', NULL),
(206, 2, 47, '2020-10-09 17:39:38', '2020-10-09 17:39:38', '2020-10-09 17:39:38', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:39:38', NULL),
(207, 2, 5, '2020-10-09 17:40:32', '2020-10-09 17:40:32', '2020-10-09 17:40:32', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:40:32', NULL),
(208, 2, 5, '2020-10-09 17:40:48', '2020-10-09 17:40:48', '2020-10-09 17:40:49', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:40:49', NULL),
(209, 2, 5, '2020-10-09 17:41:00', '2020-10-09 17:41:00', '2020-10-09 17:41:00', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:41:00', NULL),
(210, 2, 48, '2020-10-09 17:41:06', '2020-10-09 17:41:06', '2020-10-09 17:41:06', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:41:06', NULL),
(211, 2, 5, '2020-10-09 17:41:23', '2020-10-09 17:41:23', '2020-10-09 17:41:24', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:41:24', NULL),
(212, 2, 49, '2020-10-09 17:41:27', '2020-10-09 17:41:27', '2020-10-09 17:41:27', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:41:27', NULL),
(213, 2, 5, '2020-10-09 17:42:10', '2020-10-09 17:42:10', '2020-10-09 17:42:11', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:42:11', NULL),
(214, 2, 5, '2020-10-09 17:44:31', '2020-10-09 17:44:31', '2020-10-09 17:44:31', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:44:31', NULL),
(215, 2, 50, '2020-10-09 17:44:34', '2020-10-09 17:44:34', '2020-10-09 17:44:35', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:44:35', NULL),
(216, 2, 5, '2020-10-09 17:45:21', '2020-10-09 17:45:21', '2020-10-09 17:45:21', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:45:21', NULL),
(217, 2, 51, '2020-10-09 17:45:24', '2020-10-09 17:45:24', '2020-10-09 17:45:24', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:45:24', NULL),
(218, 2, 5, '2020-10-09 17:45:54', '2020-10-09 17:45:54', '2020-10-09 17:45:54', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:45:54', NULL),
(219, 2, 52, '2020-10-09 17:45:57', '2020-10-09 17:45:57', '2020-10-09 17:45:57', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:45:57', NULL),
(220, 2, 5, '2020-10-09 17:46:16', '2020-10-09 17:46:17', '2020-10-09 17:46:17', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:46:17', NULL),
(221, 2, 5, '2020-10-09 17:51:06', '2020-10-09 17:51:06', '2020-10-09 17:51:07', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:51:07', NULL),
(222, 2, 5, '2020-10-09 17:52:14', '2020-10-09 17:52:14', '2020-10-09 17:52:14', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:52:14', NULL),
(223, 2, 5, '2020-10-09 17:52:28', '2020-10-09 17:52:28', '2020-10-09 17:52:28', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:52:28', NULL),
(224, 2, 53, '2020-10-09 17:52:35', '2020-10-09 17:52:35', '2020-10-09 17:52:35', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:52:35', NULL),
(225, 2, 5, '2020-10-09 17:53:23', '2020-10-09 17:53:23', '2020-10-09 17:53:23', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:53:23', NULL),
(226, 2, 54, '2020-10-09 17:53:33', '2020-10-09 17:53:33', '2020-10-09 17:53:33', 'COMPLETED', 'COMPLETED', '', '2020-10-09 17:53:33', NULL),
(227, 2, 5, '2020-10-09 17:58:04', '2020-10-09 17:58:04', '2020-10-09 17:58:04', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:58:04', NULL),
(228, 2, 5, '2020-10-09 17:58:28', '2020-10-09 17:58:28', '2020-10-09 17:58:30', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 17:58:30', NULL),
(229, 2, 5, '2020-10-09 20:04:44', '2020-10-09 20:04:44', '2020-10-09 20:04:45', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:04:45', NULL),
(230, 2, 5, '2020-10-09 20:34:32', '2020-10-09 20:34:32', '2020-10-09 20:34:32', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:34:32', NULL),
(231, 2, 5, '2020-10-09 20:37:58', '2020-10-09 20:37:58', '2020-10-09 20:37:58', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:37:58', NULL),
(232, 2, 5, '2020-10-09 20:38:00', '2020-10-09 20:38:00', '2020-10-09 20:38:00', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:38:00', NULL),
(233, 2, 5, '2020-10-09 20:38:24', '2020-10-09 20:38:24', '2020-10-09 20:38:24', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:38:24', NULL),
(234, 2, 5, '2020-10-09 20:38:38', '2020-10-09 20:38:38', '2020-10-09 20:38:38', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:38:38', NULL),
(235, 2, 5, '2020-10-09 20:40:34', '2020-10-09 20:40:34', '2020-10-09 20:40:34', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:40:34', NULL),
(236, 2, 5, '2020-10-09 20:41:10', '2020-10-09 20:41:10', '2020-10-09 20:41:10', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:41:10', NULL),
(237, 2, 5, '2020-10-09 20:41:50', '2020-10-09 20:41:51', '2020-10-09 20:41:51', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:41:51', NULL),
(238, 2, 5, '2020-10-09 20:43:44', '2020-10-09 20:43:45', '2020-10-09 20:43:45', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:43:45', NULL),
(239, 2, 5, '2020-10-09 20:45:31', '2020-10-09 20:45:31', '2020-10-09 20:45:31', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:45:31', NULL),
(240, 2, 5, '2020-10-09 20:50:12', '2020-10-09 20:50:12', '2020-10-09 20:50:12', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:50:12', NULL),
(241, 2, 5, '2020-10-09 20:50:50', '2020-10-09 20:50:51', '2020-10-09 20:50:51', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:50:51', NULL),
(242, 2, 5, '2020-10-09 20:53:58', '2020-10-09 20:53:58', '2020-10-09 20:53:59', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:53:59', NULL);
INSERT INTO `batch_job_execution` (`JOB_EXECUTION_ID`, `VERSION`, `JOB_INSTANCE_ID`, `CREATE_TIME`, `START_TIME`, `END_TIME`, `STATUS`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`, `JOB_CONFIGURATION_LOCATION`) VALUES
(243, 2, 5, '2020-10-09 20:56:08', '2020-10-09 20:56:08', '2020-10-09 20:56:09', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:56:09', NULL),
(244, 2, 5, '2020-10-09 20:58:57', '2020-10-09 20:58:57', '2020-10-09 20:58:57', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:58:57', NULL),
(245, 2, 5, '2020-10-09 20:59:14', '2020-10-09 20:59:14', '2020-10-09 20:59:14', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 20:59:14', NULL),
(246, 2, 5, '2020-10-09 21:00:18', '2020-10-09 21:00:18', '2020-10-09 21:00:19', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:00:19', NULL),
(247, 2, 5, '2020-10-09 21:00:43', '2020-10-09 21:00:43', '2020-10-09 21:00:43', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:00:43', NULL),
(248, 2, 5, '2020-10-09 21:01:40', '2020-10-09 21:01:40', '2020-10-09 21:01:40', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:01:40', NULL),
(249, 2, 5, '2020-10-09 21:02:42', '2020-10-09 21:02:42', '2020-10-09 21:02:43', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:02:43', NULL),
(250, 2, 5, '2020-10-09 21:02:46', '2020-10-09 21:02:46', '2020-10-09 21:02:47', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:02:47', NULL),
(251, 2, 5, '2020-10-09 21:02:53', '2020-10-09 21:02:53', '2020-10-09 21:02:53', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:02:53', NULL),
(252, 2, 5, '2020-10-09 21:02:56', '2020-10-09 21:02:56', '2020-10-09 21:02:56', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:02:56', NULL),
(253, 2, 5, '2020-10-09 21:03:10', '2020-10-09 21:03:11', '2020-10-09 21:03:11', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:03:11', NULL),
(254, 2, 5, '2020-10-09 21:04:02', '2020-10-09 21:04:02', '2020-10-09 21:04:02', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:04:02', NULL),
(255, 2, 55, '2020-10-09 21:07:00', '2020-10-09 21:07:00', '2020-10-09 21:07:01', 'COMPLETED', 'COMPLETED', '', '2020-10-09 21:07:01', NULL),
(256, 2, 5, '2020-10-09 21:08:47', '2020-10-09 21:08:47', '2020-10-09 21:08:48', 'COMPLETED', 'NOOP', 'All steps already completed or no steps configured for this job.', '2020-10-09 21:08:48', NULL),
(257, 2, 56, '2020-10-09 21:11:24', '2020-10-09 21:11:24', '2020-10-09 21:11:24', 'COMPLETED', 'COMPLETED', '', '2020-10-09 21:11:24', NULL),
(258, 2, 57, '2020-10-09 21:22:46', '2020-10-09 21:22:46', '2020-10-09 21:22:47', 'COMPLETED', 'COMPLETED', '', '2020-10-09 21:22:47', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_context`
--

CREATE TABLE `batch_job_execution_context` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_job_execution_context`
--

INSERT INTO `batch_job_execution_context` (`JOB_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(1, '{\"@class\":\"java.util.HashMap\"}', NULL),
(2, '{\"@class\":\"java.util.HashMap\"}', NULL),
(3, '{\"@class\":\"java.util.HashMap\"}', NULL),
(4, '{\"@class\":\"java.util.HashMap\"}', NULL),
(5, '{\"@class\":\"java.util.HashMap\"}', NULL),
(6, '{\"@class\":\"java.util.HashMap\"}', NULL),
(7, '{\"@class\":\"java.util.HashMap\"}', NULL),
(8, '{\"@class\":\"java.util.HashMap\"}', NULL),
(9, '{\"@class\":\"java.util.HashMap\"}', NULL),
(10, '{\"@class\":\"java.util.HashMap\"}', NULL),
(11, '{\"@class\":\"java.util.HashMap\"}', NULL),
(12, '{\"@class\":\"java.util.HashMap\"}', NULL),
(13, '{\"@class\":\"java.util.HashMap\"}', NULL),
(14, '{\"@class\":\"java.util.HashMap\"}', NULL),
(15, '{\"@class\":\"java.util.HashMap\"}', NULL),
(16, '{\"@class\":\"java.util.HashMap\"}', NULL),
(17, '{\"@class\":\"java.util.HashMap\"}', NULL),
(18, '{\"@class\":\"java.util.HashMap\"}', NULL),
(19, '{\"@class\":\"java.util.HashMap\"}', NULL),
(20, '{\"@class\":\"java.util.HashMap\"}', NULL),
(21, '{\"@class\":\"java.util.HashMap\"}', NULL),
(22, '{\"@class\":\"java.util.HashMap\"}', NULL),
(23, '{\"@class\":\"java.util.HashMap\"}', NULL),
(24, '{\"@class\":\"java.util.HashMap\"}', NULL),
(25, '{\"@class\":\"java.util.HashMap\"}', NULL),
(26, '{\"@class\":\"java.util.HashMap\"}', NULL),
(27, '{\"@class\":\"java.util.HashMap\"}', NULL),
(28, '{\"@class\":\"java.util.HashMap\"}', NULL),
(29, '{\"@class\":\"java.util.HashMap\"}', NULL),
(30, '{\"@class\":\"java.util.HashMap\"}', NULL),
(31, '{\"@class\":\"java.util.HashMap\"}', NULL),
(32, '{\"@class\":\"java.util.HashMap\"}', NULL),
(33, '{\"@class\":\"java.util.HashMap\"}', NULL),
(34, '{\"@class\":\"java.util.HashMap\"}', NULL),
(35, '{\"@class\":\"java.util.HashMap\"}', NULL),
(36, '{\"@class\":\"java.util.HashMap\"}', NULL),
(37, '{\"@class\":\"java.util.HashMap\"}', NULL),
(38, '{\"@class\":\"java.util.HashMap\"}', NULL),
(39, '{\"@class\":\"java.util.HashMap\"}', NULL),
(40, '{\"@class\":\"java.util.HashMap\"}', NULL),
(41, '{\"@class\":\"java.util.HashMap\"}', NULL),
(42, '{\"@class\":\"java.util.HashMap\"}', NULL),
(43, '{\"@class\":\"java.util.HashMap\"}', NULL),
(44, '{\"@class\":\"java.util.HashMap\"}', NULL),
(45, '{\"@class\":\"java.util.HashMap\"}', NULL),
(46, '{\"@class\":\"java.util.HashMap\"}', NULL),
(47, '{\"@class\":\"java.util.HashMap\"}', NULL),
(48, '{\"@class\":\"java.util.HashMap\"}', NULL),
(49, '{\"@class\":\"java.util.HashMap\"}', NULL),
(50, '{\"@class\":\"java.util.HashMap\"}', NULL),
(51, '{\"@class\":\"java.util.HashMap\"}', NULL),
(52, '{\"@class\":\"java.util.HashMap\"}', NULL),
(53, '{\"@class\":\"java.util.HashMap\"}', NULL),
(54, '{\"@class\":\"java.util.HashMap\"}', NULL),
(55, '{\"@class\":\"java.util.HashMap\"}', NULL),
(56, '{\"@class\":\"java.util.HashMap\"}', NULL),
(57, '{\"@class\":\"java.util.HashMap\"}', NULL),
(58, '{\"@class\":\"java.util.HashMap\"}', NULL),
(59, '{\"@class\":\"java.util.HashMap\"}', NULL),
(60, '{\"@class\":\"java.util.HashMap\"}', NULL),
(61, '{\"@class\":\"java.util.HashMap\"}', NULL),
(62, '{\"@class\":\"java.util.HashMap\"}', NULL),
(63, '{\"@class\":\"java.util.HashMap\"}', NULL),
(64, '{\"@class\":\"java.util.HashMap\"}', NULL),
(65, '{\"@class\":\"java.util.HashMap\"}', NULL),
(66, '{\"@class\":\"java.util.HashMap\"}', NULL),
(67, '{\"@class\":\"java.util.HashMap\"}', NULL),
(68, '{\"@class\":\"java.util.HashMap\"}', NULL),
(69, '{\"@class\":\"java.util.HashMap\"}', NULL),
(70, '{\"@class\":\"java.util.HashMap\"}', NULL),
(71, '{\"@class\":\"java.util.HashMap\"}', NULL),
(72, '{\"@class\":\"java.util.HashMap\"}', NULL),
(73, '{\"@class\":\"java.util.HashMap\"}', NULL),
(74, '{\"@class\":\"java.util.HashMap\"}', NULL),
(75, '{\"@class\":\"java.util.HashMap\"}', NULL),
(76, '{\"@class\":\"java.util.HashMap\"}', NULL),
(77, '{\"@class\":\"java.util.HashMap\"}', NULL),
(78, '{\"@class\":\"java.util.HashMap\"}', NULL),
(79, '{\"@class\":\"java.util.HashMap\"}', NULL),
(80, '{\"@class\":\"java.util.HashMap\"}', NULL),
(81, '{\"@class\":\"java.util.HashMap\"}', NULL),
(82, '{\"@class\":\"java.util.HashMap\"}', NULL),
(83, '{\"@class\":\"java.util.HashMap\"}', NULL),
(84, '{\"@class\":\"java.util.HashMap\"}', NULL),
(85, '{\"@class\":\"java.util.HashMap\"}', NULL),
(86, '{\"@class\":\"java.util.HashMap\"}', NULL),
(87, '{\"@class\":\"java.util.HashMap\"}', NULL),
(88, '{\"@class\":\"java.util.HashMap\"}', NULL),
(89, '{\"@class\":\"java.util.HashMap\"}', NULL),
(90, '{\"@class\":\"java.util.HashMap\"}', NULL),
(91, '{\"@class\":\"java.util.HashMap\"}', NULL),
(92, '{\"@class\":\"java.util.HashMap\"}', NULL),
(93, '{\"@class\":\"java.util.HashMap\"}', NULL),
(94, '{\"@class\":\"java.util.HashMap\"}', NULL),
(95, '{\"@class\":\"java.util.HashMap\"}', NULL),
(96, '{\"@class\":\"java.util.HashMap\"}', NULL),
(97, '{\"@class\":\"java.util.HashMap\"}', NULL),
(98, '{\"@class\":\"java.util.HashMap\"}', NULL),
(99, '{\"@class\":\"java.util.HashMap\"}', NULL),
(100, '{\"@class\":\"java.util.HashMap\"}', NULL),
(101, '{\"@class\":\"java.util.HashMap\"}', NULL),
(102, '{\"@class\":\"java.util.HashMap\"}', NULL),
(103, '{\"@class\":\"java.util.HashMap\"}', NULL),
(104, '{\"@class\":\"java.util.HashMap\"}', NULL),
(105, '{\"@class\":\"java.util.HashMap\"}', NULL),
(106, '{\"@class\":\"java.util.HashMap\"}', NULL),
(107, '{\"@class\":\"java.util.HashMap\"}', NULL),
(108, '{\"@class\":\"java.util.HashMap\"}', NULL),
(109, '{\"@class\":\"java.util.HashMap\"}', NULL),
(110, '{\"@class\":\"java.util.HashMap\"}', NULL),
(111, '{\"@class\":\"java.util.HashMap\"}', NULL),
(112, '{\"@class\":\"java.util.HashMap\"}', NULL),
(113, '{\"@class\":\"java.util.HashMap\"}', NULL),
(114, '{\"@class\":\"java.util.HashMap\"}', NULL),
(115, '{\"@class\":\"java.util.HashMap\"}', NULL),
(116, '{\"@class\":\"java.util.HashMap\"}', NULL),
(117, '{\"@class\":\"java.util.HashMap\"}', NULL),
(118, '{\"@class\":\"java.util.HashMap\"}', NULL),
(119, '{\"@class\":\"java.util.HashMap\"}', NULL),
(120, '{\"@class\":\"java.util.HashMap\"}', NULL),
(121, '{\"@class\":\"java.util.HashMap\"}', NULL),
(122, '{\"@class\":\"java.util.HashMap\"}', NULL),
(123, '{\"@class\":\"java.util.HashMap\"}', NULL),
(124, '{\"@class\":\"java.util.HashMap\"}', NULL),
(125, '{\"@class\":\"java.util.HashMap\"}', NULL),
(126, '{\"@class\":\"java.util.HashMap\"}', NULL),
(127, '{\"@class\":\"java.util.HashMap\"}', NULL),
(128, '{\"@class\":\"java.util.HashMap\"}', NULL),
(129, '{\"@class\":\"java.util.HashMap\"}', NULL),
(130, '{\"@class\":\"java.util.HashMap\"}', NULL),
(131, '{\"@class\":\"java.util.HashMap\"}', NULL),
(132, '{\"@class\":\"java.util.HashMap\"}', NULL),
(133, '{\"@class\":\"java.util.HashMap\"}', NULL),
(134, '{\"@class\":\"java.util.HashMap\"}', NULL),
(135, '{\"@class\":\"java.util.HashMap\"}', NULL),
(136, '{\"@class\":\"java.util.HashMap\"}', NULL),
(137, '{\"@class\":\"java.util.HashMap\"}', NULL),
(138, '{\"@class\":\"java.util.HashMap\"}', NULL),
(139, '{\"@class\":\"java.util.HashMap\"}', NULL),
(140, '{\"@class\":\"java.util.HashMap\"}', NULL),
(141, '{\"@class\":\"java.util.HashMap\"}', NULL),
(142, '{\"@class\":\"java.util.HashMap\"}', NULL),
(143, '{\"@class\":\"java.util.HashMap\"}', NULL),
(144, '{\"@class\":\"java.util.HashMap\"}', NULL),
(145, '{\"@class\":\"java.util.HashMap\"}', NULL),
(146, '{\"@class\":\"java.util.HashMap\"}', NULL),
(147, '{\"@class\":\"java.util.HashMap\"}', NULL),
(148, '{\"@class\":\"java.util.HashMap\"}', NULL),
(149, '{\"@class\":\"java.util.HashMap\"}', NULL),
(150, '{\"@class\":\"java.util.HashMap\"}', NULL),
(151, '{\"@class\":\"java.util.HashMap\"}', NULL),
(152, '{\"@class\":\"java.util.HashMap\"}', NULL),
(153, '{\"@class\":\"java.util.HashMap\"}', NULL),
(154, '{\"@class\":\"java.util.HashMap\"}', NULL),
(155, '{\"@class\":\"java.util.HashMap\"}', NULL),
(156, '{\"@class\":\"java.util.HashMap\"}', NULL),
(157, '{\"@class\":\"java.util.HashMap\"}', NULL),
(158, '{\"@class\":\"java.util.HashMap\"}', NULL),
(159, '{\"@class\":\"java.util.HashMap\"}', NULL),
(160, '{\"@class\":\"java.util.HashMap\"}', NULL),
(161, '{\"@class\":\"java.util.HashMap\"}', NULL),
(162, '{\"@class\":\"java.util.HashMap\"}', NULL),
(163, '{\"@class\":\"java.util.HashMap\"}', NULL),
(164, '{\"@class\":\"java.util.HashMap\"}', NULL),
(165, '{\"@class\":\"java.util.HashMap\"}', NULL),
(166, '{\"@class\":\"java.util.HashMap\"}', NULL),
(167, '{\"@class\":\"java.util.HashMap\"}', NULL),
(168, '{\"@class\":\"java.util.HashMap\"}', NULL),
(169, '{\"@class\":\"java.util.HashMap\"}', NULL),
(170, '{\"@class\":\"java.util.HashMap\"}', NULL),
(171, '{\"@class\":\"java.util.HashMap\"}', NULL),
(172, '{\"@class\":\"java.util.HashMap\"}', NULL),
(173, '{\"@class\":\"java.util.HashMap\"}', NULL),
(174, '{\"@class\":\"java.util.HashMap\"}', NULL),
(175, '{\"@class\":\"java.util.HashMap\"}', NULL),
(176, '{\"@class\":\"java.util.HashMap\"}', NULL),
(177, '{\"@class\":\"java.util.HashMap\"}', NULL),
(178, '{\"@class\":\"java.util.HashMap\"}', NULL),
(179, '{\"@class\":\"java.util.HashMap\"}', NULL),
(180, '{\"@class\":\"java.util.HashMap\"}', NULL),
(181, '{\"@class\":\"java.util.HashMap\"}', NULL),
(182, '{\"@class\":\"java.util.HashMap\"}', NULL),
(183, '{\"@class\":\"java.util.HashMap\"}', NULL),
(184, '{\"@class\":\"java.util.HashMap\"}', NULL),
(185, '{\"@class\":\"java.util.HashMap\"}', NULL),
(186, '{\"@class\":\"java.util.HashMap\"}', NULL),
(187, '{\"@class\":\"java.util.HashMap\"}', NULL),
(188, '{\"@class\":\"java.util.HashMap\"}', NULL),
(189, '{\"@class\":\"java.util.HashMap\"}', NULL),
(190, '{\"@class\":\"java.util.HashMap\"}', NULL),
(191, '{\"@class\":\"java.util.HashMap\"}', NULL),
(192, '{\"@class\":\"java.util.HashMap\"}', NULL),
(193, '{\"@class\":\"java.util.HashMap\"}', NULL),
(194, '{\"@class\":\"java.util.HashMap\"}', NULL),
(195, '{\"@class\":\"java.util.HashMap\"}', NULL),
(196, '{\"@class\":\"java.util.HashMap\"}', NULL),
(197, '{\"@class\":\"java.util.HashMap\"}', NULL),
(198, '{\"@class\":\"java.util.HashMap\"}', NULL),
(199, '{\"@class\":\"java.util.HashMap\"}', NULL),
(200, '{\"@class\":\"java.util.HashMap\"}', NULL),
(201, '{\"@class\":\"java.util.HashMap\"}', NULL),
(202, '{\"@class\":\"java.util.HashMap\"}', NULL),
(203, '{\"@class\":\"java.util.HashMap\"}', NULL),
(204, '{\"@class\":\"java.util.HashMap\"}', NULL),
(205, '{\"@class\":\"java.util.HashMap\"}', NULL),
(206, '{\"@class\":\"java.util.HashMap\"}', NULL),
(207, '{\"@class\":\"java.util.HashMap\"}', NULL),
(208, '{\"@class\":\"java.util.HashMap\"}', NULL),
(209, '{\"@class\":\"java.util.HashMap\"}', NULL),
(210, '{\"@class\":\"java.util.HashMap\"}', NULL),
(211, '{\"@class\":\"java.util.HashMap\"}', NULL),
(212, '{\"@class\":\"java.util.HashMap\"}', NULL),
(213, '{\"@class\":\"java.util.HashMap\"}', NULL),
(214, '{\"@class\":\"java.util.HashMap\"}', NULL),
(215, '{\"@class\":\"java.util.HashMap\"}', NULL),
(216, '{\"@class\":\"java.util.HashMap\"}', NULL),
(217, '{\"@class\":\"java.util.HashMap\"}', NULL),
(218, '{\"@class\":\"java.util.HashMap\"}', NULL),
(219, '{\"@class\":\"java.util.HashMap\"}', NULL),
(220, '{\"@class\":\"java.util.HashMap\"}', NULL),
(221, '{\"@class\":\"java.util.HashMap\"}', NULL),
(222, '{\"@class\":\"java.util.HashMap\"}', NULL),
(223, '{\"@class\":\"java.util.HashMap\"}', NULL),
(224, '{\"@class\":\"java.util.HashMap\"}', NULL),
(225, '{\"@class\":\"java.util.HashMap\"}', NULL),
(226, '{\"@class\":\"java.util.HashMap\"}', NULL),
(227, '{\"@class\":\"java.util.HashMap\"}', NULL),
(228, '{\"@class\":\"java.util.HashMap\"}', NULL),
(229, '{\"@class\":\"java.util.HashMap\"}', NULL),
(230, '{\"@class\":\"java.util.HashMap\"}', NULL),
(231, '{\"@class\":\"java.util.HashMap\"}', NULL),
(232, '{\"@class\":\"java.util.HashMap\"}', NULL),
(233, '{\"@class\":\"java.util.HashMap\"}', NULL),
(234, '{\"@class\":\"java.util.HashMap\"}', NULL),
(235, '{\"@class\":\"java.util.HashMap\"}', NULL),
(236, '{\"@class\":\"java.util.HashMap\"}', NULL),
(237, '{\"@class\":\"java.util.HashMap\"}', NULL),
(238, '{\"@class\":\"java.util.HashMap\"}', NULL),
(239, '{\"@class\":\"java.util.HashMap\"}', NULL),
(240, '{\"@class\":\"java.util.HashMap\"}', NULL),
(241, '{\"@class\":\"java.util.HashMap\"}', NULL),
(242, '{\"@class\":\"java.util.HashMap\"}', NULL),
(243, '{\"@class\":\"java.util.HashMap\"}', NULL),
(244, '{\"@class\":\"java.util.HashMap\"}', NULL),
(245, '{\"@class\":\"java.util.HashMap\"}', NULL),
(246, '{\"@class\":\"java.util.HashMap\"}', NULL),
(247, '{\"@class\":\"java.util.HashMap\"}', NULL),
(248, '{\"@class\":\"java.util.HashMap\"}', NULL),
(249, '{\"@class\":\"java.util.HashMap\"}', NULL),
(250, '{\"@class\":\"java.util.HashMap\"}', NULL),
(251, '{\"@class\":\"java.util.HashMap\"}', NULL),
(252, '{\"@class\":\"java.util.HashMap\"}', NULL),
(253, '{\"@class\":\"java.util.HashMap\"}', NULL),
(254, '{\"@class\":\"java.util.HashMap\"}', NULL),
(255, '{\"@class\":\"java.util.HashMap\"}', NULL),
(256, '{\"@class\":\"java.util.HashMap\"}', NULL),
(257, '{\"@class\":\"java.util.HashMap\"}', NULL),
(258, '{\"@class\":\"java.util.HashMap\"}', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_params`
--

CREATE TABLE `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `TYPE_CD` varchar(6) NOT NULL,
  `KEY_NAME` varchar(100) NOT NULL,
  `STRING_VAL` varchar(250) DEFAULT NULL,
  `DATE_VAL` datetime DEFAULT NULL,
  `LONG_VAL` bigint(20) DEFAULT NULL,
  `DOUBLE_VAL` double DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_job_execution_params`
--

INSERT INTO `batch_job_execution_params` (`JOB_EXECUTION_ID`, `TYPE_CD`, `KEY_NAME`, `STRING_VAL`, `DATE_VAL`, `LONG_VAL`, `DOUBLE_VAL`, `IDENTIFYING`) VALUES
(1, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 1, 0, 'Y'),
(2, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 2, 0, 'Y'),
(3, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 3, 0, 'Y'),
(4, 'LONG', 'run.id', '', '1970-01-01 00:00:00', 4, 0, 'Y'),
(63, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602252421507, 0, 'Y'),
(63, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(65, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602252559506, 0, 'Y'),
(65, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(67, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602252628950, 0, 'Y'),
(67, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(73, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602252803101, 0, 'Y'),
(73, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(75, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602252964113, 0, 'Y'),
(75, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(77, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602253222428, 0, 'Y'),
(77, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(79, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602253357426, 0, 'Y'),
(79, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(83, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602253454229, 0, 'Y'),
(83, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(85, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602253752434, 0, 'Y'),
(85, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(87, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602253941466, 0, 'Y'),
(87, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(89, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602255035322, 0, 'Y'),
(89, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(92, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602255146316, 0, 'Y'),
(92, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(95, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602255283816, 0, 'Y'),
(95, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(97, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602255385619, 0, 'Y'),
(97, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(100, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602256099338, 0, 'Y'),
(100, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(108, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602256428587, 0, 'Y'),
(108, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(114, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602256794167, 0, 'Y'),
(114, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(117, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602257172100, 0, 'Y'),
(117, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(120, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602257203511, 0, 'Y'),
(120, 'STRING', 'id', 'Proceso Completado', '1970-01-01 00:00:00', 0, 0, 'Y'),
(122, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258010987, 0, 'Y'),
(122, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(124, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258038127, 0, 'Y'),
(124, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(127, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258146510, 0, 'Y'),
(127, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(129, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258176041, 0, 'Y'),
(129, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(132, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258263157, 0, 'Y'),
(132, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(137, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258363346, 0, 'Y'),
(137, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(139, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258407081, 0, 'Y'),
(139, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(143, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258623044, 0, 'Y'),
(143, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(145, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258666887, 0, 'Y'),
(145, 'STRING', 'nombrearchivito', '', '1970-01-01 00:00:00', 0, 0, 'Y'),
(148, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258759813, 0, 'Y'),
(148, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(152, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258849359, 0, 'Y'),
(152, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(156, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602258951275, 0, 'Y'),
(156, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(160, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602259423653, 0, 'Y'),
(160, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(169, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602260017334, 0, 'Y'),
(169, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(172, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602260159571, 0, 'Y'),
(172, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(179, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602262497047, 0, 'Y'),
(179, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(187, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602263861185, 0, 'Y'),
(187, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(194, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602264804768, 0, 'Y'),
(194, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(197, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602264852892, 0, 'Y'),
(197, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(199, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265018771, 0, 'Y'),
(199, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(201, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265060743, 0, 'Y'),
(201, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(203, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265085863, 0, 'Y'),
(203, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(206, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265178684, 0, 'Y'),
(206, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(210, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265266321, 0, 'Y'),
(210, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(212, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265287311, 0, 'Y'),
(212, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(215, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265474906, 0, 'Y'),
(215, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(217, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265524780, 0, 'Y'),
(217, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(219, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265557108, 0, 'Y'),
(219, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(224, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602265955617, 0, 'Y'),
(224, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(226, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602266013789, 0, 'Y'),
(226, 'STRING', 'nombrearchivito', 'Plantilla.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(255, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602277620621, 0, 'Y'),
(255, 'STRING', 'nombrearchivito', 'Hola.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(257, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602277884134, 0, 'Y'),
(257, 'STRING', 'nombrearchivito', 'Hola2.csv', '1970-01-01 00:00:00', 0, 0, 'Y'),
(258, 'LONG', 'time', '', '1970-01-01 00:00:00', 1602278566598, 0, 'Y'),
(258, 'STRING', 'nombrearchivito', 'Gordo.csv', '1970-01-01 00:00:00', 0, 0, 'Y');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_execution_seq`
--

CREATE TABLE `batch_job_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_job_execution_seq`
--

INSERT INTO `batch_job_execution_seq` (`ID`, `UNIQUE_KEY`) VALUES
(258, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_instance`
--

CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_job_instance`
--

INSERT INTO `batch_job_instance` (`JOB_INSTANCE_ID`, `VERSION`, `JOB_NAME`, `JOB_KEY`) VALUES
(1, 0, 'processjob', '853d3449e311f40366811cbefb3d93d7'),
(2, 0, 'processjob', 'e070bff4379694c0210a51d9f6c6a564'),
(3, 0, 'processjob', 'a3364faf893276dea0caacefbf618db5'),
(4, 0, 'processjob', '47c0a8118b74165a864b66d37c7b6cf5'),
(5, 0, 'processjob', 'd41d8cd98f00b204e9800998ecf8427e'),
(6, 0, 'processJob', '7cc8e4b3a8418d16321a2120b9fbaf93'),
(7, 0, 'processJob', 'bbe9590365ed43de3f13dbdf3ff87553'),
(8, 0, 'processJob', 'bf93623ab6184702bb629b46b4810097'),
(9, 0, 'processJob', '5d261f873fae9272057b2fbe2b810336'),
(10, 0, 'processJob', '1fd2c7a4d3518b075e4f21d083d112a5'),
(11, 0, 'processJob', '5759a8a919a4f2ca59e4cdbe76834853'),
(12, 0, 'processJob', '6e61bcd235befddc25c18cea2411749b'),
(13, 0, 'processJob', '493a6bcdcfb8ad6b60770b9792074b63'),
(14, 0, 'processJob', 'b349601c037c9b8ee94024ddd05081c3'),
(15, 0, 'processJob', '0951fd71e0ff618158124d0c9819c068'),
(16, 0, 'processJob', '842d793b3e39c52e482a29195b18dc6d'),
(17, 0, 'processJob', 'd0ac0586309e7bfca40a25c327a5f74e'),
(18, 0, 'processJob', 'c50b0e018a8e395674c029585259904f'),
(19, 0, 'processJob', '089491f3ab5f3a885d117453c07d304d'),
(20, 0, 'processJob', '7e867bf337eec790ccdac304bc2db06c'),
(21, 0, 'processJob', 'bc63ffa128b14f8cefc2b85d08d7bd6e'),
(22, 0, 'processJob', 'c1e1561f1ce57efd1c725b5e3a0d3518'),
(23, 0, 'processJob', '3d9ae3efb31cd4232fbfdc7d58432518'),
(24, 0, 'processJob', '98f956fc745ed1c4d6f0346f06d78325'),
(25, 0, 'processJob', '2148e76ceec1a07afc9ffba7357f7654'),
(26, 0, 'processJob', 'c64d6adfb18d5354b37288a3e50377da'),
(27, 0, 'processJob', '0c40204284d9b4f0d1a431b07d7d29b9'),
(28, 0, 'processJob', '64dd53095d83283ca729313240bbd384'),
(29, 0, 'processJob', '392d666a0f718a787d2a5d1913af25f7'),
(30, 0, 'processJob', '4ba14926b345eb8b688a6c424a208a1b'),
(31, 0, 'processJob', '8156dd670c2d560f61054056322414f9'),
(32, 0, 'processJob', '35f878bf96d91a17788b12c74a32baae'),
(33, 0, 'processJob', 'a6567b1077ba9abe04505f6346aa3ce6'),
(34, 0, 'processJob', '30a505b311bc3e1d4f8c62e491ede1d2'),
(35, 0, 'processJob', '863a117e0354a9c6311a5ec56bfb6016'),
(36, 0, 'processJob', '46c59b5f92db4df92cf512bf4805344d'),
(37, 0, 'processJob', 'cc9da5f49ec9a74fdcc48078c8ff55a5'),
(38, 0, 'processJob', '6c199fc4a6ae70f74691c416e2b63207'),
(39, 0, 'processJob', '5aae7bff67655ef8f0ef8e7f792014fa'),
(40, 0, 'processJob', '39862088809a8e3f3af9a0c5004ebd40'),
(41, 0, 'processJob', '503423dd117131e1263e7780c25a0ca2'),
(42, 0, 'processJob', 'fbca1cfbbd62999c1cd8ec6318fd63d5'),
(43, 0, 'processJob', '4056d7c38cd2f4c057ff2b931dd51ae9'),
(44, 0, 'processJob', '365b217caac09ffa55e89b35d448ff0c'),
(45, 0, 'processJob', 'c094fcd7db11da253c526b68fddad6e3'),
(46, 0, 'processJob', '78621104c0eb5d38d43426fadb4e47c1'),
(47, 0, 'processJob', 'bc6d37c2a7fdd2b06f855bb4b96071a1'),
(48, 0, 'processJob', '177f497d366d8772252c41f83fbc2f0e'),
(49, 0, 'processJob', 'dafe473418330e1649b52cf2a32698b6'),
(50, 0, 'processJob', 'f03a2f9fe88d152760b92a5102e12fa7'),
(51, 0, 'processJob', 'c64c338bd64ea862e1889325cb56d555'),
(52, 0, 'processJob', '4ab026d005d67d8e5c52b1788dea2db3'),
(53, 0, 'processJob', 'bc2539d9a519add5a99ddcd67e878109'),
(54, 0, 'processJob', '4779498d98404da5e205cf9b47e6307e'),
(55, 0, 'processJob', '46350e8935ff91b1ba1257015ae0e55b'),
(56, 0, 'processJob', 'd6b6da620ae5cbe5c9eb45c92c0dfbc5'),
(57, 0, 'processJob', '10a2c0c58a7a412dcdbd44159ae99507');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_job_seq`
--

CREATE TABLE `batch_job_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_job_seq`
--

INSERT INTO `batch_job_seq` (`ID`, `UNIQUE_KEY`) VALUES
(57, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution`
--

CREATE TABLE `batch_step_execution` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `VERSION` bigint(20) NOT NULL,
  `STEP_NAME` varchar(100) NOT NULL,
  `JOB_EXECUTION_ID` bigint(20) NOT NULL,
  `START_TIME` datetime NOT NULL,
  `END_TIME` datetime DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `COMMIT_COUNT` bigint(20) DEFAULT NULL,
  `READ_COUNT` bigint(20) DEFAULT NULL,
  `FILTER_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_COUNT` bigint(20) DEFAULT NULL,
  `READ_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `WRITE_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `PROCESS_SKIP_COUNT` bigint(20) DEFAULT NULL,
  `ROLLBACK_COUNT` bigint(20) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_step_execution`
--

INSERT INTO `batch_step_execution` (`STEP_EXECUTION_ID`, `VERSION`, `STEP_NAME`, `JOB_EXECUTION_ID`, `START_TIME`, `END_TIME`, `STATUS`, `COMMIT_COUNT`, `READ_COUNT`, `FILTER_COUNT`, `WRITE_COUNT`, `READ_SKIP_COUNT`, `WRITE_SKIP_COUNT`, `PROCESS_SKIP_COUNT`, `ROLLBACK_COUNT`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(1, 2, 'step', 1, '2020-10-08 21:26:51', '2020-10-08 21:26:51', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:410)\r\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:136)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy490.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.execute(JobLauncherApplicationRunner.java:199)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.executeLocalJobs(JobLauncherApplicationRunner.java:173)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.launchJobFrom', '2020-10-08 21:26:51'),
(2, 2, 'step', 2, '2020-10-08 21:32:01', '2020-10-08 21:32:01', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.AbstractJob.handleStep(AbstractJob.java:410)\r\n	at org.springframework.batch.core.job.SimpleJob.doExecute(SimpleJob.java:136)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy502.run(Unknown Source)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.execute(JobLauncherApplicationRunner.java:199)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.executeLocalJobs(JobLauncherApplicationRunner.java:173)\r\n	at org.springframework.boot.autoconfigure.batch.JobLauncherApplicationRunner.launchJobFrom', '2020-10-08 21:32:01'),
(3, 3, 'step', 3, '2020-10-08 21:32:24', '2020-10-08 21:32:24', 'COMPLETED', 1, 0, 0, 0, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-08 21:32:24'),
(4, 3, 'step', 4, '2020-10-08 21:34:37', '2020-10-08 21:34:37', 'COMPLETED', 1, 0, 0, 0, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-08 21:34:37'),
(5, 3, 'step', 5, '2020-10-08 21:37:12', '2020-10-08 21:37:12', 'COMPLETED', 1, 0, 0, 0, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-08 21:37:12'),
(6, 3, 'step', 63, '2020-10-09 14:07:01', '2020-10-09 14:07:01', 'COMPLETED', 1, 0, 0, 0, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 14:07:01'),
(7, 2, 'step', 65, '2020-10-09 14:09:19', '2020-10-09 14:09:19', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Unable to create file: [C:\\Users\\YEFERSON MURCIA M\\Downloads\\Archivos\\datos.csv]\r\n	at org.springframework.batch.item.util.FileUtils.setUpOutputFile(FileUtils.java:84)\r\n	at org.springframework.batch.item.support.AbstractFileItemWriter$OutputState.initializeBufferedWriter(AbstractFileItemWriter.java:553)\r\n	at org.springframework.batch.item.support.AbstractFileItemWriter$OutputState.access$000(AbstractFileItemWriter.java:385)\r\n	at org.springframework.batch.item.support.AbstractFileItemWriter.doOpen(AbstractFileItemWriter.java:319)\r\n	at org.springframework.batch.item.support.AbstractFileItemWriter.open(AbstractFileItemWriter.java:309)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.ja', '2020-10-09 14:09:19'),
(8, 3, 'step', 67, '2020-10-09 14:10:29', '2020-10-09 14:10:29', 'COMPLETED', 1, 0, 0, 0, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 14:10:29'),
(9, 2, 'step', 73, '2020-10-09 14:13:23', '2020-10-09 14:13:23', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.batch.item.file.FlatFileParseException: Parsing error at line: 2 in resource=[file [C:\\Users\\YEFERSON MURCIA M\\Downloads\\Plantilla.csv]], input=[Daniel	Garcia]\r\n	at org.springframework.batch.item.file.FlatFileItemReader.doRead(FlatFileItemReader.java:189)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springfr', '2020-10-09 14:13:23'),
(10, 2, 'step', 75, '2020-10-09 14:16:04', '2020-10-09 14:16:04', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.batch.item.file.FlatFileParseException: Parsing error at line: 2 in resource=[file [C:\\Users\\YEFERSON MURCIA M\\Downloads\\Plantilla.csv]], input=[Daniel;Garcia]\r\n	at org.springframework.batch.item.file.FlatFileItemReader.doRead(FlatFileItemReader.java:189)\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.read(AbstractItemCountingItemStreamItemReader.java:93)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.doRead(SimpleChunkProvider.java:99)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.read(SimpleChunkProvider.java:180)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider$1.doInIteration(SimpleChunkProvider.java:126)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProvider.provide(SimpleChunkProvider.java:118)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:71)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springfr', '2020-10-09 14:16:04'),
(11, 2, 'step', 77, '2020-10-09 14:20:22', '2020-10-09 14:20:22', 'FAILED', 0, 2, 0, 0, 0, 0, 0, 1, 'FAILED', 'org.springframework.beans.NotReadablePropertyException: Invalid property \'nombres\' of bean class [com.AsesoriaContableBackend.demo.clases.Cliente]: Bean property \'nombres\' is not readable or has an invalid getter method: Does the return type of the getter match the parameter type of the setter?\r\n	at org.springframework.beans.AbstractNestablePropertyAccessor.getPropertyValue(AbstractNestablePropertyAccessor.java:622)\r\n	at org.springframework.beans.AbstractNestablePropertyAccessor.getPropertyValue(AbstractNestablePropertyAccessor.java:612)\r\n	at org.springframework.batch.item.file.transform.BeanWrapperFieldExtractor.extract(BeanWrapperFieldExtractor.java:57)\r\n	at org.springframework.batch.item.file.transform.ExtractorLineAggregator.aggregate(ExtractorLineAggregator.java:54)\r\n	at org.springframework.batch.item.file.FlatFileItemWriter.doWrite(FlatFileItemWriter.java:78)\r\n	at org.springframework.batch.item.support.AbstractFileItemWriter.write(AbstractFileItemWriter.java:247)\r\n	at com.AsesoriaContableBackend.demo.step.Writer.write(Writer.java:44)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step', '2020-10-09 14:20:22'),
(12, 2, 'step', 79, '2020-10-09 14:22:37', '2020-10-09 14:22:37', 'FAILED', 0, 2, 0, 0, 0, 0, 0, 1, 'FAILED', 'java.lang.Error: Unresolved compilation problems: \n	The method getNombre() is undefined for the type Cliente\n	The method getApellido() is undefined for the type Cliente\n\r\n	at com.AsesoriaContableBackend.demo.step.Procesor.process(Procesor.java:13)\r\n	at com.AsesoriaContableBackend.demo.step.Procesor.process(Procesor.java:1)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doProcess(SimpleChunkProcessor.java:134)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.transform(SimpleChunkProcessor.java:319)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:210)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJob', '2020-10-09 14:22:37'),
(13, 3, 'step', 83, '2020-10-09 14:24:14', '2020-10-09 14:24:14', 'COMPLETED', 1, 2, 0, 2, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 14:24:14'),
(14, 3, 'step', 85, '2020-10-09 14:29:12', '2020-10-09 14:29:12', 'COMPLETED', 1, 6, 0, 6, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 14:29:12'),
(15, 3, 'step', 87, '2020-10-09 14:32:21', '2020-10-09 14:32:21', 'COMPLETED', 1, 6, 0, 6, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 14:32:21'),
(16, 2, 'step', 89, '2020-10-09 14:50:35', '2020-10-09 14:50:35', 'FAILED', 0, 6, 0, 0, 0, 0, 0, 1, 'FAILED', 'java.lang.NullPointerException\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:190)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:617)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:647)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org', '2020-10-09 14:50:35'),
(17, 2, 'step', 92, '2020-10-09 14:52:26', '2020-10-09 14:52:27', 'FAILED', 0, 6, 0, 0, 0, 0, 0, 1, 'FAILED', 'java.lang.NullPointerException\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:190)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:617)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:647)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org', '2020-10-09 14:52:27'),
(18, 2, 'step', 95, '2020-10-09 14:54:44', '2020-10-09 14:54:44', 'FAILED', 0, 6, 0, 0, 0, 0, 0, 1, 'FAILED', 'java.lang.NullPointerException\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:190)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:617)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:647)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org', '2020-10-09 14:54:44'),
(19, 2, 'step', 97, '2020-10-09 14:56:25', '2020-10-09 14:56:25', 'FAILED', 0, 6, 0, 0, 0, 0, 0, 1, 'FAILED', 'java.lang.NullPointerException\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:190)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:617)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:647)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org', '2020-10-09 14:56:25'),
(20, 2, 'step', 100, '2020-10-09 15:08:19', '2020-10-09 15:08:19', 'FAILED', 0, 6, 0, 0, 0, 0, 0, 1, 'FAILED', 'java.lang.NullPointerException\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:190)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter$1.doInPreparedStatement(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:617)\r\n	at org.springframework.jdbc.core.JdbcTemplate.execute(JdbcTemplate.java:647)\r\n	at org.springframework.batch.item.database.JdbcBatchItemWriter.write(JdbcBatchItemWriter.java:186)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.writeItems(SimpleChunkProcessor.java:193)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.doWrite(SimpleChunkProcessor.java:159)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.write(SimpleChunkProcessor.java:294)\r\n	at org.springframework.batch.core.step.item.SimpleChunkProcessor.process(SimpleChunkProcessor.java:217)\r\n	at org.springframework.batch.core.step.item.ChunkOrientedTasklet.execute(ChunkOrientedTasklet.java:77)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:407)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$ChunkTransactionCallback.doInTransaction(TaskletStep.java:331)\r\n	at org.springframework.transaction.support.TransactionTemplate.execute(TransactionTemplate.java:140)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep$2.doInChunkContext(TaskletStep.java:273)\r\n	at org.springframework.batch.core.scope.context.StepContextRepeatCallback.doInIteration(StepContextRepeatCallback.java:82)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.getNextResult(RepeatTemplate.java:375)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.executeInternal(RepeatTemplate.java:215)\r\n	at org.springframework.batch.repeat.support.RepeatTemplate.iterate(RepeatTemplate.java:145)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.doExecute(TaskletStep.java:258)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:208)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org', '2020-10-09 15:08:19'),
(21, 3, 'step', 108, '2020-10-09 15:13:48', '2020-10-09 15:13:48', 'COMPLETED', 1, 6, 0, 6, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 15:13:48'),
(22, 3, 'step', 114, '2020-10-09 15:19:54', '2020-10-09 15:19:54', 'COMPLETED', 1, 6, 0, 6, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 15:19:54'),
(23, 3, 'step', 117, '2020-10-09 15:26:12', '2020-10-09 15:26:12', 'COMPLETED', 1, 6, 0, 6, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 15:26:12'),
(24, 3, 'step', 120, '2020-10-09 15:26:43', '2020-10-09 15:26:43', 'COMPLETED', 1, 6, 0, 6, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 15:26:43'),
(25, 2, 'step', 122, '2020-10-09 15:40:11', '2020-10-09 15:40:11', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy209.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerU', '2020-10-09 15:40:11'),
(26, 3, 'step', 124, '2020-10-09 15:40:38', '2020-10-09 15:40:38', 'COMPLETED', 1, 2, 0, 2, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 15:40:38'),
(27, 2, 'step', 127, '2020-10-09 15:42:26', '2020-10-09 15:42:26', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy245.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerU', '2020-10-09 15:42:26'),
(28, 2, 'step', 129, '2020-10-09 15:42:56', '2020-10-09 15:42:56', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy70.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerUs', '2020-10-09 15:42:56'),
(29, 3, 'step', 132, '2020-10-09 15:44:23', '2020-10-09 15:44:23', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 15:44:23'),
(30, 2, 'step', 137, '2020-10-09 15:46:03', '2020-10-09 15:46:03', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy70.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerUs', '2020-10-09 15:46:03'),
(31, 3, 'step', 139, '2020-10-09 15:46:47', '2020-10-09 15:46:47', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 15:46:47'),
(32, 2, 'step', 143, '2020-10-09 15:50:23', '2020-10-09 15:50:23', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy154.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerU', '2020-10-09 15:50:23');
INSERT INTO `batch_step_execution` (`STEP_EXECUTION_ID`, `VERSION`, `STEP_NAME`, `JOB_EXECUTION_ID`, `START_TIME`, `END_TIME`, `STATUS`, `COMMIT_COUNT`, `READ_COUNT`, `FILTER_COUNT`, `WRITE_COUNT`, `READ_SKIP_COUNT`, `WRITE_SKIP_COUNT`, `PROCESS_SKIP_COUNT`, `ROLLBACK_COUNT`, `EXIT_CODE`, `EXIT_MESSAGE`, `LAST_UPDATED`) VALUES
(33, 2, 'step', 145, '2020-10-09 15:51:06', '2020-10-09 15:51:06', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy166.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerU', '2020-10-09 15:51:06'),
(34, 2, 'step', 148, '2020-10-09 15:52:39', '2020-10-09 15:52:39', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy116.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerU', '2020-10-09 15:52:39'),
(35, 2, 'step', 152, '2020-10-09 15:54:09', '2020-10-09 15:54:09', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy154.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerU', '2020-10-09 15:54:09'),
(36, 2, 'step', 156, '2020-10-09 15:55:51', '2020-10-09 15:55:51', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy70.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerUs', '2020-10-09 15:55:51'),
(37, 2, 'step', 160, '2020-10-09 16:03:43', '2020-10-09 16:03:43', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy142.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerU', '2020-10-09 16:03:43'),
(38, 2, 'step', 169, '2020-10-09 16:13:37', '2020-10-09 16:13:37', 'FAILED', 0, 0, 0, 0, 0, 0, 0, 0, 'FAILED', 'org.springframework.batch.item.ItemStreamException: Failed to initialize the reader\r\n	at org.springframework.batch.item.support.AbstractItemCountingItemStreamItemReader.open(AbstractItemCountingItemStreamItemReader.java:153)\r\n	at org.springframework.batch.item.support.CompositeItemStream.open(CompositeItemStream.java:103)\r\n	at org.springframework.batch.core.step.tasklet.TaskletStep.open(TaskletStep.java:311)\r\n	at org.springframework.batch.core.step.AbstractStep.execute(AbstractStep.java:205)\r\n	at org.springframework.batch.core.job.SimpleStepHandler.handleStep(SimpleStepHandler.java:148)\r\n	at org.springframework.batch.core.job.flow.JobFlowExecutor.executeStep(JobFlowExecutor.java:68)\r\n	at org.springframework.batch.core.job.flow.support.state.StepState.handle(StepState.java:68)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.resume(SimpleFlow.java:169)\r\n	at org.springframework.batch.core.job.flow.support.SimpleFlow.start(SimpleFlow.java:144)\r\n	at org.springframework.batch.core.job.flow.FlowJob.doExecute(FlowJob.java:137)\r\n	at org.springframework.batch.core.job.AbstractJob.execute(AbstractJob.java:319)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher$1.run(SimpleJobLauncher.java:147)\r\n	at org.springframework.core.task.SyncTaskExecutor.execute(SyncTaskExecutor.java:50)\r\n	at org.springframework.batch.core.launch.support.SimpleJobLauncher.run(SimpleJobLauncher.java:140)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.support.AopUtils.invokeJoinpointUsingReflection(AopUtils.java:344)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.invokeJoinpoint(ReflectiveMethodInvocation.java:198)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.batch.core.configuration.annotation.SimpleBatchConfiguration$PassthruAdvice.invoke(SimpleBatchConfiguration.java:127)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.JdkDynamicAopProxy.invoke(JdkDynamicAopProxy.java:212)\r\n	at com.sun.proxy.$Proxy244.run(Unknown Source)\r\n	at com.AsesoriaContableBackend.demo.controlller.ControllerU', '2020-10-09 16:13:37'),
(39, 3, 'step', 172, '2020-10-09 16:15:59', '2020-10-09 16:15:59', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 16:15:59'),
(40, 3, 'step', 179, '2020-10-09 16:54:57', '2020-10-09 16:54:57', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 16:54:57'),
(41, 3, 'step', 187, '2020-10-09 17:17:41', '2020-10-09 17:17:41', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:17:41'),
(42, 3, 'step', 194, '2020-10-09 17:33:25', '2020-10-09 17:33:25', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:33:25'),
(43, 3, 'step', 197, '2020-10-09 17:34:12', '2020-10-09 17:34:12', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:34:12'),
(44, 3, 'step', 199, '2020-10-09 17:36:58', '2020-10-09 17:36:59', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:36:59'),
(45, 3, 'step', 201, '2020-10-09 17:37:40', '2020-10-09 17:37:40', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:37:40'),
(46, 3, 'step', 203, '2020-10-09 17:38:05', '2020-10-09 17:38:05', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:38:05'),
(47, 3, 'step', 206, '2020-10-09 17:39:38', '2020-10-09 17:39:38', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:39:38'),
(48, 3, 'step', 210, '2020-10-09 17:41:06', '2020-10-09 17:41:06', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:41:06'),
(49, 3, 'step', 212, '2020-10-09 17:41:27', '2020-10-09 17:41:27', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:41:27'),
(50, 3, 'step', 215, '2020-10-09 17:44:34', '2020-10-09 17:44:35', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:44:35'),
(51, 3, 'step', 217, '2020-10-09 17:45:24', '2020-10-09 17:45:24', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:45:24'),
(52, 3, 'step', 219, '2020-10-09 17:45:57', '2020-10-09 17:45:57', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:45:57'),
(53, 3, 'step', 224, '2020-10-09 17:52:35', '2020-10-09 17:52:35', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:52:35'),
(54, 3, 'step', 226, '2020-10-09 17:53:33', '2020-10-09 17:53:33', 'COMPLETED', 1, 3, 0, 3, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 17:53:33'),
(55, 3, 'step', 255, '2020-10-09 21:07:00', '2020-10-09 21:07:01', 'COMPLETED', 1, 174, 0, 174, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 21:07:01'),
(56, 3, 'step', 257, '2020-10-09 21:11:24', '2020-10-09 21:11:24', 'COMPLETED', 1, 999, 0, 999, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 21:11:24'),
(57, 3, 'step', 258, '2020-10-09 21:22:47', '2020-10-09 21:22:47', 'COMPLETED', 1, 1010, 0, 1010, 0, 0, 0, 0, 'COMPLETED', '', '2020-10-09 21:22:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution_context`
--

CREATE TABLE `batch_step_execution_context` (
  `STEP_EXECUTION_ID` bigint(20) NOT NULL,
  `SHORT_CONTEXT` varchar(2500) NOT NULL,
  `SERIALIZED_CONTEXT` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_step_execution_context`
--

INSERT INTO `batch_step_execution_context` (`STEP_EXECUTION_ID`, `SHORT_CONTEXT`, `SERIALIZED_CONTEXT`) VALUES
(1, '{\"@class\":\"java.util.HashMap\"}', NULL),
(2, '{\"@class\":\"java.util.HashMap\"}', NULL),
(3, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",48],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":1,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(4, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",48],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":1,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(5, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",48],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":1,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(6, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",48],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":1,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(7, '{\"@class\":\"java.util.HashMap\"}', NULL),
(8, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",48],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":1,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(9, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",18],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(10, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",18],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(11, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",18],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(12, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",18],\"FlatFileItemWriter.written\":[\"java.lang.Long\",0],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(13, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",48],\"FlatFileItemWriter.written\":[\"java.lang.Long\",2],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":3,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(14, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",95],\"FlatFileItemWriter.written\":[\"java.lang.Long\",6],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":7,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(15, '{\"@class\":\"java.util.HashMap\",\"FlatFileItemWriter.current.count\":[\"java.lang.Long\",95],\"FlatFileItemWriter.written\":[\"java.lang.Long\",6],\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":7,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(16, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(17, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(18, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(19, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(20, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":0,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(21, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":7,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(22, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":7,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(23, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":7,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(24, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":7,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(25, '{\"@class\":\"java.util.HashMap\"}', NULL),
(26, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":3,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(27, '{\"@class\":\"java.util.HashMap\"}', NULL),
(28, '{\"@class\":\"java.util.HashMap\"}', NULL),
(29, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(30, '{\"@class\":\"java.util.HashMap\"}', NULL),
(31, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(32, '{\"@class\":\"java.util.HashMap\"}', NULL),
(33, '{\"@class\":\"java.util.HashMap\"}', NULL),
(34, '{\"@class\":\"java.util.HashMap\"}', NULL),
(35, '{\"@class\":\"java.util.HashMap\"}', NULL),
(36, '{\"@class\":\"java.util.HashMap\"}', NULL),
(37, '{\"@class\":\"java.util.HashMap\"}', NULL),
(38, '{\"@class\":\"java.util.HashMap\"}', NULL),
(39, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(40, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(41, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(42, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(43, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(44, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(45, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(46, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(47, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(48, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(49, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(50, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(51, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(52, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(53, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(54, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":4,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(55, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":175,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(56, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":1000,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL),
(57, '{\"@class\":\"java.util.HashMap\",\"batch.taskletType\":\"org.springframework.batch.core.step.item.ChunkOrientedTasklet\",\"FlatFileItemReader.read.count\":1011,\"batch.stepType\":\"org.springframework.batch.core.step.tasklet.TaskletStep\"}', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batch_step_execution_seq`
--

CREATE TABLE `batch_step_execution_seq` (
  `ID` bigint(20) NOT NULL,
  `UNIQUE_KEY` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batch_step_execution_seq`
--

INSERT INTO `batch_step_execution_seq` (`ID`, `UNIQUE_KEY`) VALUES
(57, '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nombresapellidosoempresa` varchar(100) NOT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `correo` varchar(30) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `nitocedula` varchar(20) NOT NULL,
  `idtipocliente` int(11) NOT NULL,
  `idmunicipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nombresapellidosoempresa`, `telefono`, `celular`, `correo`, `direccion`, `nitocedula`, `idtipocliente`, `idmunicipio`) VALUES
(5, 'Licenia Stefania Cuellar', '3121212', '3144097493', 'licenia@gmail.com', 'calle 10 a b', '', 2, 1),
(6, 'Yeferson Murcia', '3121212', '3186521921', 'yefe@gmail.com', 'calle 10 a b', '', 1, 2),
(7, 'Jhon Caicedo', '4567824', '3105763897', 'licenia@gmail.com', 'calle 10 a b', '', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `departamento` varchar(80) NOT NULL,
  `codigopostal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `departamento`, `codigopostal`) VALUES
(1, 'ANTIOQUIA', '05'),
(2, 'ATLANTICO\r\n', '08'),
(3, 'BOGOTA\r\n', '11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `idfactura` int(11) NOT NULL,
  `fechayhora` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `codigo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`idfactura`, `fechayhora`, `codigo`) VALUES
(13, '2021-04-08 19:56:00', 'n/a'),
(14, '2021-04-08 21:20:19', '87250542'),
(15, '2021-04-08 22:11:55', '6172682'),
(16, '2021-04-09 16:59:37', '49170620'),
(17, '2021-04-09 17:03:03', '95438930'),
(18, '2021-04-12 21:52:49', '28713461');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `logueo`
--

CREATE TABLE `logueo` (
  `fechaingreso` date NOT NULL,
  `idlogueo` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `password` longtext NOT NULL,
  `token` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`idmarca`, `nombre`) VALUES
(13, 'Croydon'),
(14, 'Nike'),
(15, 'deleite'),
(16, 'adidas'),
(17, 'Cross'),
(18, 'Croydon'),
(19, 'Venus');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `precioentrada` double DEFAULT NULL,
  `preciosalida` varchar(50) DEFAULT NULL,
  `idmovimiento` int(11) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `idusuario` int(11) NOT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `idtipopago` int(11) DEFAULT NULL,
  `cuotas` varchar(10) DEFAULT NULL,
  `observacion` varchar(150) NOT NULL,
  `idtipomovimiento` int(11) NOT NULL,
  `idfactura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`cantidad`, `fecha`, `precioentrada`, `preciosalida`, `idmovimiento`, `idproducto`, `idusuario`, `cliente`, `idtipopago`, `cuotas`, `observacion`, `idtipomovimiento`, `idfactura`) VALUES
(20, '2021-04-09', 30000, 'N/A', 67, 66, 32, 'N/A', 3, 'N/A', 'Pedido recibido y completo', 3, 13),
(3, '2021-04-09', 30000, '30000', 68, 66, 32, '12109211', 1, '3', 'Venta de producto', 4, 16),
(3, '2021-04-09', 30000, '30000', 69, 66, 32, '11212112', 2, '', 'Venta de producto', 4, 17),
(45, '2021-04-12', 4560000, 'N/A', 70, 67, 21, 'N/A', 3, 'N/A', 'Productos', 3, 13),
(30, '2021-04-12', 4560000, '4560000', 71, 67, 21, '14193835', 2, '12', 'Venta de producto', 4, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `idmunicipio` int(11) NOT NULL,
  `municipio` varchar(80) NOT NULL,
  `codigopostal` varchar(15) DEFAULT NULL,
  `iddepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`idmunicipio`, `municipio`, `codigopostal`, `iddepartamento`) VALUES
(1, 'MEDELLIN\r\n', '001', 1),
(2, 'BOGOTA, D.C.\r\n', '001', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cantidad` int(11) NOT NULL,
  `codigo` varchar(50) NOT NULL,
  `descripcion` varchar(180) NOT NULL,
  `idproducto` int(11) NOT NULL,
  `idmarca` int(11) NOT NULL,
  `idtipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cantidad`, `codigo`, `descripcion`, `idproducto`, `idmarca`, `idtipo`) VALUES
(14, '312145', 'Sombreo aliado', 66, 14, 14),
(15, '123456', 'Buenos ', 67, 19, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `idrol` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Asesor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idtipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idtipo`, `nombre`) VALUES
(13, 'Tenis'),
(14, 'Sombrero'),
(15, 'Camisa'),
(16, 'Chanclas'),
(17, 'Zapatos'),
(18, 'Pantalon');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocliente`
--

CREATE TABLE `tipocliente` (
  `idtipocliente` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipocliente`
--

INSERT INTO `tipocliente` (`idtipocliente`, `tipo`) VALUES
(1, 'juridica'),
(2, 'natural');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipomovimiento`
--

CREATE TABLE `tipomovimiento` (
  `idtipomovimiento` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `valor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipomovimiento`
--

INSERT INTO `tipomovimiento` (`idtipomovimiento`, `tipo`, `valor`) VALUES
(3, 'Entrada', 'Compra'),
(4, 'Salida', 'Venta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

CREATE TABLE `tipopago` (
  `idtipopago` int(11) NOT NULL,
  `tipopago` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`) VALUES
(1, 'credito'),
(2, 'efectivo'),
(3, 'n/a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `celular` varchar(15) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `clave` longtext NOT NULL,
  `recupcontraseña` int(11) DEFAULT NULL,
  `idrol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idusuario`, `nombres`, `apellidos`, `celular`, `telefono`, `direccion`, `correo`, `usuario`, `clave`, `recupcontraseña`, `idrol`) VALUES
(21, 'Daniel', 'Garcia', '3186492691', '3186492', 'Calle 8A #82-22', 'garmidan16@gmail.com', 'dangar99', '$2a$10$YtfFh.04rGXU78XrlbajEOpyb0QOmaZLsn3/moCQD1egJf/LnLt.i', 0, 1),
(32, 'YEFERSON', 'MIRANDA', '3144097493', '3186492692', 'calle 8a#82-22', 'ydmmmm1997@gmail.com', 'yefmir70', '$2a$10$yvs6fFmzbfyBANKajQnKS.G7RmhjHYshRt4B6o21uRBg2HDtLVGem', 0, 2),
(33, 'LILIANa', 'GIRAl', '318456478', '3214568', 'calle 8a#82-22', 'LGIRAL@MINTIC.GOV.CO', 'lilgir59', '$2a$10$F9feLs63tQzDx6SF3J5xpO8mi1u0U2/kZYN/QP6.vXrXZupwyn6wq', 0, 1),
(34, 'JHON HEIDEr', 'CAICEDO ', '3107438415', '3456789', 'herrera', 'jhonkaicedodussan@gmail.com', 'jhocai76', '$2a$10$itv8kxA1KX8DGvE2v1FPo.WHr.l5pH7K6NajdoMSZz9Rz1kIYGteq', 0, 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivoscargardos`
--
ALTER TABLE `archivoscargardos`
  ADD PRIMARY KEY (`idarchivoscargardos`),
  ADD KEY `idusuario` (`idusuario`);

--
-- Indices de la tabla `batch_job_execution`
--
ALTER TABLE `batch_job_execution`
  ADD PRIMARY KEY (`JOB_EXECUTION_ID`),
  ADD KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`);

--
-- Indices de la tabla `batch_job_execution_context`
--
ALTER TABLE `batch_job_execution_context`
  ADD PRIMARY KEY (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_job_execution_params`
--
ALTER TABLE `batch_job_execution_params`
  ADD KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_job_execution_seq`
--
ALTER TABLE `batch_job_execution_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `batch_job_instance`
--
ALTER TABLE `batch_job_instance`
  ADD PRIMARY KEY (`JOB_INSTANCE_ID`),
  ADD UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`);

--
-- Indices de la tabla `batch_job_seq`
--
ALTER TABLE `batch_job_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `batch_step_execution`
--
ALTER TABLE `batch_step_execution`
  ADD PRIMARY KEY (`STEP_EXECUTION_ID`),
  ADD KEY `JOB_EXEC_STEP_FK` (`JOB_EXECUTION_ID`);

--
-- Indices de la tabla `batch_step_execution_context`
--
ALTER TABLE `batch_step_execution_context`
  ADD PRIMARY KEY (`STEP_EXECUTION_ID`);

--
-- Indices de la tabla `batch_step_execution_seq`
--
ALTER TABLE `batch_step_execution_seq`
  ADD UNIQUE KEY `UNIQUE_KEY_UN` (`UNIQUE_KEY`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`),
  ADD KEY `idtipocliente` (`idtipocliente`),
  ADD KEY `idmunicipio` (`idmunicipio`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`idfactura`);

--
-- Indices de la tabla `logueo`
--
ALTER TABLE `logueo`
  ADD PRIMARY KEY (`idlogueo`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idmarca`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`idmovimiento`),
  ADD KEY `idproducto` (`idproducto`),
  ADD KEY `idusuario` (`idusuario`),
  ADD KEY `idtipomovimiento` (`idtipomovimiento`),
  ADD KEY `idcliente` (`cliente`),
  ADD KEY `idtipopago` (`idtipopago`),
  ADD KEY `idfactura` (`idfactura`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`idmunicipio`),
  ADD KEY `iddepartamento` (`iddepartamento`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`idproducto`),
  ADD KEY `idmarca` (`idmarca`),
  ADD KEY `idtipo` (`idtipo`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`idrol`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  ADD PRIMARY KEY (`idtipocliente`);

--
-- Indices de la tabla `tipomovimiento`
--
ALTER TABLE `tipomovimiento`
  ADD PRIMARY KEY (`idtipomovimiento`);

--
-- Indices de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  ADD PRIMARY KEY (`idtipopago`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idusuario`),
  ADD KEY `idrol` (`idrol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivoscargardos`
--
ALTER TABLE `archivoscargardos`
  MODIFY `idarchivoscargardos` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `iddepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `factura`
--
ALTER TABLE `factura`
  MODIFY `idfactura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `logueo`
--
ALTER TABLE `logueo`
  MODIFY `idlogueo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `idmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `idmovimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `idmunicipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `idproducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `idrol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `tipocliente`
--
ALTER TABLE `tipocliente`
  MODIFY `idtipocliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tipomovimiento`
--
ALTER TABLE `tipomovimiento`
  MODIFY `idtipomovimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipopago`
--
ALTER TABLE `tipopago`
  MODIFY `idtipopago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idusuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `archivoscargardos`
--
ALTER TABLE `archivoscargardos`
  ADD CONSTRAINT `archivoscargardos_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `batch_job_execution`
--
ALTER TABLE `batch_job_execution`
  ADD CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`);

--
-- Filtros para la tabla `batch_job_execution_context`
--
ALTER TABLE `batch_job_execution_context`
  ADD CONSTRAINT `JOB_EXEC_CTX_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_job_execution_params`
--
ALTER TABLE `batch_job_execution_params`
  ADD CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_step_execution`
--
ALTER TABLE `batch_step_execution`
  ADD CONSTRAINT `JOB_EXEC_STEP_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`);

--
-- Filtros para la tabla `batch_step_execution_context`
--
ALTER TABLE `batch_step_execution_context`
  ADD CONSTRAINT `STEP_EXEC_CTX_FK` FOREIGN KEY (`STEP_EXECUTION_ID`) REFERENCES `batch_step_execution` (`STEP_EXECUTION_ID`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`idtipocliente`) REFERENCES `tipocliente` (`idtipocliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idmunicipio`) REFERENCES `municipio` (`idmunicipio`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `movimiento_ibfk_1` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`),
  ADD CONSTRAINT `movimiento_ibfk_2` FOREIGN KEY (`idtipomovimiento`) REFERENCES `tipomovimiento` (`idtipomovimiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movimiento_ibfk_3` FOREIGN KEY (`idproducto`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movimiento_ibfk_4` FOREIGN KEY (`idtipopago`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movimiento_ibfk_5` FOREIGN KEY (`idfactura`) REFERENCES `factura` (`idfactura`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`iddepartamento`) REFERENCES `departamento` (`iddepartamento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`idtipo`) REFERENCES `tipo` (`idtipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
