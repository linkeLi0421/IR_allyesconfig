; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.rtrs_addr = type { ptr, ptr }
%struct.rtrs_clt_path = type { %struct.rtrs_path, ptr, %struct.wait_queue_head, i32, %struct.atomic_t, %struct.mutex, ptr, %struct.delayed_work, %struct.work_struct, i32, i8, ptr, i32, i32, i32, i32, i32, i32, %struct.kobject, i8, ptr, i8, [64 x i8], ptr }
%struct.rtrs_path = type { %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, [255 x i8], %struct.uuid_t, ptr, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.delayed_work, i32, i32, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.uuid_t = type { [16 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rtrs_clt_sess = type { %struct.list_head, i32, ptr, %struct.uuid_t, i32, %struct.mutex, %struct.mutex, [255 x i8], i16, i32, i32, i32, ptr, ptr, i32, i32, %struct.wait_queue_head, i32, ptr, ptr, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.rtrs_clt_stats = type { %struct.kobject, ptr, %struct.rtrs_clt_stats_reconnects, %struct.atomic_t }
%struct.rtrs_clt_stats_reconnects = type { i32, i32 }

@ktype_sess = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rtrs_clt_path_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rtrs_clt_create_path_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtrs_client L443: kobject_init_and_add: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtrs_clt_create_path_files\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c\00", [51 x i8] zeroinitializer }, align 32
@rtrs_clt_create_path_files._entry_ptr = internal global ptr @rtrs_clt_create_path_files._entry, section ".printk_index", align 4
@rtrs_clt_path_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rtrs_clt_path_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtrs_clt_create_path_files._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtrs_client L449: sysfs_create_group(): %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rtrs_clt_create_path_files._entry_ptr.6 = internal global ptr @rtrs_clt_create_path_files._entry.4, section ".printk_index", align 4
@ktype_stats = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rtrs_clt_path_stats_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@rtrs_clt_create_path_files._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtrs_client L455: kobject_init_and_add: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rtrs_clt_create_path_files._entry_ptr.10 = internal global ptr @rtrs_clt_create_path_files._entry.8, section ".printk_index", align 4
@rtrs_clt_stats_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rtrs_clt_stats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtrs_clt_create_path_files._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013rtrs_client L463: failed to create stats sysfs group, err: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rtrs_clt_create_path_files._entry_ptr.13 = internal global ptr @rtrs_clt_create_path_files._entry.11, section ".printk_index", align 4
@rtrs_clt_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rtrs_clt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@rtrs_clt_path_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @rtrs_clt_hca_name_attr, ptr @rtrs_clt_hca_port_attr, ptr @rtrs_clt_src_addr_attr, ptr @rtrs_clt_dst_addr_attr, ptr @rtrs_clt_state_attr, ptr @rtrs_clt_reconnect_attr, ptr @rtrs_clt_disconnect_attr, ptr @rtrs_clt_remove_path_attr, ptr @rtrs_clt_cur_latency_attr, ptr null], [56 x i8] zeroinitializer }, align 32
@rtrs_clt_hca_name_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_hca_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_clt_hca_port_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_hca_port_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_clt_src_addr_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_src_addr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_clt_dst_addr_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_dst_addr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_clt_state_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_clt_reconnect_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_reconnect_show, ptr @rtrs_clt_reconnect_store }, [36 x i8] zeroinitializer }, align 32
@rtrs_clt_disconnect_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_disconnect_show, ptr @rtrs_clt_disconnect_store }, [36 x i8] zeroinitializer }, align 32
@rtrs_clt_remove_path_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_remove_path_show, ptr @rtrs_clt_remove_path_store }, [36 x i8] zeroinitializer }, align 32
@rtrs_clt_cur_latency_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_clt_cur_latency_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_name\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_port\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"src_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dst_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"connected\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reconnect\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Usage: echo 1 > %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@rtrs_clt_reconnect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rtrs_client L230: <%s>: %s: unknown value: '%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtrs_clt_reconnect_store\00", [39 x i8] zeroinitializer }, align 32
@rtrs_clt_reconnect_store._entry_ptr = internal global ptr @rtrs_clt_reconnect_store._entry, section ".printk_index", align 4
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@rtrs_clt_disconnect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rtrs_client L259: <%s>: %s: unknown value: '%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtrs_clt_disconnect_store\00", [38 x i8] zeroinitializer }, align 32
@rtrs_clt_disconnect_store._entry_ptr = internal global ptr @rtrs_clt_disconnect_store._entry, section ".printk_index", align 4
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"remove_path\00", [20 x i8] zeroinitializer }, align 32
@rtrs_clt_remove_path_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rtrs_client L287: <%s>: %s: unknown value: '%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtrs_clt_remove_path_store\00", [37 x i8] zeroinitializer }, align 32
@rtrs_clt_remove_path_store._entry_ptr = internal global ptr @rtrs_clt_remove_path_store._entry, section ".printk_index", align 4
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cur_latency\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%lld ns\0A\00", [23 x i8] zeroinitializer }, align 32
@rtrs_clt_stats_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @cpu_migration_from_attr, ptr @cpu_migration_to_attr, ptr @reconnects_attr, ptr @rdma_attr, ptr @reset_all_attr, ptr null], [40 x i8] zeroinitializer }, align 32
@cpu_migration_from_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu_migration_from_show, ptr @cpu_migration_from_store }, [36 x i8] zeroinitializer }, align 32
@cpu_migration_to_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu_migration_to_show, ptr @cpu_migration_to_store }, [36 x i8] zeroinitializer }, align 32
@reconnects_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @reconnects_show, ptr @reconnects_store }, [36 x i8] zeroinitializer }, align 32
@rdma_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rdma_show, ptr @rdma_store }, [36 x i8] zeroinitializer }, align 32
@reset_all_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @reset_all_show, ptr @reset_all_store }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpu_migration_from\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpu_migration_to\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reconnects\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reset_all\00", [22 x i8] zeroinitializer }, align 32
@rtrs_clt_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_max_reconnect_attempts, ptr @dev_attr_mpath_policy, ptr @dev_attr_add_path, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_max_reconnect_attempts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_reconnect_attempts_show, ptr @max_reconnect_attempts_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_mpath_policy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mpath_policy_show, ptr @mpath_policy_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_add_path = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @add_path_show, ptr @add_path_store }, [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max_reconnect_attempts\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@max_reconnect_attempts_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013rtrs_client L73: <%s>: %s: failed to convert string '%s' to int\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"max_reconnect_attempts_store\00", [35 x i8] zeroinitializer }, align 32
@max_reconnect_attempts_store._entry_ptr = internal global ptr @max_reconnect_attempts_store._entry, section ".printk_index", align 4
@max_reconnect_attempts_store._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013rtrs_client L81: <%s>: %s: invalid range (provided: '%s', accepted: min: %d, max: %d)\0A\00", [39 x i8] zeroinitializer }, align 32
@max_reconnect_attempts_store._entry_ptr.49 = internal global ptr @max_reconnect_attempts_store._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpath_policy\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"round-robin (RR: %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"min-inflight (MI: %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"min-latency (ML: %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown (%d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"round-robin\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rr\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"min-inflight\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mi\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"min-latency\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ml\00", [29 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"add_path\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"Usage: echo [<source addr>@]<destination addr> > %s\0A\0A*addr ::= [ ip:<ipv4|ipv6> | gid:<gid> ]\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"ktype_sess\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 28, i32 25 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 441, i32 8 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 443, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"rtrs_clt_path_attr_group\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 424, i32 37 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 449, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"ktype_stats\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 44, i32 25 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 453, i32 25 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 455, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [26 x i8] c"rtrs_clt_stats_attr_group\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 330, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 463, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [20 x i8] c"rtrs_clt_attr_group\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 498, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [20 x i8] c"rtrs_clt_path_attrs\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 411, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant [23 x i8] c"rtrs_clt_hca_name_attr\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 359, i32 30 }
@___asan_gen_.120 = private unnamed_addr constant [23 x i8] c"rtrs_clt_hca_port_attr\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 345, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"rtrs_clt_src_addr_attr\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 391, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"rtrs_clt_dst_addr_attr\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 408, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"rtrs_clt_state_attr\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 211, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"rtrs_clt_reconnect_attr\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 240, i32 30 }
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"rtrs_clt_disconnect_attr\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 267, i32 30 }
@___asan_gen_.138 = private unnamed_addr constant [26 x i8] c"rtrs_clt_remove_path_attr\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 297, i32 30 }
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"rtrs_clt_cur_latency_attr\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 374, i32 30 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 360, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 356, i32 26 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 346, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 342, i32 26 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 392, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 387, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 409, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 212, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 206, i32 27 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 208, i32 26 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 241, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 217, i32 25 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 228, i32 24 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 229, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 268, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 258, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 298, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 286, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 375, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 370, i32 26 }
@___asan_gen_.222 = private unnamed_addr constant [21 x i8] c"rtrs_clt_stats_attrs\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 321, i32 26 }
@___asan_gen_.225 = private unnamed_addr constant [24 x i8] c"cpu_migration_from_attr\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [22 x i8] c"cpu_migration_to_attr\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"reconnects_attr\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [10 x i8] c"rdma_attr\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"reset_all_attr\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 301, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 305, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 309, i32 1 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 313, i32 1 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 317, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant [15 x i8] c"rtrs_clt_attrs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 491, i32 26 }
@___asan_gen_.261 = private unnamed_addr constant [32 x i8] c"dev_attr_max_reconnect_attempts\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [22 x i8] c"dev_attr_mpath_policy\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [18 x i8] c"dev_attr_add_path\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 89, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 56, i32 26 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 72, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 78, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 154, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 101, i32 27 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 104, i32 27 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 107, i32 27 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 110, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 139, i32 24 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 140, i32 37 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 142, i32 29 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 143, i32 35 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 145, i32 29 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 146, i32 35 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 197, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.328 = private constant [48 x i8] c"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.328, i32 161, i32 3 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @max_reconnect_attempts_store._entry, ptr @max_reconnect_attempts_store._entry.47, ptr @max_reconnect_attempts_store._entry_ptr, ptr @max_reconnect_attempts_store._entry_ptr.49, ptr @rtrs_clt_create_path_files._entry, ptr @rtrs_clt_create_path_files._entry.11, ptr @rtrs_clt_create_path_files._entry.4, ptr @rtrs_clt_create_path_files._entry.8, ptr @rtrs_clt_create_path_files._entry_ptr, ptr @rtrs_clt_create_path_files._entry_ptr.10, ptr @rtrs_clt_create_path_files._entry_ptr.13, ptr @rtrs_clt_create_path_files._entry_ptr.6, ptr @rtrs_clt_disconnect_store._entry, ptr @rtrs_clt_disconnect_store._entry_ptr, ptr @rtrs_clt_reconnect_store._entry, ptr @rtrs_clt_reconnect_store._entry_ptr, ptr @rtrs_clt_remove_path_store._entry, ptr @rtrs_clt_remove_path_store._entry_ptr, ptr @ktype_sess, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtrs_clt_path_attr_group, ptr @.str.5, ptr @ktype_stats, ptr @.str.7, ptr @.str.9, ptr @rtrs_clt_stats_attr_group, ptr @.str.12, ptr @rtrs_clt_attr_group, ptr @rtrs_clt_path_attrs, ptr @rtrs_clt_hca_name_attr, ptr @rtrs_clt_hca_port_attr, ptr @rtrs_clt_src_addr_attr, ptr @rtrs_clt_dst_addr_attr, ptr @rtrs_clt_state_attr, ptr @rtrs_clt_reconnect_attr, ptr @rtrs_clt_disconnect_attr, ptr @rtrs_clt_remove_path_attr, ptr @rtrs_clt_cur_latency_attr, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @rtrs_clt_stats_attrs, ptr @cpu_migration_from_attr, ptr @cpu_migration_to_attr, ptr @reconnects_attr, ptr @rdma_attr, ptr @reset_all_attr, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rtrs_clt_attrs, ptr @dev_attr_max_reconnect_attempts, ptr @dev_attr_mpath_policy, ptr @dev_attr_add_path, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_sess to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_create_path_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_path_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_create_path_files._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_stats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_create_path_files._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_stats_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_create_path_files._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_path_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_hca_name_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_hca_port_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_src_addr_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_dst_addr_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_state_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_reconnect_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_disconnect_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_remove_path_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_cur_latency_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_reconnect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_disconnect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_remove_path_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_stats_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_migration_from_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_migration_to_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reconnects_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_all_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_clt_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_max_reconnect_attempts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mpath_policy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_add_path to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_reconnect_attempts_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_reconnect_attempts_store._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_create_path_files(ptr noundef %clt_path) local_unnamed_addr #0 align 64 {
entry:
  %str = alloca [255 x i8], align 1
  %path = alloca %struct.rtrs_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clt1 = getelementptr inbounds %struct.rtrs_clt_path, ptr %clt_path, i32 0, i32 1
  %0 = ptrtoint ptr %clt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clt1, align 8
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %str) #6
  %2 = call ptr @memset(ptr %str, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #6
  %3 = getelementptr inbounds %struct.rtrs_addr, ptr %path, i32 0, i32 1
  %src_addr = getelementptr inbounds %struct.rtrs_path, ptr %clt_path, i32 0, i32 2
  %4 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %src_addr, ptr %path, align 4
  %dst_addr = getelementptr inbounds %struct.rtrs_path, ptr %clt_path, i32 0, i32 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dst_addr, ptr %3, align 4
  %call = call i32 @rtrs_addr_to_str(ptr noundef nonnull %path, ptr noundef nonnull %str, i32 noundef 255) #6
  %kobj = getelementptr inbounds %struct.rtrs_clt_path, ptr %clt_path, i32 0, i32 18
  %kobj_paths = getelementptr inbounds %struct.rtrs_clt_sess, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %kobj_paths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kobj_paths, align 8
  %call4 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @ktype_sess, ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call4) #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call8 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef nonnull @rtrs_clt_path_attr_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call8) #9
  br label %put_kobj

if.end16:                                         ; preds = %if.end
  %stats = getelementptr inbounds %struct.rtrs_clt_path, ptr %clt_path, i32 0, i32 20
  %8 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stats, align 8
  %call18 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %9, ptr noundef nonnull @ktype_stats, ptr noundef %kobj, ptr noundef nonnull @.str.7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end28, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %call18) #9
  br label %remove_group

if.end28:                                         ; preds = %if.end16
  %10 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stats, align 8
  %call31 = call i32 @sysfs_create_group(ptr noundef %11, ptr noundef nonnull @rtrs_clt_stats_attr_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %do.end36

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call31) #9
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 8
  call void @kobject_del(ptr noundef %13) #6
  br label %remove_group

remove_group:                                     ; preds = %do.end36, %do.end23
  %err.0 = phi i32 [ %call18, %do.end23 ], [ %call31, %do.end36 ]
  %14 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stats, align 8
  call void @kobject_put(ptr noundef %15) #6
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef nonnull @rtrs_clt_path_attr_group) #6
  br label %put_kobj

put_kobj:                                         ; preds = %remove_group, %do.end13
  %err.1 = phi i32 [ %call8, %do.end13 ], [ %err.0, %remove_group ]
  call void @kobject_del(ptr noundef %kobj) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %put_kobj, %do.end
  %retval.0.ph = phi i32 [ %err.1, %put_kobj ], [ %call4, %do.end ]
  call void @kobject_put(ptr noundef %kobj) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end28.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #6
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %str) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_addr_to_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtrs_clt_destroy_path_files(ptr noundef %clt_path, ptr noundef %sysfs_self) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stats = getelementptr inbounds %struct.rtrs_clt_path, ptr %clt_path, i32 0, i32 20
  %0 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats, align 8
  tail call void @kobject_del(ptr noundef %1) #6
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 8
  tail call void @kobject_put(ptr noundef %3) #6
  %tobool.not = icmp eq ptr %sysfs_self, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %kobj = getelementptr inbounds %struct.rtrs_clt_path, ptr %clt_path, i32 0, i32 18
  %call = tail call zeroext i1 @sysfs_remove_file_self(ptr noundef %kobj, ptr noundef nonnull %sysfs_self) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %kobj3 = getelementptr inbounds %struct.rtrs_clt_path, ptr %clt_path, i32 0, i32 18
  tail call void @kobject_del(ptr noundef %kobj3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_clt_create_sysfs_root_files(ptr noundef %clt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rtrs_clt_sess, ptr %clt, i32 0, i32 20
  %call = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @rtrs_clt_attr_group) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtrs_clt_destroy_sysfs_root(ptr noundef %clt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.rtrs_clt_sess, ptr %clt, i32 0, i32 20
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @rtrs_clt_attr_group) #6
  %kobj_paths = getelementptr inbounds %struct.rtrs_clt_sess, ptr %clt, i32 0, i32 21
  %0 = ptrtoint ptr %kobj_paths to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kobj_paths, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kobject_del(ptr noundef nonnull %1) #6
  %2 = ptrtoint ptr %kobj_paths to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kobj_paths, align 8
  tail call void @kobject_put(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_clt_path_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -1044
  tail call void @free_path(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_hca_name_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hca_name = getelementptr i8, ptr %kobj, i32 145
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.15, ptr noundef %hca_name) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_hca_port_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hca_port = getelementptr i8, ptr %kobj, i32 144
  %0 = ptrtoint ptr %hca_port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %hca_port, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.17, i32 noundef %conv) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_src_addr_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr = getelementptr i8, ptr %kobj, i32 -908
  %call = tail call i32 @sockaddr_to_str(ptr noundef %src_addr, ptr noundef %page, i32 noundef 4096) #6
  %call1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %page, i32 noundef %call, ptr noundef nonnull @.str.19) #6
  %add = add i32 %call1, %call
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sockaddr_to_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_dst_addr_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_addr = getelementptr i8, ptr %kobj, i32 -1036
  %call = tail call i32 @sockaddr_to_str(ptr noundef %dst_addr, ptr noundef %page, i32 noundef 4096) #6
  %call1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %page, i32 noundef %call, ptr noundef nonnull @.str.19) #6
  %add = add i32 %call1, %call
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_state_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %kobj, i32 -284
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %.str.22..str.23 = select i1 %cmp, ptr @.str.22, ptr @.str.23
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull %.str.22..str.23) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_reconnect_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_reconnect_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clt = getelementptr i8, ptr %kobj, i32 -340
  %0 = ptrtoint ptr %clt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clt, align 8
  %sessname = getelementptr inbounds %struct.rtrs_clt_sess, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %sessname, ptr noundef %3, ptr noundef %buf) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -1044
  %call4 = tail call i32 @rtrs_clt_reconnect_from_sysfs(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %count.call4 = select i1 %tobool.not, i32 %count, i32 %call4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count.call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_reconnect_from_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_disconnect_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_disconnect_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clt = getelementptr i8, ptr %kobj, i32 -340
  %0 = ptrtoint ptr %clt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clt, align 8
  %sessname = getelementptr inbounds %struct.rtrs_clt_sess, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %sessname, ptr noundef %3, ptr noundef %buf) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -1044
  tail call void @rtrs_clt_close_conns(ptr noundef %add.ptr, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_clt_close_conns(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_remove_path_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.25, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_remove_path_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clt = getelementptr i8, ptr %kobj, i32 -340
  %0 = ptrtoint ptr %clt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clt, align 8
  %sessname = getelementptr inbounds %struct.rtrs_clt_sess, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %sessname, ptr noundef %3, ptr noundef %buf) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %kobj, i32 -1044
  %call5 = tail call i32 @rtrs_clt_remove_path_from_sysfs(ptr noundef %add.ptr, ptr noundef %attr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %count.call5 = select i1 %tobool.not, i32 %count, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %count.call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_remove_path_from_sysfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_clt_cur_latency_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hb_cur_latency = getelementptr i8, ptr %kobj, i32 -348
  %0 = ptrtoint ptr %hb_cur_latency to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %hb_cur_latency, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.36, i64 noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_clt_path_stats_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pcpu_stats = getelementptr inbounds %struct.rtrs_clt_stats, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %pcpu_stats to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcpu_stats, align 4
  tail call void @free_percpu(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %kobj) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_migration_from_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtrs_clt_stats_migration_from_cnt_to_str(ptr noundef %kobj, ptr noundef %page) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_migration_from_store(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.38) #6
  br i1 %call2, label %if.else.if.end5_crit_edge, label %if.else.if.end5.thread_crit_edge

if.else.if.end5.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.thread

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call4 = tail call i32 @rtrs_clt_reset_cpu_migr_stats(ptr noundef %kobj, i1 noundef zeroext %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call4
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end5, %if.else.if.end5.thread_crit_edge
  %0 = phi i32 [ -22, %if.else.if.end5.thread_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_stats_migration_from_cnt_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_reset_cpu_migr_stats(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_migration_to_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtrs_clt_stats_migration_to_cnt_to_str(ptr noundef %kobj, ptr noundef %page) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu_migration_to_store(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.38) #6
  br i1 %call2, label %if.else.if.end5_crit_edge, label %if.else.if.end5.thread_crit_edge

if.else.if.end5.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.thread

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call4 = tail call i32 @rtrs_clt_reset_cpu_migr_stats(ptr noundef %kobj, i1 noundef zeroext %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call4
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end5, %if.else.if.end5.thread_crit_edge
  %0 = phi i32 [ -22, %if.else.if.end5.thread_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_stats_migration_to_cnt_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reconnects_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtrs_clt_stats_reconnects_to_str(ptr noundef %kobj, ptr noundef %page) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reconnects_store(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.38) #6
  br i1 %call2, label %if.else.if.end5_crit_edge, label %if.else.if.end5.thread_crit_edge

if.else.if.end5.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.thread

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call4 = tail call i32 @rtrs_clt_reset_reconnects_stat(ptr noundef %kobj, i1 noundef zeroext %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call4
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end5, %if.else.if.end5.thread_crit_edge
  %0 = phi i32 [ -22, %if.else.if.end5.thread_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_stats_reconnects_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_reset_reconnects_stat(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtrs_clt_stats_rdma_to_str(ptr noundef %kobj, ptr noundef %page) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_store(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.38) #6
  br i1 %call2, label %if.else.if.end5_crit_edge, label %if.else.if.end5.thread_crit_edge

if.else.if.end5.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.thread

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call4 = tail call i32 @rtrs_clt_reset_rdma_stats(ptr noundef %kobj, i1 noundef zeroext %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call4
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end5, %if.else.if.end5.thread_crit_edge
  %0 = phi i32 [ -22, %if.else.if.end5.thread_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_stats_rdma_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_reset_rdma_stats(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_all_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtrs_clt_reset_all_help(ptr noundef %kobj, ptr noundef %page) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_all_store(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.26) #6
  br i1 %call, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.else:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.38) #6
  br i1 %call2, label %if.else.if.end5_crit_edge, label %if.else.if.end5.thread_crit_edge

if.else.if.end5.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.thread

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call4 = tail call i32 @rtrs_clt_reset_all_stats(ptr noundef %kobj, i1 noundef zeroext %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call4
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end5, %if.else.if.end5.thread_crit_edge
  %0 = phi i32 [ -22, %if.else.if.end5.thread_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_reset_all_help(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_reset_all_stats(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_reconnect_attempts_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -576
  %call = tail call i32 @rtrs_clt_get_max_reconnect_attempts(ptr noundef %add.ptr) #6
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.44, i32 noundef %call) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_reconnect_attempts_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !172
  %add.ptr = getelementptr i8, ptr %dev, i32 -576
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sessname = getelementptr i8, ptr %dev, i32 -356
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %sessname, ptr noundef %2, ptr noundef %buf) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  %5 = add i32 %4, -10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10001, i32 %5)
  %6 = icmp ult i32 %5, -10001
  br i1 %6, label %do.end8, label %if.end15

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sessname10 = getelementptr i8, ptr %dev, i32 -356
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %attr, align 4
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %sessname10, ptr noundef %8, ptr noundef %buf, i32 noundef -1, i32 noundef 9999) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @rtrs_clt_set_max_reconnect_attempts(ptr noundef %add.ptr, i32 noundef %4) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end8, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %do.end8 ], [ %count, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_get_max_reconnect_attempts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_clt_set_max_reconnect_attempts(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpath_policy_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mp_policy = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %mp_policy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mp_policy, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.51, i32 noundef 0) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.52, i32 noundef 1) #6
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.53, i32 noundef 2) #6
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.54, i32 noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb5, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ %call9, %sw.default ], [ %call7, %sw.bb5 ], [ %call4, %sw.bb2 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpath_policy_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !172
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %switch = icmp ult i32 %2, 3
  br i1 %switch, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call9 = call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false11

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.lhs.false11:                                  ; preds = %if.end
  %call4 = call i32 @strnlen(ptr noundef %buf, i32 noundef 255) #10
  %sub = add i32 %call4, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp5 = icmp eq i8 %4, 10
  %spec.select = select i1 %cmp5, i32 %sub, i32 %call4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select)
  %cmp12 = icmp eq i32 %spec.select, 2
  br i1 %cmp12, label %land.lhs.true14, label %if.else.thread

land.lhs.true14:                                  ; preds = %lor.lhs.false11
  %call15 = call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true14.cleanup.sink.split_crit_edge, label %if.else

land.lhs.true14.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true14
  %call19 = call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.cleanup.sink.split_crit_edge, label %land.lhs.true24

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else.thread:                                   ; preds = %lor.lhs.false11
  %call1963 = call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1963)
  %tobool20.not64 = icmp eq i32 %call1963, 0
  br i1 %tobool20.not64, label %if.else.thread.cleanup.sink.split_crit_edge, label %if.else29.thread

if.else.thread.cleanup.sink.split_crit_edge:      ; preds = %if.else.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

land.lhs.true24:                                  ; preds = %if.else
  %call25 = call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.58, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.cleanup.sink.split_crit_edge, label %if.else29

land.lhs.true24.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else29:                                        ; preds = %land.lhs.true24
  %call30 = call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else29.cleanup.sink.split_crit_edge, label %land.lhs.true35.critedge

if.else29.cleanup.sink.split_crit_edge:           ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else29.thread:                                 ; preds = %if.else.thread
  %call3065 = call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3065)
  %tobool31.not66 = icmp eq i32 %call3065, 0
  br i1 %tobool31.not66, label %if.else29.thread.cleanup.sink.split_crit_edge, label %if.else29.thread.cleanup_crit_edge

if.else29.thread.cleanup_crit_edge:               ; preds = %if.else29.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else29.thread.cleanup.sink.split_crit_edge:    ; preds = %if.else29.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

land.lhs.true35.critedge:                         ; preds = %if.else29
  %call36 = call i32 @strncasecmp(ptr noundef %buf, ptr noundef nonnull @.str.60, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true35.critedge.cleanup.sink.split_crit_edge, label %land.lhs.true35.critedge.cleanup_crit_edge

land.lhs.true35.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true35.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true35.critedge.cleanup.sink.split_crit_edge: ; preds = %land.lhs.true35.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true35.critedge.cleanup.sink.split_crit_edge, %if.else29.thread.cleanup.sink.split_crit_edge, %if.else29.cleanup.sink.split_crit_edge, %land.lhs.true24.cleanup.sink.split_crit_edge, %if.else.thread.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %land.lhs.true14.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %2, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 0, %land.lhs.true14.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ], [ 1, %if.else.thread.cleanup.sink.split_crit_edge ], [ 1, %land.lhs.true24.cleanup.sink.split_crit_edge ], [ 1, %if.else.cleanup.sink.split_crit_edge ], [ 2, %if.else29.thread.cleanup.sink.split_crit_edge ], [ 2, %land.lhs.true35.critedge.cleanup.sink.split_crit_edge ], [ 2, %if.else29.cleanup.sink.split_crit_edge ]
  %mp_policy18 = getelementptr i8, ptr %dev, i32 932
  %5 = ptrtoint ptr %mp_policy18 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %mp_policy18, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true35.critedge.cleanup_crit_edge, %if.else29.thread.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true35.critedge.cleanup_crit_edge ], [ -22, %if.else29.thread.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_path_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.62, ptr noundef %1) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @add_path_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %srcaddr = alloca %struct.__kernel_sockaddr_storage, align 4
  %dstaddr = alloca %struct.__kernel_sockaddr_storage, align 4
  %addr = alloca %struct.rtrs_addr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %srcaddr) #6
  %0 = call ptr @memset(ptr %srcaddr, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %dstaddr) #6
  %1 = call ptr @memset(ptr %dstaddr, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %addr) #6
  %2 = getelementptr inbounds %struct.rtrs_addr, ptr %addr, i32 0, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %srcaddr, ptr %addr, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dstaddr, ptr %2, align 4
  %call = call ptr @strchr(ptr noundef %buf, i32 noundef 10)
  %tobool.not = icmp eq ptr %call, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len.0 = select i1 %tobool.not, i32 %count, i32 %sub.ptr.sub
  %port = getelementptr i8, ptr %dev, i32 -100
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %port, align 4
  %call1 = call i32 @rtrs_addr_to_sockaddr(ptr noundef %buf, i32 noundef %len.0, i16 noundef zeroext %6, ptr noundef nonnull %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr = getelementptr i8, ptr %dev, i32 -576
  %call5 = call i32 @rtrs_clt_create_path_from_sysfs(ptr noundef %add.ptr, ptr noundef nonnull %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %count.call5 = select i1 %tobool6.not, i32 %count, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count.call5, %if.end4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %addr) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %dstaddr) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %srcaddr) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_addr_to_sockaddr(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_clt_create_path_from_sysfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !70, !71, !73, !75, !77, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !121, !123, !124, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 441, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 443, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtrs_clt_create_path_files._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtrs_clt_create_path_files._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 449, i32 3}
!10 = !{ptr @rtrs_clt_create_path_files._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtrs_clt_create_path_files._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 453, i32 25}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 455, i32 3}
!16 = !{ptr @rtrs_clt_create_path_files._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @rtrs_clt_create_path_files._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 463, i32 3}
!20 = !{ptr @rtrs_clt_create_path_files._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @rtrs_clt_create_path_files._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ktype_sess, !23, !"ktype_sess", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 28, i32 25}
!24 = !{ptr @rtrs_clt_path_attr_group, !25, !"rtrs_clt_path_attr_group", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 424, i32 37}
!26 = !{ptr @rtrs_clt_path_attrs, !27, !"rtrs_clt_path_attrs", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 411, i32 26}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 360, i32 2}
!30 = !{ptr @rtrs_clt_hca_name_attr, !31, !"rtrs_clt_hca_name_attr", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 359, i32 30}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 356, i32 26}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 346, i32 2}
!36 = !{ptr @rtrs_clt_hca_port_attr, !37, !"rtrs_clt_hca_port_attr", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 345, i32 30}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 342, i32 26}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 392, i32 2}
!42 = !{ptr @rtrs_clt_src_addr_attr, !43, !"rtrs_clt_src_addr_attr", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 391, i32 30}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 387, i32 34}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 409, i32 2}
!48 = !{ptr @rtrs_clt_dst_addr_attr, !49, !"rtrs_clt_dst_addr_attr", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 408, i32 30}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 212, i32 2}
!52 = !{ptr @rtrs_clt_state_attr, !53, !"rtrs_clt_state_attr", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 211, i32 30}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 206, i32 27}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 208, i32 26}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 241, i32 2}
!60 = !{ptr @rtrs_clt_reconnect_attr, !61, !"rtrs_clt_reconnect_attr", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 240, i32 30}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 217, i32 25}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 228, i32 24}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 229, i32 3}
!68 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rtrs_clt_reconnect_store._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rtrs_clt_reconnect_store._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 268, i32 2}
!73 = !{ptr @rtrs_clt_disconnect_attr, !74, !"rtrs_clt_disconnect_attr", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 267, i32 30}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 258, i32 3}
!77 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @rtrs_clt_disconnect_store._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @rtrs_clt_disconnect_store._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 298, i32 2}
!82 = !{ptr @rtrs_clt_remove_path_attr, !83, !"rtrs_clt_remove_path_attr", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 297, i32 30}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 286, i32 3}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @rtrs_clt_remove_path_store._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @rtrs_clt_remove_path_store._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 375, i32 2}
!91 = !{ptr @rtrs_clt_cur_latency_attr, !92, !"rtrs_clt_cur_latency_attr", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 374, i32 30}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 370, i32 26}
!95 = !{ptr @ktype_stats, !96, !"ktype_stats", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 44, i32 25}
!97 = !{ptr @rtrs_clt_stats_attr_group, !98, !"rtrs_clt_stats_attr_group", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 330, i32 37}
!99 = !{ptr @rtrs_clt_stats_attrs, !100, !"rtrs_clt_stats_attrs", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 321, i32 26}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 301, i32 1}
!103 = !{ptr @cpu_migration_from_attr, !102, !"cpu_migration_from_attr", i1 false, i1 false}
!104 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 305, i32 1}
!107 = !{ptr @cpu_migration_to_attr, !106, !"cpu_migration_to_attr", i1 false, i1 false}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 309, i32 1}
!110 = !{ptr @reconnects_attr, !109, !"reconnects_attr", i1 false, i1 false}
!111 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 313, i32 1}
!113 = !{ptr @rdma_attr, !112, !"rdma_attr", i1 false, i1 false}
!114 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 317, i32 1}
!116 = !{ptr @reset_all_attr, !115, !"reset_all_attr", i1 false, i1 false}
!117 = !{ptr @rtrs_clt_attr_group, !118, !"rtrs_clt_attr_group", i1 false, i1 false}
!118 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 498, i32 37}
!119 = !{ptr @rtrs_clt_attrs, !120, !"rtrs_clt_attrs", i1 false, i1 false}
!120 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 491, i32 26}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 89, i32 8}
!123 = !{ptr @dev_attr_max_reconnect_attempts, !122, !"dev_attr_max_reconnect_attempts", i1 false, i1 false}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 56, i32 26}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 72, i32 3}
!128 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @max_reconnect_attempts_store._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @max_reconnect_attempts_store._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 78, i32 3}
!133 = !{ptr @max_reconnect_attempts_store._entry.47, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @max_reconnect_attempts_store._entry_ptr.49, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 154, i32 8}
!137 = !{ptr @dev_attr_mpath_policy, !136, !"dev_attr_mpath_policy", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 101, i32 27}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 104, i32 27}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 107, i32 27}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 110, i32 27}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 139, i32 24}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 140, i32 37}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 142, i32 29}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 143, i32 35}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 145, i32 29}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 146, i32 35}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 197, i32 8}
!160 = !{ptr @dev_attr_add_path, !159, !"dev_attr_add_path", i1 false, i1 false}
!161 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-clt-sysfs.c", i32 161, i32 3}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"auto-init"}
