; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/alias_GUID.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/alias_GUID.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.172, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.172 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.ib_odp_caps = type { i64, %struct.anon.163 }
%struct.anon.163 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.mlx4_ib_sriov = type { [2 x %struct.mlx4_ib_demux_ctx], [2 x ptr], %struct.spinlock, i32, %struct.mlx4_sriov_alias_guid, %struct.xarray, i32, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.xarray }
%struct.mlx4_ib_demux_ctx = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.atomic64_t, [128 x i64], ptr, %struct.mutex, %struct.rb_root, %struct.list_head, ptr, ptr, %struct.atomic_t, i32 }
%struct.mlx4_sriov_alias_guid = type { [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], %struct.spinlock, ptr }
%struct.mlx4_sriov_alias_guid_port_rec_det = type { [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr, %struct.delayed_work, i32, i32, ptr, %struct.list_head }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { [64 x i8], i64, i32, [8 x i32], i64 }
%struct.rb_root = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mlx4_ib_iboe = type { %struct.spinlock, [2 x ptr], [2 x %struct.atomic64_t], %struct.notifier_block, [2 x %struct.mlx4_port_gid_table], [2 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_port_gid_table = type { [128 x %struct.gid_entry] }
%struct.gid_entry = type { %union.ib_gid, i32, ptr, i16 }
%union.ib_gid = type { %struct.anon.159 }
%struct.anon.159 = type { i64, i64 }
%struct.mlx4_ib_counters = type { %struct.list_head, %struct.mutex, i32 }
%struct.mlx4_ib_iov_port = type { [100 x i8], i8, ptr, %struct.list_head, ptr, %struct.ib_port_attr, ptr, ptr, ptr, ptr, ptr, %struct.mlx4_ib_iov_sysfs_attr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.mlx4_ib_iov_sysfs_attr = type { ptr, ptr, i32, i32, [15 x i8], %struct.device_attribute, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pkey_mgt = type { [128 x [2 x [128 x i8]]], [2 x [128 x i16]], [128 x %struct.list_head], [128 x ptr] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mlx4_ib_diag_counters = type { ptr, ptr, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }
%struct.mlx4_next_alias_guid_work = type { i8, i8, i8, %struct.mlx4_sriov_alias_guid_info_rec_det }
%struct.ib_sa_guidinfo_rec = type { i16, i8, i8, i32, [64 x i8] }
%struct.mlx4_alias_guid_work_context = type { i8, ptr, ptr, %struct.completion, i32, %struct.list_head, i32, i64, i8 }

@mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"mlx4_ib_update_cache_on_guid_change\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/hw/mlx4/alias_GUID.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"port: %u, guid_indexes: 0x%llx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"<mlx4_ib> %s: port: %u, guid_indexes: 0x%llx\0A\00", [50 x i8] zeroinitializer }, align 32
@mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"The last slave: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"<mlx4_ib> %s: The last slave: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Guid number: %d in block: %d was not updated\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"<mlx4_ib> %s: Guid number: %d in block: %d was not updated\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mlx4_ib_notify_slaves_on_guid_change\00", [59 x i8] zeroinitializer }, align 32
@mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"slave: %d, port: %u prev_port_state: %d, new_port_state: %d, gen_event: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"<mlx4_ib> %s: slave: %d, port: %u prev_port_state: %d, new_port_state: %d, gen_event: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sending PORT_UP event to slave: %d, port: %u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"<mlx4_ib> %s: sending PORT_UP event to slave: %d, port: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"sending PORT DOWN event to slave: %d, port: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"<mlx4_ib> %s: sending PORT DOWN event to slave: %d, port: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@mlx4_ib_invalidate_all_guid_record.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mlx4_ib_invalidate_all_guid_record\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"port %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"<mlx4_ib> %s: port %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mlx4_ib_init_alias_guid_service.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&dev->sriov.alias_guid.ag_work_lock\00", [60 x i8] zeroinitializer }, align 32
@mlx4_ib_sm_guid_assign = external dso_local local_unnamed_addr global i32, align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alias_guid%d\00", [19 x i8] zeroinitializer }, align 32
@mlx4_ib_init_alias_guid_service.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"(work_completion)(&(&dev->sriov.alias_guid.ports_guid[i].alias_guid_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@mlx4_ib_init_alias_guid_service.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"&(&dev->sriov.alias_guid.ports_guid[i].alias_guid_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@mlx4_ib_init_alias_guid_service._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013<mlx4_ib> %s: init_alias_guid_service: Failed. (ret:%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlx4_ib_init_alias_guid_service\00", [32 x i8] zeroinitializer }, align 32
@mlx4_ib_init_alias_guid_service._entry_ptr = internal global ptr @mlx4_ib_init_alias_guid_service._entry, section ".printk_index", align 4
@get_cached_alias_guid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013<mlx4_ib> %s: %s: ERROR: asked for index:%d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"get_cached_alias_guid\00", [42 x i8] zeroinitializer }, align 32
@get_cached_alias_guid._entry_ptr = internal global ptr @get_cached_alias_guid._entry, section ".printk_index", align 4
@mlx4_ib_guid_port_init.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mlx4_ib_guid_port_init\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"guid was set, entry=%d, val=0x%llx, port=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"<mlx4_ib> %s: guid was set, entry=%d, val=0x%llx, port=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@alias_guid_work.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alias_guid_work\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"starting [port: %d]...\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"<mlx4_ib> %s: starting [port: %d]...\0A\00", [58 x i8] zeroinitializer }, align 32
@alias_guid_work.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.35, i8 0, i8 -65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No more records to update.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"<mlx4_ib> %s: No more records to update.\0A\00", [54 x i8] zeroinitializer }, align 32
@set_guid_rec.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"set_guid_rec\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"mlx4_ib_query_port failed (err: %d), port: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"<mlx4_ib> %s: mlx4_ib_query_port failed (err: %d), port: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@set_guid_rec.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.40, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"port %d not active...rescheduling\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"<mlx4_ib> %s: port %d not active...rescheduling\0A\00", [47 x i8] zeroinitializer }, align 32
@set_guid_rec.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.42, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"ib_sa_guid_info_rec_query failed, query_id: %d. will reschedule to the next 1 sec.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"<mlx4_ib> %s: ib_sa_guid_info_rec_query failed, query_id: %d. will reschedule to the next 1 sec.\0A\00", [62 x i8] zeroinitializer }, align 32
@ib_lid_be16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@aliasguid_query_handler.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"aliasguid_query_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(port: %d) failed: status = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"<mlx4_ib> %s: (port: %d) failed: status = %d\0A\00", [50 x i8] zeroinitializer }, align 32
@aliasguid_query_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013<mlx4_ib> %s: block num mismatch: %d != %d\0A\00", [50 x i8] zeroinitializer }, align 32
@aliasguid_query_handler._entry_ptr = internal global ptr @aliasguid_query_handler._entry, section ".printk_index", align 4
@aliasguid_query_handler.__UNIQUE_ID_ddebug514 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.50, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"lid/port: %d/%d, block_num: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"<mlx4_ib> %s: lid/port: %d/%d, block_num: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@aliasguid_query_handler.__UNIQUE_ID_ddebug515 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.52, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"need to set new value %llx, record num %d, block_num:%d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"<mlx4_ib> %s: need to set new value %llx, record num %d, block_num:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@aliasguid_query_handler._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.46, ptr @.str.2, i32 360, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"mlx4_ib: %s:Record num %d in  block_num: %d was declined by SM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aliasguid_query_handler._entry_ptr.58 = internal global ptr @aliasguid_query_handler._entry.54, section ".printk_index", align 4
@aliasguid_query_handler._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.46, ptr @.str.2, i32 380, ptr @.str.56, ptr @.str.57 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [166 x i8], [58 x i8] } { [166 x i8] c"mlx4_ib: %s: Failed to set admin guid after SysAdmin configuration. Record num %d in block_num:%d was declined by SM, new val(0x%llx) was kept, SM returned (0x%llx)\0A\00", [58 x i8] zeroinitializer }, align 32
@aliasguid_query_handler._entry_ptr.61 = internal global ptr @aliasguid_query_handler._entry.59, section ".printk_index", align 4
@aliasguid_query_handler.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.62, i8 0, i8 104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"record=%d wasn't fully set, guid_indexes=0x%llx applied_indexes=0x%llx, declined_indexes=0x%llx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"<mlx4_ib> %s: record=%d wasn't fully set, guid_indexes=0x%llx applied_indexes=0x%llx, declined_indexes=0x%llx\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 -1]
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 89, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 97, i32 5 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 106, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 209, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 263, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 267, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 277, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 611, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 847, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 879, i32 49 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 886, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 901, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 114, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 599, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 762, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 765, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 505, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 511, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 552, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 4616, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 87, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 311, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 318, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 323, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 346, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 357, i32 5 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 371, i32 6 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private constant [43 x i8] c"../drivers/infiniband/hw/mlx4/alias_GUID.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 414, i32 3 }
@llvm.compiler.used = appending global [72 x ptr] [ptr @aliasguid_query_handler._entry, ptr @aliasguid_query_handler._entry.54, ptr @aliasguid_query_handler._entry.59, ptr @aliasguid_query_handler._entry_ptr, ptr @aliasguid_query_handler._entry_ptr.58, ptr @aliasguid_query_handler._entry_ptr.61, ptr @get_cached_alias_guid._entry, ptr @get_cached_alias_guid._entry_ptr, ptr @mlx4_ib_init_alias_guid_service._entry, ptr @mlx4_ib_init_alias_guid_service._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mlx4_ib_init_alias_guid_service.__key, ptr @.str.19, ptr @.str.20, ptr @mlx4_ib_init_alias_guid_service.__key.21, ptr @.str.22, ptr @mlx4_ib_init_alias_guid_service.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @init_completion.__key, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_alias_guid_service.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_alias_guid_service.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_alias_guid_service.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_init_alias_guid_service._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_cached_alias_guid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aliasguid_query_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aliasguid_query_handler._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aliasguid_query_handler._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_update_cache_on_guid_change(ptr nocapture noundef %dev, i32 noundef %block_num, i32 noundef %port_num, ptr nocapture noundef readonly %p_data) local_unnamed_addr #0 align 64 {
entry:
  %guid_indexes = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %guid_indexes) #8
  %sub = add i32 %port_num, -1
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i80 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not = icmp eq i32 %and.i80, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  %arrayidx = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub
  %guid_indexes4 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %block_num, i32 1
  %4 = ptrtoint ptr %guid_indexes4 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %guid_indexes4, align 8
  %6 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %guid_indexes, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_update_cache_on_guid_change, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !128

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %guid_indexes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %port_num, i64 noundef %8) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %mul = shl i32 %block_num, 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.084 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.084, 4
  %div3.i = lshr i32 %add, 5
  %arrayidx.i = getelementptr i32, ptr %guid_indexes, i32 %div3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %arrayidx.i, align 4
  %11 = shl i32 16, %i.084
  %12 = and i32 %10, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %do.body40, label %if.then13

if.then13:                                        ; preds = %for.body
  %add14 = add nuw nsw i32 %i.084, %mul
  %13 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev1, align 8
  %num_slaves = getelementptr inbounds %struct.mlx4_dev, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %num_slaves to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_slaves, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %16)
  %cmp16.not = icmp ult i32 %add14, %16
  br i1 %cmp16.not, label %if.end34, label %do.body18

do.body18:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_update_cache_on_guid_change, %if.then30)) #8
          to label %cleanup [label %if.then30], !srcloc !128

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %add14) #8
  br label %cleanup

if.end34:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx37 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 7, i32 %add14
  %mul38 = shl i32 %i.084, 3
  %arrayidx39 = getelementptr i8, ptr %p_data, i32 %mul38
  %17 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %arrayidx39, align 1
  %19 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %arrayidx37, align 8
  br label %for.inc

do.body40:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_update_cache_on_guid_change, %if.then52)) #8
          to label %for.inc [label %if.then52], !srcloc !128

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef %i.084, i32 noundef %block_num) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then52, %do.body40, %if.end34
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then30, %do.body18, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %guid_indexes) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i64 @mlx4_ib_get_aguid_comp_mask_from_ix(i32 noundef %index) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %index, 4
  %sh_prom = zext i32 %add to i64
  %shl = shl nuw i64 1, %sh_prom
  ret i64 %shl
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_slave_alias_guid_event(ptr noundef %dev, i32 noundef %slave, i32 noundef %port, i32 noundef %slave_init) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %slave, 8
  %0 = mul i32 %div, 8
  %rem.decomposed = sub i32 %slave, %0
  %sub = add i32 %port, -1
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %arrayidx = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub
  %state_flags = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub, i32 4
  %1 = ptrtoint ptr %state_flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state_flags, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.end67.critedge99

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slave_init)
  %tobool7.not = icmp eq i32 %slave_init, 0
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %arrayidx13 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %div
  %mul = shl nsw i32 %rem.decomposed, 3
  %arrayidx14 = getelementptr [64 x i8], ptr %arrayidx13, i32 0, i32 %mul
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 8)
  %4 = load i64, ptr %arrayidx14, align 1
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i64 %4, label %if.then8.if.end26_crit_edge [
    i64 -1, label %if.then8.if.end67.critedge98_crit_edge
    i64 0, label %if.then8.if.end67.critedge98_crit_edge100
  ]

if.then8.if.end67.critedge98_crit_edge100:        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.critedge98

if.then8.if.end67.critedge98_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.critedge98

if.then8.if.end26_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.else:                                          ; preds = %if.end
  %dev20 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev20, align 8
  %call21 = tail call i64 @mlx4_get_admin_guid(ptr noundef %6, i32 noundef %slave, i32 noundef %port) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call21)
  %cmp22 = icmp eq i64 %call21, -1
  br i1 %cmp22, label %if.end67.critedge, label %if.else.if.end26_crit_edge

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %.pre = shl nsw i32 %rem.decomposed, 3
  br label %if.end26

if.end26:                                         ; preds = %if.else.if.end26_crit_edge, %if.then8.if.end26_crit_edge
  %mul34.pre-phi = phi i32 [ %.pre, %if.else.if.end26_crit_edge ], [ %mul, %if.then8.if.end26_crit_edge ]
  %required_guid.0 = phi i64 [ %call21, %if.else.if.end26_crit_edge ], [ -1, %if.then8.if.end26_crit_edge ]
  %arrayidx32 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %div
  %arrayidx35 = getelementptr [64 x i8], ptr %arrayidx32, i32 0, i32 %mul34.pre-phi
  %7 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 %required_guid.0, ptr %arrayidx35, align 1
  %add.i = add nsw i32 %rem.decomposed, 4
  %sh_prom.i = zext i32 %add.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %guid_indexes = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %div, i32 1
  %8 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %guid_indexes, align 8
  %or = or i64 %9, %shl.i
  store i64 %or, ptr %guid_indexes, align 8
  %status = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %div, i32 2
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status, align 8
  %time_to_run = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %div, i32 4
  %11 = ptrtoint ptr %time_to_run to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %time_to_run, align 8
  %arrayidx61 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %div, i32 3, i32 %rem.decomposed
  %12 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx61, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call2) #8
  tail call void @mlx4_ib_init_alias_guid_work(ptr noundef %dev, i32 noundef %sub)
  br label %if.end67

if.end67.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call2) #8
  br label %if.end67

if.end67.critedge98:                              ; preds = %if.then8.if.end67.critedge98_crit_edge, %if.then8.if.end67.critedge98_crit_edge100
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call2) #8
  br label %if.end67

if.end67.critedge99:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call2) #8
  br label %if.end67

if.end67:                                         ; preds = %if.end67.critedge99, %if.end67.critedge98, %if.end67.critedge, %if.end26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_get_admin_guid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_init_alias_guid_work(ptr noundef %dev, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2:                                         ; preds = %entry
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #8
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4, i32 1
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 3
  %4 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool22.not = icmp eq i32 %5, 0
  br i1 %tobool22.not, label %if.then23, label %do.body2.if.end37_crit_edge

do.body2.if.end37_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then23:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  %alias_guid_work = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %port, i32 2
  %call26 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %alias_guid_work) #8
  %wq = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %port, i32 1
  %6 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wq, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %alias_guid_work, i32 noundef 0) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then23, %do.body2.if.end37_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call16) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_notify_slaves_on_guid_change(ptr noundef %dev, i32 noundef %block_num, i32 noundef %port_num, ptr nocapture noundef readonly %p_data) local_unnamed_addr #0 align 64 {
entry:
  %guid_indexes = alloca i64, align 8
  %gen_event = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %guid_indexes) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gen_event) #8
  %0 = ptrtoint ptr %gen_event to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gen_event, align 4, !annotation !129
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i228 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.not = icmp eq i32 %and.i228, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  %sub = add i32 %port_num, -1
  %arrayidx = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub
  %arrayidx2 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %block_num
  %guid_indexes10 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %block_num, i32 1
  %5 = ptrtoint ptr %guid_indexes10 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %guid_indexes10, align 8
  %7 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %guid_indexes, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_notify_slaves_on_guid_change, %if.then15)) #8
          to label %do.end [label %if.then15], !srcloc !128

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %guid_indexes, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.9, i32 noundef %port_num, i64 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.end
  %mul = shl i32 %block_num, 3
  %sriov.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4, i32 1
  %conv76 = trunc i32 %port_num to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %i.0234 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.0234, 4
  %div3.i = lshr i32 %add, 5
  %arrayidx.i = getelementptr i32, ptr %guid_indexes, i32 %div3.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i, align 4
  %12 = shl i32 16, %i.0234
  %13 = and i32 %11, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %add21 = add nuw nsw i32 %i.0234, %mul
  %14 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 8
  %num_vfs = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_vfs, align 4
  %add23 = add i32 %19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add21, i32 %add23)
  %cmp24.not = icmp slt i32 %add21, %add23
  br i1 %cmp24.not, label %if.end26, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %call28 = call i32 @mlx4_phys_to_slave_port(ptr noundef %15, i32 noundef %add21, i32 noundef %port_num) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.for.inc_crit_edge, label %if.end31

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end31:                                         ; preds = %if.end26
  %mul32 = shl i32 %i.0234, 3
  %arrayidx33 = getelementptr i8, ptr %p_data, i32 %mul32
  %20 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx33, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %add21)
  %cmp.i = icmp sgt i32 %add21, 127
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28, i32 noundef %add21) #11
  br label %get_cached_alias_guid.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov.i, i32 0, i32 %sub, i32 7, i32 %add21
  %22 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx1.i, align 8
  br label %get_cached_alias_guid.exit

get_cached_alias_guid.exit:                       ; preds = %if.end.i, %do.end.i
  %retval.0.i229 = phi i64 [ -1, %do.end.i ], [ %23, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %retval.0.i229)
  %cmp37.not = icmp eq i64 %21, %retval.0.i229
  br i1 %cmp37.not, label %do.body41, label %get_cached_alias_guid.exit.for.inc_crit_edge

get_cached_alias_guid.exit.for.inc_crit_edge:     ; preds = %get_cached_alias_guid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body41:                                        ; preds = %get_cached_alias_guid.exit
  %call47 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %arrayidx53 = getelementptr [64 x i8], ptr %arrayidx2, i32 0, i32 %mul32
  %24 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %25)
  %cmp54 = icmp eq i64 %25, -1
  %spec.store.select = select i1 %cmp54, i64 0, i64 %25
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %spec.store.select)
  %cmp58 = icmp eq i64 %21, %spec.store.select
  br i1 %cmp58, label %if.then60, label %if.else

if.then60:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %guid_indexes10 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %guid_indexes10, align 8
  %sh_prom.i = zext i32 %add to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %neg = xor i64 %shl.i, -1
  %and = and i64 %27, %neg
  store i64 %and, ptr %guid_indexes10, align 8
  br label %if.end71

if.else:                                          ; preds = %do.body41
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp64.not = icmp eq i64 %21, 0
  br i1 %cmp64.not, label %if.else.if.end71_crit_edge, label %if.then66

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then66:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call47) #8
  br label %for.inc

if.end71:                                         ; preds = %if.else.if.end71_crit_edge, %if.then60
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call47) #8
  %28 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev1, align 8
  %call77 = call i32 @mlx4_gen_guid_change_eqe(ptr noundef %29, i32 noundef %add21, i8 noundef zeroext %conv76) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %cmp78.not = icmp eq i64 %21, 0
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 8
  br i1 %cmp78.not, label %if.else126, label %if.then80

if.then80:                                        ; preds = %if.end71
  %call83 = call i32 @mlx4_get_slave_port_state(ptr noundef %31, i32 noundef %add21, i8 noundef zeroext %conv76) #8
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 8
  %call86 = call i32 @set_and_calc_slave_port_state(ptr noundef %33, i32 noundef %add21, i8 noundef zeroext %conv76, i32 noundef 2, ptr noundef nonnull %gen_event) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_notify_slaves_on_guid_change, %if.then99)) #8
          to label %do.end102 [label %if.then99], !srcloc !128

if.then99:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %gen_event to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gen_event, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %add21, i32 noundef %port_num, i32 noundef %call83, i32 noundef %call86, i32 noundef %35) #8
  br label %do.end102

do.end102:                                        ; preds = %if.then99, %if.then80
  %36 = ptrtoint ptr %gen_event to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gen_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp103 = icmp eq i32 %37, 1
  br i1 %cmp103, label %do.body106, label %do.end102.for.inc_crit_edge

do.end102.for.inc_crit_edge:                      ; preds = %do.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body106:                                       ; preds = %do.end102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_notify_slaves_on_guid_change, %if.then118)) #8
          to label %do.end121 [label %if.then118], !srcloc !128

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, i32 noundef %add21, i32 noundef %port_num) #8
  br label %do.end121

do.end121:                                        ; preds = %if.then118, %do.body106
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 8
  %call124 = call i32 @mlx4_gen_port_state_change_eqe(ptr noundef %39, i32 noundef %add21, i8 noundef zeroext %conv76, i8 noundef zeroext 4) #8
  br label %for.inc

if.else126:                                       ; preds = %if.end71
  %call129 = call i32 @set_and_calc_slave_port_state(ptr noundef %31, i32 noundef %add21, i8 noundef zeroext %conv76, i32 noundef 3, ptr noundef nonnull %gen_event) #8
  %40 = ptrtoint ptr %gen_event to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %gen_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp130 = icmp eq i32 %41, 0
  br i1 %cmp130, label %do.body133, label %if.else126.for.inc_crit_edge

if.else126.for.inc_crit_edge:                     ; preds = %if.else126
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body133:                                       ; preds = %if.else126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_notify_slaves_on_guid_change, %if.then145)) #8
          to label %do.end148 [label %if.then145], !srcloc !128

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9, i32 noundef %add21, i32 noundef %port_num) #8
  br label %do.end148

do.end148:                                        ; preds = %if.then145, %do.body133
  %42 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev1, align 8
  %call151 = call i32 @mlx4_gen_port_state_change_eqe(ptr noundef %43, i32 noundef %add21, i8 noundef zeroext %conv76, i8 noundef zeroext 1) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end148, %if.else126.for.inc_crit_edge, %do.end121, %do.end102.for.inc_crit_edge, %if.then66, %get_cached_alias_guid.exit.for.inc_crit_edge, %if.end26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0234, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gen_event) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %guid_indexes) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_phys_to_slave_port(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_gen_guid_change_eqe(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_slave_port_state(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_and_calc_slave_port_state(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_gen_port_state_change_eqe(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_invalidate_all_guid_record(ptr noundef %dev, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_invalidate_all_guid_record.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_invalidate_all_guid_record, %if.then)) #8
          to label %do.body4 [label %if.then], !srcloc !128

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_invalidate_all_guid_record.__UNIQUE_ID_ddebug525, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %port) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #8
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4, i32 1
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %sub = add i32 %port, -1
  %state_flags = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub, i32 4
  %0 = ptrtoint ptr %state_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %do.body4.if.end37_crit_edge, label %if.then29

do.body4.if.end37_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then29:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mlx4_ib_guid_port_init(ptr noundef %dev, i32 noundef %port)
  %2 = ptrtoint ptr %state_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state_flags, align 4
  %and36 = and i32 %3, -2
  store i32 %and36, ptr %state_flags, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %do.body4.if.end37_crit_edge
  %conv.i = and i32 %port, 255
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub.i
  br label %for.body

for.body:                                         ; preds = %invalidate_guid_record.exit.for.body_crit_edge, %if.end37
  %i.093 = phi i32 [ 0, %if.end37 ], [ %inc, %invalidate_guid_record.exit.for.body_crit_edge ]
  %arrayidx1.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %i.093
  %status.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %i.093, i32 2
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.093)
  %tobool.not.i = icmp eq i32 %i.093, 0
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %6 = load i64, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %6)
  %cmp12.i = icmp eq i64 %6, -1
  %or.cond66.i = or i1 %tobool.not.i, %cmp12.i
  %spec.select.i = select i1 %or.cond66.i, i64 0, i64 16
  %arrayidx11.1.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 8
  %7 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %arrayidx11.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %8)
  %cmp12.1.i = icmp eq i64 %8, -1
  %or.1.i = or i64 %spec.select.i, 32
  %comp_mask.1.1.i = select i1 %cmp12.1.i, i64 %spec.select.i, i64 %or.1.i
  %arrayidx11.2.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 16
  %9 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %arrayidx11.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %10)
  %cmp12.2.i = icmp eq i64 %10, -1
  %or.2.i = or i64 %comp_mask.1.1.i, 64
  %comp_mask.1.2.i = select i1 %cmp12.2.i, i64 %comp_mask.1.1.i, i64 %or.2.i
  %arrayidx11.3.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 24
  %11 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %arrayidx11.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %12)
  %cmp12.3.i = icmp eq i64 %12, -1
  %or.3.i = or i64 %comp_mask.1.2.i, 128
  %comp_mask.1.3.i = select i1 %cmp12.3.i, i64 %comp_mask.1.2.i, i64 %or.3.i
  %arrayidx11.4.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 32
  %13 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %arrayidx11.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %14)
  %cmp12.4.i = icmp eq i64 %14, -1
  %or.4.i = or i64 %comp_mask.1.3.i, 256
  %comp_mask.1.4.i = select i1 %cmp12.4.i, i64 %comp_mask.1.3.i, i64 %or.4.i
  %arrayidx11.5.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 40
  %15 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %arrayidx11.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %16)
  %cmp12.5.i = icmp eq i64 %16, -1
  %or.5.i = or i64 %comp_mask.1.4.i, 512
  %comp_mask.1.5.i = select i1 %cmp12.5.i, i64 %comp_mask.1.4.i, i64 %or.5.i
  %arrayidx11.6.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 48
  %17 = ptrtoint ptr %arrayidx11.6.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %arrayidx11.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %18)
  %cmp12.6.i = icmp eq i64 %18, -1
  %or.6.i = or i64 %comp_mask.1.5.i, 1024
  %comp_mask.1.6.i = select i1 %cmp12.6.i, i64 %comp_mask.1.5.i, i64 %or.6.i
  %arrayidx11.7.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 56
  %19 = ptrtoint ptr %arrayidx11.7.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %arrayidx11.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %20)
  %cmp12.7.i = icmp eq i64 %20, -1
  %or.7.i = or i64 %comp_mask.1.6.i, 2048
  %comp_mask.1.7.i = select i1 %cmp12.7.i, i64 %comp_mask.1.6.i, i64 %or.7.i
  %guid_indexes.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %i.093, i32 1
  %21 = ptrtoint ptr %guid_indexes.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %guid_indexes.i, align 8
  %or23.i = or i64 %comp_mask.1.7.i, %22
  store i64 %or23.i, ptr %guid_indexes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or23.i)
  %tobool33.not.i = icmp eq i64 %or23.i, 0
  br i1 %tobool33.not.i, label %for.body.invalidate_guid_record.exit_crit_edge, label %if.then34.i

for.body.invalidate_guid_record.exit_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalidate_guid_record.exit

if.then34.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %status.i, align 8
  br label %invalidate_guid_record.exit

invalidate_guid_record.exit:                      ; preds = %if.then34.i, %for.body.invalidate_guid_record.exit_crit_edge
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %invalidate_guid_record.exit.for.body_crit_edge

invalidate_guid_record.exit.for.body_crit_edge:   ; preds = %invalidate_guid_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %invalidate_guid_record.exit
  %dev41 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %24 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev41, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool43.not = icmp eq i32 %and.i, 0
  br i1 %tobool43.not, label %for.end.if.end65_crit_edge, label %land.lhs.true

for.end.if.end65_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

land.lhs.true:                                    ; preds = %for.end
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 3
  %28 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool45.not = icmp eq i32 %29, 0
  br i1 %tobool45.not, label %if.then46, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %alias_guid_work = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub, i32 2
  %call52 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %alias_guid_work) #8
  %wq = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub, i32 1
  %30 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq, align 8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %alias_guid_work, i32 noundef 0) #8
  br label %if.end65

if.end65:                                         ; preds = %if.then46, %land.lhs.true.if.end65_crit_edge, %for.end.if.end65_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call21) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_guid_port_init(ptr nocapture noundef %dev, i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev5 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  %sub = add i32 %port, -1
  %arrayidx = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc21.for.cond2.preheader_crit_edge, %entry
  %j.043 = phi i32 [ 0, %entry ], [ %inc22, %for.inc21.for.cond2.preheader_crit_edge ]
  %mul = shl i32 %j.043, 3
  %arrayidx12 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %j.043
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.cond2.preheader
  %k.041 = phi i32 [ 0, %for.cond2.preheader ], [ %inc, %for.inc.for.body4_crit_edge ]
  %add = add nuw nsw i32 %k.041, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool.not = icmp eq i32 %add, 0
  br i1 %tobool.not, label %for.body4.for.inc_crit_edge, label %lor.lhs.false

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body4
  %0 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev5, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %num_vfs = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_vfs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp6 = icmp sgt i32 %add, %5
  br i1 %cmp6, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false7

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call = tail call i32 @mlx4_is_slave_active(ptr noundef %1, i32 noundef %add) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool9.not = icmp eq i32 %call, 0
  br i1 %tobool9.not, label %lor.lhs.false7.for.inc_crit_edge, label %if.end

lor.lhs.false7.for.inc_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev5, align 8
  %call11 = tail call i64 @mlx4_get_admin_guid(ptr noundef %7, i32 noundef %add, i32 noundef %port) #8
  %mul13 = shl i32 %k.041, 3
  %arrayidx14 = getelementptr [64 x i8], ptr %arrayidx12, i32 0, i32 %mul13
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 %call11, ptr %arrayidx14, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_guid_port_init.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_guid_port_init, %if.then19)) #8
          to label %for.inc [label %if.then19], !srcloc !128

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_guid_port_init.__UNIQUE_ID_ddebug524, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, i32 noundef %add, i64 noundef %call11, i32 noundef %port) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.end, %lor.lhs.false7.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body4.for.inc_crit_edge
  %inc = add nuw nsw i32 %k.041, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc21, label %for.inc.for.body4_crit_edge

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4

for.inc21:                                        ; preds = %for.inc
  %inc22 = add nuw nsw i32 %j.043, 1
  %exitcond44.not = icmp eq i32 %inc22, 16
  br i1 %exitcond44.not, label %for.end23, label %for.inc21.for.cond2.preheader_crit_edge

for.inc21.for.cond2.preheader_crit_edge:          ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader

for.end23:                                        ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_destroy_alias_guid_service(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp74 = icmp sgt i32 %1, 0
  br i1 %cmp74, label %for.body.lr.ph, label %entry.for.end44_crit_edge

entry.for.end44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.body.lr.ph:                                   ; preds = %entry
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4, i32 1
  br label %for.body

for.cond33.preheader:                             ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp3576 = icmp sgt i32 %20, 0
  br i1 %cmp3576, label %for.body37.lr.ph, label %for.cond33.preheader.for.end44_crit_edge

for.cond33.preheader.for.end44_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.body37.lr.ph:                                 ; preds = %for.cond33.preheader
  %alias_guid39 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  br label %for.body37

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %i.075 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %alias_guid_work = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.075, i32 2
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %alias_guid_work) #8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %cb_list = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.075, i32 6
  %2 = ptrtoint ptr %cb_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cb_list, align 4
  %cmp.i.not72 = icmp eq ptr %3, %cb_list
  br i1 %cmp.i.not72, label %for.body.while.end_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %for.body.while.body_crit_edge
  %4 = phi ptr [ %18, %list_del.exit.while.body_crit_edge ], [ %3, %for.body.while.body_crit_edge ]
  %flags.073 = phi i32 [ %call26, %list_del.exit.while.body_crit_edge ], [ %call6, %for.body.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -72
  %sa_query12 = getelementptr i8, ptr %4, i32 -64
  %5 = ptrtoint ptr %sa_query12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sa_query12, align 8
  store ptr null, ptr %sa_query12, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %flags.073) #8
  %query_id = getelementptr i8, ptr %4, i32 -4
  %15 = ptrtoint ptr %query_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %query_id, align 4
  tail call void @ib_sa_cancel_query(i32 noundef %16, ptr noundef %6) #8
  %done = getelementptr i8, ptr %4, i32 -60
  tail call void @wait_for_completion(ptr noundef %done) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  %call26 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %17 = ptrtoint ptr %cb_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %cb_list, align 4
  %cmp.i.not = icmp eq ptr %18, %cb_list
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %for.body.while.end_crit_edge
  %flags.0.lcssa = phi i32 [ %call6, %for.body.while.end_crit_edge ], [ %call26, %list_del.exit.while.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %flags.0.lcssa) #8
  %inc = add nuw nsw i32 %i.075, 1
  %19 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_ports, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %while.end.for.body_crit_edge, label %for.cond33.preheader

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body37:                                       ; preds = %for.body37.for.body37_crit_edge, %for.body37.lr.ph
  %i.177 = phi i32 [ 0, %for.body37.lr.ph ], [ %inc43, %for.body37.for.body37_crit_edge ]
  %wq = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid39, i32 0, i32 %i.177, i32 1
  %21 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wq, align 8
  tail call void @destroy_workqueue(ptr noundef %22) #8
  %inc43 = add nuw nsw i32 %i.177, 1
  %23 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_ports, align 4
  %cmp35 = icmp slt i32 %inc43, %24
  br i1 %cmp35, label %for.body37.for.body37_crit_edge, label %for.body37.for.end44_crit_edge

for.body37.for.end44_crit_edge:                   ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end44

for.body37.for.body37_crit_edge:                  ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

for.end44:                                        ; preds = %for.body37.for.end44_crit_edge, %for.cond33.preheader.for.end44_crit_edge, %entry.for.end44_crit_edge
  %sa_client = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4, i32 2
  %25 = ptrtoint ptr %sa_client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sa_client, align 4
  tail call void @ib_sa_unregister_client(ptr noundef %26) #8
  %27 = ptrtoint ptr %sa_client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sa_client, align 4
  tail call void @kfree(ptr noundef %28) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_cancel_query(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_init_alias_guid_service(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %alias_wq_name = alloca [15 x i8], align 1
  %gid = alloca %union.ib_gid, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %alias_wq_name) #8
  %0 = call ptr @memset(ptr %alias_wq_name, i32 255, i32 15)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %gid) #8
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 1
  %1 = call ptr @memset(ptr %gid, i32 255, i32 16)
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 60) #12
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4
  %sa_client = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4, i32 2
  %7 = ptrtoint ptr %sa_client to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %sa_client, align 4
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @ib_sa_register_client(ptr noundef nonnull %call7.i.i) #8
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %ag_work_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @mlx4_ib_init_alias_guid_service.__key, i16 noundef signext 3) #8
  %num_ports = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not238 = icmp slt i32 %9, 1
  br i1 %cmp.not238, label %if.end8.cleanup_crit_edge, label %for.body.lr.ph

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end8
  %query_gid = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 1, i32 26
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add i32 %i.0239, 1
  %10 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc, %11
  br i1 %cmp.not, label %for.cond20.preheader, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond20.preheader:                             ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp22243 = icmp sgt i32 %11, 0
  br i1 %cmp22243, label %for.cond20.preheader.for.body23_crit_edge, label %for.cond20.preheader.cleanup_crit_edge

for.cond20.preheader.cleanup_crit_edge:           ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond20.preheader.for.body23_crit_edge:        ; preds = %for.cond20.preheader
  br label %for.body23

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0239 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %12 = ptrtoint ptr %query_gid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %query_gid, align 4
  %call16 = call i32 %13(ptr noundef %dev, i32 noundef %i.0239, i32 noundef 0, ptr noundef nonnull %gid) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond, label %for.body.err_unregister_crit_edge

for.body.err_unregister_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister

for.body23:                                       ; preds = %do.body89.for.body23_crit_edge, %for.cond20.preheader.for.body23_crit_edge
  %i.1244 = phi i32 [ %.pre, %do.body89.for.body23_crit_edge ], [ 0, %for.cond20.preheader.for.body23_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244
  %14 = call ptr @memset(ptr %arrayidx, i32 0, i32 2048)
  %state_flags = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244, i32 4
  %15 = ptrtoint ptr %state_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state_flags, align 4
  %or = or i32 %16, 1
  store i32 %or, ptr %state_flags, align 4
  %17 = call ptr @memset(ptr %arrayidx, i32 255, i32 64)
  %arrayidx37.1 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 1
  %18 = call ptr @memset(ptr %arrayidx37.1, i32 255, i32 64)
  %arrayidx37.2 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 2
  %19 = call ptr @memset(ptr %arrayidx37.2, i32 255, i32 64)
  %arrayidx37.3 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 3
  %20 = call ptr @memset(ptr %arrayidx37.3, i32 255, i32 64)
  %arrayidx37.4 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 4
  %21 = call ptr @memset(ptr %arrayidx37.4, i32 255, i32 64)
  %arrayidx37.5 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 5
  %22 = call ptr @memset(ptr %arrayidx37.5, i32 255, i32 64)
  %arrayidx37.6 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 6
  %23 = call ptr @memset(ptr %arrayidx37.6, i32 255, i32 64)
  %arrayidx37.7 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 7
  %24 = call ptr @memset(ptr %arrayidx37.7, i32 255, i32 64)
  %arrayidx37.8 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 8
  %25 = call ptr @memset(ptr %arrayidx37.8, i32 255, i32 64)
  %arrayidx37.9 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 9
  %26 = call ptr @memset(ptr %arrayidx37.9, i32 255, i32 64)
  %arrayidx37.10 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 10
  %27 = call ptr @memset(ptr %arrayidx37.10, i32 255, i32 64)
  %arrayidx37.11 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 11
  %28 = call ptr @memset(ptr %arrayidx37.11, i32 255, i32 64)
  %arrayidx37.12 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 12
  %29 = call ptr @memset(ptr %arrayidx37.12, i32 255, i32 64)
  %arrayidx37.13 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 13
  %30 = call ptr @memset(ptr %arrayidx37.13, i32 255, i32 64)
  %arrayidx37.14 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 14
  %31 = call ptr @memset(ptr %arrayidx37.14, i32 255, i32 64)
  %arrayidx37.15 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 15
  %32 = call ptr @memset(ptr %arrayidx37.15, i32 255, i32 64)
  %cb_list = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244, i32 6
  %33 = ptrtoint ptr %cb_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %cb_list, ptr %cb_list, align 4
  %prev.i = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244, i32 6, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %cb_list, ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mlx4_ib_sm_guid_assign to i32))
  %35 = load i32, ptr @mlx4_ib_sm_guid_assign, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool45.not = icmp eq i32 %35, 0
  %.pre = add nuw nsw i32 %i.1244, 1
  br i1 %tobool45.not, label %for.body23.if.end54_crit_edge, label %for.body23.for.body49_crit_edge

for.body23.for.body49_crit_edge:                  ; preds = %for.body23
  br label %for.body49

for.body23.if.end54_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

for.body49:                                       ; preds = %for.body49.for.body49_crit_edge, %for.body23.for.body49_crit_edge
  %j.1241 = phi i32 [ %inc52, %for.body49.for.body49_crit_edge ], [ 1, %for.body23.for.body49_crit_edge ]
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 8
  call void @mlx4_set_admin_guid(ptr noundef %37, i64 noundef 0, i32 noundef %j.1241, i32 noundef %.pre) #8
  %inc52 = add nuw nsw i32 %j.1241, 1
  %exitcond.not = icmp eq i32 %inc52, 128
  br i1 %exitcond.not, label %for.body49.if.end54_crit_edge, label %for.body49.for.body49_crit_edge

for.body49.for.body49_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body49

for.body49.if.end54_crit_edge:                    ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.end54:                                         ; preds = %for.body49.if.end54_crit_edge, %for.body23.if.end54_crit_edge
  %conv.i = and i32 %.pre, 255
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub.i
  br label %for.body57

for.body57:                                       ; preds = %invalidate_guid_record.exit.for.body57_crit_edge, %if.end54
  %j.2242 = phi i32 [ 0, %if.end54 ], [ %inc60, %invalidate_guid_record.exit.for.body57_crit_edge ]
  %arrayidx1.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %j.2242
  %status.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %j.2242, i32 2
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.2242)
  %tobool.not.i = icmp eq i32 %j.2242, 0
  %39 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %40)
  %cmp12.i = icmp eq i64 %40, -1
  %or.cond66.i = or i1 %tobool.not.i, %cmp12.i
  %spec.select.i = select i1 %or.cond66.i, i64 0, i64 16
  %arrayidx11.1.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 8
  %41 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %arrayidx11.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %42)
  %cmp12.1.i = icmp eq i64 %42, -1
  %or.1.i = or i64 %spec.select.i, 32
  %comp_mask.1.1.i = select i1 %cmp12.1.i, i64 %spec.select.i, i64 %or.1.i
  %arrayidx11.2.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 16
  %43 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %arrayidx11.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %44)
  %cmp12.2.i = icmp eq i64 %44, -1
  %or.2.i = or i64 %comp_mask.1.1.i, 64
  %comp_mask.1.2.i = select i1 %cmp12.2.i, i64 %comp_mask.1.1.i, i64 %or.2.i
  %arrayidx11.3.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 24
  %45 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %46 = load i64, ptr %arrayidx11.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %46)
  %cmp12.3.i = icmp eq i64 %46, -1
  %or.3.i = or i64 %comp_mask.1.2.i, 128
  %comp_mask.1.3.i = select i1 %cmp12.3.i, i64 %comp_mask.1.2.i, i64 %or.3.i
  %arrayidx11.4.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 32
  %47 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %48 = load i64, ptr %arrayidx11.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %48)
  %cmp12.4.i = icmp eq i64 %48, -1
  %or.4.i = or i64 %comp_mask.1.3.i, 256
  %comp_mask.1.4.i = select i1 %cmp12.4.i, i64 %comp_mask.1.3.i, i64 %or.4.i
  %arrayidx11.5.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 40
  %49 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %arrayidx11.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %50)
  %cmp12.5.i = icmp eq i64 %50, -1
  %or.5.i = or i64 %comp_mask.1.4.i, 512
  %comp_mask.1.5.i = select i1 %cmp12.5.i, i64 %comp_mask.1.4.i, i64 %or.5.i
  %arrayidx11.6.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 48
  %51 = ptrtoint ptr %arrayidx11.6.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %arrayidx11.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %52)
  %cmp12.6.i = icmp eq i64 %52, -1
  %or.6.i = or i64 %comp_mask.1.5.i, 1024
  %comp_mask.1.6.i = select i1 %cmp12.6.i, i64 %comp_mask.1.5.i, i64 %or.6.i
  %arrayidx11.7.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 56
  %53 = ptrtoint ptr %arrayidx11.7.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %arrayidx11.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %54)
  %cmp12.7.i = icmp eq i64 %54, -1
  %or.7.i = or i64 %comp_mask.1.6.i, 2048
  %comp_mask.1.7.i = select i1 %cmp12.7.i, i64 %comp_mask.1.6.i, i64 %or.7.i
  %guid_indexes.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %j.2242, i32 1
  %55 = ptrtoint ptr %guid_indexes.i to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %guid_indexes.i, align 8
  %or23.i = or i64 %comp_mask.1.7.i, %56
  store i64 %or23.i, ptr %guid_indexes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or23.i)
  %tobool33.not.i = icmp eq i64 %or23.i, 0
  br i1 %tobool33.not.i, label %for.body57.invalidate_guid_record.exit_crit_edge, label %if.then34.i

for.body57.invalidate_guid_record.exit_crit_edge: ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalidate_guid_record.exit

if.then34.i:                                      ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %status.i, align 8
  br label %invalidate_guid_record.exit

invalidate_guid_record.exit:                      ; preds = %if.then34.i, %for.body57.invalidate_guid_record.exit_crit_edge
  %inc60 = add nuw nsw i32 %j.2242, 1
  %exitcond250.not = icmp eq i32 %inc60, 16
  br i1 %exitcond250.not, label %for.end61, label %invalidate_guid_record.exit.for.body57_crit_edge

invalidate_guid_record.exit.for.body57_crit_edge: ; preds = %invalidate_guid_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57

for.end61:                                        ; preds = %invalidate_guid_record.exit
  %parent = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244, i32 5
  %58 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %alias_guid, ptr %parent, align 8
  %port = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244, i32 3
  %59 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %i.1244, ptr %port, align 8
  %call73 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %alias_wq_name, i32 noundef 15, ptr noundef nonnull @.str.20, i32 noundef %i.1244)
  %call75 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull %alias_wq_name, i32 noundef 655370, i32 noundef 1) #8
  %wq = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244, i32 1
  %60 = ptrtoint ptr %wq to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call75, ptr %wq, align 8
  %tobool85.not = icmp eq ptr %call75, null
  br i1 %tobool85.not, label %for.cond134.preheader, label %do.body89

for.cond134.preheader:                            ; preds = %for.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1244)
  %cmp135246.not = icmp eq i32 %i.1244, 0
  br i1 %cmp135246.not, label %for.cond134.preheader.err_unregister_crit_edge, label %for.cond134.preheader.for.body137_crit_edge

for.cond134.preheader.for.body137_crit_edge:      ; preds = %for.cond134.preheader
  br label %for.body137

for.cond134.preheader.err_unregister_crit_edge:   ; preds = %for.cond134.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister

do.body89:                                        ; preds = %for.end61
  %alias_guid_work = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244, i32 2
  call void @__init_work(ptr noundef %alias_guid_work, i32 noundef 0) #8
  %61 = ptrtoint ptr %alias_guid_work to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %alias_guid_work, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %alias_guid_work, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @mlx4_ib_init_alias_guid_service.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry112 = getelementptr inbounds %struct.work_struct, ptr %alias_guid_work, i32 0, i32 1
  %62 = ptrtoint ptr %entry112 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry112, ptr %entry112, align 4
  %prev.i234 = getelementptr inbounds %struct.work_struct, ptr %alias_guid_work, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i234 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry112, ptr %prev.i234, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %alias_guid_work, i32 0, i32 2
  %64 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @alias_guid_work, ptr %func, align 4
  %timer = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.1244, i32 2, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.24, ptr noundef nonnull @mlx4_ib_init_alias_guid_service.__key.23) #8
  %65 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_ports, align 4
  %cmp22 = icmp slt i32 %.pre, %66
  br i1 %cmp22, label %do.body89.for.body23_crit_edge, label %do.body89.cleanup_crit_edge

do.body89.cleanup_crit_edge:                      ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body89.for.body23_crit_edge:                   ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body23

for.body137:                                      ; preds = %for.body137.for.body137_crit_edge, %for.cond134.preheader.for.body137_crit_edge
  %i.2247.in = phi i32 [ %i.2247, %for.body137.for.body137_crit_edge ], [ %i.1244, %for.cond134.preheader.for.body137_crit_edge ]
  %i.2247 = add nsw i32 %i.2247.in, -1
  %wq142 = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %i.2247, i32 1
  %67 = ptrtoint ptr %wq142 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wq142, align 8
  call void @destroy_workqueue(ptr noundef %68) #8
  %69 = ptrtoint ptr %wq142 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %wq142, align 8
  %cmp135.not = icmp eq i32 %i.2247, 0
  br i1 %cmp135.not, label %for.body137.err_unregister_crit_edge, label %for.body137.for.body137_crit_edge

for.body137.for.body137_crit_edge:                ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body137

for.body137.err_unregister_crit_edge:             ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_unregister

err_unregister:                                   ; preds = %for.body137.err_unregister_crit_edge, %for.cond134.preheader.err_unregister_crit_edge, %for.body.err_unregister_crit_edge
  %ret.0 = phi i32 [ -12, %for.cond134.preheader.err_unregister_crit_edge ], [ -12, %for.body137.err_unregister_crit_edge ], [ -14, %for.body.err_unregister_crit_edge ]
  %70 = ptrtoint ptr %sa_client to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sa_client, align 4
  call void @ib_sa_unregister_client(ptr noundef %71) #8
  %72 = ptrtoint ptr %sa_client to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %sa_client, align 4
  call void @kfree(ptr noundef %73) #8
  %74 = ptrtoint ptr %sa_client to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %sa_client, align 4
  %call163 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %err_unregister, %do.body89.cleanup_crit_edge, %for.cond20.preheader.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_unregister ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %for.cond20.preheader.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 0, %do.body89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %gid) #8
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %alias_wq_name) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_sa_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_set_admin_guid(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alias_guid_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr i8, ptr %work, i32 108
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %add.ptr6 = getelementptr i8, ptr %1, i32 -5464
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 128) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alias_guid_work.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alias_guid_work, %if.then13)) #8
          to label %do.end [label %if.then13], !srcloc !128

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr i8, ptr %work, i32 100
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 8
  %add = add i32 %4, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alias_guid_work.__UNIQUE_ID_ddebug526, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %add) #8
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %port15 = getelementptr i8, ptr %work, i32 100
  %5 = ptrtoint ptr %port15 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port15, align 8
  %ag_work_lock.i = getelementptr i8, ptr %1, i32 4096
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock.i) #8
  %idxprom.i.i = and i32 %6, 255
  %arrayidx.i.i = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %1, i32 0, i32 %idxprom.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end
  %j.026.i.i = phi i32 [ 0, %do.end ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %low_record_time.025.i.i = phi i64 [ 0, %do.end ], [ %low_record_time.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %record_index.024.i.i = phi i32 [ -1, %do.end ], [ %record_index.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx1.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %j.026.i.i
  %rec.sroa.5.0.arrayidx1.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i, i32 72
  %7 = ptrtoint ptr %rec.sroa.5.0.arrayidx1.sroa_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %rec.sroa.5.0.copyload.i.i = load i32, ptr %rec.sroa.5.0.arrayidx1.sroa_idx.i.i, align 8
  %rec.sroa.617.0.arrayidx1.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i, i32 112
  %8 = ptrtoint ptr %rec.sroa.617.0.arrayidx1.sroa_idx.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %rec.sroa.617.0.copyload.i.i = load i64, ptr %rec.sroa.617.0.arrayidx1.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rec.sroa.5.0.copyload.i.i)
  %cmp2.i.i = icmp eq i32 %rec.sroa.5.0.copyload.i.i, 0
  br i1 %cmp2.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %rec.sroa.4.0.arrayidx1.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx1.i.i, i32 64
  %9 = ptrtoint ptr %rec.sroa.4.0.arrayidx1.sroa_idx.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %rec.sroa.4.0.copyload.i.i = load i64, ptr %rec.sroa.4.0.arrayidx1.sroa_idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rec.sroa.4.0.copyload.i.i)
  %tobool.not.i.i = icmp eq i64 %rec.sroa.4.0.copyload.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %record_index.024.i.i)
  %cmp3.i.i = icmp eq i32 %record_index.024.i.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %rec.sroa.617.0.copyload.i.i, i64 %low_record_time.025.i.i)
  %cmp4.i.i = icmp ult i64 %rec.sroa.617.0.copyload.i.i, %low_record_time.025.i.i
  %or.cond.i.i = select i1 %cmp3.i.i, i1 true, i1 %cmp4.i.i
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %j.026.i.i, i32 %record_index.024.i.i
  %spec.select23.i.i = select i1 %or.cond.i.i, i64 %rec.sroa.617.0.copyload.i.i, i64 %low_record_time.025.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %record_index.1.i.i = phi i32 [ %record_index.024.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %record_index.024.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %if.then.i.i ]
  %low_record_time.1.i.i = phi i64 [ %low_record_time.025.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge ], [ %low_record_time.025.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select23.i.i, %if.then.i.i ]
  %inc.i.i = add nuw nsw i32 %j.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %get_low_record_time_index.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

get_low_record_time_index.exit.i:                 ; preds = %for.inc.i.i
  %conv = trunc i32 %6 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %record_index.1.i.i)
  %cmp6.i = icmp slt i32 %record_index.1.i.i, 0
  br i1 %cmp6.i, label %do.body19, label %if.end.i

if.end.i:                                         ; preds = %get_low_record_time_index.exit.i
  %arrayidx1.i19.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i
  %guid_indexes.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 1
  %10 = ptrtoint ptr %guid_indexes.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %guid_indexes.i.i, align 8
  %and.i.i = and i64 %11, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.not.i20.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.not.i20.i, label %if.end.i.for.inc.i22.i_crit_edge, label %if.then12.i.i

if.end.i.for.inc.i22.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i22.i

if.then12.i.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %arrayidx1.i19.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %arrayidx1.i19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %13)
  %cmp3.i21.i = icmp eq i64 %13, -1
  %or.i.i = select i1 %cmp3.i21.i, i64 16, i64 0
  %or7.i.i = select i1 %cmp3.i21.i, i64 0, i64 16
  %arrayidx14.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 0
  %14 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14.i.i, align 4
  br label %for.inc.i22.i

for.inc.i22.i:                                    ; preds = %if.then12.i.i, %if.end.i.for.inc.i22.i_crit_edge
  %lowset_time_entry.1.i.i = phi i32 [ 0, %if.then12.i.i ], [ -1, %if.end.i.for.inc.i22.i_crit_edge ]
  %lowest_time.1.i.i = phi i32 [ %15, %if.then12.i.i ], [ 0, %if.end.i.for.inc.i22.i_crit_edge ]
  %delete_guid_indexes.2.i.i = phi i64 [ %or.i.i, %if.then12.i.i ], [ 0, %if.end.i.for.inc.i22.i_crit_edge ]
  %set_guid_indexes.2.i.i = phi i64 [ %or7.i.i, %if.then12.i.i ], [ 0, %if.end.i.for.inc.i22.i_crit_edge ]
  %and.1.i.i = and i64 %11, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i64 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i22.i.for.inc.1.i.i_crit_edge, label %if.end.1.i.i

for.inc.i22.i.for.inc.1.i.i_crit_edge:            ; preds = %for.inc.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.end.1.i.i:                                     ; preds = %for.inc.i22.i
  %arrayidx2.1.i.i = getelementptr [64 x i8], ptr %arrayidx1.i19.i, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx2.1.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %arrayidx2.1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %17)
  %cmp3.1.i.i = icmp eq i64 %17, -1
  %or.1.i.i = select i1 %cmp3.1.i.i, i64 32, i64 0
  %delete_guid_indexes.1.1.i.i = or i64 %or.1.i.i, %delete_guid_indexes.2.i.i
  %or7.1.i.i = select i1 %cmp3.1.i.i, i64 0, i64 32
  %set_guid_indexes.1.1.i.i = or i64 %or7.1.i.i, %set_guid_indexes.2.i.i
  br i1 %tobool.not.i20.i, label %if.end.1.i.i.if.then12.1.i.i_crit_edge, label %lor.lhs.false.1.i.i

if.end.1.i.i.if.then12.1.i.i_crit_edge:           ; preds = %if.end.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.1.i.i

lor.lhs.false.1.i.i:                              ; preds = %if.end.1.i.i
  %arrayidx10.1.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 1
  %18 = ptrtoint ptr %arrayidx10.1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %lowest_time.1.i.i)
  %cmp11.not.1.i.i = icmp ugt i32 %19, %lowest_time.1.i.i
  br i1 %cmp11.not.1.i.i, label %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge, label %lor.lhs.false.1.i.i.if.then12.1.i.i_crit_edge

lor.lhs.false.1.i.i.if.then12.1.i.i_crit_edge:    ; preds = %lor.lhs.false.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.1.i.i

lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge:      ; preds = %lor.lhs.false.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i.i

if.then12.1.i.i:                                  ; preds = %lor.lhs.false.1.i.i.if.then12.1.i.i_crit_edge, %if.end.1.i.i.if.then12.1.i.i_crit_edge
  %arrayidx14.1.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 1
  %20 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx14.1.i.i, align 4
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.then12.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i22.i.for.inc.1.i.i_crit_edge
  %lowset_time_entry.1.1.i.i = phi i32 [ 1, %if.then12.1.i.i ], [ %lowset_time_entry.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge ], [ %lowset_time_entry.1.i.i, %for.inc.i22.i.for.inc.1.i.i_crit_edge ]
  %lowest_time.1.1.i.i = phi i32 [ %21, %if.then12.1.i.i ], [ %lowest_time.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge ], [ %lowest_time.1.i.i, %for.inc.i22.i.for.inc.1.i.i_crit_edge ]
  %delete_guid_indexes.2.1.i.i = phi i64 [ %delete_guid_indexes.1.1.i.i, %if.then12.1.i.i ], [ %delete_guid_indexes.1.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge ], [ %delete_guid_indexes.2.i.i, %for.inc.i22.i.for.inc.1.i.i_crit_edge ]
  %set_guid_indexes.2.1.i.i = phi i64 [ %set_guid_indexes.1.1.i.i, %if.then12.1.i.i ], [ %set_guid_indexes.1.1.i.i, %lor.lhs.false.1.i.i.for.inc.1.i.i_crit_edge ], [ %set_guid_indexes.2.i.i, %for.inc.i22.i.for.inc.1.i.i_crit_edge ]
  %and.2.i.i = and i64 %11, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i64 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.end.2.i.i:                                     ; preds = %for.inc.1.i.i
  %arrayidx2.2.i.i = getelementptr [64 x i8], ptr %arrayidx1.i19.i, i32 0, i32 16
  %22 = ptrtoint ptr %arrayidx2.2.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %arrayidx2.2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %23)
  %cmp3.2.i.i = icmp eq i64 %23, -1
  %or.2.i.i = select i1 %cmp3.2.i.i, i64 64, i64 0
  %delete_guid_indexes.1.2.i.i = or i64 %or.2.i.i, %delete_guid_indexes.2.1.i.i
  %or7.2.i.i = select i1 %cmp3.2.i.i, i64 0, i64 64
  %set_guid_indexes.1.2.i.i = or i64 %or7.2.i.i, %set_guid_indexes.2.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lowset_time_entry.1.1.i.i)
  %cmp9.2.i.i = icmp eq i32 %lowset_time_entry.1.1.i.i, -1
  br i1 %cmp9.2.i.i, label %if.end.2.i.i.if.then12.2.i.i_crit_edge, label %lor.lhs.false.2.i.i

if.end.2.i.i.if.then12.2.i.i_crit_edge:           ; preds = %if.end.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.2.i.i

lor.lhs.false.2.i.i:                              ; preds = %if.end.2.i.i
  %arrayidx10.2.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 2
  %24 = ptrtoint ptr %arrayidx10.2.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %lowest_time.1.1.i.i)
  %cmp11.not.2.i.i = icmp ugt i32 %25, %lowest_time.1.1.i.i
  br i1 %cmp11.not.2.i.i, label %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge, label %lor.lhs.false.2.i.i.if.then12.2.i.i_crit_edge

lor.lhs.false.2.i.i.if.then12.2.i.i_crit_edge:    ; preds = %lor.lhs.false.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.2.i.i

lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge:      ; preds = %lor.lhs.false.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i.i

if.then12.2.i.i:                                  ; preds = %lor.lhs.false.2.i.i.if.then12.2.i.i_crit_edge, %if.end.2.i.i.if.then12.2.i.i_crit_edge
  %arrayidx14.2.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx14.2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx14.2.i.i, align 4
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.then12.2.i.i, %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %lowset_time_entry.1.2.i.i = phi i32 [ 2, %if.then12.2.i.i ], [ %lowset_time_entry.1.1.i.i, %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge ], [ %lowset_time_entry.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %lowest_time.1.2.i.i = phi i32 [ %27, %if.then12.2.i.i ], [ %lowest_time.1.1.i.i, %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge ], [ %lowest_time.1.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %delete_guid_indexes.2.2.i.i = phi i64 [ %delete_guid_indexes.1.2.i.i, %if.then12.2.i.i ], [ %delete_guid_indexes.1.2.i.i, %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge ], [ %delete_guid_indexes.2.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %set_guid_indexes.2.2.i.i = phi i64 [ %set_guid_indexes.1.2.i.i, %if.then12.2.i.i ], [ %set_guid_indexes.1.2.i.i, %lor.lhs.false.2.i.i.for.inc.2.i.i_crit_edge ], [ %set_guid_indexes.2.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %and.3.i.i = and i64 %11, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i64 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

if.end.3.i.i:                                     ; preds = %for.inc.2.i.i
  %arrayidx2.3.i.i = getelementptr [64 x i8], ptr %arrayidx1.i19.i, i32 0, i32 24
  %28 = ptrtoint ptr %arrayidx2.3.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %29 = load i64, ptr %arrayidx2.3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %29)
  %cmp3.3.i.i = icmp eq i64 %29, -1
  %or.3.i.i = select i1 %cmp3.3.i.i, i64 128, i64 0
  %delete_guid_indexes.1.3.i.i = or i64 %or.3.i.i, %delete_guid_indexes.2.2.i.i
  %or7.3.i.i = select i1 %cmp3.3.i.i, i64 0, i64 128
  %set_guid_indexes.1.3.i.i = or i64 %or7.3.i.i, %set_guid_indexes.2.2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lowset_time_entry.1.2.i.i)
  %cmp9.3.i.i = icmp eq i32 %lowset_time_entry.1.2.i.i, -1
  br i1 %cmp9.3.i.i, label %if.end.3.i.i.if.then12.3.i.i_crit_edge, label %lor.lhs.false.3.i.i

if.end.3.i.i.if.then12.3.i.i_crit_edge:           ; preds = %if.end.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.3.i.i

lor.lhs.false.3.i.i:                              ; preds = %if.end.3.i.i
  %arrayidx10.3.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 3
  %30 = ptrtoint ptr %arrayidx10.3.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx10.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %lowest_time.1.2.i.i)
  %cmp11.not.3.i.i = icmp ugt i32 %31, %lowest_time.1.2.i.i
  br i1 %cmp11.not.3.i.i, label %lor.lhs.false.3.i.i.for.inc.3.i.i_crit_edge, label %lor.lhs.false.3.i.i.if.then12.3.i.i_crit_edge

lor.lhs.false.3.i.i.if.then12.3.i.i_crit_edge:    ; preds = %lor.lhs.false.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.3.i.i

lor.lhs.false.3.i.i.for.inc.3.i.i_crit_edge:      ; preds = %lor.lhs.false.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i.i

if.then12.3.i.i:                                  ; preds = %lor.lhs.false.3.i.i.if.then12.3.i.i_crit_edge, %if.end.3.i.i.if.then12.3.i.i_crit_edge
  %arrayidx14.3.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 3
  %32 = ptrtoint ptr %arrayidx14.3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx14.3.i.i, align 4
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.then12.3.i.i, %lor.lhs.false.3.i.i.for.inc.3.i.i_crit_edge, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %lowset_time_entry.1.3.i.i = phi i32 [ 3, %if.then12.3.i.i ], [ %lowset_time_entry.1.2.i.i, %lor.lhs.false.3.i.i.for.inc.3.i.i_crit_edge ], [ %lowset_time_entry.1.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %lowest_time.1.3.i.i = phi i32 [ %33, %if.then12.3.i.i ], [ %lowest_time.1.2.i.i, %lor.lhs.false.3.i.i.for.inc.3.i.i_crit_edge ], [ %lowest_time.1.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %delete_guid_indexes.2.3.i.i = phi i64 [ %delete_guid_indexes.1.3.i.i, %if.then12.3.i.i ], [ %delete_guid_indexes.1.3.i.i, %lor.lhs.false.3.i.i.for.inc.3.i.i_crit_edge ], [ %delete_guid_indexes.2.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %set_guid_indexes.2.3.i.i = phi i64 [ %set_guid_indexes.1.3.i.i, %if.then12.3.i.i ], [ %set_guid_indexes.1.3.i.i, %lor.lhs.false.3.i.i.for.inc.3.i.i_crit_edge ], [ %set_guid_indexes.2.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %and.4.i.i = and i64 %11, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i64 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.end.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

if.end.4.i.i:                                     ; preds = %for.inc.3.i.i
  %arrayidx2.4.i.i = getelementptr [64 x i8], ptr %arrayidx1.i19.i, i32 0, i32 32
  %34 = ptrtoint ptr %arrayidx2.4.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %35 = load i64, ptr %arrayidx2.4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %35)
  %cmp3.4.i.i = icmp eq i64 %35, -1
  %or.4.i.i = select i1 %cmp3.4.i.i, i64 256, i64 0
  %delete_guid_indexes.1.4.i.i = or i64 %or.4.i.i, %delete_guid_indexes.2.3.i.i
  %or7.4.i.i = select i1 %cmp3.4.i.i, i64 0, i64 256
  %set_guid_indexes.1.4.i.i = or i64 %or7.4.i.i, %set_guid_indexes.2.3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lowset_time_entry.1.3.i.i)
  %cmp9.4.i.i = icmp eq i32 %lowset_time_entry.1.3.i.i, -1
  br i1 %cmp9.4.i.i, label %if.end.4.i.i.if.then12.4.i.i_crit_edge, label %lor.lhs.false.4.i.i

if.end.4.i.i.if.then12.4.i.i_crit_edge:           ; preds = %if.end.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.4.i.i

lor.lhs.false.4.i.i:                              ; preds = %if.end.4.i.i
  %arrayidx10.4.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 4
  %36 = ptrtoint ptr %arrayidx10.4.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx10.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %lowest_time.1.3.i.i)
  %cmp11.not.4.i.i = icmp ugt i32 %37, %lowest_time.1.3.i.i
  br i1 %cmp11.not.4.i.i, label %lor.lhs.false.4.i.i.for.inc.4.i.i_crit_edge, label %lor.lhs.false.4.i.i.if.then12.4.i.i_crit_edge

lor.lhs.false.4.i.i.if.then12.4.i.i_crit_edge:    ; preds = %lor.lhs.false.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.4.i.i

lor.lhs.false.4.i.i.for.inc.4.i.i_crit_edge:      ; preds = %lor.lhs.false.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i.i

if.then12.4.i.i:                                  ; preds = %lor.lhs.false.4.i.i.if.then12.4.i.i_crit_edge, %if.end.4.i.i.if.then12.4.i.i_crit_edge
  %arrayidx14.4.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 4
  %38 = ptrtoint ptr %arrayidx14.4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx14.4.i.i, align 4
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.then12.4.i.i, %lor.lhs.false.4.i.i.for.inc.4.i.i_crit_edge, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %lowset_time_entry.1.4.i.i = phi i32 [ 4, %if.then12.4.i.i ], [ %lowset_time_entry.1.3.i.i, %lor.lhs.false.4.i.i.for.inc.4.i.i_crit_edge ], [ %lowset_time_entry.1.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %lowest_time.1.4.i.i = phi i32 [ %39, %if.then12.4.i.i ], [ %lowest_time.1.3.i.i, %lor.lhs.false.4.i.i.for.inc.4.i.i_crit_edge ], [ %lowest_time.1.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %delete_guid_indexes.2.4.i.i = phi i64 [ %delete_guid_indexes.1.4.i.i, %if.then12.4.i.i ], [ %delete_guid_indexes.1.4.i.i, %lor.lhs.false.4.i.i.for.inc.4.i.i_crit_edge ], [ %delete_guid_indexes.2.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %set_guid_indexes.2.4.i.i = phi i64 [ %set_guid_indexes.1.4.i.i, %if.then12.4.i.i ], [ %set_guid_indexes.1.4.i.i, %lor.lhs.false.4.i.i.for.inc.4.i.i_crit_edge ], [ %set_guid_indexes.2.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %and.5.i.i = and i64 %11, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i64 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.end.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i.i

if.end.5.i.i:                                     ; preds = %for.inc.4.i.i
  %arrayidx2.5.i.i = getelementptr [64 x i8], ptr %arrayidx1.i19.i, i32 0, i32 40
  %40 = ptrtoint ptr %arrayidx2.5.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %41 = load i64, ptr %arrayidx2.5.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %41)
  %cmp3.5.i.i = icmp eq i64 %41, -1
  %or.5.i.i = select i1 %cmp3.5.i.i, i64 512, i64 0
  %delete_guid_indexes.1.5.i.i = or i64 %or.5.i.i, %delete_guid_indexes.2.4.i.i
  %or7.5.i.i = select i1 %cmp3.5.i.i, i64 0, i64 512
  %set_guid_indexes.1.5.i.i = or i64 %or7.5.i.i, %set_guid_indexes.2.4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lowset_time_entry.1.4.i.i)
  %cmp9.5.i.i = icmp eq i32 %lowset_time_entry.1.4.i.i, -1
  br i1 %cmp9.5.i.i, label %if.end.5.i.i.if.then12.5.i.i_crit_edge, label %lor.lhs.false.5.i.i

if.end.5.i.i.if.then12.5.i.i_crit_edge:           ; preds = %if.end.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.5.i.i

lor.lhs.false.5.i.i:                              ; preds = %if.end.5.i.i
  %arrayidx10.5.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 5
  %42 = ptrtoint ptr %arrayidx10.5.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx10.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %lowest_time.1.4.i.i)
  %cmp11.not.5.i.i = icmp ugt i32 %43, %lowest_time.1.4.i.i
  br i1 %cmp11.not.5.i.i, label %lor.lhs.false.5.i.i.for.inc.5.i.i_crit_edge, label %lor.lhs.false.5.i.i.if.then12.5.i.i_crit_edge

lor.lhs.false.5.i.i.if.then12.5.i.i_crit_edge:    ; preds = %lor.lhs.false.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.5.i.i

lor.lhs.false.5.i.i.for.inc.5.i.i_crit_edge:      ; preds = %lor.lhs.false.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5.i.i

if.then12.5.i.i:                                  ; preds = %lor.lhs.false.5.i.i.if.then12.5.i.i_crit_edge, %if.end.5.i.i.if.then12.5.i.i_crit_edge
  %arrayidx14.5.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 5
  %44 = ptrtoint ptr %arrayidx14.5.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx14.5.i.i, align 4
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.then12.5.i.i, %lor.lhs.false.5.i.i.for.inc.5.i.i_crit_edge, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %lowset_time_entry.1.5.i.i = phi i32 [ 5, %if.then12.5.i.i ], [ %lowset_time_entry.1.4.i.i, %lor.lhs.false.5.i.i.for.inc.5.i.i_crit_edge ], [ %lowset_time_entry.1.4.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ]
  %lowest_time.1.5.i.i = phi i32 [ %45, %if.then12.5.i.i ], [ %lowest_time.1.4.i.i, %lor.lhs.false.5.i.i.for.inc.5.i.i_crit_edge ], [ %lowest_time.1.4.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ]
  %delete_guid_indexes.2.5.i.i = phi i64 [ %delete_guid_indexes.1.5.i.i, %if.then12.5.i.i ], [ %delete_guid_indexes.1.5.i.i, %lor.lhs.false.5.i.i.for.inc.5.i.i_crit_edge ], [ %delete_guid_indexes.2.4.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ]
  %set_guid_indexes.2.5.i.i = phi i64 [ %set_guid_indexes.1.5.i.i, %if.then12.5.i.i ], [ %set_guid_indexes.1.5.i.i, %lor.lhs.false.5.i.i.for.inc.5.i.i_crit_edge ], [ %set_guid_indexes.2.4.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ]
  %and.6.i.i = and i64 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i64 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge, label %if.end.6.i.i

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i.i

if.end.6.i.i:                                     ; preds = %for.inc.5.i.i
  %arrayidx2.6.i.i = getelementptr [64 x i8], ptr %arrayidx1.i19.i, i32 0, i32 48
  %46 = ptrtoint ptr %arrayidx2.6.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %47 = load i64, ptr %arrayidx2.6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %47)
  %cmp3.6.i.i = icmp eq i64 %47, -1
  %or.6.i.i = select i1 %cmp3.6.i.i, i64 1024, i64 0
  %delete_guid_indexes.1.6.i.i = or i64 %or.6.i.i, %delete_guid_indexes.2.5.i.i
  %or7.6.i.i = select i1 %cmp3.6.i.i, i64 0, i64 1024
  %set_guid_indexes.1.6.i.i = or i64 %or7.6.i.i, %set_guid_indexes.2.5.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lowset_time_entry.1.5.i.i)
  %cmp9.6.i.i = icmp eq i32 %lowset_time_entry.1.5.i.i, -1
  br i1 %cmp9.6.i.i, label %if.end.6.i.i.if.then12.6.i.i_crit_edge, label %lor.lhs.false.6.i.i

if.end.6.i.i.if.then12.6.i.i_crit_edge:           ; preds = %if.end.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.6.i.i

lor.lhs.false.6.i.i:                              ; preds = %if.end.6.i.i
  %arrayidx10.6.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 6
  %48 = ptrtoint ptr %arrayidx10.6.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx10.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %lowest_time.1.5.i.i)
  %cmp11.not.6.i.i = icmp ugt i32 %49, %lowest_time.1.5.i.i
  br i1 %cmp11.not.6.i.i, label %lor.lhs.false.6.i.i.for.inc.6.i.i_crit_edge, label %lor.lhs.false.6.i.i.if.then12.6.i.i_crit_edge

lor.lhs.false.6.i.i.if.then12.6.i.i_crit_edge:    ; preds = %lor.lhs.false.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.6.i.i

lor.lhs.false.6.i.i.for.inc.6.i.i_crit_edge:      ; preds = %lor.lhs.false.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6.i.i

if.then12.6.i.i:                                  ; preds = %lor.lhs.false.6.i.i.if.then12.6.i.i_crit_edge, %if.end.6.i.i.if.then12.6.i.i_crit_edge
  %arrayidx14.6.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 6
  %50 = ptrtoint ptr %arrayidx14.6.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx14.6.i.i, align 4
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %if.then12.6.i.i, %lor.lhs.false.6.i.i.for.inc.6.i.i_crit_edge, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %lowset_time_entry.1.6.i.i = phi i32 [ 6, %if.then12.6.i.i ], [ %lowset_time_entry.1.5.i.i, %lor.lhs.false.6.i.i.for.inc.6.i.i_crit_edge ], [ %lowset_time_entry.1.5.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge ]
  %lowest_time.1.6.i.i = phi i32 [ %51, %if.then12.6.i.i ], [ %lowest_time.1.5.i.i, %lor.lhs.false.6.i.i.for.inc.6.i.i_crit_edge ], [ %lowest_time.1.5.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge ]
  %delete_guid_indexes.2.6.i.i = phi i64 [ %delete_guid_indexes.1.6.i.i, %if.then12.6.i.i ], [ %delete_guid_indexes.1.6.i.i, %lor.lhs.false.6.i.i.for.inc.6.i.i_crit_edge ], [ %delete_guid_indexes.2.5.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge ]
  %set_guid_indexes.2.6.i.i = phi i64 [ %set_guid_indexes.1.6.i.i, %if.then12.6.i.i ], [ %set_guid_indexes.1.6.i.i, %lor.lhs.false.6.i.i.for.inc.6.i.i_crit_edge ], [ %set_guid_indexes.2.5.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge ]
  %and.7.i.i = and i64 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i64 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.inc.6.i.i.if.end35_crit_edge, label %if.end.7.i.i

for.inc.6.i.i.if.end35_crit_edge:                 ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end.7.i.i:                                     ; preds = %for.inc.6.i.i
  %arrayidx2.7.i.i = getelementptr [64 x i8], ptr %arrayidx1.i19.i, i32 0, i32 56
  %52 = ptrtoint ptr %arrayidx2.7.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 8)
  %53 = load i64, ptr %arrayidx2.7.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %53)
  %cmp3.7.i.i = icmp eq i64 %53, -1
  %or.7.i.i = select i1 %cmp3.7.i.i, i64 2048, i64 0
  %delete_guid_indexes.1.7.i.i = or i64 %or.7.i.i, %delete_guid_indexes.2.6.i.i
  %or7.7.i.i = select i1 %cmp3.7.i.i, i64 0, i64 2048
  %set_guid_indexes.1.7.i.i = or i64 %or7.7.i.i, %set_guid_indexes.2.6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %lowset_time_entry.1.6.i.i)
  %cmp9.7.i.i = icmp eq i32 %lowset_time_entry.1.6.i.i, -1
  br i1 %cmp9.7.i.i, label %if.end.7.i.i.if.then12.7.i.i_crit_edge, label %lor.lhs.false.7.i.i

if.end.7.i.i.if.then12.7.i.i_crit_edge:           ; preds = %if.end.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.7.i.i

lor.lhs.false.7.i.i:                              ; preds = %if.end.7.i.i
  %arrayidx10.7.i.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i.i, i32 0, i32 %record_index.1.i.i, i32 3, i32 7
  %54 = ptrtoint ptr %arrayidx10.7.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx10.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %lowest_time.1.6.i.i)
  %cmp11.not.7.i.i = icmp ugt i32 %55, %lowest_time.1.6.i.i
  br i1 %cmp11.not.7.i.i, label %lor.lhs.false.7.i.i.if.end35_crit_edge, label %lor.lhs.false.7.i.i.if.then12.7.i.i_crit_edge

lor.lhs.false.7.i.i.if.then12.7.i.i_crit_edge:    ; preds = %lor.lhs.false.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.7.i.i

lor.lhs.false.7.i.i.if.end35_crit_edge:           ; preds = %lor.lhs.false.7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then12.7.i.i:                                  ; preds = %lor.lhs.false.7.i.i.if.then12.7.i.i_crit_edge, %if.end.7.i.i.if.then12.7.i.i_crit_edge
  br label %if.end35

do.body19:                                        ; preds = %get_low_record_time_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock.i, i32 noundef %call2.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alias_guid_work.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alias_guid_work, %if.then31)) #8
          to label %out [label %if.then31], !srcloc !128

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alias_guid_work.__UNIQUE_ID_ddebug527, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.32) #8
  br label %out

if.end35:                                         ; preds = %if.then12.7.i.i, %lor.lhs.false.7.i.i.if.end35_crit_edge, %for.inc.6.i.i.if.end35_crit_edge
  %lowset_time_entry.1.7.i.i = phi i32 [ 7, %if.then12.7.i.i ], [ %lowset_time_entry.1.6.i.i, %lor.lhs.false.7.i.i.if.end35_crit_edge ], [ %lowset_time_entry.1.6.i.i, %for.inc.6.i.i.if.end35_crit_edge ]
  %delete_guid_indexes.2.7.i.i = phi i64 [ %delete_guid_indexes.1.7.i.i, %if.then12.7.i.i ], [ %delete_guid_indexes.1.7.i.i, %lor.lhs.false.7.i.i.if.end35_crit_edge ], [ %delete_guid_indexes.2.6.i.i, %for.inc.6.i.i.if.end35_crit_edge ]
  %set_guid_indexes.2.7.i.i = phi i64 [ %set_guid_indexes.1.7.i.i, %if.then12.7.i.i ], [ %set_guid_indexes.1.7.i.i, %lor.lhs.false.7.i.i.if.end35_crit_edge ], [ %set_guid_indexes.2.6.i.i, %for.inc.6.i.i.if.end35_crit_edge ]
  %rec_det.i.i = getelementptr inbounds %struct.mlx4_next_alias_guid_work, ptr %call7.i.i, i32 0, i32 3
  %56 = call ptr @memcpy(ptr %rec_det.i.i, ptr %arrayidx1.i19.i, i32 120)
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv, ptr %call7.i.i, align 8
  %conv.i.i = trunc i32 %record_index.1.i.i to i8
  %block_num.i.i = getelementptr inbounds %struct.mlx4_next_alias_guid_work, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %block_num.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv.i.i, ptr %block_num.i.i, align 1
  %mul18.i.i = shl nsw i32 %lowset_time_entry.1.7.i.i, 3
  %arrayidx19.i.i = getelementptr [64 x i8], ptr %arrayidx1.i19.i, i32 0, i32 %mul18.i.i
  %59 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %arrayidx19.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %60)
  %cmp20.i.i = icmp eq i64 %60, -1
  %spec.select.i23.i = select i1 %cmp20.i.i, i64 %delete_guid_indexes.2.7.i.i, i64 %set_guid_indexes.2.7.i.i
  %spec.select66.i.i = select i1 %cmp20.i.i, i8 21, i8 2
  %61 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, ptr %call7.i.i, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %spec.select.i23.i, ptr %61, align 8
  %63 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, ptr %call7.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %spec.select66.i.i, ptr %63, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock.i, i32 noundef %call2.i) #8
  tail call fastcc void @set_guid_rec(ptr noundef %add.ptr6, ptr noundef nonnull %call7.i.i)
  br label %out

out:                                              ; preds = %if.end35, %if.then31, %do.body19
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_is_slave_active(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_guid_rec(ptr noundef %ibdev, ptr nocapture noundef readonly %rec) unnamed_addr #0 align 64 {
entry:
  %guid_info_rec = alloca %struct.ib_sa_guidinfo_rec, align 8
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %guid_info_rec) #8
  %0 = call ptr @memset(ptr %guid_info_rec, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #8
  %1 = ptrtoint ptr %rec to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rec, align 8
  %add = add i8 %2, 1
  %block_num = getelementptr inbounds %struct.mlx4_next_alias_guid_work, ptr %rec, i32 0, i32 1
  %3 = ptrtoint ptr %block_num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %block_num, align 1
  %conv3 = zext i8 %4 to i32
  %rec_det4 = getelementptr inbounds %struct.mlx4_next_alias_guid_work, ptr %rec, i32 0, i32 3
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 4
  %conv5 = zext i8 %add to i32
  %sub = add nsw i32 %conv5, -1
  %cb_list = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub, i32 6
  %5 = call ptr @memset(ptr %attr, i32 0, i32 72)
  %call7 = call i32 @__mlx4_ib_query_port(ptr noundef %ibdev, i32 noundef %conv5, ptr noundef nonnull %attr, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end14, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_guid_rec.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_guid_rec, %if.then12)) #8
          to label %cleanup [label %if.then12], !srcloc !128

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_guid_rec.__UNIQUE_ID_ddebug521, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %call7, i32 noundef %conv5) #8
  br label %cleanup

if.end14:                                         ; preds = %entry
  %state = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp.not = icmp eq i32 %7, 4
  br i1 %cmp.not, label %if.end34, label %do.body17

do.body17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_guid_rec.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_guid_rec, %if.then29)) #8
          to label %do.body114 [label %if.then29], !srcloc !128

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_guid_rec.__UNIQUE_ID_ddebug522, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.37, i32 noundef %conv5) #8
  br label %do.body114

if.end34:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 104) #12
  %tobool36.not = icmp eq ptr %call7.i, null
  br i1 %tobool36.not, label %if.end34.do.body114_crit_edge, label %if.end38

if.end34.do.body114_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body114

if.end38:                                         ; preds = %if.end34
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %add, ptr %call7.i, align 8
  %dev40 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ibdev, ptr %dev40, align 4
  %block_num41 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 6
  %11 = ptrtoint ptr %block_num41 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv3, ptr %block_num41, align 8
  %guid_indexes = getelementptr inbounds %struct.mlx4_next_alias_guid_work, ptr %rec, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %guid_indexes, align 8
  %guid_indexes42 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 7
  %14 = ptrtoint ptr %guid_indexes42 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %guid_indexes42, align 8
  %method = getelementptr inbounds %struct.mlx4_next_alias_guid_work, ptr %rec, i32 0, i32 2
  %15 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %method, align 2
  %method43 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 8
  %17 = ptrtoint ptr %method43 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %method43, align 8
  %18 = ptrtoint ptr %guid_info_rec to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %guid_info_rec, align 8
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 13
  %19 = ptrtoint ptr %lid to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %20)
  %tobool.not.i = icmp ult i32 %20, 65536
  br i1 %tobool.not.i, label %if.end38.ib_lid_be16.exit_crit_edge, label %land.rhs.i

if.end38.ib_lid_be16.exit_crit_edge:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_lid_be16.exit

land.rhs.i:                                       ; preds = %if.end38
  %.b39.i = load i1, ptr @ib_lid_be16.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.ib_lid_be16.exit_crit_edge, label %if.then.i, !prof !130

land.rhs.i.ib_lid_be16.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_lid_be16.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ib_lid_be16.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 4616, i32 noundef 9, ptr noundef null) #8
  br label %ib_lid_be16.exit

ib_lid_be16.exit:                                 ; preds = %if.then.i, %land.rhs.i.ib_lid_be16.exit_crit_edge, %if.end38.ib_lid_be16.exit_crit_edge
  %conv.i = trunc i32 %20 to i16
  %21 = ptrtoint ptr %guid_info_rec to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %guid_info_rec, align 8
  %block_num47 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, ptr %guid_info_rec, i32 0, i32 1
  %22 = ptrtoint ptr %block_num47 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %4, ptr %block_num47, align 2
  %guid_info_list = getelementptr inbounds %struct.ib_sa_guidinfo_rec, ptr %guid_info_rec, i32 0, i32 4
  %23 = call ptr @memcpy(ptr %guid_info_list, ptr %rec_det4, i32 64)
  %24 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %guid_indexes, align 8
  %or = or i64 %25, 3
  %done = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 3
  %26 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @init_completion.__key) #8
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 4, i32 1
  %call58 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %list = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 5
  %prev.i = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub, i32 6, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %cb_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %ib_lid_be16.exit.list_add_tail.exit_crit_edge

ib_lid_be16.exit.list_add_tail.exit_crit_edge:    ; preds = %ib_lid_be16.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %ib_lid_be16.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %cb_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 5, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %ib_lid_be16.exit.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call58) #8
  %sa_client = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 4, i32 2
  %33 = ptrtoint ptr %sa_client to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sa_client, align 4
  %35 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %method, align 2
  %sa_query = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 2
  %call70 = call i32 @ib_sa_guid_info_rec_query(ptr noundef %34, ptr noundef %ibdev, i32 noundef %conv5, ptr noundef nonnull %guid_info_rec, i64 noundef %or, i8 noundef zeroext %36, i32 noundef 1000, i32 noundef 3264, ptr noundef nonnull @aliasguid_query_handler, ptr noundef nonnull %call7.i, ptr noundef %sa_query) #8
  %query_id = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 4
  %37 = ptrtoint ptr %query_id to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call70, ptr %query_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp72 = icmp slt i32 %call70, 0
  br i1 %cmp72, label %do.body75, label %list_add_tail.exit.cleanup_crit_edge

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body75:                                        ; preds = %list_add_tail.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_guid_rec.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_guid_rec, %if.then87)) #8
          to label %do.body93 [label %if.then87], !srcloc !128

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %query_id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %query_id, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_guid_rec.__UNIQUE_ID_ddebug523, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.37, i32 noundef %39) #8
  br label %do.body93

do.body93:                                        ; preds = %if.then87, %do.body75
  %call103 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %call.i.i7 = call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i7, label %if.end.i.i8, label %do.body93.list_del.exit_crit_edge

do.body93.list_del.exit_crit_edge:                ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i8:                                      ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i, align 4
  %42 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %list, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i8, %do.body93.list_del.exit_crit_edge
  %46 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 8
  %prev.i9 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %call7.i, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %prev.i9 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i9, align 4
  call void @kfree(ptr noundef nonnull %call7.i) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call103) #8
  br label %do.body114

do.body114:                                       ; preds = %list_del.exit, %if.end34.do.body114_crit_edge, %if.then29, %do.body17
  %resched_delay.0 = phi i32 [ 100, %list_del.exit ], [ 500, %if.then29 ], [ 500, %if.end34.do.body114_crit_edge ], [ 500, %do.body17 ]
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 2
  %call122 = call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #8
  %ag_work_lock136 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 4, i32 1
  %call138 = call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock136) #8
  %arrayidx.i = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub
  %arrayidx1.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %conv3
  %status.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %conv3, i32 2
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i11 = icmp eq i8 %4, 0
  %49 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %50)
  %cmp12.i = icmp eq i64 %50, -1
  %or.cond66.i = or i1 %tobool.not.i11, %cmp12.i
  %spec.select.i = select i1 %or.cond66.i, i64 0, i64 16
  %arrayidx11.1.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 8
  %51 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_loadN_noabort(i32 %51, i32 8)
  %52 = load i64, ptr %arrayidx11.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %52)
  %cmp12.1.i = icmp eq i64 %52, -1
  %or.1.i = or i64 %spec.select.i, 32
  %comp_mask.1.1.i = select i1 %cmp12.1.i, i64 %spec.select.i, i64 %or.1.i
  %arrayidx11.2.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 16
  %53 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 8)
  %54 = load i64, ptr %arrayidx11.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %54)
  %cmp12.2.i = icmp eq i64 %54, -1
  %or.2.i = or i64 %comp_mask.1.1.i, 64
  %comp_mask.1.2.i = select i1 %cmp12.2.i, i64 %comp_mask.1.1.i, i64 %or.2.i
  %arrayidx11.3.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 24
  %55 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %56 = load i64, ptr %arrayidx11.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %56)
  %cmp12.3.i = icmp eq i64 %56, -1
  %or.3.i = or i64 %comp_mask.1.2.i, 128
  %comp_mask.1.3.i = select i1 %cmp12.3.i, i64 %comp_mask.1.2.i, i64 %or.3.i
  %arrayidx11.4.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 32
  %57 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %58 = load i64, ptr %arrayidx11.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %58)
  %cmp12.4.i = icmp eq i64 %58, -1
  %or.4.i = or i64 %comp_mask.1.3.i, 256
  %comp_mask.1.4.i = select i1 %cmp12.4.i, i64 %comp_mask.1.3.i, i64 %or.4.i
  %arrayidx11.5.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 40
  %59 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 8)
  %60 = load i64, ptr %arrayidx11.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %60)
  %cmp12.5.i = icmp eq i64 %60, -1
  %or.5.i = or i64 %comp_mask.1.4.i, 512
  %comp_mask.1.5.i = select i1 %cmp12.5.i, i64 %comp_mask.1.4.i, i64 %or.5.i
  %arrayidx11.6.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 48
  %61 = ptrtoint ptr %arrayidx11.6.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %62 = load i64, ptr %arrayidx11.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %62)
  %cmp12.6.i = icmp eq i64 %62, -1
  %or.6.i = or i64 %comp_mask.1.5.i, 1024
  %comp_mask.1.6.i = select i1 %cmp12.6.i, i64 %comp_mask.1.5.i, i64 %or.6.i
  %arrayidx11.7.i = getelementptr [64 x i8], ptr %arrayidx1.i, i32 0, i32 56
  %63 = ptrtoint ptr %arrayidx11.7.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %64 = load i64, ptr %arrayidx11.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %64)
  %cmp12.7.i = icmp eq i64 %64, -1
  %or.7.i = or i64 %comp_mask.1.6.i, 2048
  %comp_mask.1.7.i = select i1 %cmp12.7.i, i64 %comp_mask.1.6.i, i64 %or.7.i
  %guid_indexes.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx.i, i32 0, i32 %conv3, i32 1
  %65 = ptrtoint ptr %guid_indexes.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %guid_indexes.i, align 8
  %or23.i = or i64 %comp_mask.1.7.i, %66
  store i64 %or23.i, ptr %guid_indexes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or23.i)
  %tobool33.not.i = icmp eq i64 %or23.i, 0
  br i1 %tobool33.not.i, label %do.body114.invalidate_guid_record.exit_crit_edge, label %if.then34.i

do.body114.invalidate_guid_record.exit_crit_edge: ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalidate_guid_record.exit

if.then34.i:                                      ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %status.i, align 8
  br label %invalidate_guid_record.exit

invalidate_guid_record.exit:                      ; preds = %if.then34.i, %do.body114.invalidate_guid_record.exit_crit_edge
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 3
  %68 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool144.not = icmp eq i32 %69, 0
  br i1 %tobool144.not, label %if.then145, label %invalidate_guid_record.exit.if.end159_crit_edge

invalidate_guid_record.exit.if.end159_crit_edge:  ; preds = %invalidate_guid_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end159

if.then145:                                       ; preds = %invalidate_guid_record.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wq = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub, i32 1
  %70 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %wq, align 8
  %alias_guid_work = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %sub, i32 2
  %call.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %alias_guid_work, i32 noundef %resched_delay.0) #8
  br label %if.end159

if.end159:                                        ; preds = %if.then145, %invalidate_guid_record.exit.if.end159_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock136, i32 noundef %call138) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call122) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end159, %list_add_tail.exit.cleanup_crit_edge, %if.then12, %do.body
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %guid_info_rec) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_ib_query_port(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_sa_guid_info_rec_query(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aliasguid_query_handler(i32 noundef %status, ptr nocapture noundef readonly %guid_rec, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %context, null
  br i1 %tobool.not, label %entry.cleanup290_crit_edge, label %if.end

entry.cleanup290_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup290

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %context, align 8
  %sub = add i8 %3, -1
  %alias_guid = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 4
  %idxprom = zext i8 %sub to i32
  %arrayidx = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %idxprom
  %block_num = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 6
  %4 = ptrtoint ptr %block_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool4.not = icmp eq i32 %status, 0
  br i1 %tobool4.not, label %if.end14, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aliasguid_query_handler.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aliasguid_query_handler, %if.then9)) #8
          to label %do.end [label %if.then9], !srcloc !128

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %context, align 8
  %conv11 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aliasguid_query_handler.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.46, i32 noundef %conv11, i32 noundef %status) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #8
  %add = add i64 %call.i.i, 1000000000
  %time_to_run = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %5, i32 4
  %8 = ptrtoint ptr %time_to_run to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %add, ptr %time_to_run, align 8
  br label %do.body234

if.end14:                                         ; preds = %if.end
  %block_num15 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, ptr %guid_rec, i32 0, i32 1
  %9 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %block_num15, align 2
  %conv16 = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv16)
  %cmp.not = icmp eq i32 %5, %conv16
  br i1 %cmp.not, label %do.body29, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.46, i32 noundef %5, i32 noundef %conv16) #11
  br label %do.body234

do.body29:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aliasguid_query_handler.__UNIQUE_ID_ddebug514, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aliasguid_query_handler, %if.then41)) #8
          to label %do.end49 [label %if.then41], !srcloc !128

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %guid_rec to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %guid_rec, align 4
  %conv42 = zext i16 %12 to i32
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %context, align 8
  %conv44 = zext i8 %14 to i32
  %15 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %block_num15, align 2
  %conv46 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aliasguid_query_handler.__UNIQUE_ID_ddebug514, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.46, i32 noundef %conv42, i32 noundef %conv44, i32 noundef %conv46) #8
  br label %do.end49

do.end49:                                         ; preds = %if.then41, %do.body29
  %17 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %block_num15, align 2
  %idxprom57 = zext i8 %18 to i32
  %arrayidx58 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57
  %ag_work_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 4, i32 1
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock) #8
  %guid_indexes = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 7
  %method = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 8
  %parent134 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 1
  %dev145 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end49
  %i.0430 = phi i32 [ 0, %do.end49 ], [ %inc, %cleanup.for.body_crit_edge ]
  %declined_guid_indexes.0428 = phi i64 [ 0, %do.end49 ], [ %declined_guid_indexes.1, %cleanup.for.body_crit_edge ]
  %resched_delay_sec.0426 = phi i32 [ 0, %do.end49 ], [ %resched_delay_sec.1, %cleanup.for.body_crit_edge ]
  %19 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %guid_indexes, align 8
  %add.i = add nuw nsw i32 %i.0430, 4
  %sh_prom.i = zext i32 %add.i to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %and = and i64 %20, %shl.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool75.not = icmp eq i64 %and, 0
  br i1 %tobool75.not, label %for.body.cleanup_crit_edge, label %if.end77

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %for.body
  %mul = shl i32 %i.0430, 3
  %arrayidx78 = getelementptr %struct.ib_sa_guidinfo_rec, ptr %guid_rec, i32 0, i32 4, i32 %mul
  %21 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %arrayidx78, align 1
  %arrayidx80 = getelementptr [64 x i8], ptr %arrayidx58, i32 0, i32 %mul
  %23 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %24 = load i64, ptr %arrayidx80, align 1
  %25 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %method, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %26)
  %cmp82 = icmp eq i8 %26, 21
  br i1 %cmp82, label %if.then84, label %if.end107

if.then84:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %24)
  %cmp85 = icmp eq i64 %24, -1
  br i1 %cmp85, label %if.then84.next_entry_crit_edge, label %do.body89

if.then84.next_entry_crit_edge:                   ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_entry

do.body89:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aliasguid_query_handler.__UNIQUE_ID_ddebug515, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aliasguid_query_handler, %if.then101)) #8
          to label %entry_declined [label %if.then101], !srcloc !128

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %block_num15, align 2
  %conv103 = zext i8 %28 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aliasguid_query_handler.__UNIQUE_ID_ddebug515, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.46, i64 noundef %24, i32 noundef %i.0430, i32 noundef %conv103) #8
  br label %entry_declined

if.end107:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %22)
  %cmp108 = icmp eq i64 %22, 0
  br i1 %cmp108, label %if.then110, label %if.else

if.then110:                                       ; preds = %if.end107
  %arrayidx111 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57, i32 3, i32 %i.0430
  %29 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp112 = icmp eq i32 %30, 0
  br i1 %cmp112, label %do.end117, label %if.then110.entry_declined_crit_edge

if.then110.entry_declined_crit_edge:              ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %entry_declined

do.end117:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %parent134 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent134, align 8
  %33 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %block_num15, align 2
  %conv119 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %32, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.46, i32 noundef %i.0430, i32 noundef %conv119) #11
  br label %entry_declined

if.else:                                          ; preds = %if.end107
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %tobool121.not = icmp eq i64 %24, 0
  call void @__sanitizer_cov_trace_cmp8(i64 %22, i64 %24)
  %cmp122.not = icmp eq i64 %22, %24
  %or.cond = select i1 %tobool121.not, i1 true, i1 %cmp122.not
  br i1 %or.cond, label %if.else138, label %if.then124

if.then124:                                       ; preds = %if.else
  %arrayidx126 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57, i32 3, i32 %i.0430
  %35 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx126, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp127 = icmp eq i32 %36, 0
  br i1 %cmp127, label %do.end132, label %if.then124.entry_declined_crit_edge

if.then124.entry_declined_crit_edge:              ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %entry_declined

do.end132:                                        ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %parent134 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent134, align 8
  %39 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %block_num15, align 2
  %conv136 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.46, i32 noundef %i.0430, i32 noundef %conv136, i64 noundef %24, i64 noundef %22) #11
  br label %entry_declined

if.else138:                                       ; preds = %if.else
  %41 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 8)
  store i64 %22, ptr %arrayidx80, align 1
  br i1 %tobool121.not, label %if.then144, label %if.else138.next_entry_crit_edge

if.else138.next_entry_crit_edge:                  ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  br label %next_entry

if.then144:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dev145 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev145, align 8
  %44 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %block_num15, align 2
  %conv147 = zext i8 %45 to i32
  %mul148 = shl nuw nsw i32 %conv147, 3
  %add149 = add nuw nsw i32 %mul148, %i.0430
  %46 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %context, align 8
  %conv151 = zext i8 %47 to i32
  tail call void @mlx4_set_admin_guid(ptr noundef %43, i64 noundef %22, i32 noundef %add149, i32 noundef %conv151) #8
  br label %next_entry

entry_declined:                                   ; preds = %do.end132, %if.then124.entry_declined_crit_edge, %do.end117, %if.then110.entry_declined_crit_edge, %if.then101, %do.body89
  %or = or i64 %shl.i, %declined_guid_indexes.0428
  %arrayidx155 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57, i32 3, i32 %i.0430
  %48 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp156 = icmp eq i32 %49, 0
  %mul160 = shl i32 %49, 1
  %50 = tail call i32 @llvm.umin.i32(i32 %mul160, i32 60)
  %cond167 = select i1 %cmp156, i32 1, i32 %50
  %51 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %cond167, ptr %arrayidx155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %resched_delay_sec.0426)
  %cmp170 = icmp eq i32 %resched_delay_sec.0426, 0
  %52 = tail call i32 @llvm.umin.i32(i32 %resched_delay_sec.0426, i32 %cond167)
  %cond186 = select i1 %cmp170, i32 %cond167, i32 %52
  br label %cleanup

next_entry:                                       ; preds = %if.then144, %if.else138.next_entry_crit_edge, %if.then84.next_entry_crit_edge
  %arrayidx188 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57, i32 3, i32 %i.0430
  %53 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx188, align 4
  br label %cleanup

cleanup:                                          ; preds = %next_entry, %entry_declined, %for.body.cleanup_crit_edge
  %resched_delay_sec.1 = phi i32 [ %resched_delay_sec.0426, %for.body.cleanup_crit_edge ], [ %resched_delay_sec.0426, %next_entry ], [ %cond186, %entry_declined ]
  %declined_guid_indexes.1 = phi i64 [ %declined_guid_indexes.0428, %for.body.cleanup_crit_edge ], [ %declined_guid_indexes.0428, %next_entry ], [ %or, %entry_declined ]
  %inc = add nuw nsw i32 %i.0430, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  %54 = ptrtoint ptr %guid_indexes to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %guid_indexes, align 8
  %neg = xor i64 %declined_guid_indexes.1, -1
  %and191 = and i64 %55, %neg
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %declined_guid_indexes.1)
  %tobool192.not = icmp eq i64 %declined_guid_indexes.1, 0
  br i1 %tobool192.not, label %lor.lhs.false, label %for.end.do.body198_crit_edge

for.end.do.body198_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body198

lor.lhs.false:                                    ; preds = %for.end
  %guid_indexes193 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57, i32 1
  %56 = ptrtoint ptr %guid_indexes193 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %guid_indexes193, align 8
  %neg194 = xor i64 %and191, -1
  %and195 = and i64 %57, %neg194
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and195)
  %tobool196.not = icmp eq i64 %and195, 0
  br i1 %tobool196.not, label %if.else222, label %lor.lhs.false.do.body198_crit_edge

lor.lhs.false.do.body198_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body198

do.body198:                                       ; preds = %lor.lhs.false.do.body198_crit_edge, %for.end.do.body198_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aliasguid_query_handler.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aliasguid_query_handler, %if.then210)) #8
          to label %do.end216 [label %if.then210], !srcloc !128

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %block_num15, align 2
  %conv212 = zext i8 %59 to i32
  %guid_indexes213 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57, i32 1
  %60 = ptrtoint ptr %guid_indexes213 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %guid_indexes213, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @aliasguid_query_handler.__UNIQUE_ID_ddebug520, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.46, i32 noundef %conv212, i64 noundef %61, i64 noundef %and191, i64 noundef %declined_guid_indexes.1) #8
  br label %do.end216

do.end216:                                        ; preds = %if.then210, %do.body198
  %call.i.i417 = tail call i64 @ktime_get_with_offset(i32 noundef 1) #8
  %mul218 = mul i32 %resched_delay_sec.1, 1000000000
  %conv219 = zext i32 %mul218 to i64
  %add220 = add i64 %call.i.i417, %conv219
  %time_to_run221 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57, i32 4
  %62 = ptrtoint ptr %time_to_run221 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %add220, ptr %time_to_run221, align 8
  br label %if.end224

if.else222:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %status223 = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %idxprom57, i32 2
  %63 = ptrtoint ptr %status223 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %status223, align 8
  br label %if.end224

if.end224:                                        ; preds = %if.else222, %do.end216
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock, i32 noundef %call67) #8
  %64 = ptrtoint ptr %block_num15 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %block_num15, align 2
  %conv229 = zext i8 %65 to i32
  %66 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %context, align 8
  %conv231 = zext i8 %67 to i32
  %guid_info_list232 = getelementptr inbounds %struct.ib_sa_guidinfo_rec, ptr %guid_rec, i32 0, i32 4
  tail call void @mlx4_ib_notify_slaves_on_guid_change(ptr noundef %1, i32 noundef %conv229, i32 noundef %conv231, ptr noundef %guid_info_list232)
  br label %do.body234

do.body234:                                       ; preds = %if.end224, %do.end22, %do.end
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 2
  %call242 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #8
  %ag_work_lock256 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 4, i32 1
  %call258 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ag_work_lock256) #8
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 3
  %68 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool264.not = icmp eq i32 %69, 0
  br i1 %tobool264.not, label %do.body234.for.body.i_crit_edge, label %do.body234.if.end280_crit_edge

do.body234.if.end280_crit_edge:                   ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end280

do.body234.for.body.i_crit_edge:                  ; preds = %do.body234
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body234.for.body.i_crit_edge
  %j.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.body234.for.body.i_crit_edge ]
  %low_record_time.025.i = phi i64 [ %low_record_time.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.body234.for.body.i_crit_edge ]
  %record_index.024.i = phi i32 [ %record_index.1.i, %for.inc.i.for.body.i_crit_edge ], [ -1, %do.body234.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr %arrayidx, i32 0, i32 %j.026.i
  %rec.sroa.5.0.arrayidx1.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx1.i, i32 72
  %70 = ptrtoint ptr %rec.sroa.5.0.arrayidx1.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %rec.sroa.5.0.copyload.i = load i32, ptr %rec.sroa.5.0.arrayidx1.sroa_idx.i, align 8
  %rec.sroa.617.0.arrayidx1.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx1.i, i32 112
  %71 = ptrtoint ptr %rec.sroa.617.0.arrayidx1.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %rec.sroa.617.0.copyload.i = load i64, ptr %rec.sroa.617.0.arrayidx1.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rec.sroa.5.0.copyload.i)
  %cmp2.i = icmp eq i32 %rec.sroa.5.0.copyload.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %rec.sroa.4.0.arrayidx1.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx1.i, i32 64
  %72 = ptrtoint ptr %rec.sroa.4.0.arrayidx1.sroa_idx.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %rec.sroa.4.0.copyload.i = load i64, ptr %rec.sroa.4.0.arrayidx1.sroa_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %rec.sroa.4.0.copyload.i)
  %tobool.not.i = icmp eq i64 %rec.sroa.4.0.copyload.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then.i418

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i418:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %record_index.024.i)
  %cmp3.i = icmp eq i32 %record_index.024.i, -1
  call void @__sanitizer_cov_trace_cmp8(i64 %rec.sroa.617.0.copyload.i, i64 %low_record_time.025.i)
  %cmp4.i = icmp ult i64 %rec.sroa.617.0.copyload.i, %low_record_time.025.i
  %or.cond.i = select i1 %cmp3.i, i1 true, i1 %cmp4.i
  %spec.select.i = select i1 %or.cond.i, i32 %j.026.i, i32 %record_index.024.i
  %spec.select23.i = select i1 %or.cond.i, i64 %rec.sroa.617.0.copyload.i, i64 %low_record_time.025.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i418, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %record_index.1.i = phi i32 [ %record_index.024.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %record_index.024.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %if.then.i418 ]
  %low_record_time.1.i = phi i64 [ %low_record_time.025.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %low_record_time.025.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select23.i, %if.then.i418 ]
  %inc.i = add nuw nsw i32 %j.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %low_record_time.1.i, i64 %call.i.i.i)
  %cmp10.i = icmp ult i64 %low_record_time.1.i, %call.i.i.i
  br i1 %cmp10.i, label %for.end.i.get_low_record_time_index.exit_crit_edge, label %cond.false.i

for.end.i.get_low_record_time_index.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_low_record_time_index.exit

cond.false.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub i64 %low_record_time.1.i, %call.i.i.i
  %73 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %sub.i, i32 0) #13, !srcloc !131
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %73, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %73, 1
  %74 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %sub.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #13, !srcloc !132
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %74, 0
  %div1581.i.i.i = lshr i64 %asmresult10.i.i.i.i, 29
  %extract.t.i = trunc i64 %div1581.i.i.i to i32
  %phi.bo = mul i32 %extract.t.i, 1000
  br label %get_low_record_time_index.exit

get_low_record_time_index.exit:                   ; preds = %cond.false.i, %for.end.i.get_low_record_time_index.exit_crit_edge
  %cond.off0.i = phi i32 [ %phi.bo, %cond.false.i ], [ 0, %for.end.i.get_low_record_time_index.exit_crit_edge ]
  %wq = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %idxprom, i32 1
  %75 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %wq, align 8
  %alias_guid_work = getelementptr [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], ptr %alias_guid, i32 0, i32 %idxprom, i32 2
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond.off0.i) #8
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %alias_guid_work, i32 noundef %call2.i) #8
  br label %if.end280

if.end280:                                        ; preds = %get_low_record_time_index.exit, %do.body234.if.end280_crit_edge
  %sa_query = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 2
  %77 = ptrtoint ptr %sa_query to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sa_query, align 8
  %tobool281.not = icmp eq ptr %78, null
  br i1 %tobool281.not, label %if.else283, label %if.then282

if.then282:                                       ; preds = %if.end280
  %list = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 5
  %call.i.i419 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i419, label %if.end.i.i, label %if.then282.list_del.exit_crit_edge

if.then282.list_del.exit_crit_edge:               ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then282.list_del.exit_crit_edge
  %85 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 5, i32 1
  %86 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %context) #8
  br label %if.end284

if.else283:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #10
  %done = getelementptr inbounds %struct.mlx4_alias_guid_work_context, ptr %context, i32 0, i32 3
  tail call void @complete(ptr noundef %done) #8
  br label %if.end284

if.end284:                                        ; preds = %if.else283, %list_del.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ag_work_lock256, i32 noundef %call258) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call242) #8
  br label %cleanup290

cleanup290:                                       ; preds = %if.end284, %entry.cleanup290_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !110, !111, !113, !114, !115, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 89, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug506, !1, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 97, i32 5}
!9 = !{ptr @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug507, !8, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!10 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 106, i32 4}
!13 = !{ptr @mlx4_ib_update_cache_on_guid_change.__UNIQUE_ID_ddebug508, !12, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!14 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 209, i32 2}
!17 = !{ptr @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug509, !16, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 263, i32 4}
!20 = !{ptr @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug510, !19, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 267, i32 5}
!24 = !{ptr @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug511, !23, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 277, i32 5}
!28 = !{ptr @mlx4_ib_notify_slaves_on_guid_change.__UNIQUE_ID_ddebug512, !27, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!29 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 611, i32 2}
!32 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mlx4_ib_invalidate_all_guid_record.__UNIQUE_ID_ddebug525, !31, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!34 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mlx4_ib_init_alias_guid_service.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 847, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 879, i32 49}
!40 = !{ptr @mlx4_ib_init_alias_guid_service.__key.21, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 886, i32 3}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mlx4_ib_init_alias_guid_service.__key.23, !41, !"__key", i1 false, i1 false}
!44 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 901, i32 2}
!47 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @mlx4_ib_init_alias_guid_service._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @mlx4_ib_init_alias_guid_service._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 114, i32 3}
!52 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @get_cached_alias_guid._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @get_cached_alias_guid._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 599, i32 4}
!57 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @mlx4_ib_guid_port_init.__UNIQUE_ID_ddebug524, !56, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!59 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 762, i32 2}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @alias_guid_work.__UNIQUE_ID_ddebug526, !61, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!64 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 765, i32 3}
!67 = !{ptr @alias_guid_work.__UNIQUE_ID_ddebug527, !66, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!68 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 505, i32 3}
!71 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @set_guid_rec.__UNIQUE_ID_ddebug521, !70, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!73 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 511, i32 3}
!76 = !{ptr @set_guid_rec.__UNIQUE_ID_ddebug522, !75, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!77 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 552, i32 3}
!80 = !{ptr @set_guid_rec.__UNIQUE_ID_ddebug523, !79, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!81 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/rdma/ib_verbs.h", i32 4616, i32 2}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @init_completion.__key, !86, !"__key", i1 false, i1 false}
!86 = !{!"../include/linux/completion.h", i32 87, i32 2}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 311, i32 3}
!90 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @aliasguid_query_handler.__UNIQUE_ID_ddebug513, !89, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!92 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.49, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 318, i32 3}
!95 = !{ptr @aliasguid_query_handler._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @aliasguid_query_handler._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.50, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 323, i32 2}
!99 = !{ptr @aliasguid_query_handler.__UNIQUE_ID_ddebug514, !98, !"__UNIQUE_ID_ddebug514", i1 false, i1 false}
!100 = !{ptr @.str.51, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 346, i32 4}
!103 = !{ptr @aliasguid_query_handler.__UNIQUE_ID_ddebug515, !102, !"__UNIQUE_ID_ddebug515", i1 false, i1 false}
!104 = !{ptr @.str.53, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 357, i32 5}
!107 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @aliasguid_query_handler._entry.54, !106, !"_entry", i1 false, i1 false}
!110 = !{ptr @aliasguid_query_handler._entry_ptr.58, !106, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 371, i32 6}
!113 = !{ptr @aliasguid_query_handler._entry.59, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @aliasguid_query_handler._entry_ptr.61, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.62, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/infiniband/hw/mlx4/alias_GUID.c", i32 414, i32 3}
!117 = !{ptr @aliasguid_query_handler.__UNIQUE_ID_ddebug520, !116, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!118 = !{ptr @.str.63, !116, !"<string literal>", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i64 2149220800, i64 2149220805, i64 2149220818, i64 2149220862, i64 2149220896, i64 2149220917}
!129 = !{!"auto-init"}
!130 = !{!"branch_weights", i32 2000, i32 1}
!131 = !{i64 1491826, i64 1491853, i64 1491875, i64 1491903}
!132 = !{i64 1492234, i64 1492261, i64 1492294, i64 1492315, i64 1492342, i64 1492368}
