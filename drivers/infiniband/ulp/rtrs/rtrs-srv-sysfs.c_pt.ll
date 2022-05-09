; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c"
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
%struct.rtrs_addr = type { ptr, ptr }
%struct.rtrs_srv_path = type { %struct.rtrs_path, ptr, %struct.work_struct, i32, %struct.spinlock, i32, ptr, %struct.percpu_ref, %struct.completion, ptr, i32, ptr, i8, i32, %struct.kobject, ptr }
%struct.rtrs_path = type { %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, [255 x i8], %struct.uuid_t, ptr, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.delayed_work, i32, i32, i32, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.uuid_t = type { [16 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rtrs_srv_sess = type { %struct.list_head, i32, %struct.mutex, i32, %struct.mutex, %struct.uuid_t, %struct.refcount_struct, ptr, %struct.list_head, ptr, i32, ptr, %struct.device, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.146 }
%struct.anon.146 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rtrs_con = type { ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }

@ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rtrs_srv_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@rtrs_srv_create_path_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtrs_server L278: <%s>: kobject_init_and_add(): %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rtrs_srv_create_path_files\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c\00", [51 x i8] zeroinitializer }, align 32
@rtrs_srv_create_path_files._entry_ptr = internal global ptr @rtrs_srv_create_path_files._entry, section ".printk_index", align 4
@rtrs_srv_path_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rtrs_srv_path_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtrs_srv_create_path_files._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rtrs_server L283: <%s>: sysfs_create_group(): %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rtrs_srv_create_path_files._entry_ptr.6 = internal global ptr @rtrs_srv_create_path_files._entry.4, section ".printk_index", align 4
@rtrs_dev_class = external dso_local local_unnamed_addr global ptr, align 4
@rtrs_srv_create_once_sysfs_root_folders._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013rtrs_server L179: device_add(): %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rtrs_srv_create_once_sysfs_root_folders\00", [56 x i8] zeroinitializer }, align 32
@rtrs_srv_create_once_sysfs_root_folders._entry_ptr = internal global ptr @rtrs_srv_create_once_sysfs_root_folders._entry, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"paths\00", [26 x i8] zeroinitializer }, align 32
@rtrs_srv_create_once_sysfs_root_folders._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.3, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013rtrs_server L186: kobject_create_and_add(): %d\0A\00", [46 x i8] zeroinitializer }, align 32
@rtrs_srv_create_once_sysfs_root_folders._entry_ptr.12 = internal global ptr @rtrs_srv_create_once_sysfs_root_folders._entry.10, section ".printk_index", align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@rtrs_srv_path_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @rtrs_srv_hca_name_attr, ptr @rtrs_srv_hca_port_attr, ptr @rtrs_srv_src_addr_attr, ptr @rtrs_srv_dst_addr_attr, ptr @rtrs_srv_disconnect_attr, ptr null], [40 x i8] zeroinitializer }, align 32
@rtrs_srv_hca_name_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_srv_hca_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_srv_hca_port_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_srv_hca_port_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_srv_src_addr_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_srv_src_addr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_srv_dst_addr_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_srv_dst_addr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rtrs_srv_disconnect_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rtrs_srv_disconnect_show, ptr @rtrs_srv_disconnect_store }, [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_name\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_port\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"src_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dst_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"disconnect\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Usage: echo 1 > %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@rtrs_srv_disconnect_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013rtrs_server L47: <%s>: %s: invalid value: '%s'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rtrs_srv_disconnect_store\00", [38 x i8] zeroinitializer }, align 32
@rtrs_srv_disconnect_store._entry_ptr = internal global ptr @rtrs_srv_disconnect_store._entry, section ".printk_index", align 4
@rtrs_srv_disconnect_store._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016rtrs_server L54: <%s>: disconnect for path %s requested\0A\00", [37 x i8] zeroinitializer }, align 32
@rtrs_srv_disconnect_store._entry_ptr.27 = internal global ptr @rtrs_srv_disconnect_store._entry.25, section ".printk_index", align 4
@ktype_stats = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rtrs_srv_path_stats_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@rtrs_srv_create_stats_files._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtrs_server L239: <%s>: kobject_init_and_add(): %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rtrs_srv_create_stats_files\00", [36 x i8] zeroinitializer }, align 32
@rtrs_srv_create_stats_files._entry_ptr = internal global ptr @rtrs_srv_create_stats_files._entry, section ".printk_index", align 4
@rtrs_srv_stats_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rtrs_srv_stats_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rtrs_srv_create_stats_files._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rtrs_server L246: <%s>: sysfs_create_group(): %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rtrs_srv_create_stats_files._entry_ptr.33 = internal global ptr @rtrs_srv_create_stats_files._entry.31, section ".printk_index", align 4
@rtrs_srv_stats_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rdma_attr, ptr null], [24 x i8] zeroinitializer }, align 32
@rdma_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rdma_show, ptr @rdma_store }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rdma\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"ktype\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 24, i32 25 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 276, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 278, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [25 x i8] c"rtrs_srv_path_attr_group\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 138, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 283, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 179, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 183, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 186, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [20 x i8] c"rtrs_srv_path_attrs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 129, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"rtrs_srv_hca_name_attr\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 93, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant [23 x i8] c"rtrs_srv_hca_port_attr\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 79, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant [23 x i8] c"rtrs_srv_src_addr_attr\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 109, i32 30 }
@___asan_gen_.93 = private unnamed_addr constant [23 x i8] c"rtrs_srv_dst_addr_attr\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 126, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant [25 x i8] c"rtrs_srv_disconnect_attr\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 62, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 94, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 90, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 80, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 76, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 110, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 106, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 127, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 63, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 32, i32 25 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 45, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 46, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 54, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"ktype_stats\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 226, i32 25 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 237, i32 25 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 239, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"rtrs_srv_stats_attr_group\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 151, i32 37 }
@___asan_gen_.162 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 246, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [21 x i8] c"rtrs_srv_stats_attrs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 146, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant [10 x i8] c"rdma_attr\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [48 x i8] c"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 142, i32 1 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @rtrs_srv_create_once_sysfs_root_folders._entry, ptr @rtrs_srv_create_once_sysfs_root_folders._entry.10, ptr @rtrs_srv_create_once_sysfs_root_folders._entry_ptr, ptr @rtrs_srv_create_once_sysfs_root_folders._entry_ptr.12, ptr @rtrs_srv_create_path_files._entry, ptr @rtrs_srv_create_path_files._entry.4, ptr @rtrs_srv_create_path_files._entry_ptr, ptr @rtrs_srv_create_path_files._entry_ptr.6, ptr @rtrs_srv_create_stats_files._entry, ptr @rtrs_srv_create_stats_files._entry.31, ptr @rtrs_srv_create_stats_files._entry_ptr, ptr @rtrs_srv_create_stats_files._entry_ptr.33, ptr @rtrs_srv_disconnect_store._entry, ptr @rtrs_srv_disconnect_store._entry.25, ptr @rtrs_srv_disconnect_store._entry_ptr, ptr @rtrs_srv_disconnect_store._entry_ptr.27, ptr @ktype, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rtrs_srv_path_attr_group, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @rtrs_srv_path_attrs, ptr @rtrs_srv_hca_name_attr, ptr @rtrs_srv_hca_port_attr, ptr @rtrs_srv_src_addr_attr, ptr @rtrs_srv_dst_addr_attr, ptr @rtrs_srv_disconnect_attr, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @ktype_stats, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @rtrs_srv_stats_attr_group, ptr @.str.32, ptr @rtrs_srv_stats_attrs, ptr @rdma_attr, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_create_path_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_path_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_create_path_files._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_create_once_sysfs_root_folders._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_create_once_sysfs_root_folders._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_path_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_hca_name_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_hca_port_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_src_addr_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_dst_addr_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_disconnect_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_disconnect_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_disconnect_store._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ktype_stats to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_create_stats_files._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_stats_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_create_stats_files._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_stats_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_srv_create_path_files(ptr noundef %srv_path) local_unnamed_addr #0 align 64 {
entry:
  %str = alloca [255 x i8], align 1
  %path = alloca %struct.rtrs_addr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %srv1 = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 1
  %0 = ptrtoint ptr %srv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srv1, align 8
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %str) #4
  %2 = call ptr @memset(ptr %str, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #4
  %3 = getelementptr inbounds %struct.rtrs_addr, ptr %path, i32 0, i32 1
  %dst_addr = getelementptr inbounds %struct.rtrs_path, ptr %srv_path, i32 0, i32 1
  %4 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dst_addr, ptr %path, align 4
  %src_addr = getelementptr inbounds %struct.rtrs_path, ptr %srv_path, i32 0, i32 2
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %src_addr, ptr %3, align 4
  %call = call i32 @rtrs_addr_to_str(ptr noundef nonnull %path, ptr noundef nonnull %str, i32 noundef 255) #4
  %6 = ptrtoint ptr %srv1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srv1, align 8
  %paths_mutex.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %7, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %paths_mutex.i, i32 noundef 0) #4
  %dev_ref.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %dev_ref.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dev_ref.i, align 8
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %dev_ref.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @rtrs_dev_class to i32))
  %10 = load ptr, ptr @rtrs_dev_class, align 4
  %dev.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %7, i32 0, i32 12
  %class.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %7, i32 0, i32 12, i32 33
  %11 = ptrtoint ptr %class.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %class.i, align 4
  %sessname.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path, i32 0, i32 3
  %call.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef %sessname.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.rtrs_srv_create_once_sysfs_root_folders.exit.thread_crit_edge

if.end.i.rtrs_srv_create_once_sysfs_root_folders.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rtrs_srv_create_once_sysfs_root_folders.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %uevent_suppress.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %7, i32 0, i32 12, i32 0, i32 8
  %12 = ptrtoint ptr %uevent_suppress.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i.i = load i8, ptr %uevent_suppress.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, 8
  store i8 %bf.set.i.i, ptr %uevent_suppress.i.i, align 4
  %call8.i = call i32 @device_add(ptr noundef %dev.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end13.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call8.i) #7
  br label %rtrs_srv_create_once_sysfs_root_folders.exit.thread.sink.split

if.end13.i:                                       ; preds = %if.end5.i
  %call15.i = call ptr @kobject_create_and_add(ptr noundef nonnull @.str.9, ptr noundef %dev.i) #4
  %kobj_paths.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %7, i32 0, i32 14
  %13 = ptrtoint ptr %kobj_paths.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call15.i, ptr %kobj_paths.i, align 4
  %tobool17.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end26.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef -12) #7
  call void @device_del(ptr noundef %dev.i) #4
  br label %rtrs_srv_create_once_sysfs_root_folders.exit.thread.sink.split

if.end26.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %uevent_suppress.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i52.i = load i8, ptr %uevent_suppress.i.i, align 4
  %bf.clear.i53.i = and i8 %bf.load.i52.i, -9
  store i8 %bf.clear.i53.i, ptr %uevent_suppress.i.i, align 4
  %call30.i = call i32 @kobject_uevent(ptr noundef %dev.i, i32 noundef 0) #4
  br label %if.end

rtrs_srv_create_once_sysfs_root_folders.exit.thread.sink.split: ; preds = %if.then18.i, %do.end.i
  %err.0.i.ph.ph = phi i32 [ %call8.i, %do.end.i ], [ -12, %if.then18.i ]
  call void @put_device(ptr noundef %dev.i) #4
  br label %rtrs_srv_create_once_sysfs_root_folders.exit.thread

rtrs_srv_create_once_sysfs_root_folders.exit.thread: ; preds = %rtrs_srv_create_once_sysfs_root_folders.exit.thread.sink.split, %if.end.i.rtrs_srv_create_once_sysfs_root_folders.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ %call.i, %if.end.i.rtrs_srv_create_once_sysfs_root_folders.exit.thread_crit_edge ], [ %err.0.i.ph.ph, %rtrs_srv_create_once_sysfs_root_folders.exit.thread.sink.split ]
  call void @mutex_unlock(ptr noundef %paths_mutex.i) #4
  br label %cleanup

if.end:                                           ; preds = %if.end26.i, %entry.if.end_crit_edge
  call void @mutex_unlock(ptr noundef %paths_mutex.i) #4
  %kobj = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 14
  %kobj_paths = getelementptr inbounds %struct.rtrs_srv_sess, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %kobj_paths to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %kobj_paths, align 4
  %call7 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef nonnull @ktype, ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull %str) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %srv_path, i32 0, i32 3
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %sessname, i32 noundef %call7) #7
  br label %destroy_root

if.end12:                                         ; preds = %if.end
  %call14 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef nonnull @rtrs_srv_path_attr_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end24, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %sessname21 = getelementptr inbounds %struct.rtrs_path, ptr %srv_path, i32 0, i32 3
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %sessname21, i32 noundef %call14) #7
  br label %put_kobj

if.end24:                                         ; preds = %if.end12
  %stats.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 15
  %17 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stats.i, align 4
  %call.i55 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %18, ptr noundef nonnull @ktype_stats, ptr noundef %kobj, ptr noundef nonnull @.str.28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool.not.i56 = icmp eq i32 %call.i55, 0
  br i1 %tobool.not.i56, label %if.end.i59, label %do.end.i58

do.end.i58:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %sessname.i57 = getelementptr inbounds %struct.rtrs_path, ptr %srv_path, i32 0, i32 3
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %sessname.i57, i32 noundef %call.i55) #7
  br label %remove_group

if.end.i59:                                       ; preds = %if.end24
  %19 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %stats.i, align 4
  %call7.i = call i32 @sysfs_create_group(ptr noundef %20, ptr noundef nonnull @rtrs_srv_stats_attr_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end.i59.cleanup_crit_edge, label %do.end12.i

if.end.i59.cleanup_crit_edge:                     ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end12.i:                                       ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #6
  %sessname14.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path, i32 0, i32 3
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %sessname14.i, i32 noundef %call7.i) #7
  %21 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stats.i, align 4
  call void @kobject_del(ptr noundef %22) #4
  br label %remove_group

remove_group:                                     ; preds = %do.end12.i, %do.end.i58
  %retval.0.ph.i = phi i32 [ %call7.i, %do.end12.i ], [ %call.i55, %do.end.i58 ]
  %23 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stats.i, align 4
  call void @kobject_put(ptr noundef %24) #4
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef nonnull @rtrs_srv_path_attr_group) #4
  br label %put_kobj

put_kobj:                                         ; preds = %remove_group, %do.end19
  %err.0 = phi i32 [ %call14, %do.end19 ], [ %retval.0.ph.i, %remove_group ]
  call void @kobject_del(ptr noundef %kobj) #4
  br label %destroy_root

destroy_root:                                     ; preds = %put_kobj, %do.end
  %err.1 = phi i32 [ %call7, %do.end ], [ %err.0, %put_kobj ]
  call void @kobject_put(ptr noundef %kobj) #4
  call fastcc void @rtrs_srv_destroy_once_sysfs_root_folders(ptr noundef %srv_path)
  br label %cleanup

cleanup:                                          ; preds = %destroy_root, %if.end.i59.cleanup_crit_edge, %rtrs_srv_create_once_sysfs_root_folders.exit.thread
  %retval.0 = phi i32 [ %err.1, %destroy_root ], [ %err.0.i.ph, %rtrs_srv_create_once_sysfs_root_folders.exit.thread ], [ 0, %if.end.i59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #4
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %str) #4
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
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtrs_srv_destroy_once_sysfs_root_folders(ptr nocapture noundef readonly %srv_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %srv1 = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 1
  %0 = ptrtoint ptr %srv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srv1, align 8
  %paths_mutex = getelementptr inbounds %struct.rtrs_srv_sess, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %paths_mutex, i32 noundef 0) #4
  %dev_ref = getelementptr inbounds %struct.rtrs_srv_sess, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dev_ref to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_ref, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %dev_ref, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %kobj_paths = getelementptr inbounds %struct.rtrs_srv_sess, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %kobj_paths to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kobj_paths, align 4
  tail call void @kobject_del(ptr noundef %5) #4
  %6 = ptrtoint ptr %kobj_paths to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kobj_paths, align 4
  tail call void @kobject_put(ptr noundef %7) #4
  tail call void @mutex_unlock(ptr noundef %paths_mutex) #4
  %dev = getelementptr inbounds %struct.rtrs_srv_sess, ptr %1, i32 0, i32 12
  tail call void @device_del(ptr noundef %dev) #4
  tail call void @put_device(ptr noundef %dev) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev5 = getelementptr inbounds %struct.rtrs_srv_sess, ptr %1, i32 0, i32 12
  tail call void @put_device(ptr noundef %dev5) #4
  tail call void @mutex_unlock(ptr noundef %paths_mutex) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtrs_srv_destroy_path_files(ptr noundef %srv_path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state_in_sysfs = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 14, i32 8
  %0 = ptrtoint ptr %state_in_sysfs to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %state_in_sysfs, align 4
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %kobj = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 14
  %stats = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 15
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 4
  tail call void @kobject_del(ptr noundef %3) #4
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  tail call void @kobject_put(ptr noundef %5) #4
  tail call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef nonnull @rtrs_srv_path_attr_group) #4
  tail call void @kobject_put(ptr noundef %kobj) #4
  tail call fastcc void @rtrs_srv_destroy_once_sysfs_root_folders(ptr noundef %srv_path)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -892
  tail call void @kfree(ptr noundef %add.ptr) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_srv_hca_name_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %kobj, i32 -336
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 2
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.14, ptr noundef %name) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_srv_hca_port_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %con = getelementptr i8, ptr %kobj, i32 -356
  %0 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cm_id = getelementptr inbounds %struct.rtrs_con, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_id, align 4
  %port_num = getelementptr inbounds %struct.rdma_cm_id, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_num, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %page, ptr noundef nonnull @.str.16, i32 noundef %7) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_srv_src_addr_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_addr = getelementptr i8, ptr %kobj, i32 -884
  %call = tail call i32 @sockaddr_to_str(ptr noundef %dst_addr, ptr noundef %page, i32 noundef 4096) #4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %page, i32 noundef %call, ptr noundef nonnull @.str.18) #4
  %add = add i32 %call1, %call
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sockaddr_to_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_srv_dst_addr_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr = getelementptr i8, ptr %kobj, i32 -756
  %call = tail call i32 @sockaddr_to_str(ptr noundef %src_addr, ptr noundef %page, i32 noundef 4096) #4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %page, i32 noundef %call, ptr noundef nonnull @.str.18) #4
  %add = add i32 %call1, %call
  ret i32 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_srv_disconnect_show(ptr nocapture noundef readnone %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.21, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_srv_disconnect_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %str = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str) #4
  %0 = call ptr @memset(ptr %str, i32 255, i32 64)
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.22) #4
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sessname = getelementptr i8, ptr %kobj, i32 -628
  %1 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attr, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %sessname, ptr noundef %2, ptr noundef %buf) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %kobj, i32 -892
  %dst_addr = getelementptr i8, ptr %kobj, i32 -884
  %call7 = call i32 @sockaddr_to_str(ptr noundef %dst_addr, ptr noundef nonnull %str, i32 noundef 64) #4
  %sessname12 = getelementptr i8, ptr %kobj, i32 -628
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %sessname12, ptr noundef nonnull %str) #7
  %call18 = call zeroext i1 @sysfs_remove_file_self(ptr noundef %kobj, ptr noundef %attr) #4
  call void @close_path(ptr noundef %add.ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @close_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_path_stats_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_show(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtrs_srv_stats_rdma_to_str(ptr noundef %kobj, ptr noundef %page) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rdma_store(ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.22) #4
  br i1 %call, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.else:                                          ; preds = %entry
  %call2 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.35) #4
  br i1 %call2, label %if.else.if.end5_crit_edge, label %if.else.if.end5.thread_crit_edge

if.else.if.end5.thread_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.thread

if.else.if.end5_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.end5:                                          ; preds = %if.else.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call4 = tail call i32 @rtrs_srv_reset_rdma_stats(ptr noundef %kobj, i1 noundef zeroext %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call4
  br label %if.end5.thread

if.end5.thread:                                   ; preds = %if.end5, %if.else.if.end5.thread_crit_edge
  %0 = phi i32 [ -22, %if.else.if.end5.thread_crit_edge ], [ %spec.select, %if.end5 ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_srv_stats_rdma_to_str(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_srv_reset_rdma_stats(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !88}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 276, i32 8}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 278, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rtrs_srv_create_path_files._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @rtrs_srv_create_path_files._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 283, i32 3}
!10 = !{ptr @rtrs_srv_create_path_files._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @rtrs_srv_create_path_files._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 179, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rtrs_srv_create_once_sysfs_root_folders._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rtrs_srv_create_once_sysfs_root_folders._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 183, i32 43}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 186, i32 3}
!21 = !{ptr @rtrs_srv_create_once_sysfs_root_folders._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @rtrs_srv_create_once_sysfs_root_folders._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @ktype, !24, !"ktype", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 24, i32 25}
!25 = !{ptr @rtrs_srv_path_attr_group, !26, !"rtrs_srv_path_attr_group", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 138, i32 37}
!27 = !{ptr @rtrs_srv_path_attrs, !28, !"rtrs_srv_path_attrs", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 129, i32 26}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 94, i32 2}
!31 = !{ptr @rtrs_srv_hca_name_attr, !32, !"rtrs_srv_hca_name_attr", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 93, i32 30}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 90, i32 26}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 80, i32 2}
!37 = !{ptr @rtrs_srv_hca_port_attr, !38, !"rtrs_srv_hca_port_attr", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 79, i32 30}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 76, i32 26}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 110, i32 2}
!43 = !{ptr @rtrs_srv_src_addr_attr, !44, !"rtrs_srv_src_addr_attr", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 109, i32 30}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 106, i32 40}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 127, i32 2}
!49 = !{ptr @rtrs_srv_dst_addr_attr, !50, !"rtrs_srv_dst_addr_attr", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 126, i32 30}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 63, i32 2}
!53 = !{ptr @rtrs_srv_disconnect_attr, !54, !"rtrs_srv_disconnect_attr", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 62, i32 30}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 32, i32 25}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 45, i32 24}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 46, i32 3}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @rtrs_srv_disconnect_store._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @rtrs_srv_disconnect_store._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 54, i32 2}
!66 = !{ptr @rtrs_srv_disconnect_store._entry.25, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @rtrs_srv_disconnect_store._entry_ptr.27, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 237, i32 25}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 239, i32 3}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @rtrs_srv_create_stats_files._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @rtrs_srv_create_stats_files._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 246, i32 3}
!77 = !{ptr @rtrs_srv_create_stats_files._entry.31, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rtrs_srv_create_stats_files._entry_ptr.33, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @ktype_stats, !80, !"ktype_stats", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 226, i32 25}
!81 = !{ptr @rtrs_srv_stats_attr_group, !82, !"rtrs_srv_stats_attr_group", i1 false, i1 false}
!82 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 151, i32 37}
!83 = !{ptr @rtrs_srv_stats_attrs, !84, !"rtrs_srv_stats_attrs", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 146, i32 26}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv-sysfs.c", i32 142, i32 1}
!87 = !{ptr @rdma_attr, !86, !"rdma_attr", i1 false, i1 false}
!88 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
