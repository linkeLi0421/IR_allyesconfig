; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_stat.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_stat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_head = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }

@iscsi_stat_instance_attrs = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @iscsi_stat_instance_attr_inst, ptr @iscsi_stat_instance_attr_min_ver, ptr @iscsi_stat_instance_attr_max_ver, ptr @iscsi_stat_instance_attr_portals, ptr @iscsi_stat_instance_attr_nodes, ptr @iscsi_stat_instance_attr_sessions, ptr @iscsi_stat_instance_attr_fail_sess, ptr @iscsi_stat_instance_attr_fail_type, ptr @iscsi_stat_instance_attr_fail_rem_name, ptr @iscsi_stat_instance_attr_disc_time, ptr @iscsi_stat_instance_attr_description, ptr @iscsi_stat_instance_attr_vendor, ptr @iscsi_stat_instance_attr_version, ptr null], [40 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_cit = dso_local constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @iscsi_stat_instance_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_err_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @iscsi_stat_sess_err_attr_inst, ptr @iscsi_stat_sess_err_attr_digest_errors, ptr @iscsi_stat_sess_err_attr_cxn_errors, ptr @iscsi_stat_sess_err_attr_format_errors, ptr null], [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_err_cit = dso_local constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @iscsi_stat_sess_err_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @iscsi_stat_tgt_attr_attr_inst, ptr @iscsi_stat_tgt_attr_attr_indx, ptr @iscsi_stat_tgt_attr_attr_login_fails, ptr @iscsi_stat_tgt_attr_attr_last_fail_time, ptr @iscsi_stat_tgt_attr_attr_last_fail_type, ptr @iscsi_stat_tgt_attr_attr_fail_intr_name, ptr @iscsi_stat_tgt_attr_attr_fail_intr_addr_type, ptr @iscsi_stat_tgt_attr_attr_fail_intr_addr, ptr null], [60 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_cit = dso_local constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @iscsi_stat_tgt_attr_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_login_stats_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @iscsi_stat_login_attr_inst, ptr @iscsi_stat_login_attr_indx, ptr @iscsi_stat_login_attr_accepts, ptr @iscsi_stat_login_attr_other_fails, ptr @iscsi_stat_login_attr_redirects, ptr @iscsi_stat_login_attr_authorize_fails, ptr @iscsi_stat_login_attr_authenticate_fails, ptr @iscsi_stat_login_attr_negotiate_fails, ptr null], [60 x i8] zeroinitializer }, align 32
@iscsi_stat_login_cit = dso_local constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @iscsi_stat_login_stats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_logout_stats_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @iscsi_stat_logout_attr_inst, ptr @iscsi_stat_logout_attr_indx, ptr @iscsi_stat_logout_attr_normal_logouts, ptr @iscsi_stat_logout_attr_abnormal_logouts, ptr null], [44 x i8] zeroinitializer }, align 32
@iscsi_stat_logout_cit = dso_local constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @iscsi_stat_logout_stats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_stats_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @iscsi_stat_sess_attr_inst, ptr @iscsi_stat_sess_attr_node, ptr @iscsi_stat_sess_attr_indx, ptr @iscsi_stat_sess_attr_cmd_pdus, ptr @iscsi_stat_sess_attr_rsp_pdus, ptr @iscsi_stat_sess_attr_txdata_octs, ptr @iscsi_stat_sess_attr_rxdata_octs, ptr @iscsi_stat_sess_attr_conn_digest_errors, ptr @iscsi_stat_sess_attr_conn_timeout_errors, ptr null], [56 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_cit = dso_local constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr null, ptr @iscsi_stat_sess_stats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str, ptr null, i16 292, ptr @iscsi_stat_instance_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_min_ver = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.2, ptr null, i16 292, ptr @iscsi_stat_instance_min_ver_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_max_ver = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 292, ptr @iscsi_stat_instance_max_ver_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_portals = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.4, ptr null, i16 292, ptr @iscsi_stat_instance_portals_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_nodes = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 292, ptr @iscsi_stat_instance_nodes_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_sessions = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 292, ptr @iscsi_stat_instance_sessions_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_fail_sess = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 292, ptr @iscsi_stat_instance_fail_sess_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_fail_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 292, ptr @iscsi_stat_instance_fail_type_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_fail_rem_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 292, ptr @iscsi_stat_instance_fail_rem_name_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_disc_time = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 292, ptr @iscsi_stat_instance_disc_time_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_description = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 292, ptr @iscsi_stat_instance_description_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_vendor = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 292, ptr @iscsi_stat_instance_vendor_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_instance_attr_version = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 292, ptr @iscsi_stat_instance_version_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inst\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"min_ver\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max_ver\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"portals\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodes\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sessions\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fail_sess\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fail_type\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fail_rem_name\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"disc_time\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"description\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Storage Engine Target\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Datera, Inc. iSCSI-Target\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"v4.1.0\00", [25 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_err_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str, ptr null, i16 292, ptr @iscsi_stat_sess_err_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_err_attr_digest_errors = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 292, ptr @iscsi_stat_sess_err_digest_errors_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_err_attr_cxn_errors = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 292, ptr @iscsi_stat_sess_err_cxn_errors_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_err_attr_format_errors = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 292, ptr @iscsi_stat_sess_err_format_errors_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"digest_errors\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cxn_errors\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"format_errors\00", [18 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str, ptr null, i16 292, ptr @iscsi_stat_tgt_attr_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 292, ptr @iscsi_stat_tgt_attr_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attr_login_fails = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.23, ptr null, i16 292, ptr @iscsi_stat_tgt_attr_login_fails_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attr_last_fail_time = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 292, ptr @iscsi_stat_tgt_attr_last_fail_time_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attr_last_fail_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 292, ptr @iscsi_stat_tgt_attr_last_fail_type_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attr_fail_intr_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 292, ptr @iscsi_stat_tgt_attr_fail_intr_name_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attr_fail_intr_addr_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.28, ptr null, i16 292, ptr @iscsi_stat_tgt_attr_fail_intr_addr_type_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_tgt_attr_attr_fail_intr_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.31, ptr null, i16 292, ptr @iscsi_stat_tgt_attr_fail_intr_addr_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"indx\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"login_fails\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"last_fail_time\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"last_fail_type\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fail_intr_name\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fail_intr_addr_type\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipv6\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipv4\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fail_intr_addr\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%pISc\0A\00", [25 x i8] zeroinitializer }, align 32
@iscsi_stat_login_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str, ptr null, i16 292, ptr @iscsi_stat_login_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_login_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 292, ptr @iscsi_stat_login_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_login_attr_accepts = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.33, ptr null, i16 292, ptr @iscsi_stat_login_accepts_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_login_attr_other_fails = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.34, ptr null, i16 292, ptr @iscsi_stat_login_other_fails_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_login_attr_redirects = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.35, ptr null, i16 292, ptr @iscsi_stat_login_redirects_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_login_attr_authorize_fails = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.36, ptr null, i16 292, ptr @iscsi_stat_login_authorize_fails_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_login_attr_authenticate_fails = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.37, ptr null, i16 292, ptr @iscsi_stat_login_authenticate_fails_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_login_attr_negotiate_fails = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.38, ptr null, i16 292, ptr @iscsi_stat_login_negotiate_fails_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"accepts\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"other_fails\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"redirects\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"authorize_fails\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"authenticate_fails\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"negotiate_fails\00", [16 x i8] zeroinitializer }, align 32
@iscsi_stat_logout_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str, ptr null, i16 292, ptr @iscsi_stat_logout_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_logout_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 292, ptr @iscsi_stat_logout_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_logout_attr_normal_logouts = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.39, ptr null, i16 292, ptr @iscsi_stat_logout_normal_logouts_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_logout_attr_abnormal_logouts = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.40, ptr null, i16 292, ptr @iscsi_stat_logout_abnormal_logouts_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"normal_logouts\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"abnormal_logouts\00", [47 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_inst = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str, ptr null, i16 292, ptr @iscsi_stat_sess_inst_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_node = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.41, ptr null, i16 292, ptr @iscsi_stat_sess_node_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_indx = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 292, ptr @iscsi_stat_sess_indx_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_cmd_pdus = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.42, ptr null, i16 292, ptr @iscsi_stat_sess_cmd_pdus_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_rsp_pdus = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.44, ptr null, i16 292, ptr @iscsi_stat_sess_rsp_pdus_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_txdata_octs = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.45, ptr null, i16 292, ptr @iscsi_stat_sess_txdata_octs_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_rxdata_octs = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.46, ptr null, i16 292, ptr @iscsi_stat_sess_rxdata_octs_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_conn_digest_errors = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 292, ptr @iscsi_stat_sess_conn_digest_errors_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@iscsi_stat_sess_attr_conn_timeout_errors = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.48, ptr null, i16 292, ptr @iscsi_stat_sess_conn_timeout_errors_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"node\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cmd_pdus\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rsp_pdus\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"txdata_octs\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rxdata_octs\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"conn_digest_errors\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"conn_timeout_errors\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.49 = private unnamed_addr constant [26 x i8] c"iscsi_stat_instance_attrs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 164, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [24 x i8] c"iscsi_stat_instance_cit\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 181, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"iscsi_stat_sess_err_attrs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 235, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [24 x i8] c"iscsi_stat_sess_err_cit\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 243, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"iscsi_stat_tgt_attr_attrs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 372, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"iscsi_stat_tgt_attr_cit\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 384, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant [29 x i8] c"iscsi_stat_login_stats_attrs\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 504, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"iscsi_stat_login_cit\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 516, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"iscsi_stat_logout_stats_attrs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 565, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"iscsi_stat_logout_cit\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 573, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant [28 x i8] c"iscsi_stat_sess_stats_attrs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 782, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"iscsi_stat_sess_cit\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 795, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"iscsi_stat_instance_attr_inst\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [33 x i8] c"iscsi_stat_instance_attr_min_ver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [33 x i8] c"iscsi_stat_instance_attr_max_ver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [33 x i8] c"iscsi_stat_instance_attr_portals\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [31 x i8] c"iscsi_stat_instance_attr_nodes\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [34 x i8] c"iscsi_stat_instance_attr_sessions\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [35 x i8] c"iscsi_stat_instance_attr_fail_sess\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [35 x i8] c"iscsi_stat_instance_attr_fail_type\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [39 x i8] c"iscsi_stat_instance_attr_fail_rem_name\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [35 x i8] c"iscsi_stat_instance_attr_disc_time\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [37 x i8] c"iscsi_stat_instance_attr_description\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [32 x i8] c"iscsi_stat_instance_attr_vendor\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [33 x i8] c"iscsi_stat_instance_attr_version\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 150, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 53, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 151, i32 1 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 152, i32 1 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 153, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 154, i32 1 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 155, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 156, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 157, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 158, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 121, i32 35 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 123, i32 40 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 159, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 160, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 135, i32 43 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 161, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 141, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 162, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 147, i32 43 }
@___asan_gen_.181 = private unnamed_addr constant [30 x i8] c"iscsi_stat_sess_err_attr_inst\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 230, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant [39 x i8] c"iscsi_stat_sess_err_attr_digest_errors\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [36 x i8] c"iscsi_stat_sess_err_attr_cxn_errors\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [39 x i8] c"iscsi_stat_sess_err_attr_format_errors\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 231, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 232, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 233, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"iscsi_stat_tgt_attr_attr_inst\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 363, i32 1 }
@___asan_gen_.205 = private unnamed_addr constant [30 x i8] c"iscsi_stat_tgt_attr_attr_indx\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [37 x i8] c"iscsi_stat_tgt_attr_attr_login_fails\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [40 x i8] c"iscsi_stat_tgt_attr_attr_last_fail_time\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [40 x i8] c"iscsi_stat_tgt_attr_attr_last_fail_type\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [40 x i8] c"iscsi_stat_tgt_attr_attr_fail_intr_name\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [45 x i8] c"iscsi_stat_tgt_attr_attr_fail_intr_addr_type\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [40 x i8] c"iscsi_stat_tgt_attr_attr_fail_intr_addr\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 364, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 365, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 366, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 367, i32 1 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 368, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 325, i32 31 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 369, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 341, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 343, i32 35 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 370, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 357, i32 34 }
@___asan_gen_.259 = private unnamed_addr constant [27 x i8] c"iscsi_stat_login_attr_inst\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 495, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant [27 x i8] c"iscsi_stat_login_attr_indx\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 496, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant [30 x i8] c"iscsi_stat_login_attr_accepts\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [34 x i8] c"iscsi_stat_login_attr_other_fails\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [32 x i8] c"iscsi_stat_login_attr_redirects\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [38 x i8] c"iscsi_stat_login_attr_authorize_fails\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [41 x i8] c"iscsi_stat_login_attr_authenticate_fails\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [38 x i8] c"iscsi_stat_login_attr_negotiate_fails\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 497, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 498, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 499, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 500, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 501, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 502, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant [28 x i8] c"iscsi_stat_logout_attr_inst\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 560, i32 1 }
@___asan_gen_.304 = private unnamed_addr constant [28 x i8] c"iscsi_stat_logout_attr_indx\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 561, i32 1 }
@___asan_gen_.307 = private unnamed_addr constant [38 x i8] c"iscsi_stat_logout_attr_normal_logouts\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [40 x i8] c"iscsi_stat_logout_attr_abnormal_logouts\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 562, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 563, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant [26 x i8] c"iscsi_stat_sess_attr_inst\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 772, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant [26 x i8] c"iscsi_stat_sess_attr_node\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [26 x i8] c"iscsi_stat_sess_attr_indx\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 774, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant [30 x i8] c"iscsi_stat_sess_attr_cmd_pdus\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [30 x i8] c"iscsi_stat_sess_attr_rsp_pdus\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [33 x i8] c"iscsi_stat_sess_attr_txdata_octs\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [33 x i8] c"iscsi_stat_sess_attr_rxdata_octs\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [40 x i8] c"iscsi_stat_sess_attr_conn_digest_errors\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [41 x i8] c"iscsi_stat_sess_attr_conn_timeout_errors\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 773, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 775, i32 1 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 654, i32 36 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 776, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 777, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 778, i32 1 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 779, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.368 = private constant [44 x i8] c"../drivers/target/iscsi/iscsi_target_stat.c\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.368, i32 780, i32 1 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @iscsi_stat_instance_attrs, ptr @iscsi_stat_instance_cit, ptr @iscsi_stat_sess_err_attrs, ptr @iscsi_stat_sess_err_cit, ptr @iscsi_stat_tgt_attr_attrs, ptr @iscsi_stat_tgt_attr_cit, ptr @iscsi_stat_login_stats_attrs, ptr @iscsi_stat_login_cit, ptr @iscsi_stat_logout_stats_attrs, ptr @iscsi_stat_logout_cit, ptr @iscsi_stat_sess_stats_attrs, ptr @iscsi_stat_sess_cit, ptr @iscsi_stat_instance_attr_inst, ptr @iscsi_stat_instance_attr_min_ver, ptr @iscsi_stat_instance_attr_max_ver, ptr @iscsi_stat_instance_attr_portals, ptr @iscsi_stat_instance_attr_nodes, ptr @iscsi_stat_instance_attr_sessions, ptr @iscsi_stat_instance_attr_fail_sess, ptr @iscsi_stat_instance_attr_fail_type, ptr @iscsi_stat_instance_attr_fail_rem_name, ptr @iscsi_stat_instance_attr_disc_time, ptr @iscsi_stat_instance_attr_description, ptr @iscsi_stat_instance_attr_vendor, ptr @iscsi_stat_instance_attr_version, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @iscsi_stat_sess_err_attr_inst, ptr @iscsi_stat_sess_err_attr_digest_errors, ptr @iscsi_stat_sess_err_attr_cxn_errors, ptr @iscsi_stat_sess_err_attr_format_errors, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @iscsi_stat_tgt_attr_attr_inst, ptr @iscsi_stat_tgt_attr_attr_indx, ptr @iscsi_stat_tgt_attr_attr_login_fails, ptr @iscsi_stat_tgt_attr_attr_last_fail_time, ptr @iscsi_stat_tgt_attr_attr_last_fail_type, ptr @iscsi_stat_tgt_attr_attr_fail_intr_name, ptr @iscsi_stat_tgt_attr_attr_fail_intr_addr_type, ptr @iscsi_stat_tgt_attr_attr_fail_intr_addr, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @iscsi_stat_login_attr_inst, ptr @iscsi_stat_login_attr_indx, ptr @iscsi_stat_login_attr_accepts, ptr @iscsi_stat_login_attr_other_fails, ptr @iscsi_stat_login_attr_redirects, ptr @iscsi_stat_login_attr_authorize_fails, ptr @iscsi_stat_login_attr_authenticate_fails, ptr @iscsi_stat_login_attr_negotiate_fails, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @iscsi_stat_logout_attr_inst, ptr @iscsi_stat_logout_attr_indx, ptr @iscsi_stat_logout_attr_normal_logouts, ptr @iscsi_stat_logout_attr_abnormal_logouts, ptr @.str.39, ptr @.str.40, ptr @iscsi_stat_sess_attr_inst, ptr @iscsi_stat_sess_attr_node, ptr @iscsi_stat_sess_attr_indx, ptr @iscsi_stat_sess_attr_cmd_pdus, ptr @iscsi_stat_sess_attr_rsp_pdus, ptr @iscsi_stat_sess_attr_txdata_octs, ptr @iscsi_stat_sess_attr_rxdata_octs, ptr @iscsi_stat_sess_attr_conn_digest_errors, ptr @iscsi_stat_sess_attr_conn_timeout_errors, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attrs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_err_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_err_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_stats_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_logout_stats_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_logout_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_stats_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_cit to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_min_ver to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_max_ver to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_portals to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_nodes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_sessions to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_fail_sess to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_fail_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_fail_rem_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_disc_time to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_description to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_vendor to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_instance_attr_version to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_err_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_err_attr_digest_errors to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_err_attr_cxn_errors to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_err_attr_format_errors to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attr_login_fails to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attr_last_fail_time to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attr_last_fail_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attr_fail_intr_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attr_fail_intr_addr_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_tgt_attr_attr_fail_intr_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_attr_accepts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_attr_other_fails to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_attr_redirects to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_attr_authorize_fails to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_attr_authenticate_fails to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_login_attr_negotiate_fails to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_logout_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_logout_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_logout_attr_normal_logouts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_logout_attr_abnormal_logouts to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_inst to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_node to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_indx to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_cmd_pdus to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_rsp_pdus to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_txdata_octs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_rxdata_octs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_conn_digest_errors to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_stat_sess_attr_conn_timeout_errors to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tiqn_index = getelementptr i8, ptr %item, i32 400
  %0 = ptrtoint ptr %tiqn_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tiqn_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_min_ver_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_max_ver_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_portals_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tiqn_num_tpg_nps = getelementptr i8, ptr %item, i32 -444
  %0 = ptrtoint ptr %tiqn_num_tpg_nps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tiqn_num_tpg_nps, align 16
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_nodes_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_sessions_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tiqn_nsessions = getelementptr i8, ptr %item, i32 -440
  %0 = ptrtoint ptr %tiqn_nsessions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tiqn_nsessions, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_fail_sess_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sess_err_stats = getelementptr i8, ptr %item, i32 468
  tail call void @_raw_spin_lock_bh(ptr noundef %sess_err_stats) #6
  %digest_errors = getelementptr i8, ptr %item, i32 512
  %0 = ptrtoint ptr %digest_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %digest_errors, align 4
  %cxn_timeout_errors = getelementptr i8, ptr %item, i32 516
  %2 = ptrtoint ptr %cxn_timeout_errors to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cxn_timeout_errors, align 16
  %add = add i32 %3, %1
  %pdu_format_errors = getelementptr i8, ptr %item, i32 520
  %4 = ptrtoint ptr %pdu_format_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pdu_format_errors, align 4
  %add1 = add i32 %add, %5
  tail call void @_raw_spin_unlock_bh(ptr noundef %sess_err_stats) #6
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %add1)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_fail_type_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %last_sess_failure_type = getelementptr i8, ptr %item, i32 524
  %0 = ptrtoint ptr %last_sess_failure_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_sess_failure_type, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_fail_rem_name_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %last_sess_fail_rem_name = getelementptr i8, ptr %item, i32 528
  %0 = ptrtoint ptr %last_sess_fail_rem_name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %last_sess_fail_rem_name, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %spec.select = select i1 %tobool.not, ptr @.str.11, ptr %last_sess_fail_rem_name
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef %spec.select)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_disc_time_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_description_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.14)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @iscsi_stat_instance_vendor_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %page, ptr @.str.16, i32 27)
  ret i32 26
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_instance_version_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.18)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_err_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tiqn_index = getelementptr i8, ptr %item, i32 320
  %0 = ptrtoint ptr %tiqn_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tiqn_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_err_digest_errors_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %digest_errors = getelementptr i8, ptr %item, i32 432
  %0 = ptrtoint ptr %digest_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %digest_errors, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_err_cxn_errors_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cxn_timeout_errors = getelementptr i8, ptr %item, i32 436
  %0 = ptrtoint ptr %cxn_timeout_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cxn_timeout_errors, align 16
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_err_format_errors_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu_format_errors = getelementptr i8, ptr %item, i32 440
  %0 = ptrtoint ptr %pdu_format_errors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdu_format_errors, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_tgt_attr_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tiqn_index = getelementptr i8, ptr %item, i32 240
  %0 = ptrtoint ptr %tiqn_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tiqn_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_tgt_attr_indx_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_tgt_attr_login_fails_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 692
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %redirects = getelementptr i8, ptr %item, i32 744
  %0 = ptrtoint ptr %redirects to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %redirects, align 4
  %authorize_fails = getelementptr i8, ptr %item, i32 748
  %2 = ptrtoint ptr %authorize_fails to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %authorize_fails, align 8
  %add = add i32 %3, %1
  %authenticate_fails = getelementptr i8, ptr %item, i32 752
  %4 = ptrtoint ptr %authenticate_fails to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %authenticate_fails, align 4
  %add1 = add i32 %add, %5
  %negotiate_fails = getelementptr i8, ptr %item, i32 756
  %6 = ptrtoint ptr %negotiate_fails to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %negotiate_fails, align 64
  %add2 = add i32 %add1, %7
  %other_fails = getelementptr i8, ptr %item, i32 740
  %8 = ptrtoint ptr %other_fails to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %other_fails, align 16
  %add3 = add i32 %add2, %9
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  %call5 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %add3)
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_tgt_attr_last_fail_time_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 692
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %last_fail_time1 = getelementptr i8, ptr %item, i32 764
  %0 = ptrtoint ptr %last_fail_time1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %last_fail_time1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  %conv = trunc i64 %1 to i32
  %2 = mul i32 %conv, 100
  %mul = add i32 %2, 3000000
  %div = udiv i32 %mul, 100
  %cond = select i1 %tobool.not, i32 0, i32 %div
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %cond)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_tgt_attr_last_fail_type_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 692
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %last_fail_type1 = getelementptr i8, ptr %item, i32 772
  %0 = ptrtoint ptr %last_fail_type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_fail_type1, align 16
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_tgt_attr_fail_intr_name_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  %buf = alloca [224 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 692
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %buf) #6
  %0 = call ptr @memset(ptr %buf, i32 255, i32 224)
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %last_intr_fail_name = getelementptr i8, ptr %item, i32 908
  %1 = ptrtoint ptr %last_intr_fail_name to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %last_intr_fail_name, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %spec.select = select i1 %tobool.not, ptr @.str.11, ptr %last_intr_fail_name
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 224, ptr noundef nonnull @.str.27, ptr noundef %spec.select)
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  %call6 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.10, ptr noundef nonnull %buf)
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %buf) #6
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_tgt_attr_fail_intr_addr_type_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 692
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %last_intr_fail_ip_family = getelementptr i8, ptr %item, i32 776
  %0 = ptrtoint ptr %last_intr_fail_ip_family to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_intr_fail_ip_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp = icmp eq i32 %1, 10
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = call ptr @memcpy(ptr %page, ptr @.str.29, i32 6)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = call ptr @memcpy(ptr %page, ptr @.str.30, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  ret i32 5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_tgt_attr_fail_intr_addr_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 692
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %last_intr_fail_sockaddr = getelementptr i8, ptr %item, i32 780
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.32, ptr noundef %last_intr_fail_sockaddr)
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_login_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tiqn_index = getelementptr i8, ptr %item, i32 160
  %0 = ptrtoint ptr %tiqn_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tiqn_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_login_indx_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_login_accepts_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 612
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %accepts = getelementptr i8, ptr %item, i32 656
  %0 = ptrtoint ptr %accepts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accepts, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_login_other_fails_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 612
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %other_fails = getelementptr i8, ptr %item, i32 660
  %0 = ptrtoint ptr %other_fails to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %other_fails, align 16
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_login_redirects_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 612
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %redirects = getelementptr i8, ptr %item, i32 664
  %0 = ptrtoint ptr %redirects to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %redirects, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_login_authorize_fails_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 612
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %authorize_fails = getelementptr i8, ptr %item, i32 668
  %0 = ptrtoint ptr %authorize_fails to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %authorize_fails, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_login_authenticate_fails_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 612
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %authenticate_fails = getelementptr i8, ptr %item, i32 672
  %0 = ptrtoint ptr %authenticate_fails to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %authenticate_fails, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_login_negotiate_fails_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %login_stats = getelementptr i8, ptr %item, i32 612
  tail call void @_raw_spin_lock(ptr noundef %login_stats) #6
  %negotiate_fails = getelementptr i8, ptr %item, i32 676
  %0 = ptrtoint ptr %negotiate_fails to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %negotiate_fails, align 64
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  tail call void @_raw_spin_unlock(ptr noundef %login_stats) #6
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_logout_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tiqn_index = getelementptr i8, ptr %item, i32 80
  %0 = ptrtoint ptr %tiqn_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tiqn_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_logout_indx_show(ptr nocapture noundef readnone %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_logout_normal_logouts_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %normal_logouts = getelementptr i8, ptr %item, i32 1088
  %0 = ptrtoint ptr %normal_logouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %normal_logouts, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_logout_abnormal_logouts_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %abnormal_logouts = getelementptr i8, ptr %item, i32 1092
  %0 = ptrtoint ptr %abnormal_logouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %abnormal_logouts, align 16
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_inst_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg = getelementptr i8, ptr %item, i32 -1696
  %0 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg, align 4
  %se_tpg_wwn = getelementptr inbounds %struct.se_portal_group, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %se_tpg_wwn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %se_tpg_wwn, align 4
  %tiqn_index = getelementptr i8, ptr %3, i32 732
  %4 = ptrtoint ptr %tiqn_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tiqn_index, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_node_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -1600
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #6
  %nacl_sess = getelementptr i8, ptr %item, i32 -1700
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess_ops, align 8
  %SessionType = getelementptr inbounds %struct.iscsi_sess_ops, ptr %5, i32 0, i32 17
  %6 = ptrtoint ptr %SessionType to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %SessionType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  %cond = zext i1 %tobool3.not to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %cond)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_indx_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -1600
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #6
  %nacl_sess = getelementptr i8, ptr %item, i32 -1700
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %session_index = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %session_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %session_index, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.1, i32 noundef %5)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ %call3, %if.then2 ], [ 0, %if.then.if.end4_crit_edge ], [ 0, %entry.if.end4_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_cmd_pdus_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -1600
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #6
  %nacl_sess = getelementptr i8, ptr %item, i32 -1700
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %cmd_pdus = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_pdus, i32 noundef 4) #6
  %4 = ptrtoint ptr %cmd_pdus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cmd_pdus, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_rsp_pdus_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -1600
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #6
  %nacl_sess = getelementptr i8, ptr %item, i32 -1700
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rsp_pdus = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rsp_pdus, i32 noundef 4) #6
  %4 = ptrtoint ptr %rsp_pdus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rsp_pdus, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_txdata_octs_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -1600
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #6
  %nacl_sess = getelementptr i8, ptr %item, i32 -1700
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %tx_data_octets = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 22
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_data_octets, i32 noundef 4) #6
  %4 = ptrtoint ptr %tx_data_octets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx_data_octets, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_rxdata_octs_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -1600
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #6
  %nacl_sess = getelementptr i8, ptr %item, i32 -1700
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %rx_data_octets = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_data_octets, i32 noundef 4) #6
  %4 = ptrtoint ptr %rx_data_octets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rx_data_octets, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_conn_digest_errors_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -1600
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #6
  %nacl_sess = getelementptr i8, ptr %item, i32 -1700
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conn_digest_errors = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %conn_digest_errors, i32 noundef 4) #6
  %4 = ptrtoint ptr %conn_digest_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %conn_digest_errors, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iscsi_stat_sess_conn_timeout_errors_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl_sess_lock = getelementptr i8, ptr %item, i32 -1600
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #6
  %nacl_sess = getelementptr i8, ptr %item, i32 -1700
  %0 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl_sess, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fabric_sess_ptr, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.then.if.end5_crit_edge, label %if.then2

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conn_timeout_errors = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 25
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %conn_timeout_errors, i32 noundef 4) #6
  %4 = ptrtoint ptr %conn_timeout_errors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %conn_timeout_errors, align 4
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %page, i32 noundef 4096, ptr noundef nonnull @.str.43, i32 noundef %5)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then2 ], [ 0, %if.then.if.end5_crit_edge ], [ 0, %entry.if.end5_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !49, !50, !52, !53, !55, !57, !58, !60, !62, !63, !65, !67, !69, !71, !72, !74, !75, !77, !78, !80, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !102, !104, !106, !108, !109, !111, !113, !115, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !139, !141, !143, !144, !146, !147, !149, !151, !153, !154, !156, !158, !159, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175}
!llvm.module.flags = !{!176, !177, !178, !179, !180, !181, !182, !183}
!llvm.ident = !{!184}

!0 = !{ptr @iscsi_stat_instance_cit, !1, !"iscsi_stat_instance_cit", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 181, i32 31}
!2 = !{ptr @iscsi_stat_sess_err_cit, !3, !"iscsi_stat_sess_err_cit", i1 false, i1 false}
!3 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 243, i32 31}
!4 = !{ptr @iscsi_stat_tgt_attr_cit, !5, !"iscsi_stat_tgt_attr_cit", i1 false, i1 false}
!5 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 384, i32 31}
!6 = !{ptr @iscsi_stat_login_cit, !7, !"iscsi_stat_login_cit", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 516, i32 31}
!8 = !{ptr @iscsi_stat_logout_cit, !9, !"iscsi_stat_logout_cit", i1 false, i1 false}
!9 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 573, i32 31}
!10 = !{ptr @iscsi_stat_sess_cit, !11, !"iscsi_stat_sess_cit", i1 false, i1 false}
!11 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 795, i32 31}
!12 = !{ptr @iscsi_stat_instance_attrs, !13, !"iscsi_stat_instance_attrs", i1 false, i1 false}
!13 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 164, i32 35}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 150, i32 1}
!16 = !{ptr @iscsi_stat_instance_attr_inst, !15, !"iscsi_stat_instance_attr_inst", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 53, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 151, i32 1}
!21 = !{ptr @iscsi_stat_instance_attr_min_ver, !20, !"iscsi_stat_instance_attr_min_ver", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 152, i32 1}
!24 = !{ptr @iscsi_stat_instance_attr_max_ver, !23, !"iscsi_stat_instance_attr_max_ver", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 153, i32 1}
!27 = !{ptr @iscsi_stat_instance_attr_portals, !26, !"iscsi_stat_instance_attr_portals", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 154, i32 1}
!30 = !{ptr @iscsi_stat_instance_attr_nodes, !29, !"iscsi_stat_instance_attr_nodes", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 155, i32 1}
!33 = !{ptr @iscsi_stat_instance_attr_sessions, !32, !"iscsi_stat_instance_attr_sessions", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 156, i32 1}
!36 = !{ptr @iscsi_stat_instance_attr_fail_sess, !35, !"iscsi_stat_instance_attr_fail_sess", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 157, i32 1}
!39 = !{ptr @iscsi_stat_instance_attr_fail_type, !38, !"iscsi_stat_instance_attr_fail_type", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 158, i32 1}
!42 = !{ptr @iscsi_stat_instance_attr_fail_rem_name, !41, !"iscsi_stat_instance_attr_fail_rem_name", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 121, i32 35}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 123, i32 40}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 159, i32 1}
!49 = !{ptr @iscsi_stat_instance_attr_disc_time, !48, !"iscsi_stat_instance_attr_disc_time", i1 false, i1 false}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 160, i32 1}
!52 = !{ptr @iscsi_stat_instance_attr_description, !51, !"iscsi_stat_instance_attr_description", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 135, i32 43}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 161, i32 1}
!57 = !{ptr @iscsi_stat_instance_attr_vendor, !56, !"iscsi_stat_instance_attr_vendor", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 141, i32 35}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 162, i32 1}
!62 = !{ptr @iscsi_stat_instance_attr_version, !61, !"iscsi_stat_instance_attr_version", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 147, i32 43}
!65 = !{ptr @iscsi_stat_sess_err_attrs, !66, !"iscsi_stat_sess_err_attrs", i1 false, i1 false}
!66 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 235, i32 35}
!67 = !{ptr @iscsi_stat_sess_err_attr_inst, !68, !"iscsi_stat_sess_err_attr_inst", i1 false, i1 false}
!68 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 230, i32 1}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 231, i32 1}
!71 = !{ptr @iscsi_stat_sess_err_attr_digest_errors, !70, !"iscsi_stat_sess_err_attr_digest_errors", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 232, i32 1}
!74 = !{ptr @iscsi_stat_sess_err_attr_cxn_errors, !73, !"iscsi_stat_sess_err_attr_cxn_errors", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 233, i32 1}
!77 = !{ptr @iscsi_stat_sess_err_attr_format_errors, !76, !"iscsi_stat_sess_err_attr_format_errors", i1 false, i1 false}
!78 = !{ptr @iscsi_stat_tgt_attr_attrs, !79, !"iscsi_stat_tgt_attr_attrs", i1 false, i1 false}
!79 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 372, i32 35}
!80 = !{ptr @iscsi_stat_tgt_attr_attr_inst, !81, !"iscsi_stat_tgt_attr_attr_inst", i1 false, i1 false}
!81 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 363, i32 1}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 364, i32 1}
!84 = !{ptr @iscsi_stat_tgt_attr_attr_indx, !83, !"iscsi_stat_tgt_attr_attr_indx", i1 false, i1 false}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 365, i32 1}
!87 = !{ptr @iscsi_stat_tgt_attr_attr_login_fails, !86, !"iscsi_stat_tgt_attr_attr_login_fails", i1 false, i1 false}
!88 = !{ptr @.str.24, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 366, i32 1}
!90 = !{ptr @iscsi_stat_tgt_attr_attr_last_fail_time, !89, !"iscsi_stat_tgt_attr_attr_last_fail_time", i1 false, i1 false}
!91 = !{ptr @.str.25, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 367, i32 1}
!93 = !{ptr @iscsi_stat_tgt_attr_attr_last_fail_type, !92, !"iscsi_stat_tgt_attr_attr_last_fail_type", i1 false, i1 false}
!94 = !{ptr @.str.26, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 368, i32 1}
!96 = !{ptr @iscsi_stat_tgt_attr_attr_fail_intr_name, !95, !"iscsi_stat_tgt_attr_attr_fail_intr_name", i1 false, i1 false}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 325, i32 31}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 369, i32 1}
!101 = !{ptr @iscsi_stat_tgt_attr_attr_fail_intr_addr_type, !100, !"iscsi_stat_tgt_attr_attr_fail_intr_addr_type", i1 false, i1 false}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 341, i32 35}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 343, i32 35}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 370, i32 1}
!108 = !{ptr @iscsi_stat_tgt_attr_attr_fail_intr_addr, !107, !"iscsi_stat_tgt_attr_attr_fail_intr_addr", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 357, i32 34}
!111 = !{ptr @iscsi_stat_login_stats_attrs, !112, !"iscsi_stat_login_stats_attrs", i1 false, i1 false}
!112 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 504, i32 35}
!113 = !{ptr @iscsi_stat_login_attr_inst, !114, !"iscsi_stat_login_attr_inst", i1 false, i1 false}
!114 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 495, i32 1}
!115 = !{ptr @iscsi_stat_login_attr_indx, !116, !"iscsi_stat_login_attr_indx", i1 false, i1 false}
!116 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 496, i32 1}
!117 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 497, i32 1}
!119 = !{ptr @iscsi_stat_login_attr_accepts, !118, !"iscsi_stat_login_attr_accepts", i1 false, i1 false}
!120 = !{ptr @.str.34, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 498, i32 1}
!122 = !{ptr @iscsi_stat_login_attr_other_fails, !121, !"iscsi_stat_login_attr_other_fails", i1 false, i1 false}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 499, i32 1}
!125 = !{ptr @iscsi_stat_login_attr_redirects, !124, !"iscsi_stat_login_attr_redirects", i1 false, i1 false}
!126 = !{ptr @.str.36, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 500, i32 1}
!128 = !{ptr @iscsi_stat_login_attr_authorize_fails, !127, !"iscsi_stat_login_attr_authorize_fails", i1 false, i1 false}
!129 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 501, i32 1}
!131 = !{ptr @iscsi_stat_login_attr_authenticate_fails, !130, !"iscsi_stat_login_attr_authenticate_fails", i1 false, i1 false}
!132 = !{ptr @.str.38, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 502, i32 1}
!134 = !{ptr @iscsi_stat_login_attr_negotiate_fails, !133, !"iscsi_stat_login_attr_negotiate_fails", i1 false, i1 false}
!135 = !{ptr @iscsi_stat_logout_stats_attrs, !136, !"iscsi_stat_logout_stats_attrs", i1 false, i1 false}
!136 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 565, i32 35}
!137 = !{ptr @iscsi_stat_logout_attr_inst, !138, !"iscsi_stat_logout_attr_inst", i1 false, i1 false}
!138 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 560, i32 1}
!139 = !{ptr @iscsi_stat_logout_attr_indx, !140, !"iscsi_stat_logout_attr_indx", i1 false, i1 false}
!140 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 561, i32 1}
!141 = !{ptr @.str.39, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 562, i32 1}
!143 = !{ptr @iscsi_stat_logout_attr_normal_logouts, !142, !"iscsi_stat_logout_attr_normal_logouts", i1 false, i1 false}
!144 = !{ptr @.str.40, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 563, i32 1}
!146 = !{ptr @iscsi_stat_logout_attr_abnormal_logouts, !145, !"iscsi_stat_logout_attr_abnormal_logouts", i1 false, i1 false}
!147 = !{ptr @iscsi_stat_sess_stats_attrs, !148, !"iscsi_stat_sess_stats_attrs", i1 false, i1 false}
!148 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 782, i32 35}
!149 = !{ptr @iscsi_stat_sess_attr_inst, !150, !"iscsi_stat_sess_attr_inst", i1 false, i1 false}
!150 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 772, i32 1}
!151 = !{ptr @.str.41, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 773, i32 1}
!153 = !{ptr @iscsi_stat_sess_attr_node, !152, !"iscsi_stat_sess_attr_node", i1 false, i1 false}
!154 = !{ptr @iscsi_stat_sess_attr_indx, !155, !"iscsi_stat_sess_attr_indx", i1 false, i1 false}
!155 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 774, i32 1}
!156 = !{ptr @.str.42, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 775, i32 1}
!158 = !{ptr @iscsi_stat_sess_attr_cmd_pdus, !157, !"iscsi_stat_sess_attr_cmd_pdus", i1 false, i1 false}
!159 = !{ptr @.str.43, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 654, i32 36}
!161 = !{ptr @.str.44, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 776, i32 1}
!163 = !{ptr @iscsi_stat_sess_attr_rsp_pdus, !162, !"iscsi_stat_sess_attr_rsp_pdus", i1 false, i1 false}
!164 = !{ptr @.str.45, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 777, i32 1}
!166 = !{ptr @iscsi_stat_sess_attr_txdata_octs, !165, !"iscsi_stat_sess_attr_txdata_octs", i1 false, i1 false}
!167 = !{ptr @.str.46, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 778, i32 1}
!169 = !{ptr @iscsi_stat_sess_attr_rxdata_octs, !168, !"iscsi_stat_sess_attr_rxdata_octs", i1 false, i1 false}
!170 = !{ptr @.str.47, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 779, i32 1}
!172 = !{ptr @iscsi_stat_sess_attr_conn_digest_errors, !171, !"iscsi_stat_sess_attr_conn_digest_errors", i1 false, i1 false}
!173 = !{ptr @.str.48, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/target/iscsi/iscsi_target_stat.c", i32 780, i32 1}
!175 = !{ptr @iscsi_stat_sess_attr_conn_timeout_errors, !174, !"iscsi_stat_sess_attr_conn_timeout_errors", i1 false, i1 false}
!176 = !{i32 1, !"wchar_size", i32 2}
!177 = !{i32 1, !"min_enum_size", i32 4}
!178 = !{i32 8, !"branch-target-enforcement", i32 0}
!179 = !{i32 8, !"sign-return-address", i32 0}
!180 = !{i32 8, !"sign-return-address-all", i32 0}
!181 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!182 = !{i32 7, !"uwtable", i32 1}
!183 = !{i32 7, !"frame-pointer", i32 2}
!184 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
