; ModuleID = '/llk/IR_all_yes/fs/dlm/config.c_pt.bc'
source_filename = "../fs/dlm/config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dlm_clusters = type { %struct.configfs_subsystem }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dlm_config_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.dlm_space = type { %struct.config_group, %struct.list_head, %struct.mutex, i32, ptr }
%struct.dlm_config_node = type { i32, i32, i32, i32 }
%struct.dlm_comm = type { %struct.config_item, i32, i32, i32, i32, i32, [3 x ptr] }
%struct.dlm_cluster = type { %struct.config_group, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8], ptr, ptr }
%struct.dlm_node = type { %struct.config_item, %struct.list_head, i32, i32, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }

@clusters_root = internal global { %struct.dlm_clusters, [52 x i8] } { %struct.dlm_clusters { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"dlm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @clusters_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex zeroinitializer } }, [52 x i8] zeroinitializer }, align 32
@dlm_config_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&clusters_root.subsys.su_mutex\00", [33 x i8] zeroinitializer }, align 32
@dlm_config_nodes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 889, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013dlm: zero members_count\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlm_config_nodes\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fs/dlm/config.c\00", [16 x i8] zeroinitializer }, align 32
@dlm_config_nodes._entry_ptr = internal global ptr @dlm_config_nodes._entry, section ".printk_index", align 4
@local_comm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dlm_config = dso_local global { %struct.dlm_config_info, [40 x i8] } { %struct.dlm_config_info { i32 21064, i32 4096, i32 1024, i32 5, i32 10, i32 5, i32 0, i32 1, i32 0, i32 0, i32 500, i32 0, i32 128, i32 0, [64 x i8] zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@clusters_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @clusters_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@clusters_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @make_cluster, ptr null, ptr null, ptr @drop_cluster }, [44 x i8] zeroinitializer }, align 32
@cluster_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @cluster_ops, ptr null, ptr @cluster_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spaces\00", [25 x i8] zeroinitializer }, align 32
@spaces_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @spaces_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"comms\00", [26 x i8] zeroinitializer }, align 32
@comms_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @comms_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@space_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@comm_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cluster_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @release_cluster, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@cluster_attrs = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @cluster_attr_tcp_port, ptr @cluster_attr_buffer_size, ptr @cluster_attr_rsbtbl_size, ptr @cluster_attr_recover_timer, ptr @cluster_attr_toss_secs, ptr @cluster_attr_scan_secs, ptr @cluster_attr_log_debug, ptr @cluster_attr_log_info, ptr @cluster_attr_protocol, ptr @cluster_attr_mark, ptr @cluster_attr_timewarn_cs, ptr @cluster_attr_waitwarn_us, ptr @cluster_attr_new_rsb_count, ptr @cluster_attr_recover_callbacks, ptr @cluster_attr_cluster_name, ptr null], [32 x i8] zeroinitializer }, align 32
@cluster_attr_tcp_port = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @cluster_tcp_port_show, ptr @cluster_tcp_port_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_buffer_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.8, ptr null, i16 420, ptr @cluster_buffer_size_show, ptr @cluster_buffer_size_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_rsbtbl_size = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.9, ptr null, i16 420, ptr @cluster_rsbtbl_size_show, ptr @cluster_rsbtbl_size_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_recover_timer = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.10, ptr null, i16 420, ptr @cluster_recover_timer_show, ptr @cluster_recover_timer_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_toss_secs = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.11, ptr null, i16 420, ptr @cluster_toss_secs_show, ptr @cluster_toss_secs_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_scan_secs = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.12, ptr null, i16 420, ptr @cluster_scan_secs_show, ptr @cluster_scan_secs_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_log_debug = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.13, ptr null, i16 420, ptr @cluster_log_debug_show, ptr @cluster_log_debug_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_log_info = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.14, ptr null, i16 420, ptr @cluster_log_info_show, ptr @cluster_log_info_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_protocol = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.15, ptr null, i16 420, ptr @cluster_protocol_show, ptr @cluster_protocol_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_mark = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.16, ptr null, i16 420, ptr @cluster_mark_show, ptr @cluster_mark_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_timewarn_cs = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 420, ptr @cluster_timewarn_cs_show, ptr @cluster_timewarn_cs_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_waitwarn_us = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.18, ptr null, i16 420, ptr @cluster_waitwarn_us_show, ptr @cluster_waitwarn_us_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_new_rsb_count = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 420, ptr @cluster_new_rsb_count_show, ptr @cluster_new_rsb_count_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_recover_callbacks = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 420, ptr @cluster_recover_callbacks_show, ptr @cluster_recover_callbacks_store }, [44 x i8] zeroinitializer }, align 32
@cluster_attr_cluster_name = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @cluster_cluster_name_show, ptr @cluster_cluster_name_store }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcp_port\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@dlm_allow_conn = external dso_local local_unnamed_addr global i32, align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"buffer_size\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rsbtbl_size\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"recover_timer\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"toss_secs\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scan_secs\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"log_debug\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"log_info\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"protocol\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mark\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"timewarn_cs\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"waitwarn_us\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"new_rsb_count\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"recover_callbacks\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cluster_name\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@spaces_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @make_space, ptr null, ptr null, ptr @drop_space }, [44 x i8] zeroinitializer }, align 32
@space_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @space_ops, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nodes\00", [26 x i8] zeroinitializer }, align 32
@nodes_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @nodes_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@make_space.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sp->members_lock\00", [46 x i8] zeroinitializer }, align 32
@space_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @release_space, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@nodes_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @make_node, ptr null, ptr null, ptr null, ptr @drop_node }, [44 x i8] zeroinitializer }, align 32
@node_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @node_ops, ptr null, ptr @node_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@node_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @release_node, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@node_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @node_attr_nodeid, ptr @node_attr_weight, ptr null], [20 x i8] zeroinitializer }, align 32
@node_attr_nodeid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 420, ptr @node_nodeid_show, ptr @node_nodeid_store }, [44 x i8] zeroinitializer }, align 32
@node_attr_weight = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.27, ptr null, i16 420, ptr @node_weight_show, ptr @node_weight_store }, [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nodeid\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"weight\00", [25 x i8] zeroinitializer }, align 32
@comms_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @make_comm, ptr null, ptr null, ptr null, ptr @drop_comm }, [44 x i8] zeroinitializer }, align 32
@comm_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @comm_ops, ptr null, ptr @comm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dlm_comm_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@comm_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @release_comm, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@comm_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @comm_attr_nodeid, ptr @comm_attr_local, ptr @comm_attr_addr, ptr @comm_attr_addr_list, ptr @comm_attr_mark, ptr null], [40 x i8] zeroinitializer }, align 32
@comm_attr_nodeid = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 420, ptr @comm_nodeid_show, ptr @comm_nodeid_store }, [44 x i8] zeroinitializer }, align 32
@comm_attr_local = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.28, ptr null, i16 420, ptr @comm_local_show, ptr @comm_local_store }, [44 x i8] zeroinitializer }, align 32
@comm_attr_addr = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.29, ptr null, i16 128, ptr null, ptr @comm_addr_store }, [44 x i8] zeroinitializer }, align 32
@comm_attr_addr_list = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.30, ptr null, i16 292, ptr @comm_addr_list_show, ptr null }, [44 x i8] zeroinitializer }, align 32
@comm_attr_mark = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.16, ptr null, i16 420, ptr @comm_mark_show, ptr @comm_mark_store }, [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"addr_list\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AF_INET\09%pI4\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AF_INET6\09%pI6\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<UNKNOWN>\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"clusters_root\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 598, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 612, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 889, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"local_comm\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 38, i32 25 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"dlm_config\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 963, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"clusters_type\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 343, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"clusters_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 307, i32 41 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"cluster_type\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 348, i32 38 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 420, i32 46 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"spaces_type\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 354, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 421, i32 46 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"comms_type\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 364, i32 38 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"space_list\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 36, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"comm_list\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 37, i32 29 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"cluster_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 312, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"cluster_attrs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 232, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [22 x i8] c"cluster_attr_tcp_port\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [25 x i8] c"cluster_attr_buffer_size\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"cluster_attr_rsbtbl_size\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"cluster_attr_recover_timer\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [23 x i8] c"cluster_attr_toss_secs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"cluster_attr_scan_secs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [23 x i8] c"cluster_attr_log_debug\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"cluster_attr_log_info\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [22 x i8] c"cluster_attr_protocol\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [18 x i8] c"cluster_attr_mark\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"cluster_attr_timewarn_cs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [25 x i8] c"cluster_attr_waitwarn_us\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"cluster_attr_new_rsb_count\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [31 x i8] c"cluster_attr_recover_callbacks\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [26 x i8] c"cluster_attr_cluster_name\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 217, i32 1 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 218, i32 1 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 219, i32 1 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 220, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 221, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 222, i32 1 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 223, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 224, i32 1 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 225, i32 1 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 226, i32 1 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 227, i32 1 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 228, i32 1 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 229, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 230, i32 1 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 129, i32 1 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 115, i32 22 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"spaces_ops\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 316, i32 41 }
@___asan_gen_.193 = private unnamed_addr constant [11 x i8] c"space_type\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 359, i32 38 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 487, i32 46 }
@___asan_gen_.199 = private unnamed_addr constant [11 x i8] c"nodes_type\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 375, i32 38 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 491, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [10 x i8] c"space_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 321, i32 40 }
@___asan_gen_.211 = private unnamed_addr constant [10 x i8] c"nodes_ops\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 334, i32 41 }
@___asan_gen_.214 = private unnamed_addr constant [10 x i8] c"node_type\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 380, i32 38 }
@___asan_gen_.217 = private unnamed_addr constant [9 x i8] c"node_ops\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 339, i32 40 }
@___asan_gen_.220 = private unnamed_addr constant [11 x i8] c"node_attrs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 812, i32 35 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"node_attr_nodeid\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"node_attr_weight\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 809, i32 1 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 777, i32 22 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 810, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant [10 x i8] c"comms_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 325, i32 41 }
@___asan_gen_.241 = private unnamed_addr constant [10 x i8] c"comm_type\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 369, i32 38 }
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"dlm_comm_count\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 39, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant [9 x i8] c"comm_ops\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 330, i32 40 }
@___asan_gen_.250 = private unnamed_addr constant [11 x i8] c"comm_attrs\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 766, i32 35 }
@___asan_gen_.253 = private unnamed_addr constant [17 x i8] c"comm_attr_nodeid\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 760, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"comm_attr_local\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [15 x i8] c"comm_attr_addr\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c"comm_attr_addr_list\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [15 x i8] c"comm_attr_mark\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 762, i32 1 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 761, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 763, i32 1 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 764, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 711, i32 22 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 715, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [19 x i8] c"../fs/dlm/config.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 718, i32 30 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @dlm_config_nodes._entry, ptr @dlm_config_nodes._entry_ptr, ptr @clusters_root, ptr @dlm_config_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @local_comm, ptr @dlm_config, ptr @clusters_type, ptr @clusters_ops, ptr @cluster_type, ptr @.str.4, ptr @spaces_type, ptr @.str.5, ptr @comms_type, ptr @space_list, ptr @comm_list, ptr @cluster_ops, ptr @cluster_attrs, ptr @cluster_attr_tcp_port, ptr @cluster_attr_buffer_size, ptr @cluster_attr_rsbtbl_size, ptr @cluster_attr_recover_timer, ptr @cluster_attr_toss_secs, ptr @cluster_attr_scan_secs, ptr @cluster_attr_log_debug, ptr @cluster_attr_log_info, ptr @cluster_attr_protocol, ptr @cluster_attr_mark, ptr @cluster_attr_timewarn_cs, ptr @cluster_attr_waitwarn_us, ptr @cluster_attr_new_rsb_count, ptr @cluster_attr_recover_callbacks, ptr @cluster_attr_cluster_name, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @spaces_ops, ptr @space_type, ptr @.str.23, ptr @nodes_type, ptr @make_space.__key, ptr @.str.24, ptr @space_ops, ptr @nodes_ops, ptr @node_type, ptr @node_ops, ptr @node_attrs, ptr @node_attr_nodeid, ptr @node_attr_weight, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @comms_ops, ptr @comm_type, ptr @dlm_comm_count, ptr @comm_ops, ptr @comm_attrs, ptr @comm_attr_nodeid, ptr @comm_attr_local, ptr @comm_attr_addr, ptr @comm_attr_addr_list, ptr @comm_attr_mark, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusters_root to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_config_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_config_nodes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_comm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_config to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusters_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusters_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaces_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comms_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @space_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attrs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_tcp_port to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_buffer_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_rsbtbl_size to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_recover_timer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_toss_secs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_scan_secs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_log_debug to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_log_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_protocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_mark to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_timewarn_cs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_waitwarn_us to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_new_rsb_count to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_recover_callbacks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cluster_attr_cluster_name to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spaces_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @space_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodes_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @make_space.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @space_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodes_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_attr_nodeid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_attr_weight to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comms_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_comm_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_attr_nodeid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_attr_local to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_attr_addr to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_attr_addr_list to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comm_attr_mark to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_config_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef nonnull @clusters_root) #14
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.dlm_clusters, ptr @clusters_root, i32 0, i32 0, i32 1), ptr noundef nonnull @.str, ptr noundef nonnull @dlm_config_init.__key) #14
  %call = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @clusters_root) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_config_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @clusters_root) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_config_nodes(ptr noundef %lsname, ptr nocapture noundef writeonly %nodes_out, ptr nocapture noundef writeonly %count_out) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @space_list, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_space.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

get_space.exit:                                   ; preds = %entry
  %cg_subsys.i = getelementptr inbounds %struct.config_group, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %cg_subsys.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cg_subsys.i, align 4
  %su_mutex.i = getelementptr inbounds %struct.configfs_subsystem, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %su_mutex.i, i32 noundef 0) #14
  %3 = load ptr, ptr @space_list, align 4
  %call.i = tail call ptr @config_group_find_item(ptr noundef %3, ptr noundef %lsname) #14
  %4 = load ptr, ptr @space_list, align 4
  %cg_subsys1.i = getelementptr inbounds %struct.config_group, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %cg_subsys1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cg_subsys1.i, align 4
  %su_mutex2.i = getelementptr inbounds %struct.configfs_subsystem, ptr %6, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %su_mutex2.i) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %get_space.exit.cleanup_crit_edge, label %if.end

get_space.exit.cleanup_crit_edge:                 ; preds = %get_space.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %get_space.exit
  %members_lock = getelementptr inbounds %struct.dlm_space, ptr %call.i, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %members_lock, i32 noundef 0) #14
  %members_count = getelementptr inbounds %struct.dlm_space, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %members_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %members_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool1.not = icmp eq i32 %8, 0
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #17
  br label %out

if.end4:                                          ; preds = %if.end
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 16) #14
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end4.out_crit_edge, label %if.end7.i.i, !prof !152

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end7.i.i:                                      ; preds = %if.end4
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3392) #18
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.out_crit_edge, label %if.end9

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %if.end7.i.i
  %members = getelementptr inbounds %struct.dlm_space, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn57 = load ptr, ptr %members, align 4
  %cmp.not58 = icmp eq ptr %.pn57, %members
  br i1 %cmp.not58, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end9.for.body_crit_edge
  %.pn60 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn57, %if.end9.for.body_crit_edge ]
  %node.059 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %call8.i.i, %if.end9.for.body_crit_edge ]
  %nodeid = getelementptr i8, ptr %.pn60, i32 8
  %13 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nodeid, align 4
  %15 = ptrtoint ptr %node.059 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %node.059, align 4
  %weight = getelementptr i8, ptr %.pn60, i32 12
  %16 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %weight, align 4
  %weight13 = getelementptr inbounds %struct.dlm_config_node, ptr %node.059, i32 0, i32 1
  %18 = ptrtoint ptr %weight13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %weight13, align 4
  %new = getelementptr i8, ptr %.pn60, i32 16
  %19 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %new, align 4
  %new14 = getelementptr inbounds %struct.dlm_config_node, ptr %node.059, i32 0, i32 2
  %21 = ptrtoint ptr %new14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %new14, align 4
  %comm_seq = getelementptr i8, ptr %.pn60, i32 20
  %22 = ptrtoint ptr %comm_seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %comm_seq, align 4
  %comm_seq15 = getelementptr inbounds %struct.dlm_config_node, ptr %node.059, i32 0, i32 3
  %24 = ptrtoint ptr %comm_seq15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %comm_seq15, align 4
  %incdec.ptr = getelementptr %struct.dlm_config_node, ptr %node.059, i32 1
  store i32 0, ptr %new, align 4
  %25 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, %members
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end9.for.end_crit_edge
  %26 = ptrtoint ptr %count_out to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %8, ptr %count_out, align 4
  %27 = ptrtoint ptr %nodes_out to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i.i, ptr %nodes_out, align 4
  br label %out

out:                                              ; preds = %for.end, %if.end7.i.i.out_crit_edge, %if.end4.out_crit_edge, %if.then2
  %rv.0 = phi i32 [ 0, %for.end ], [ -22, %if.then2 ], [ -12, %if.end7.i.i.out_crit_edge ], [ -12, %if.end4.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %members_lock) #14
  tail call void @config_item_put(ptr noundef nonnull %call.i) #14
  br label %cleanup

cleanup:                                          ; preds = %out, %get_space.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rv.0, %out ], [ -17, %get_space.exit.cleanup_crit_edge ], [ -17, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_comm_seq(i32 noundef %nodeid, ptr nocapture noundef writeonly %seq) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @comm_list, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.dlm_clusters, ptr @clusters_root, i32 0, i32 0, i32 1), i32 noundef 0) #14
  %1 = load ptr, ptr @comm_list, align 4
  %cg_children.i = getelementptr inbounds %struct.config_group, ptr %1, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %cg_children.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %cg_children.i
  br i1 %cmp.not.i, label %get_comm.exit.thread6, label %for.body.i

get_comm.exit.thread6:                            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dlm_clusters, ptr @clusters_root, i32 0, i32 0, i32 1)) #14
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %nodeid2.i = getelementptr i8, ptr %.pn.i, i32 28
  %3 = ptrtoint ptr %nodeid2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nodeid2.i, align 4
  %cmp3.not.i = icmp eq i32 %4, %nodeid
  br i1 %cmp3.not.i, label %get_comm.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

get_comm.exit:                                    ; preds = %for.body.i
  %i.0.le.i = getelementptr i8, ptr %.pn.i, i32 -28
  %call6.i = tail call ptr @config_item_get(ptr noundef %i.0.le.i) #14
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dlm_clusters, ptr @clusters_root, i32 0, i32 0, i32 1)) #14
  %tobool.not = icmp eq ptr %i.0.le.i, null
  br i1 %tobool.not, label %get_comm.exit.cleanup_crit_edge, label %if.end

get_comm.exit.cleanup_crit_edge:                  ; preds = %get_comm.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %get_comm.exit
  call void @__sanitizer_cov_trace_pc() #16
  %seq1 = getelementptr i8, ptr %.pn.i, i32 24
  %5 = ptrtoint ptr %seq1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %seq1, align 4
  %7 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %seq, align 4
  tail call void @config_item_put(ptr noundef nonnull %i.0.le.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %get_comm.exit.cleanup_crit_edge, %get_comm.exit.thread6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -17, %get_comm.exit.cleanup_crit_edge ], [ -17, %get_comm.exit.thread6 ], [ -17, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dlm_our_nodeid() local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @local_comm, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %nodeid = getelementptr inbounds %struct.dlm_comm, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nodeid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dlm_our_addr(ptr nocapture noundef writeonly %addr, i32 noundef %num) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @local_comm, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %add = add i32 %num, 1
  %addr_count = getelementptr inbounds %struct.dlm_comm, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %addr_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp = icmp sgt i32 %add, %2
  br i1 %cmp, label %if.end.return_crit_edge, label %if.end2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx = getelementptr %struct.dlm_comm, ptr %0, i32 0, i32 6, i32 %num
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %5 = call ptr @memcpy(ptr %addr, ptr %4, i32 128)
  br label %return

return:                                           ; preds = %if.end2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end2 ], [ -1, %entry.return_crit_edge ], [ -1, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @make_cluster(ptr nocapture noundef readnone %g, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 208) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 80) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i51 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 80) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call7.i.i50, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call7.i.i51, null
  %or.cond49 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond49, label %fail, label %if.end

if.end:                                           ; preds = %entry
  %sps6 = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %sps6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i50, ptr %sps6, align 8
  %cms7 = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 17
  %4 = ptrtoint ptr %cms7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i51, ptr %cms7, align 4
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @cluster_type) #14
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i50, ptr noundef nonnull @.str.4, ptr noundef nonnull @spaces_type) #14
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i51, ptr noundef nonnull @.str.5, ptr noundef nonnull @comms_type) #14
  %group_entry.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i50, i32 0, i32 4
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %6, ptr noundef %default_groups.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.configfs_add_default_group.exit_crit_edge

if.end.configfs_add_default_group.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i50, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %group_entry.i, ptr %6, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end.configfs_add_default_group.exit_crit_edge
  %group_entry.i52 = getelementptr inbounds %struct.config_group, ptr %call7.i.i51, i32 0, i32 4
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i55 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i52, ptr noundef %12, ptr noundef %default_groups.i) #14
  br i1 %call.i.i.i55, label %if.end.i.i.i57, label %configfs_add_default_group.exit.configfs_add_default_group.exit58_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit58_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %configfs_add_default_group.exit58

if.end.i.i.i57:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %group_entry.i52, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %group_entry.i52 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %default_groups.i, ptr %group_entry.i52, align 8
  %prev3.i.i.i56 = getelementptr inbounds %struct.config_group, ptr %call7.i.i51, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i56, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %group_entry.i52, ptr %12, align 4
  br label %configfs_add_default_group.exit58

configfs_add_default_group.exit58:                ; preds = %if.end.i.i.i57, %configfs_add_default_group.exit.configfs_add_default_group.exit58_crit_edge
  %17 = load i32, ptr @dlm_config, align 4
  %cl_tcp_port = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %cl_tcp_port to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %cl_tcp_port, align 8
  %19 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 1), align 4
  %cl_buffer_size = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %cl_buffer_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cl_buffer_size, align 4
  %21 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 2), align 4
  %cl_rsbtbl_size = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %cl_rsbtbl_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %cl_rsbtbl_size, align 8
  %23 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3), align 4
  %cl_recover_timer = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %cl_recover_timer to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %cl_recover_timer, align 4
  %25 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 4), align 4
  %cl_toss_secs = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %cl_toss_secs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cl_toss_secs, align 8
  %27 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 5), align 4
  %cl_scan_secs = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %cl_scan_secs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cl_scan_secs, align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  %cl_log_debug = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %cl_log_debug to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %cl_log_debug, align 8
  %31 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  %cl_log_info = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %cl_log_info to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cl_log_info, align 4
  %33 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 8), align 4
  %cl_protocol = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %cl_protocol to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %cl_protocol, align 8
  %35 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 10), align 4
  %cl_timewarn_cs = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 11
  %36 = ptrtoint ptr %cl_timewarn_cs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %cl_timewarn_cs, align 8
  %37 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 11), align 4
  %cl_waitwarn_us = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 12
  %38 = ptrtoint ptr %cl_waitwarn_us to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %cl_waitwarn_us, align 4
  %39 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 12), align 4
  %cl_new_rsb_count = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 13
  %40 = ptrtoint ptr %cl_new_rsb_count to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %cl_new_rsb_count, align 8
  %41 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 13), align 4
  %cl_recover_callbacks = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 14
  %42 = ptrtoint ptr %cl_recover_callbacks to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %cl_recover_callbacks, align 4
  %cl_cluster_name = getelementptr inbounds %struct.dlm_cluster, ptr %call7.i.i, i32 0, i32 15
  %43 = call ptr @memcpy(ptr %cl_cluster_name, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 14), i32 64)
  store ptr %call7.i.i50, ptr @space_list, align 4
  store ptr %call7.i.i51, ptr @comm_list, align 4
  br label %cleanup

fail:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %call7.i.i) #14
  tail call void @kfree(ptr noundef %call7.i.i50) #14
  tail call void @kfree(ptr noundef %call7.i.i51) #14
  br label %cleanup

cleanup:                                          ; preds = %fail, %configfs_add_default_group.exit58
  %retval.0 = phi ptr [ %call7.i.i, %configfs_add_default_group.exit58 ], [ inttoptr (i32 -12 to ptr), %fail ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drop_cluster(ptr nocapture noundef readnone %g, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @configfs_remove_default_groups(ptr noundef %i) #14
  store ptr null, ptr @space_list, align 4
  store ptr null, ptr @comm_list, align 4
  tail call void @config_item_put(ptr noundef %i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_cluster(ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %sps = getelementptr inbounds %struct.dlm_cluster, ptr %i, i32 0, i32 16
  %0 = ptrtoint ptr %sps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sps, align 4
  tail call void @kfree(ptr noundef %1) #14
  %cms = getelementptr inbounds %struct.dlm_cluster, ptr %i, i32 0, i32 17
  %2 = ptrtoint ptr %cms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cms, align 4
  tail call void @kfree(ptr noundef %3) #14
  tail call void @kfree(ptr noundef %i) #14
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_tcp_port_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_tcp_port = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 1
  %0 = ptrtoint ptr %cl_tcp_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_tcp_port, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_tcp_port_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_tcp_port = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i3 = icmp eq i32 %2, 0
  br i1 %tobool.not.i3, label %if.end3.i.cluster_set.exit_crit_edge, label %if.end.i4

if.end3.i.cluster_set.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i4:                                        ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dlm_allow_conn to i32))
  %3 = load i32, ptr @dlm_allow_conn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not.i = icmp eq i32 %3, 0
  br i1 %tobool1.not.i, label %if.end10.i, label %if.end.i4.cluster_set.exit_crit_edge

if.end.i4.cluster_set.exit_crit_edge:             ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end10.i:                                       ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %cl_tcp_port to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %cl_tcp_port, align 4
  store i32 %2, ptr @dlm_config, align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end10.i, %if.end.i4.cluster_set.exit_crit_edge, %if.end3.i.cluster_set.exit_crit_edge, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end10.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ], [ -16, %if.end.i4.cluster_set.exit_crit_edge ], [ -22, %if.end3.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_buffer_size_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_buffer_size = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %cl_buffer_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_buffer_size, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_buffer_size_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_buffer_size = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %2)
  %cmp.i = icmp ugt i32 %2, 4095
  br i1 %cmp.i, label %if.end10.i, label %if.end3.i.cluster_set.exit_crit_edge

if.end3.i.cluster_set.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %cl_buffer_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_buffer_size, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 1), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end10.i, %if.end3.i.cluster_set.exit_crit_edge, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end10.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ], [ -22, %if.end3.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_rsbtbl_size_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_rsbtbl_size = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %cl_rsbtbl_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_rsbtbl_size, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_rsbtbl_size_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_rsbtbl_size = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i3.not = icmp eq i32 %2, 0
  br i1 %tobool.not.i3.not, label %if.end3.i.cluster_set.exit_crit_edge, label %if.end10.i

if.end3.i.cluster_set.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %cl_rsbtbl_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_rsbtbl_size, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 2), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end10.i, %if.end3.i.cluster_set.exit_crit_edge, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end10.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ], [ -22, %if.end3.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_recover_timer_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_recover_timer = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %cl_recover_timer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_recover_timer, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_recover_timer_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_recover_timer = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i3.not = icmp eq i32 %2, 0
  br i1 %tobool.not.i3.not, label %if.end3.i.cluster_set.exit_crit_edge, label %if.end10.i

if.end3.i.cluster_set.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %cl_recover_timer to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_recover_timer, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 3), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end10.i, %if.end3.i.cluster_set.exit_crit_edge, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end10.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ], [ -22, %if.end3.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_toss_secs_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_toss_secs = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %cl_toss_secs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_toss_secs, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_toss_secs_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_toss_secs = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i3.not = icmp eq i32 %2, 0
  br i1 %tobool.not.i3.not, label %if.end3.i.cluster_set.exit_crit_edge, label %if.end10.i

if.end3.i.cluster_set.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %cl_toss_secs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_toss_secs, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 4), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end10.i, %if.end3.i.cluster_set.exit_crit_edge, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end10.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ], [ -22, %if.end3.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_scan_secs_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_scan_secs = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 6
  %0 = ptrtoint ptr %cl_scan_secs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_scan_secs, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_scan_secs_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_scan_secs = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i3.not = icmp eq i32 %2, 0
  br i1 %tobool.not.i3.not, label %if.end3.i.cluster_set.exit_crit_edge, label %if.end10.i

if.end3.i.cluster_set.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %cl_scan_secs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_scan_secs, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 5), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end10.i, %if.end3.i.cluster_set.exit_crit_edge, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end10.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ], [ -22, %if.end3.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_log_debug_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_log_debug = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 7
  %0 = ptrtoint ptr %cl_log_debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_log_debug, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_log_debug_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_log_debug = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %cl_log_debug to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_log_debug, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 6), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end3.i, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_log_info_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_log_info = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 8
  %0 = ptrtoint ptr %cl_log_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_log_info, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_log_info_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_log_info = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %cl_log_info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_log_info, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 7), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end3.i, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_protocol_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_protocol = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 9
  %0 = ptrtoint ptr %cl_protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_protocol, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_protocol_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_protocol = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch.i = icmp ult i32 %2, 2
  br i1 %switch.i, label %sw.epilog.i, label %if.end3.i.cluster_set.exit_crit_edge

if.end3.i.cluster_set.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

sw.epilog.i:                                      ; preds = %if.end3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dlm_allow_conn to i32))
  %3 = load i32, ptr @dlm_allow_conn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i3 = icmp eq i32 %3, 0
  br i1 %tobool.not.i3, label %if.end10.i, label %sw.epilog.i.cluster_set.exit_crit_edge

sw.epilog.i.cluster_set.exit_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end10.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %cl_protocol to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %cl_protocol, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 8), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end10.i, %sw.epilog.i.cluster_set.exit_crit_edge, %if.end3.i.cluster_set.exit_crit_edge, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end10.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ], [ -16, %sw.epilog.i.cluster_set.exit_crit_edge ], [ -22, %if.end3.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_mark_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_mark = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 10
  %0 = ptrtoint ptr %cl_mark to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_mark, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_mark_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_mark = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %cl_mark to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_mark, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 9), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end3.i, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_timewarn_cs_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_timewarn_cs = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 11
  %0 = ptrtoint ptr %cl_timewarn_cs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_timewarn_cs, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_timewarn_cs_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_timewarn_cs = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i3.not = icmp eq i32 %2, 0
  br i1 %tobool.not.i3.not, label %if.end3.i.cluster_set.exit_crit_edge, label %if.end10.i

if.end3.i.cluster_set.exit_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end10.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %cl_timewarn_cs to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_timewarn_cs, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 10), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end10.i, %if.end3.i.cluster_set.exit_crit_edge, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end10.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ], [ -22, %if.end3.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_waitwarn_us_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_waitwarn_us = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 12
  %0 = ptrtoint ptr %cl_waitwarn_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_waitwarn_us, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_waitwarn_us_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_waitwarn_us = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %cl_waitwarn_us to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_waitwarn_us, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 11), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end3.i, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_new_rsb_count_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_new_rsb_count = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 13
  %0 = ptrtoint ptr %cl_new_rsb_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_new_rsb_count, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_new_rsb_count_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_new_rsb_count = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %cl_new_rsb_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_new_rsb_count, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 12), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end3.i, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_recover_callbacks_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_recover_callbacks = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 14
  %0 = ptrtoint ptr %cl_recover_callbacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_recover_callbacks, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_recover_callbacks_store(ptr nocapture noundef writeonly %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %x.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_recover_callbacks = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x.i) #14
  %0 = ptrtoint ptr %x.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %x.i, align 4, !annotation !153
  %call.i = tail call zeroext i1 @capable(i32 noundef 21) #14
  br i1 %call.i, label %if.end.i, label %entry.cluster_set.exit_crit_edge

entry.cluster_set.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end.i:                                         ; preds = %entry
  %call1.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %x.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.cluster_set.exit_crit_edge

if.end.i.cluster_set.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cluster_set.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %x.i, align 4
  %3 = ptrtoint ptr %cl_recover_callbacks to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %cl_recover_callbacks, align 4
  store i32 %2, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 13), align 4
  br label %cluster_set.exit

cluster_set.exit:                                 ; preds = %if.end3.i, %if.end.i.cluster_set.exit_crit_edge, %entry.cluster_set.exit_crit_edge
  %retval.0.i = phi i32 [ %len, %if.end3.i ], [ -1, %entry.cluster_set.exit_crit_edge ], [ %call1.i, %if.end.i.cluster_set.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x.i) #14
  ret i32 %retval.0.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_cluster_name_show(ptr noundef %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_cluster_name = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 15
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %cl_cluster_name)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cluster_cluster_name_store(ptr noundef %item, ptr noundef %buf, i32 noundef returned %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @strlcpy(ptr noundef getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 14), ptr noundef %buf, i32 noundef 64) #14
  %cl_cluster_name = getelementptr inbounds %struct.dlm_cluster, ptr %item, i32 0, i32 15
  %call2 = tail call i32 @strlcpy(ptr noundef %cl_cluster_name, ptr noundef %buf, i32 noundef 64) #14
  ret i32 %len
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @make_space(ptr nocapture noundef readnone %g, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 188) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3392, i32 noundef 80) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i.i21, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %fail, label %if.end

if.end:                                           ; preds = %entry
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @space_type) #14
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i21, ptr noundef nonnull @.str.23, ptr noundef nonnull @nodes_type) #14
  %group_entry.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i21, i32 0, i32 4
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %3, ptr noundef %default_groups.i) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.configfs_add_default_group.exit_crit_edge

if.end.configfs_add_default_group.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i21, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %group_entry.i, ptr %3, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end.configfs_add_default_group.exit_crit_edge
  %members = getelementptr inbounds %struct.dlm_space, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %members to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %members, ptr %members, align 8
  %prev.i = getelementptr inbounds %struct.dlm_space, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %members, ptr %prev.i, align 4
  %members_lock = getelementptr inbounds %struct.dlm_space, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %members_lock, ptr noundef nonnull @.str.24, ptr noundef nonnull @make_space.__key) #14
  %members_count = getelementptr inbounds %struct.dlm_space, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %members_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %members_count, align 4
  %nds5 = getelementptr inbounds %struct.dlm_space, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %nds5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i21, ptr %nds5, align 8
  br label %cleanup

fail:                                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %call7.i.i) #14
  tail call void @kfree(ptr noundef %call7.i.i21) #14
  br label %cleanup

cleanup:                                          ; preds = %fail, %configfs_add_default_group.exit
  %retval.0 = phi ptr [ %call7.i.i, %configfs_add_default_group.exit ], [ inttoptr (i32 -12 to ptr), %fail ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drop_space(ptr nocapture noundef readnone %g, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @configfs_remove_default_groups(ptr noundef %i) #14
  tail call void @config_item_put(ptr noundef %i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_space(ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nds = getelementptr inbounds %struct.dlm_space, ptr %i, i32 0, i32 4
  %0 = ptrtoint ptr %nds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nds, align 4
  tail call void @kfree(ptr noundef %1) #14
  tail call void @kfree(ptr noundef %i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @make_node(ptr nocapture noundef readonly %g, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %g, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 76) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @node_type) #14
  %nodeid = getelementptr inbounds %struct.dlm_node, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %nodeid to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %nodeid, align 4
  %weight = getelementptr inbounds %struct.dlm_node, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %weight to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %weight, align 8
  %new = getelementptr inbounds %struct.dlm_node, ptr %call7.i.i, i32 0, i32 4
  %5 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %new, align 4
  %members_lock = getelementptr inbounds %struct.dlm_space, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %members_lock, i32 noundef 0) #14
  %list = getelementptr inbounds %struct.dlm_node, ptr %call7.i.i, i32 0, i32 1
  %members = getelementptr inbounds %struct.dlm_space, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %members, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %members, ptr noundef %7) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.dlm_node, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %members, ptr %prev3.i.i, align 8
  %11 = ptrtoint ptr %members to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %members, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %members_count = getelementptr inbounds %struct.dlm_space, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %members_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %members_count, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %members_count, align 4
  tail call void @mutex_unlock(ptr noundef %members_lock) #14
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %list_add.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drop_node(ptr nocapture noundef readonly %g, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr inbounds %struct.config_item, ptr %g, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %members_lock = getelementptr inbounds %struct.dlm_space, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %members_lock, i32 noundef 0) #14
  %list = getelementptr inbounds %struct.dlm_node, ptr %i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.dlm_node, ptr %i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.dlm_node, ptr %i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %members_count = getelementptr inbounds %struct.dlm_space, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %members_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %members_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %members_count, align 4
  tail call void @mutex_unlock(ptr noundef %members_lock) #14
  tail call void @config_item_put(ptr noundef %i) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_node(ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %i) #14
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_nodeid_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nodeid = getelementptr inbounds %struct.dlm_node, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodeid, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_nodeid_store(ptr noundef %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nodeid = getelementptr inbounds %struct.dlm_node, ptr %item, i32 0, i32 2
  %call1 = tail call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef %nodeid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodeid, align 4
  %2 = load ptr, ptr @comm_list, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %if.end.dlm_comm_seq.exit_crit_edge, label %if.end.i.i

if.end.dlm_comm_seq.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_comm_seq.exit

if.end.i.i:                                       ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.dlm_clusters, ptr @clusters_root, i32 0, i32 0, i32 1), i32 noundef 0) #14
  %3 = load ptr, ptr @comm_list, align 4
  %cg_children.i.i = getelementptr inbounds %struct.config_group, ptr %3, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i = phi ptr [ %cg_children.i.i, %if.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %cg_children.i.i
  br i1 %cmp.not.i.i, label %get_comm.exit.thread6.i, label %for.body.i.i

get_comm.exit.thread6.i:                          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dlm_clusters, ptr @clusters_root, i32 0, i32 0, i32 1)) #14
  br label %dlm_comm_seq.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %nodeid2.i.i = getelementptr i8, ptr %.pn.i.i, i32 28
  %5 = ptrtoint ptr %nodeid2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nodeid2.i.i, align 4
  %cmp3.not.i.i = icmp eq i32 %6, %1
  br i1 %cmp3.not.i.i, label %get_comm.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

get_comm.exit.i:                                  ; preds = %for.body.i.i
  %i.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -28
  %call6.i.i = tail call ptr @config_item_get(ptr noundef %i.0.le.i.i) #14
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.dlm_clusters, ptr @clusters_root, i32 0, i32 0, i32 1)) #14
  %tobool.not.i = icmp eq ptr %i.0.le.i.i, null
  br i1 %tobool.not.i, label %get_comm.exit.i.dlm_comm_seq.exit_crit_edge, label %if.end.i

get_comm.exit.i.dlm_comm_seq.exit_crit_edge:      ; preds = %get_comm.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dlm_comm_seq.exit

if.end.i:                                         ; preds = %get_comm.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %seq1.i = getelementptr i8, ptr %.pn.i.i, i32 24
  %7 = ptrtoint ptr %seq1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq1.i, align 4
  tail call void @config_item_put(ptr noundef nonnull %i.0.le.i.i) #14
  br label %dlm_comm_seq.exit

dlm_comm_seq.exit:                                ; preds = %if.end.i, %get_comm.exit.i.dlm_comm_seq.exit_crit_edge, %get_comm.exit.thread6.i, %if.end.dlm_comm_seq.exit_crit_edge
  %seq.0 = phi i32 [ 0, %if.end.dlm_comm_seq.exit_crit_edge ], [ 0, %get_comm.exit.thread6.i ], [ 0, %get_comm.exit.i.dlm_comm_seq.exit_crit_edge ], [ %8, %if.end.i ]
  %comm_seq = getelementptr inbounds %struct.dlm_node, ptr %item, i32 0, i32 5
  %9 = ptrtoint ptr %comm_seq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %seq.0, ptr %comm_seq, align 4
  br label %cleanup

cleanup:                                          ; preds = %dlm_comm_seq.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %dlm_comm_seq.exit ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_weight_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %weight = getelementptr inbounds %struct.dlm_node, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %weight, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_weight_store(ptr noundef %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %weight = getelementptr inbounds %struct.dlm_node, ptr %item, i32 0, i32 3
  %call1 = tail call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef %weight) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %len.call1 = select i1 %tobool.not, i32 %len, i32 %call1
  ret i32 %len.call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_remove_default_groups(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @make_comm(ptr nocapture noundef readnone %g, ptr noundef %name) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3392, i32 noundef 84) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @config_item_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @comm_type) #14
  %1 = load i32, ptr @dlm_comm_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @dlm_comm_count, align 4
  %seq = getelementptr inbounds %struct.dlm_comm, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  store i32 2, ptr @dlm_comm_count, align 4
  %3 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %inc, ptr %seq, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %nodeid = getelementptr inbounds %struct.dlm_comm, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %nodeid to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %nodeid, align 8
  %local = getelementptr inbounds %struct.dlm_comm, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %local to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %local, align 4
  %addr_count = getelementptr inbounds %struct.dlm_comm, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %addr_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %addr_count, align 8
  %mark = getelementptr inbounds %struct.dlm_comm, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mark, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end7 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drop_comm(ptr nocapture noundef readnone %g, ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @local_comm, align 4
  %cmp = icmp eq ptr %0, %i
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr @local_comm, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nodeid = getelementptr inbounds %struct.dlm_comm, ptr %i, i32 0, i32 2
  %1 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nodeid, align 4
  %call1 = tail call i32 @dlm_midcomms_close(i32 noundef %2) #14
  %addr_count = getelementptr inbounds %struct.dlm_comm, ptr %i, i32 0, i32 4
  %3 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addr_count, align 4
  %dec8 = add i32 %4, -1
  store i32 %dec8, ptr %addr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not9 = icmp eq i32 %4, 0
  br i1 %tobool.not9, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end.while.body_crit_edge
  %dec10 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec8, %if.end.while.body_crit_edge ]
  %arrayidx = getelementptr %struct.dlm_comm, ptr %i, i32 0, i32 6, i32 %dec10
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %6) #14
  %7 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr_count, align 4
  %dec = add i32 %8, -1
  store i32 %dec, ptr %addr_count, align 4
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @config_item_put(ptr noundef %i) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_comm(ptr noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %i) #14
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_nodeid_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nodeid = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 2
  %0 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nodeid, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_nodeid_store(ptr noundef %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %nodeid = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 2
  %call1 = tail call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef %nodeid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %len.call1 = select i1 %tobool.not, i32 %len, i32 %call1
  ret i32 %len.call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_local_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 3
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %local, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_local_store(ptr noundef %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %local = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 3
  %call1 = tail call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef %local) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %local to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %local, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %2 = load ptr, ptr @local_comm, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %item, ptr @local_comm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %len, %if.then5 ], [ %len, %land.lhs.true.cleanup_crit_edge ], [ %len, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_addr_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %len)
  %cmp.not = icmp eq i32 %len, 128
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr_count = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 4
  %0 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp1 = icmp sgt i32 %1, 2
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3392, i32 noundef 128) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %3 = call ptr @memcpy(ptr %call7.i.i, ptr %buf, i32 128)
  %nodeid = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 2
  %4 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nodeid, align 4
  %call7 = tail call i32 @dlm_lowcomms_addr(i32 noundef %5, ptr noundef nonnull %call7.i.i, i32 noundef 128) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr_count, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %addr_count, align 4
  %arrayidx = getelementptr %struct.dlm_comm, ptr %item, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then9 ], [ 128, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lowcomms_addr(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_addr_list_show(ptr nocapture noundef readonly %item, ptr noundef %buf) #9 align 64 {
entry:
  %buf0 = alloca [56 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %buf0) #14
  %0 = call ptr @memset(ptr %buf0, i32 255, i32 56)
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %buf, align 1
  %addr_count = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 4
  %2 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24 = icmp sgt i32 %3, 0
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.then.for.body_crit_edge, %entry.for.body_crit_edge
  %i.026 = phi i32 [ %inc, %if.then.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %allowance.025 = phi i32 [ %sub, %if.then.for.body_crit_edge ], [ 4096, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr %struct.dlm_comm, ptr %item, i32 0, i32 6, i32 %i.026
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %sw.default [
    i16 2, label %sw.bb
    i16 10, label %sw.bb4
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %5, i32 0, i32 2
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf0, ptr noundef nonnull @.str.31, ptr noundef %sin_addr)
  br label %sw.epilog

sw.bb4:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %5, i32 0, i32 3
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf0, ptr noundef nonnull @.str.32, ptr noundef %sin6_addr)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf0, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb4, %sw.bb
  %s.0 = phi i32 [ %call8, %sw.default ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb ]
  %sub = sub i32 %allowance.025, %s.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp9 = icmp sgt i32 %sub, -1
  br i1 %cmp9, label %if.then, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then:                                          ; preds = %sw.epilog
  %call12 = call ptr @strcat(ptr noundef %buf, ptr noundef nonnull %buf0)
  %inc = add nuw nsw i32 %i.026, 1
  %9 = ptrtoint ptr %addr_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr_count, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.then.for.end_crit_edge, %sw.epilog.for.end_crit_edge, %entry.for.end_crit_edge
  %allowance.0.lcssa = phi i32 [ 4096, %entry.for.end_crit_edge ], [ %allowance.025, %sw.epilog.for.end_crit_edge ], [ %sub, %if.then.for.end_crit_edge ]
  %sub13 = sub i32 4096, %allowance.0.lcssa
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %buf0) #14
  ret i32 %sub13
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_mark_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %buf) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mark = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 5
  %0 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mark, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @comm_mark_store(ptr nocapture noundef %item, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %mark = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mark) #14
  %0 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mark, align 4, !annotation !153
  %call = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %mark) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mark, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end2_crit_edge

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %3 = load i32, ptr getelementptr inbounds (%struct.dlm_config_info, ptr @dlm_config, i32 0, i32 9), align 4
  %4 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %mark, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %nodeid = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 2
  %5 = ptrtoint ptr %nodeid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nodeid, align 4
  %7 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mark, align 4
  %call4 = call i32 @dlm_lowcomms_nodes_set_mark(i32 noundef %6, i32 noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #16
  %9 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mark, align 4
  %mark8 = getelementptr inbounds %struct.dlm_comm, ptr %item, i32 0, i32 5
  %11 = ptrtoint ptr %mark8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %mark8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end7 ], [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end2.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mark) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lowcomms_nodes_set_mark(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_midcomms_close(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_group_find_item(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_item_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !123, !125, !126, !128, !129, !131, !133, !135, !137, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @dlm_config_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../fs/dlm/config.c", i32 612, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/dlm/config.c", i32 889, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @dlm_config_nodes._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @dlm_config_nodes._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @dlm_config, !10, !"dlm_config", i1 false, i1 false}
!10 = !{!"../fs/dlm/config.c", i32 963, i32 24}
!11 = !{ptr @local_comm, !12, !"local_comm", i1 false, i1 false}
!12 = !{!"../fs/dlm/config.c", i32 38, i32 25}
!13 = !{ptr @clusters_root, !14, !"clusters_root", i1 false, i1 false}
!14 = !{!"../fs/dlm/config.c", i32 598, i32 28}
!15 = !{ptr @clusters_type, !16, !"clusters_type", i1 false, i1 false}
!16 = !{!"../fs/dlm/config.c", i32 343, i32 38}
!17 = !{ptr @clusters_ops, !18, !"clusters_ops", i1 false, i1 false}
!18 = !{!"../fs/dlm/config.c", i32 307, i32 41}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/dlm/config.c", i32 420, i32 46}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/dlm/config.c", i32 421, i32 46}
!23 = !{ptr @cluster_type, !24, !"cluster_type", i1 false, i1 false}
!24 = !{!"../fs/dlm/config.c", i32 348, i32 38}
!25 = !{ptr @cluster_ops, !26, !"cluster_ops", i1 false, i1 false}
!26 = !{!"../fs/dlm/config.c", i32 312, i32 40}
!27 = !{ptr @cluster_attrs, !28, !"cluster_attrs", i1 false, i1 false}
!28 = !{!"../fs/dlm/config.c", i32 232, i32 35}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/dlm/config.c", i32 217, i32 1}
!31 = !{ptr @cluster_attr_tcp_port, !30, !"cluster_attr_tcp_port", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../fs/dlm/config.c", i32 218, i32 1}
!35 = !{ptr @cluster_attr_buffer_size, !34, !"cluster_attr_buffer_size", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/dlm/config.c", i32 219, i32 1}
!38 = !{ptr @cluster_attr_rsbtbl_size, !37, !"cluster_attr_rsbtbl_size", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/dlm/config.c", i32 220, i32 1}
!41 = !{ptr @cluster_attr_recover_timer, !40, !"cluster_attr_recover_timer", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../fs/dlm/config.c", i32 221, i32 1}
!44 = !{ptr @cluster_attr_toss_secs, !43, !"cluster_attr_toss_secs", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/dlm/config.c", i32 222, i32 1}
!47 = !{ptr @cluster_attr_scan_secs, !46, !"cluster_attr_scan_secs", i1 false, i1 false}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../fs/dlm/config.c", i32 223, i32 1}
!50 = !{ptr @cluster_attr_log_debug, !49, !"cluster_attr_log_debug", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/dlm/config.c", i32 224, i32 1}
!53 = !{ptr @cluster_attr_log_info, !52, !"cluster_attr_log_info", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../fs/dlm/config.c", i32 225, i32 1}
!56 = !{ptr @cluster_attr_protocol, !55, !"cluster_attr_protocol", i1 false, i1 false}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../fs/dlm/config.c", i32 226, i32 1}
!59 = !{ptr @cluster_attr_mark, !58, !"cluster_attr_mark", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/dlm/config.c", i32 227, i32 1}
!62 = !{ptr @cluster_attr_timewarn_cs, !61, !"cluster_attr_timewarn_cs", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../fs/dlm/config.c", i32 228, i32 1}
!65 = !{ptr @cluster_attr_waitwarn_us, !64, !"cluster_attr_waitwarn_us", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/dlm/config.c", i32 229, i32 1}
!68 = !{ptr @cluster_attr_new_rsb_count, !67, !"cluster_attr_new_rsb_count", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/dlm/config.c", i32 230, i32 1}
!71 = !{ptr @cluster_attr_recover_callbacks, !70, !"cluster_attr_recover_callbacks", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/dlm/config.c", i32 129, i32 1}
!74 = !{ptr @cluster_attr_cluster_name, !73, !"cluster_attr_cluster_name", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../fs/dlm/config.c", i32 115, i32 22}
!77 = !{ptr @spaces_type, !78, !"spaces_type", i1 false, i1 false}
!78 = !{!"../fs/dlm/config.c", i32 354, i32 38}
!79 = !{ptr @spaces_ops, !80, !"spaces_ops", i1 false, i1 false}
!80 = !{!"../fs/dlm/config.c", i32 316, i32 41}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/dlm/config.c", i32 487, i32 46}
!83 = !{ptr @make_space.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../fs/dlm/config.c", i32 491, i32 2}
!85 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @space_type, !87, !"space_type", i1 false, i1 false}
!87 = !{!"../fs/dlm/config.c", i32 359, i32 38}
!88 = !{ptr @space_ops, !89, !"space_ops", i1 false, i1 false}
!89 = !{!"../fs/dlm/config.c", i32 321, i32 40}
!90 = !{ptr @nodes_type, !91, !"nodes_type", i1 false, i1 false}
!91 = !{!"../fs/dlm/config.c", i32 375, i32 38}
!92 = !{ptr @nodes_ops, !93, !"nodes_ops", i1 false, i1 false}
!93 = !{!"../fs/dlm/config.c", i32 334, i32 41}
!94 = !{ptr @node_type, !95, !"node_type", i1 false, i1 false}
!95 = !{!"../fs/dlm/config.c", i32 380, i32 38}
!96 = !{ptr @node_ops, !97, !"node_ops", i1 false, i1 false}
!97 = !{!"../fs/dlm/config.c", i32 339, i32 40}
!98 = !{ptr @node_attrs, !99, !"node_attrs", i1 false, i1 false}
!99 = !{!"../fs/dlm/config.c", i32 812, i32 35}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/dlm/config.c", i32 809, i32 1}
!102 = !{ptr @node_attr_nodeid, !101, !"node_attr_nodeid", i1 false, i1 false}
!103 = !{ptr @.str.26, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../fs/dlm/config.c", i32 777, i32 22}
!105 = !{ptr @.str.27, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../fs/dlm/config.c", i32 810, i32 1}
!107 = !{ptr @node_attr_weight, !106, !"node_attr_weight", i1 false, i1 false}
!108 = !{ptr @comms_type, !109, !"comms_type", i1 false, i1 false}
!109 = !{!"../fs/dlm/config.c", i32 364, i32 38}
!110 = !{ptr @comms_ops, !111, !"comms_ops", i1 false, i1 false}
!111 = !{!"../fs/dlm/config.c", i32 325, i32 41}
!112 = !{ptr @comm_type, !113, !"comm_type", i1 false, i1 false}
!113 = !{!"../fs/dlm/config.c", i32 369, i32 38}
!114 = !{ptr @comm_ops, !115, !"comm_ops", i1 false, i1 false}
!115 = !{!"../fs/dlm/config.c", i32 330, i32 40}
!116 = !{ptr @comm_attrs, !117, !"comm_attrs", i1 false, i1 false}
!117 = !{!"../fs/dlm/config.c", i32 766, i32 35}
!118 = !{ptr @comm_attr_nodeid, !119, !"comm_attr_nodeid", i1 false, i1 false}
!119 = !{!"../fs/dlm/config.c", i32 760, i32 1}
!120 = !{ptr @.str.28, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../fs/dlm/config.c", i32 761, i32 1}
!122 = !{ptr @comm_attr_local, !121, !"comm_attr_local", i1 false, i1 false}
!123 = !{ptr @.str.29, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../fs/dlm/config.c", i32 763, i32 1}
!125 = !{ptr @comm_attr_addr, !124, !"comm_attr_addr", i1 false, i1 false}
!126 = !{ptr @.str.30, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/dlm/config.c", i32 764, i32 1}
!128 = !{ptr @comm_attr_addr_list, !127, !"comm_attr_addr_list", i1 false, i1 false}
!129 = !{ptr @.str.31, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/dlm/config.c", i32 711, i32 22}
!131 = !{ptr @.str.32, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/dlm/config.c", i32 715, i32 22}
!133 = !{ptr @.str.33, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../fs/dlm/config.c", i32 718, i32 30}
!135 = !{ptr @comm_attr_mark, !136, !"comm_attr_mark", i1 false, i1 false}
!136 = !{!"../fs/dlm/config.c", i32 762, i32 1}
!137 = !{ptr @dlm_comm_count, !138, !"dlm_comm_count", i1 false, i1 false}
!138 = !{!"../fs/dlm/config.c", i32 39, i32 17}
!139 = !{ptr @space_list, !140, !"space_list", i1 false, i1 false}
!140 = !{!"../fs/dlm/config.c", i32 36, i32 29}
!141 = !{ptr @comm_list, !142, !"comm_list", i1 false, i1 false}
!142 = !{!"../fs/dlm/config.c", i32 37, i32 29}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{!"auto-init"}
