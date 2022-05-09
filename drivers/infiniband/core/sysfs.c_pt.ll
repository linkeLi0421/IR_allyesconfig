; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/sysfs.c_pt.bc'
source_filename = "../drivers/infiniband/core/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ib_port_sysfs_get_ibdev_kobj\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_port_sysfs_get_ibdev_kobj\09\09\09\09"
module asm "\09.long\09__crc_ib_port_sysfs_get_ibdev_kobj\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_port_sysfs_get_ibdev_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_port_sysfs_get_ibdev_kobj\22\09\09\09\09\09"
module asm "__kstrtabns_ib_port_sysfs_get_ibdev_kobj:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_port_register_client_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_port_register_client_groups\09\09\09\09"
module asm "\09.long\09__crc_ib_port_register_client_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_port_register_client_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_port_register_client_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ib_port_register_client_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ib_port_unregister_client_groups\22, \22a\22\09"
module asm "\09.weak\09__crc_ib_port_unregister_client_groups\09\09\09\09"
module asm "\09.long\09__crc_ib_port_unregister_client_groups\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ib_port_unregister_client_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22ib_port_unregister_client_groups\22\09\09\09\09\09"
module asm "__kstrtabns_ib_port_unregister_client_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.ib_port_attribute = type { %struct.attribute, ptr, ptr }
%struct.port_table_attribute = type { %struct.ib_port_attribute, [8 x i8], i32, i16 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ib_port = type { %struct.kobject, ptr, ptr, ptr, [3 x %struct.attribute_group], [5 x ptr], i32, [0 x %struct.port_table_attribute] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hw_stats_device_data = type { %struct.attribute_group, ptr, [0 x %struct.hw_stats_device_attribute] }
%struct.hw_stats_device_attribute = type { %struct.device_attribute, ptr, ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.173, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
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
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rdma_hw_stats = type { %struct.mutex, i32, i32, ptr, ptr, i32, [0 x i64] }
%struct.rdma_stat_desc = type { ptr, i32, ptr }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.gid_attr_group = type { ptr, %struct.kobject, [2 x %struct.attribute_group], [3 x ptr], [0 x %struct.port_table_attribute] }
%struct.ib_class_port_info = type { i8, i8, i16, i32, [16 x i8], i32, i16, i16, i32, i32, [16 x i8], i32, i16, i16, i32, i32 }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.hw_stats_port_data = type { ptr, [0 x %struct.hw_stats_port_attribute] }
%struct.hw_stats_port_attribute = type { %struct.ib_port_attribute, ptr, ptr }
%struct.ib_device_modify = type { i64, [64 x i8] }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.ib_mad = type { %struct.ib_mad_hdr, [232 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_ib_port_sysfs_get_ibdev_kobj = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_port_sysfs_get_ibdev_kobj = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_port_sysfs_get_ibdev_kobj = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_port_sysfs_get_ibdev_kobj to i32), ptr @__kstrtab_ib_port_sysfs_get_ibdev_kobj, ptr @__kstrtabns_ib_port_sysfs_get_ibdev_kobj }, section "___ksymtab+ib_port_sysfs_get_ibdev_kobj", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/core/sysfs.c\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ib_setup_device_attrs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ib_setup_device_attrs.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lifespan\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"struct ib_device->groups is too small\00", [58 x i8] zeroinitializer }, align 32
@ib_dev_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_node_type, ptr @dev_attr_node_guid, ptr @dev_attr_sys_image_guid, ptr @dev_attr_fw_ver, ptr @dev_attr_node_desc, ptr null], [40 x i8] zeroinitializer }, align 32
@ib_dev_attr_group = dso_local constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ib_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_ib_port_register_client_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_port_register_client_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_port_register_client_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_port_register_client_groups to i32), ptr @__kstrtab_ib_port_register_client_groups, ptr @__kstrtabns_ib_port_register_client_groups }, section "___ksymtab+ib_port_register_client_groups", align 4
@__kstrtab_ib_port_unregister_client_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_ib_port_unregister_client_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_ib_port_unregister_client_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ib_port_unregister_client_groups to i32), ptr @__kstrtab_ib_port_unregister_client_groups, ptr @__kstrtabns_ib_port_unregister_client_groups }, section "___ksymtab+ib_port_unregister_client_groups", align 4
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hw_counters\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@dev_attr_node_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @node_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_node_guid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @node_guid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sys_image_guid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sys_image_guid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_ver = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fw_ver_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_node_desc = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @node_desc_show, ptr @node_desc_store }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_type\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CA\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"router\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RNIC\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"usNIC\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usNIC UDP\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"unspecified\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<unknown>\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_guid\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%04x:%04x:%04x:%04x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_image_guid\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fw_ver\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"node_desc\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%.64s\0A\00", [25 x i8] zeroinitializer }, align 32
@port_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @ib_port_release, ptr @port_sysfs_ops, ptr null, ptr @port_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gids\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pkeys\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@port_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @port_attr_show, ptr @port_attr_store }, [24 x i8] zeroinitializer }, align 32
@port_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @port_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@port_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @port_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@port_default_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @ib_port_attr_state, ptr @ib_port_attr_lid, ptr @ib_port_attr_lid_mask_count, ptr @ib_port_attr_sm_lid, ptr @ib_port_attr_sm_sl, ptr @ib_port_attr_cap_mask, ptr @ib_port_attr_rate, ptr @ib_port_attr_phys_state, ptr @ib_port_attr_link_layer, ptr null], [56 x i8] zeroinitializer }, align 32
@ib_port_attr_state = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ib_port_attr_lid = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ib_port_attr_lid_mask_count = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lid_mask_count_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ib_port_attr_sm_lid = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sm_lid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ib_port_attr_sm_sl = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sm_sl_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ib_port_attr_cap_mask = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cap_mask_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ib_port_attr_rate = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rate_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ib_port_attr_phys_state = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @phys_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@ib_port_attr_link_layer = internal global { %struct.ib_port_attribute, [36 x i8] } { %struct.ib_port_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @link_layer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@state_show.state_name = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NOP\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INIT\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ARMED\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACTIVE_DEFER\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%d: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lid\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lid_mask_count\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sm_lid\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sm_sl\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cap_mask\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" DDR\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" QDR\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" FDR10\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" FDR\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" EDR\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" HDR\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" NDR\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" SDR\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d%s Gb/sec (%dX%s)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c".5\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phys_state\00", [21 x i8] zeroinitializer }, align 32
@phys_state_to_str.phys_state_str = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.17, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64], [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Sleep\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Polling\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PortConfigurationTraining\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LinkUp\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LinkErrorRecovery\00", [46 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Phy Test\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"link_layer\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InfiniBand\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@alloc_port_table_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@setup_hw_port_stats.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@setup_hw_port_stats.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pma_group_ext = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.72, ptr null, ptr null, ptr @pma_attrs_ext, ptr null }, [44 x i8] zeroinitializer }, align 32
@pma_group_noietf = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.72, ptr null, ptr null, ptr @pma_attrs_noietf, ptr null }, [44 x i8] zeroinitializer }, align 32
@pma_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.72, ptr null, ptr null, ptr @pma_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"counters\00", [23 x i8] zeroinitializer }, align 32
@pma_attrs_ext = internal global { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @port_pma_attr_symbol_error, ptr @port_pma_attr_link_error_recovery, ptr @port_pma_attr_link_downed, ptr @port_pma_attr_port_rcv_errors, ptr @port_pma_attr_port_rcv_remote_physical_errors, ptr @port_pma_attr_port_rcv_switch_relay_errors, ptr @port_pma_attr_port_xmit_discards, ptr @port_pma_attr_port_xmit_constraint_errors, ptr @port_pma_attr_port_rcv_constraint_errors, ptr @port_pma_attr_local_link_integrity_errors, ptr @port_pma_attr_excessive_buffer_overrun_errors, ptr @port_pma_attr_VL15_dropped, ptr @port_pma_attr_ext_port_xmit_data, ptr @port_pma_attr_ext_port_rcv_data, ptr @port_pma_attr_ext_port_xmit_packets, ptr @port_pma_attr_port_xmit_wait, ptr @port_pma_attr_ext_port_rcv_packets, ptr @port_pma_attr_ext_unicast_rcv_packets, ptr @port_pma_attr_ext_unicast_xmit_packets, ptr @port_pma_attr_ext_multicast_rcv_packets, ptr @port_pma_attr_ext_multicast_xmit_packets, ptr null], [40 x i8] zeroinitializer }, align 32
@port_pma_attr_symbol_error = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 1048608, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_link_error_recovery = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 17301552, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_link_downed = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 34078776, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_rcv_errors = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 51380288, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_rcv_remote_physical_errors = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 68157520, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_rcv_switch_relay_errors = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 84934752, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_xmit_discards = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 101711984, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_xmit_constraint_errors = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 117964928, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_rcv_constraint_errors = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 134742152, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_local_link_integrity_errors = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 151257240, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_excessive_buffer_overrun_errors = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 168034460, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_VL15_dropped = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 185598128, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_ext_port_xmit_data = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 4194368, i16 29 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_ext_port_rcv_data = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 4194432, i16 29 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_ext_port_xmit_packets = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 4194496, i16 29 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_xmit_wait = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 2097472, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_ext_port_rcv_packets = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 4194560, i16 29 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_ext_unicast_rcv_packets = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.90, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 4194688, i16 29 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_ext_unicast_xmit_packets = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.91, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 4194624, i16 29 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_ext_multicast_rcv_packets = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 4194816, i16 29 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_ext_multicast_xmit_packets = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.93, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 4194752, i16 29 }, [52 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"symbol_error\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"link_error_recovery\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"link_downed\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_rcv_errors\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"port_rcv_remote_physical_errors\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"port_rcv_switch_relay_errors\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"port_xmit_discards\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port_xmit_constraint_errors\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"port_rcv_constraint_errors\00", [37 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"local_link_integrity_errors\00", [36 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"excessive_buffer_overrun_errors\00", [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VL15_dropped\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"port_xmit_data\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"port_rcv_data\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"port_xmit_packets\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"port_xmit_wait\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"port_rcv_packets\00", [47 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unicast_rcv_packets\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unicast_xmit_packets\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"multicast_rcv_packets\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"multicast_xmit_packets\00", [41 x i8] zeroinitializer }, align 32
@pma_attrs_noietf = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @port_pma_attr_symbol_error, ptr @port_pma_attr_link_error_recovery, ptr @port_pma_attr_link_downed, ptr @port_pma_attr_port_rcv_errors, ptr @port_pma_attr_port_rcv_remote_physical_errors, ptr @port_pma_attr_port_rcv_switch_relay_errors, ptr @port_pma_attr_port_xmit_discards, ptr @port_pma_attr_port_xmit_constraint_errors, ptr @port_pma_attr_port_rcv_constraint_errors, ptr @port_pma_attr_local_link_integrity_errors, ptr @port_pma_attr_excessive_buffer_overrun_errors, ptr @port_pma_attr_VL15_dropped, ptr @port_pma_attr_ext_port_xmit_data, ptr @port_pma_attr_ext_port_rcv_data, ptr @port_pma_attr_ext_port_xmit_packets, ptr @port_pma_attr_ext_port_rcv_packets, ptr @port_pma_attr_port_xmit_wait, ptr null], [56 x i8] zeroinitializer }, align 32
@pma_attrs = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @port_pma_attr_symbol_error, ptr @port_pma_attr_link_error_recovery, ptr @port_pma_attr_link_downed, ptr @port_pma_attr_port_rcv_errors, ptr @port_pma_attr_port_rcv_remote_physical_errors, ptr @port_pma_attr_port_rcv_switch_relay_errors, ptr @port_pma_attr_port_xmit_discards, ptr @port_pma_attr_port_xmit_constraint_errors, ptr @port_pma_attr_port_rcv_constraint_errors, ptr @port_pma_attr_local_link_integrity_errors, ptr @port_pma_attr_excessive_buffer_overrun_errors, ptr @port_pma_attr_VL15_dropped, ptr @port_pma_attr_port_xmit_data, ptr @port_pma_attr_port_rcv_data, ptr @port_pma_attr_port_xmit_packets, ptr @port_pma_attr_port_rcv_packets, ptr @port_pma_attr_port_xmit_wait, ptr null], [56 x i8] zeroinitializer }, align 32
@port_pma_attr_port_xmit_data = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 203423936, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_rcv_data = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 220201184, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_xmit_packets = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 236978432, i16 18 }, [52 x i8] zeroinitializer }, align 32
@port_pma_attr_port_rcv_packets = internal global { %struct.port_table_attribute, [52 x i8] } { %struct.port_table_attribute { %struct.ib_port_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pma_counter, ptr null }, [8 x i8] zeroinitializer, i32 253755680, i16 18 }, [52 x i8] zeroinitializer }, align 32
@gid_attr_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @ib_port_gid_attr_release, ptr @gid_attr_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ndevs\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"types\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gid_attrs\00", [22 x i8] zeroinitializer }, align 32
@gid_attr_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @gid_attr_show, ptr null }, [24 x i8] zeroinitializer }, align 32
@print_ndev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.97 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@switch.table.node_type_show = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.101 = internal global [9 x i64] [i64 7, i64 16, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128]
@__sancov_gen_cov_switch_values.102 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.103 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.104 = internal global [7 x i64] [i64 5, i64 8, i64 4, i64 8, i64 16, i64 32, i64 64]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 951, i32 7 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 966, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 976, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 977, i32 25 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 989, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [13 x i8] c"ib_dev_attrs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1389, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"ib_dev_attr_group\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1398, i32 30 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1422, i32 47 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 915, i32 21 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 831, i32 25 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 862, i32 25 }
@___asan_gen_.138 = private unnamed_addr constant [19 x i8] c"dev_attr_node_type\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"dev_attr_node_guid\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [24 x i8] c"dev_attr_sys_image_guid\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"dev_attr_fw_ver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"dev_attr_node_desc\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1319, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1316, i32 25 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1294, i32 10 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1296, i32 10 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1298, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1300, i32 10 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1302, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1304, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1306, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1308, i32 9 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1347, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1341, i32 25 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1333, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1387, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1385, i32 25 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1375, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1354, i32 25 }
@___asan_gen_.204 = private unnamed_addr constant [10 x i8] c"port_type\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 775, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1217, i32 31 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1224, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1248, i32 51 }
@___asan_gen_.216 = private unnamed_addr constant [15 x i8] c"port_sysfs_ops\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 141, i32 31 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c"port_default_groups\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [19 x i8] c"port_default_group\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 436, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [19 x i8] c"port_default_attrs\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 424, i32 26 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c"ib_port_attr_state\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"ib_port_attr_lid\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [28 x i8] c"ib_port_attr_lid_mask_count\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c"ib_port_attr_sm_lid\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [19 x i8] c"ib_port_attr_sm_sl\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [22 x i8] c"ib_port_attr_cap_mask\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [18 x i8] c"ib_port_attr_rate\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [24 x i8] c"ib_port_attr_phys_state\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [24 x i8] c"ib_port_attr_link_layer\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 414, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant [11 x i8] c"state_name\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 219, i32 21 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 220, i32 20 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 221, i32 21 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 222, i32 21 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 223, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 224, i32 22 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 225, i32 28 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 232, i32 25 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 236, i32 7 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 415, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 249, i32 25 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 416, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 262, i32 25 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 417, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 418, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 419, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 301, i32 25 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 420, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 308, i32 16 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 318, i32 11 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 322, i32 11 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 326, i32 11 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 330, i32 11 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 334, i32 11 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 338, i32 11 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 342, i32 11 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 347, i32 11 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 356, i32 25 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 357, i32 18 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 421, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant [15 x i8] c"phys_state_str\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 363, i32 21 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 365, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 366, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 367, i32 3 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 368, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 369, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 370, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 371, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 422, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 401, i32 12 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 404, i32 12 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 407, i32 12 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1115, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 498, i32 26 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 533, i32 25 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1063, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1073, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant [14 x i8] c"pma_group_ext\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 741, i32 37 }
@___asan_gen_.402 = private unnamed_addr constant [17 x i8] c"pma_group_noietf\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 746, i32 37 }
@___asan_gen_.405 = private unnamed_addr constant [10 x i8] c"pma_group\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 736, i32 37 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 742, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant [14 x i8] c"pma_attrs_ext\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 690, i32 26 }
@___asan_gen_.414 = private unnamed_addr constant [27 x i8] c"port_pma_attr_symbol_error\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [34 x i8] c"port_pma_attr_link_error_recovery\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [26 x i8] c"port_pma_attr_link_downed\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [30 x i8] c"port_pma_attr_port_rcv_errors\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [46 x i8] c"port_pma_attr_port_rcv_remote_physical_errors\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [43 x i8] c"port_pma_attr_port_rcv_switch_relay_errors\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [33 x i8] c"port_pma_attr_port_xmit_discards\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [42 x i8] c"port_pma_attr_port_xmit_constraint_errors\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [41 x i8] c"port_pma_attr_port_rcv_constraint_errors\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [42 x i8] c"port_pma_attr_local_link_integrity_errors\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [46 x i8] c"port_pma_attr_excessive_buffer_overrun_errors\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [27 x i8] c"port_pma_attr_VL15_dropped\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [33 x i8] c"port_pma_attr_ext_port_xmit_data\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [32 x i8] c"port_pma_attr_ext_port_rcv_data\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [36 x i8] c"port_pma_attr_ext_port_xmit_packets\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [29 x i8] c"port_pma_attr_port_xmit_wait\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [35 x i8] c"port_pma_attr_ext_port_rcv_packets\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [38 x i8] c"port_pma_attr_ext_unicast_rcv_packets\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [39 x i8] c"port_pma_attr_ext_unicast_xmit_packets\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [40 x i8] c"port_pma_attr_ext_multicast_rcv_packets\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [41 x i8] c"port_pma_attr_ext_multicast_xmit_packets\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 639, i32 8 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 640, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 641, i32 8 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 642, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 643, i32 8 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 644, i32 8 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 645, i32 8 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 646, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 647, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 648, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 649, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 650, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 660, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 661, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 662, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 655, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 663, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 665, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 664, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 667, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 666, i32 8 }
@___asan_gen_.540 = private unnamed_addr constant [17 x i8] c"pma_attrs_noietf\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 715, i32 26 }
@___asan_gen_.543 = private unnamed_addr constant [10 x i8] c"pma_attrs\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 669, i32 26 }
@___asan_gen_.546 = private unnamed_addr constant [29 x i8] c"port_pma_attr_port_xmit_data\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 651, i32 8 }
@___asan_gen_.549 = private unnamed_addr constant [28 x i8] c"port_pma_attr_port_rcv_data\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 652, i32 8 }
@___asan_gen_.552 = private unnamed_addr constant [32 x i8] c"port_pma_attr_port_xmit_packets\00", align 1
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 653, i32 8 }
@___asan_gen_.555 = private unnamed_addr constant [31 x i8] c"port_pma_attr_port_rcv_packets\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 654, i32 8 }
@___asan_gen_.558 = private unnamed_addr constant [14 x i8] c"gid_attr_type\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 781, i32 25 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1150, i32 31 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1159, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 1166, i32 56 }
@___asan_gen_.570 = private unnamed_addr constant [19 x i8] c"gid_attr_sysfs_ops\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 209, i32 31 }
@___asan_gen_.574 = private constant [35 x i8] c"../drivers/infiniband/core/sysfs.c\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.574, i32 444, i32 9 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 695, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.583 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.583, i32 723, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [28 x i8] c"switch.table.node_type_show\00", align 1
@llvm.compiler.used = appending global [164 x ptr] [ptr @__ksymtab_ib_port_register_client_groups, ptr @__ksymtab_ib_port_sysfs_get_ibdev_kobj, ptr @__ksymtab_ib_port_unregister_client_groups, ptr @.str, ptr @ib_setup_device_attrs.__key, ptr @ib_setup_device_attrs.__key.1, ptr @.str.2, ptr @.str.3, ptr @ib_dev_attrs, ptr @ib_dev_attr_group, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dev_attr_node_type, ptr @dev_attr_node_guid, ptr @dev_attr_sys_image_guid, ptr @dev_attr_fw_ver, ptr @dev_attr_node_desc, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @port_type, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @port_sysfs_ops, ptr @port_default_groups, ptr @port_default_group, ptr @port_default_attrs, ptr @ib_port_attr_state, ptr @ib_port_attr_lid, ptr @ib_port_attr_lid_mask_count, ptr @ib_port_attr_sm_lid, ptr @ib_port_attr_sm_sl, ptr @ib_port_attr_cap_mask, ptr @ib_port_attr_rate, ptr @ib_port_attr_phys_state, ptr @ib_port_attr_link_layer, ptr @.str.28, ptr @state_show.state_name, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @phys_state_to_str.phys_state_str, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @alloc_port_table_group.__key, ptr @.str.69, ptr @.str.70, ptr @setup_hw_port_stats.__key, ptr @setup_hw_port_stats.__key.71, ptr @pma_group_ext, ptr @pma_group_noietf, ptr @pma_group, ptr @.str.72, ptr @pma_attrs_ext, ptr @port_pma_attr_symbol_error, ptr @port_pma_attr_link_error_recovery, ptr @port_pma_attr_link_downed, ptr @port_pma_attr_port_rcv_errors, ptr @port_pma_attr_port_rcv_remote_physical_errors, ptr @port_pma_attr_port_rcv_switch_relay_errors, ptr @port_pma_attr_port_xmit_discards, ptr @port_pma_attr_port_xmit_constraint_errors, ptr @port_pma_attr_port_rcv_constraint_errors, ptr @port_pma_attr_local_link_integrity_errors, ptr @port_pma_attr_excessive_buffer_overrun_errors, ptr @port_pma_attr_VL15_dropped, ptr @port_pma_attr_ext_port_xmit_data, ptr @port_pma_attr_ext_port_rcv_data, ptr @port_pma_attr_ext_port_xmit_packets, ptr @port_pma_attr_port_xmit_wait, ptr @port_pma_attr_ext_port_rcv_packets, ptr @port_pma_attr_ext_unicast_rcv_packets, ptr @port_pma_attr_ext_unicast_xmit_packets, ptr @port_pma_attr_ext_multicast_rcv_packets, ptr @port_pma_attr_ext_multicast_xmit_packets, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @pma_attrs_noietf, ptr @pma_attrs, ptr @port_pma_attr_port_xmit_data, ptr @port_pma_attr_port_rcv_data, ptr @port_pma_attr_port_xmit_packets, ptr @port_pma_attr_port_rcv_packets, ptr @gid_attr_type, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @gid_attr_sysfs_ops, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @switch.table.node_type_show], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_setup_device_attrs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_setup_device_attrs.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_dev_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_node_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_node_guid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sys_image_guid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_ver to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_node_desc to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_default_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_lid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_lid_mask_count to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_sm_lid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_sm_sl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_cap_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_phys_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_port_attr_link_layer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_show.state_name to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phys_state_to_str.phys_state_str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_port_table_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw_port_stats.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_hw_port_stats.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma_group_ext to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma_group_noietf to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma_attrs_ext to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_symbol_error to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_link_error_recovery to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_link_downed to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_rcv_errors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_rcv_remote_physical_errors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_rcv_switch_relay_errors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_xmit_discards to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_xmit_constraint_errors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_rcv_constraint_errors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_local_link_integrity_errors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_excessive_buffer_overrun_errors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_VL15_dropped to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_ext_port_xmit_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_ext_port_rcv_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_ext_port_xmit_packets to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_xmit_wait to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_ext_port_rcv_packets to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_ext_unicast_rcv_packets to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_ext_unicast_xmit_packets to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_ext_multicast_rcv_packets to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_ext_multicast_xmit_packets to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma_attrs_noietf to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pma_attrs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_xmit_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_rcv_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_xmit_packets to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_pma_attr_port_rcv_packets to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gid_attr_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gid_attr_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.node_type_show to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ib_port_sysfs_get_ibdev_kobj(ptr nocapture noundef readonly %kobj, ptr nocapture noundef writeonly %port_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_num1 = getelementptr inbounds %struct.ib_port, ptr %kobj, i32 0, i32 6
  %0 = ptrtoint ptr %port_num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num1, align 4
  %2 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %port_num, align 4
  %ibdev = getelementptr inbounds %struct.ib_port, ptr %kobj, i32 0, i32 1
  %3 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ibdev, align 4
  ret ptr %4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_device_release_hw_stats(ptr noundef %data) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  tail call void @kfree(ptr noundef %1) #11
  %stats = getelementptr inbounds %struct.hw_stats_device_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats, align 4
  tail call void @rdma_free_hw_stats_struct(ptr noundef %3) #11
  tail call void @kfree(ptr noundef %data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_free_hw_stats_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_setup_device_attrs(ptr noundef %ibdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_hw_device_stats.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 92
  %0 = ptrtoint ptr %alloc_hw_device_stats.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alloc_hw_device_stats.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call3.i = tail call ptr %1(ptr noundef %ibdev) #11
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.then_crit_edge, label %if.end7.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.end7.i:                                        ; preds = %if.end.i
  %descs.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %call3.i, i32 0, i32 3
  %2 = ptrtoint ptr %descs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %descs.i, align 4
  %tobool8.not.i = icmp eq ptr %3, null
  br i1 %tobool8.not.i, label %if.end7.i.err_free_stats.i_crit_edge, label %lor.lhs.false.i

if.end7.i.err_free_stats.i_crit_edge:             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_stats.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %num_counters.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %call3.i, i32 0, i32 5
  %4 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i = icmp slt i32 %5, 1
  br i1 %cmp.i, label %lor.lhs.false.i.err_free_stats.i_crit_edge, label %if.end8.i.i.i

lor.lhs.false.i.err_free_stats.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_stats.i

if.end8.i.i.i:                                    ; preds = %lor.lhs.false.i
  %add.i = add nuw i32 %5, 1
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 36) #11
  %7 = extractvalue { i32, i1 } %6, 1
  %8 = extractvalue { i32, i1 } %6, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %8, i32 24) #11
  %retval.0.i.i = select i1 %7, i32 -1, i32 %spec.select.i.i
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i, i32 noundef 3520) #14
  %tobool14.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool14.not.i, label %if.end8.i.i.i.err_free_stats.i_crit_edge, label %if.end16.i

if.end8.i.i.i.err_free_stats.i_crit_edge:         ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_stats.i

if.end16.i:                                       ; preds = %if.end8.i.i.i
  %9 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_counters.i, align 4
  %add18.i = add i32 %10, 2
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add18.i, i32 4) #11
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !302

kcalloc.exit.thread.i:                            ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  %attrs48.i = getelementptr inbounds %struct.attribute_group, ptr %call9.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %attrs48.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %attrs48.i, align 4
  br label %err_free_data.i

if.end7.i.i.i:                                    ; preds = %if.end16.i
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #14
  %attrs.i = getelementptr inbounds %struct.attribute_group, ptr %call9.i.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i.i, ptr %attrs.i, align 4
  %tobool22.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool22.not.i, label %if.end7.i.i.i.err_free_data.i_crit_edge, label %alloc_hw_stats_device.exit

if.end7.i.i.i.err_free_data.i_crit_edge:          ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_data.i

err_free_data.i:                                  ; preds = %if.end7.i.i.i.err_free_data.i_crit_edge, %kcalloc.exit.thread.i
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i) #11
  br label %err_free_stats.i

err_free_stats.i:                                 ; preds = %err_free_data.i, %if.end8.i.i.i.err_free_stats.i_crit_edge, %lor.lhs.false.i.err_free_stats.i_crit_edge, %if.end7.i.err_free_stats.i_crit_edge
  tail call void @rdma_free_hw_stats_struct(ptr noundef nonnull %call3.i) #11
  br label %if.then

alloc_hw_stats_device.exit:                       ; preds = %if.end7.i.i.i
  %16 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.5, ptr %call9.i.i.i, align 128
  %stats26.i = getelementptr inbounds %struct.hw_stats_device_data, ptr %call9.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %stats26.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3.i, ptr %stats26.i, align 4
  %cmp.i215 = icmp ugt ptr %call9.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i215, label %alloc_hw_stats_device.exit.if.then_crit_edge, label %if.end5

alloc_hw_stats_device.exit.if.then_crit_edge:     ; preds = %alloc_hw_stats_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %alloc_hw_stats_device.exit.if.then_crit_edge, %err_free_stats.i, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i218 = phi ptr [ %call9.i.i.i, %alloc_hw_stats_device.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %err_free_stats.i ]
  %18 = ptrtoint ptr %retval.0.i218 to i32
  %cmp = icmp eq ptr %retval.0.i218, inttoptr (i32 -95 to ptr)
  %spec.select = select i1 %cmp, i32 0, i32 %18
  br label %cleanup

if.end5:                                          ; preds = %alloc_hw_stats_device.exit
  %hw_stats_data = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 23
  %19 = ptrtoint ptr %hw_stats_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9.i.i.i, ptr %hw_stats_data, align 8
  %get_hw_stats = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 94
  %20 = ptrtoint ptr %get_hw_stats to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_hw_stats, align 4
  %22 = ptrtoint ptr %stats26.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stats26.i, align 4
  %num_counters = getelementptr inbounds %struct.rdma_hw_stats, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_counters, align 4
  %call7 = tail call i32 %21(ptr noundef %ibdev, ptr noundef %23, i32 noundef 0, i32 noundef %25) #11
  %26 = ptrtoint ptr %stats26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stats26.i, align 4
  %num_counters9 = getelementptr inbounds %struct.rdma_hw_stats, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %num_counters9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_counters9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %29)
  %cmp10.not = icmp eq i32 %call7, %29
  br i1 %cmp10.not, label %if.end36, label %if.then11

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call7)
  %cmp12 = icmp sgt i32 %call7, -1
  br i1 %cmp12, label %do.end, label %if.then11.cleanup_crit_edge, !prof !302

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 951, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end36:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %timestamp = getelementptr inbounds %struct.rdma_hw_stats, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %timestamp to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %timestamp, align 4
  %32 = ptrtoint ptr %stats26.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %stats26.i, align 4
  %num_counters39219 = getelementptr inbounds %struct.rdma_hw_stats, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %num_counters39219 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_counters39219, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp40220 = icmp sgt i32 %35, 0
  br i1 %cmp40220, label %for.body.lr.ph, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end36
  %attrs94 = getelementptr inbounds %struct.attribute_group, ptr %call9.i.i.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %36 = phi ptr [ %33, %for.body.lr.ph ], [ %56, %for.inc.for.body_crit_edge ]
  %pos.0223 = phi i32 [ 0, %for.body.lr.ph ], [ %pos.1, %for.inc.for.body_crit_edge ]
  %i.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc96, %for.inc.for.body_crit_edge ]
  %opstat_skipped.0.off0221 = phi i1 [ false, %for.body.lr.ph ], [ %opstat_skipped.1.off0, %for.inc.for.body_crit_edge ]
  %descs = getelementptr inbounds %struct.rdma_hw_stats, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %descs, align 4
  %flags = getelementptr %struct.rdma_stat_desc, ptr %38, i32 %i.0222, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end44, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end44:                                         ; preds = %for.body
  br i1 %opstat_skipped.0.off0221, label %do.end62, label %if.end44.if.end68_crit_edge, !prof !302

if.end44.if.end68_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

do.end62:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 964, i32 noundef 9, ptr noundef null) #11
  br label %if.end68

if.end68:                                         ; preds = %do.end62, %if.end44.if.end68_crit_edge
  %arrayidx76 = getelementptr %struct.hw_stats_device_data, ptr %call9.i.i.i, i32 0, i32 2, i32 %pos.0223
  %key = getelementptr inbounds %struct.attribute, ptr %arrayidx76, i32 0, i32 3
  %41 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ib_setup_device_attrs.__key, ptr %key, align 4
  %42 = ptrtoint ptr %stats26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %stats26.i, align 4
  %descs83 = getelementptr inbounds %struct.rdma_hw_stats, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %descs83 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %descs83, align 4
  %arrayidx84 = getelementptr %struct.rdma_stat_desc, ptr %45, i32 %i.0222
  %46 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx84, align 4
  %48 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %arrayidx76, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %arrayidx76, i32 0, i32 1
  %49 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %arrayidx76, i32 0, i32 1
  %50 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @hw_stat_device_show, ptr %show, align 4
  %show91 = getelementptr %struct.hw_stats_device_data, ptr %call9.i.i.i, i32 0, i32 2, i32 %pos.0223, i32 1
  %51 = ptrtoint ptr %show91 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @show_hw_stats, ptr %show91, align 4
  %52 = ptrtoint ptr %attrs94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %attrs94, align 4
  %arrayidx95 = getelementptr ptr, ptr %53, i32 %pos.0223
  %54 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx76, ptr %arrayidx95, align 4
  %inc = add i32 %pos.0223, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end68, %for.body.for.inc_crit_edge
  %opstat_skipped.1.off0 = phi i1 [ %opstat_skipped.0.off0221, %if.end68 ], [ true, %for.body.for.inc_crit_edge ]
  %pos.1 = phi i32 [ %inc, %if.end68 ], [ %pos.0223, %for.body.for.inc_crit_edge ]
  %inc96 = add nuw nsw i32 %i.0222, 1
  %55 = ptrtoint ptr %stats26.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %stats26.i, align 4
  %num_counters39 = getelementptr inbounds %struct.rdma_hw_stats, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %num_counters39 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_counters39, align 4
  %cmp40 = icmp slt i32 %inc96, %58
  br i1 %cmp40, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end36.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %if.end36.for.end_crit_edge ], [ %pos.1, %for.inc.for.end_crit_edge ]
  %arrayidx98 = getelementptr %struct.hw_stats_device_data, ptr %call9.i.i.i, i32 0, i32 2, i32 %pos.0.lcssa
  %key102 = getelementptr inbounds %struct.attribute, ptr %arrayidx98, i32 0, i32 3
  %59 = ptrtoint ptr %key102 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ib_setup_device_attrs.__key.1, ptr %key102, align 4
  %60 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.2, ptr %arrayidx98, align 4
  %mode110 = getelementptr inbounds %struct.attribute, ptr %arrayidx98, i32 0, i32 1
  %61 = ptrtoint ptr %mode110 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 420, ptr %mode110, align 4
  %show112 = getelementptr inbounds %struct.device_attribute, ptr %arrayidx98, i32 0, i32 1
  %62 = ptrtoint ptr %show112 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @hw_stat_device_show, ptr %show112, align 4
  %show113 = getelementptr %struct.hw_stats_device_data, ptr %call9.i.i.i, i32 0, i32 2, i32 %pos.0.lcssa, i32 1
  %63 = ptrtoint ptr %show113 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @show_stats_lifespan, ptr %show113, align 4
  %store = getelementptr inbounds %struct.device_attribute, ptr %arrayidx98, i32 0, i32 2
  %64 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @hw_stat_device_store, ptr %store, align 4
  %store115 = getelementptr %struct.hw_stats_device_data, ptr %call9.i.i.i, i32 0, i32 2, i32 %pos.0.lcssa, i32 2
  %65 = ptrtoint ptr %store115 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @set_stats_lifespan, ptr %store115, align 4
  %attrs119 = getelementptr inbounds %struct.attribute_group, ptr %call9.i.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %attrs119 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %attrs119, align 4
  %arrayidx120 = getelementptr ptr, ptr %67, i32 %pos.0.lcssa
  %68 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %arrayidx98, ptr %arrayidx120, align 4
  %arrayidx124 = getelementptr %struct.ib_device, ptr %ibdev, i32 0, i32 14, i32 0
  %69 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx124, align 4
  %tobool125.not = icmp eq ptr %70, null
  br i1 %tobool125.not, label %for.end.if.then126_crit_edge, label %for.cond121

for.end.if.then126_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

for.cond121:                                      ; preds = %for.end
  %arrayidx124.1 = getelementptr %struct.ib_device, ptr %ibdev, i32 0, i32 14, i32 1
  %71 = ptrtoint ptr %arrayidx124.1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx124.1, align 4
  %tobool125.not.1 = icmp eq ptr %72, null
  br i1 %tobool125.not.1, label %for.cond121.if.then126_crit_edge, label %for.cond121.1

for.cond121.if.then126_crit_edge:                 ; preds = %for.cond121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

for.cond121.1:                                    ; preds = %for.cond121
  %arrayidx124.2 = getelementptr %struct.ib_device, ptr %ibdev, i32 0, i32 14, i32 2
  %73 = ptrtoint ptr %arrayidx124.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx124.2, align 4
  %tobool125.not.2 = icmp eq ptr %74, null
  br i1 %tobool125.not.2, label %for.cond121.1.if.then126_crit_edge, label %for.cond121.2

for.cond121.1.if.then126_crit_edge:               ; preds = %for.cond121.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

for.cond121.2:                                    ; preds = %for.cond121.1
  %arrayidx124.3 = getelementptr %struct.ib_device, ptr %ibdev, i32 0, i32 14, i32 3
  %75 = ptrtoint ptr %arrayidx124.3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx124.3, align 4
  %tobool125.not.3 = icmp eq ptr %76, null
  br i1 %tobool125.not.3, label %for.cond121.2.if.then126_crit_edge, label %for.cond121.3

for.cond121.2.if.then126_crit_edge:               ; preds = %for.cond121.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then126

for.cond121.3:                                    ; preds = %for.cond121.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 989, i32 noundef 9, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.then126:                                       ; preds = %for.cond121.2.if.then126_crit_edge, %for.cond121.1.if.then126_crit_edge, %for.cond121.if.then126_crit_edge, %for.end.if.then126_crit_edge
  %arrayidx124.lcssa = phi ptr [ %arrayidx124, %for.end.if.then126_crit_edge ], [ %arrayidx124.1, %for.cond121.if.then126_crit_edge ], [ %arrayidx124.2, %for.cond121.1.if.then126_crit_edge ], [ %arrayidx124.3, %for.cond121.2.if.then126_crit_edge ]
  %77 = ptrtoint ptr %arrayidx124.lcssa to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call9.i.i.i, ptr %arrayidx124.lcssa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then126, %for.cond121.3, %do.end, %if.then11.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then126 ], [ -22, %for.cond121.3 ], [ %spec.select, %if.then ], [ -22, %do.end ], [ %call7, %if.then11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_stat_device_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -1040
  %show = getelementptr inbounds %struct.hw_stats_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %hw_stats_data = getelementptr i8, ptr %dev, i32 1360
  %2 = ptrtoint ptr %hw_stats_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_stats_data, align 8
  %stats = getelementptr inbounds %struct.hw_stats_device_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  %attrs = getelementptr inbounds %struct.hw_stats_device_data, ptr %3, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %attr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %attrs to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %call = tail call i32 %1(ptr noundef %add.ptr3, ptr noundef %5, i32 noundef %sub.ptr.div, i32 noundef 0, ptr noundef %buf) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_hw_stats(ptr noundef %ibdev, ptr noundef %stats, i32 noundef %index, i32 noundef %port_num, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #11
  %timestamp.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 1
  %0 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timestamp.i, align 4
  %lifespan.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 2
  %2 = ptrtoint ptr %lifespan.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lifespan.i, align 8
  %add.i = add i32 %3, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %entry
  %get_hw_stats.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 94
  %5 = ptrtoint ptr %get_hw_stats.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_hw_stats.i, align 4
  %call.i = tail call i32 %6(ptr noundef %ibdev, ptr noundef %stats, i32 noundef %port_num, i32 noundef %index) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.unlock_crit_edge, label %if.end3.i

if.end.i.unlock_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end3.i:                                        ; preds = %if.end.i
  %num_counters.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 5
  %7 = ptrtoint ptr %num_counters.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_counters.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %8)
  %cmp4.i = icmp eq i32 %call.i, %8
  br i1 %cmp4.i, label %if.then5.i, label %if.end3.i.if.end_crit_edge

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %10 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %timestamp.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %if.end3.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i10 = tail call i64 @rdma_counter_get_hwstat_value(ptr noundef %ibdev, i32 noundef %port_num, i32 noundef %index) #11
  %arrayidx.i = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6, i32 %index
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx.i, align 8
  %add.i11 = add i64 %12, %call.i10
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, i64 noundef %add.i11) #11
  br label %unlock

unlock:                                           ; preds = %if.end, %if.end.i.unlock_crit_edge
  %ret.0 = phi i32 [ %call1.i, %if.end ], [ %call.i, %if.end.i.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %stats) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_stats_lifespan(ptr nocapture noundef readnone %ibdev, ptr noundef %stats, i32 noundef %index, i32 noundef %port_num, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #11
  %lifespan = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 2
  %0 = ptrtoint ptr %lifespan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lifespan, align 8
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %1) #11
  tail call void @mutex_unlock(ptr noundef %stats) #11
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %call) #11
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_stat_device_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -1040
  %store = getelementptr inbounds %struct.hw_stats_device_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %hw_stats_data = getelementptr i8, ptr %dev, i32 1360
  %2 = ptrtoint ptr %hw_stats_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_stats_data, align 8
  %stats = getelementptr inbounds %struct.hw_stats_device_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stats, align 4
  %attrs = getelementptr inbounds %struct.hw_stats_device_data, ptr %3, i32 0, i32 2
  %sub.ptr.lhs.cast = ptrtoint ptr %attr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %attrs to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %call = tail call i32 %1(ptr noundef %add.ptr3, ptr noundef %5, i32 noundef %sub.ptr.div, i32 noundef 0, ptr noundef %buf, i32 noundef %count) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_stats_lifespan(ptr nocapture noundef readnone %ibdev, ptr noundef %stats, i32 noundef %index, i32 noundef %port_num, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %msecs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msecs) #11
  %0 = ptrtoint ptr %msecs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msecs, align 4, !annotation !303
  %call = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %msecs) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %msecs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %msecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %2)
  %3 = icmp ugt i32 %2, 10000
  br i1 %3, label %if.end.cleanup_crit_edge, label %if.else.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %2) #11
  call void @mutex_lock_nested(ptr noundef %stats, i32 noundef 0) #11
  %lifespan = getelementptr inbounds %struct.rdma_hw_stats, ptr %stats, i32 0, i32 2
  %4 = ptrtoint ptr %lifespan to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2.i, ptr %lifespan, align 8
  call void @mutex_unlock(ptr noundef %stats) #11
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.else.i ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msecs) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ib_get_hw_stats_port(ptr nocapture noundef readonly %ibdev, i32 noundef %port_num) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 19
  %2 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  %3 = xor i8 %bf.load.i.i.i, -1
  %4 = lshr i8 %3, 7
  %.not.i.i = zext i8 %4 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %.not.i.i, i32 %port_num)
  %cmp.not.i = icmp ugt i32 %.not.i.i, %port_num
  br i1 %cmp.not.i, label %lor.lhs.false.return_crit_edge, label %land.rhs.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

land.rhs.i:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %land.rhs.i.rdma_is_port_valid.exit_crit_edge, label %cond.false.i.i

land.rhs.i.rdma_is_port_valid.exit_crit_edge:     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_is_port_valid.exit

cond.false.i.i:                                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 21
  %5 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_port_cnt.i.i, align 8
  br label %rdma_is_port_valid.exit

rdma_is_port_valid.exit:                          ; preds = %cond.false.i.i, %land.rhs.i.rdma_is_port_valid.exit_crit_edge
  %cond.i.i = phi i32 [ %6, %cond.false.i.i ], [ 0, %land.rhs.i.rdma_is_port_valid.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %port_num)
  %cmp2.i.not = icmp ult i32 %cond.i.i, %port_num
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.return_crit_edge, label %lor.lhs.false2

rdma_is_port_valid.exit.return_crit_edge:         ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

lor.lhs.false2:                                   ; preds = %rdma_is_port_valid.exit
  %sysfs = getelementptr %struct.ib_port_data, ptr %1, i32 %port_num, i32 9
  %7 = ptrtoint ptr %sysfs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sysfs, align 4
  %hw_stats_data = getelementptr inbounds %struct.ib_port, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %hw_stats_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_stats_data, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %lor.lhs.false2.return_crit_edge, label %if.end

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %rdma_is_port_valid.exit.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %12, %if.end ], [ null, %lor.lhs.false2.return_crit_edge ], [ null, %rdma_is_port_valid.exit.return_crit_edge ], [ null, %entry.return_crit_edge ], [ null, %lor.lhs.false.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_free_port_attrs(ptr noundef readonly %coredev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_list = getelementptr inbounds %struct.ib_core_device, ptr %coredev, i32 0, i32 3
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_list, align 8
  %cmp.not27 = icmp eq ptr %1, %port_list
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %destroy_port.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in28 = phi ptr [ %.pn, %destroy_port.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn.in28, i32 -4
  %2 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in28, align 4
  %gid_attr_group1.i = getelementptr i8, ptr %.pn.in28, i32 136
  %3 = ptrtoint ptr %gid_attr_group1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gid_attr_group1.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %for.body.destroy_gid_attrs.exit_crit_edge, label %if.end.i

for.body.destroy_gid_attrs.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_gid_attrs.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %kobj.i = getelementptr inbounds %struct.gid_attr_group, ptr %4, i32 0, i32 1
  %groups_list.i = getelementptr inbounds %struct.gid_attr_group, ptr %4, i32 0, i32 3
  tail call void @sysfs_remove_groups(ptr noundef %kobj.i, ptr noundef %groups_list.i) #11
  tail call void @kobject_del(ptr noundef %kobj.i) #11
  tail call void @kobject_put(ptr noundef %kobj.i) #11
  br label %destroy_gid_attrs.exit

destroy_gid_attrs.exit:                           ; preds = %if.end.i, %for.body.destroy_gid_attrs.exit_crit_edge
  %ibdev.i = getelementptr i8, ptr %.pn.in28, i32 132
  %5 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ibdev.i, align 4
  %7 = getelementptr inbounds %struct.ib_device, ptr %6, i32 0, i32 13
  %cmp.i = icmp eq ptr %7, %coredev
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %6, i32 0, i32 11
  %8 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port_data.i, align 8
  %tobool.not.i24 = icmp eq ptr %9, null
  br i1 %tobool.not.i24, label %destroy_gid_attrs.exit.if.end.i25_crit_edge, label %land.lhs.true.i

destroy_gid_attrs.exit.if.end.i25_crit_edge:      ; preds = %destroy_gid_attrs.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i25

land.lhs.true.i:                                  ; preds = %destroy_gid_attrs.exit
  %port_num.i = getelementptr i8, ptr %.pn.in28, i32 224
  %10 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_num.i, align 4
  %sysfs.i = getelementptr %struct.ib_port_data, ptr %9, i32 %11, i32 9
  %12 = ptrtoint ptr %sysfs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sysfs.i, align 4
  %cmp4.i = icmp eq ptr %13, %p.0
  br i1 %cmp4.i, label %if.then.i, label %land.lhs.true.i.if.end.i25_crit_edge

land.lhs.true.i.if.end.i25_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i25

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %sysfs.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %sysfs.i, align 4
  br label %if.end.i25

if.end.i25:                                       ; preds = %if.then.i, %land.lhs.true.i.if.end.i25_crit_edge, %destroy_gid_attrs.exit.if.end.i25_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i25.list_del.exit.i_crit_edge

if.end.i25.list_del.exit.i_crit_edge:             ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in28, i32 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in28, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i25.list_del.exit.i_crit_edge
  %21 = ptrtoint ptr %.pn.in28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in28, i32 4
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br i1 %cmp.i, label %if.then12.i, label %list_del.exit.i.destroy_port.exit_crit_edge

list_del.exit.i.destroy_port.exit_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %destroy_port.exit

if.then12.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ibdev.i, align 4
  %port_groups.i = getelementptr inbounds %struct.ib_device, ptr %24, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %port_groups.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_groups.i, align 4
  tail call void @sysfs_remove_groups(ptr noundef %p.0, ptr noundef %26) #11
  br label %destroy_port.exit

destroy_port.exit:                                ; preds = %if.then12.i, %list_del.exit.i.destroy_port.exit_crit_edge
  %groups_list.i26 = getelementptr i8, ptr %.pn.in28, i32 204
  tail call void @sysfs_remove_groups(ptr noundef %p.0, ptr noundef %groups_list.i26) #11
  tail call void @kobject_del(ptr noundef %p.0) #11
  tail call void @kobject_put(ptr noundef %p.0) #11
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %destroy_port.exit.for.end_crit_edge, label %destroy_port.exit.for.body_crit_edge

destroy_port.exit.for.body_crit_edge:             ; preds = %destroy_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

destroy_port.exit.for.end_crit_edge:              ; preds = %destroy_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %destroy_port.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %ports_kobj = getelementptr inbounds %struct.ib_core_device, ptr %coredev, i32 0, i32 2
  %27 = ptrtoint ptr %ports_kobj to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ports_kobj, align 4
  tail call void @kobject_put(ptr noundef %28) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_setup_port_attrs(ptr noundef %coredev) local_unnamed_addr #2 align 64 {
entry:
  %cpi.i.i = alloca %struct.ib_class_port_info, align 4
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %coredev, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %call2 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.4, ptr noundef %coredev) #11
  %ports_kobj = getelementptr inbounds %struct.ib_core_device, ptr %coredev, i32 0, i32 2
  %2 = ptrtoint ptr %ports_kobj to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %ports_kobj, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup20_crit_edge, label %if.end

entry.cleanup20_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

if.end:                                           ; preds = %entry
  %is_switch.i.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 19
  %3 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load.i.i = load i8, ptr %is_switch.i.i, align 4
  %4 = xor i8 %bf.load.i.i, -1
  %5 = lshr i8 %4, 7
  %.not.i = zext i8 %5 to i32
  %phys_port_cnt.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 21
  %gid_tbl_len.i = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %pkey_tbl_len.i = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 11
  %capability_mask.i.i = getelementptr inbounds %struct.ib_class_port_info, ptr %cpi.i.i, i32 0, i32 2
  %port_list.i = getelementptr inbounds %struct.ib_core_device, ptr %coredev, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.ib_core_device, ptr %coredev, i32 0, i32 3, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %bf.load.i.i38 = phi i8 [ %bf.load.i.i38.pr, %for.inc ], [ %bf.load.i.i, %if.end ]
  %port_num.0 = phi i32 [ %inc, %for.inc ], [ %.not.i, %if.end ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i38)
  %tobool.i.i = icmp slt i8 %bf.load.i.i38, 0
  br i1 %tobool.i.i, label %for.cond.rdma_end_port.exit_crit_edge, label %cond.false.i

for.cond.rdma_end_port.exit_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %rdma_end_port.exit

cond.false.i:                                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %phys_port_cnt.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phys_port_cnt.i, align 8
  br label %rdma_end_port.exit

rdma_end_port.exit:                               ; preds = %cond.false.i, %for.cond.rdma_end_port.exit_crit_edge
  %cond.i = phi i32 [ %7, %cond.false.i ], [ 0, %for.cond.rdma_end_port.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %port_num.0, i32 %cond.i)
  %cmp.not = icmp ugt i32 %port_num.0, %cond.i
  br i1 %cmp.not, label %rdma_end_port.exit.cleanup20_crit_edge, label %for.body

rdma_end_port.exit.cleanup20_crit_edge:           ; preds = %rdma_end_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup20

for.body:                                         ; preds = %rdma_end_port.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %8 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call6 = call i32 @ib_query_port(ptr noundef %1, i32 noundef %port_num.0, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %for.body.err_put_crit_edge

for.body.err_put_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end9:                                          ; preds = %for.body
  %9 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %owner.i, align 8
  %11 = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 13
  %cmp.i = icmp eq ptr %11, %coredev
  %12 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gid_tbl_len.i, align 8
  %14 = ptrtoint ptr %pkey_tbl_len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %pkey_tbl_len.i, align 8
  %conv.i = zext i16 %15 to i32
  %add.i = add i32 %13, %conv.i
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 44) #11
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %spec.select.i.i = call i32 @llvm.uadd.sat.i32(i32 %18, i32 232) #11
  %retval.0.i.i = select i1 %17, i32 -1, i32 %spec.select.i.i
  %call.i.i.i = call noalias ptr @kvmalloc_node(i32 noundef %retval.0.i.i, i32 noundef 3520, i32 noundef -1) #14
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %if.end9.if.then12_crit_edge, label %if.end.i

if.end9.if.then12_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.end.i:                                         ; preds = %if.end9
  %ibdev.i = getelementptr inbounds %struct.ib_port, ptr %call.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %ibdev.i, align 4
  %port_num4.i = getelementptr inbounds %struct.ib_port, ptr %call.i.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %port_num4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %port_num.0, ptr %port_num4.i, align 4
  call void @kobject_init(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull @port_type) #11
  %groups_list.i = getelementptr inbounds %struct.ib_port, ptr %call.i.i.i, i32 0, i32 5
  %groups.i = getelementptr inbounds %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4
  %attrs_list.i = getelementptr inbounds %struct.ib_port, ptr %call.i.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gid_tbl_len.i, align 8
  %add.i.i = add i32 %22, 1
  %23 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 4) #11
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %if.end.i.err_put.i_crit_edge, label %if.end7.i.i.i.i, !prof !302

if.end.i.err_put.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #14
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.err_put.i_crit_edge, label %for.cond.preheader.i.i

if.end7.i.i.i.i.err_put.i_crit_edge:              ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i

for.cond.preheader.i.i:                           ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp43.not.i.i = icmp eq i32 %22, 0
  br i1 %cmp43.not.i.i, label %for.cond.preheader.i.i.if.end10.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end10.i_crit_edge:      ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.044.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %name1.i.i = getelementptr %struct.port_table_attribute, ptr %attrs_list.i, i32 %i.044.i.i, i32 1
  %call2.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i.i, i32 noundef 8, ptr noundef nonnull @.str.27, i32 noundef %i.044.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2.i.i)
  %cmp3.i.i = icmp ugt i32 %call2.i.i, 7
  br i1 %cmp3.i.i, label %err.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.port_table_attribute, ptr %attrs_list.i, i32 %i.044.i.i
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @alloc_port_table_group.__key, ptr %key.i.i, align 4
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %name1.i.i, ptr %arrayidx.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 292, ptr %mode.i.i, align 4
  %show15.i.i = getelementptr inbounds %struct.ib_port_attribute, ptr %arrayidx.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %show15.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @show_port_gid, ptr %show15.i.i, align 4
  %index.i.i = getelementptr %struct.port_table_attribute, ptr %attrs_list.i, i32 %i.044.i.i, i32 2
  %30 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.044.i.i, ptr %index.i.i, align 4
  %arrayidx18.i.i = getelementptr ptr, ptr %call8.i.i.i.i, i32 %i.044.i.i
  %31 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx.i.i, ptr %arrayidx18.i.i, align 4
  %inc.i.i = add nuw i32 %i.044.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %22
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.end10.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end10.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

err.i.i:                                          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i) #11
  br label %err_put.i

if.end10.i:                                       ; preds = %for.inc.i.i.if.end10.i_crit_edge, %for.cond.preheader.i.i.if.end10.i_crit_edge
  %32 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.25, ptr %groups.i, align 4
  %attrs20.i.i = getelementptr inbounds %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4, i32 0, i32 3
  %33 = ptrtoint ptr %attrs20.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i.i.i, ptr %attrs20.i.i, align 4
  %incdec.ptr.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %groups_list.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %groups.i, ptr %groups_list.i, align 4
  %35 = ptrtoint ptr %pkey_tbl_len.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %pkey_tbl_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool14.not.i = icmp eq i16 %36, 0
  br i1 %tobool14.not.i, label %if.end10.i.if.end30.i_crit_edge, label %if.then15.i

if.end10.i.if.end30.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30.i

if.then15.i:                                      ; preds = %if.end10.i
  %arrayidx17.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %gid_tbl_len.i, align 8
  %add.ptr.i = getelementptr %struct.port_table_attribute, ptr %attrs_list.i, i32 %38
  %conv22.i = zext i16 %36 to i32
  %add.i162.i = shl nuw nsw i32 %conv22.i, 2
  %39 = add nuw nsw i32 %add.i162.i, 4
  %call8.i.i.i192.i = call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #14
  %tobool.not.i195.i = icmp eq ptr %call8.i.i.i192.i, null
  br i1 %tobool.not.i195.i, label %if.then15.i.err_put.i_crit_edge, label %if.then15.i.for.body.i204.i_crit_edge

if.then15.i.for.body.i204.i_crit_edge:            ; preds = %if.then15.i
  br label %for.body.i204.i

if.then15.i.err_put.i_crit_edge:                  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i

for.body.i204.i:                                  ; preds = %for.inc.i213.i.for.body.i204.i_crit_edge, %if.then15.i.for.body.i204.i_crit_edge
  %i.044.i200.i = phi i32 [ %inc.i211.i, %for.inc.i213.i.for.body.i204.i_crit_edge ], [ 0, %if.then15.i.for.body.i204.i_crit_edge ]
  %name1.i201.i = getelementptr %struct.port_table_attribute, ptr %add.ptr.i, i32 %i.044.i200.i, i32 1
  %call2.i202.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i201.i, i32 noundef 8, ptr noundef nonnull @.str.27, i32 noundef %i.044.i200.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2.i202.i)
  %cmp3.i203.i = icmp ugt i32 %call2.i202.i, 7
  br i1 %cmp3.i203.i, label %err.i216.i, label %for.inc.i213.i

for.inc.i213.i:                                   ; preds = %for.body.i204.i
  %arrayidx.i205.i = getelementptr %struct.port_table_attribute, ptr %add.ptr.i, i32 %i.044.i200.i
  %key.i206.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i205.i, i32 0, i32 3
  %40 = ptrtoint ptr %key.i206.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @alloc_port_table_group.__key, ptr %key.i206.i, align 4
  %41 = ptrtoint ptr %arrayidx.i205.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %name1.i201.i, ptr %arrayidx.i205.i, align 4
  %mode.i207.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i205.i, i32 0, i32 1
  %42 = ptrtoint ptr %mode.i207.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 292, ptr %mode.i207.i, align 4
  %show15.i208.i = getelementptr inbounds %struct.ib_port_attribute, ptr %arrayidx.i205.i, i32 0, i32 1
  %43 = ptrtoint ptr %show15.i208.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @show_port_pkey, ptr %show15.i208.i, align 4
  %index.i209.i = getelementptr %struct.port_table_attribute, ptr %add.ptr.i, i32 %i.044.i200.i, i32 2
  %44 = ptrtoint ptr %index.i209.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.044.i200.i, ptr %index.i209.i, align 4
  %arrayidx18.i210.i = getelementptr ptr, ptr %call8.i.i.i192.i, i32 %i.044.i200.i
  %45 = ptrtoint ptr %arrayidx18.i210.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %arrayidx.i205.i, ptr %arrayidx18.i210.i, align 4
  %inc.i211.i = add nuw i32 %i.044.i200.i, 1
  %exitcond.not.i212.i = icmp eq i32 %inc.i211.i, %conv22.i
  br i1 %exitcond.not.i212.i, label %if.end26.i, label %for.inc.i213.i.for.body.i204.i_crit_edge

for.inc.i213.i.for.body.i204.i_crit_edge:         ; preds = %for.inc.i213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i204.i

err.i216.i:                                       ; preds = %for.body.i204.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call8.i.i.i192.i) #11
  br label %err_put.i

if.end26.i:                                       ; preds = %for.inc.i213.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.26, ptr %arrayidx17.i, align 4
  %attrs20.i214.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4, i32 1, i32 3
  %47 = ptrtoint ptr %attrs20.i214.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i.i.i192.i, ptr %attrs20.i214.i, align 4
  %incdec.ptr29.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx17.i, ptr %incdec.ptr.i, align 4
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end26.i, %if.end10.i.if.end30.i_crit_edge
  %cur_group.0.i = phi ptr [ %incdec.ptr29.i, %if.end26.i ], [ %incdec.ptr.i, %if.end10.i.if.end30.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_num.0)
  %tobool31.not.i = icmp eq i32 %port_num.0, 0
  %cmp.not.i = xor i1 %cmp.i, true
  %brmerge.i = select i1 %tobool31.not.i, i1 true, i1 %cmp.not.i
  br i1 %brmerge.i, label %if.end30.i.if.end50.i_crit_edge, label %if.then34.i

if.end30.i.if.end50.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.then34.i:                                      ; preds = %if.end30.i
  %arrayidx36.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4, i32 2
  %49 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ibdev.i, align 4
  %alloc_hw_port_stats.i.i.i = getelementptr inbounds %struct.ib_device, ptr %50, i32 0, i32 1, i32 93
  %51 = ptrtoint ptr %alloc_hw_port_stats.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %alloc_hw_port_stats.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.then34.i.if.then.i.i_crit_edge, label %if.end.i.i.i

if.then34.i.if.then.i.i_crit_edge:                ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end.i.i.i:                                     ; preds = %if.then34.i
  %53 = ptrtoint ptr %port_num4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %port_num4.i, align 4
  %call5.i.i.i = call ptr %52(ptr noundef %50, i32 noundef %54) #11
  %tobool6.not.i.i.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool6.not.i.i.i, label %if.end.i.i.i.if.then.i.i_crit_edge, label %if.end9.i.i.i

if.end.i.i.i.if.then.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end9.i.i.i:                                    ; preds = %if.end.i.i.i
  %descs.i.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %call5.i.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %descs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %descs.i.i.i, align 4
  %tobool10.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool10.not.i.i.i, label %if.end9.i.i.i.err_free_stats.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end9.i.i.i.err_free_stats.i.i.i_crit_edge:     ; preds = %if.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_stats.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end9.i.i.i
  %num_counters.i.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %call5.i.i.i, i32 0, i32 5
  %57 = ptrtoint ptr %num_counters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_counters.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp.i.i.i = icmp slt i32 %58, 1
  br i1 %cmp.i.i.i, label %lor.lhs.false.i.i.i.err_free_stats.i.i.i_crit_edge, label %if.end8.i.i.i.i244.i

lor.lhs.false.i.i.i.err_free_stats.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_stats.i.i.i

if.end8.i.i.i.i244.i:                             ; preds = %lor.lhs.false.i.i.i
  %add.i.i.i = add nuw i32 %58, 1
  %59 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i.i, i32 36) #11
  %60 = extractvalue { i32, i1 } %59, 1
  %61 = extractvalue { i32, i1 } %59, 0
  %spec.select.i.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %61, i32 4) #11
  %retval.0.i.i.i219.i = select i1 %60, i32 -1, i32 %spec.select.i.i.i.i
  %call9.i.i.i.i243.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i219.i, i32 noundef 3520) #14
  %tobool16.not.i.i.i = icmp eq ptr %call9.i.i.i.i243.i, null
  br i1 %tobool16.not.i.i.i, label %if.end8.i.i.i.i244.i.err_free_stats.i.i.i_crit_edge, label %if.end18.i.i.i

if.end8.i.i.i.i244.i.err_free_stats.i.i.i_crit_edge: ; preds = %if.end8.i.i.i.i244.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_stats.i.i.i

if.end18.i.i.i:                                   ; preds = %if.end8.i.i.i.i244.i
  %62 = ptrtoint ptr %num_counters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_counters.i.i.i, align 4
  %add20.i.i.i = add i32 %63, 2
  %64 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add20.i.i.i, i32 4) #11
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %kcalloc.exit.thread.i.i.i, label %if.end7.i.i.i.i.i, !prof !302

kcalloc.exit.thread.i.i.i:                        ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %attrs49.i.i.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4, i32 2, i32 3
  %66 = ptrtoint ptr %attrs49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %attrs49.i.i.i, align 4
  br label %err_free_data.i.i.i

if.end7.i.i.i.i.i:                                ; preds = %if.end18.i.i.i
  %67 = extractvalue { i32, i1 } %64, 0
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #14
  %attrs.i.i.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4, i32 2, i32 3
  %68 = ptrtoint ptr %attrs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call8.i.i.i.i.i, ptr %attrs.i.i.i, align 4
  %tobool23.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool23.not.i.i.i, label %if.end7.i.i.i.i.i.err_free_data.i.i.i_crit_edge, label %alloc_hw_stats_port.exit.i.i

if.end7.i.i.i.i.i.err_free_data.i.i.i_crit_edge:  ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free_data.i.i.i

err_free_data.i.i.i:                              ; preds = %if.end7.i.i.i.i.i.err_free_data.i.i.i_crit_edge, %kcalloc.exit.thread.i.i.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i243.i) #11
  br label %err_free_stats.i.i.i

err_free_stats.i.i.i:                             ; preds = %err_free_data.i.i.i, %if.end8.i.i.i.i244.i.err_free_stats.i.i.i_crit_edge, %lor.lhs.false.i.i.i.err_free_stats.i.i.i_crit_edge, %if.end9.i.i.i.err_free_stats.i.i.i_crit_edge
  call void @rdma_free_hw_stats_struct(ptr noundef nonnull %call5.i.i.i) #11
  br label %if.then.i.i

alloc_hw_stats_port.exit.i.i:                     ; preds = %if.end7.i.i.i.i.i
  %69 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.5, ptr %arrayidx36.i, align 4
  %70 = ptrtoint ptr %call9.i.i.i.i243.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call5.i.i.i, ptr %call9.i.i.i.i243.i, align 128
  %cmp.i164.i.i = icmp ugt ptr %call9.i.i.i.i243.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164.i.i, label %alloc_hw_stats_port.exit.i.i.if.then.i.i_crit_edge, label %if.end.i.i

alloc_hw_stats_port.exit.i.i.if.then.i.i_crit_edge: ; preds = %alloc_hw_stats_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %alloc_hw_stats_port.exit.i.i.if.then.i.i_crit_edge, %err_free_stats.i.i.i, %if.end.i.i.i.if.then.i.i_crit_edge, %if.then34.i.if.then.i.i_crit_edge
  %retval.0.i167.i.i = phi ptr [ %call9.i.i.i.i243.i, %alloc_hw_stats_port.exit.i.i.if.then.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.i.if.then.i.i_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.then34.i.if.then.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %err_free_stats.i.i.i ]
  %71 = ptrtoint ptr %retval.0.i167.i.i to i32
  br label %setup_hw_port_stats.exit.i

if.end.i.i:                                       ; preds = %alloc_hw_stats_port.exit.i.i
  %72 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ibdev.i, align 4
  %get_hw_stats.i.i = getelementptr inbounds %struct.ib_device, ptr %73, i32 0, i32 1, i32 94
  %74 = ptrtoint ptr %get_hw_stats.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %get_hw_stats.i.i, align 4
  %76 = ptrtoint ptr %port_num4.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port_num4.i, align 4
  %78 = ptrtoint ptr %num_counters.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_counters.i.i.i, align 4
  %call5.i.i = call i32 %75(ptr noundef %73, ptr noundef nonnull %call5.i.i.i, i32 noundef %77, i32 noundef %79) #11
  %80 = ptrtoint ptr %call9.i.i.i.i243.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call9.i.i.i.i243.i, align 128
  %num_counters7.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %81, i32 0, i32 5
  %82 = ptrtoint ptr %num_counters7.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_counters7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.i, i32 %83)
  %cmp.not.i.i = icmp eq i32 %call5.i.i, %83
  br i1 %cmp.not.i.i, label %if.end33.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5.i.i)
  %cmp9.i.i = icmp sgt i32 %call5.i.i, -1
  br i1 %cmp9.i.i, label %setup_hw_port_stats.exit.thread.i, label %if.then8.i.i.setup_hw_port_stats.exit.i_crit_edge, !prof !302

if.then8.i.i.setup_hw_port_stats.exit.i_crit_edge: ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_hw_port_stats.exit.i

setup_hw_port_stats.exit.thread.i:                ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1048, i32 noundef 9, ptr noundef null) #11
  br label %err_put.i

if.end33.i.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %84 = load volatile i32, ptr @jiffies, align 128
  %timestamp.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %81, i32 0, i32 1
  %85 = ptrtoint ptr %timestamp.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %timestamp.i.i, align 4
  %86 = ptrtoint ptr %call9.i.i.i.i243.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call9.i.i.i.i243.i, align 128
  %num_counters36168.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %num_counters36168.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_counters36168.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp37169.i.i = icmp sgt i32 %89, 0
  br i1 %cmp37169.i.i, label %for.body.lr.ph.i.i, label %if.end33.i.i.setup_hw_port_stats.exit.thread265.i_crit_edge

if.end33.i.i.setup_hw_port_stats.exit.thread265.i_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_hw_port_stats.exit.thread265.i

for.body.lr.ph.i.i:                               ; preds = %if.end33.i.i
  %attrs91.i.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4, i32 2, i32 3
  br label %for.body.i246.i

for.body.i246.i:                                  ; preds = %for.inc.i250.i.for.body.i246.i_crit_edge, %for.body.lr.ph.i.i
  %90 = phi ptr [ %87, %for.body.lr.ph.i.i ], [ %110, %for.inc.i250.i.for.body.i246.i_crit_edge ]
  %pos.0172.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %pos.1.i.i, %for.inc.i250.i.for.body.i246.i_crit_edge ]
  %i.0171.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc93.i.i, %for.inc.i250.i.for.body.i246.i_crit_edge ]
  %opstat_skipped.0.off0170.i.i = phi i1 [ false, %for.body.lr.ph.i.i ], [ %opstat_skipped.1.off0.i.i, %for.inc.i250.i.for.body.i246.i_crit_edge ]
  %descs.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %descs.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %descs.i.i, align 4
  %flags.i.i = getelementptr %struct.rdma_stat_desc, ptr %92, i32 %i.0171.i.i, i32 1
  %93 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool39.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool39.not.i.i, label %if.end41.i.i, label %for.body.i246.i.for.inc.i250.i_crit_edge

for.body.i246.i.for.inc.i250.i_crit_edge:         ; preds = %for.body.i246.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i250.i

if.end41.i.i:                                     ; preds = %for.body.i246.i
  br i1 %opstat_skipped.0.off0170.i.i, label %do.end59.i.i, label %if.end41.i.i.if.end65.i.i_crit_edge, !prof !302

if.end41.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end65.i.i

do.end59.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1061, i32 noundef 9, ptr noundef null) #11
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %do.end59.i.i, %if.end41.i.i.if.end65.i.i_crit_edge
  %arrayidx73.i.i = getelementptr %struct.hw_stats_port_data, ptr %call9.i.i.i.i243.i, i32 0, i32 1, i32 %pos.0172.i.i
  %key.i247.i = getelementptr inbounds %struct.attribute, ptr %arrayidx73.i.i, i32 0, i32 3
  %95 = ptrtoint ptr %key.i247.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @setup_hw_port_stats.__key, ptr %key.i247.i, align 4
  %96 = ptrtoint ptr %call9.i.i.i.i243.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %call9.i.i.i.i243.i, align 128
  %descs80.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %descs80.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %descs80.i.i, align 4
  %arrayidx81.i.i = getelementptr %struct.rdma_stat_desc, ptr %99, i32 %i.0171.i.i
  %100 = ptrtoint ptr %arrayidx81.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx81.i.i, align 4
  %102 = ptrtoint ptr %arrayidx73.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %101, ptr %arrayidx73.i.i, align 4
  %mode.i248.i = getelementptr inbounds %struct.attribute, ptr %arrayidx73.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %mode.i248.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 292, ptr %mode.i248.i, align 4
  %show.i.i = getelementptr inbounds %struct.ib_port_attribute, ptr %arrayidx73.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %show.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @hw_stat_port_show, ptr %show.i.i, align 4
  %show88.i.i = getelementptr %struct.hw_stats_port_data, ptr %call9.i.i.i.i243.i, i32 0, i32 1, i32 %pos.0172.i.i, i32 1
  %105 = ptrtoint ptr %show88.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @show_hw_stats, ptr %show88.i.i, align 4
  %106 = ptrtoint ptr %attrs91.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %attrs91.i.i, align 4
  %arrayidx92.i.i = getelementptr ptr, ptr %107, i32 %pos.0172.i.i
  %108 = ptrtoint ptr %arrayidx92.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %arrayidx73.i.i, ptr %arrayidx92.i.i, align 4
  %inc.i249.i = add i32 %pos.0172.i.i, 1
  br label %for.inc.i250.i

for.inc.i250.i:                                   ; preds = %if.end65.i.i, %for.body.i246.i.for.inc.i250.i_crit_edge
  %opstat_skipped.1.off0.i.i = phi i1 [ %opstat_skipped.0.off0170.i.i, %if.end65.i.i ], [ true, %for.body.i246.i.for.inc.i250.i_crit_edge ]
  %pos.1.i.i = phi i32 [ %inc.i249.i, %if.end65.i.i ], [ %pos.0172.i.i, %for.body.i246.i.for.inc.i250.i_crit_edge ]
  %inc93.i.i = add nuw nsw i32 %i.0171.i.i, 1
  %109 = ptrtoint ptr %call9.i.i.i.i243.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call9.i.i.i.i243.i, align 128
  %num_counters36.i.i = getelementptr inbounds %struct.rdma_hw_stats, ptr %110, i32 0, i32 5
  %111 = ptrtoint ptr %num_counters36.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %num_counters36.i.i, align 4
  %cmp37.i.i = icmp slt i32 %inc93.i.i, %112
  br i1 %cmp37.i.i, label %for.inc.i250.i.for.body.i246.i_crit_edge, label %for.inc.i250.i.setup_hw_port_stats.exit.thread265.i_crit_edge

for.inc.i250.i.setup_hw_port_stats.exit.thread265.i_crit_edge: ; preds = %for.inc.i250.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_hw_port_stats.exit.thread265.i

for.inc.i250.i.for.body.i246.i_crit_edge:         ; preds = %for.inc.i250.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i246.i

setup_hw_port_stats.exit.thread265.i:             ; preds = %for.inc.i250.i.setup_hw_port_stats.exit.thread265.i_crit_edge, %if.end33.i.i.setup_hw_port_stats.exit.thread265.i_crit_edge
  %pos.0.lcssa.i.i = phi i32 [ 0, %if.end33.i.i.setup_hw_port_stats.exit.thread265.i_crit_edge ], [ %pos.1.i.i, %for.inc.i250.i.setup_hw_port_stats.exit.thread265.i_crit_edge ]
  %arrayidx95.i.i = getelementptr %struct.hw_stats_port_data, ptr %call9.i.i.i.i243.i, i32 0, i32 1, i32 %pos.0.lcssa.i.i
  %key99.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx95.i.i, i32 0, i32 3
  %113 = ptrtoint ptr %key99.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @setup_hw_port_stats.__key.71, ptr %key99.i.i, align 4
  %114 = ptrtoint ptr %arrayidx95.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @.str.2, ptr %arrayidx95.i.i, align 4
  %mode107.i.i = getelementptr inbounds %struct.attribute, ptr %arrayidx95.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %mode107.i.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 420, ptr %mode107.i.i, align 4
  %show109.i.i = getelementptr inbounds %struct.ib_port_attribute, ptr %arrayidx95.i.i, i32 0, i32 1
  %116 = ptrtoint ptr %show109.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @hw_stat_port_show, ptr %show109.i.i, align 4
  %show110.i.i = getelementptr %struct.hw_stats_port_data, ptr %call9.i.i.i.i243.i, i32 0, i32 1, i32 %pos.0.lcssa.i.i, i32 1
  %117 = ptrtoint ptr %show110.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @show_stats_lifespan, ptr %show110.i.i, align 4
  %store.i.i = getelementptr inbounds %struct.ib_port_attribute, ptr %arrayidx95.i.i, i32 0, i32 2
  %118 = ptrtoint ptr %store.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @hw_stat_port_store, ptr %store.i.i, align 4
  %store112.i.i = getelementptr %struct.hw_stats_port_data, ptr %call9.i.i.i.i243.i, i32 0, i32 1, i32 %pos.0.lcssa.i.i, i32 2
  %119 = ptrtoint ptr %store112.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @set_stats_lifespan, ptr %store112.i.i, align 4
  %attrs115.i.i = getelementptr %struct.ib_port, ptr %call.i.i.i, i32 0, i32 4, i32 2, i32 3
  %120 = ptrtoint ptr %attrs115.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %attrs115.i.i, align 4
  %arrayidx116.i.i = getelementptr ptr, ptr %121, i32 %pos.0.lcssa.i.i
  %122 = ptrtoint ptr %arrayidx116.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %arrayidx95.i.i, ptr %arrayidx116.i.i, align 4
  %hw_stats_data.i.i = getelementptr inbounds %struct.ib_port, ptr %call.i.i.i, i32 0, i32 3
  %123 = ptrtoint ptr %hw_stats_data.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call9.i.i.i.i243.i, ptr %hw_stats_data.i.i, align 4
  br label %if.then45.i

setup_hw_port_stats.exit.i:                       ; preds = %if.then8.i.i.setup_hw_port_stats.exit.i_crit_edge, %if.then.i.i
  %retval.0.i252.i = phi i32 [ %71, %if.then.i.i ], [ %call5.i.i, %if.then8.i.i.setup_hw_port_stats.exit.i_crit_edge ]
  %124 = zext i32 %retval.0.i252.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i252.i, label %setup_hw_port_stats.exit.i.err_put.i_crit_edge [
    i32 0, label %setup_hw_port_stats.exit.i.if.then45.i_crit_edge
    i32 -95, label %setup_hw_port_stats.exit.i.if.end50.i_crit_edge
  ]

setup_hw_port_stats.exit.i.if.end50.i_crit_edge:  ; preds = %setup_hw_port_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

setup_hw_port_stats.exit.i.if.then45.i_crit_edge: ; preds = %setup_hw_port_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45.i

setup_hw_port_stats.exit.i.err_put.i_crit_edge:   ; preds = %setup_hw_port_stats.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i

if.then45.i:                                      ; preds = %setup_hw_port_stats.exit.i.if.then45.i_crit_edge, %setup_hw_port_stats.exit.thread265.i
  %incdec.ptr48.i = getelementptr ptr, ptr %cur_group.0.i, i32 1
  %125 = ptrtoint ptr %cur_group.0.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %arrayidx36.i, ptr %cur_group.0.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.then45.i, %setup_hw_port_stats.exit.i.if.end50.i_crit_edge, %if.end30.i.if.end50.i_crit_edge
  %cur_group.1.i = phi ptr [ %incdec.ptr48.i, %if.then45.i ], [ %cur_group.0.i, %if.end30.i.if.end50.i_crit_edge ], [ %cur_group.0.i, %setup_hw_port_stats.exit.i.if.end50.i_crit_edge ]
  %process_mad.i = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 1, i32 14
  %126 = ptrtoint ptr %process_mad.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %process_mad.i, align 4
  %tobool51.not.i = icmp eq ptr %127, null
  %brmerge158.i = select i1 %tobool51.not.i, i1 true, i1 %cmp.not.i
  br i1 %brmerge158.i, label %if.end50.i.if.end58.i_crit_edge, label %if.then55.i

if.end50.i.if.end58.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58.i

if.then55.i:                                      ; preds = %if.end50.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %cpi.i.i) #11
  %128 = call ptr @memset(ptr %cpi.i.i, i32 255, i32 72)
  %call.i.i = call fastcc i32 @get_perf_mad(ptr noundef %10, i32 noundef %port_num.0, i16 noundef zeroext 1, ptr noundef nonnull %cpi.i.i, i32 noundef 40, i32 noundef 72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i.i, label %if.then.i255.i, label %if.then55.i.if.end8.i.i_crit_edge

if.then55.i.if.end8.i.i_crit_edge:                ; preds = %if.then55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then.i255.i:                                   ; preds = %if.then55.i
  %129 = ptrtoint ptr %capability_mask.i.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %capability_mask.i.i, align 2
  %conv.i.i = zext i16 %130 to i32
  %and.i253.i = and i32 %conv.i.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i253.i)
  %tobool.not.i254.i = icmp eq i32 %and.i253.i, 0
  br i1 %tobool.not.i254.i, label %if.end.i256.i, label %if.then.i255.i.get_counter_table.exit.i_crit_edge

if.then.i255.i.get_counter_table.exit.i_crit_edge: ; preds = %if.then.i255.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_counter_table.exit.i

if.end.i256.i:                                    ; preds = %if.then.i255.i
  %and4.i.i = and i32 %conv.i.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i256.i.if.end8.i.i_crit_edge, label %if.end.i256.i.get_counter_table.exit.i_crit_edge

if.end.i256.i.get_counter_table.exit.i_crit_edge: ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_counter_table.exit.i

if.end.i256.i.if.end8.i.i_crit_edge:              ; preds = %if.end.i256.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end.i256.i.if.end8.i.i_crit_edge, %if.then55.i.if.end8.i.i_crit_edge
  br label %get_counter_table.exit.i

get_counter_table.exit.i:                         ; preds = %if.end8.i.i, %if.end.i256.i.get_counter_table.exit.i_crit_edge, %if.then.i255.i.get_counter_table.exit.i_crit_edge
  %retval.0.i257.i = phi ptr [ @pma_group, %if.end8.i.i ], [ @pma_group_ext, %if.then.i255.i.get_counter_table.exit.i_crit_edge ], [ @pma_group_noietf, %if.end.i256.i.get_counter_table.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %cpi.i.i) #11
  %131 = ptrtoint ptr %cur_group.1.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %retval.0.i257.i, ptr %cur_group.1.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %get_counter_table.exit.i, %if.end50.i.if.end58.i_crit_edge
  %132 = ptrtoint ptr %ports_kobj to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %ports_kobj, align 4
  %call60.i = call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef nonnull %call.i.i.i, ptr noundef %133, ptr noundef nonnull @.str.27, i32 noundef %port_num.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end63.i, label %if.end58.i.err_put.i_crit_edge

if.end58.i.err_put.i_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i

if.end63.i:                                       ; preds = %if.end58.i
  %call67.i = call i32 @sysfs_create_groups(ptr noundef nonnull %call.i.i.i, ptr noundef %groups_list.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %if.end70.i, label %if.end63.i.err_del.i_crit_edge

if.end63.i.err_del.i_crit_edge:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_del.i

if.end70.i:                                       ; preds = %if.end63.i
  br i1 %cmp.i, label %if.then72.i, label %if.end70.i.if.end79.i_crit_edge

if.end70.i.if.end79.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

if.then72.i:                                      ; preds = %if.end70.i
  %port_groups.i = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 1, i32 5
  %134 = ptrtoint ptr %port_groups.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %port_groups.i, align 4
  %call75.i = call i32 @sysfs_create_groups(ptr noundef nonnull %call.i.i.i, ptr noundef %135) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.then72.i.if.end79.i_crit_edge, label %err_groups.i

if.then72.i.if.end79.i_crit_edge:                 ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then72.i.if.end79.i_crit_edge, %if.end70.i.if.end79.i_crit_edge
  %entry81.i = getelementptr inbounds %struct.kobject, ptr %call.i.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %prev.i.i, align 4
  %call.i.i258.i = call zeroext i1 @__list_add_valid(ptr noundef %entry81.i, ptr noundef %137, ptr noundef %port_list.i) #11
  br i1 %call.i.i258.i, label %if.end.i.i259.i, label %if.end79.i.list_add_tail.exit.i_crit_edge

if.end79.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i259.i:                                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  %138 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %entry81.i, ptr %prev.i.i, align 4
  %139 = ptrtoint ptr %entry81.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %port_list.i, ptr %entry81.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.kobject, ptr %call.i.i.i, i32 0, i32 1, i32 1
  %140 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %137, ptr %prev3.i.i.i, align 4
  %141 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %entry81.i, ptr %137, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i259.i, %if.end79.i.list_add_tail.exit.i_crit_edge
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 11
  %142 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %port_data.i, align 8
  %tobool82.not.i = icmp eq ptr %143, null
  %brmerge160.i = select i1 %tobool82.not.i, i1 true, i1 %cmp.not.i
  br i1 %brmerge160.i, label %list_add_tail.exit.i.setup_port.exit_crit_edge, label %if.then86.i

list_add_tail.exit.i.setup_port.exit_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %setup_port.exit

if.then86.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %sysfs.i = getelementptr %struct.ib_port_data, ptr %143, i32 %port_num.0, i32 9
  %144 = ptrtoint ptr %sysfs.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call.i.i.i, ptr %sysfs.i, align 4
  br label %setup_port.exit

err_groups.i:                                     ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @sysfs_remove_groups(ptr noundef nonnull %call.i.i.i, ptr noundef %groups_list.i) #11
  br label %err_del.i

err_del.i:                                        ; preds = %err_groups.i, %if.end63.i.err_del.i_crit_edge
  %ret.0.i = phi i32 [ %call67.i, %if.end63.i.err_del.i_crit_edge ], [ %call75.i, %err_groups.i ]
  call void @kobject_del(ptr noundef nonnull %call.i.i.i) #11
  br label %err_put.i

err_put.i:                                        ; preds = %err_del.i, %if.end58.i.err_put.i_crit_edge, %setup_hw_port_stats.exit.i.err_put.i_crit_edge, %setup_hw_port_stats.exit.thread.i, %err.i216.i, %if.then15.i.err_put.i_crit_edge, %err.i.i, %if.end7.i.i.i.i.err_put.i_crit_edge, %if.end.i.err_put.i_crit_edge
  %ret.1.i = phi i32 [ %call60.i, %if.end58.i.err_put.i_crit_edge ], [ %ret.0.i, %err_del.i ], [ %retval.0.i252.i, %setup_hw_port_stats.exit.i.err_put.i_crit_edge ], [ -22, %setup_hw_port_stats.exit.thread.i ], [ -12, %if.end.i.err_put.i_crit_edge ], [ -12, %if.end7.i.i.i.i.err_put.i_crit_edge ], [ -22, %err.i.i ], [ -12, %if.then15.i.err_put.i_crit_edge ], [ -22, %err.i216.i ]
  call void @kobject_put(ptr noundef nonnull %call.i.i.i) #11
  %145 = inttoptr i32 %ret.1.i to ptr
  br label %setup_port.exit

setup_port.exit:                                  ; preds = %err_put.i, %if.then86.i, %list_add_tail.exit.i.setup_port.exit_crit_edge
  %retval.0.i = phi ptr [ %145, %err_put.i ], [ %call.i.i.i, %list_add_tail.exit.i.setup_port.exit_crit_edge ], [ %call.i.i.i, %if.then86.i ]
  %cmp.i39 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i39, label %setup_port.exit.if.then12_crit_edge, label %if.end8.i.i.i

setup_port.exit.if.then12_crit_edge:              ; preds = %setup_port.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then12

if.then12:                                        ; preds = %setup_port.exit.if.then12_crit_edge, %if.end9.if.then12_crit_edge
  %retval.0.i113 = phi ptr [ %retval.0.i, %setup_port.exit.if.then12_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.if.then12_crit_edge ]
  %146 = ptrtoint ptr %retval.0.i113 to i32
  br label %err_put

if.end8.i.i.i:                                    ; preds = %setup_port.exit
  %147 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %gid_tbl_len.i, align 8
  %mul.i = shl i32 %148, 1
  %149 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i, i32 44) #11
  %150 = extractvalue { i32, i1 } %149, 1
  %151 = extractvalue { i32, i1 } %149, 0
  %spec.select.i.i41 = call i32 @llvm.uadd.sat.i32(i32 %151, i32 192) #11
  %retval.0.i.i42 = select i1 %150, i32 -1, i32 %spec.select.i.i41
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i42, i32 noundef 3520) #14
  %tobool.not.i46 = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i46, label %if.end8.i.i.i.err_put_crit_edge, label %if.end.i50

if.end8.i.i.i.err_put_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put

if.end.i50:                                       ; preds = %if.end8.i.i.i
  %152 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %retval.0.i, ptr %call9.i.i.i, align 128
  %kobj.i = getelementptr inbounds %struct.gid_attr_group, ptr %call9.i.i.i, i32 0, i32 1
  call void @kobject_init(ptr noundef %kobj.i, ptr noundef nonnull @gid_attr_type) #11
  %groups.i47 = getelementptr inbounds %struct.gid_attr_group, ptr %call9.i.i.i, i32 0, i32 2
  %attrs_list.i48 = getelementptr inbounds %struct.gid_attr_group, ptr %call9.i.i.i, i32 0, i32 4
  %153 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %gid_tbl_len.i, align 8
  %add.i.i49 = add i32 %154, 1
  %155 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i49, i32 4) #11
  %156 = extractvalue { i32, i1 } %155, 1
  br i1 %156, label %if.end.i50.err_put.i109_crit_edge, label %if.end7.i.i.i.i81, !prof !302

if.end.i50.err_put.i109_crit_edge:                ; preds = %if.end.i50
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i109

if.end7.i.i.i.i81:                                ; preds = %if.end.i50
  %157 = extractvalue { i32, i1 } %155, 0
  %call8.i.i.i.i80 = call noalias align 128 ptr @__kmalloc(i32 noundef %157, i32 noundef 3520) #14
  %tobool.not.i.i83 = icmp eq ptr %call8.i.i.i.i80, null
  br i1 %tobool.not.i.i83, label %if.end7.i.i.i.i81.err_put.i109_crit_edge, label %for.cond.preheader.i.i87

if.end7.i.i.i.i81.err_put.i109_crit_edge:         ; preds = %if.end7.i.i.i.i81
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i109

for.cond.preheader.i.i87:                         ; preds = %if.end7.i.i.i.i81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp43.not.i.i86 = icmp eq i32 %154, 0
  br i1 %cmp43.not.i.i86, label %for.cond.preheader.i.i87.if.end7.i_crit_edge, label %for.cond.preheader.i.i87.for.body.i.i92_crit_edge

for.cond.preheader.i.i87.for.body.i.i92_crit_edge: ; preds = %for.cond.preheader.i.i87
  br label %for.body.i.i92

for.cond.preheader.i.i87.if.end7.i_crit_edge:     ; preds = %for.cond.preheader.i.i87
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

for.body.i.i92:                                   ; preds = %for.inc.i.i101.for.body.i.i92_crit_edge, %for.cond.preheader.i.i87.for.body.i.i92_crit_edge
  %i.044.i.i88 = phi i32 [ %inc.i.i99, %for.inc.i.i101.for.body.i.i92_crit_edge ], [ 0, %for.cond.preheader.i.i87.for.body.i.i92_crit_edge ]
  %name1.i.i89 = getelementptr %struct.port_table_attribute, ptr %attrs_list.i48, i32 %i.044.i.i88, i32 1
  %call2.i.i90 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i.i89, i32 noundef 8, ptr noundef nonnull @.str.27, i32 noundef %i.044.i.i88) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2.i.i90)
  %cmp3.i.i91 = icmp ugt i32 %call2.i.i90, 7
  br i1 %cmp3.i.i91, label %err.i.i102, label %for.inc.i.i101

for.inc.i.i101:                                   ; preds = %for.body.i.i92
  %arrayidx.i.i93 = getelementptr %struct.port_table_attribute, ptr %attrs_list.i48, i32 %i.044.i.i88
  %key.i.i94 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i93, i32 0, i32 3
  %158 = ptrtoint ptr %key.i.i94 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr @alloc_port_table_group.__key, ptr %key.i.i94, align 4
  %159 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %name1.i.i89, ptr %arrayidx.i.i93, align 4
  %mode.i.i95 = getelementptr inbounds %struct.attribute, ptr %arrayidx.i.i93, i32 0, i32 1
  %160 = ptrtoint ptr %mode.i.i95 to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 292, ptr %mode.i.i95, align 4
  %show15.i.i96 = getelementptr inbounds %struct.ib_port_attribute, ptr %arrayidx.i.i93, i32 0, i32 1
  %161 = ptrtoint ptr %show15.i.i96 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @show_port_gid_attr_ndev, ptr %show15.i.i96, align 4
  %index.i.i97 = getelementptr %struct.port_table_attribute, ptr %attrs_list.i48, i32 %i.044.i.i88, i32 2
  %162 = ptrtoint ptr %index.i.i97 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %i.044.i.i88, ptr %index.i.i97, align 4
  %arrayidx18.i.i98 = getelementptr ptr, ptr %call8.i.i.i.i80, i32 %i.044.i.i88
  %163 = ptrtoint ptr %arrayidx18.i.i98 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %arrayidx.i.i93, ptr %arrayidx18.i.i98, align 4
  %inc.i.i99 = add nuw i32 %i.044.i.i88, 1
  %exitcond.not.i.i100 = icmp eq i32 %inc.i.i99, %154
  br i1 %exitcond.not.i.i100, label %for.inc.i.i101.if.end7.i_crit_edge, label %for.inc.i.i101.for.body.i.i92_crit_edge

for.inc.i.i101.for.body.i.i92_crit_edge:          ; preds = %for.inc.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i92

for.inc.i.i101.if.end7.i_crit_edge:               ; preds = %for.inc.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7.i

err.i.i102:                                       ; preds = %for.body.i.i92
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call8.i.i.i.i80) #11
  br label %err_put.i109

if.end7.i:                                        ; preds = %for.inc.i.i101.if.end7.i_crit_edge, %for.cond.preheader.i.i87.if.end7.i_crit_edge
  %164 = ptrtoint ptr %groups.i47 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr @.str.94, ptr %groups.i47, align 4
  %attrs20.i.i103 = getelementptr inbounds %struct.gid_attr_group, ptr %call9.i.i.i, i32 0, i32 2, i32 0, i32 3
  %165 = ptrtoint ptr %attrs20.i.i103 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %call8.i.i.i.i80, ptr %attrs20.i.i103, align 8
  %groups_list.i104 = getelementptr inbounds %struct.gid_attr_group, ptr %call9.i.i.i, i32 0, i32 3
  %166 = ptrtoint ptr %groups_list.i104 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %groups.i47, ptr %groups_list.i104, align 4
  %arrayidx12.i = getelementptr %struct.gid_attr_group, ptr %call9.i.i.i, i32 0, i32 2, i32 1
  %167 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %gid_tbl_len.i, align 8
  %add.ptr.i105 = getelementptr %struct.port_table_attribute, ptr %attrs_list.i48, i32 %168
  %add.i68.i = add i32 %168, 1
  %169 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i68.i, i32 4) #11
  %170 = extractvalue { i32, i1 } %169, 1
  br i1 %170, label %if.end7.i.err_put.i109_crit_edge, label %if.end7.i.i.i99.i, !prof !302

if.end7.i.err_put.i109_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i109

if.end7.i.i.i99.i:                                ; preds = %if.end7.i
  %171 = extractvalue { i32, i1 } %169, 0
  %call8.i.i.i98.i = call noalias align 128 ptr @__kmalloc(i32 noundef %171, i32 noundef 3520) #14
  %tobool.not.i101.i = icmp eq ptr %call8.i.i.i98.i, null
  br i1 %tobool.not.i101.i, label %if.end7.i.i.i99.i.err_put.i109_crit_edge, label %for.cond.preheader.i105.i

if.end7.i.i.i99.i.err_put.i109_crit_edge:         ; preds = %if.end7.i.i.i99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i109

for.cond.preheader.i105.i:                        ; preds = %if.end7.i.i.i99.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp43.not.i104.i = icmp eq i32 %168, 0
  br i1 %cmp43.not.i104.i, label %for.cond.preheader.i105.i.if.end20.i_crit_edge, label %for.cond.preheader.i105.i.for.body.i110.i_crit_edge

for.cond.preheader.i105.i.for.body.i110.i_crit_edge: ; preds = %for.cond.preheader.i105.i
  br label %for.body.i110.i

for.cond.preheader.i105.i.if.end20.i_crit_edge:   ; preds = %for.cond.preheader.i105.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

for.body.i110.i:                                  ; preds = %for.inc.i119.i.for.body.i110.i_crit_edge, %for.cond.preheader.i105.i.for.body.i110.i_crit_edge
  %i.044.i106.i = phi i32 [ %inc.i117.i, %for.inc.i119.i.for.body.i110.i_crit_edge ], [ 0, %for.cond.preheader.i105.i.for.body.i110.i_crit_edge ]
  %name1.i107.i = getelementptr %struct.port_table_attribute, ptr %add.ptr.i105, i32 %i.044.i106.i, i32 1
  %call2.i108.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name1.i107.i, i32 noundef 8, ptr noundef nonnull @.str.27, i32 noundef %i.044.i106.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call2.i108.i)
  %cmp3.i109.i = icmp ugt i32 %call2.i108.i, 7
  br i1 %cmp3.i109.i, label %err.i122.i, label %for.inc.i119.i

for.inc.i119.i:                                   ; preds = %for.body.i110.i
  %arrayidx.i111.i = getelementptr %struct.port_table_attribute, ptr %add.ptr.i105, i32 %i.044.i106.i
  %key.i112.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i111.i, i32 0, i32 3
  %172 = ptrtoint ptr %key.i112.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @alloc_port_table_group.__key, ptr %key.i112.i, align 4
  %173 = ptrtoint ptr %arrayidx.i111.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %name1.i107.i, ptr %arrayidx.i111.i, align 4
  %mode.i113.i = getelementptr inbounds %struct.attribute, ptr %arrayidx.i111.i, i32 0, i32 1
  %174 = ptrtoint ptr %mode.i113.i to i32
  call void @__asan_store2_noabort(i32 %174)
  store i16 292, ptr %mode.i113.i, align 4
  %show15.i114.i = getelementptr inbounds %struct.ib_port_attribute, ptr %arrayidx.i111.i, i32 0, i32 1
  %175 = ptrtoint ptr %show15.i114.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @show_port_gid_attr_gid_type, ptr %show15.i114.i, align 4
  %index.i115.i = getelementptr %struct.port_table_attribute, ptr %add.ptr.i105, i32 %i.044.i106.i, i32 2
  %176 = ptrtoint ptr %index.i115.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %i.044.i106.i, ptr %index.i115.i, align 4
  %arrayidx18.i116.i = getelementptr ptr, ptr %call8.i.i.i98.i, i32 %i.044.i106.i
  %177 = ptrtoint ptr %arrayidx18.i116.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %arrayidx.i111.i, ptr %arrayidx18.i116.i, align 4
  %inc.i117.i = add nuw i32 %i.044.i106.i, 1
  %exitcond.not.i118.i = icmp eq i32 %inc.i117.i, %168
  br i1 %exitcond.not.i118.i, label %for.inc.i119.i.if.end20.i_crit_edge, label %for.inc.i119.i.for.body.i110.i_crit_edge

for.inc.i119.i.for.body.i110.i_crit_edge:         ; preds = %for.inc.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i110.i

for.inc.i119.i.if.end20.i_crit_edge:              ; preds = %for.inc.i119.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20.i

err.i122.i:                                       ; preds = %for.body.i110.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call8.i.i.i98.i) #11
  br label %err_put.i109

if.end20.i:                                       ; preds = %for.inc.i119.i.if.end20.i_crit_edge, %for.cond.preheader.i105.i.if.end20.i_crit_edge
  %178 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.95, ptr %arrayidx12.i, align 32
  %attrs20.i120.i = getelementptr %struct.gid_attr_group, ptr %call9.i.i.i, i32 0, i32 2, i32 1, i32 3
  %179 = ptrtoint ptr %attrs20.i120.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %call8.i.i.i98.i, ptr %attrs20.i120.i, align 4
  %arrayidx24.i = getelementptr %struct.gid_attr_group, ptr %call9.i.i.i, i32 0, i32 3, i32 1
  %180 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store ptr %arrayidx12.i, ptr %arrayidx24.i, align 8
  %call27.i = call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %kobj.i, ptr noundef %retval.0.i, ptr noundef nonnull @.str.96) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i106, label %if.end20.i.err_put.i109_crit_edge

if.end20.i.err_put.i109_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_put.i109

if.end30.i106:                                    ; preds = %if.end20.i
  %call34.i = call i32 @sysfs_create_groups(ptr noundef %kobj.i, ptr noundef %groups_list.i104) #11
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %for.inc, label %err_del.i107

err_del.i107:                                     ; preds = %if.end30.i106
  call void @__sanitizer_cov_trace_pc() #13
  call void @kobject_del(ptr noundef %kobj.i) #11
  br label %err_put.i109

err_put.i109:                                     ; preds = %err_del.i107, %if.end20.i.err_put.i109_crit_edge, %err.i122.i, %if.end7.i.i.i99.i.err_put.i109_crit_edge, %if.end7.i.err_put.i109_crit_edge, %err.i.i102, %if.end7.i.i.i.i81.err_put.i109_crit_edge, %if.end.i50.err_put.i109_crit_edge
  %ret.0.i108 = phi i32 [ %call34.i, %err_del.i107 ], [ -22, %err.i.i102 ], [ -22, %err.i122.i ], [ -12, %if.end7.i.i.i99.i.err_put.i109_crit_edge ], [ -12, %if.end7.i.err_put.i109_crit_edge ], [ -12, %if.end7.i.i.i.i81.err_put.i109_crit_edge ], [ -12, %if.end.i50.err_put.i109_crit_edge ], [ %call27.i, %if.end20.i.err_put.i109_crit_edge ]
  call void @kobject_put(ptr noundef %kobj.i) #11
  br label %err_put

for.inc:                                          ; preds = %if.end30.i106
  call void @__sanitizer_cov_trace_pc() #13
  %gid_attr_group38.i = getelementptr inbounds %struct.ib_port, ptr %retval.0.i, i32 0, i32 2
  %181 = ptrtoint ptr %gid_attr_group38.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call9.i.i.i, ptr %gid_attr_group38.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  %inc = add i32 %port_num.0, 1
  %182 = ptrtoint ptr %is_switch.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load.i.i38.pr = load i8, ptr %is_switch.i.i, align 4
  br label %for.cond

err_put:                                          ; preds = %err_put.i109, %if.end8.i.i.i.err_put_crit_edge, %if.then12, %for.body.err_put_crit_edge
  %ret.0.ph = phi i32 [ %146, %if.then12 ], [ %ret.0.i108, %err_put.i109 ], [ -12, %if.end8.i.i.i.err_put_crit_edge ], [ %call6, %for.body.err_put_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  call void @ib_free_port_attrs(ptr noundef %coredev)
  br label %cleanup20

cleanup20:                                        ; preds = %err_put, %rdma_end_port.exit.cleanup20_crit_edge, %entry.cleanup20_crit_edge
  %retval.0 = phi i32 [ %ret.0.ph, %err_put ], [ -12, %entry.cleanup20_crit_edge ], [ 0, %rdma_end_port.exit.cleanup20_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ib_port_register_client_groups(ptr nocapture noundef readonly %ibdev, i32 noundef %port_num, ptr noundef %groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %sysfs = getelementptr %struct.ib_port_data, ptr %1, i32 %port_num, i32 9
  %2 = ptrtoint ptr %sysfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysfs, align 4
  %call = tail call i32 @sysfs_create_groups(ptr noundef %3, ptr noundef %groups) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ib_port_unregister_client_groups(ptr nocapture noundef readonly %ibdev, i32 noundef %port_num, ptr noundef %groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %sysfs = getelementptr %struct.ib_port_data, ptr %1, i32 %port_num, i32 9
  %2 = ptrtoint ptr %sysfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysfs, align 4
  tail call void @sysfs_remove_groups(ptr noundef %3, ptr noundef %groups) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rdma_counter_get_hwstat_value(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_type_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %node_type = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %node_type, align 1
  %switch.tableidx = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %4 = icmp ult i8 %switch.tableidx, 7
  br i1 %4, label %switch.lookup, label %entry.node_type_string.exit_crit_edge

entry.node_type_string.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %node_type_string.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.node_type_show, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %node_type_string.exit

node_type_string.exit:                            ; preds = %switch.lookup, %entry.node_type_string.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.17, %entry.node_type_string.exit_crit_edge ]
  %conv = zext i8 %3 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv, ptr noundef nonnull %retval.0.i) #11
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_guid_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %node_guid1 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %node_guid1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %node_guid1, align 2
  %conv = zext i16 %3 to i32
  %arrayidx2 = getelementptr i16, ptr %node_guid1, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx2, align 2
  %conv3 = zext i16 %5 to i32
  %arrayidx4 = getelementptr i16, ptr %node_guid1, i32 2
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4, align 2
  %conv5 = zext i16 %7 to i32
  %arrayidx6 = getelementptr i16, ptr %node_guid1, i32 3
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx6, align 2
  %conv7 = zext i16 %9 to i32
  %call8 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7) #11
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sys_image_guid_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %dev_attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %sys_image_guid = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 22, i32 1
  %2 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sys_image_guid, align 2
  %conv = zext i16 %3 to i32
  %arrayidx1 = getelementptr i16, ptr %sys_image_guid, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1, align 2
  %conv2 = zext i16 %5 to i32
  %arrayidx3 = getelementptr i16, ptr %sys_image_guid, i32 2
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx3, align 2
  %conv4 = zext i16 %7 to i32
  %arrayidx5 = getelementptr i16, ptr %sys_image_guid, i32 3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %9 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %conv, i32 noundef %conv2, i32 noundef %conv4, i32 noundef %conv6) #11
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_ver_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %version = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %version) #11
  %2 = call ptr @memset(ptr %version, i32 0, i32 32)
  call void @ib_get_device_fw_str(ptr noundef %1, ptr noundef nonnull %version) #11
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %version) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %version) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_get_device_fw_str(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_desc_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %node_desc = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 16
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.24, ptr noundef %node_desc) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @node_desc_store(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %desc = alloca %struct.ib_device_modify, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %desc) #11
  %2 = call ptr @memset(ptr %desc, i32 0, i32 72)
  %modify_device = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 16
  %3 = ptrtoint ptr %modify_device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %modify_device, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %node_desc = getelementptr inbounds %struct.ib_device_modify, ptr %desc, i32 0, i32 1
  %5 = tail call i32 @llvm.smin.i32(i32 %count, i32 64)
  %6 = call ptr @memcpy(ptr %node_desc, ptr %buf, i32 %5)
  %call1 = call i32 @ib_modify_device(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %desc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  %spec.select = select i1 %tobool2.not, i32 %count, i32 %call1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %desc) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_device(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_gid(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %zgid = alloca %union.ib_gid, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.port_table_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call ptr @rdma_get_gid_attr(ptr noundef %ibdev, i32 noundef %port_num, i32 noundef %1) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %zgid) #11
  %2 = call ptr @memset(ptr %zgid, i32 0, i32 16)
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.69, ptr noundef nonnull %zgid) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %zgid) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gid = getelementptr inbounds %struct.ib_gid_attr, ptr %call, i32 0, i32 2
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.69, ptr noundef %gid) #11
  tail call void @rdma_put_gid_attr(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_pkey(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %pkey = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pkey) #11
  %0 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %pkey, align 2, !annotation !303
  %index = getelementptr inbounds %struct.port_table_attribute, ptr %attr, i32 0, i32 2
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %conv = trunc i32 %2 to i16
  %call = call i32 @ib_query_pkey(ptr noundef %ibdev, i32 noundef %port_num, i16 noundef zeroext %conv, ptr noundef nonnull %pkey) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pkey, align 2
  %conv1 = zext i16 %4 to i32
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.70, i32 noundef %conv1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pkey) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_port_release(ptr noundef %kobj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr %struct.ib_port, ptr %kobj, i32 0, i32 4, i32 0, i32 3
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  tail call void @kfree(ptr noundef %1) #11
  %attrs.1 = getelementptr %struct.ib_port, ptr %kobj, i32 0, i32 4, i32 1, i32 3
  %2 = ptrtoint ptr %attrs.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs.1, align 4
  tail call void @kfree(ptr noundef %3) #11
  %attrs.2 = getelementptr %struct.ib_port, ptr %kobj, i32 0, i32 4, i32 2, i32 3
  %4 = ptrtoint ptr %attrs.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs.2, align 4
  tail call void @kfree(ptr noundef %5) #11
  %hw_stats_data = getelementptr inbounds %struct.ib_port, ptr %kobj, i32 0, i32 3
  %6 = ptrtoint ptr %hw_stats_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_stats_data, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @rdma_free_hw_stats_struct(ptr noundef %9) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %hw_stats_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_stats_data, align 4
  tail call void @kfree(ptr noundef %11) #11
  tail call void @kvfree(ptr noundef %kobj) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_attr_show(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.ib_port_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ibdev = getelementptr inbounds %struct.ib_port, ptr %kobj, i32 0, i32 1
  %2 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev, align 4
  %port_num = getelementptr inbounds %struct.ib_port, ptr %kobj, i32 0, i32 6
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_num, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %5, ptr noundef %attr, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_attr_store(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.ib_port_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ibdev = getelementptr inbounds %struct.ib_port, ptr %kobj, i32 0, i32 1
  %2 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev, align 4
  %port_num = getelementptr inbounds %struct.ib_port, ptr %kobj, i32 0, i32 6
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_num, align 4
  %call = tail call i32 %1(ptr noundef %3, i32 noundef %5, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %cmp3 = icmp ult i32 %2, 6
  br i1 %cmp3, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr [6 x ptr], ptr @state_show.state_name, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.true ], [ @.str.36, %if.end.cond.end_crit_edge ]
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %2, ptr noundef %cond) #11
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lid_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 13
  %1 = ptrtoint ptr %lid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lid, align 8
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lid_mask_count_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %lmc = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 14
  %1 = ptrtoint ptr %lmc to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %lmc, align 4
  %conv = zext i8 %2 to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_lid_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sm_lid = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 12
  %1 = ptrtoint ptr %sm_lid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sm_lid, align 4
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_sl_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sm_sl = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 16
  %1 = ptrtoint ptr %sm_sl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sm_sl, align 2
  %conv = zext i8 %2 to i32
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %conv) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cap_mask_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %port_cap_flags = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 7
  %1 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %port_cap_flags, align 8
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %2) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rate_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_speed = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 20
  %1 = ptrtoint ptr %active_speed to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %active_speed, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.101)
  switch i16 %2, label %sw.default [
    i16 2, label %if.end.sw.epilog_crit_edge
    i16 4, label %sw.bb1
    i16 8, label %sw.bb2
    i16 16, label %sw.bb3
    i16 32, label %sw.bb4
    i16 64, label %sw.bb5
    i16 128, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %speed.0 = phi ptr [ @.str.54, %sw.default ], [ @.str.53, %sw.bb6 ], [ @.str.52, %sw.bb5 ], [ @.str.51, %sw.bb4 ], [ @.str.50, %sw.bb3 ], [ @.str.49, %sw.bb2 ], [ @.str.48, %sw.bb1 ], [ @.str.47, %if.end.sw.epilog_crit_edge ]
  %rate.0 = phi i32 [ 25, %sw.default ], [ 1000, %sw.bb6 ], [ 500, %sw.bb5 ], [ 250, %sw.bb4 ], [ 140, %sw.bb3 ], [ 100, %sw.bb2 ], [ 100, %sw.bb1 ], [ 50, %if.end.sw.epilog_crit_edge ]
  %active_width = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 19
  %4 = ptrtoint ptr %active_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_width, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.102)
  switch i8 %5, label %sw.default.i [
    i8 1, label %sw.epilog.ib_width_enum_to_int.exit_crit_edge
    i8 16, label %sw.bb1.i
    i8 2, label %sw.bb2.i
    i8 4, label %sw.bb3.i
    i8 8, label %sw.bb4.i
  ]

sw.epilog.ib_width_enum_to_int.exit_crit_edge:    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit

sw.bb1.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit

sw.bb2.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit

sw.bb3.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit

sw.bb4.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit

sw.default.i:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit

ib_width_enum_to_int.exit:                        ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.epilog.ib_width_enum_to_int.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %sw.default.i ], [ 12, %sw.bb4.i ], [ 8, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ 1, %sw.epilog.ib_width_enum_to_int.exit_crit_edge ]
  %mul = mul nsw i32 %retval.0.i, %rate.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp slt i32 %mul, 0
  br i1 %cmp, label %ib_width_enum_to_int.exit.cleanup_crit_edge, label %if.end12

ib_width_enum_to_int.exit.cleanup_crit_edge:      ; preds = %ib_width_enum_to_int.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %ib_width_enum_to_int.exit
  %div32.lhs.trunc = trunc i32 %mul to i16
  %div32.lhs.trunc.frozen = freeze i16 %div32.lhs.trunc
  %div3233 = udiv i16 %div32.lhs.trunc.frozen, 10
  %div32.zext = zext i16 %div3233 to i32
  %7 = mul i16 %div3233, 10
  %rem3435.decomposed = sub i16 %div32.lhs.trunc.frozen, %7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem3435.decomposed)
  %tobool13.not = icmp eq i16 %rem3435.decomposed, 0
  %cond = select i1 %tobool13.not, ptr @.str.46, ptr @.str.56
  %8 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %5, label %sw.default.i29 [
    i8 1, label %if.end12.ib_width_enum_to_int.exit31_crit_edge
    i8 16, label %sw.bb1.i25
    i8 2, label %sw.bb2.i26
    i8 4, label %sw.bb3.i27
    i8 8, label %sw.bb4.i28
  ]

if.end12.ib_width_enum_to_int.exit31_crit_edge:   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit31

sw.bb1.i25:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit31

sw.bb2.i26:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit31

sw.bb3.i27:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit31

sw.bb4.i28:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit31

sw.default.i29:                                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %ib_width_enum_to_int.exit31

ib_width_enum_to_int.exit31:                      ; preds = %sw.default.i29, %sw.bb4.i28, %sw.bb3.i27, %sw.bb2.i26, %sw.bb1.i25, %if.end12.ib_width_enum_to_int.exit31_crit_edge
  %retval.0.i30 = phi i32 [ -1, %sw.default.i29 ], [ 12, %sw.bb4.i28 ], [ 8, %sw.bb3.i27 ], [ 4, %sw.bb2.i26 ], [ 2, %sw.bb1.i25 ], [ 1, %if.end12.ib_width_enum_to_int.exit31_crit_edge ]
  %call17 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.55, i32 noundef %div32.zext, ptr noundef nonnull %cond, i32 noundef %retval.0.i30, ptr noundef nonnull %speed.0) #11
  br label %cleanup

cleanup:                                          ; preds = %ib_width_enum_to_int.exit31, %ib_width_enum_to_int.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %ib_width_enum_to_int.exit31 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %ib_width_enum_to_int.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phys_state_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #11
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %call = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %phys_state = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 21
  %1 = ptrtoint ptr %phys_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %phys_state, align 4
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp.i = icmp ult i8 %2, 8
  br i1 %cmp.i, label %if.then.i, label %if.end.phys_state_to_str.exit_crit_edge

if.end.phys_state_to_str.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %phys_state_to_str.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr [8 x ptr], ptr @phys_state_to_str.phys_state_str, i32 0, i32 %conv
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  br label %phys_state_to_str.exit

phys_state_to_str.exit:                           ; preds = %if.then.i, %if.end.phys_state_to_str.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.then.i ], [ @.str.17, %if.end.phys_state_to_str.exit_crit_edge ]
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv, ptr noundef %retval.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %phys_state_to_str.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %phys_state_to_str.exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @link_layer_show(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readnone %unused, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rdma_port_get_link_layer(ptr noundef %ibdev, i32 noundef %port_num) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %switch.selectcmp = icmp eq i32 %call, 2
  %switch.select = select i1 %switch.selectcmp, ptr @.str.67, ptr @.str.68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %switch.selectcmp3 = icmp eq i32 %call, 1
  %switch.select4 = select i1 %switch.selectcmp3, ptr @.str.66, ptr %switch.select
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %switch.select4) #11
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_get_gid_attr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_put_gid_attr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_stat_port_show(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %sysfs = getelementptr %struct.ib_port_data, ptr %1, i32 %port_num, i32 9
  %2 = ptrtoint ptr %sysfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysfs, align 4
  %show = getelementptr inbounds %struct.hw_stats_port_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %show, align 4
  %hw_stats_data = getelementptr inbounds %struct.ib_port, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %hw_stats_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_stats_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %attrs = getelementptr inbounds %struct.hw_stats_port_data, ptr %7, i32 0, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %attr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %attrs to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %port_num2 = getelementptr inbounds %struct.ib_port, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %port_num2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_num2, align 4
  %call = tail call i32 %5(ptr noundef %ibdev, ptr noundef %9, i32 noundef %sub.ptr.div, i32 noundef %11, ptr noundef %buf) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_stat_port_store(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data, align 8
  %sysfs = getelementptr %struct.ib_port_data, ptr %1, i32 %port_num, i32 9
  %2 = ptrtoint ptr %sysfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysfs, align 4
  %store = getelementptr inbounds %struct.hw_stats_port_attribute, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %store, align 4
  %hw_stats_data = getelementptr inbounds %struct.ib_port, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %hw_stats_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_stats_data, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %attrs = getelementptr inbounds %struct.hw_stats_port_data, ptr %7, i32 0, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %attr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %attrs to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  %port_num2 = getelementptr inbounds %struct.ib_port, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %port_num2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_num2, align 4
  %call = tail call i32 %5(ptr noundef %ibdev, ptr noundef %9, i32 noundef %sub.ptr.div, i32 noundef %11, ptr noundef %buf, i32 noundef %count) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_perf_mad(ptr noundef %dev, i32 noundef %port_num, i16 noundef zeroext %attr, ptr nocapture noundef writeonly %data, i32 noundef %offset, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %mad_size = alloca i32, align 4
  %out_mad_pkey_index = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mad_size) #11
  %0 = ptrtoint ptr %mad_size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %mad_size, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %out_mad_pkey_index) #11
  %1 = ptrtoint ptr %out_mad_pkey_index to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %out_mad_pkey_index, align 2
  %process_mad = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 14
  %2 = ptrtoint ptr %process_mad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %process_mad, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i43 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 256) #15
  %tobool2.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call7.i.i43, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %call7.i.i, align 8
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %mgmt_class, align 1
  %class_version = getelementptr inbounds %struct.ib_mad_hdr, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %class_version to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %class_version, align 2
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %method, align 1
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %call7.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %attr, ptr %attr_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %attr)
  %cmp.not = icmp eq i16 %attr, 1
  br i1 %cmp.not, label %if.end5.if.end14_crit_edge, label %if.then11

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %conv12 = trunc i32 %port_num to i8
  %arrayidx = getelementptr %struct.ib_mad, ptr %call7.i.i, i32 0, i32 1, i32 41
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv12, ptr %arrayidx, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end5.if.end14_crit_edge
  %12 = ptrtoint ptr %process_mad to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %process_mad, align 4
  %call17 = call i32 %13(ptr noundef %dev, i32 noundef 1, i32 noundef %port_num, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i43, ptr noundef nonnull %mad_size, ptr noundef nonnull %out_mad_pkey_index) #11
  %and = and i32 %call17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp18.not = icmp eq i32 %and, 3
  br i1 %cmp18.not, label %if.end21, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %data22 = getelementptr inbounds %struct.ib_mad, ptr %call7.i.i43, i32 0, i32 1
  %add.ptr = getelementptr i8, ptr %data22, i32 %offset
  %14 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %size)
  br label %out

out:                                              ; preds = %if.end21, %if.end14.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ %size, %if.end21 ], [ -12, %if.end.out_crit_edge ], [ -22, %if.end14.out_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i) #11
  call void @kfree(ptr noundef %call7.i.i43) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -38, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %out_mad_pkey_index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mad_size) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pma_counter(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %data = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.port_table_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #11
  %attr_id = getelementptr inbounds %struct.port_table_attribute, ptr %attr, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %data, align 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %attr_id, align 4
  %and = lshr i32 %1, 3
  %div36 = and i32 %and, 8191
  %add = add nuw nsw i32 %div36, 40
  %call = call fastcc i32 @get_perf_mad(ptr noundef %ibdev, i32 noundef %port_num, i16 noundef zeroext %4, ptr noundef nonnull %data, i32 noundef %add, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = lshr i32 %1, 16
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 4, label %sw.bb
    i8 8, label %sw.bb6
    i8 16, label %sw.bb10
    i8 32, label %sw.bb15
    i8 64, label %sw.bb19
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data, align 8
  %conv = zext i8 %8 to i32
  %rem = and i32 %1, 7
  %sub = sub nsw i32 4, %rem
  %shr3 = lshr i32 %conv, %sub
  %and4 = and i32 %shr3, 15
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %and4) #11
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data, align 8
  %conv8 = zext i8 %10 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %conv8) #11
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %data, align 8
  %conv13 = zext i16 %12 to i32
  %call14 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %conv13) #11
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 8
  %call18 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %14) #11
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data, align 8
  %call22 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.6, i64 noundef %16) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %sw.bb15, %sw.bb10, %sw.bb6, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call22, %sw.bb19 ], [ %call18, %sw.bb15 ], [ %call14, %sw.bb10 ], [ %call9, %sw.bb6 ], [ %call5, %sw.bb ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_gid_attr_ndev(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.port_table_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %call.i = tail call ptr @rdma_get_gid_attr(ptr noundef %ibdev, i32 noundef %port_num, i32 noundef %1) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry._show_port_gid_attr.exit_crit_edge, label %if.end.i

entry._show_port_gid_attr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_show_port_gid_attr.exit

if.end.i:                                         ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !292) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !304
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.98, i32 noundef 696, ptr noundef nonnull @.str.99) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %call.i, align 8
  %call.i1 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end8.i_crit_edge

rcu_read_lock.exit.i.do.end8.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end8.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b15.i = load i1, ptr @print_ndev.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end8.i

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @print_ndev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 444, ptr noundef nonnull @.str.97) #11
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i.do.end8.i_crit_edge, %rcu_read_lock.exit.i.do.end8.i_crit_edge
  %tobool10.not.i = icmp eq ptr %7, null
  br i1 %tobool10.not.i, label %do.end8.i.if.end13.i_crit_edge, label %if.then11.i

do.end8.i.if.end13.i_crit_edge:                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then11.i:                                      ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call12.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %7) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %do.end8.i.if.end13.i_crit_edge
  %ret.0.i = phi i32 [ %call12.i, %if.then11.i ], [ -22, %do.end8.i.if.end13.i_crit_edge ]
  %call.i16.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i16.i, label %if.end13.i.print_ndev.exit_crit_edge, label %land.lhs.true.i19.i

if.end13.i.print_ndev.exit_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %print_ndev.exit

land.lhs.true.i19.i:                              ; preds = %if.end13.i
  %call1.i17.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17.i)
  %tobool.not.i18.i = icmp eq i32 %call1.i17.i, 0
  br i1 %tobool.not.i18.i, label %land.lhs.true.i19.i.print_ndev.exit_crit_edge, label %land.lhs.true2.i21.i

land.lhs.true.i19.i.print_ndev.exit_crit_edge:    ; preds = %land.lhs.true.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %print_ndev.exit

land.lhs.true2.i21.i:                             ; preds = %land.lhs.true.i19.i
  %.b4.i20.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20.i, label %land.lhs.true2.i21.i.print_ndev.exit_crit_edge, label %if.then.i22.i

land.lhs.true2.i21.i.print_ndev.exit_crit_edge:   ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %print_ndev.exit

if.then.i22.i:                                    ; preds = %land.lhs.true2.i21.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.98, i32 noundef 724, ptr noundef nonnull @.str.100) #11
  br label %print_ndev.exit

print_ndev.exit:                                  ; preds = %if.then.i22.i, %land.lhs.true2.i21.i.print_ndev.exit_crit_edge, %land.lhs.true.i19.i.print_ndev.exit_crit_edge, %if.end13.i.print_ndev.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !305
  %8 = tail call i32 @llvm.read_register.i32(metadata !292) #11
  %and.i.i.i.i.i23.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i23.i to ptr
  %preempt_count.i.i.i.i24.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i24.i, align 4
  %sub.i.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i24.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  tail call void @rdma_put_gid_attr(ptr noundef %call.i) #11
  br label %_show_port_gid_attr.exit

_show_port_gid_attr.exit:                         ; preds = %print_ndev.exit, %entry._show_port_gid_attr.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %print_ndev.exit ], [ -22, %entry._show_port_gid_attr.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_port_gid_attr_gid_type(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.port_table_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %call.i = tail call ptr @rdma_get_gid_attr(ptr noundef %ibdev, i32 noundef %port_num, i32 noundef %1) #11
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry._show_port_gid_attr.exit_crit_edge, label %if.end.i

entry._show_port_gid_attr.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %_show_port_gid_attr.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gid_type.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gid_type.i, align 8
  %call.i1 = tail call ptr @ib_cache_gid_type_str(i32 noundef %3) #11
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %call.i1) #11
  tail call void @rdma_put_gid_attr(ptr noundef %call.i) #11
  br label %_show_port_gid_attr.exit

_show_port_gid_attr.exit:                         ; preds = %if.end.i, %entry._show_port_gid_attr.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -22, %entry._show_port_gid_attr.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_port_gid_attr_release(ptr noundef %kobj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr i8, ptr %kobj, i32 148
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  tail call void @kfree(ptr noundef %1) #11
  %attrs.1 = getelementptr i8, ptr %kobj, i32 168
  %2 = ptrtoint ptr %attrs.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs.1, align 4
  tail call void @kfree(ptr noundef %3) #11
  %add.ptr = getelementptr i8, ptr %kobj, i32 -4
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gid_attr_show(ptr nocapture noundef readonly %kobj, ptr noundef %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.ib_port_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr3 = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr3, align 4
  %ibdev = getelementptr inbounds %struct.ib_port, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ibdev, align 4
  %port_num = getelementptr inbounds %struct.ib_port, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_num, align 4
  %call = tail call i32 %1(ptr noundef %5, i32 noundef %7, ptr noundef %attr, ptr noundef %buf) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_cache_gid_type_str(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !52, !54, !56, !57, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !77, !79, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !108, !110, !111, !113, !115, !116, !118, !119, !121, !122, !124, !126, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !226, !228, !229, !231, !232, !234, !235, !237, !238, !240, !241, !243, !244, !246, !247, !249, !250, !252, !253, !255, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !285, !287, !288, !289, !291}
!llvm.named.register.sp = !{!292}
!llvm.module.flags = !{!293, !294, !295, !296, !297, !298, !299, !300}
!llvm.ident = !{!301}

!0 = !{ptr @__ksymtab_ib_port_sysfs_get_ibdev_kobj, !1, !"__ksymtab_ib_port_sysfs_get_ibdev_kobj", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/sysfs.c", i32 139, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/sysfs.c", i32 951, i32 7}
!4 = !{ptr @ib_setup_device_attrs.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/sysfs.c", i32 966, i32 3}
!6 = !{ptr @ib_setup_device_attrs.__key.1, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/core/sysfs.c", i32 976, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/core/sysfs.c", i32 977, i32 25}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/core/sysfs.c", i32 989, i32 2}
!12 = !{ptr @ib_dev_attr_group, !13, !"ib_dev_attr_group", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/core/sysfs.c", i32 1398, i32 30}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/sysfs.c", i32 1422, i32 47}
!16 = !{ptr @__ksymtab_ib_port_register_client_groups, !17, !"__ksymtab_ib_port_register_client_groups", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/core/sysfs.c", i32 1467, i32 1}
!18 = !{ptr @__ksymtab_ib_port_unregister_client_groups, !19, !"__ksymtab_ib_port_unregister_client_groups", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/core/sysfs.c", i32 1475, i32 1}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/core/sysfs.c", i32 915, i32 21}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/core/sysfs.c", i32 831, i32 25}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/infiniband/core/sysfs.c", i32 862, i32 25}
!26 = !{ptr @ib_dev_attrs, !27, !"ib_dev_attrs", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/core/sysfs.c", i32 1389, i32 26}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/core/sysfs.c", i32 1319, i32 8}
!30 = !{ptr @dev_attr_node_type, !29, !"dev_attr_node_type", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/core/sysfs.c", i32 1316, i32 25}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/sysfs.c", i32 1294, i32 10}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/core/sysfs.c", i32 1296, i32 10}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/core/sysfs.c", i32 1298, i32 10}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/core/sysfs.c", i32 1300, i32 10}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/core/sysfs.c", i32 1302, i32 10}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/core/sysfs.c", i32 1304, i32 10}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/core/sysfs.c", i32 1306, i32 10}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/core/sysfs.c", i32 1308, i32 9}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/core/sysfs.c", i32 1347, i32 8}
!51 = !{ptr @dev_attr_node_guid, !50, !"dev_attr_node_guid", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/core/sysfs.c", i32 1341, i32 25}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/core/sysfs.c", i32 1333, i32 8}
!56 = !{ptr @dev_attr_sys_image_guid, !55, !"dev_attr_sys_image_guid", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/core/sysfs.c", i32 1387, i32 8}
!59 = !{ptr @dev_attr_fw_ver, !58, !"dev_attr_fw_ver", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/core/sysfs.c", i32 1385, i32 25}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/core/sysfs.c", i32 1375, i32 8}
!64 = !{ptr @dev_attr_node_desc, !63, !"dev_attr_node_desc", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/core/sysfs.c", i32 1354, i32 25}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/core/sysfs.c", i32 1217, i32 31}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/core/sysfs.c", i32 1224, i32 32}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/core/sysfs.c", i32 1248, i32 51}
!73 = !{ptr @port_type, !74, !"port_type", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/core/sysfs.c", i32 775, i32 25}
!75 = !{ptr @port_sysfs_ops, !76, !"port_sysfs_ops", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/core/sysfs.c", i32 141, i32 31}
!77 = !{ptr @port_default_groups, !78, !"port_default_groups", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/core/sysfs.c", i32 436, i32 1}
!79 = !{ptr @port_default_group, !78, !"port_default_group", i1 false, i1 false}
!80 = !{ptr @port_default_attrs, !81, !"port_default_attrs", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/core/sysfs.c", i32 424, i32 26}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/core/sysfs.c", i32 414, i32 8}
!84 = !{ptr @ib_port_attr_state, !83, !"ib_port_attr_state", i1 false, i1 false}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/core/sysfs.c", i32 220, i32 20}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/core/sysfs.c", i32 221, i32 21}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/core/sysfs.c", i32 222, i32 21}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/core/sysfs.c", i32 223, i32 22}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/core/sysfs.c", i32 224, i32 22}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/core/sysfs.c", i32 225, i32 28}
!97 = !{ptr @state_show.state_name, !98, !"state_name", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/core/sysfs.c", i32 219, i32 21}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/core/sysfs.c", i32 232, i32 25}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/core/sysfs.c", i32 236, i32 7}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/infiniband/core/sysfs.c", i32 415, i32 8}
!105 = !{ptr @ib_port_attr_lid, !104, !"ib_port_attr_lid", i1 false, i1 false}
!106 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/core/sysfs.c", i32 249, i32 25}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/core/sysfs.c", i32 416, i32 8}
!110 = !{ptr @ib_port_attr_lid_mask_count, !109, !"ib_port_attr_lid_mask_count", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/core/sysfs.c", i32 262, i32 25}
!113 = !{ptr @.str.41, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/core/sysfs.c", i32 417, i32 8}
!115 = !{ptr @ib_port_attr_sm_lid, !114, !"ib_port_attr_sm_lid", i1 false, i1 false}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/core/sysfs.c", i32 418, i32 8}
!118 = !{ptr @ib_port_attr_sm_sl, !117, !"ib_port_attr_sm_sl", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/infiniband/core/sysfs.c", i32 419, i32 8}
!121 = !{ptr @ib_port_attr_cap_mask, !120, !"ib_port_attr_cap_mask", i1 false, i1 false}
!122 = !{ptr @.str.44, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/core/sysfs.c", i32 301, i32 25}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/core/sysfs.c", i32 420, i32 8}
!126 = !{ptr @ib_port_attr_rate, !125, !"ib_port_attr_rate", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/core/sysfs.c", i32 308, i32 16}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/infiniband/core/sysfs.c", i32 318, i32 11}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/infiniband/core/sysfs.c", i32 322, i32 11}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/infiniband/core/sysfs.c", i32 326, i32 11}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/core/sysfs.c", i32 330, i32 11}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/core/sysfs.c", i32 334, i32 11}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/infiniband/core/sysfs.c", i32 338, i32 11}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/core/sysfs.c", i32 342, i32 11}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/infiniband/core/sysfs.c", i32 347, i32 11}
!145 = !{ptr @.str.55, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/infiniband/core/sysfs.c", i32 356, i32 25}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/infiniband/core/sysfs.c", i32 357, i32 18}
!149 = !{ptr @.str.57, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/infiniband/core/sysfs.c", i32 421, i32 8}
!151 = !{ptr @ib_port_attr_phys_state, !150, !"ib_port_attr_phys_state", i1 false, i1 false}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/infiniband/core/sysfs.c", i32 365, i32 3}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/core/sysfs.c", i32 366, i32 3}
!156 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/infiniband/core/sysfs.c", i32 367, i32 3}
!158 = !{ptr @.str.61, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/core/sysfs.c", i32 368, i32 3}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/infiniband/core/sysfs.c", i32 369, i32 3}
!162 = !{ptr @.str.63, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/infiniband/core/sysfs.c", i32 370, i32 3}
!164 = !{ptr @.str.64, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/infiniband/core/sysfs.c", i32 371, i32 3}
!166 = !{ptr @phys_state_to_str.phys_state_str, !167, !"phys_state_str", i1 false, i1 false}
!167 = !{!"../drivers/infiniband/core/sysfs.c", i32 363, i32 21}
!168 = !{ptr @.str.65, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/infiniband/core/sysfs.c", i32 422, i32 8}
!170 = !{ptr @ib_port_attr_link_layer, !169, !"ib_port_attr_link_layer", i1 false, i1 false}
!171 = !{ptr @.str.66, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/infiniband/core/sysfs.c", i32 401, i32 12}
!173 = !{ptr @.str.67, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/infiniband/core/sysfs.c", i32 404, i32 12}
!175 = !{ptr @.str.68, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/infiniband/core/sysfs.c", i32 407, i32 12}
!177 = !{ptr @alloc_port_table_group.__key, !178, !"__key", i1 false, i1 false}
!178 = !{!"../drivers/infiniband/core/sysfs.c", i32 1115, i32 3}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/infiniband/core/sysfs.c", i32 498, i32 26}
!181 = !{ptr @.str.70, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/infiniband/core/sysfs.c", i32 533, i32 25}
!183 = !{ptr @setup_hw_port_stats.__key, !184, !"__key", i1 false, i1 false}
!184 = !{!"../drivers/infiniband/core/sysfs.c", i32 1063, i32 3}
!185 = !{ptr @setup_hw_port_stats.__key.71, !186, !"__key", i1 false, i1 false}
!186 = !{!"../drivers/infiniband/core/sysfs.c", i32 1073, i32 2}
!187 = !{ptr @.str.72, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/infiniband/core/sysfs.c", i32 742, i32 11}
!189 = !{ptr @pma_group_ext, !190, !"pma_group_ext", i1 false, i1 false}
!190 = !{!"../drivers/infiniband/core/sysfs.c", i32 741, i32 37}
!191 = !{ptr @pma_attrs_ext, !192, !"pma_attrs_ext", i1 false, i1 false}
!192 = !{!"../drivers/infiniband/core/sysfs.c", i32 690, i32 26}
!193 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/infiniband/core/sysfs.c", i32 639, i32 8}
!195 = !{ptr @port_pma_attr_symbol_error, !194, !"port_pma_attr_symbol_error", i1 false, i1 false}
!196 = !{ptr @.str.74, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/infiniband/core/sysfs.c", i32 640, i32 8}
!198 = !{ptr @port_pma_attr_link_error_recovery, !197, !"port_pma_attr_link_error_recovery", i1 false, i1 false}
!199 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/core/sysfs.c", i32 641, i32 8}
!201 = !{ptr @port_pma_attr_link_downed, !200, !"port_pma_attr_link_downed", i1 false, i1 false}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/infiniband/core/sysfs.c", i32 642, i32 8}
!204 = !{ptr @port_pma_attr_port_rcv_errors, !203, !"port_pma_attr_port_rcv_errors", i1 false, i1 false}
!205 = !{ptr @.str.77, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/infiniband/core/sysfs.c", i32 643, i32 8}
!207 = !{ptr @port_pma_attr_port_rcv_remote_physical_errors, !206, !"port_pma_attr_port_rcv_remote_physical_errors", i1 false, i1 false}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/infiniband/core/sysfs.c", i32 644, i32 8}
!210 = !{ptr @port_pma_attr_port_rcv_switch_relay_errors, !209, !"port_pma_attr_port_rcv_switch_relay_errors", i1 false, i1 false}
!211 = !{ptr @.str.79, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/infiniband/core/sysfs.c", i32 645, i32 8}
!213 = !{ptr @port_pma_attr_port_xmit_discards, !212, !"port_pma_attr_port_xmit_discards", i1 false, i1 false}
!214 = !{ptr @.str.80, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/infiniband/core/sysfs.c", i32 646, i32 8}
!216 = !{ptr @port_pma_attr_port_xmit_constraint_errors, !215, !"port_pma_attr_port_xmit_constraint_errors", i1 false, i1 false}
!217 = !{ptr @.str.81, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/infiniband/core/sysfs.c", i32 647, i32 8}
!219 = !{ptr @port_pma_attr_port_rcv_constraint_errors, !218, !"port_pma_attr_port_rcv_constraint_errors", i1 false, i1 false}
!220 = !{ptr @.str.82, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/infiniband/core/sysfs.c", i32 648, i32 8}
!222 = !{ptr @port_pma_attr_local_link_integrity_errors, !221, !"port_pma_attr_local_link_integrity_errors", i1 false, i1 false}
!223 = !{ptr @.str.83, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/infiniband/core/sysfs.c", i32 649, i32 8}
!225 = !{ptr @port_pma_attr_excessive_buffer_overrun_errors, !224, !"port_pma_attr_excessive_buffer_overrun_errors", i1 false, i1 false}
!226 = !{ptr @.str.84, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/infiniband/core/sysfs.c", i32 650, i32 8}
!228 = !{ptr @port_pma_attr_VL15_dropped, !227, !"port_pma_attr_VL15_dropped", i1 false, i1 false}
!229 = !{ptr @.str.85, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/infiniband/core/sysfs.c", i32 660, i32 8}
!231 = !{ptr @port_pma_attr_ext_port_xmit_data, !230, !"port_pma_attr_ext_port_xmit_data", i1 false, i1 false}
!232 = !{ptr @.str.86, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/infiniband/core/sysfs.c", i32 661, i32 8}
!234 = !{ptr @port_pma_attr_ext_port_rcv_data, !233, !"port_pma_attr_ext_port_rcv_data", i1 false, i1 false}
!235 = !{ptr @.str.87, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/infiniband/core/sysfs.c", i32 662, i32 8}
!237 = !{ptr @port_pma_attr_ext_port_xmit_packets, !236, !"port_pma_attr_ext_port_xmit_packets", i1 false, i1 false}
!238 = !{ptr @.str.88, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/infiniband/core/sysfs.c", i32 655, i32 8}
!240 = !{ptr @port_pma_attr_port_xmit_wait, !239, !"port_pma_attr_port_xmit_wait", i1 false, i1 false}
!241 = !{ptr @.str.89, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/infiniband/core/sysfs.c", i32 663, i32 8}
!243 = !{ptr @port_pma_attr_ext_port_rcv_packets, !242, !"port_pma_attr_ext_port_rcv_packets", i1 false, i1 false}
!244 = !{ptr @.str.90, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/infiniband/core/sysfs.c", i32 665, i32 8}
!246 = !{ptr @port_pma_attr_ext_unicast_rcv_packets, !245, !"port_pma_attr_ext_unicast_rcv_packets", i1 false, i1 false}
!247 = !{ptr @.str.91, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/infiniband/core/sysfs.c", i32 664, i32 8}
!249 = !{ptr @port_pma_attr_ext_unicast_xmit_packets, !248, !"port_pma_attr_ext_unicast_xmit_packets", i1 false, i1 false}
!250 = !{ptr @.str.92, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/infiniband/core/sysfs.c", i32 667, i32 8}
!252 = !{ptr @port_pma_attr_ext_multicast_rcv_packets, !251, !"port_pma_attr_ext_multicast_rcv_packets", i1 false, i1 false}
!253 = !{ptr @.str.93, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/infiniband/core/sysfs.c", i32 666, i32 8}
!255 = !{ptr @port_pma_attr_ext_multicast_xmit_packets, !254, !"port_pma_attr_ext_multicast_xmit_packets", i1 false, i1 false}
!256 = !{ptr @pma_group_noietf, !257, !"pma_group_noietf", i1 false, i1 false}
!257 = !{!"../drivers/infiniband/core/sysfs.c", i32 746, i32 37}
!258 = !{ptr @pma_attrs_noietf, !259, !"pma_attrs_noietf", i1 false, i1 false}
!259 = !{!"../drivers/infiniband/core/sysfs.c", i32 715, i32 26}
!260 = !{ptr @pma_group, !261, !"pma_group", i1 false, i1 false}
!261 = !{!"../drivers/infiniband/core/sysfs.c", i32 736, i32 37}
!262 = !{ptr @pma_attrs, !263, !"pma_attrs", i1 false, i1 false}
!263 = !{!"../drivers/infiniband/core/sysfs.c", i32 669, i32 26}
!264 = !{ptr @port_pma_attr_port_xmit_data, !265, !"port_pma_attr_port_xmit_data", i1 false, i1 false}
!265 = !{!"../drivers/infiniband/core/sysfs.c", i32 651, i32 8}
!266 = !{ptr @port_pma_attr_port_rcv_data, !267, !"port_pma_attr_port_rcv_data", i1 false, i1 false}
!267 = !{!"../drivers/infiniband/core/sysfs.c", i32 652, i32 8}
!268 = !{ptr @port_pma_attr_port_xmit_packets, !269, !"port_pma_attr_port_xmit_packets", i1 false, i1 false}
!269 = !{!"../drivers/infiniband/core/sysfs.c", i32 653, i32 8}
!270 = !{ptr @port_pma_attr_port_rcv_packets, !271, !"port_pma_attr_port_rcv_packets", i1 false, i1 false}
!271 = !{!"../drivers/infiniband/core/sysfs.c", i32 654, i32 8}
!272 = !{ptr @.str.94, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/infiniband/core/sysfs.c", i32 1150, i32 31}
!274 = !{ptr @.str.95, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/infiniband/core/sysfs.c", i32 1159, i32 3}
!276 = !{ptr @.str.96, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/infiniband/core/sysfs.c", i32 1166, i32 56}
!278 = !{ptr @gid_attr_type, !279, !"gid_attr_type", i1 false, i1 false}
!279 = !{!"../drivers/infiniband/core/sysfs.c", i32 781, i32 25}
!280 = !{ptr @gid_attr_sysfs_ops, !281, !"gid_attr_sysfs_ops", i1 false, i1 false}
!281 = !{!"../drivers/infiniband/core/sysfs.c", i32 209, i32 31}
!282 = distinct !{null, !283, !"__warned", i1 false, i1 false}
!283 = !{!"../drivers/infiniband/core/sysfs.c", i32 444, i32 9}
!284 = !{ptr @.str.97, !283, !"<string literal>", i1 false, i1 false}
!285 = distinct !{null, !286, !"__warned", i1 false, i1 false}
!286 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!287 = !{ptr @.str.98, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.99, !286, !"<string literal>", i1 false, i1 false}
!289 = distinct !{null, !290, !"__warned", i1 false, i1 false}
!290 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!291 = !{ptr @.str.100, !290, !"<string literal>", i1 false, i1 false}
!292 = !{!"sp"}
!293 = !{i32 1, !"wchar_size", i32 2}
!294 = !{i32 1, !"min_enum_size", i32 4}
!295 = !{i32 8, !"branch-target-enforcement", i32 0}
!296 = !{i32 8, !"sign-return-address", i32 0}
!297 = !{i32 8, !"sign-return-address-all", i32 0}
!298 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!299 = !{i32 7, !"uwtable", i32 1}
!300 = !{i32 7, !"frame-pointer", i32 2}
!301 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!302 = !{!"branch_weights", i32 1, i32 2000}
!303 = !{!"auto-init"}
!304 = !{i64 2149416889}
!305 = !{i64 2149417155}
