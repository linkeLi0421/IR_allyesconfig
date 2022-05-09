; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/cm.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/cm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.cm_generic_msg = type { %struct.ib_mad_hdr, i32, i32, [2 x i8], i16 }
%struct.cm_sidr_generic_msg = type { %struct.ib_mad_hdr, i32 }
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.176, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
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
%union.anon.176 = type { %struct.ib_core_device }
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
%struct.id_map_entry = type { %struct.rb_node, i32, i32, i32, i32, ptr, %struct.list_head, %struct.delayed_work }
%struct.cm_req_msg = type { [96 x i8], %union.ib_gid }
%struct.rej_tmout_entry = type { i32, i32, %struct.delayed_work, ptr }

@mlx4_ib_multiplex_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 320, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"mlx4_ib: %s: id{slave: %d, sl_cm_id: 0x%x} Failed to id_map_alloc\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mlx4_ib_multiplex_cm_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/infiniband/hw/mlx4/cm.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_ib_multiplex_cm_handler._entry_ptr = internal global ptr @mlx4_ib_multiplex_cm_handler._entry, section ".printk_index", align 4
@mlx4_ib_multiplex_cm_handler.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"id{slave: %d, sl_cm_id: 0x%x} is NULL! attr_id: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"<mlx4_ib> %s: id{slave: %d, sl_cm_id: 0x%x} is NULL! attr_id: 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 445, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mlx4_ib: failed matching slave_id by gid (0x%llx)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx4_ib_demux_cm_handler\00", [39 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_cm_handler._entry_ptr = internal global ptr @mlx4_ib_demux_cm_handler._entry, section ".printk_index", align 4
@mlx4_ib_demux_cm_handler.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Could not allocate rej_tmout entry. rem_pv_cm_id 0x%x slave %d status %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"<mlx4_ib> %s: Could not allocate rej_tmout entry. rem_pv_cm_id 0x%x slave %d status %d\0A\00", [40 x i8] zeroinitializer }, align 32
@mlx4_ib_demux_cm_handler.__UNIQUE_ID_ddebug512 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Couldn't find an entry for pv_cm_id 0x%x, attr_id 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"<mlx4_ib> %s: Couldn't find an entry for pv_cm_id 0x%x, attr_id 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@mlx4_ib_cm_paravirt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev->sriov.id_map_lock\00", [40 x i8] zeroinitializer }, align 32
@get_local_comm_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013<mlx4_ib> %s: trying to set local_comm_id in SIDR_REP\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"get_local_comm_id\00", [46 x i8] zeroinitializer }, align 32
@get_local_comm_id._entry_ptr = internal global ptr @get_local_comm_id._entry, section ".printk_index", align 4
@id_map_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&ent->timeout)->work)\00", [54 x i8] zeroinitializer }, align 32
@id_map_alloc.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&ent->timeout)->timer\00", [40 x i8] zeroinitializer }, align 32
@id_map_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mlx4_ib: Allocation failed (err:0x%x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"id_map_alloc\00", [19 x i8] zeroinitializer }, align 32
@id_map_alloc._entry_ptr = internal global ptr @id_map_alloc._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sl_id_map_add.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sl_id_map_add\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"overriding existing sl_id_map entry (cm_id = %x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"<mlx4_ib> %s: overriding existing sl_id_map entry (cm_id = %x)\0A\00", [32 x i8] zeroinitializer }, align 32
@set_local_comm_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.25, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_local_comm_id\00", [46 x i8] zeroinitializer }, align 32
@set_local_comm_id._entry_ptr = internal global ptr @set_local_comm_id._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@alloc_rej_tmout.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&item->timeout)->work)\00", [53 x i8] zeroinitializer }, align 32
@alloc_rej_tmout.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&item->timeout)->timer\00", [39 x i8] zeroinitializer }, align 32
@alloc_rej_tmout.__UNIQUE_ID_ddebug509 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"alloc_rej_tmout\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Non-null old entry (%p) or error (%d) when inserting\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"<mlx4_ib> %s: Non-null old entry (%p) or error (%d) when inserting\0A\00", [60 x i8] zeroinitializer }, align 32
@rej_tmout_timeout.__UNIQUE_ID_ddebug508 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rej_tmout_timeout\00", [46 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"deleted(%p) != item(%p)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"<mlx4_ib> %s: deleted(%p) != item(%p)\0A\00", [57 x i8] zeroinitializer }, align 32
@get_remote_comm_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013<mlx4_ib> %s: trying to set remote_comm_id in SIDR_REQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_remote_comm_id\00", [45 x i8] zeroinitializer }, align 32
@get_remote_comm_id._entry_ptr = internal global ptr @get_remote_comm_id._entry, section ".printk_index", align 4
@lookup_rej_tmout_slave.__UNIQUE_ID_ddebug510 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 103, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lookup_rej_tmout_slave\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Could not find slave. rem_pv_cm_id 0x%x error: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"<mlx4_ib> %s: Could not find slave. rem_pv_cm_id 0x%x error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@set_remote_comm_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.40, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_remote_comm_id\00", [45 x i8] zeroinitializer }, align 32
@set_remote_comm_id._entry_ptr = internal global ptr @set_remote_comm_id._entry, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@rej_tmout_xa_cleanup.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rej_tmout_xa_cleanup\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Deleted %d entries in xarray for slave %d during cleanup\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"<mlx4_ib> %s: Deleted %d entries in xarray for slave %d during cleanup\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 16, i64 17, i64 18, i64 19, i64 23, i64 24]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 16, i64 23, i64 24]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 16, i64 23, i64 24]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 16, i64 23, i64 24]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 23, i64 24]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 18, i64 21]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 319, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 332, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 444, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 452, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 468, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 486, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 106, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 245, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 259, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 208, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 91, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 382, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 389, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 354, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 136, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 414, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 121, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 378, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private constant [35 x i8] c"../drivers/infiniband/hw/mlx4/cm.c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 512, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @get_local_comm_id._entry, ptr @get_local_comm_id._entry_ptr, ptr @get_remote_comm_id._entry, ptr @get_remote_comm_id._entry_ptr, ptr @id_map_alloc._entry, ptr @id_map_alloc._entry_ptr, ptr @mlx4_ib_demux_cm_handler._entry, ptr @mlx4_ib_demux_cm_handler._entry_ptr, ptr @mlx4_ib_multiplex_cm_handler._entry, ptr @mlx4_ib_multiplex_cm_handler._entry_ptr, ptr @set_local_comm_id._entry, ptr @set_local_comm_id._entry_ptr, ptr @set_remote_comm_id._entry, ptr @set_remote_comm_id._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mlx4_ib_cm_paravirt_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @id_map_alloc.__key, ptr @.str.17, ptr @id_map_alloc.__key.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @alloc_rej_tmout.__key, ptr @.str.26, ptr @alloc_rej_tmout.__key.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @xa_init_flags.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_multiplex_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_demux_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_cm_paravirt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_local_comm_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_map_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_map_alloc.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_map_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_local_comm_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rej_tmout.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_rej_tmout.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_remote_comm_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_remote_comm_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_multiplex_cm_handler(ptr noundef %ibdev, i32 noundef %port, i32 noundef %slave_id, ptr nocapture noundef %mad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 7
  %0 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr_id, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %if.else8.i119 [
    i16 18, label %land.lhs.true
    i16 23, label %if.then.i
    i16 16, label %entry.if.else8.i_crit_edge
    i16 17, label %entry.if.else8.i_crit_edge194
    i16 19, label %entry.if.else8.i_crit_edge195
    i16 24, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.if.else8.i_crit_edge195:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8.i

entry.if.else8.i_crit_edge194:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8.i

entry.if.else8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8.i

land.lhs.true:                                    ; preds = %entry
  %rej_reason = getelementptr inbounds %struct.cm_generic_msg, ptr %mad, i32 0, i32 4
  %3 = ptrtoint ptr %rej_reason to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %rej_reason, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %4)
  %cmp26 = icmp eq i16 %4, 4
  br i1 %cmp26, label %land.lhs.true.if.else8.i_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.else8.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else8.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %request_id.i = getelementptr inbounds %struct.cm_sidr_generic_msg, ptr %mad, i32 0, i32 1
  br label %if.then.i107

if.else8.i:                                       ; preds = %land.lhs.true.if.else8.i_crit_edge, %entry.if.else8.i_crit_edge, %entry.if.else8.i_crit_edge194, %entry.if.else8.i_crit_edge195
  %local_comm_id.i = getelementptr inbounds %struct.cm_generic_msg, ptr %mad, i32 0, i32 1
  br label %if.then.i107

if.then.i107:                                     ; preds = %if.else8.i, %if.then.i
  %retval.0.i106.in = phi ptr [ %request_id.i, %if.then.i ], [ %local_comm_id.i, %if.else8.i ]
  %5 = ptrtoint ptr %retval.0.i106.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.0.i106 = load i32, ptr %retval.0.i106.in, align 8
  %id_map_lock.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %id_map_lock.i) #6
  %sl_id_map1.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 8
  %6 = ptrtoint ptr %sl_id_map1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %node.037.i.i = load ptr, ptr %sl_id_map1.i.i, align 4
  %tobool.not38.i.i = icmp eq ptr %node.037.i.i, null
  br i1 %tobool.not38.i.i, label %if.then.i107.if.end_crit_edge, label %if.then.i107.while.body.i.i_crit_edge

if.then.i107.while.body.i.i_crit_edge:            ; preds = %if.then.i107
  br label %while.body.i.i

if.then.i107.if.end_crit_edge:                    ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then.i107.while.body.i.i_crit_edge
  %node.039.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.037.i.i, %if.then.i107.while.body.i.i_crit_edge ]
  %sl_cm_id2.i.i = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %sl_cm_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sl_cm_id2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %retval.0.i106)
  %cmp.i.i = icmp ugt i32 %8, %retval.0.i106
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %retval.0.i106)
  %cmp4.i.i = icmp ult i32 %8, %retval.0.i106
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.else6.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i, i32 0, i32 1
  br label %cleanup.i.i

if.else6.i.i:                                     ; preds = %if.else.i.i
  %slave_id7.i.i = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %slave_id7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slave_id7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %slave_id)
  %cmp8.i.i = icmp ugt i32 %10, %slave_id
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.else11.i.i

if.then9.i.i:                                     ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left10.i.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i, i32 0, i32 2
  br label %cleanup.i.i

if.else11.i.i:                                    ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %slave_id)
  %cmp13.i.i = icmp ult i32 %10, %slave_id
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else11.i.i.cont.sink.split_crit_edge

if.else11.i.i.cont.sink.split_crit_edge:          ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cont.sink.split

if.then14.i.i:                                    ; preds = %if.else11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right15.i.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i, i32 0, i32 1
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.then14.i.i, %if.then9.i.i, %if.then5.i.i, %if.then.i.i
  %node.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then5.i.i ], [ %rb_left10.i.i, %if.then9.i.i ], [ %rb_right15.i.i, %if.then14.i.i ]
  %11 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.if.end_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

cleanup.i.i.if.end_crit_edge:                     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %cleanup.i.i.if.end_crit_edge, %if.then.i107.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 140) #9
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end.do.end_crit_edge, label %if.end.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %if.end
  %sl_cm_id4.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %sl_cm_id4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i106, ptr %sl_cm_id4.i, align 4
  %slave_id5.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %slave_id5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %slave_id, ptr %slave_id5.i, align 4
  %scheduled_delete.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %scheduled_delete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %scheduled_delete.i, align 8
  %dev.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ibdev, ptr %dev.i, align 4
  %timeout.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %timeout.i, i32 noundef 0) #6
  %17 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -64, ptr %timeout.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @id_map_alloc.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry14.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %18 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %entry14.i, ptr %entry14.i, align 4
  %prev.i.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %entry14.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @id_map_ent_timeout, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @id_map_alloc.__key.18) #6
  %pv_id_table.i108 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 5
  %pv_cm_id.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 2
  %pv_id_next.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 6
  tail call void @_raw_spin_lock(ptr noundef %pv_id_table.i108) #6
  %call.i.i = tail call i32 @__xa_alloc_cyclic(ptr noundef %pv_id_table.i108, ptr noundef %pv_cm_id.i, ptr noundef nonnull %call7.i.i, [2 x i32] [i32 -1, i32 0], ptr noundef %pv_id_next.i, i32 noundef 3264) #6
  tail call void @_raw_spin_unlock(ptr noundef %pv_id_table.i108) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp.i109 = icmp sgt i32 %call.i.i, -1
  br i1 %cmp.i109, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %if.end.i
  tail call void @_raw_spin_lock(ptr noundef %id_map_lock.i) #6
  tail call fastcc void @sl_id_map_add(ptr noundef %ibdev, ptr noundef nonnull %call7.i.i) #6
  %list.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 6
  %cm_list.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 9
  %prev.i58.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 9, i32 1
  %21 = ptrtoint ptr %prev.i58.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i58.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %22, ptr noundef %cm_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then25.i.id_map_alloc.exit_crit_edge

if.then25.i.id_map_alloc.exit_crit_edge:          ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %id_map_alloc.exit

if.end.i.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i58.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list.i, ptr %prev.i58.i, align 4
  %24 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cm_list.i, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.id_map_entry, ptr %call7.i.i, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list.i, ptr %22, align 4
  br label %id_map_alloc.exit

if.end27.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %parent.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %27 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.20, i32 noundef %call.i.i) #10
  br label %do.end

id_map_alloc.exit:                                ; preds = %if.end.i.i.i, %if.then25.i.id_map_alloc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock.i) #6
  %cmp.i112 = icmp ugt ptr %call7.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %id_map_alloc.exit.do.end_crit_edge, label %id_map_alloc.exit.cont_crit_edge

id_map_alloc.exit.cont_crit_edge:                 ; preds = %id_map_alloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cont

id_map_alloc.exit.do.end_crit_edge:               ; preds = %id_map_alloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %id_map_alloc.exit.do.end_crit_edge, %if.end27.i, %if.end.do.end_crit_edge
  %retval.0.i111170 = phi ptr [ %call7.i.i, %id_map_alloc.exit.do.end_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end27.i ], [ inttoptr (i32 -12 to ptr), %if.end.do.end_crit_edge ]
  %parent = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %30, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %slave_id, i32 noundef %retval.0.i106) #10
  %31 = ptrtoint ptr %retval.0.i111170 to i32
  br label %cleanup

if.else8.i119:                                    ; preds = %entry
  %local_comm_id.i118 = getelementptr inbounds %struct.cm_generic_msg, ptr %mad, i32 0, i32 1
  %32 = ptrtoint ptr %local_comm_id.i118 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %local_comm_id.i118, align 8
  %id_map_lock.i122 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %id_map_lock.i122) #6
  %sl_id_map1.i.i124 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 8
  %34 = ptrtoint ptr %sl_id_map1.i.i124 to i32
  call void @__asan_load4_noabort(i32 %34)
  %node.037.i.i125 = load ptr, ptr %sl_id_map1.i.i124, align 4
  %tobool.not38.i.i126 = icmp eq ptr %node.037.i.i125, null
  br i1 %tobool.not38.i.i126, label %if.else8.i119.do.body54_crit_edge, label %if.else8.i119.while.body.i.i131_crit_edge

if.else8.i119.while.body.i.i131_crit_edge:        ; preds = %if.else8.i119
  br label %while.body.i.i131

if.else8.i119.do.body54_crit_edge:                ; preds = %if.else8.i119
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

while.body.i.i131:                                ; preds = %cleanup.i.i150.while.body.i.i131_crit_edge, %if.else8.i119.while.body.i.i131_crit_edge
  %node.039.i.i128 = phi ptr [ %node.0.i.i148, %cleanup.i.i150.while.body.i.i131_crit_edge ], [ %node.037.i.i125, %if.else8.i119.while.body.i.i131_crit_edge ]
  %sl_cm_id2.i.i129 = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i.i128, i32 0, i32 1
  %35 = ptrtoint ptr %sl_cm_id2.i.i129 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sl_cm_id2.i.i129, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %33)
  %cmp.i.i130 = icmp ugt i32 %36, %33
  br i1 %cmp.i.i130, label %if.then.i.i133, label %if.else.i.i135

if.then.i.i133:                                   ; preds = %while.body.i.i131
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i.i132 = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i128, i32 0, i32 2
  br label %cleanup.i.i150

if.else.i.i135:                                   ; preds = %while.body.i.i131
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %33)
  %cmp4.i.i134 = icmp ult i32 %36, %33
  br i1 %cmp4.i.i134, label %if.then5.i.i137, label %if.else6.i.i140

if.then5.i.i137:                                  ; preds = %if.else.i.i135
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i.i136 = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i128, i32 0, i32 1
  br label %cleanup.i.i150

if.else6.i.i140:                                  ; preds = %if.else.i.i135
  %slave_id7.i.i138 = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i.i128, i32 0, i32 3
  %37 = ptrtoint ptr %slave_id7.i.i138 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slave_id7.i.i138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %slave_id)
  %cmp8.i.i139 = icmp ugt i32 %38, %slave_id
  br i1 %cmp8.i.i139, label %if.then9.i.i142, label %if.else11.i.i144

if.then9.i.i142:                                  ; preds = %if.else6.i.i140
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left10.i.i141 = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i128, i32 0, i32 2
  br label %cleanup.i.i150

if.else11.i.i144:                                 ; preds = %if.else6.i.i140
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %slave_id)
  %cmp13.i.i143 = icmp ult i32 %38, %slave_id
  br i1 %cmp13.i.i143, label %if.then14.i.i146, label %if.else11.i.i144.cont.sink.split_crit_edge

if.else11.i.i144.cont.sink.split_crit_edge:       ; preds = %if.else11.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cont.sink.split

if.then14.i.i146:                                 ; preds = %if.else11.i.i144
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right15.i.i145 = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i128, i32 0, i32 1
  br label %cleanup.i.i150

cleanup.i.i150:                                   ; preds = %if.then14.i.i146, %if.then9.i.i142, %if.then5.i.i137, %if.then.i.i133
  %node.1.in.i.i147 = phi ptr [ %rb_left.i.i132, %if.then.i.i133 ], [ %rb_right.i.i136, %if.then5.i.i137 ], [ %rb_left10.i.i141, %if.then9.i.i142 ], [ %rb_right15.i.i145, %if.then14.i.i146 ]
  %39 = ptrtoint ptr %node.1.in.i.i147 to i32
  call void @__asan_load4_noabort(i32 %39)
  %node.0.i.i148 = load ptr, ptr %node.1.in.i.i147, align 4
  %tobool.not.i.i149 = icmp eq ptr %node.0.i.i148, null
  br i1 %tobool.not.i.i149, label %cleanup.i.i150.do.body54_crit_edge, label %cleanup.i.i150.while.body.i.i131_crit_edge

cleanup.i.i150.while.body.i.i131_crit_edge:       ; preds = %cleanup.i.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i131

cleanup.i.i150.do.body54_crit_edge:               ; preds = %cleanup.i.i150
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body54

do.body54:                                        ; preds = %cleanup.i.i150.do.body54_crit_edge, %if.else8.i119.do.body54_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock.i122) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_multiplex_cm_handler.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_multiplex_cm_handler, %if.then59)) #6
          to label %cleanup [label %if.then59], !srcloc !99

if.then59:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %attr_id, align 8
  %conv62 = zext i16 %41 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_multiplex_cm_handler.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef %slave_id, i32 noundef %33, i32 noundef %conv62) #6
  br label %cleanup

cont.sink.split:                                  ; preds = %if.else11.i.i144.cont.sink.split_crit_edge, %if.else11.i.i.cont.sink.split_crit_edge
  %id_map_lock.i122.sink = phi ptr [ %id_map_lock.i122, %if.else11.i.i144.cont.sink.split_crit_edge ], [ %id_map_lock.i, %if.else11.i.i.cont.sink.split_crit_edge ]
  %id.1.ph = phi ptr [ %node.039.i.i128, %if.else11.i.i144.cont.sink.split_crit_edge ], [ %node.039.i.i, %if.else11.i.i.cont.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock.i122.sink) #6
  br label %cont

cont:                                             ; preds = %cont.sink.split, %id_map_alloc.exit.cont_crit_edge
  %id.1 = phi ptr [ %call7.i.i, %id_map_alloc.exit.cont_crit_edge ], [ %id.1.ph, %cont.sink.split ]
  %pv_cm_id67 = getelementptr inbounds %struct.id_map_entry, ptr %id.1, i32 0, i32 2
  %42 = ptrtoint ptr %pv_cm_id67 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pv_cm_id67, align 4
  %44 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %attr_id, align 8
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.45)
  switch i16 %45, label %if.else8.i164 [
    i16 23, label %set_local_comm_id.exit.thread
    i16 24, label %do.end.i162
  ]

set_local_comm_id.exit.thread:                    ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #8
  %request_id.i159 = getelementptr inbounds %struct.cm_sidr_generic_msg, ptr %mad, i32 0, i32 1
  %47 = ptrtoint ptr %request_id.i159 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %43, ptr %request_id.i159, align 8
  br label %cleanup

do.end.i162:                                      ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #8
  %call.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.25) #10
  %48 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %48)
  %.pr = load i16, ptr %attr_id, align 8
  br label %set_local_comm_id.exit

if.else8.i164:                                    ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #8
  %local_comm_id.i163 = getelementptr inbounds %struct.cm_generic_msg, ptr %mad, i32 0, i32 1
  %49 = ptrtoint ptr %local_comm_id.i163 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %43, ptr %local_comm_id.i163, align 8
  br label %set_local_comm_id.exit

set_local_comm_id.exit:                           ; preds = %if.else8.i164, %do.end.i162
  %50 = phi i16 [ %.pr, %do.end.i162 ], [ %45, %if.else8.i164 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %50)
  %cmp71 = icmp eq i16 %50, 21
  br i1 %cmp71, label %if.then73, label %set_local_comm_id.exit.cleanup_crit_edge

set_local_comm_id.exit.cleanup_crit_edge:         ; preds = %set_local_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then73:                                        ; preds = %set_local_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @schedule_delayed(ptr noundef %ibdev, ptr noundef nonnull %id.1)
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %set_local_comm_id.exit.cleanup_crit_edge, %set_local_comm_id.exit.thread, %if.then59, %do.body54, %do.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %do.end ], [ -22, %if.then59 ], [ 0, %if.then73 ], [ 0, %set_local_comm_id.exit.cleanup_crit_edge ], [ -22, %do.body54 ], [ 0, %set_local_comm_id.exit.thread ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @schedule_delayed(ptr noundef %ibdev, ptr noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id_map_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %id_map_lock) #6
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 2
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #6
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 3
  %0 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %scheduled_delete = getelementptr inbounds %struct.id_map_entry, ptr %id, i32 0, i32 4
  %2 = ptrtoint ptr %scheduled_delete to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scheduled_delete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %scheduled_delete to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %scheduled_delete, align 4
  %timeout = getelementptr inbounds %struct.id_map_entry, ptr %id, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %timeout, i32 noundef 3000) #6
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %scheduled_delete10 = getelementptr inbounds %struct.id_map_entry, ptr %id, i32 0, i32 4
  %6 = ptrtoint ptr %scheduled_delete10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scheduled_delete10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %if.then12

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %timeout13 = getelementptr inbounds %struct.id_map_entry, ptr %id, i32 0, i32 7
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %timeout13, i32 noundef 3000) #6
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else.if.end15_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call4) #6
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_demux_cm_handler(ptr noundef %ibdev, i32 noundef %port, ptr noundef %slave, ptr nocapture noundef %mad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sriov1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11
  %attr_id.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 7
  %0 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %attr_id.i, align 8
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %1, label %if.else8.i [
    i16 23, label %get_local_comm_id.exit.thread
    i16 24, label %do.end.i
  ]

get_local_comm_id.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %request_id.i = getelementptr inbounds %struct.cm_sidr_generic_msg, ptr %mad, i32 0, i32 1
  %3 = ptrtoint ptr %request_id.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %request_id.i, align 8
  br label %if.then

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #10
  %5 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %.pr = load i16, ptr %attr_id.i, align 8
  br label %get_local_comm_id.exit

if.else8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %local_comm_id.i = getelementptr inbounds %struct.cm_generic_msg, ptr %mad, i32 0, i32 1
  %6 = ptrtoint ptr %local_comm_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %local_comm_id.i, align 8
  br label %get_local_comm_id.exit

get_local_comm_id.exit:                           ; preds = %if.else8.i, %do.end.i
  %8 = phi i16 [ %.pr, %do.end.i ], [ %1, %if.else8.i ]
  %retval.0.i127 = phi i32 [ -1, %do.end.i ], [ %7, %if.else8.i ]
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %8, label %if.else8.i133 [
    i16 16, label %get_local_comm_id.exit.if.then_crit_edge
    i16 23, label %get_local_comm_id.exit.if.then_crit_edge173
    i16 24, label %if.then.i130
  ]

get_local_comm_id.exit.if.then_crit_edge173:      ; preds = %get_local_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

get_local_comm_id.exit.if.then_crit_edge:         ; preds = %get_local_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %get_local_comm_id.exit.if.then_crit_edge, %get_local_comm_id.exit.if.then_crit_edge173, %get_local_comm_id.exit.thread
  %retval.0.i127145 = phi i32 [ %4, %get_local_comm_id.exit.thread ], [ %retval.0.i127, %get_local_comm_id.exit.if.then_crit_edge ], [ %retval.0.i127, %get_local_comm_id.exit.if.then_crit_edge173 ]
  %tobool.not = icmp eq ptr %slave, null
  br i1 %tobool.not, label %if.then.cleanup86_crit_edge, label %if.end

if.then.cleanup86_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

if.end:                                           ; preds = %if.then
  %tmp.sroa.3.0.primary_path_sgid.i.sroa_idx = getelementptr inbounds %struct.cm_req_msg, ptr %mad, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %tmp.sroa.3.0.primary_path_sgid.i.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %10)
  %tmp.sroa.3.0.copyload = load i64, ptr %tmp.sroa.3.0.primary_path_sgid.i.sroa_idx, align 8
  %call10 = tail call i32 @mlx4_ib_find_real_gid(ptr noundef %ibdev, i32 noundef %port, i64 noundef %tmp.sroa.3.0.copyload) #6
  %11 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call10, ptr %slave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 13, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.8, i64 noundef %tmp.sroa.3.0.copyload) #10
  br label %cleanup86

if.end15:                                         ; preds = %if.end
  %call16 = tail call fastcc i32 @alloc_rej_tmout(ptr noundef %sriov1, i32 noundef %retval.0.i127145, i32 noundef %call10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup86_crit_edge, label %do.body19

if.end15.cleanup86_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

do.body19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_demux_cm_handler.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_demux_cm_handler, %if.then25)) #6
          to label %cleanup86 [label %if.then25], !srcloc !99

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slave, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_demux_cm_handler.__UNIQUE_ID_ddebug511, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %retval.0.i127145, i32 noundef %15, i32 noundef %call16) #6
  br label %cleanup86

if.then.i130:                                     ; preds = %get_local_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %request_id.i129 = getelementptr inbounds %struct.cm_sidr_generic_msg, ptr %mad, i32 0, i32 1
  br label %get_remote_comm_id.exit

if.else8.i133:                                    ; preds = %get_local_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  %remote_comm_id.i = getelementptr inbounds %struct.cm_generic_msg, ptr %mad, i32 0, i32 2
  br label %get_remote_comm_id.exit

get_remote_comm_id.exit:                          ; preds = %if.else8.i133, %if.then.i130
  %retval.0.i134.in = phi ptr [ %request_id.i129, %if.then.i130 ], [ %remote_comm_id.i, %if.else8.i133 ]
  %16 = ptrtoint ptr %retval.0.i134.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %retval.0.i134 = load i32, ptr %retval.0.i134.in, align 4
  %id_map_lock.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %id_map_lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i134)
  %cmp.i = icmp eq i32 %retval.0.i134, -1
  br i1 %cmp.i, label %if.then.i135, label %id_map_get.exit

if.then.i135:                                     ; preds = %get_remote_comm_id.exit
  %sl_id_map1.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 8
  %17 = ptrtoint ptr %sl_id_map1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %node.037.i.i = load ptr, ptr %sl_id_map1.i.i, align 4
  %tobool.not38.i.i = icmp eq ptr %node.037.i.i, null
  br i1 %tobool.not38.i.i, label %if.then.i135.id_map_get.exit.thread_crit_edge, label %if.then.i135.while.body.i.i_crit_edge

if.then.i135.while.body.i.i_crit_edge:            ; preds = %if.then.i135
  br label %while.body.i.i

if.then.i135.id_map_get.exit.thread_crit_edge:    ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #8
  br label %id_map_get.exit.thread

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %if.then.i135.while.body.i.i_crit_edge
  %node.039.i.i = phi ptr [ %node.0.i.i, %cleanup.i.i.while.body.i.i_crit_edge ], [ %node.037.i.i, %if.then.i135.while.body.i.i_crit_edge ]
  %sl_cm_id2.i.i = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %sl_cm_id2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sl_cm_id2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp4.i.i.not = icmp eq i32 %19, -1
  br i1 %cmp4.i.i.not, label %if.else6.i.i, label %while.body.i.i.cleanup.i.i_crit_edge

while.body.i.i.cleanup.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.else6.i.i:                                     ; preds = %while.body.i.i
  %slave_id7.i.i = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %slave_id7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slave_id7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp13.i.i.not = icmp eq i32 %21, -1
  br i1 %cmp13.i.i.not, label %id_map_get.exit.thread159, label %if.else6.i.i.cleanup.i.i_crit_edge

if.else6.i.i.cleanup.i.i_crit_edge:               ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.else6.i.i.cleanup.i.i_crit_edge, %while.body.i.i.cleanup.i.i_crit_edge
  %node.1.in.i.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %cleanup.i.i.id_map_get.exit.thread_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

cleanup.i.i.id_map_get.exit.thread_crit_edge:     ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %id_map_get.exit.thread

id_map_get.exit.thread159:                        ; preds = %if.else6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock.i) #6
  br label %if.end69

id_map_get.exit.thread:                           ; preds = %cleanup.i.i.id_map_get.exit.thread_crit_edge, %if.then.i135.id_map_get.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock.i) #6
  br label %if.then34

id_map_get.exit:                                  ; preds = %get_remote_comm_id.exit
  %pv_id_table.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 5
  %call5.i = tail call ptr @xa_load(ptr noundef %pv_id_table.i, i32 noundef %retval.0.i134) #6
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock.i) #6
  %tobool33.not = icmp eq ptr %call5.i, null
  br i1 %tobool33.not, label %id_map_get.exit.if.then34_crit_edge, label %id_map_get.exit.if.end69_crit_edge

id_map_get.exit.if.end69_crit_edge:               ; preds = %id_map_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

id_map_get.exit.if.then34_crit_edge:              ; preds = %id_map_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then34

if.then34:                                        ; preds = %id_map_get.exit.if.then34_crit_edge, %id_map_get.exit.thread
  %pv_cm_id.0157 = phi i32 [ -1, %id_map_get.exit.thread ], [ %retval.0.i134, %id_map_get.exit.if.then34_crit_edge ]
  %23 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %attr_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %24)
  %cmp38 = icmp eq i16 %24, 18
  br i1 %cmp38, label %land.lhs.true, label %if.then34.do.body50_crit_edge

if.then34.do.body50_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

land.lhs.true:                                    ; preds = %if.then34
  %rej_reason = getelementptr inbounds %struct.cm_generic_msg, ptr %mad, i32 0, i32 4
  %25 = ptrtoint ptr %rej_reason to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %rej_reason, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %26)
  %cmp41 = icmp ne i16 %26, 4
  %tobool44.not = icmp eq ptr %slave, null
  %or.cond = or i1 %tobool44.not, %cmp41
  br i1 %or.cond, label %land.lhs.true.do.body50_crit_edge, label %if.then45

land.lhs.true.do.body50_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body50

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call fastcc i32 @lookup_rej_tmout_slave(ptr noundef %sriov1, i32 noundef %retval.0.i127)
  %27 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call46, ptr %slave, align 4
  %28 = tail call i32 @llvm.smin.i32(i32 %call46, i32 0)
  br label %cleanup86

do.body50:                                        ; preds = %land.lhs.true.do.body50_crit_edge, %if.then34.do.body50_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_demux_cm_handler.__UNIQUE_ID_ddebug512, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_demux_cm_handler, %if.then62)) #6
          to label %cleanup86 [label %if.then62], !srcloc !99

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %attr_id.i, align 8
  %conv65 = zext i16 %30 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_demux_cm_handler.__UNIQUE_ID_ddebug512, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, i32 noundef %pv_cm_id.0157, i32 noundef %conv65) #6
  br label %cleanup86

if.end69:                                         ; preds = %id_map_get.exit.if.end69_crit_edge, %id_map_get.exit.thread159
  %ent.0.i164 = phi ptr [ %node.039.i.i, %id_map_get.exit.thread159 ], [ %call5.i, %id_map_get.exit.if.end69_crit_edge ]
  %tobool70.not = icmp eq ptr %slave, null
  br i1 %tobool70.not, label %if.end69.if.end72_crit_edge, label %if.then71

if.end69.if.end72_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then71:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %slave_id = getelementptr inbounds %struct.id_map_entry, ptr %ent.0.i164, i32 0, i32 3
  %31 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %slave_id, align 4
  %33 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %slave, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end69.if.end72_crit_edge
  %sl_cm_id = getelementptr inbounds %struct.id_map_entry, ptr %ent.0.i164, i32 0, i32 1
  %34 = ptrtoint ptr %sl_cm_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sl_cm_id, align 4
  %36 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %attr_id.i, align 8
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %37, label %if.else8.i142 [
    i16 24, label %set_remote_comm_id.exit.thread
    i16 23, label %do.end.i140
  ]

set_remote_comm_id.exit.thread:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %request_id.i137 = getelementptr inbounds %struct.cm_sidr_generic_msg, ptr %mad, i32 0, i32 1
  %39 = ptrtoint ptr %request_id.i137 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %35, ptr %request_id.i137, align 8
  br label %cleanup86

do.end.i140:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %call.i139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.40) #10
  %40 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %.pr166 = load i16, ptr %attr_id.i, align 8
  br label %set_remote_comm_id.exit

if.else8.i142:                                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %remote_comm_id.i141 = getelementptr inbounds %struct.cm_generic_msg, ptr %mad, i32 0, i32 2
  %41 = ptrtoint ptr %remote_comm_id.i141 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %35, ptr %remote_comm_id.i141, align 4
  br label %set_remote_comm_id.exit

set_remote_comm_id.exit:                          ; preds = %if.else8.i142, %do.end.i140
  %42 = phi i16 [ %.pr166, %do.end.i140 ], [ %37, %if.else8.i142 ]
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %42, label %set_remote_comm_id.exit.cleanup86_crit_edge [
    i16 21, label %set_remote_comm_id.exit.if.then84_crit_edge
    i16 18, label %set_remote_comm_id.exit.if.then84_crit_edge174
  ]

set_remote_comm_id.exit.if.then84_crit_edge174:   ; preds = %set_remote_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then84

set_remote_comm_id.exit.if.then84_crit_edge:      ; preds = %set_remote_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then84

set_remote_comm_id.exit.cleanup86_crit_edge:      ; preds = %set_remote_comm_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup86

if.then84:                                        ; preds = %set_remote_comm_id.exit.if.then84_crit_edge, %set_remote_comm_id.exit.if.then84_crit_edge174
  tail call fastcc void @schedule_delayed(ptr noundef %ibdev, ptr noundef nonnull %ent.0.i164)
  br label %cleanup86

cleanup86:                                        ; preds = %if.then84, %set_remote_comm_id.exit.cleanup86_crit_edge, %set_remote_comm_id.exit.thread, %if.then62, %do.body50, %if.then45, %if.then25, %do.body19, %if.end15.cleanup86_crit_edge, %do.end, %if.then.cleanup86_crit_edge
  %retval.1 = phi i32 [ %28, %if.then45 ], [ -2, %do.end ], [ 0, %if.then.cleanup86_crit_edge ], [ 0, %if.then25 ], [ 0, %if.end15.cleanup86_crit_edge ], [ -2, %if.then62 ], [ 0, %set_remote_comm_id.exit.cleanup86_crit_edge ], [ 0, %if.then84 ], [ 0, %do.body19 ], [ -2, %do.body50 ], [ 0, %set_remote_comm_id.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_find_real_gid(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_rej_tmout(ptr noundef %sriov, i32 noundef %rem_pv_cm_id, i32 noundef %slave) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xa_rej_tmout = getelementptr inbounds %struct.mlx4_ib_sriov, ptr %sriov, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %xa_rej_tmout) #6
  %call = tail call ptr @xa_load(ptr noundef %xa_rej_tmout, i32 noundef %rem_pv_cm_id) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  %and.i.i.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp eq i32 %and.i.i.i, 2
  %cmp.i.i = icmp uge ptr %call, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i = and i1 %cmp.i.i, %cmp.i.i.i
  %shr.i = ashr i32 %0, 2
  %retval.0.i83 = select i1 %spec.select.i.i, i32 %shr.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i83)
  %tobool3.not = icmp eq i32 %retval.0.i83, 0
  br i1 %tobool3.not, label %if.else, label %if.then.err_or_exists_crit_edge

if.then.err_or_exists_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_or_exists

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %1 = load ptr, ptr @system_wq, align 4
  %timeout = getelementptr inbounds %struct.rej_tmout_entry, ptr %call, i32 0, i32 2
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %timeout, i32 noundef 3000) #6
  br label %err_or_exists

if.end7:                                          ; preds = %entry
  tail call void @_raw_spin_unlock(ptr noundef %xa_rej_tmout) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 112) #9
  %tobool11.not = icmp eq ptr %call7.i, null
  br i1 %tobool11.not, label %if.end7.cleanup_crit_edge, label %do.body14

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body14:                                        ; preds = %if.end7
  %timeout15 = getelementptr inbounds %struct.rej_tmout_entry, ptr %call7.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %timeout15, i32 noundef 0) #6
  %3 = ptrtoint ptr %timeout15 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %timeout15, align 8
  %lockdep_map = getelementptr inbounds %struct.rej_tmout_entry, ptr %call7.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.26, ptr noundef nonnull @alloc_rej_tmout.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry22 = getelementptr inbounds %struct.rej_tmout_entry, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %4 = ptrtoint ptr %entry22 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry22, ptr %entry22, align 4
  %prev.i = getelementptr inbounds %struct.rej_tmout_entry, ptr %call7.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry22, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.rej_tmout_entry, ptr %call7.i, i32 0, i32 2, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rej_tmout_timeout, ptr %func, align 4
  %timer = getelementptr inbounds %struct.rej_tmout_entry, ptr %call7.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.28, ptr noundef nonnull @alloc_rej_tmout.__key.27) #6
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %slave, ptr %call7.i, align 8
  %rem_pv_cm_id32 = getelementptr inbounds %struct.rej_tmout_entry, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %rem_pv_cm_id32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %rem_pv_cm_id, ptr %rem_pv_cm_id32, align 4
  %xa_rej_tmout34 = getelementptr inbounds %struct.rej_tmout_entry, ptr %call7.i, i32 0, i32 3
  %9 = ptrtoint ptr %xa_rej_tmout34 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %xa_rej_tmout, ptr %xa_rej_tmout34, align 4
  tail call void @_raw_spin_lock(ptr noundef %xa_rej_tmout) #6
  %call.i90 = tail call ptr @__xa_cmpxchg(ptr noundef %xa_rej_tmout, i32 noundef %rem_pv_cm_id, ptr noundef null, ptr noundef nonnull %call7.i, i32 noundef 3264) #6
  tail call void @_raw_spin_unlock(ptr noundef %xa_rej_tmout) #6
  %tobool37.not = icmp eq ptr %call.i90, null
  br i1 %tobool37.not, label %if.end50, label %do.body39

do.body39:                                        ; preds = %do.body14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alloc_rej_tmout.__UNIQUE_ID_ddebug509, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alloc_rej_tmout, %if.then44)) #6
          to label %do.end48 [label %if.then44], !srcloc !99

if.then44:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call.i90 to i32
  %and.i.i.i91 = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i91)
  %cmp.i.i.i92 = icmp eq i32 %and.i.i.i91, 2
  %cmp.i.i93 = icmp uge ptr %call.i90, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i94 = and i1 %cmp.i.i93, %cmp.i.i.i92
  %shr.i95 = ashr i32 %10, 2
  %retval.0.i96 = select i1 %spec.select.i.i94, i32 %shr.i95, i32 0
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alloc_rej_tmout.__UNIQUE_ID_ddebug509, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.29, ptr noundef nonnull %call.i90, i32 noundef %retval.0.i96) #6
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %do.body39
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  %11 = ptrtoint ptr %call.i90 to i32
  %and.i.i.i97 = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i97)
  %cmp.i.i.i98 = icmp eq i32 %and.i.i.i97, 2
  %cmp.i.i99 = icmp uge ptr %call.i90, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i100 = and i1 %cmp.i.i99, %cmp.i.i.i98
  %shr.i101 = ashr i32 %11, 2
  %retval.0.i102 = select i1 %spec.select.i.i100, i32 %shr.i101, i32 0
  br label %cleanup

if.end50:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %timeout15, i32 noundef 3000) #6
  br label %cleanup

err_or_exists:                                    ; preds = %if.else, %if.then.err_or_exists_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %xa_rej_tmout) #6
  br label %cleanup

cleanup:                                          ; preds = %err_or_exists, %if.end50, %do.end48, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i83, %err_or_exists ], [ %retval.0.i102, %do.end48 ], [ 0, %if.end50 ], [ -12, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lookup_rej_tmout_slave(ptr noundef %sriov, i32 noundef %rem_pv_cm_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %xa_rej_tmout = getelementptr inbounds %struct.mlx4_ib_sriov, ptr %sriov, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %xa_rej_tmout) #6
  %call = tail call ptr @xa_load(ptr noundef %xa_rej_tmout, i32 noundef %rem_pv_cm_id) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  %and.i.i.i = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i)
  %cmp.i.i.i = icmp ne i32 %and.i.i.i, 2
  %cmp.i.i = icmp ult ptr %call, inttoptr (i32 -16378 to ptr)
  %tobool3.not38 = icmp ult ptr %call, inttoptr (i32 4 to ptr)
  %not.spec.select.i.i = or i1 %cmp.i.i, %cmp.i.i.i
  %tobool3.not = or i1 %tobool3.not38, %not.spec.select.i.i
  br i1 %tobool3.not, label %if.else, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lookup_rej_tmout_slave.__UNIQUE_ID_ddebug510, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lookup_rej_tmout_slave, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !99

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  %and.i.i.i25 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i25)
  %cmp.i.i.i26 = icmp eq i32 %and.i.i.i25, 2
  %cmp.i.i27 = icmp uge ptr %call, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i28 = and i1 %cmp.i.i27, %cmp.i.i.i26
  %shr.i29 = ashr i32 %1, 2
  %retval.0.i30 = select i1 %spec.select.i.i28, i32 %shr.i29, i32 0
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @lookup_rej_tmout_slave.__UNIQUE_ID_ddebug510, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %rem_pv_cm_id, i32 noundef %retval.0.i30) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  br i1 %tobool.not, label %do.end.if.end13_crit_edge, label %cond.false

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

cond.false:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  %and.i.i.i31 = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i.i31)
  %cmp.i.i.i32 = icmp eq i32 %and.i.i.i31, 2
  %cmp.i.i33 = icmp uge ptr %call, inttoptr (i32 -16378 to ptr)
  %spec.select.i.i34 = and i1 %cmp.i.i33, %cmp.i.i.i32
  %shr.i35 = ashr i32 %2, 2
  %retval.0.i36 = select i1 %spec.select.i.i34, i32 %shr.i35, i32 0
  br label %if.end13

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.else, %cond.false, %do.end.if.end13_crit_edge
  %slave.0 = phi i32 [ %4, %if.else ], [ %retval.0.i36, %cond.false ], [ -2, %do.end.if.end13_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %xa_rej_tmout) #6
  ret i32 %slave.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_cm_paravirt_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id_map_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %id_map_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @mlx4_ib_cm_paravirt_init.__key, i16 noundef signext 3) #6
  %cm_list = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 9
  %0 = ptrtoint ptr %cm_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %cm_list, ptr %cm_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 9, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cm_list, ptr %prev.i, align 4
  %sl_id_map = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 8
  %2 = ptrtoint ptr %sl_id_map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sl_id_map, align 4
  %pv_id_table = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %pv_id_table, ptr noundef nonnull @.str.41, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #6
  %xa_flags.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 5, i32 1
  %3 = ptrtoint ptr %xa_flags.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67108868, ptr %xa_flags.i, align 4
  %xa_head.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 5, i32 2
  %4 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xa_head.i, align 4
  %xa_rej_tmout = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %xa_rej_tmout, ptr noundef nonnull @.str.41, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #6
  %xa_flags.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 10, i32 1
  %5 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 10, i32 2
  %6 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %xa_head.i.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_cm_paravirt_clean(ptr noundef %dev, i32 noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  %lh = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sl_id_map2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lh) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %lh, i32 0, i32 1
  %1 = ptrtoint ptr %lh to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %lh, ptr %lh, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %lh, ptr %0, align 4
  %id_map_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 7
  call void @_raw_spin_lock(ptr noundef %id_map_lock) #6
  %cm_list = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 9
  %3 = ptrtoint ptr %cm_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cm_list, align 8
  %cmp.not207 = icmp eq ptr %4, %cm_list
  br i1 %cmp.not207, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %id_map_lock) #6
  br label %if.end24

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slave)
  %cmp11 = icmp slt i32 %slave, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %need_flush.0209 = phi i32 [ 0, %for.body.lr.ph ], [ %need_flush.1, %for.inc.for.body_crit_edge ]
  %.pn.in208 = phi ptr [ %4, %for.body.lr.ph ], [ %.pn211, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %.pn.in208 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn211 = load ptr, ptr %.pn.in208, align 4
  br i1 %cmp11, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %slave_id = getelementptr i8, ptr %.pn.in208, i32 -12
  %6 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slave_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %slave)
  %cmp12 = icmp eq i32 %7, %slave
  br i1 %cmp12, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %scheduled_delete = getelementptr i8, ptr %.pn.in208, i32 -8
  %8 = ptrtoint ptr %scheduled_delete to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scheduled_delete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then.for.inc_crit_edge, label %if.then13

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %timeout = getelementptr i8, ptr %.pn.in208, i32 8
  %call = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout) #6
  %lnot14 = xor i1 %call, true
  %lnot.ext = zext i1 %lnot14 to i32
  %or = or i32 %need_flush.0209, %lnot.ext
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.then.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %need_flush.1 = phi i32 [ %or, %if.then13 ], [ %need_flush.0209, %if.then.for.inc_crit_edge ], [ %need_flush.0209, %lor.lhs.false.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn211, %cm_list
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock(ptr noundef %id_map_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %need_flush.1)
  %tobool22.not = icmp eq i32 %need_flush.1, 0
  br i1 %tobool22.not, label %for.end.if.end24_crit_edge, label %if.then23

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then23:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  call void @flush_workqueue(ptr noundef %10) #6
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.end.if.end24_crit_edge, %for.end.thread
  call void @_raw_spin_lock(ptr noundef %id_map_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slave)
  %cmp26 = icmp slt i32 %slave, 0
  %call28222 = call ptr @rb_first(ptr noundef %sl_id_map2) #6
  %tobool29.not223 = icmp eq ptr %call28222, null
  br i1 %cmp26, label %while.cond.preheader, label %if.else

while.cond.preheader:                             ; preds = %if.end24
  br i1 %tobool29.not223, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %pv_id_table = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 5
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %call31 = call ptr @rb_first(ptr noundef %sl_id_map2) #6
  call void @rb_erase(ptr noundef %call31, ptr noundef %sl_id_map2) #6
  %pv_cm_id = getelementptr inbounds %struct.id_map_entry, ptr %call31, i32 0, i32 2
  %11 = ptrtoint ptr %pv_cm_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pv_cm_id, align 4
  %call34 = call ptr @xa_erase(ptr noundef %pv_id_table, i32 noundef %12) #6
  %call28 = call ptr @rb_first(ptr noundef %sl_id_map2) #6
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %13 = ptrtoint ptr %cm_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %cm_list, align 4
  %cmp.i.not.i = icmp eq ptr %14, %cm_list
  br i1 %cmp.i.not.i, label %while.end.if.end109_crit_edge, label %if.then.i

while.end.if.end109_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lh, align 4
  %prev2.i.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 9, i32 1
  %17 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %lh, ptr %prev3.i.i, align 4
  store ptr %14, ptr %lh, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %18, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev6.i.i, align 4
  %22 = ptrtoint ptr %cm_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %cm_list, ptr %cm_list, align 4
  store ptr %cm_list, ptr %prev2.i.i, align 4
  br label %if.end109

if.else:                                          ; preds = %if.end24
  br i1 %tobool29.not223, label %if.else.while.end51_crit_edge, label %if.else.while.body40_crit_edge

if.else.while.body40_crit_edge:                   ; preds = %if.else
  br label %while.body40

if.else.while.end51_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end51

while.body40:                                     ; preds = %if.end50.while.body40_crit_edge, %if.else.while.body40_crit_edge
  %nd.0213 = phi ptr [ %call45, %if.end50.while.body40_crit_edge ], [ %call28222, %if.else.while.body40_crit_edge ]
  %call45 = call ptr @rb_next(ptr noundef nonnull %nd.0213) #6
  %slave_id46 = getelementptr inbounds %struct.id_map_entry, ptr %nd.0213, i32 0, i32 3
  %23 = ptrtoint ptr %slave_id46 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slave_id46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %slave)
  %cmp47 = icmp eq i32 %24, %slave
  br i1 %cmp47, label %if.then48, label %while.body40.if.end50_crit_edge

while.body40.if.end50_crit_edge:                  ; preds = %while.body40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then48:                                        ; preds = %while.body40
  %list49 = getelementptr inbounds %struct.id_map_entry, ptr %nd.0213, i32 0, i32 6
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %list49) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then48.__list_del_entry.exit.i_crit_edge

if.then48.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.id_map_entry, ptr %nd.0213, i32 0, i32 6, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %list49 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list49, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then48.__list_del_entry.exit.i_crit_edge
  %31 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %0, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list49, ptr noundef %32, ptr noundef nonnull %lh) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end50_crit_edge

__list_del_entry.exit.i.if.end50_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list49, ptr %0, align 4
  %34 = ptrtoint ptr %list49 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %lh, ptr %list49, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.id_map_entry, ptr %nd.0213, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list49, ptr %32, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end50_crit_edge, %while.body40.if.end50_crit_edge
  %tobool39.not = icmp eq ptr %call45, null
  br i1 %tobool39.not, label %if.end50.while.end51_crit_edge, label %if.end50.while.body40_crit_edge

if.end50.while.body40_crit_edge:                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body40

if.end50.while.end51_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end51

while.end51:                                      ; preds = %if.end50.while.end51_crit_edge, %if.else.while.end51_crit_edge
  %37 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lh, align 4
  %cmp63.not215 = icmp eq ptr %38, %lh
  br i1 %cmp63.not215, label %while.end51.for.end77_crit_edge, label %for.body66.lr.ph

while.end51.for.end77_crit_edge:                  ; preds = %while.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end77

for.body66.lr.ph:                                 ; preds = %while.end51
  %pv_id_table68 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11, i32 5
  br label %for.body66

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.body66.lr.ph
  %.pn183.in216 = phi ptr [ %38, %for.body66.lr.ph ], [ %.pn183, %for.body66.for.body66_crit_edge ]
  %map.1 = getelementptr i8, ptr %.pn183.in216, i32 -32
  %39 = ptrtoint ptr %.pn183.in216 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn183 = load ptr, ptr %.pn183.in216, align 4
  call void @rb_erase(ptr noundef %map.1, ptr noundef %sl_id_map2) #6
  %pv_cm_id69 = getelementptr i8, ptr %.pn183.in216, i32 -16
  %40 = ptrtoint ptr %pv_cm_id69 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pv_cm_id69, align 4
  %call70 = call ptr @xa_erase(ptr noundef %pv_id_table68, i32 noundef %41) #6
  %cmp63.not = icmp eq ptr %.pn183, %lh
  br i1 %cmp63.not, label %for.body66.for.end77_crit_edge, label %for.body66.for.body66_crit_edge

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body66

for.body66.for.end77_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end77

for.end77:                                        ; preds = %for.body66.for.end77_crit_edge, %while.end51.for.end77_crit_edge
  %42 = ptrtoint ptr %cm_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cm_list, align 8
  %cmp93.not218 = icmp eq ptr %43, %cm_list
  br i1 %cmp93.not218, label %for.end77.if.end109_crit_edge, label %for.end77.for.body96_crit_edge

for.end77.for.body96_crit_edge:                   ; preds = %for.end77
  br label %for.body96

for.end77.if.end109_crit_edge:                    ; preds = %for.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

for.body96:                                       ; preds = %for.inc102.for.body96_crit_edge, %for.end77.for.body96_crit_edge
  %.pn184.in219 = phi ptr [ %.pn184221, %for.inc102.for.body96_crit_edge ], [ %43, %for.end77.for.body96_crit_edge ]
  %44 = ptrtoint ptr %.pn184.in219 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn184221 = load ptr, ptr %.pn184.in219, align 4
  %slave_id97 = getelementptr i8, ptr %.pn184.in219, i32 -12
  %45 = ptrtoint ptr %slave_id97 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slave_id97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %slave)
  %cmp98 = icmp eq i32 %46, %slave
  br i1 %cmp98, label %if.then99, label %for.body96.for.inc102_crit_edge

for.body96.for.inc102_crit_edge:                  ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102

if.then99:                                        ; preds = %for.body96
  %call.i.i190 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn184.in219) #6
  br i1 %call.i.i190, label %if.end.i.i193, label %if.then99.__list_del_entry.exit.i196_crit_edge

if.then99.__list_del_entry.exit.i196_crit_edge:   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %__list_del_entry.exit.i196

if.end.i.i193:                                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i191 = getelementptr inbounds %struct.list_head, ptr %.pn184.in219, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i191 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i191, align 4
  %49 = ptrtoint ptr %.pn184.in219 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %.pn184.in219, align 4
  %prev1.i.i.i192 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i192 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i192, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %__list_del_entry.exit.i196

__list_del_entry.exit.i196:                       ; preds = %if.end.i.i193, %if.then99.__list_del_entry.exit.i196_crit_edge
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %0, align 4
  %call.i.i.i195 = call zeroext i1 @__list_add_valid(ptr noundef %.pn184.in219, ptr noundef %54, ptr noundef nonnull %lh) #6
  br i1 %call.i.i.i195, label %if.end.i.i.i198, label %__list_del_entry.exit.i196.for.inc102_crit_edge

__list_del_entry.exit.i196.for.inc102_crit_edge:  ; preds = %__list_del_entry.exit.i196
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc102

if.end.i.i.i198:                                  ; preds = %__list_del_entry.exit.i196
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %.pn184.in219, ptr %0, align 4
  %56 = ptrtoint ptr %.pn184.in219 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %lh, ptr %.pn184.in219, align 4
  %prev3.i.i.i197 = getelementptr inbounds %struct.list_head, ptr %.pn184.in219, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i197 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i.i197, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %.pn184.in219, ptr %54, align 4
  br label %for.inc102

for.inc102:                                       ; preds = %if.end.i.i.i198, %__list_del_entry.exit.i196.for.inc102_crit_edge, %for.body96.for.inc102_crit_edge
  %cmp93.not = icmp eq ptr %.pn184221, %cm_list
  br i1 %cmp93.not, label %for.inc102.if.end109_crit_edge, label %for.inc102.for.body96_crit_edge

for.inc102.for.body96_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body96

for.inc102.if.end109_crit_edge:                   ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.end109:                                        ; preds = %for.inc102.if.end109_crit_edge, %for.end77.if.end109_crit_edge, %if.then.i, %while.end.if.end109_crit_edge
  call void @_raw_spin_unlock(ptr noundef %id_map_lock) #6
  %59 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lh, align 4
  %cmp122.not224 = icmp eq ptr %60, %lh
  br i1 %cmp122.not224, label %if.end109.for.end133_crit_edge, label %if.end109.for.body125_crit_edge

if.end109.for.body125_crit_edge:                  ; preds = %if.end109
  br label %for.body125

if.end109.for.end133_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end133

for.body125:                                      ; preds = %list_del.exit.for.body125_crit_edge, %if.end109.for.body125_crit_edge
  %.pn185.in225 = phi ptr [ %.pn185, %list_del.exit.for.body125_crit_edge ], [ %60, %if.end109.for.body125_crit_edge ]
  %map.3 = getelementptr i8, ptr %.pn185.in225, i32 -32
  %61 = ptrtoint ptr %.pn185.in225 to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn185 = load ptr, ptr %.pn185.in225, align 4
  %call.i.i200 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn185.in225) #6
  br i1 %call.i.i200, label %if.end.i.i203, label %for.body125.list_del.exit_crit_edge

for.body125.list_del.exit_crit_edge:              ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i203:                                    ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i201 = getelementptr inbounds %struct.list_head, ptr %.pn185.in225, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i201 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i201, align 4
  %64 = ptrtoint ptr %.pn185.in225 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.pn185.in225, align 4
  %prev1.i.i.i202 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i202 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i202, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i203, %for.body125.list_del.exit_crit_edge
  %68 = ptrtoint ptr %.pn185.in225 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn185.in225, align 4
  %prev.i204 = getelementptr inbounds %struct.list_head, ptr %.pn185.in225, i32 0, i32 1
  %69 = ptrtoint ptr %prev.i204 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i204, align 4
  call void @kfree(ptr noundef %map.3) #6
  %cmp122.not = icmp eq ptr %.pn185, %lh
  br i1 %cmp122.not, label %list_del.exit.for.end133_crit_edge, label %list_del.exit.for.body125_crit_edge

list_del.exit.for.body125_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body125

list_del.exit.for.end133_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end133

for.end133:                                       ; preds = %list_del.exit.for.end133_crit_edge, %if.end109.for.end133_crit_edge
  %sriov1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 11
  call fastcc void @rej_tmout_xa_cleanup(ptr noundef %sriov1, i32 noundef %slave)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lh) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rej_tmout_xa_cleanup(ptr noundef %sriov, i32 noundef %slave) unnamed_addr #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #6
  %xa_rej_tmout = getelementptr inbounds %struct.mlx4_ib_sriov, ptr %sriov, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %xa_rej_tmout) #6
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %id, align 4
  %call = call ptr @xa_find(ptr noundef %xa_rej_tmout, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #6
  %tobool.not67 = icmp eq ptr %call, null
  br i1 %tobool.not67, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %xa_rej_tmout) #6
  br label %if.end17

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slave)
  %cmp = icmp slt i32 %slave, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %item.071 = phi ptr [ %call, %for.body.lr.ph ], [ %call6, %for.inc.for.body_crit_edge ]
  %flush_needed.0.off070 = phi i1 [ false, %for.body.lr.ph ], [ %flush_needed.1.off0, %for.inc.for.body_crit_edge ]
  %cnt.068 = phi i32 [ 0, %for.body.lr.ph ], [ %cnt.1, %for.inc.for.body_crit_edge ]
  br i1 %cmp, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %1 = ptrtoint ptr %item.071 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %item.071, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %slave)
  %cmp3 = icmp eq i32 %2, %slave
  br i1 %cmp3, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %timeout = getelementptr inbounds %struct.rej_tmout_entry, ptr %item.071, i32 0, i32 2
  %call.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %timeout, i32 noundef 0) #6
  %inc = add i32 %cnt.068, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %lor.lhs.false.for.inc_crit_edge
  %cnt.1 = phi i32 [ %inc, %if.then ], [ %cnt.068, %lor.lhs.false.for.inc_crit_edge ]
  %flush_needed.1.off0 = phi i1 [ true, %if.then ], [ %flush_needed.0.off070, %lor.lhs.false.for.inc_crit_edge ]
  %call6 = call ptr @xa_find_after(ptr noundef %xa_rej_tmout, ptr noundef nonnull %id, i32 noundef -1, i32 noundef 8) #6
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @_raw_spin_unlock(ptr noundef %xa_rej_tmout) #6
  br i1 %flush_needed.1.off0, label %if.then10, label %for.end.if.end17_crit_edge

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  call void @flush_workqueue(ptr noundef %4) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rej_tmout_xa_cleanup.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rej_tmout_xa_cleanup, %if.then15)) #6
          to label %if.end17 [label %if.then15], !srcloc !99

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rej_tmout_xa_cleanup.__UNIQUE_ID_ddebug513, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %cnt.1, i32 noundef %slave) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then10, %for.end.if.end17_crit_edge, %for.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slave)
  %cmp18 = icmp slt i32 %slave, 0
  br i1 %cmp18, label %if.then19, label %if.end17.if.end53_crit_edge

if.end17.if.end53_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then19:                                        ; preds = %if.end17
  %xa_head.i = getelementptr inbounds %struct.mlx4_ib_sriov, ptr %sriov, i32 0, i32 10, i32 2
  %5 = ptrtoint ptr %xa_head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xa_head.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %if.then19.if.end53_crit_edge, label %do.end39, !prof !100

if.then19.if.end53_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end39:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 517, i32 noundef 9, ptr noundef null) #6
  br label %if.end53

if.end53:                                         ; preds = %do.end39, %if.then19.if.end53_crit_edge, %if.end17.if.end53_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @id_map_ent_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -40
  %dev1 = getelementptr i8, ptr %work, i32 -12
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %sl_id_map3 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 8
  %id_map_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 7
  tail call void @_raw_spin_lock(ptr noundef %id_map_lock) #6
  %pv_id_table = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 11, i32 5
  %pv_cm_id = getelementptr i8, ptr %work, i32 -24
  %2 = ptrtoint ptr %pv_cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pv_cm_id, align 4
  %call4 = tail call ptr @xa_erase(ptr noundef %pv_id_table, i32 noundef %3) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %slave_id = getelementptr i8, ptr %work, i32 -20
  %4 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slave_id, align 4
  %sl_cm_id = getelementptr i8, ptr %work, i32 -28
  %6 = ptrtoint ptr %sl_cm_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sl_cm_id, align 4
  %8 = ptrtoint ptr %sl_id_map3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.037.i = load ptr, ptr %sl_id_map3, align 4
  %tobool.not38.i = icmp eq ptr %node.037.i, null
  br i1 %tobool.not38.i, label %if.end.out_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %node.039.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.037.i, %if.end.while.body.i_crit_edge ]
  %sl_cm_id2.i = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i, i32 0, i32 1
  %9 = ptrtoint ptr %sl_cm_id2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sl_cm_id2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp.i = icmp ugt i32 %10, %7
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp4.i = icmp ult i32 %10, %7
  br i1 %cmp4.i, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 1
  br label %cleanup.i

if.else6.i:                                       ; preds = %if.else.i
  %slave_id7.i = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i, i32 0, i32 3
  %11 = ptrtoint ptr %slave_id7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slave_id7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp8.i = icmp ugt i32 %12, %5
  br i1 %cmp8.i, label %if.then9.i, label %if.else11.i

if.then9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left10.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 2
  br label %cleanup.i

if.else11.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %5)
  %cmp13.i = icmp ult i32 %12, %5
  br i1 %cmp13.i, label %if.then14.i, label %id_map_find_by_sl_id.exit

if.then14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right15.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then14.i, %if.then9.i, %if.then5.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ], [ %rb_left10.i, %if.then9.i ], [ %rb_right15.i, %if.then14.i ]
  %13 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %cleanup.i.out_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

cleanup.i.out_crit_edge:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

id_map_find_by_sl_id.exit:                        ; preds = %if.else11.i
  %cmp = icmp eq ptr %node.039.i, %add.ptr
  br i1 %cmp, label %if.then7, label %id_map_find_by_sl_id.exit.out_crit_edge

id_map_find_by_sl_id.exit.out_crit_edge:          ; preds = %id_map_find_by_sl_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then7:                                         ; preds = %id_map_find_by_sl_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @rb_erase(ptr noundef nonnull %add.ptr, ptr noundef %sl_id_map3) #6
  br label %out

out:                                              ; preds = %if.then7, %id_map_find_by_sl_id.exit.out_crit_edge, %cleanup.i.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %list = getelementptr i8, ptr %work, i32 -8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %out.list_del.exit_crit_edge

out.list_del.exit_crit_edge:                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr i8, ptr %work, i32 -4
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %out.list_del.exit_crit_edge
  %20 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %work, i32 -4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %id_map_lock) #6
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sl_id_map_add(ptr noundef %ibdev, ptr noundef %new) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sl_id_map1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 8
  %slave_id2 = getelementptr inbounds %struct.id_map_entry, ptr %new, i32 0, i32 3
  %0 = ptrtoint ptr %slave_id2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slave_id2, align 4
  %sl_cm_id3 = getelementptr inbounds %struct.id_map_entry, ptr %new, i32 0, i32 1
  %2 = ptrtoint ptr %sl_cm_id3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sl_cm_id3, align 4
  %4 = ptrtoint ptr %sl_id_map1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.037.i = load ptr, ptr %sl_id_map1, align 4
  %tobool.not38.i = icmp eq ptr %node.037.i, null
  br i1 %tobool.not38.i, label %entry.while.end_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %node.039.i = phi ptr [ %node.0.i, %cleanup.i.while.body.i_crit_edge ], [ %node.037.i, %entry.while.body.i_crit_edge ]
  %sl_cm_id2.i = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i, i32 0, i32 1
  %5 = ptrtoint ptr %sl_cm_id2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sl_cm_id2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp.i = icmp ugt i32 %6, %3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 2
  br label %cleanup.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp4.i = icmp ult i32 %6, %3
  br i1 %cmp4.i, label %if.then5.i, label %if.else6.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 1
  br label %cleanup.i

if.else6.i:                                       ; preds = %if.else.i
  %slave_id7.i = getelementptr inbounds %struct.id_map_entry, ptr %node.039.i, i32 0, i32 3
  %7 = ptrtoint ptr %slave_id7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slave_id7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp8.i = icmp ugt i32 %8, %1
  br i1 %cmp8.i, label %if.then9.i, label %if.else11.i

if.then9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_left10.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 2
  br label %cleanup.i

if.else11.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %1)
  %cmp13.i = icmp ult i32 %8, %1
  br i1 %cmp13.i, label %if.then14.i, label %do.body

if.then14.i:                                      ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #8
  %rb_right15.i = getelementptr inbounds %struct.rb_node, ptr %node.039.i, i32 0, i32 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then14.i, %if.then9.i, %if.then5.i, %if.then.i
  %node.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then5.i ], [ %rb_left10.i, %if.then9.i ], [ %rb_right15.i, %if.then14.i ]
  %9 = ptrtoint ptr %node.1.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.0.i = load ptr, ptr %node.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %node.0.i, null
  br i1 %tobool.not.i, label %id_map_find_by_sl_id.exit, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

id_map_find_by_sl_id.exit:                        ; preds = %cleanup.i
  %10 = ptrtoint ptr %sl_id_map1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %sl_id_map1, align 4
  %tobool12.not57 = icmp eq ptr %.pr, null
  br i1 %tobool12.not57, label %id_map_find_by_sl_id.exit.while.end_crit_edge, label %id_map_find_by_sl_id.exit.while.body_crit_edge

id_map_find_by_sl_id.exit.while.body_crit_edge:   ; preds = %id_map_find_by_sl_id.exit
  br label %while.body

id_map_find_by_sl_id.exit.while.end_crit_edge:    ; preds = %id_map_find_by_sl_id.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body:                                          ; preds = %if.else11.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl_id_map_add.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl_id_map_add, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !99

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sl_id_map_add.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  tail call void @rb_replace_node(ptr noundef nonnull %node.039.i, ptr noundef %new, ptr noundef %sl_id_map1) #6
  br label %cleanup

while.body:                                       ; preds = %if.end20.while.body_crit_edge, %id_map_find_by_sl_id.exit.while.body_crit_edge
  %11 = phi ptr [ %17, %if.end20.while.body_crit_edge ], [ %.pr, %id_map_find_by_sl_id.exit.while.body_crit_edge ]
  %sl_cm_id14 = getelementptr inbounds %struct.id_map_entry, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %sl_cm_id14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sl_cm_id14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp = icmp ugt i32 %13, %3
  br i1 %cmp, label %while.body.if.then19_crit_edge, label %lor.lhs.false

while.body.if.then19_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

lor.lhs.false:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %3)
  %cmp16 = icmp eq i32 %13, %3
  br i1 %cmp16, label %land.lhs.true, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %slave_id17 = getelementptr inbounds %struct.id_map_entry, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %slave_id17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slave_id17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %1)
  %cmp18 = icmp sgt i32 %15, %1
  br i1 %cmp18, label %land.lhs.true.if.then19_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true.if.then19_crit_edge, %while.body.if.then19_crit_edge
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %if.end20

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then19
  %link.1 = phi ptr [ %rb_left, %if.then19 ], [ %rb_right, %if.else ]
  %16 = ptrtoint ptr %link.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %link.1, align 4
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %while.cond.while.end_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %phi.cast.le = ptrtoint ptr %11 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %id_map_find_by_sl_id.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %id_map_find_by_sl_id.exit.while.end_crit_edge ], [ 0, %entry.while.end_crit_edge ]
  %link.0.lcssa = phi ptr [ %link.1, %while.cond.while.end_crit_edge ], [ %sl_id_map1, %id_map_find_by_sl_id.exit.while.end_crit_edge ], [ %sl_id_map1, %entry.while.end_crit_edge ]
  %18 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %parent.0.lcssa, ptr %new, align 4
  %rb_right.i50 = getelementptr inbounds %struct.rb_node, ptr %new, i32 0, i32 1
  %19 = ptrtoint ptr %rb_right.i50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %rb_right.i50, align 4
  %rb_left.i51 = getelementptr inbounds %struct.rb_node, ptr %new, i32 0, i32 2
  %20 = ptrtoint ptr %rb_left.i51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %rb_left.i51, align 4
  %21 = ptrtoint ptr %link.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %new, ptr %link.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef %new, ptr noundef %sl_id_map1) #6
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc_cyclic(ptr noundef, ptr noundef, ptr noundef, [2 x i32], ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_replace_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rej_tmout_timeout(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %xa_rej_tmout = getelementptr i8, ptr %work, i32 100
  %0 = ptrtoint ptr %xa_rej_tmout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa_rej_tmout, align 4
  %rem_pv_cm_id = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %rem_pv_cm_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rem_pv_cm_id, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %call.i = tail call ptr @__xa_cmpxchg(ptr noundef %1, i32 noundef %3, ptr noundef %add.ptr, ptr noundef null, i32 noundef 0) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  %cmp.not = icmp eq ptr %call.i, %add.ptr
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %do.body

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rej_tmout_timeout.__UNIQUE_ID_ddebug508, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rej_tmout_timeout, %if.then6)) #6
          to label %if.end7 [label %if.then6], !srcloc !99

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rej_tmout_timeout.__UNIQUE_ID_ddebug508, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef %call.i, ptr noundef %add.ptr) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.body, %entry.if.end7_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__xa_cmpxchg(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !88, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 319, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mlx4_ib_multiplex_cm_handler._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mlx4_ib_multiplex_cm_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 332, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mlx4_ib_multiplex_cm_handler.__UNIQUE_ID_ddebug507, !9, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!12 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 444, i32 4}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mlx4_ib_demux_cm_handler._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @mlx4_ib_demux_cm_handler._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 452, i32 4}
!20 = !{ptr @mlx4_ib_demux_cm_handler.__UNIQUE_ID_ddebug511, !19, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 468, i32 3}
!24 = !{ptr @mlx4_ib_demux_cm_handler.__UNIQUE_ID_ddebug512, !23, !"__UNIQUE_ID_ddebug512", i1 false, i1 false}
!25 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mlx4_ib_cm_paravirt_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 486, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 106, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @get_local_comm_id._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @get_local_comm_id._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @id_map_alloc.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 245, i32 2}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @id_map_alloc.__key.18, !35, !"__key", i1 false, i1 false}
!38 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 259, i32 2}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @id_map_alloc._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @id_map_alloc._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 208, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sl_id_map_add.__UNIQUE_ID_ddebug506, !45, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!48 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 91, i32 3}
!51 = !{ptr @set_local_comm_id._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @set_local_comm_id._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @alloc_rej_tmout.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 382, i32 2}
!55 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @alloc_rej_tmout.__key.27, !54, !"__key", i1 false, i1 false}
!57 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 389, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @alloc_rej_tmout.__UNIQUE_ID_ddebug509, !59, !"__UNIQUE_ID_ddebug509", i1 false, i1 false}
!62 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 354, i32 3}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @rej_tmout_timeout.__UNIQUE_ID_ddebug508, !64, !"__UNIQUE_ID_ddebug508", i1 false, i1 false}
!67 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 136, i32 3}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @get_remote_comm_id._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @get_remote_comm_id._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 414, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @lookup_rej_tmout_slave.__UNIQUE_ID_ddebug510, !74, !"__UNIQUE_ID_ddebug510", i1 false, i1 false}
!77 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 121, i32 3}
!80 = !{ptr @set_remote_comm_id._entry, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @set_remote_comm_id._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @xa_init_flags.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!84 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/hw/mlx4/cm.c", i32 512, i32 3}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @rej_tmout_xa_cleanup.__UNIQUE_ID_ddebug513, !86, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!89 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2149207782, i64 2149207787, i64 2149207800, i64 2149207844, i64 2149207878, i64 2149207899}
!100 = !{!"branch_weights", i32 2000, i32 1}
