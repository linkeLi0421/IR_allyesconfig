; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/mcg.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/mcg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.ib_gid = type { %struct.anon.159 }
%struct.anon.159 = type { i64, i64 }
%struct.ib_sa_mad = type { %struct.ib_mad_hdr, %struct.ib_rmpp_hdr, %struct.ib_sa_hdr, [200 x i8] }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.ib_rmpp_hdr = type { i8, i8, i8, i8, i32, i32 }
%struct.ib_sa_hdr = type <{ i64, i16, i16, i64 }>
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
%struct.mcast_group = type { %struct.ib_sa_mcmember_data, %struct.rb_node, %struct.list_head, ptr, [80 x %struct.mcast_member], %struct.mutex, %struct.work_struct, %struct.list_head, [3 x i32], i32, i32, %struct.ib_sa_mad, i64, [33 x i8], %struct.device_attribute, %struct.atomic_t, %struct.delayed_work, %struct.list_head }
%struct.ib_sa_mcmember_data = type <{ %union.ib_gid, %union.ib_gid, i32, i16, i8, i8, i16, i8, i8, i32, i8, i8, [2 x i8] }>
%struct.mcast_member = type { i32, i8, i32, %struct.list_head }
%struct.mcast_req = type <{ i32, %struct.ib_sa_mad, %struct.list_head, %struct.list_head, ptr, i32 }>
%struct.clean_work = type { %struct.work_struct, ptr, i32 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.164 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.164 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }

@mlx4_ib_mcg_demux_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\014<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: did not expect to reach zero\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mlx4_ib_mcg_demux_handler\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/infiniband/hw/mlx4/mcg.c\00", [63 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_demux_handler._entry_ptr = internal global ptr @mlx4_ib_mcg_demux_handler._entry, section ".printk_index", align 4
@mlx4_ib_mcg_demux_handler._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014<mlx4_ib> %s: MCG WARNING: In demux, port %d: unexpected MCMember method: 0x%x, dropping\0A\00", [36 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_demux_handler._entry_ptr.5 = internal global ptr @mlx4_ib_mcg_demux_handler._entry.3, section ".printk_index", align 4
@mlx4_ib_mcg_multiplex_handler.__UNIQUE_ID_ddebug506 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_ib\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mlx4_ib_mcg_multiplex_handler\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"%s-%d: %16s (port %d): WARNING: Port %d, Func %d has too many pending requests (%d), dropping\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: Port %d, Func %d has too many pending requests (%d), dropping\0A\00", [51 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_multiplex_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\014<mlx4_ib> %s: MCG WARNING: In multiplex, port %d, func %d: unexpected MCMember method: 0x%x, dropping\0A\00", [55 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_multiplex_handler._entry_ptr = internal global ptr @mlx4_ib_mcg_multiplex_handler._entry, section ".printk_index", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mlx4_ib_mcg%d\00", [18 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_port_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ctx->mcg_table_lock\00", [43 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_port_cleanup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@clean_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx4_ib_mcg\00", [20 x i8] zeroinitializer }, align 32
@mgid0 = internal global { %union.ib_gid, [16 x i8] } zeroinitializer, align 32
@acquire_group.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&group->work)\00", [32 x i8] zeroinitializer }, align 32
@acquire_group.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&(&group->timeout_work)->work)\00", [47 x i8] zeroinitializer }, align 32
@acquire_group.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"&(&group->timeout_work)->timer\00", [33 x i8] zeroinitializer }, align 32
@acquire_group.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&group->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%016llx%016llx\00", [17 x i8] zeroinitializer }, align 32
@acquire_group.__key.23 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@acquire_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014<mlx4_ib> %s: MCG WARNING: group just showed up %s - confused\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"acquire_group\00", [18 x i8] zeroinitializer }, align 32
@acquire_group._entry_ptr = internal global ptr @acquire_group._entry, section ".printk_index", align 4
@mlx4_ib_mcg_work_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [138 x i8], [54 x i8] } { [138 x i8] c"\014<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: Got MAD response to existing MGID but wrong TID, dropping. Resp TID=%llx, group TID=%llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mlx4_ib_mcg_work_handler\00", [39 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_work_handler._entry_ptr = internal global ptr @mlx4_ib_mcg_work_handler._entry, section ".printk_index", align 4
@mlx4_ib_mcg_work_handler._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: no request for failed join\0A\00", [52 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_work_handler._entry_ptr.30 = internal global ptr @mlx4_ib_mcg_work_handler._entry.28, section ".printk_index", align 4
@mlx4_ib_mcg_timeout_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: DRIVER BUG\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mlx4_ib_mcg_timeout_handler\00", [36 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_timeout_handler._entry_ptr = internal global ptr @mlx4_ib_mcg_timeout_handler._entry, section ".printk_index", align 4
@mlx4_ib_mcg_timeout_handler._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: invalid state %s\0A\00", [62 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_timeout_handler._entry_ptr.35 = internal global ptr @mlx4_ib_mcg_timeout_handler._entry.33, section ".printk_index", align 4
@mlx4_ib_mcg_timeout_handler._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.32, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_timeout_handler._entry_ptr.37 = internal global ptr @mlx4_ib_mcg_timeout_handler._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MCAST_IDLE\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MCAST_JOIN_SENT\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MCAST_LEAVE_SENT\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MCAST_RESP_READY\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid State\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s(TID=0x%llx)\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Yes(TID=0x%llx)\00", [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%1d [%02d,%02d,%02d] %4d %4s %5s     \00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d[%1x] \00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\09\09(%4hx %4x %2x %2x %2x %2x %2x %4x %4x %2x %2x)\0A\00", [46 x i8] zeroinitializer }, align 32
@release_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: releasing a group with non empty pending list\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"release_group\00", [18 x i8] zeroinitializer }, align 32
@release_group._entry_ptr = internal global ptr @release_group._entry, section ".printk_index", align 4
@queue_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.52, ptr @.str.2, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"queue_req\00", [22 x i8] zeroinitializer }, align 32
@queue_req._entry_ptr = internal global ptr @queue_req._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@_mlx4_ib_mcg_port_cleanup.__UNIQUE_ID_ddebug507 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 1, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"_mlx4_ib_mcg_port_cleanup\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s-%d: %16s (port %d): WARNING: group refcount %d!!! (pointer %p)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: group refcount %d!!! (pointer %p)\0A\00", [47 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clear_pending_reqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 1202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\014<mlx4_ib> %s: %s-%d: %16s (port %d): WARNING: DRIVER BUG: list_empty %d, num_pend_reqs %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clear_pending_reqs\00", [45 x i8] zeroinitializer }, align 32
@clear_pending_reqs._entry_ptr = internal global ptr @clear_pending_reqs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 18, i64 21, i64 129, i64 146, i64 149]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 18, i64 21, i64 129, i64 146, i64 149]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 129, i64 149]
@__sancov_gen_cov_switch_values.60 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.64 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 915, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 925, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 966, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 984, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1057, i32 16 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1062, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1161, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"clean_wq\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 64, i32 33 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1257, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"mgid0\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 62, i32 21 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 837, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 838, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 839, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 840, i32 23 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 843, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 857, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 666, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 685, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 565, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 575, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 579, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 151, i32 10 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 153, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 155, i32 10 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 157, i32 10 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 159, i32 9 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1003, i32 43 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1006, i32 43 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1011, i32 47 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1015, i32 47 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1019, i32 24 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1030, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1036, i32 9 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 459, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 879, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1115, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private constant [36 x i8] c"../drivers/infiniband/hw/mlx4/mcg.c\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.265, i32 1201, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @acquire_group._entry, ptr @acquire_group._entry_ptr, ptr @clear_pending_reqs._entry, ptr @clear_pending_reqs._entry_ptr, ptr @mlx4_ib_mcg_demux_handler._entry, ptr @mlx4_ib_mcg_demux_handler._entry.3, ptr @mlx4_ib_mcg_demux_handler._entry_ptr, ptr @mlx4_ib_mcg_demux_handler._entry_ptr.5, ptr @mlx4_ib_mcg_multiplex_handler._entry, ptr @mlx4_ib_mcg_multiplex_handler._entry_ptr, ptr @mlx4_ib_mcg_timeout_handler._entry, ptr @mlx4_ib_mcg_timeout_handler._entry.33, ptr @mlx4_ib_mcg_timeout_handler._entry.36, ptr @mlx4_ib_mcg_timeout_handler._entry_ptr, ptr @mlx4_ib_mcg_timeout_handler._entry_ptr.35, ptr @mlx4_ib_mcg_timeout_handler._entry_ptr.37, ptr @mlx4_ib_mcg_work_handler._entry, ptr @mlx4_ib_mcg_work_handler._entry.28, ptr @mlx4_ib_mcg_work_handler._entry_ptr, ptr @mlx4_ib_mcg_work_handler._entry_ptr.30, ptr @queue_req._entry, ptr @queue_req._entry_ptr, ptr @release_group._entry, ptr @release_group._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mlx4_ib_mcg_port_init.__key, ptr @.str.12, ptr @mlx4_ib_mcg_port_cleanup.__key, ptr @.str.13, ptr @clean_wq, ptr @.str.14, ptr @mgid0, ptr @acquire_group.__key, ptr @.str.15, ptr @acquire_group.__key.16, ptr @.str.17, ptr @acquire_group.__key.18, ptr @.str.19, ptr @acquire_group.__key.20, ptr @.str.21, ptr @.str.22, ptr @acquire_group.__key.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_demux_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_demux_handler._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_multiplex_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_port_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_port_cleanup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clean_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgid0 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_group.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_group.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_group.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_group.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_group.__key.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acquire_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_work_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 138, i32 192, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_work_handler._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_timeout_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_timeout_handler._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_timeout_handler._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @queue_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_pending_reqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_mcg_demux_handler(ptr noundef %ibdev, i32 noundef %port, i32 noundef %slave, ptr nocapture noundef readonly %mad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ib_sa_mad, ptr %mad, i32 0, i32 3
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11
  %sub = add i32 %port, -1
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 3
  %0 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %method, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %do.end37 [
    i8 -127, label %entry.sw.bb_crit_edge
    i8 -107, label %entry.sw.bb_crit_edge139
    i8 2, label %entry.cleanup_crit_edge
    i8 18, label %entry.cleanup_crit_edge140
    i8 -110, label %entry.cleanup_crit_edge141
    i8 21, label %entry.cleanup_crit_edge142
  ]

entry.cleanup_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.sw.bb_crit_edge139:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge139
  %mcg_table_lock = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mcg_table_lock, i32 noundef 0) #9
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @mgid0, ptr noundef dereferenceable(16) %data, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %sw.bb.acquire_group.exit.thread_crit_edge, label %if.then.i

sw.bb.acquire_group.exit.thread_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit.thread

if.then.i:                                        ; preds = %sw.bb
  %mcg_table.i.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 10
  %3 = ptrtoint ptr %mcg_table.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.013.i.i = load ptr, ptr %mcg_table.i.i, align 4
  %tobool.not14.i.i = icmp eq ptr %node.013.i.i, null
  br i1 %tobool.not14.i.i, label %if.then.i.acquire_group.exit.thread_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.acquire_group.exit.thread_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit.thread

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %node.015.i.i = phi ptr [ %node.0.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %node.013.i.i, %if.then.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %node.015.i.i, i32 -52
  %call.i.i71 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %data, ptr noundef dereferenceable(16) %add.ptr.i.i, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %tobool3.not.i.i = icmp eq i32 %call.i.i71, 0
  br i1 %tobool3.not.i.i, label %mcast_find.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %cmp.i.i72 = icmp slt i32 %call.i.i71, 0
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.015.i.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.015.i.i, i32 0, i32 1
  %node.1.in.i.i = select i1 %cmp.i.i72, ptr %rb_left.i.i, ptr %rb_right.i.i
  %4 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.acquire_group.exit.thread_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end.i.i.acquire_group.exit.thread_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit.thread

mcast_find.exit.i:                                ; preds = %while.body.i.i
  %tobool3.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool3.not.i, label %mcast_find.exit.i.acquire_group.exit.thread_crit_edge, label %acquire_group.exit

mcast_find.exit.i.acquire_group.exit.thread_crit_edge: ; preds = %mcast_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit.thread

acquire_group.exit.thread:                        ; preds = %mcast_find.exit.i.acquire_group.exit.thread_crit_edge, %if.end.i.i.acquire_group.exit.thread_crit_edge, %if.then.i.acquire_group.exit.thread_crit_edge, %sw.bb.acquire_group.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  br label %if.then

acquire_group.exit:                               ; preds = %mcast_find.exit.i
  %refcount.i = getelementptr i8, ptr %node.015.i.i, i32 2116
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !127
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  %cmp.i = icmp ugt ptr %add.ptr.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %acquire_group.exit.if.then_crit_edge, label %acquire_group.exit.if.end16_crit_edge

acquire_group.exit.if.end16_crit_edge:            ; preds = %acquire_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

acquire_group.exit.if.then_crit_edge:             ; preds = %acquire_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %acquire_group.exit.if.then_crit_edge, %acquire_group.exit.thread
  %6 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %7)
  %cmp = icmp eq i8 %7, -127
  br i1 %cmp, label %if.then8, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then8:                                         ; preds = %if.then
  %tid10 = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 6
  %8 = ptrtoint ptr %tid10 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %tid10, align 1
  %tid.sroa.6.0.insert.ext = and i64 %9, 72057594037927935
  %tid.sroa.0.0.insert.ext = zext i32 %slave to i64
  %tid.sroa.0.0.insert.shift = shl i64 %tid.sroa.0.0.insert.ext, 56
  %tid.sroa.0.0.insert.insert = or i64 %tid.sroa.6.0.insert.ext, %tid.sroa.0.0.insert.shift
  tail call void @mutex_lock_nested(ptr noundef %mcg_table_lock, i32 noundef 0) #9
  %mcg_mgid0_list.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 11
  %10 = ptrtoint ptr %mcg_mgid0_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcg_mgid0_list.i, align 4
  %cmp.not156.i = icmp eq ptr %11, %mcg_mgid0_list.i
  br i1 %cmp.not156.i, label %if.then8.for.end69.i_crit_edge, label %if.then8.for.body.i_crit_edge

if.then8.for.body.i_crit_edge:                    ; preds = %if.then8
  br label %for.body.i

if.then8.for.end69.i_crit_edge:                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69.i

for.body.i:                                       ; preds = %if.end61.i.for.body.i_crit_edge, %if.then8.for.body.i_crit_edge
  %.pn.in157.i = phi ptr [ %.pn158.i, %if.end61.i.for.body.i_crit_edge ], [ %11, %if.then8.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in157.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn158.i = load ptr, ptr %.pn.in157.i, align 8
  %lock.i = getelementptr i8, ptr %.pn.in157.i, i32 1612
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %last_req_tid.i = getelementptr i8, ptr %.pn.in157.i, i32 2032
  %13 = ptrtoint ptr %last_req_tid.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %last_req_tid.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %14, i64 %tid.sroa.0.0.insert.insert)
  %cmp7.i = icmp eq i64 %14, %tid.sroa.0.0.insert.insert
  br i1 %cmp7.i, label %if.then.i75, label %if.end61.i

if.then.i75:                                      ; preds = %for.body.i
  %group.0.le.i = getelementptr i8, ptr %.pn.in157.i, i32 -64
  %bcmp.i73 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %data, ptr noundef nonnull dereferenceable(16) @mgid0, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i73)
  %tobool.not.i74 = icmp eq i32 %bcmp.i73, 0
  br i1 %tobool.not.i74, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.then.i75
  %15 = call ptr @memcpy(ptr %group.0.le.i, ptr %data, i32 16)
  %name.i = getelementptr i8, ptr %.pn.in157.i, i32 2040
  %16 = ptrtoint ptr %group.0.le.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %group.0.le.i, align 8
  %interface_id.i = getelementptr i8, ptr %.pn.in157.i, i32 -56
  %18 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %interface_id.i, align 8
  %call13.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.22, i64 noundef %17, i64 noundef %19) #9
  %call.i.i121.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in157.i) #9
  br i1 %call.i.i121.i, label %if.end.i.i.i, label %if.then8.i.list_del_init.exit.i_crit_edge

if.then8.i.list_del_init.exit.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in157.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %.pn.in157.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in157.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then8.i.list_del_init.exit.i_crit_edge
  %26 = ptrtoint ptr %.pn.in157.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %.pn.in157.i, ptr %.pn.in157.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in157.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.pn.in157.i, ptr %prev.i3.i.i, align 4
  %mcg_table.i.i76 = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 10
  %28 = ptrtoint ptr %mcg_table.i.i76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mcg_table.i.i76, align 4
  %tobool.not25.i.i = icmp eq ptr %29, null
  br i1 %tobool.not25.i.i, label %list_del_init.exit.i.mcast_insert.exit.thread.i_crit_edge, label %list_del_init.exit.i.while.body.i.i80_crit_edge

list_del_init.exit.i.while.body.i.i80_crit_edge:  ; preds = %list_del_init.exit.i
  br label %while.body.i.i80

list_del_init.exit.i.mcast_insert.exit.thread.i_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcast_insert.exit.thread.i

while.body.i.i80:                                 ; preds = %if.end7.i.i.while.body.i.i80_crit_edge, %list_del_init.exit.i.while.body.i.i80_crit_edge
  %30 = phi ptr [ %32, %if.end7.i.i.while.body.i.i80_crit_edge ], [ %29, %list_del_init.exit.i.while.body.i.i80_crit_edge ]
  %add.ptr.i.i77 = getelementptr i8, ptr %30, i32 -52
  %call.i.i78 = tail call i32 @memcmp(ptr noundef dereferenceable(16) %group.0.le.i, ptr noundef dereferenceable(16) %add.ptr.i.i77, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %cmp.i.i79 = icmp slt i32 %call.i.i78, 0
  br i1 %cmp.i.i79, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i.i81 = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %cmp4.not.i.i = icmp eq i32 %call.i.i78, 0
  br i1 %cmp4.not.i.i, label %mcast_insert.exit.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i.i82 = getelementptr inbounds %struct.rb_node, ptr %30, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i
  %link.1.i.i = phi ptr [ %rb_left.i.i81, %if.then.i.i ], [ %rb_right.i.i82, %if.then5.i.i ]
  %31 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.1.i.i, align 4
  %tobool.not.i.i83 = icmp eq ptr %32, null
  br i1 %tobool.not.i.i83, label %while.cond.while.end_crit_edge.i.i, label %if.end7.i.i.while.body.i.i80_crit_edge

if.end7.i.i.while.body.i.i80_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i80

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i = ptrtoint ptr %30 to i32
  br label %mcast_insert.exit.thread.i

mcast_insert.exit.thread.i:                       ; preds = %while.cond.while.end_crit_edge.i.i, %list_del_init.exit.i.mcast_insert.exit.thread.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %list_del_init.exit.i.mcast_insert.exit.thread.i_crit_edge ]
  %link.0.lcssa.i.i = phi ptr [ %link.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %mcg_table.i.i76, %list_del_init.exit.i.mcast_insert.exit.thread.i_crit_edge ]
  %node.i.i = getelementptr i8, ptr %.pn.in157.i, i32 -12
  %33 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %parent.0.lcssa.i.i, ptr %node.i.i, align 4
  %rb_right.i.i.i = getelementptr i8, ptr %.pn.in157.i, i32 -8
  %34 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %rb_right.i.i.i, align 4
  %rb_left.i.i.i = getelementptr i8, ptr %.pn.in157.i, i32 -4
  %35 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %36 = ptrtoint ptr %link.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %node.i.i, ptr %link.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i.i, ptr noundef %mcg_table.i.i76) #9
  br label %if.end14

mcast_insert.exit.i:                              ; preds = %if.else.i.i
  %tobool16.not.i = icmp eq ptr %add.ptr.i.i77, null
  br i1 %tobool16.not.i, label %mcast_insert.exit.i.if.end14_crit_edge, label %if.then17.i

mcast_insert.exit.i.if.end14_crit_edge:           ; preds = %mcast_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then17.i:                                      ; preds = %mcast_insert.exit.i
  %pending_list.i = getelementptr i8, ptr %.pn.in157.i, i32 1748
  %37 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pending_list.i, align 4
  %add.ptr21.i = getelementptr i8, ptr %38, i32 -260
  %39 = ptrtoint ptr %add.ptr21.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr21.i, align 4
  %arrayidx.i = getelementptr %struct.mcast_group, ptr %group.0.le.i, i32 0, i32 4, i32 %40
  %num_pend_reqs.i = getelementptr inbounds %struct.mcast_member, ptr %arrayidx.i, i32 0, i32 2
  %41 = ptrtoint ptr %num_pend_reqs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_pend_reqs.i, align 4
  %dec.i = add i32 %42, -1
  store i32 %dec.i, ptr %num_pend_reqs.i, align 4
  %call.i.i122.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %38) #9
  br i1 %call.i.i122.i, label %if.end.i.i125.i, label %if.then17.i.list_del.exit.i_crit_edge

if.then17.i.list_del.exit.i_crit_edge:            ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i125.i:                                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i123.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i123.i, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %38, align 4
  %prev1.i.i.i124.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i124.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i125.i, %if.then17.i.list_del.exit.i_crit_edge
  %49 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %38, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %func_list.i = getelementptr i8, ptr %38, i32 8
  %call.i.i126.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %func_list.i) #9
  br i1 %call.i.i126.i, label %if.end.i.i129.i, label %list_del.exit.i.list_del.exit131.i_crit_edge

list_del.exit.i.list_del.exit131.i_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit131.i

if.end.i.i129.i:                                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i127.i = getelementptr i8, ptr %38, i32 12
  %51 = ptrtoint ptr %prev.i.i127.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i127.i, align 4
  %53 = ptrtoint ptr %func_list.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %func_list.i, align 4
  %prev1.i.i.i128.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %prev1.i.i.i128.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev1.i.i.i128.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %54, ptr %52, align 4
  br label %list_del.exit131.i

list_del.exit131.i:                               ; preds = %if.end.i.i129.i, %list_del.exit.i.list_del.exit131.i_crit_edge
  %57 = ptrtoint ptr %func_list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 256 to ptr), ptr %func_list.i, align 4
  %prev.i130.i = getelementptr i8, ptr %38, i32 12
  %58 = ptrtoint ptr %prev.i130.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i130.i, align 4
  tail call void @kfree(ptr noundef %add.ptr21.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  %call25.i = tail call fastcc i32 @release_group(ptr noundef %group.0.le.i, i32 noundef 0) #9
  br label %cleanup

if.else.i:                                        ; preds = %if.then.i75
  %call.i.i132.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in157.i) #9
  br i1 %call.i.i132.i, label %if.end.i.i135.i, label %if.else.i.list_del.exit137.i_crit_edge

if.else.i.list_del.exit137.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit137.i

if.end.i.i135.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i133.i = getelementptr inbounds %struct.list_head, ptr %.pn.in157.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i133.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i133.i, align 4
  %61 = ptrtoint ptr %.pn.in157.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.pn.in157.i, align 4
  %prev1.i.i.i134.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i134.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i134.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit137.i

list_del.exit137.i:                               ; preds = %if.end.i.i135.i, %if.else.i.list_del.exit137.i_crit_edge
  %65 = ptrtoint ptr %.pn.in157.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in157.i, align 4
  %prev.i136.i = getelementptr inbounds %struct.list_head, ptr %.pn.in157.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i136.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i136.i, align 4
  %pending_list30.i = getelementptr i8, ptr %.pn.in157.i, i32 1748
  %67 = ptrtoint ptr %pending_list30.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load volatile ptr, ptr %pending_list30.i, align 4
  %cmp.i138.not.i = icmp eq ptr %68, %pending_list30.i
  br i1 %cmp.i138.not.i, label %list_del.exit137.i.if.end36.i_crit_edge, label %land.lhs.true.i

list_del.exit137.i.if.end36.i_crit_edge:          ; preds = %list_del.exit137.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %list_del.exit137.i
  %state.i = getelementptr i8, ptr %.pn.in157.i, i32 1768
  %69 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp33.not.i = icmp eq i32 %70, 0
  br i1 %cmp33.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then34.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %timeout_work.i = getelementptr i8, ptr %.pn.in157.i, i32 2108
  %call35.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %timeout_work.i) #9
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %land.lhs.true.i.if.end36.i_crit_edge, %list_del.exit137.i.if.end36.i_crit_edge
  %71 = ptrtoint ptr %pending_list30.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pending_list30.i, align 4
  %cmp50.not159.i = icmp eq ptr %72, %pending_list30.i
  br i1 %cmp50.not159.i, label %if.end36.i.for.end.i_crit_edge, label %if.end36.i.for.body52.i_crit_edge

if.end36.i.for.body52.i_crit_edge:                ; preds = %if.end36.i
  br label %for.body52.i

if.end36.i.for.end.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body52.i:                                     ; preds = %list_del.exit144.i.for.body52.i_crit_edge, %if.end36.i.for.body52.i_crit_edge
  %.pn118.in160.i = phi ptr [ %.pn118.i, %list_del.exit144.i.for.body52.i_crit_edge ], [ %72, %if.end36.i.for.body52.i_crit_edge ]
  %tmp1.0.i = getelementptr i8, ptr %.pn118.in160.i, i32 -260
  %73 = ptrtoint ptr %.pn118.in160.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pn118.i = load ptr, ptr %.pn118.in160.i, align 4
  %call.i.i139.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn118.in160.i) #9
  br i1 %call.i.i139.i, label %if.end.i.i142.i, label %for.body52.i.list_del.exit144.i_crit_edge

for.body52.i.list_del.exit144.i_crit_edge:        ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit144.i

if.end.i.i142.i:                                  ; preds = %for.body52.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i140.i = getelementptr inbounds %struct.list_head, ptr %.pn118.in160.i, i32 0, i32 1
  %74 = ptrtoint ptr %prev.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i.i140.i, align 4
  %76 = ptrtoint ptr %.pn118.in160.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %.pn118.in160.i, align 4
  %prev1.i.i.i141.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i.i141.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev1.i.i.i141.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %77, ptr %75, align 4
  br label %list_del.exit144.i

list_del.exit144.i:                               ; preds = %if.end.i.i142.i, %for.body52.i.list_del.exit144.i_crit_edge
  %80 = ptrtoint ptr %.pn118.in160.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn118.in160.i, align 4
  %prev.i143.i = getelementptr inbounds %struct.list_head, ptr %.pn118.in160.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev.i143.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i143.i, align 4
  tail call void @kfree(ptr noundef %tmp1.0.i) #9
  %cmp50.not.i = icmp eq ptr %.pn118.i, %pending_list30.i
  br i1 %cmp50.not.i, label %list_del.exit144.i.for.end.i_crit_edge, label %list_del.exit144.i.for.body52.i_crit_edge

list_del.exit144.i.for.body52.i_crit_edge:        ; preds = %list_del.exit144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52.i

list_del.exit144.i.for.end.i_crit_edge:           ; preds = %list_del.exit144.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit144.i.for.end.i_crit_edge, %if.end36.i.for.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  tail call void @kfree(ptr noundef %group.0.le.i) #9
  br label %cleanup

if.end61.i:                                       ; preds = %for.body.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %cmp.not.i = icmp eq ptr %.pn158.i, %mcg_mgid0_list.i
  br i1 %cmp.not.i, label %if.end61.i.for.end69.i_crit_edge, label %if.end61.i.for.body.i_crit_edge

if.end61.i.for.body.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end61.i.for.end69.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69.i

for.end69.i:                                      ; preds = %if.end61.i.for.end69.i_crit_edge, %if.then8.for.end69.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  br label %cleanup

if.end14:                                         ; preds = %mcast_insert.exit.i.if.end14_crit_edge, %mcast_insert.exit.thread.i
  %refcount.i84 = getelementptr i8, ptr %.pn.in157.i, i32 2104
  %call.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i84, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i84, i32 1, i32 3, i32 1) #9
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i84, ptr %refcount.i84, i32 1, ptr elementtype(i32) %refcount.i84) #9, !srcloc !127
  %dev.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 8
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 8
  %port.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 1
  %85 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port.i, align 4
  %dentry.i = getelementptr i8, ptr %.pn.in157.i, i32 2076
  %call26.i = tail call i32 @add_sysfs_port_mcg_attr(ptr noundef %84, i32 noundef %86, ptr noundef %dentry.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  %tobool.not = icmp eq ptr %group.0.le.i, null
  br i1 %tobool.not, label %if.end14.cleanup_crit_edge, label %if.end14.if.end16_crit_edge

if.end14.if.end16_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end14.if.end16_crit_edge, %acquire_group.exit.if.end16_crit_edge
  %group.095 = phi ptr [ %group.0.le.i, %if.end14.if.end16_crit_edge ], [ %add.ptr.i.i, %acquire_group.exit.if.end16_crit_edge ]
  %lock = getelementptr inbounds %struct.mcast_group, ptr %group.095, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %response_sa_mad = getelementptr inbounds %struct.mcast_group, ptr %group.095, i32 0, i32 11
  %87 = call ptr @memcpy(ptr %response_sa_mad, ptr %mad, i32 256)
  %state = getelementptr inbounds %struct.mcast_group, ptr %group.095, i32 0, i32 9
  %88 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %state, align 8
  %prev_state = getelementptr inbounds %struct.mcast_group, ptr %group.095, i32 0, i32 10
  %90 = ptrtoint ptr %prev_state to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %prev_state, align 4
  store i32 3, ptr %state, align 8
  %refcount = getelementptr inbounds %struct.mcast_group, ptr %group.095, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %91 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !127
  %mcg_wq = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 12
  %92 = ptrtoint ptr %mcg_wq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mcg_wq, align 4
  %work = getelementptr inbounds %struct.mcast_group, ptr %group.095, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %93, ptr noundef %work) #9
  br i1 %call.i, label %if.end16.if.end31_crit_edge, label %do.body

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body:                                          ; preds = %if.end16
  %call.i.i70 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %94 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !129
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %94, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %do.body.if.end31_crit_edge

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.mcast_group, ptr %group.095, i32 0, i32 13
  %demux25 = getelementptr inbounds %struct.mcast_group, ptr %group.095, i32 0, i32 3
  %95 = ptrtoint ptr %demux25 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %demux25, align 8
  %port26 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %port26 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port26, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, i32 noundef 915, ptr noundef %name, i32 noundef %98) #13
  br label %if.end31

if.end31:                                         ; preds = %do.end, %do.body.if.end31_crit_edge, %if.end16.if.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call33 = tail call fastcc i32 @release_group(ptr noundef nonnull %group.095, i32 noundef 0)
  br label %cleanup

do.end37:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %1 to i32
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %port, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end31, %if.end14.cleanup_crit_edge, %for.end69.i, %for.end.i, %list_del.exit131.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge140, %entry.cleanup_crit_edge141, %entry.cleanup_crit_edge142
  %retval.0 = phi i32 [ 1, %do.end37 ], [ 1, %if.end31 ], [ 1, %if.end14.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge140 ], [ 0, %entry.cleanup_crit_edge141 ], [ 0, %entry.cleanup_crit_edge142 ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %list_del.exit131.i ], [ 1, %for.end.i ], [ 1, %for.end69.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @release_group(ptr noundef %group, i32 noundef %from_timeout_handler) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 3
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 8
  %mcg_table_lock = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mcg_table_lock, i32 noundef 0) #9
  %lock = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcount = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !129
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %2, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %from_timeout_handler)
  %tobool.not = icmp eq i32 %from_timeout_handler, 0
  br i1 %tobool.not, label %if.then1, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then1:                                         ; preds = %if.then
  %state = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 9
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.then1.if.end7_crit_edge, label %land.lhs.true

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.then1
  %timeout_work = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 16
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #9
  br i1 %call2, label %land.lhs.true.if.end7_crit_edge, label %if.then3

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !127
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.then1.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %group, ptr noundef nonnull dereferenceable(16) @mgid0, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %if.end7.if.end11_crit_edge, label %if.then10

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %port = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %dentry = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 14
  tail call void @del_sysfs_port_mcg_attr(ptr noundef %7, i32 noundef %9, ptr noundef %dentry) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end7.if.end11_crit_edge
  %pending_list = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 7
  %10 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %11, %pending_list
  br i1 %cmp.i.not, label %if.end11.if.end18_crit_edge, label %do.end

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 13
  %12 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %demux, align 8
  %port16 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %port16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.51, i32 noundef 459, ptr noundef %name, i32 noundef %15) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end11.if.end18_crit_edge
  br i1 %tobool9.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %node = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 1
  %mcg_table = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %1, i32 0, i32 10
  tail call void @rb_erase(ptr noundef %node, ptr noundef %mcg_table) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %mgid0_list = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 2
  %call.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mgid0_list) #9
  br i1 %call.i.i52, label %if.end.i.i, label %if.end21.list_del_init.exit_crit_edge

if.end21.list_del_init.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %mgid0_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mgid0_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end21.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %mgid0_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %mgid0_list, ptr %mgid0_list, align 4
  %prev.i3.i = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mgid0_list, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  tail call void @kfree(ptr noundef %group) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %list_del_init.exit, %if.then3
  %retval.0 = phi i32 [ 1, %list_del_init.exit ], [ 0, %if.then3 ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_mcg_multiplex_handler(ptr noundef %ibdev, i32 noundef %port, i32 noundef %slave, ptr nocapture noundef readonly %sa_mad) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.ib_sa_mad, ptr %sa_mad, i32 0, i32 3
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11
  %sub = add i32 %port, -1
  %arrayidx = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub
  %flushing = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 15
  %0 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flushing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %sa_mad, i32 0, i32 3
  %2 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %method, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %3, label %do.end38 [
    i8 2, label %sw.bb
    i8 21, label %if.end.sw.bb1_crit_edge
    i8 18, label %if.end.cleanup_crit_edge
    i8 -127, label %if.end.cleanup_crit_edge101
    i8 -110, label %if.end.cleanup_crit_edge102
    i8 -107, label %if.end.cleanup_crit_edge103
  ]

if.end.cleanup_crit_edge103:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge102:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge101:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.sw.bb1_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %if.end.sw.bb1_crit_edge
  %tobool6.not.i = phi i1 [ true, %if.end.sw.bb1_crit_edge ], [ false, %sw.bb ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 284) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %sw.bb1.cleanup_crit_edge, label %if.end5

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %sw.bb1
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %slave, ptr %call7.i.i, align 8
  %sa_mad6 = getelementptr inbounds %struct.mcast_req, ptr %call7.i.i, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %sa_mad6, ptr %sa_mad, i32 256)
  %mcg_table_lock = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mcg_table_lock, i32 noundef 0) #9
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) @mgid0, ptr noundef dereferenceable(16) %data, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %if.end5.if.end5.i_crit_edge, label %if.then.i

if.end5.if.end5.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end5
  %mcg_table.i.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 10
  %8 = ptrtoint ptr %mcg_table.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %node.013.i.i = load ptr, ptr %mcg_table.i.i, align 4
  %tobool.not14.i.i = icmp eq ptr %node.013.i.i, null
  br i1 %tobool.not14.i.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.while.body.i.i_crit_edge

if.then.i.while.body.i.i_crit_edge:               ; preds = %if.then.i
  br label %while.body.i.i

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then.i.while.body.i.i_crit_edge
  %node.015.i.i = phi ptr [ %node.0.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %node.013.i.i, %if.then.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %node.015.i.i, i32 -52
  %call.i.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %data, ptr noundef dereferenceable(16) %add.ptr.i.i, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %mcast_find.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %node.015.i.i, i32 0, i32 2
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %node.015.i.i, i32 0, i32 1
  %node.1.in.i.i = select i1 %cmp.i.i, ptr %rb_left.i.i, ptr %rb_right.i.i
  %9 = ptrtoint ptr %node.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %node.0.i.i = load ptr, ptr %node.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %node.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end5.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

if.end.i.i.if.end5.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

mcast_find.exit.i:                                ; preds = %while.body.i.i
  %tobool3.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool3.not.i, label %mcast_find.exit.i.if.end5.i_crit_edge, label %mcast_find.exit.i.acquire_group.exit_crit_edge

mcast_find.exit.i.acquire_group.exit_crit_edge:   ; preds = %mcast_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit

mcast_find.exit.i.if.end5.i_crit_edge:            ; preds = %mcast_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %mcast_find.exit.i.if.end5.i_crit_edge, %if.end.i.i.if.end5.i_crit_edge, %if.then.i.if.end5.i_crit_edge, %if.end5.if.end5.i_crit_edge
  br i1 %tobool6.not.i, label %if.end5.i.acquire_group.exit.thread_crit_edge, label %if.end9.i

if.end5.i.acquire_group.exit.thread_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 2280) #15
  %tobool11.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool11.not.i, label %if.end9.i.acquire_group.exit.thread_crit_edge, label %if.end14.i

if.end9.i.acquire_group.exit.thread_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit.thread

if.end14.i:                                       ; preds = %if.end9.i
  %demux.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %demux.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx, ptr %demux.i, align 8
  %12 = call ptr @memcpy(ptr %call7.i.i.i, ptr %data, i32 16)
  %pending_list.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %pending_list.i, ptr %pending_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pending_list.i, ptr %prev.i.i, align 8
  %mgid0_list.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %mgid0_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %mgid0_list.i, ptr %mgid0_list.i, align 8
  %prev.i133.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i133.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %mgid0_list.i, ptr %prev.i133.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end14.i
  %i.0154.i = phi i32 [ 0, %if.end14.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %pending.i = getelementptr %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0154.i, i32 3
  %17 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %pending.i, ptr %pending.i, align 4
  %prev.i134.i = getelementptr %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 4, i32 %i.0154.i, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i134.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pending.i, ptr %prev.i134.i, align 4
  %inc.i = add nuw nsw i32 %i.0154.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 80
  br i1 %exitcond.not.i, label %do.body.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.body.i:                                        ; preds = %for.body.i
  %work.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #9
  %19 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.15, ptr noundef nonnull @acquire_group.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry19.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %entry19.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry19.i, ptr %entry19.i, align 4
  %prev.i135.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i135.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry19.i, ptr %prev.i135.i, align 8
  %func21.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %22 = ptrtoint ptr %func21.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mlx4_ib_mcg_work_handler, ptr %func21.i, align 4
  %timeout_work.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 16
  tail call void @__init_work(ptr noundef %timeout_work.i, i32 noundef 0) #9
  %23 = ptrtoint ptr %timeout_work.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %timeout_work.i, align 4
  %lockdep_map32.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 16, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map32.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @acquire_group.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry35.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 16, i32 0, i32 1
  %24 = ptrtoint ptr %entry35.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry35.i, ptr %entry35.i, align 8
  %prev.i136.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 16, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i136.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry35.i, ptr %prev.i136.i, align 4
  %func38.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 16, i32 0, i32 2
  %26 = ptrtoint ptr %func38.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mlx4_ib_mcg_timeout_handler, ptr %func38.i, align 8
  %timer.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @acquire_group.__key.18) #9
  %lock.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @acquire_group.__key.20) #9
  %name.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 13
  %27 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %call7.i.i.i, align 8
  %interface_id.i = getelementptr inbounds %struct.anon.159, ptr %call7.i.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %interface_id.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %interface_id.i, align 8
  %call54.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.22, i64 noundef %28, i64 noundef %30) #9
  %dentry.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 14
  %key.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 3
  %31 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @acquire_group.__key.23, ptr %key.i, align 4
  %show.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 14, i32 1
  %32 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sysfs_show_group, ptr %show.i, align 8
  %store.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 14, i32 2
  %33 = ptrtoint ptr %store.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %store.i, align 4
  %34 = ptrtoint ptr %dentry.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %name.i, ptr %dentry.i, align 4
  %mode.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 14, i32 0, i32 1
  %35 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 256, ptr %mode.i, align 8
  %state.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 9
  %36 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %state.i, align 8
  br i1 %tobool.not.i, label %if.then68.i, label %if.end70.i

if.then68.i:                                      ; preds = %do.body.i
  %mcg_mgid0_list.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 11
  %37 = ptrtoint ptr %mcg_mgid0_list.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mcg_mgid0_list.i, align 4
  %call.i.i137.i = tail call zeroext i1 @__list_add_valid(ptr noundef %mgid0_list.i, ptr noundef %mcg_mgid0_list.i, ptr noundef %38) #9
  br i1 %call.i.i137.i, label %if.end.i.i.i, label %if.then68.i.acquire_group.exit_crit_edge

if.then68.i.acquire_group.exit_crit_edge:         ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %acquire_group.exit

if.end.i.i.i:                                     ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %mgid0_list.i, ptr %prev1.i.i.i, align 4
  %40 = ptrtoint ptr %mgid0_list.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %mgid0_list.i, align 8
  %41 = ptrtoint ptr %prev.i133.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %mcg_mgid0_list.i, ptr %prev.i133.i, align 4
  %42 = ptrtoint ptr %mcg_mgid0_list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %mgid0_list.i, ptr %mcg_mgid0_list.i, align 4
  br label %acquire_group.exit

if.end70.i:                                       ; preds = %do.body.i
  %mcg_table.i138.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 10
  %43 = ptrtoint ptr %mcg_table.i138.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mcg_table.i138.i, align 4
  %tobool.not25.i.i = icmp eq ptr %44, null
  br i1 %tobool.not25.i.i, label %if.end70.i.mcast_insert.exit.thread.i_crit_edge, label %if.end70.i.while.body.i142.i_crit_edge

if.end70.i.while.body.i142.i_crit_edge:           ; preds = %if.end70.i
  br label %while.body.i142.i

if.end70.i.mcast_insert.exit.thread.i_crit_edge:  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mcast_insert.exit.thread.i

while.body.i142.i:                                ; preds = %if.end7.i.i.while.body.i142.i_crit_edge, %if.end70.i.while.body.i142.i_crit_edge
  %45 = phi ptr [ %47, %if.end7.i.i.while.body.i142.i_crit_edge ], [ %44, %if.end70.i.while.body.i142.i_crit_edge ]
  %add.ptr.i139.i = getelementptr i8, ptr %45, i32 -52
  %call.i140.i = tail call i32 @memcmp(ptr noundef dereferenceable(16) %call7.i.i.i, ptr noundef dereferenceable(16) %add.ptr.i139.i, i32 noundef 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i)
  %cmp.i141.i = icmp slt i32 %call.i140.i, 0
  br i1 %cmp.i141.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i142.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_left.i143.i = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 2
  br label %if.end7.i.i

if.else.i.i:                                      ; preds = %while.body.i142.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140.i)
  %cmp4.not.i.i = icmp eq i32 %call.i140.i, 0
  br i1 %cmp4.not.i.i, label %mcast_insert.exit.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %rb_right.i144.i = getelementptr inbounds %struct.rb_node, ptr %45, i32 0, i32 1
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.then.i.i
  %link.1.i.i = phi ptr [ %rb_left.i143.i, %if.then.i.i ], [ %rb_right.i144.i, %if.then5.i.i ]
  %46 = ptrtoint ptr %link.1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %link.1.i.i, align 4
  %tobool.not.i145.i = icmp eq ptr %47, null
  br i1 %tobool.not.i145.i, label %while.cond.while.end_crit_edge.i.i, label %if.end7.i.i.while.body.i142.i_crit_edge

if.end7.i.i.while.body.i142.i_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i142.i

while.cond.while.end_crit_edge.i.i:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast.le.i.i = ptrtoint ptr %45 to i32
  br label %mcast_insert.exit.thread.i

mcast_insert.exit.thread.i:                       ; preds = %while.cond.while.end_crit_edge.i.i, %if.end70.i.mcast_insert.exit.thread.i_crit_edge
  %parent.0.lcssa.i.i = phi i32 [ %phi.cast.le.i.i, %while.cond.while.end_crit_edge.i.i ], [ 0, %if.end70.i.mcast_insert.exit.thread.i_crit_edge ]
  %link.0.lcssa.i.i = phi ptr [ %link.1.i.i, %while.cond.while.end_crit_edge.i.i ], [ %mcg_table.i138.i, %if.end70.i.mcast_insert.exit.thread.i_crit_edge ]
  %node.i.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %node.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %parent.0.lcssa.i.i, ptr %node.i.i, align 4
  %rb_right.i.i.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %rb_right.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %rb_right.i.i.i, align 8
  %rb_left.i.i.i = getelementptr inbounds %struct.mcast_group, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %rb_left.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %rb_left.i.i.i, align 4
  %51 = ptrtoint ptr %link.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %node.i.i, ptr %link.0.lcssa.i.i, align 4
  tail call void @rb_insert_color(ptr noundef %node.i.i, ptr noundef %mcg_table.i138.i) #9
  br label %if.end81.i

mcast_insert.exit.i:                              ; preds = %if.else.i.i
  %tobool72.not.i = icmp eq ptr %add.ptr.i139.i, null
  br i1 %tobool72.not.i, label %mcast_insert.exit.i.if.end81.i_crit_edge, label %do.end76.i

mcast_insert.exit.i.if.end81.i_crit_edge:         ; preds = %mcast_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end81.i

do.end76.i:                                       ; preds = %mcast_insert.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %name77.i = getelementptr i8, ptr %45, i32 2052
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef %name77.i) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %acquire_group.exit.thread

if.end81.i:                                       ; preds = %mcast_insert.exit.i.if.end81.i_crit_edge, %mcast_insert.exit.thread.i
  %dev.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 8
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  %port.i = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %sub, i32 1
  %54 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port.i, align 4
  %call84.i = tail call i32 @add_sysfs_port_mcg_attr(ptr noundef %53, i32 noundef %55, ptr noundef %dentry.i) #9
  br label %acquire_group.exit

acquire_group.exit.thread:                        ; preds = %do.end76.i, %if.end9.i.acquire_group.exit.thread_crit_edge, %if.end5.i.acquire_group.exit.thread_crit_edge
  %retval.0.i78.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end9.i.acquire_group.exit.thread_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end5.i.acquire_group.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end76.i ]
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  br label %if.then10

acquire_group.exit:                               ; preds = %if.end81.i, %if.end.i.i.i, %if.then68.i.acquire_group.exit_crit_edge, %mcast_find.exit.i.acquire_group.exit_crit_edge
  %group.0.i = phi ptr [ %call7.i.i.i, %if.end81.i ], [ %add.ptr.i.i, %mcast_find.exit.i.acquire_group.exit_crit_edge ], [ %call7.i.i.i, %if.then68.i.acquire_group.exit_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i ]
  %refcount.i = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #9
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #9, !srcloc !127
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  %cmp.i = icmp ugt ptr %group.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %acquire_group.exit.if.then10_crit_edge, label %if.end12

acquire_group.exit.if.then10_crit_edge:           ; preds = %acquire_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %acquire_group.exit.if.then10_crit_edge, %acquire_group.exit.thread
  %retval.0.i7881 = phi ptr [ %retval.0.i78.ph, %acquire_group.exit.thread ], [ %group.0.i, %acquire_group.exit.if.then10_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  %57 = ptrtoint ptr %retval.0.i7881 to i32
  br label %cleanup

if.end12:                                         ; preds = %acquire_group.exit
  %lock = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %num_pend_reqs = getelementptr %struct.mcast_group, ptr %group.0.i, i32 0, i32 4, i32 %slave, i32 2
  %58 = ptrtoint ptr %num_pend_reqs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_pend_reqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %59)
  %cmp = icmp sgt i32 %59, 4
  br i1 %cmp, label %if.then16, label %if.end28

if.then16:                                        ; preds = %if.end12
  tail call void @mutex_unlock(ptr noundef %lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mlx4_ib_mcg_multiplex_handler.__UNIQUE_ID_ddebug506, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mlx4_ib_mcg_multiplex_handler, %if.then22)) #9
          to label %do.end [label %if.then22], !srcloc !131

if.then22:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 13
  %demux24 = getelementptr inbounds %struct.mcast_group, ptr %group.0.i, i32 0, i32 3
  %60 = ptrtoint ptr %demux24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %demux24, align 8
  %port25 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %port25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %port25, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mlx4_ib_mcg_multiplex_handler.__UNIQUE_ID_ddebug506, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, i32 noundef 967, ptr noundef %name, i32 noundef %63, i32 noundef %port, i32 noundef %slave, i32 noundef 4) #9
  br label %do.end

do.end:                                           ; preds = %if.then22, %if.then16
  %call27 = tail call fastcc i32 @release_group(ptr noundef %group.0.i, i32 noundef 0)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add nsw i32 %59, 1
  %64 = ptrtoint ptr %num_pend_reqs to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc, ptr %num_pend_reqs, align 4
  %group32 = getelementptr inbounds %struct.mcast_req, ptr %call7.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %group32 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %group.0.i, ptr %group32, align 4
  tail call fastcc void @queue_req(ptr noundef nonnull %call7.i.i)
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call34 = tail call fastcc i32 @release_group(ptr noundef %group.0.i, i32 noundef 0)
  br label %cleanup

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, i32 noundef %port, i32 noundef %slave, i32 noundef %conv) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end28, %do.end, %if.then10, %sw.bb1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge101, %if.end.cleanup_crit_edge102, %if.end.cleanup_crit_edge103, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end38 ], [ %57, %if.then10 ], [ -12, %do.end ], [ 1, %if.end28 ], [ -11, %entry.cleanup_crit_edge ], [ -12, %sw.bb1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge101 ], [ 0, %if.end.cleanup_crit_edge102 ], [ 0, %if.end.cleanup_crit_edge103 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @queue_req(ptr noundef %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %group1 = getelementptr inbounds %struct.mcast_req, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group1, align 4
  %refcount = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !127
  %call.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !127
  %group_list = getelementptr inbounds %struct.mcast_req, ptr %req, i32 0, i32 2
  %pending_list = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i26 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_list, ptr noundef %5, ptr noundef %pending_list) #9
  br i1 %call.i.i26, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %group_list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %group_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pending_list, ptr %group_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mcast_req, ptr %req, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %group_list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %func_list = getelementptr inbounds %struct.mcast_req, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req, align 4
  %pending = getelementptr %struct.mcast_group, ptr %1, i32 0, i32 4, i32 %11, i32 3
  %prev.i27 = getelementptr %struct.mcast_group, ptr %1, i32 0, i32 4, i32 %11, i32 3, i32 1
  %12 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i27, align 4
  %call.i.i28 = tail call zeroext i1 @__list_add_valid(ptr noundef %func_list, ptr noundef %13, ptr noundef %pending) #9
  br i1 %call.i.i28, label %if.end.i.i30, label %list_add_tail.exit.list_add_tail.exit31_crit_edge

list_add_tail.exit.list_add_tail.exit31_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit31

if.end.i.i30:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %func_list, ptr %prev.i27, align 4
  %15 = ptrtoint ptr %func_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %pending, ptr %func_list, align 4
  %prev3.i.i29 = getelementptr inbounds %struct.mcast_req, ptr %req, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev3.i.i29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i29, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %func_list, ptr %13, align 4
  br label %list_add_tail.exit31

list_add_tail.exit31:                             ; preds = %if.end.i.i30, %list_add_tail.exit.list_add_tail.exit31_crit_edge
  %demux = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %demux, align 8
  %mcg_wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %mcg_wq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mcg_wq, align 4
  %work = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 6
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %21, ptr noundef %work) #9
  br i1 %call.i, label %list_add_tail.exit31.if.end12_crit_edge, label %do.body

list_add_tail.exit31.if.end12_crit_edge:          ; preds = %list_add_tail.exit31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body:                                          ; preds = %list_add_tail.exit31
  %call.i.i25 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !129
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.end, label %do.body.if.end12_crit_edge

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.mcast_group, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %demux, align 8
  %port = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.52, i32 noundef 879, ptr noundef %name, i32 noundef %26) #13
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge, %list_add_tail.exit31.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_mcg_port_init(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %name) #9
  %tid = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 14
  %0 = call ptr @memset(ptr %name, i32 255, i32 20)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tid, i32 noundef 4) #9
  %1 = ptrtoint ptr %tid to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %tid, align 4
  %port = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %name, ptr noundef nonnull @.str.11, i32 noundef %3)
  %call2 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull %name, i32 noundef 655370, i32 noundef 1) #9
  %mcg_wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 12
  %4 = ptrtoint ptr %mcg_wq to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %mcg_wq, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mcg_table_lock = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 9
  call void @__mutex_init(ptr noundef %mcg_table_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @mlx4_ib_mcg_port_init.__key) #9
  %mcg_table = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 10
  %5 = ptrtoint ptr %mcg_table to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mcg_table, align 8
  %mcg_mgid0_list = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 11
  %6 = ptrtoint ptr %mcg_mgid0_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %mcg_mgid0_list, ptr %mcg_mgid0_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %mcg_mgid0_list, ptr %prev.i, align 4
  %flushing = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 15
  %8 = ptrtoint ptr %flushing to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flushing, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %name) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_mcg_port_cleanup(ptr noundef %ctx, i32 noundef %destroy_wq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flushing = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 15
  %0 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flushing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %flushing to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %flushing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %destroy_wq)
  %tobool2.not = icmp eq i32 %destroy_wq, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @_mlx4_ib_mcg_port_cleanup(ptr noundef %ctx, i32 noundef %destroy_wq)
  %3 = ptrtoint ptr %flushing to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %flushing, align 8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 52) #15
  %tobool6.not = icmp eq ptr %call7.i, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %flushing to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flushing, align 8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %ctx10 = getelementptr inbounds %struct.clean_work, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %ctx10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctx, ptr %ctx10, align 4
  %destroy_wq11 = getelementptr inbounds %struct.clean_work, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %destroy_wq11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %destroy_wq11, align 8
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #9
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @mlx4_ib_mcg_port_cleanup.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry16 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %9 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry16, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mcg_clean_task, ptr %func, align 4
  %12 = load ptr, ptr @clean_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef nonnull %call7.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_mlx4_ib_mcg_port_cleanup(ptr noundef %ctx, i32 noundef %destroy_wq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call void @clean_vf_mcast(ptr noundef %ctx, i32 noundef %i.056)
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 80
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %mcg_table_lock = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 9
  %mcg_table = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 10
  %add.neg = sub i32 -500, %0
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %for.end
  tail call void @mutex_lock_nested(ptr noundef %mcg_table_lock, i32 noundef 0) #9
  %call1 = tail call ptr @rb_first(ptr noundef %mcg_table) #9
  %tobool.not57 = icmp eq ptr %call1, null
  br i1 %tobool.not57, label %for.end7.thread, label %do.body.for.body3_crit_edge

do.body.for.body3_crit_edge:                      ; preds = %do.body
  br label %for.body3

for.end7.thread:                                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  br label %do.end

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %do.body.for.body3_crit_edge
  %p.059 = phi ptr [ %call6, %for.body3.for.body3_crit_edge ], [ %call1, %do.body.for.body3_crit_edge ]
  %count.058 = phi i32 [ %inc4, %for.body3.for.body3_crit_edge ], [ 0, %do.body.for.body3_crit_edge ]
  %inc4 = add i32 %count.058, 1
  %call6 = tail call ptr @rb_next(ptr noundef nonnull %p.059) #9
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %for.end7, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end7:                                         ; preds = %for.body3
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc4)
  %tobool9.not = icmp eq i32 %inc4, 0
  br i1 %tobool9.not, label %for.end7.do.end_crit_edge, label %if.end

for.end7.do.end_crit_edge:                        ; preds = %for.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end:                                           ; preds = %for.end7
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %1
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %if.end.do.body_crit_edge, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end.do.end_crit_edge, %for.end7.do.end_crit_edge, %for.end7.thread
  %mcg_wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 12
  %2 = ptrtoint ptr %mcg_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcg_wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %destroy_wq)
  %tobool11.not = icmp eq i32 %destroy_wq, 0
  br i1 %tobool11.not, label %do.end.if.end14_crit_edge, label %if.then12

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %mcg_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcg_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end.if.end14_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mcg_table_lock, i32 noundef 0) #9
  %call1760 = tail call ptr @rb_first(ptr noundef %mcg_table) #9
  %cmp18.not61 = icmp eq ptr %call1760, null
  br i1 %cmp18.not61, label %if.end14.while.end_crit_edge, label %if.end14.while.body_crit_edge

if.end14.while.body_crit_edge:                    ; preds = %if.end14
  br label %while.body

if.end14.while.end_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %force_clean_group.exit.while.body_crit_edge, %if.end14.while.body_crit_edge
  %call1762 = phi ptr [ %call17, %force_clean_group.exit.while.body_crit_edge ], [ %call1760, %if.end14.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %call1762, i32 -52
  %refcount = getelementptr i8, ptr %call1762, i32 2116
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %6 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool20.not = icmp eq i32 %7, 0
  br i1 %tobool20.not, label %while.body.if.end34_crit_edge, label %do.body22

while.body.if.end34_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

do.body22:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_mlx4_ib_mcg_port_cleanup.__UNIQUE_ID_ddebug507, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_mlx4_ib_mcg_port_cleanup, %if.then28)) #9
          to label %if.end34 [label %if.then28], !srcloc !131

if.then28:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %call1762, i32 2052
  %demux = getelementptr i8, ptr %call1762, i32 20
  %8 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %demux, align 8
  %port = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %call.i.i54 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %12 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %refcount, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_mlx4_ib_mcg_port_cleanup.__UNIQUE_ID_ddebug507, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53, i32 noundef 1116, ptr noundef %name, i32 noundef %11, i32 noundef %13, ptr noundef %add.ptr) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %do.body22, %while.body.if.end34_crit_edge
  %pending_list.i = getelementptr i8, ptr %call1762, i32 1760
  %14 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pending_list.i, align 4
  %cmp.not28.i = icmp eq ptr %15, %pending_list.i
  br i1 %cmp.not28.i, label %if.end34.force_clean_group.exit_crit_edge, label %if.end34.for.body.i_crit_edge

if.end34.for.body.i_crit_edge:                    ; preds = %if.end34
  br label %for.body.i

if.end34.force_clean_group.exit_crit_edge:        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %force_clean_group.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end34.for.body.i_crit_edge
  %.pn.in29.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %15, %if.end34.for.body.i_crit_edge ]
  %req.0.i = getelementptr i8, ptr %.pn.in29.i, i32 -260
  %16 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in29.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in29.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %.pn.in29.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %req.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %pending_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.force_clean_group.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.force_clean_group.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %force_clean_group.exit

force_clean_group.exit:                           ; preds = %list_del.exit.i.force_clean_group.exit_crit_edge, %if.end34.force_clean_group.exit_crit_edge
  %demux.i = getelementptr i8, ptr %call1762, i32 20
  %25 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %demux.i, align 8
  %dev.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 8
  %port.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %26, i32 0, i32 1
  %29 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port.i, align 4
  %dentry.i = getelementptr i8, ptr %call1762, i32 2088
  tail call void @del_sysfs_port_mcg_attr(ptr noundef %28, i32 noundef %30, ptr noundef %dentry.i) #9
  %31 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %demux.i, align 8
  %mcg_table.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %32, i32 0, i32 10
  tail call void @rb_erase(ptr noundef nonnull %call1762, ptr noundef %mcg_table.i) #9
  tail call void @kfree(ptr noundef %add.ptr) #9
  %call17 = tail call ptr @rb_first(ptr noundef %mcg_table) #9
  %cmp18.not = icmp eq ptr %call17, null
  br i1 %cmp18.not, label %force_clean_group.exit.while.end_crit_edge, label %force_clean_group.exit.while.body_crit_edge

force_clean_group.exit.while.body_crit_edge:      ; preds = %force_clean_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

force_clean_group.exit.while.end_crit_edge:       ; preds = %force_clean_group.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %force_clean_group.exit.while.end_crit_edge, %if.end14.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcg_clean_task(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx = getelementptr inbounds %struct.clean_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %destroy_wq = getelementptr inbounds %struct.clean_work, ptr %work, i32 0, i32 2
  %2 = ptrtoint ptr %destroy_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %destroy_wq, align 4
  tail call fastcc void @_mlx4_ib_mcg_port_cleanup(ptr noundef %1, i32 noundef %3)
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %flushing = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %flushing to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flushing, align 8
  tail call void @kfree(ptr noundef %work) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clean_vf_mcast(ptr noundef %ctx, i32 noundef %slave) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mcg_table_lock = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mcg_table_lock, i32 noundef 0) #9
  %mcg_table = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 10
  %call = tail call ptr @rb_first(ptr noundef %mcg_table) #9
  %tobool.not19 = icmp eq ptr %call, null
  br i1 %tobool.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %p.020 = phi ptr [ %call5, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %lock = getelementptr i8, ptr %p.020, i32 1624
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %refcount = getelementptr i8, ptr %p.020, i32 2116
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  %add.ptr = getelementptr i8, ptr %p.020, i32 -52
  %pending_list.i = getelementptr i8, ptr %p.020, i32 1760
  %2 = ptrtoint ptr %pending_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %pending_list.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -260
  %spec.select.i = select i1 %cmp.i.not.i, ptr null, ptr %add.ptr.i
  %pending.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %slave, i32 3
  %4 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pending.i, align 4
  %cmp.not106.i = icmp eq ptr %5, %pending.i
  br i1 %cmp.not106.i, label %if.then.land.lhs.true37.i_crit_edge, label %for.body.lr.ph.i

if.then.land.lhs.true37.i_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %state.i = getelementptr i8, ptr %p.020, i32 1780
  %timeout_work.i = getelementptr i8, ptr %p.020, i32 2120
  %num_pend_reqs.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %slave, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in108.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %.pn112.i, %for.inc.i.for.body.i_crit_edge ]
  %pend.0107.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %pend.1103.i, %for.inc.i.for.body.i_crit_edge ]
  %req.0111.i = getelementptr i8, ptr %.pn.in108.i, i32 -268
  %6 = ptrtoint ptr %.pn.in108.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn112.i = load ptr, ptr %.pn.in108.i, align 4
  %cmp15.i = icmp eq ptr %spec.select.i, %req.0111.i
  br i1 %cmp15.i, label %land.lhs.true.i, label %for.body.i.if.then26.i_crit_edge

for.body.i.if.then26.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i, align 8
  %.off.i = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end24.i, label %land.lhs.true.i.if.then26.i_crit_edge

land.lhs.true.i.if.then26.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

if.end24.i:                                       ; preds = %land.lhs.true.i
  %call20.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #9
  %lnot22.i = xor i1 %call20.i, true
  %lnot.ext.i = zext i1 %lnot22.i to i32
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state.i, align 8
  br i1 %call20.i, label %if.end24.i.if.then26.i_crit_edge, label %if.end24.i.for.inc.i_crit_edge

if.end24.i.for.inc.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end24.i.if.then26.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.end24.i.if.then26.i_crit_edge, %land.lhs.true.i.if.then26.i_crit_edge, %for.body.i.if.then26.i_crit_edge
  %pend.1102.i = phi i32 [ %lnot.ext.i, %if.end24.i.if.then26.i_crit_edge ], [ %pend.0107.i, %for.body.i.if.then26.i_crit_edge ], [ %pend.0107.i, %land.lhs.true.i.if.then26.i_crit_edge ]
  %10 = ptrtoint ptr %num_pend_reqs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pend_reqs.i, align 4
  %dec.i = add i32 %11, -1
  store i32 %dec.i, ptr %num_pend_reqs.i, align 4
  %group_list.i = getelementptr i8, ptr %.pn.in108.i, i32 -8
  %call.i.i88.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %group_list.i) #9
  br i1 %call.i.i88.i, label %if.end.i.i.i, label %if.then26.i.list_del.exit.i_crit_edge

if.then26.i.list_del.exit.i_crit_edge:            ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %.pn.in108.i, i32 -4
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %group_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %group_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then26.i.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %group_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %group_list.i, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in108.i, i32 -4
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call.i.i89.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in108.i) #9
  br i1 %call.i.i89.i, label %if.end.i.i92.i, label %list_del.exit.i.list_del.exit94.i_crit_edge

list_del.exit.i.list_del.exit94.i_crit_edge:      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit94.i

if.end.i.i92.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i90.i = getelementptr inbounds %struct.list_head, ptr %.pn.in108.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i90.i, align 4
  %22 = ptrtoint ptr %.pn.in108.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in108.i, align 4
  %prev1.i.i.i91.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i91.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i91.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit94.i

list_del.exit94.i:                                ; preds = %if.end.i.i92.i, %list_del.exit.i.list_del.exit94.i_crit_edge
  %26 = ptrtoint ptr %.pn.in108.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in108.i, align 4
  %prev.i93.i = getelementptr inbounds %struct.list_head, ptr %.pn.in108.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i93.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i93.i, align 4
  tail call void @kfree(ptr noundef %req.0111.i) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !132
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit94.i, %if.end24.i.for.inc.i_crit_edge
  %pend.1103.i = phi i32 [ %lnot.ext.i, %if.end24.i.for.inc.i_crit_edge ], [ %pend.1102.i, %list_del.exit94.i ]
  %cmp.not.i = icmp eq ptr %.pn112.i, %pending.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pend.1103.i)
  %tobool36.not.i = icmp eq i32 %pend.1103.i, 0
  br i1 %tobool36.not.i, label %for.end.i.land.lhs.true37.i_crit_edge, label %for.end.i.clear_pending_reqs.exit_crit_edge

for.end.i.clear_pending_reqs.exit_crit_edge:      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear_pending_reqs.exit

for.end.i.land.lhs.true37.i_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true37.i

land.lhs.true37.i:                                ; preds = %for.end.i.land.lhs.true37.i_crit_edge, %if.then.land.lhs.true37.i_crit_edge
  %29 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i95.not.i = icmp eq ptr %30, %pending.i
  br i1 %cmp.i95.not.i, label %lor.lhs.false43.i, label %land.lhs.true37.i.do.end.i_crit_edge

land.lhs.true37.i.do.end.i_crit_edge:             ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false43.i:                                ; preds = %land.lhs.true37.i
  %num_pend_reqs46.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %slave, i32 2
  %31 = ptrtoint ptr %num_pend_reqs46.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_pend_reqs46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool47.not.i = icmp eq i32 %32, 0
  br i1 %tobool47.not.i, label %lor.lhs.false43.i.clear_pending_reqs.exit_crit_edge, label %lor.lhs.false43.i.do.end.i_crit_edge

lor.lhs.false43.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false43.i.clear_pending_reqs.exit_crit_edge: ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %clear_pending_reqs.exit

do.end.i:                                         ; preds = %lor.lhs.false43.i.do.end.i_crit_edge, %land.lhs.true37.i.do.end.i_crit_edge
  %name.i = getelementptr i8, ptr %p.020, i32 2052
  %demux.i = getelementptr i8, ptr %p.020, i32 20
  %33 = ptrtoint ptr %demux.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %demux.i, align 8
  %port.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port.i, align 4
  %37 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i97.i = icmp eq ptr %38, %pending.i
  %conv.i98.i = zext i1 %cmp.i97.i to i32
  %num_pend_reqs56.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %slave, i32 2
  %39 = ptrtoint ptr %num_pend_reqs56.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_pend_reqs56.i, align 4
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.57, i32 noundef 1202, ptr noundef %name.i, i32 noundef %36, i32 noundef %conv.i98.i, i32 noundef %40) #13
  br label %clear_pending_reqs.exit

clear_pending_reqs.exit:                          ; preds = %do.end.i, %lor.lhs.false43.i.clear_pending_reqs.exit_crit_edge, %for.end.i.clear_pending_reqs.exit_crit_edge
  %join_state.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %slave, i32 1
  %41 = ptrtoint ptr %join_state.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %join_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %clear_pending_reqs.exit.if.end_crit_edge, label %if.end.i

clear_pending_reqs.exit.if.end_crit_edge:         ; preds = %clear_pending_reqs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %clear_pending_reqs.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 284) #15
  %tobool1.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %if.end3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  %44 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %pending.i, align 4
  %cmp.i.not.i17 = icmp eq ptr %45, %pending.i
  br i1 %cmp.i.not.i17, label %if.end3.i.if.end15.i_crit_edge, label %if.then8.i

if.end3.i.if.end15.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then8.i:                                       ; preds = %if.end3.i
  %prev.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %slave, i32 3, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %clean.i = getelementptr i8, ptr %47, i32 20
  %48 = ptrtoint ptr %clean.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %clean.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool12.not.i = icmp eq i32 %49, 0
  br i1 %tobool12.not.i, label %if.then8.i.if.end15.i_crit_edge, label %if.then13.i

if.then8.i.if.end15.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %if.end

if.end15.i:                                       ; preds = %if.then8.i.if.end15.i_crit_edge, %if.end3.i.if.end15.i_crit_edge
  %clean16.i = getelementptr inbounds %struct.mcast_req, ptr %call7.i.i.i, i32 0, i32 5
  %50 = ptrtoint ptr %clean16.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %clean16.i, align 8
  %51 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %slave, ptr %call7.i.i.i, align 8
  %group18.i = getelementptr inbounds %struct.mcast_req, ptr %call7.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %group18.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %add.ptr, ptr %group18.i, align 4
  %num_pend_reqs.i18 = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %slave, i32 2
  %53 = ptrtoint ptr %num_pend_reqs.i18 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pend_reqs.i18, align 4
  %inc.i = add i32 %54, 1
  store i32 %inc.i, ptr %num_pend_reqs.i18, align 4
  %method.i.i = getelementptr inbounds %struct.mcast_req, ptr %call7.i.i.i, i32 0, i32 1, i32 0, i32 3
  %55 = ptrtoint ptr %method.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 21, ptr %method.i.i, align 1
  tail call fastcc void @queue_req(ptr noundef nonnull %call7.i.i.i) #9
  br label %if.end

if.end:                                           ; preds = %if.end15.i, %if.then13.i, %if.end.i.if.end_crit_edge, %clear_pending_reqs.exit.if.end_crit_edge, %for.body.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call5 = tail call ptr @rb_next(ptr noundef nonnull %p.020) #9
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mcg_table_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_mcg_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.14, i32 noundef 655370, i32 noundef 1) #9
  store ptr %call, ptr @clean_wq, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_mcg_destroy() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clean_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_mcg_work_handler(ptr noundef %work) #0 align 64 {
entry:
  %mad.i = alloca %struct.ib_sa_mad, align 1
  %mad.i.i = alloca %struct.ib_sa_mad, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1768
  %lock = getelementptr i8, ptr %work, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state = getelementptr i8, ptr %work, i32 64
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.process_requests.preheader_crit_edge

entry.process_requests.preheader_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_requests.preheader

if.then:                                          ; preds = %entry
  %timeout_work = getelementptr i8, ptr %work, i32 404
  %call = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #9
  %status1 = getelementptr i8, ptr %work, i32 76
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %status1, align 4
  %method4 = getelementptr i8, ptr %work, i32 75
  %4 = ptrtoint ptr %method4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %method4, align 1
  %last_req_tid = getelementptr i8, ptr %work, i32 328
  %6 = ptrtoint ptr %last_req_tid to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %last_req_tid, align 8
  %tid = getelementptr i8, ptr %work, i32 80
  %8 = ptrtoint ptr %tid to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tid, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %9)
  %cmp7.not = icmp eq i64 %7, %9
  br i1 %cmp7.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %work, i32 336
  %demux = getelementptr i8, ptr %work, i32 -1696
  %10 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %demux, align 8
  %port = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27, i32 noundef 668, ptr noundef %name, i32 noundef %13, i64 noundef %9, i64 noundef %7) #13
  %prev_state = getelementptr i8, ptr %work, i32 68
  %14 = ptrtoint ptr %prev_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prev_state, align 4
  br label %process_requests.preheader.sink.split

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.else53, label %if.then16

if.then16:                                        ; preds = %if.end
  %pending_list = getelementptr i8, ptr %work, i32 44
  %16 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %17, %pending_list
  %add.ptr23 = getelementptr i8, ptr %17, i32 -260
  %spec.select287 = select i1 %cmp.i.not, ptr null, ptr %add.ptr23
  %18 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %5, label %if.then16.process_requests.preheader.sink.split_crit_edge [
    i8 -127, label %if.then27
    i8 -107, label %land.lhs.true
  ]

if.then16.process_requests.preheader.sink.split_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_requests.preheader.sink.split

if.then27:                                        ; preds = %if.then16
  %tobool28.not = icmp eq ptr %spec.select287, null
  br i1 %tobool28.not, label %do.end35, label %if.then29

if.then29:                                        ; preds = %if.then27
  %19 = ptrtoint ptr %spec.select287 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %spec.select287, align 4
  %sa_mad = getelementptr inbounds %struct.mcast_req, ptr %spec.select287, i32 0, i32 1
  tail call fastcc void @send_reply_to_slave(i32 noundef %20, ptr noundef %add.ptr, ptr noundef %sa_mad, i16 noundef zeroext %3)
  %func31 = getelementptr i8, ptr %work, i32 -1692
  %21 = ptrtoint ptr %spec.select287 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %spec.select287, align 4
  %arrayidx = getelementptr [80 x %struct.mcast_member], ptr %func31, i32 0, i32 %22
  %num_pend_reqs = getelementptr inbounds %struct.mcast_member, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %num_pend_reqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_pend_reqs, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %num_pend_reqs, align 4
  %group_list = getelementptr inbounds %struct.mcast_req, ptr %spec.select287, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %group_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then29.list_del.exit_crit_edge

if.then29.list_del.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mcast_req, ptr %spec.select287, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %group_list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %group_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then29.list_del.exit_crit_edge
  %31 = ptrtoint ptr %group_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %group_list, align 4
  %prev.i = getelementptr inbounds %struct.mcast_req, ptr %spec.select287, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %func_list = getelementptr inbounds %struct.mcast_req, ptr %spec.select287, i32 0, i32 3
  %call.i.i229 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %func_list) #9
  br i1 %call.i.i229, label %if.end.i.i232, label %list_del.exit.list_del.exit234_crit_edge

list_del.exit.list_del.exit234_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit234

if.end.i.i232:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i230 = getelementptr inbounds %struct.mcast_req, ptr %spec.select287, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i.i230 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i230, align 4
  %35 = ptrtoint ptr %func_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %func_list, align 4
  %prev1.i.i.i231 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i231 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i231, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit234

list_del.exit234:                                 ; preds = %if.end.i.i232, %list_del.exit.list_del.exit234_crit_edge
  %39 = ptrtoint ptr %func_list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %func_list, align 4
  %prev.i233 = getelementptr inbounds %struct.mcast_req, ptr %spec.select287, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %prev.i233 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i233, align 4
  tail call void @kfree(ptr noundef nonnull %spec.select287) #9
  br label %process_requests.preheader.sink.split

do.end35:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %name37 = getelementptr i8, ptr %work, i32 336
  %demux39 = getelementptr i8, ptr %work, i32 -1696
  %41 = ptrtoint ptr %demux39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %demux39, align 8
  %port40 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %port40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port40, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27, i32 noundef 685, ptr noundef %name37, i32 noundef %44) #13
  br label %process_requests.preheader.sink.split

land.lhs.true:                                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %demux47 = getelementptr i8, ptr %work, i32 -1696
  %45 = ptrtoint ptr %demux47 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %demux47, align 8
  %flushing = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %46, i32 0, i32 15
  %47 = ptrtoint ptr %flushing to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flushing, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool48.not = icmp eq i32 %48, 0
  %spec.select = select i1 %tobool48.not, i32 1, i32 2
  br label %process_requests.preheader.sink.split

if.else53:                                        ; preds = %if.end
  %data = getelementptr i8, ptr %work, i32 128
  %scope_join_state = getelementptr i8, ptr %work, i32 176
  %49 = ptrtoint ptr %scope_join_state to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %scope_join_state, align 8
  %51 = and i8 %50, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %5)
  %cmp63 = icmp eq i8 %5, -127
  br i1 %cmp63, label %if.then65, label %if.else73

if.then65:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  %scope_join_state58 = getelementptr i8, ptr %work, i32 -1720
  %52 = ptrtoint ptr %scope_join_state58 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %scope_join_state58, align 8
  %54 = and i8 %53, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool66.not = icmp ne i8 %54, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool69.not = icmp eq i8 %51, 0
  %or.cond = select i1 %tobool66.not, i1 true, i1 %tobool69.not
  %spec.select228 = zext i1 %or.cond to i32
  br label %if.end78

if.else73:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool74.not = icmp eq i8 %51, 0
  %spec.select227 = select i1 %tobool74.not, i32 2, i32 1
  br label %if.end78

if.end78:                                         ; preds = %if.else73, %if.then65
  %rc.0 = phi i32 [ %spec.select227, %if.else73 ], [ %spec.select228, %if.then65 ]
  %55 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 52)
  br label %process_requests.preheader.sink.split

process_requests.preheader.sink.split:            ; preds = %if.end78, %land.lhs.true, %do.end35, %list_del.exit234, %if.then16.process_requests.preheader.sink.split_crit_edge, %do.end
  %.sink = phi i32 [ %15, %do.end ], [ 0, %land.lhs.true ], [ 0, %if.then16.process_requests.preheader.sink.split_crit_edge ], [ 0, %do.end35 ], [ 0, %list_del.exit234 ], [ 0, %if.end78 ]
  %rc.3.ph.ph = phi i32 [ 1, %do.end ], [ %spec.select, %land.lhs.true ], [ 1, %if.then16.process_requests.preheader.sink.split_crit_edge ], [ 1, %do.end35 ], [ 2, %list_del.exit234 ], [ %rc.0, %if.end78 ]
  %56 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %state, align 8
  br label %process_requests.preheader

process_requests.preheader:                       ; preds = %process_requests.preheader.sink.split, %entry.process_requests.preheader_crit_edge
  %rc.3.ph = phi i32 [ 1, %entry.process_requests.preheader_crit_edge ], [ %rc.3.ph.ph, %process_requests.preheader.sink.split ]
  %pending_list86 = getelementptr i8, ptr %work, i32 44
  %scope_join_state.i = getelementptr i8, ptr %work, i32 -1720
  %prev_state.i = getelementptr i8, ptr %work, i32 68
  %demux.i.i = getelementptr i8, ptr %work, i32 -1696
  %interface_id.i.i = getelementptr inbounds %struct.ib_sa_mad, ptr %mad.i.i, i32 0, i32 3, i32 24
  %tid.i.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i.i, i32 0, i32 6
  %last_req_tid.i.i = getelementptr i8, ptr %work, i32 328
  %timeout_work.i.i = getelementptr i8, ptr %work, i32 404
  %qkey.i.i = getelementptr i8, ptr %work, i32 -1736
  %mlid.i.i = getelementptr i8, ptr %work, i32 -1732
  %mtusel_mtu.i.i = getelementptr i8, ptr %work, i32 -1730
  %tclass.i.i = getelementptr i8, ptr %work, i32 -1729
  %pkey.i.i = getelementptr i8, ptr %work, i32 -1728
  %ratesel_rate.i.i = getelementptr i8, ptr %work, i32 -1726
  %lifetmsel_lifetm.i.i = getelementptr i8, ptr %work, i32 -1725
  %sl_flowlabel_hoplimit.i.i = getelementptr i8, ptr %work, i32 -1724
  %arrayidx.i.i.i250 = getelementptr i8, ptr %work, i32 52
  %arrayidx.1.i.i.i255 = getelementptr i8, ptr %work, i32 56
  %arrayidx.2.i.i.i260 = getelementptr i8, ptr %work, i32 60
  %data.i = getelementptr inbounds %struct.ib_sa_mad, ptr %mad.i, i32 0, i32 3
  %57 = getelementptr inbounds i8, ptr %mad.i, i32 18
  %mgmt_class.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i, i32 0, i32 1
  %class_version.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i, i32 0, i32 2
  %method.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i, i32 0, i32 3
  %status.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i, i32 0, i32 4
  %class_specific.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i, i32 0, i32 5
  %tid.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i, i32 0, i32 6
  %attr_id.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i, i32 0, i32 7
  %attr_mod.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad.i, i32 0, i32 9
  %sa_hdr.i = getelementptr inbounds %struct.ib_sa_mad, ptr %mad.i, i32 0, i32 2
  %attr_offset.i = getelementptr inbounds %struct.ib_sa_mad, ptr %mad.i, i32 0, i32 2, i32 1
  %comp_mask.i278 = getelementptr inbounds %struct.ib_sa_mad, ptr %mad.i, i32 0, i32 2, i32 3
  %scope_join_state.i279 = getelementptr inbounds %struct.ib_sa_mad, ptr %mad.i, i32 0, i32 3, i32 48
  br label %process_requests

process_requests:                                 ; preds = %land.lhs.true145.process_requests_crit_edge, %process_requests.preheader
  %rc.3 = phi i32 [ %rc.6, %land.lhs.true145.process_requests_crit_edge ], [ %rc.3.ph, %process_requests.preheader ]
  %58 = ptrtoint ptr %pending_list86 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %pending_list86, align 4
  %cmp.i235.not291 = icmp eq ptr %59, %pending_list86
  br i1 %cmp.i235.not291, label %process_requests.while.end_crit_edge, label %process_requests.land.rhs_crit_edge

process_requests.land.rhs_crit_edge:              ; preds = %process_requests
  br label %land.rhs

process_requests.while.end_crit_edge:             ; preds = %process_requests
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.rhs:                                         ; preds = %if.end115.land.rhs_crit_edge, %process_requests.land.rhs_crit_edge
  %60 = phi ptr [ %264, %if.end115.land.rhs_crit_edge ], [ %59, %process_requests.land.rhs_crit_edge ]
  %rc.4292 = phi i32 [ %rc.5, %if.end115.land.rhs_crit_edge ], [ %rc.3, %process_requests.land.rhs_crit_edge ]
  %61 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp90 = icmp eq i32 %62, 0
  br i1 %cmp90, label %while.body, label %land.rhs.if.end141_crit_edge

land.rhs.if.end141_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

while.body:                                       ; preds = %land.rhs
  %add.ptr96 = getelementptr i8, ptr %60, i32 -260
  %scope_join_state100 = getelementptr i8, ptr %60, i32 -152
  %63 = ptrtoint ptr %scope_join_state100 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %scope_join_state100, align 4
  %65 = and i8 %64, 15
  %method106 = getelementptr i8, ptr %60, i32 -253
  %66 = ptrtoint ptr %method106 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %method106, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %67)
  %cmp108 = icmp eq i8 %67, 21
  br i1 %cmp108, label %if.then110, label %if.else112

if.then110:                                       ; preds = %while.body
  %clean.i = getelementptr i8, ptr %60, i32 20
  %68 = ptrtoint ptr %clean.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %clean.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i = icmp eq i32 %69, 0
  br i1 %tobool.not.i, label %if.then110.if.end.i_crit_edge, label %if.then.i

if.then110.if.end.i_crit_edge:                    ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr96, align 4
  %join_state.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %71, i32 1
  %72 = ptrtoint ptr %join_state.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %join_state.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then110.if.end.i_crit_edge
  %leave_mask.addr.0.i = phi i8 [ %73, %if.then.i ], [ %65, %if.then110.if.end.i_crit_edge ]
  %74 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr96, align 4
  %arrayidx.i.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %75
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.not.i.i = icmp eq i32 %77, 1
  br i1 %cmp.not.i.i, label %if.end.i.i237, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.end.i.i237:                                    ; preds = %if.end.i
  %join_state.i.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %75, i32 1
  %78 = ptrtoint ptr %join_state.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %join_state.i.i, align 4
  %conv.i.i = zext i8 %79 to i32
  %neg.i.i = xor i32 %conv.i.i, -1
  %conv3.i.i = zext i8 %leave_mask.addr.0.i to i32
  %and.i.i = and i32 %neg.i.i, %conv3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp ne i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %leave_mask.addr.0.i)
  %tobool6.not.i.i = icmp eq i8 %leave_mask.addr.0.i, 0
  %or.cond.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool6.not.i.i
  br i1 %or.cond.i, label %if.end.i.i237.if.end7.i_crit_edge, label %if.then4.i

if.end.i.i237.if.end7.i_crit_edge:                ; preds = %if.end.i.i237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then4.i:                                       ; preds = %if.end.i.i237
  %80 = and i8 %leave_mask.addr.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i.i.i = icmp eq i8 %80, 0
  br i1 %tobool.not.i.i.i, label %if.then4.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i

if.then4.i.for.inc.i.i.i_crit_edge:               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.then.i.i.i:                                    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %arrayidx.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i.i250, align 4
  %add.i.i.i = add i32 %82, -1
  store i32 %add.i.i.i, ptr %arrayidx.i.i.i250, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %if.then4.i.for.inc.i.i.i_crit_edge
  %83 = and i8 %leave_mask.addr.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool.not.1.i.i.i = icmp eq i8 %83, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %if.then.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i.i

if.then.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %arrayidx.1.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.1.i.i.i255, align 4
  %add.1.i.i.i = add i32 %85, -1
  store i32 %add.1.i.i.i, ptr %arrayidx.1.i.i.i255, align 4
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.then.1.i.i.i, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %86 = and i8 %leave_mask.addr.0.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool.not.2.i.i.i = icmp eq i8 %86, 0
  br i1 %tobool.not.2.i.i.i, label %for.inc.1.i.i.i.adjust_membership.exit.i.i_crit_edge, label %if.then.2.i.i.i

for.inc.1.i.i.i.adjust_membership.exit.i.i_crit_edge: ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adjust_membership.exit.i.i

if.then.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %arrayidx.2.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.2.i.i.i260, align 4
  %add.2.i.i.i = add i32 %88, -1
  store i32 %add.2.i.i.i, ptr %arrayidx.2.i.i.i260, align 4
  br label %adjust_membership.exit.i.i

adjust_membership.exit.i.i:                       ; preds = %if.then.2.i.i.i, %for.inc.1.i.i.i.adjust_membership.exit.i.i_crit_edge
  %neg.i1.i = xor i8 %leave_mask.addr.0.i, -1
  %89 = ptrtoint ptr %join_state.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %join_state.i.i, align 4
  %and.i3.i = and i8 %90, %neg.i1.i
  store i8 %and.i3.i, ptr %join_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i3.i)
  %tobool.not.i4.i = icmp eq i8 %and.i3.i, 0
  br i1 %tobool.not.i4.i, label %if.then.i.i, label %adjust_membership.exit.i.i.if.end7.i_crit_edge

adjust_membership.exit.i.i.if.end7.i_crit_edge:   ; preds = %adjust_membership.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.then.i.i:                                      ; preds = %adjust_membership.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx.i.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then.i.i, %adjust_membership.exit.i.i.if.end7.i_crit_edge, %if.end.i.i237.if.end7.i_crit_edge, %if.end.i.if.end7.i_crit_edge
  %conv16.i = phi i16 [ 0, %adjust_membership.exit.i.i.if.end7.i_crit_edge ], [ 0, %if.then.i.i ], [ 512, %if.end.i.if.end7.i_crit_edge ], [ 512, %if.end.i.i237.if.end7.i_crit_edge ]
  %92 = ptrtoint ptr %clean.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %clean.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool9.not.i = icmp eq i32 %93, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end7.i.if.end13.i_crit_edge

if.end7.i.if.end13.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %add.ptr96, align 4
  %sa_mad.i = getelementptr i8, ptr %60, i32 -256
  call fastcc void @send_reply_to_slave(i32 noundef %95, ptr noundef %add.ptr, ptr noundef %sa_mad.i, i16 noundef zeroext %conv16.i) #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end7.i.if.end13.i_crit_edge
  %96 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %add.ptr96, align 4
  %num_pend_reqs.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %97, i32 2
  %98 = ptrtoint ptr %num_pend_reqs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_pend_reqs.i, align 4
  %dec.i = add i32 %99, -1
  store i32 %dec.i, ptr %num_pend_reqs.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %60) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end13.i.list_del.exit.i_crit_edge

if.end13.i.list_del.exit.i_crit_edge:             ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %60, i32 4
  %100 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i, align 4
  %102 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %60, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev1.i.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %103, ptr %101, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end13.i.list_del.exit.i_crit_edge
  %106 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  %prev.i.i238 = getelementptr i8, ptr %60, i32 4
  %107 = ptrtoint ptr %prev.i.i238 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i238, align 4
  %func_list.i = getelementptr i8, ptr %60, i32 8
  %call.i.i7.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %func_list.i) #9
  br i1 %call.i.i7.i, label %if.end.i.i10.i, label %list_del.exit.i.handle_leave_req.exit_crit_edge

list_del.exit.i.handle_leave_req.exit_crit_edge:  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %handle_leave_req.exit

if.end.i.i10.i:                                   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i8.i = getelementptr i8, ptr %60, i32 12
  %108 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i8.i, align 4
  %110 = ptrtoint ptr %func_list.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %func_list.i, align 4
  %prev1.i.i.i9.i = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i9.i, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %handle_leave_req.exit

handle_leave_req.exit:                            ; preds = %if.end.i.i10.i, %list_del.exit.i.handle_leave_req.exit_crit_edge
  %114 = ptrtoint ptr %func_list.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 256 to ptr), ptr %func_list.i, align 4
  %prev.i11.i = getelementptr i8, ptr %60, i32 12
  %115 = ptrtoint ptr %prev.i11.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i11.i, align 4
  call void @kfree(ptr noundef %add.ptr96) #9
  %add = add i32 %rc.4292, 1
  br label %if.end115

if.else112:                                       ; preds = %while.body
  %116 = ptrtoint ptr %scope_join_state.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %scope_join_state.i, align 8
  %sa_mad.i239 = getelementptr i8, ptr %60, i32 -256
  %and561.i = and i8 %117, %65
  call void @__sanitizer_cov_trace_cmp1(i8 %and561.i, i8 %65)
  %cmp.i240 = icmp eq i8 %and561.i, %65
  br i1 %cmp.i240, label %if.then.i243, label %if.else.i

if.then.i243:                                     ; preds = %if.else112
  %comp_mask.i = getelementptr i8, ptr %60, i32 -208
  %118 = ptrtoint ptr %comp_mask.i to i32
  call void @__asan_loadN_noabort(i32 %118, i32 8)
  %119 = load i64, ptr %comp_mask.i, align 4
  %and.i.i241 = and i64 %119, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i241)
  %tobool.not.i.i242 = icmp eq i64 %and.i.i241, 0
  br i1 %tobool.not.i.i242, label %if.then.i243.if.end.i.i245_crit_edge, label %land.lhs.true.i.i

if.then.i243.if.end.i.i245_crit_edge:             ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i245

land.lhs.true.i.i:                                ; preds = %if.then.i243
  %120 = ptrtoint ptr %qkey.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %qkey.i.i, align 4
  %qkey1.i.i = getelementptr i8, ptr %60, i32 -168
  %122 = ptrtoint ptr %qkey1.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %qkey1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %123)
  %cmp.not.i.i244 = icmp eq i32 %121, %123
  br i1 %cmp.not.i.i244, label %land.lhs.true.i.i.if.end.i.i245_crit_edge, label %land.lhs.true.i.i.if.end.i269_crit_edge

land.lhs.true.i.i.if.end.i269_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.lhs.true.i.i.if.end.i.i245_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i245

if.end.i.i245:                                    ; preds = %land.lhs.true.i.i.if.end.i.i245_crit_edge, %if.then.i243.if.end.i.i245_crit_edge
  %and2.i.i = and i64 %119, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2.i.i)
  %tobool3.not.i.i = icmp eq i64 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end.i.i245.if.end10.i.i_crit_edge, label %land.lhs.true4.i.i

if.end.i.i245.if.end10.i.i_crit_edge:             ; preds = %if.end.i.i245
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

land.lhs.true4.i.i:                               ; preds = %if.end.i.i245
  %124 = ptrtoint ptr %mlid.i.i to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %mlid.i.i, align 4
  %mlid5.i.i = getelementptr i8, ptr %60, i32 -164
  %126 = ptrtoint ptr %mlid5.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %mlid5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %125, i16 %127)
  %cmp7.not.i.i = icmp eq i16 %125, %127
  br i1 %cmp7.not.i.i, label %land.lhs.true4.i.i.if.end10.i.i_crit_edge, label %land.lhs.true4.i.i.if.end.i269_crit_edge

land.lhs.true4.i.i.if.end.i269_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.lhs.true4.i.i.if.end10.i.i_crit_edge:        ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %land.lhs.true4.i.i.if.end10.i.i_crit_edge, %if.end.i.i245.if.end10.i.i_crit_edge
  %128 = ptrtoint ptr %mtusel_mtu.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %mtusel_mtu.i.i, align 2
  %mtusel_mtu11.i.i = getelementptr i8, ptr %60, i32 -162
  %130 = ptrtoint ptr %mtusel_mtu11.i.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %mtusel_mtu11.i.i, align 2
  %132 = and i8 %131, 63
  %133 = and i8 %129, 63
  %134 = and i64 %119, 48
  call void @__sanitizer_cov_trace_const_cmp8(i64 48, i64 %134)
  %.not.i.i = icmp eq i64 %134, 48
  br i1 %.not.i.i, label %if.end.i.i.i246, label %if.end10.i.i.if.end14.i.i_crit_edge

if.end10.i.i.if.end14.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.end.i.i.i246:                                  ; preds = %if.end10.i.i
  %135 = lshr i8 %131, 6
  %conv10.i.i.i = zext i8 %135 to i32
  %136 = zext i32 %conv10.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %136, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %conv10.i.i.i, label %if.end.i.i.i246.if.end14.i.i_crit_edge [
    i32 0, label %check_selector.exit.i.i
    i32 1, label %sw.bb14.i.i.i
    i32 2, label %sw.bb19.i.i.i
  ]

if.end.i.i.i246.if.end14.i.i_crit_edge:           ; preds = %if.end.i.i.i246
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

sw.bb14.i.i.i:                                    ; preds = %if.end.i.i.i246
  call void @__sanitizer_cov_trace_cmp1(i8 %133, i8 %132)
  %cmp17.i.not.i.i = icmp ult i8 %133, %132
  br i1 %cmp17.i.not.i.i, label %sw.bb14.i.i.i.if.end14.i.i_crit_edge, label %sw.bb14.i.i.i.if.end.i269_crit_edge

sw.bb14.i.i.i.if.end.i269_crit_edge:              ; preds = %sw.bb14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

sw.bb14.i.i.i.if.end14.i.i_crit_edge:             ; preds = %sw.bb14.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

sw.bb19.i.i.i:                                    ; preds = %if.end.i.i.i246
  call void @__sanitizer_cov_trace_cmp1(i8 %133, i8 %132)
  %cmp22.i.not.i.i = icmp eq i8 %133, %132
  br i1 %cmp22.i.not.i.i, label %sw.bb19.i.i.i.if.end14.i.i_crit_edge, label %sw.bb19.i.i.i.if.end.i269_crit_edge

sw.bb19.i.i.i.if.end.i269_crit_edge:              ; preds = %sw.bb19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

sw.bb19.i.i.i.if.end14.i.i_crit_edge:             ; preds = %sw.bb19.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

check_selector.exit.i.i:                          ; preds = %if.end.i.i.i246
  call void @__sanitizer_cov_trace_cmp1(i8 %133, i8 %132)
  %cmp.i.not.i.i = icmp ugt i8 %133, %132
  br i1 %cmp.i.not.i.i, label %check_selector.exit.i.i.if.end14.i.i_crit_edge, label %check_selector.exit.i.i.if.end.i269_crit_edge

check_selector.exit.i.i.if.end.i269_crit_edge:    ; preds = %check_selector.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

check_selector.exit.i.i.if.end14.i.i_crit_edge:   ; preds = %check_selector.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %check_selector.exit.i.i.if.end14.i.i_crit_edge, %sw.bb19.i.i.i.if.end14.i.i_crit_edge, %sw.bb14.i.i.i.if.end14.i.i_crit_edge, %if.end.i.i.i246.if.end14.i.i_crit_edge, %if.end10.i.i.if.end14.i.i_crit_edge
  %and15.i.i = and i64 %119, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15.i.i)
  %tobool16.not.i.i = icmp eq i64 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end24.i.i_crit_edge, label %land.lhs.true17.i.i

if.end14.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

land.lhs.true17.i.i:                              ; preds = %if.end14.i.i
  %137 = ptrtoint ptr %tclass.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %tclass.i.i, align 1
  %tclass19.i.i = getelementptr i8, ptr %60, i32 -161
  %139 = ptrtoint ptr %tclass19.i.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %tclass19.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %138, i8 %140)
  %cmp21.not.i.i = icmp eq i8 %138, %140
  br i1 %cmp21.not.i.i, label %land.lhs.true17.i.i.if.end24.i.i_crit_edge, label %land.lhs.true17.i.i.if.end.i269_crit_edge

land.lhs.true17.i.i.if.end.i269_crit_edge:        ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.lhs.true17.i.i.if.end24.i.i_crit_edge:       ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %land.lhs.true17.i.i.if.end24.i.i_crit_edge, %if.end14.i.i.if.end24.i.i_crit_edge
  %and25.i.i = and i64 %119, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and25.i.i)
  %tobool26.not.i.i = icmp eq i64 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end24.i.i.if.end34.i.i_crit_edge, label %land.lhs.true27.i.i

if.end24.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

land.lhs.true27.i.i:                              ; preds = %if.end24.i.i
  %141 = ptrtoint ptr %pkey.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %pkey.i.i, align 4
  %pkey29.i.i = getelementptr i8, ptr %60, i32 -160
  %143 = ptrtoint ptr %pkey29.i.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %pkey29.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %142, i16 %144)
  %cmp31.not.i.i = icmp eq i16 %142, %144
  br i1 %cmp31.not.i.i, label %land.lhs.true27.i.i.if.end34.i.i_crit_edge, label %land.lhs.true27.i.i.if.end.i269_crit_edge

land.lhs.true27.i.i.if.end.i269_crit_edge:        ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.lhs.true27.i.i.if.end34.i.i_crit_edge:       ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %land.lhs.true27.i.i.if.end34.i.i_crit_edge, %if.end24.i.i.if.end34.i.i_crit_edge
  %145 = ptrtoint ptr %ratesel_rate.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ratesel_rate.i.i, align 2
  %ratesel_rate35.i.i = getelementptr i8, ptr %60, i32 -158
  %147 = ptrtoint ptr %ratesel_rate35.i.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %ratesel_rate35.i.i, align 2
  %149 = and i8 %148, 63
  %150 = and i8 %146, 63
  %151 = and i64 %119, 768
  call void @__sanitizer_cov_trace_const_cmp8(i64 768, i64 %151)
  %.not173.i.i = icmp eq i64 %151, 768
  br i1 %.not173.i.i, label %if.end.i125.i.i, label %if.end34.i.i.if.end39.i.i_crit_edge

if.end34.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

if.end.i125.i.i:                                  ; preds = %if.end34.i.i
  %152 = lshr i8 %148, 6
  %conv10.i124.i.i = zext i8 %152 to i32
  %153 = zext i32 %conv10.i124.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %conv10.i124.i.i, label %if.end.i125.i.i.if.end39.i.i_crit_edge [
    i32 0, label %check_selector.exit136.i.i
    i32 1, label %sw.bb14.i129.i.i
    i32 2, label %sw.bb19.i131.i.i
  ]

if.end.i125.i.i.if.end39.i.i_crit_edge:           ; preds = %if.end.i125.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

sw.bb14.i129.i.i:                                 ; preds = %if.end.i125.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %149)
  %cmp17.i128.not.i.i = icmp ult i8 %150, %149
  br i1 %cmp17.i128.not.i.i, label %sw.bb14.i129.i.i.if.end39.i.i_crit_edge, label %sw.bb14.i129.i.i.if.end.i269_crit_edge

sw.bb14.i129.i.i.if.end.i269_crit_edge:           ; preds = %sw.bb14.i129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

sw.bb14.i129.i.i.if.end39.i.i_crit_edge:          ; preds = %sw.bb14.i129.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

sw.bb19.i131.i.i:                                 ; preds = %if.end.i125.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %149)
  %cmp22.i130.not.i.i = icmp eq i8 %150, %149
  br i1 %cmp22.i130.not.i.i, label %sw.bb19.i131.i.i.if.end39.i.i_crit_edge, label %sw.bb19.i131.i.i.if.end.i269_crit_edge

sw.bb19.i131.i.i.if.end.i269_crit_edge:           ; preds = %sw.bb19.i131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

sw.bb19.i131.i.i.if.end39.i.i_crit_edge:          ; preds = %sw.bb19.i131.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

check_selector.exit136.i.i:                       ; preds = %if.end.i125.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %150, i8 %149)
  %cmp.i126.not.i.i = icmp ugt i8 %150, %149
  br i1 %cmp.i126.not.i.i, label %check_selector.exit136.i.i.if.end39.i.i_crit_edge, label %check_selector.exit136.i.i.if.end.i269_crit_edge

check_selector.exit136.i.i.if.end.i269_crit_edge: ; preds = %check_selector.exit136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

check_selector.exit136.i.i.if.end39.i.i_crit_edge: ; preds = %check_selector.exit136.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %check_selector.exit136.i.i.if.end39.i.i_crit_edge, %sw.bb19.i131.i.i.if.end39.i.i_crit_edge, %sw.bb14.i129.i.i.if.end39.i.i_crit_edge, %if.end.i125.i.i.if.end39.i.i_crit_edge, %if.end34.i.i.if.end39.i.i_crit_edge
  %154 = ptrtoint ptr %lifetmsel_lifetm.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %lifetmsel_lifetm.i.i, align 1
  %lifetmsel_lifetm40.i.i = getelementptr i8, ptr %60, i32 -157
  %156 = ptrtoint ptr %lifetmsel_lifetm40.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %lifetmsel_lifetm40.i.i, align 1
  %158 = and i8 %157, 63
  %159 = and i8 %155, 63
  %160 = and i64 %119, 3072
  call void @__sanitizer_cov_trace_const_cmp8(i64 3072, i64 %160)
  %.not174.i.i = icmp eq i64 %160, 3072
  br i1 %.not174.i.i, label %if.end.i143.i.i, label %if.end39.i.i.if.end44.i.i_crit_edge

if.end39.i.i.if.end44.i.i_crit_edge:              ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

if.end.i143.i.i:                                  ; preds = %if.end39.i.i
  %161 = lshr i8 %157, 6
  %conv10.i142.i.i = zext i8 %161 to i32
  %162 = zext i32 %conv10.i142.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %conv10.i142.i.i, label %if.end.i143.i.i.if.end44.i.i_crit_edge [
    i32 0, label %check_selector.exit154.i.i
    i32 1, label %sw.bb14.i147.i.i
    i32 2, label %sw.bb19.i149.i.i
  ]

if.end.i143.i.i.if.end44.i.i_crit_edge:           ; preds = %if.end.i143.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

sw.bb14.i147.i.i:                                 ; preds = %if.end.i143.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %158)
  %cmp17.i146.not.i.i = icmp ult i8 %159, %158
  br i1 %cmp17.i146.not.i.i, label %sw.bb14.i147.i.i.if.end44.i.i_crit_edge, label %sw.bb14.i147.i.i.if.end.i269_crit_edge

sw.bb14.i147.i.i.if.end.i269_crit_edge:           ; preds = %sw.bb14.i147.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

sw.bb14.i147.i.i.if.end44.i.i_crit_edge:          ; preds = %sw.bb14.i147.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

sw.bb19.i149.i.i:                                 ; preds = %if.end.i143.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %158)
  %cmp22.i148.not.i.i = icmp eq i8 %159, %158
  br i1 %cmp22.i148.not.i.i, label %sw.bb19.i149.i.i.if.end44.i.i_crit_edge, label %sw.bb19.i149.i.i.if.end.i269_crit_edge

sw.bb19.i149.i.i.if.end.i269_crit_edge:           ; preds = %sw.bb19.i149.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

sw.bb19.i149.i.i.if.end44.i.i_crit_edge:          ; preds = %sw.bb19.i149.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

check_selector.exit154.i.i:                       ; preds = %if.end.i143.i.i
  call void @__sanitizer_cov_trace_cmp1(i8 %159, i8 %158)
  %cmp.i144.not.i.i = icmp ugt i8 %159, %158
  br i1 %cmp.i144.not.i.i, label %check_selector.exit154.i.i.if.end44.i.i_crit_edge, label %check_selector.exit154.i.i.if.end.i269_crit_edge

check_selector.exit154.i.i.if.end.i269_crit_edge: ; preds = %check_selector.exit154.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

check_selector.exit154.i.i.if.end44.i.i_crit_edge: ; preds = %check_selector.exit154.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44.i.i

if.end44.i.i:                                     ; preds = %check_selector.exit154.i.i.if.end44.i.i_crit_edge, %sw.bb19.i149.i.i.if.end44.i.i_crit_edge, %sw.bb14.i147.i.i.if.end44.i.i_crit_edge, %if.end.i143.i.i.if.end44.i.i_crit_edge, %if.end39.i.i.if.end44.i.i_crit_edge
  %and45.i.i = and i64 %119, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and45.i.i)
  %tobool46.not.i.i = icmp eq i64 %and45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end44.i.i.if.end54.i.i_crit_edge, label %land.lhs.true47.i.i

if.end44.i.i.if.end54.i.i_crit_edge:              ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

land.lhs.true47.i.i:                              ; preds = %if.end44.i.i
  %163 = ptrtoint ptr %sl_flowlabel_hoplimit.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %sl_flowlabel_hoplimit.i.i, align 4
  %sl_flowlabel_hoplimit49.i.i = getelementptr i8, ptr %60, i32 -156
  %165 = ptrtoint ptr %sl_flowlabel_hoplimit49.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %sl_flowlabel_hoplimit49.i.i, align 4
  %167 = xor i32 %166, %164
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %167)
  %cmp51.not.i.i = icmp ult i32 %167, 268435456
  br i1 %cmp51.not.i.i, label %land.lhs.true47.i.i.if.end54.i.i_crit_edge, label %land.lhs.true47.i.i.if.end.i269_crit_edge

land.lhs.true47.i.i.if.end.i269_crit_edge:        ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.lhs.true47.i.i.if.end54.i.i_crit_edge:       ; preds = %land.lhs.true47.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %land.lhs.true47.i.i.if.end54.i.i_crit_edge, %if.end44.i.i.if.end54.i.i_crit_edge
  %and55.i.i = and i64 %119, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55.i.i)
  %tobool56.not.i.i = icmp eq i64 %and55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.end54.i.i.if.end65.i.i_crit_edge, label %land.lhs.true57.i.i

if.end54.i.i.if.end65.i.i_crit_edge:              ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

land.lhs.true57.i.i:                              ; preds = %if.end54.i.i
  %168 = ptrtoint ptr %sl_flowlabel_hoplimit.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %sl_flowlabel_hoplimit.i.i, align 4
  %sl_flowlabel_hoplimit60.i.i = getelementptr i8, ptr %60, i32 -156
  %170 = ptrtoint ptr %sl_flowlabel_hoplimit60.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %sl_flowlabel_hoplimit60.i.i, align 4
  %172 = xor i32 %171, %169
  %173 = and i32 %172, 268435200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp62.not.i.i = icmp eq i32 %173, 0
  br i1 %cmp62.not.i.i, label %land.lhs.true57.i.i.if.end65.i.i_crit_edge, label %land.lhs.true57.i.i.if.end.i269_crit_edge

land.lhs.true57.i.i.if.end.i269_crit_edge:        ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.lhs.true57.i.i.if.end65.i.i_crit_edge:       ; preds = %land.lhs.true57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

if.end65.i.i:                                     ; preds = %land.lhs.true57.i.i.if.end65.i.i_crit_edge, %if.end54.i.i.if.end65.i.i_crit_edge
  %and66.i.i = and i64 %119, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and66.i.i)
  %tobool67.not.i.i = icmp eq i64 %and66.i.i, 0
  br i1 %tobool67.not.i.i, label %if.end65.i.i.if.end76.i.i_crit_edge, label %land.lhs.true68.i.i

if.end65.i.i.if.end76.i.i_crit_edge:              ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i.i

land.lhs.true68.i.i:                              ; preds = %if.end65.i.i
  %174 = ptrtoint ptr %sl_flowlabel_hoplimit.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %sl_flowlabel_hoplimit.i.i, align 4
  %sl_flowlabel_hoplimit71.i.i = getelementptr i8, ptr %60, i32 -156
  %176 = ptrtoint ptr %sl_flowlabel_hoplimit71.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %sl_flowlabel_hoplimit71.i.i, align 4
  %178 = xor i32 %177, %175
  %179 = and i32 %178, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %cmp73.not.i.i = icmp eq i32 %179, 0
  br i1 %cmp73.not.i.i, label %land.lhs.true68.i.i.if.end76.i.i_crit_edge, label %land.lhs.true68.i.i.if.end.i269_crit_edge

land.lhs.true68.i.i.if.end.i269_crit_edge:        ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.lhs.true68.i.i.if.end76.i.i_crit_edge:       ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76.i.i

if.end76.i.i:                                     ; preds = %land.lhs.true68.i.i.if.end76.i.i_crit_edge, %if.end65.i.i.if.end76.i.i_crit_edge
  %and77.i.i = and i64 %119, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and77.i.i)
  %tobool78.not.i.i = icmp eq i64 %and77.i.i, 0
  br i1 %tobool78.not.i.i, label %if.end76.i.i.if.then9.i_crit_edge, label %land.lhs.true79.i.i

if.end76.i.i.if.then9.i_crit_edge:                ; preds = %if.end76.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

land.lhs.true79.i.i:                              ; preds = %if.end76.i.i
  %180 = ptrtoint ptr %scope_join_state100 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %scope_join_state100, align 4
  %182 = xor i8 %181, %117
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %182)
  %cmp85.not.i.i = icmp ult i8 %182, 16
  br i1 %cmp85.not.i.i, label %land.lhs.true79.i.i.if.then9.i_crit_edge, label %land.lhs.true79.i.i.if.end.i269_crit_edge

land.lhs.true79.i.i.if.end.i269_crit_edge:        ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

land.lhs.true79.i.i.if.then9.i_crit_edge:         ; preds = %land.lhs.true79.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9.i

if.then9.i:                                       ; preds = %land.lhs.true79.i.i.if.then9.i_crit_edge, %if.end76.i.i.if.then9.i_crit_edge
  %183 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %add.ptr96, align 4
  %arrayidx.i.i247 = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %184
  %join_state1.i.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %184, i32 1
  %185 = ptrtoint ptr %join_state1.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %join_state1.i.i, align 4
  %neg.i.i248 = xor i8 %186, -1
  %and.i62.i = and i8 %65, %neg.i.i248
  %187 = and i8 %and.i62.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool.not.i.i.i249 = icmp eq i8 %187, 0
  br i1 %tobool.not.i.i.i249, label %if.then9.i.for.inc.i.i.i254_crit_edge, label %if.then.i.i.i252

if.then9.i.for.inc.i.i.i254_crit_edge:            ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i254

if.then.i.i.i252:                                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  %188 = ptrtoint ptr %arrayidx.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx.i.i.i250, align 4
  %add.i.i.i251 = add i32 %189, 1
  store i32 %add.i.i.i251, ptr %arrayidx.i.i.i250, align 4
  br label %for.inc.i.i.i254

for.inc.i.i.i254:                                 ; preds = %if.then.i.i.i252, %if.then9.i.for.inc.i.i.i254_crit_edge
  %190 = and i8 %and.i62.i, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.1.i.i.i253 = icmp eq i8 %190, 0
  br i1 %tobool.not.1.i.i.i253, label %for.inc.i.i.i254.for.inc.1.i.i.i259_crit_edge, label %if.then.1.i.i.i257

for.inc.i.i.i254.for.inc.1.i.i.i259_crit_edge:    ; preds = %for.inc.i.i.i254
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i.i259

if.then.1.i.i.i257:                               ; preds = %for.inc.i.i.i254
  call void @__sanitizer_cov_trace_pc() #11
  %191 = ptrtoint ptr %arrayidx.1.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.1.i.i.i255, align 4
  %add.1.i.i.i256 = add i32 %192, 1
  store i32 %add.1.i.i.i256, ptr %arrayidx.1.i.i.i255, align 4
  br label %for.inc.1.i.i.i259

for.inc.1.i.i.i259:                               ; preds = %if.then.1.i.i.i257, %for.inc.i.i.i254.for.inc.1.i.i.i259_crit_edge
  %193 = and i8 %and.i62.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %193)
  %tobool.not.2.i.i.i258 = icmp eq i8 %193, 0
  br i1 %tobool.not.2.i.i.i258, label %for.inc.1.i.i.i259.adjust_membership.exit.i.i263_crit_edge, label %if.then.2.i.i.i262

for.inc.1.i.i.i259.adjust_membership.exit.i.i263_crit_edge: ; preds = %for.inc.1.i.i.i259
  call void @__sanitizer_cov_trace_pc() #11
  br label %adjust_membership.exit.i.i263

if.then.2.i.i.i262:                               ; preds = %for.inc.1.i.i.i259
  call void @__sanitizer_cov_trace_pc() #11
  %194 = ptrtoint ptr %arrayidx.2.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.2.i.i.i260, align 4
  %add.2.i.i.i261 = add i32 %195, 1
  store i32 %add.2.i.i.i261, ptr %arrayidx.2.i.i.i260, align 4
  br label %adjust_membership.exit.i.i263

adjust_membership.exit.i.i263:                    ; preds = %if.then.2.i.i.i262, %for.inc.1.i.i.i259.adjust_membership.exit.i.i263_crit_edge
  %196 = ptrtoint ptr %join_state1.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %join_state1.i.i, align 4
  %or1.i.i = or i8 %197, %and.i62.i
  store i8 %or1.i.i, ptr %join_state1.i.i, align 4
  %198 = ptrtoint ptr %arrayidx.i.i247 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i.i247, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %199)
  %cmp.not.i63.i = icmp eq i32 %199, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and.i62.i)
  %tobool.not.i64.i = icmp eq i8 %and.i62.i, 0
  %or.cond.i.i = or i1 %tobool.not.i64.i, %cmp.not.i63.i
  br i1 %or.cond.i.i, label %adjust_membership.exit.i.i263.if.end.i269_crit_edge, label %if.then.i.i264

adjust_membership.exit.i.i263.if.end.i269_crit_edge: ; preds = %adjust_membership.exit.i.i263
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i269

if.then.i.i264:                                   ; preds = %adjust_membership.exit.i.i263
  call void @__sanitizer_cov_trace_pc() #11
  %200 = ptrtoint ptr %arrayidx.i.i247 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 1, ptr %arrayidx.i.i247, align 4
  br label %if.end.i269

if.end.i269:                                      ; preds = %if.then.i.i264, %adjust_membership.exit.i.i263.if.end.i269_crit_edge, %land.lhs.true79.i.i.if.end.i269_crit_edge, %land.lhs.true68.i.i.if.end.i269_crit_edge, %land.lhs.true57.i.i.if.end.i269_crit_edge, %land.lhs.true47.i.i.if.end.i269_crit_edge, %check_selector.exit154.i.i.if.end.i269_crit_edge, %sw.bb19.i149.i.i.if.end.i269_crit_edge, %sw.bb14.i147.i.i.if.end.i269_crit_edge, %check_selector.exit136.i.i.if.end.i269_crit_edge, %sw.bb19.i131.i.i.if.end.i269_crit_edge, %sw.bb14.i129.i.i.if.end.i269_crit_edge, %land.lhs.true27.i.i.if.end.i269_crit_edge, %land.lhs.true17.i.i.if.end.i269_crit_edge, %check_selector.exit.i.i.if.end.i269_crit_edge, %sw.bb19.i.i.i.if.end.i269_crit_edge, %sw.bb14.i.i.i.if.end.i269_crit_edge, %land.lhs.true4.i.i.if.end.i269_crit_edge, %land.lhs.true.i.i.if.end.i269_crit_edge
  %retval.0.i91.i = phi i16 [ 0, %adjust_membership.exit.i.i263.if.end.i269_crit_edge ], [ 0, %if.then.i.i264 ], [ 512, %land.lhs.true.i.i.if.end.i269_crit_edge ], [ 512, %land.lhs.true4.i.i.if.end.i269_crit_edge ], [ 512, %check_selector.exit.i.i.if.end.i269_crit_edge ], [ 512, %land.lhs.true17.i.i.if.end.i269_crit_edge ], [ 512, %land.lhs.true27.i.i.if.end.i269_crit_edge ], [ 512, %check_selector.exit136.i.i.if.end.i269_crit_edge ], [ 512, %check_selector.exit154.i.i.if.end.i269_crit_edge ], [ 512, %land.lhs.true47.i.i.if.end.i269_crit_edge ], [ 512, %land.lhs.true57.i.i.if.end.i269_crit_edge ], [ 512, %land.lhs.true68.i.i.if.end.i269_crit_edge ], [ 512, %land.lhs.true79.i.i.if.end.i269_crit_edge ], [ 512, %sw.bb19.i.i.i.if.end.i269_crit_edge ], [ 512, %sw.bb14.i.i.i.if.end.i269_crit_edge ], [ 512, %sw.bb19.i131.i.i.if.end.i269_crit_edge ], [ 512, %sw.bb14.i129.i.i.if.end.i269_crit_edge ], [ 512, %sw.bb19.i149.i.i.if.end.i269_crit_edge ], [ 512, %sw.bb14.i147.i.i.if.end.i269_crit_edge ]
  %201 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %add.ptr96, align 4
  %num_pend_reqs.i265 = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %202, i32 2
  %203 = ptrtoint ptr %num_pend_reqs.i265 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %num_pend_reqs.i265, align 4
  %dec.i266 = add i32 %204, -1
  store i32 %dec.i266, ptr %num_pend_reqs.i265, align 4
  %205 = load i32, ptr %add.ptr96, align 4
  call fastcc void @send_reply_to_slave(i32 noundef %205, ptr noundef %add.ptr, ptr noundef %sa_mad.i239, i16 noundef zeroext %retval.0.i91.i) #9
  %call.i.i.i268 = call zeroext i1 @__list_del_entry_valid(ptr noundef %60) #9
  br i1 %call.i.i.i268, label %if.end.i.i66.i, label %if.end.i269.list_del.exit.i274_crit_edge

if.end.i269.list_del.exit.i274_crit_edge:         ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i274

if.end.i.i66.i:                                   ; preds = %if.end.i269
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i270 = getelementptr i8, ptr %60, i32 4
  %206 = ptrtoint ptr %prev.i.i.i270 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %prev.i.i.i270, align 4
  %208 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %60, align 4
  %prev1.i.i.i.i271 = getelementptr inbounds %struct.list_head, ptr %209, i32 0, i32 1
  %210 = ptrtoint ptr %prev1.i.i.i.i271 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %207, ptr %prev1.i.i.i.i271, align 4
  %211 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %211)
  store volatile ptr %209, ptr %207, align 4
  br label %list_del.exit.i274

list_del.exit.i274:                               ; preds = %if.end.i.i66.i, %if.end.i269.list_del.exit.i274_crit_edge
  %212 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  %prev.i.i272 = getelementptr i8, ptr %60, i32 4
  %213 = ptrtoint ptr %prev.i.i272 to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i272, align 4
  %func_list.i273 = getelementptr i8, ptr %60, i32 8
  %call.i.i67.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %func_list.i273) #9
  br i1 %call.i.i67.i, label %if.end.i.i70.i, label %list_del.exit.i274.list_del.exit72.i_crit_edge

list_del.exit.i274.list_del.exit72.i_crit_edge:   ; preds = %list_del.exit.i274
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit72.i

if.end.i.i70.i:                                   ; preds = %list_del.exit.i274
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i68.i = getelementptr i8, ptr %60, i32 12
  %214 = ptrtoint ptr %prev.i.i68.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %prev.i.i68.i, align 4
  %216 = ptrtoint ptr %func_list.i273 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %func_list.i273, align 4
  %prev1.i.i.i69.i = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %prev1.i.i.i69.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %215, ptr %prev1.i.i.i69.i, align 4
  %219 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %219)
  store volatile ptr %217, ptr %215, align 4
  br label %list_del.exit72.i

list_del.exit72.i:                                ; preds = %if.end.i.i70.i, %list_del.exit.i274.list_del.exit72.i_crit_edge
  %220 = ptrtoint ptr %func_list.i273 to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr inttoptr (i32 256 to ptr), ptr %func_list.i273, align 4
  %prev.i71.i = getelementptr i8, ptr %60, i32 12
  %221 = ptrtoint ptr %prev.i71.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i71.i, align 4
  call void @kfree(ptr noundef %add.ptr96) #9
  br label %handle_join_req.exit

if.else.i:                                        ; preds = %if.else112
  %222 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %state, align 8
  %224 = ptrtoint ptr %prev_state.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %prev_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mad.i.i) #9
  %225 = call ptr @memcpy(ptr %mad.i.i, ptr %sa_mad.i239, i32 256)
  %226 = ptrtoint ptr %demux.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %demux.i.i, align 8
  %guid_cache.i.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %227, i32 0, i32 7
  %228 = ptrtoint ptr %guid_cache.i.i to i32
  call void @__asan_load8_noabort(i32 %228)
  %229 = load i64, ptr %guid_cache.i.i, align 8
  %230 = ptrtoint ptr %interface_id.i.i to i32
  call void @__asan_storeN_noabort(i32 %230, i32 8)
  store i64 %229, ptr %interface_id.i.i, align 4
  %call.i.i275 = call i64 @mlx4_ib_get_new_demux_tid(ptr noundef %227) #9
  %231 = ptrtoint ptr %tid.i.i to i32
  call void @__asan_storeN_noabort(i32 %231, i32 8)
  store i64 %call.i.i275, ptr %tid.i.i, align 1
  %232 = ptrtoint ptr %last_req_tid.i.i to i32
  call void @__asan_store8_noabort(i32 %232)
  store i64 %call.i.i275, ptr %last_req_tid.i.i, align 8
  %233 = ptrtoint ptr %demux.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %demux.i.i, align 8
  %call5.i.i = call fastcc i32 @send_mad_to_wire(ptr noundef %234, ptr noundef nonnull %mad.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not.i73.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not.i73.i, label %if.else29.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.else.i
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mad.i.i) #9
  %235 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %add.ptr96, align 4
  %num_pend_reqs23.i = getelementptr %struct.mcast_group, ptr %add.ptr, i32 0, i32 4, i32 %236, i32 2
  %237 = ptrtoint ptr %num_pend_reqs23.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %num_pend_reqs23.i, align 4
  %dec24.i = add i32 %238, -1
  store i32 %dec24.i, ptr %num_pend_reqs23.i, align 4
  %call.i.i77.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %60) #9
  br i1 %call.i.i77.i, label %if.end.i.i80.i, label %if.then19.i.list_del.exit82.i_crit_edge

if.then19.i.list_del.exit82.i_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit82.i

if.end.i.i80.i:                                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i78.i = getelementptr i8, ptr %60, i32 4
  %239 = ptrtoint ptr %prev.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %prev.i.i78.i, align 4
  %241 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %60, align 4
  %prev1.i.i.i79.i = getelementptr inbounds %struct.list_head, ptr %242, i32 0, i32 1
  %243 = ptrtoint ptr %prev1.i.i.i79.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %240, ptr %prev1.i.i.i79.i, align 4
  %244 = ptrtoint ptr %240 to i32
  call void @__asan_store4_noabort(i32 %244)
  store volatile ptr %242, ptr %240, align 4
  br label %list_del.exit82.i

list_del.exit82.i:                                ; preds = %if.end.i.i80.i, %if.then19.i.list_del.exit82.i_crit_edge
  %245 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  %prev.i81.i = getelementptr i8, ptr %60, i32 4
  %246 = ptrtoint ptr %prev.i81.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i81.i, align 4
  %func_list26.i = getelementptr i8, ptr %60, i32 8
  %call.i.i83.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %func_list26.i) #9
  br i1 %call.i.i83.i, label %if.end.i.i86.i, label %list_del.exit82.i.list_del.exit88.i_crit_edge

list_del.exit82.i.list_del.exit88.i_crit_edge:    ; preds = %list_del.exit82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit88.i

if.end.i.i86.i:                                   ; preds = %list_del.exit82.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i84.i = getelementptr i8, ptr %60, i32 12
  %247 = ptrtoint ptr %prev.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %prev.i.i84.i, align 4
  %249 = ptrtoint ptr %func_list26.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %func_list26.i, align 4
  %prev1.i.i.i85.i = getelementptr inbounds %struct.list_head, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %prev1.i.i.i85.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr %248, ptr %prev1.i.i.i85.i, align 4
  %252 = ptrtoint ptr %248 to i32
  call void @__asan_store4_noabort(i32 %252)
  store volatile ptr %250, ptr %248, align 4
  br label %list_del.exit88.i

list_del.exit88.i:                                ; preds = %if.end.i.i86.i, %list_del.exit82.i.list_del.exit88.i_crit_edge
  %253 = ptrtoint ptr %func_list26.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr inttoptr (i32 256 to ptr), ptr %func_list26.i, align 4
  %prev.i87.i = getelementptr i8, ptr %60, i32 12
  %254 = ptrtoint ptr %prev.i87.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i87.i, align 4
  call void @kfree(ptr noundef %add.ptr96) #9
  %255 = ptrtoint ptr %prev_state.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %prev_state.i, align 4
  %257 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %256, ptr %state, align 8
  br label %handle_join_req.exit

if.else29.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %258 = ptrtoint ptr %demux.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %demux.i.i, align 8
  %mcg_wq.i.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %259, i32 0, i32 12
  %260 = ptrtoint ptr %mcg_wq.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %mcg_wq.i.i, align 4
  %call.i.i74.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %261, ptr noundef %timeout_work.i.i, i32 noundef 200) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mad.i.i) #9
  %262 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %262)
  store i32 1, ptr %state, align 8
  br label %handle_join_req.exit

handle_join_req.exit:                             ; preds = %if.else29.i, %list_del.exit88.i, %list_del.exit72.i
  %ref.0.i = phi i32 [ 1, %list_del.exit72.i ], [ 1, %list_del.exit88.i ], [ 0, %if.else29.i ]
  %add114 = add i32 %ref.0.i, %rc.4292
  br label %if.end115

if.end115:                                        ; preds = %handle_join_req.exit, %handle_leave_req.exit
  %rc.5 = phi i32 [ %add, %handle_leave_req.exit ], [ %add114, %handle_join_req.exit ]
  %263 = ptrtoint ptr %pending_list86 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile ptr, ptr %pending_list86, align 4
  %cmp.i235.not = icmp eq ptr %264, %pending_list86
  br i1 %cmp.i235.not, label %if.end115.while.end_crit_edge, label %if.end115.land.rhs_crit_edge

if.end115.land.rhs_crit_edge:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

if.end115.while.end_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end115.while.end_crit_edge, %process_requests.while.end_crit_edge
  %rc.4.lcssa = phi i32 [ %rc.3, %process_requests.while.end_crit_edge ], [ %rc.5, %if.end115.while.end_crit_edge ]
  %265 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %265)
  %.pr = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp117 = icmp eq i32 %.pr, 0
  br i1 %cmp117, label %if.then119, label %while.end.if.end141_crit_edge

while.end.if.end141_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then119:                                       ; preds = %while.end
  %266 = ptrtoint ptr %arrayidx.i.i.i250 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %arrayidx.i.i.i250, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool.not.i276 = icmp eq i32 %267, 0
  %conv1.i = zext i1 %tobool.not.i276 to i8
  %268 = ptrtoint ptr %arrayidx.1.i.i.i255 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %arrayidx.1.i.i.i255, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool.not.1.i = icmp eq i32 %269, 0
  %conv1.1.i = select i1 %tobool.not.1.i, i8 2, i8 0
  %leave_state.1.1.i = or i8 %conv1.1.i, %conv1.i
  %270 = ptrtoint ptr %arrayidx.2.i.i.i260 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %arrayidx.2.i.i.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool.not.2.i = icmp eq i32 %271, 0
  %conv1.2.i = select i1 %tobool.not.2.i, i8 4, i8 0
  %leave_state.1.2.i = or i8 %leave_state.1.1.i, %conv1.2.i
  %272 = ptrtoint ptr %scope_join_state.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %scope_join_state.i, align 8
  %and411.i = and i8 %leave_state.1.2.i, %273
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and411.i)
  %tobool121.not = icmp eq i8 %and411.i, 0
  br i1 %tobool121.not, label %if.then119.if.end141_crit_edge, label %if.then122

if.then119.if.end141_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then122:                                       ; preds = %if.then119
  %neg = xor i8 %and411.i, -1
  %274 = ptrtoint ptr %scope_join_state.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %scope_join_state.i, align 8
  %and127 = and i8 %275, %neg
  store i8 %and127, ptr %scope_join_state.i, align 8
  %276 = ptrtoint ptr %prev_state.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 0, ptr %prev_state.i, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mad.i) #9
  %277 = call ptr @memset(ptr %57, i32 0, i32 238)
  %278 = ptrtoint ptr %mad.i to i32
  call void @__asan_store1_noabort(i32 %278)
  store i8 1, ptr %mad.i, align 1
  %279 = ptrtoint ptr %mgmt_class.i to i32
  call void @__asan_store1_noabort(i32 %279)
  store i8 3, ptr %mgmt_class.i, align 1
  %280 = ptrtoint ptr %class_version.i to i32
  call void @__asan_store1_noabort(i32 %280)
  store i8 2, ptr %class_version.i, align 1
  %281 = ptrtoint ptr %method.i to i32
  call void @__asan_store1_noabort(i32 %281)
  store i8 21, ptr %method.i, align 1
  %282 = ptrtoint ptr %status.i to i32
  call void @__asan_storeN_noabort(i32 %282, i32 2)
  store i16 0, ptr %status.i, align 1
  %283 = ptrtoint ptr %class_specific.i to i32
  call void @__asan_storeN_noabort(i32 %283, i32 2)
  store i16 0, ptr %class_specific.i, align 1
  %284 = ptrtoint ptr %demux.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %demux.i.i, align 8
  %call.i = call i64 @mlx4_ib_get_new_demux_tid(ptr noundef %285) #9
  %286 = ptrtoint ptr %tid.i to i32
  call void @__asan_storeN_noabort(i32 %286, i32 8)
  store i64 %call.i, ptr %tid.i, align 1
  %287 = ptrtoint ptr %last_req_tid.i.i to i32
  call void @__asan_store8_noabort(i32 %287)
  store i64 %call.i, ptr %last_req_tid.i.i, align 8
  %288 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_storeN_noabort(i32 %288, i32 2)
  store i16 56, ptr %attr_id.i, align 1
  %289 = ptrtoint ptr %attr_mod.i to i32
  call void @__asan_storeN_noabort(i32 %289, i32 4)
  store i32 0, ptr %attr_mod.i, align 1
  %290 = ptrtoint ptr %sa_hdr.i to i32
  call void @__asan_storeN_noabort(i32 %290, i32 8)
  store i64 0, ptr %sa_hdr.i, align 1
  %291 = ptrtoint ptr %attr_offset.i to i32
  call void @__asan_storeN_noabort(i32 %291, i32 2)
  store i16 7, ptr %attr_offset.i, align 1
  %292 = ptrtoint ptr %comp_mask.i278 to i32
  call void @__asan_storeN_noabort(i32 %292, i32 8)
  store i64 65539, ptr %comp_mask.i278, align 1
  %293 = call ptr @memcpy(ptr %data.i, ptr %add.ptr, i32 52)
  %294 = ptrtoint ptr %scope_join_state.i279 to i32
  call void @__asan_store1_noabort(i32 %294)
  store i8 %and411.i, ptr %scope_join_state.i279, align 4
  %295 = ptrtoint ptr %demux.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %demux.i.i, align 8
  %call14.i = call fastcc i32 @send_mad_to_wire(ptr noundef %296, ptr noundef nonnull %mad.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i280 = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i280, label %if.else137, label %if.then133

if.then133:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mad.i) #9
  %297 = ptrtoint ptr %prev_state.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %prev_state.i, align 4
  %299 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %298, ptr %state, align 8
  %inc136 = add i32 %rc.4.lcssa, 1
  br label %if.end141

if.else137:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #11
  %300 = ptrtoint ptr %demux.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %demux.i.i, align 8
  %mcg_wq.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %301, i32 0, i32 12
  %302 = ptrtoint ptr %mcg_wq.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %mcg_wq.i, align 4
  %call.i.i283 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %303, ptr noundef %timeout_work.i.i, i32 noundef 200) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mad.i) #9
  %304 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 2, ptr %state, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.else137, %if.then133, %if.then119.if.end141_crit_edge, %while.end.if.end141_crit_edge, %land.rhs.if.end141_crit_edge
  %rc.6 = phi i32 [ %inc136, %if.then133 ], [ %rc.4.lcssa, %if.else137 ], [ %rc.4.lcssa, %if.then119.if.end141_crit_edge ], [ %rc.4.lcssa, %while.end.if.end141_crit_edge ], [ %rc.4292, %land.rhs.if.end141_crit_edge ]
  %305 = ptrtoint ptr %pending_list86 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load volatile ptr, ptr %pending_list86, align 4
  %cmp.i284.not = icmp eq ptr %306, %pending_list86
  br i1 %cmp.i284.not, label %if.end141.if.end150_crit_edge, label %land.lhs.true145

if.end141.if.end150_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

land.lhs.true145:                                 ; preds = %if.end141
  %307 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %state, align 8
  %cmp147 = icmp eq i32 %308, 0
  br i1 %cmp147, label %land.lhs.true145.process_requests_crit_edge, label %land.lhs.true145.if.end150_crit_edge

land.lhs.true145.if.end150_crit_edge:             ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end150

land.lhs.true145.process_requests_crit_edge:      ; preds = %land.lhs.true145
  call void @__sanitizer_cov_trace_pc() #11
  br label %process_requests

if.end150:                                        ; preds = %land.lhs.true145.if.end150_crit_edge, %if.end141.if.end150_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.6)
  %tobool154.not294 = icmp eq i32 %rc.6, 0
  br i1 %tobool154.not294, label %if.end150.while.end157_crit_edge, label %if.end150.while.body155_crit_edge

if.end150.while.body155_crit_edge:                ; preds = %if.end150
  br label %while.body155

if.end150.while.end157_crit_edge:                 ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end157

while.body155:                                    ; preds = %while.body155.while.body155_crit_edge, %if.end150.while.body155_crit_edge
  %rc.7295 = phi i32 [ %dec153, %while.body155.while.body155_crit_edge ], [ %rc.6, %if.end150.while.body155_crit_edge ]
  %dec153 = add i32 %rc.7295, -1
  %call156 = call fastcc i32 @release_group(ptr noundef %add.ptr, i32 noundef 0)
  %tobool154.not = icmp eq i32 %dec153, 0
  br i1 %tobool154.not, label %while.body155.while.end157_crit_edge, label %while.body155.while.body155_crit_edge

while.body155.while.body155_crit_edge:            ; preds = %while.body155
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body155

while.body155.while.end157_crit_edge:             ; preds = %while.body155
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end157

while.end157:                                     ; preds = %while.body155.while.end157_crit_edge, %if.end150.while.end157_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_mcg_timeout_handler(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -2172
  %lock = getelementptr i8, ptr %work, i32 -496
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %state = getelementptr i8, ptr %work, i32 -340
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %1, label %do.end44 [
    i32 1, label %if.then
    i32 2, label %if.then24
  ]

if.then:                                          ; preds = %entry
  %pending_list = getelementptr i8, ptr %work, i32 -360
  %3 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %4, %pending_list
  br i1 %cmp.i.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %add.ptr6 = getelementptr i8, ptr %4, i32 -260
  %call.i.i113 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i113, label %if.end.i.i, label %if.then2.list_del.exit_crit_edge

if.then2.list_del.exit_crit_edge:                 ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then2.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %func_list = getelementptr i8, ptr %4, i32 8
  %call.i.i114 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %func_list) #9
  br i1 %call.i.i114, label %if.end.i.i117, label %list_del.exit.list_del.exit119_crit_edge

list_del.exit.list_del.exit119_crit_edge:         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit119

if.end.i.i117:                                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i115 = getelementptr i8, ptr %4, i32 12
  %13 = ptrtoint ptr %prev.i.i115 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i115, align 4
  %15 = ptrtoint ptr %func_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %func_list, align 4
  %prev1.i.i.i116 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i116, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit119

list_del.exit119:                                 ; preds = %if.end.i.i117, %list_del.exit.list_del.exit119_crit_edge
  %19 = ptrtoint ptr %func_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %func_list, align 4
  %prev.i118 = getelementptr i8, ptr %4, i32 12
  %20 = ptrtoint ptr %prev.i118 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i118, align 4
  %func = getelementptr i8, ptr %work, i32 -2096
  %21 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr6, align 4
  %arrayidx = getelementptr [80 x %struct.mcast_member], ptr %func, i32 0, i32 %22
  %num_pend_reqs = getelementptr inbounds %struct.mcast_member, ptr %arrayidx, i32 0, i32 2
  %23 = ptrtoint ptr %num_pend_reqs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_pend_reqs, align 4
  %dec = add i32 %24, -1
  store i32 %dec, ptr %num_pend_reqs, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  tail call void @kfree(ptr noundef %add.ptr6) #9
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %add.ptr, ptr noundef nonnull dereferenceable(16) @mgid0, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool10.not = icmp eq i32 %bcmp, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %list_del.exit119
  %call12 = tail call fastcc i32 @release_group(ptr noundef %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %list_del.exit119
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %add.ptr) #9
  br label %cleanup

if.end15:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  br label %if.end54

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr i8, ptr %work, i32 -68
  %demux = getelementptr i8, ptr %work, i32 -2100
  %25 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %demux, align 8
  %port = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32, i32 noundef 565, ptr noundef %name, i32 noundef %28) #13
  br label %if.end54

if.then24:                                        ; preds = %entry
  %scope_join_state = getelementptr i8, ptr %work, i32 -2124
  %29 = ptrtoint ptr %scope_join_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %scope_join_state, align 8
  %31 = and i8 %30, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool26.not = icmp eq i8 %31, 0
  br i1 %tobool26.not, label %if.then24.if.end33_crit_edge, label %if.then27

if.then24.if.end33_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %and31 = and i8 %30, -16
  %32 = ptrtoint ptr %scope_join_state to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %and31, ptr %scope_join_state, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then27, %if.then24.if.end33_crit_edge
  %33 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %state, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call36 = tail call fastcc i32 @release_group(ptr noundef %add.ptr, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  br label %if.end54

do.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name46 = getelementptr i8, ptr %work, i32 -68
  %demux48 = getelementptr i8, ptr %work, i32 -2100
  %34 = ptrtoint ptr %demux48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %demux48, align 8
  %port49 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %port49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %switch.selectcmp = icmp eq i32 %1, 3
  %switch.select = select i1 %switch.selectcmp, ptr @.str.41, ptr @.str.42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %switch.selectcmp120 = icmp eq i32 %1, 0
  %switch.select121 = select i1 %switch.selectcmp120, ptr @.str.38, ptr %switch.select
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32, i32 noundef 575, ptr noundef %name46, i32 noundef %37, ptr noundef nonnull %switch.select121) #13
  br label %if.end54

if.end54:                                         ; preds = %do.end44, %if.end39, %do.end, %if.end15
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %state, align 8
  %refcount = getelementptr i8, ptr %work, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %39 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !127
  %demux56 = getelementptr i8, ptr %work, i32 -2100
  %40 = ptrtoint ptr %demux56 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %demux56, align 8
  %mcg_wq = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %41, i32 0, i32 12
  %42 = ptrtoint ptr %mcg_wq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mcg_wq, align 4
  %work57 = getelementptr i8, ptr %work, i32 -404
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work57) #9
  br i1 %call.i, label %if.end54.if.end76_crit_edge, label %do.body60

if.end54.if.end76_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

do.body60:                                        ; preds = %if.end54
  %call.i.i112 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !128
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #9
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #9, !srcloc !129
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %44, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.end66, label %do.body60.if.end76_crit_edge

do.body60.if.end76_crit_edge:                     ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end76

do.end66:                                         ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %name68 = getelementptr i8, ptr %work, i32 -68
  %45 = ptrtoint ptr %demux56 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %demux56, align 8
  %port71 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %port71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port71, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.32, i32 noundef 579, ptr noundef %name68, i32 noundef %48) #13
  br label %if.end76

if.end76:                                         ; preds = %do.end66, %do.body60.if.end76_crit_edge, %if.end54.if.end76_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.end33.cleanup_crit_edge, %if.else, %if.then11.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sysfs_show_group(ptr nocapture noundef readnone %dev, ptr noundef %attr, ptr noundef %buf) #0 align 64 {
entry:
  %state_str = alloca [40 x i8], align 1
  %pending_str = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %state_str) #9
  %0 = call ptr @memset(ptr %state_str, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %pending_str) #9
  %1 = call ptr @memset(ptr %pending_str, i32 255, i32 40)
  %state = getelementptr i8, ptr %attr, i32 -308
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %3, label %sw.epilog.i [
    i32 0, label %if.then
    i32 3, label %sw.bb3.i
    i32 1, label %entry.get_state_string.exit_crit_edge
    i32 2, label %sw.bb2.i
  ]

entry.get_state_string.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_state_string.exit

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %state_str, i32 noundef 40, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.38) #9
  br label %if.end

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_state_string.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_state_string.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %get_state_string.exit

get_state_string.exit:                            ; preds = %sw.epilog.i, %sw.bb3.i, %sw.bb2.i, %entry.get_state_string.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.42, %sw.epilog.i ], [ @.str.41, %sw.bb3.i ], [ @.str.40, %sw.bb2.i ], [ @.str.39, %entry.get_state_string.exit_crit_edge ]
  %last_req_tid = getelementptr i8, ptr %attr, i32 -44
  %5 = ptrtoint ptr %last_req_tid to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %last_req_tid, align 8
  %call6 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %state_str, i32 noundef 40, ptr noundef nonnull @.str.44, ptr noundef nonnull %retval.0.i, i64 noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %get_state_string.exit, %if.then
  %pending_list = getelementptr i8, ptr %attr, i32 -328
  %7 = ptrtoint ptr %pending_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending_list, align 4
  %cmp.i.not = icmp eq ptr %8, %pending_list
  br i1 %cmp.i.not, label %if.then8, label %if.else11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %pending_str, i32 noundef 40, ptr noundef nonnull @.str.45) #9
  br label %if.end18

if.else11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tid = getelementptr i8, ptr %8, i32 -248
  %9 = ptrtoint ptr %tid to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %tid, align 4
  %call17 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %pending_str, i32 noundef 40, ptr noundef nonnull @.str.46, i64 noundef %10) #9
  br label %if.end18

if.end18:                                         ; preds = %if.else11, %if.then8
  %scope_join_state = getelementptr i8, ptr %attr, i32 -2092
  %11 = ptrtoint ptr %scope_join_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %scope_join_state, align 8
  %13 = and i8 %12, 15
  %and = zext i8 %13 to i32
  %members = getelementptr i8, ptr %attr, i32 -320
  %arrayidx = getelementptr i8, ptr %attr, i32 -312
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  %arrayidx20 = getelementptr i8, ptr %attr, i32 -316
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx20, align 4
  %18 = ptrtoint ptr %members to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %members, align 4
  %refcount = getelementptr i8, ptr %attr, i32 28
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #9
  %20 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %refcount, align 4
  %call26 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %and, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %pending_str, ptr noundef nonnull %state_str) #9
  %func = getelementptr i8, ptr %attr, i32 -2064
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end18
  %i.0103 = phi i32 [ 0, %if.end18 ], [ %inc, %for.inc.for.body_crit_edge ]
  %len.0102 = phi i32 [ %call26, %if.end18 ], [ %len.1, %for.inc.for.body_crit_edge ]
  %arrayidx29 = getelementptr [80 x %struct.mcast_member], ptr %func, i32 0, i32 %i.0103
  %22 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp31 = icmp eq i32 %23, 1
  br i1 %cmp31, label %if.then33, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then33:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %join_state = getelementptr inbounds %struct.mcast_member, ptr %arrayidx29, i32 0, i32 1
  %24 = ptrtoint ptr %join_state to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %join_state, align 4
  %conv36 = zext i8 %25 to i32
  %call37 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.0102, ptr noundef nonnull @.str.48, i32 noundef %i.0103, i32 noundef %conv36) #9
  %add = add i32 %call37, %len.0102
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %for.body.for.inc_crit_edge
  %len.1 = phi i32 [ %add, %if.then33 ], [ %len.0102, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, 80
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %sl_flowlabel_hoplimit = getelementptr i8, ptr %attr, i32 -2096
  %26 = ptrtoint ptr %sl_flowlabel_hoplimit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sl_flowlabel_hoplimit, align 4
  %pkey = getelementptr i8, ptr %attr, i32 -2100
  %28 = ptrtoint ptr %pkey to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %pkey, align 8
  %conv41 = zext i16 %29 to i32
  %qkey = getelementptr i8, ptr %attr, i32 -2108
  %30 = ptrtoint ptr %qkey to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qkey, align 8
  %mtusel_mtu = getelementptr i8, ptr %attr, i32 -2102
  %32 = ptrtoint ptr %mtusel_mtu to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %mtusel_mtu, align 2
  %conv44 = zext i8 %33 to i32
  %34 = lshr i32 %conv44, 6
  %and49 = and i32 %conv44, 63
  %tclass = getelementptr i8, ptr %attr, i32 -2101
  %35 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tclass, align 1
  %conv51 = zext i8 %36 to i32
  %ratesel_rate = getelementptr i8, ptr %attr, i32 -2098
  %37 = ptrtoint ptr %ratesel_rate to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ratesel_rate, align 2
  %conv53 = zext i8 %38 to i32
  %39 = lshr i32 %conv53, 6
  %and59 = and i32 %conv53, 63
  %shr61 = lshr i32 %27, 28
  %and62 = lshr i32 %27, 8
  %shr63 = and i32 %and62, 1048575
  %and64 = and i32 %27, 255
  %proxy_join = getelementptr i8, ptr %attr, i32 -2091
  %40 = ptrtoint ptr %proxy_join to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %proxy_join, align 1
  %conv66 = zext i8 %41 to i32
  %call67 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.1, ptr noundef nonnull @.str.49, i32 noundef %conv41, i32 noundef %31, i32 noundef %34, i32 noundef %and49, i32 noundef %conv51, i32 noundef %39, i32 noundef %and59, i32 noundef %shr61, i32 noundef %shr63, i32 noundef %and64, i32 noundef %conv66) #9
  %add68 = add i32 %call67, %len.1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %pending_str) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %state_str) #9
  ret i32 %add68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_sysfs_port_mcg_attr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_reply_to_slave(i32 noundef %slave, ptr nocapture noundef readonly %group, ptr nocapture noundef readonly %req_sa_mad, i16 noundef zeroext %status) unnamed_addr #0 align 64 {
entry:
  %wc.i = alloca %struct.ib_wc, align 8
  %ah_attr.i = alloca %struct.rdma_ah_attr, align 8
  %mad = alloca %struct.ib_sa_mad, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %mad) #9
  %data = getelementptr inbounds %struct.ib_sa_mad, ptr %mad, i32 0, i32 3
  %0 = getelementptr inbounds i8, ptr %mad, i32 18
  %1 = call ptr @memset(ptr %0, i32 0, i32 238)
  %2 = ptrtoint ptr %mad to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %mad, align 1
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 1
  %3 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %mgmt_class, align 1
  %class_version = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 2
  %4 = ptrtoint ptr %class_version to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %class_version, align 1
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 3
  %5 = ptrtoint ptr %method to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -127, ptr %method, align 1
  %status6 = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 4
  %6 = ptrtoint ptr %status6 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %status, ptr %status6, align 1
  %class_specific = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 5
  %7 = ptrtoint ptr %class_specific to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 0, ptr %class_specific, align 1
  %tid = getelementptr inbounds %struct.ib_mad_hdr, ptr %req_sa_mad, i32 0, i32 6
  %8 = ptrtoint ptr %tid to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %tid, align 1
  %tid10 = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 6
  %10 = ptrtoint ptr %tid10 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %9, ptr %tid10, align 1
  store i8 0, ptr %tid10, align 1
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %mad, i32 0, i32 7
  %11 = ptrtoint ptr %attr_id to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 56, ptr %attr_id, align 1
  %sa_hdr = getelementptr inbounds %struct.ib_sa_mad, ptr %req_sa_mad, i32 0, i32 2
  %12 = ptrtoint ptr %sa_hdr to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %13 = load i64, ptr %sa_hdr, align 1
  %sa_hdr15 = getelementptr inbounds %struct.ib_sa_mad, ptr %mad, i32 0, i32 2
  %14 = ptrtoint ptr %sa_hdr15 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %sa_hdr15, align 1
  %attr_offset = getelementptr inbounds %struct.ib_sa_mad, ptr %mad, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %attr_offset to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 7, ptr %attr_offset, align 1
  %16 = call ptr @memcpy(ptr %data, ptr %group, i32 52)
  %scope_join_state = getelementptr inbounds %struct.ib_sa_mad, ptr %mad, i32 0, i32 3, i32 48
  %17 = ptrtoint ptr %scope_join_state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %scope_join_state, align 4
  %19 = and i8 %18, -16
  %join_state = getelementptr %struct.mcast_group, ptr %group, i32 0, i32 4, i32 %slave, i32 1
  %20 = ptrtoint ptr %join_state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %join_state, align 4
  %22 = and i8 %21, 15
  %or1 = or i8 %22, %19
  store i8 %or1, ptr %scope_join_state, align 4
  %port_gid = getelementptr inbounds %struct.ib_sa_mad, ptr %mad, i32 0, i32 3, i32 16
  %port_gid25 = getelementptr inbounds %struct.ib_sa_mad, ptr %req_sa_mad, i32 0, i32 3, i32 16
  %23 = call ptr @memcpy(ptr %port_gid, ptr %port_gid25, i32 16)
  %demux = getelementptr inbounds %struct.mcast_group, ptr %group, i32 0, i32 3
  %24 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %demux, align 8
  %dev1.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1.i, align 8
  %port.i = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %port.i, align 4
  %sub.i = add i32 %29, -1
  %arrayidx2.i = getelementptr %struct.mlx4_ib_dev, ptr %27, i32 0, i32 7, i32 %sub.i, i32 1
  %30 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx2.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %wc.i) #9
  %32 = call ptr @memset(ptr %wc.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr.i) #9
  %33 = call ptr @memset(ptr %ah_attr.i, i32 255, i32 56)
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %entry.send_mad_to_slave.exit_crit_edge, label %if.end.i

entry.send_mad_to_slave.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_mad_to_slave.exit

if.end.i:                                         ; preds = %entry
  %arrayidx5.i = getelementptr %struct.mlx4_ib_dev, ptr %27, i32 0, i32 8, i32 %sub.i
  %34 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx5.i, align 4
  %call.i = call i32 @rdma_query_ah(ptr noundef %35, ptr noundef nonnull %ah_attr.i) #9
  %36 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port.i, align 4
  %pkey_index.i = getelementptr inbounds %struct.ib_wc, ptr %wc.i, i32 0, i32 10
  %call7.i = call i32 @ib_find_cached_pkey(ptr noundef %27, i32 noundef %37, i16 noundef zeroext -1, ptr noundef %pkey_index.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.send_mad_to_slave.exit_crit_edge

if.end.i.send_mad_to_slave.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %send_mad_to_slave.exit

if.end10.i:                                       ; preds = %if.end.i
  %sl.i = getelementptr inbounds %struct.ib_wc, ptr %wc.i, i32 0, i32 11
  %38 = ptrtoint ptr %sl.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %sl.i, align 2
  %dlid_path_bits.i = getelementptr inbounds %struct.ib_wc, ptr %wc.i, i32 0, i32 12
  %39 = ptrtoint ptr %dlid_path_bits.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %dlid_path_bits.i, align 1
  %40 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port.i, align 4
  %port_num.i = getelementptr inbounds %struct.ib_wc, ptr %wc.i, i32 0, i32 13
  %42 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %port_num.i, align 8
  %type.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i, i32 0, i32 5
  %43 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %type.i.i, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %44, label %if.end10.i.rdma_ah_get_dlid.exit.i_crit_edge [
    i32 1, label %if.then.i.i
    i32 3, label %if.then4.i.i
  ]

if.end10.i.rdma_ah_get_dlid.exit.i_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdma_ah_get_dlid.exit.i

if.then.i.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i, i32 0, i32 6
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %46, align 8
  %conv.i.i = zext i16 %48 to i32
  br label %rdma_ah_get_dlid.exit.i

if.then4.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i, i32 0, i32 6
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 8
  br label %rdma_ah_get_dlid.exit.i

rdma_ah_get_dlid.exit.i:                          ; preds = %if.then4.i.i, %if.then.i.i, %if.end10.i.rdma_ah_get_dlid.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ %51, %if.then4.i.i ], [ 0, %if.end10.i.rdma_ah_get_dlid.exit.i_crit_edge ]
  %slid.i = getelementptr inbounds %struct.ib_wc, ptr %wc.i, i32 0, i32 8
  %52 = ptrtoint ptr %slid.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i.i, ptr %slid.i, align 4
  %src_qp.i = getelementptr inbounds %struct.ib_wc, ptr %wc.i, i32 0, i32 7
  %53 = ptrtoint ptr %src_qp.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %src_qp.i, align 8
  %call14.i = call i32 @mlx4_ib_send_to_slave(ptr noundef %27, i32 noundef %slave, i32 noundef %41, i32 noundef 1, ptr noundef nonnull %wc.i, ptr noundef null, ptr noundef nonnull %mad) #9
  br label %send_mad_to_slave.exit

send_mad_to_slave.exit:                           ; preds = %rdma_ah_get_dlid.exit.i, %if.end.i.send_mad_to_slave.exit_crit_edge, %entry.send_mad_to_slave.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr.i) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %wc.i) #9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %mad) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_query_ah(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_find_cached_pkey(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_send_to_slave(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @mlx4_ib_get_new_demux_tid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_mad_to_wire(ptr nocapture noundef readonly %ctx, ptr noundef %mad) unnamed_addr #0 align 64 {
entry:
  %ah_attr = alloca %struct.rdma_ah_attr, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr) #9
  %2 = call ptr @memset(ptr %ah_attr, i32 255, i32 56)
  %sm_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 9
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sm_lock) #9
  %port = getelementptr inbounds %struct.mlx4_ib_demux_ctx, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %sub = add i32 %4, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %1, i32 0, i32 8, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = call i32 @mlx4_ib_query_ah(ptr noundef nonnull %6, ptr noundef nonnull %ah_attr) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock, i32 noundef %call3) #9
  %dev13 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev13, align 8
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %function.i, align 8
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %call16 = call i32 @mlx4_ib_send_to_wire(ptr noundef %1, i32 noundef %10, i32 noundef %12, i32 noundef 1, i16 noundef zeroext 0, i32 noundef 1, i32 noundef -2147418112, ptr noundef nonnull %ah_attr, ptr noundef null, i16 noundef zeroext -1, ptr noundef %mad) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call16, %if.end ], [ -11, %if.then ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_query_ah(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_send_to_wire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @del_sysfs_port_mcg_attr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !16, !18, !19, !20, !22, !24, !25, !27, !28, !30, !32, !34, !35, !37, !38, !39, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 915, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mlx4_ib_mcg_demux_handler._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mlx4_ib_mcg_demux_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 925, i32 3}
!8 = !{ptr @mlx4_ib_mcg_demux_handler._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mlx4_ib_mcg_demux_handler._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 966, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mlx4_ib_mcg_multiplex_handler.__UNIQUE_ID_ddebug506, !11, !"__UNIQUE_ID_ddebug506", i1 false, i1 false}
!15 = !{ptr @.str.9, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 984, i32 3}
!18 = !{ptr @mlx4_ib_mcg_multiplex_handler._entry, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mlx4_ib_mcg_multiplex_handler._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1057, i32 16}
!22 = !{ptr @mlx4_ib_mcg_port_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1062, i32 2}
!24 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlx4_ib_mcg_port_cleanup.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1161, i32 2}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1257, i32 13}
!30 = !{ptr @clean_wq, !31, !"clean_wq", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 64, i32 33}
!32 = !{ptr @acquire_group.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 837, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @acquire_group.__key.16, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 838, i32 2}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @acquire_group.__key.18, !36, !"__key", i1 false, i1 false}
!39 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @acquire_group.__key.20, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 839, i32 2}
!42 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 840, i32 23}
!45 = !{ptr @acquire_group.__key.23, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 843, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 857, i32 3}
!49 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @acquire_group._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @acquire_group._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mgid0, !53, !"mgid0", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 62, i32 21}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 666, i32 4}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mlx4_ib_mcg_work_handler._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mlx4_ib_mcg_work_handler._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 685, i32 7}
!61 = !{ptr @mlx4_ib_mcg_work_handler._entry.28, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @mlx4_ib_mcg_work_handler._entry_ptr.30, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 565, i32 4}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mlx4_ib_mcg_timeout_handler._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mlx4_ib_mcg_timeout_handler._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 575, i32 3}
!70 = !{ptr @mlx4_ib_mcg_timeout_handler._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mlx4_ib_mcg_timeout_handler._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @mlx4_ib_mcg_timeout_handler._entry.36, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 579, i32 3}
!74 = !{ptr @mlx4_ib_mcg_timeout_handler._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 151, i32 10}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 153, i32 10}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 155, i32 10}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 157, i32 10}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 159, i32 9}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1003, i32 43}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1006, i32 43}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1011, i32 47}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1015, i32 47}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1019, i32 24}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1030, i32 35}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1036, i32 9}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 459, i32 4}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @release_group._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @release_group._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 879, i32 3}
!106 = !{ptr @queue_req._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @queue_req._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1115, i32 4}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @_mlx4_ib_mcg_port_cleanup.__UNIQUE_ID_ddebug507, !109, !"__UNIQUE_ID_ddebug507", i1 false, i1 false}
!112 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/hw/mlx4/mcg.c", i32 1201, i32 3}
!115 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @clear_pending_reqs._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @clear_pending_reqs._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!127 = !{i64 2148525758, i64 2148525784, i64 2148525813, i64 2148525847, i64 2148525878, i64 2148525901}
!128 = !{i64 2148614234}
!129 = !{i64 2148528943, i64 2148528975, i64 2148529004, i64 2148529038, i64 2148529069, i64 2148529092}
!130 = !{i64 2148614463}
!131 = !{i64 2149227367, i64 2149227372, i64 2149227385, i64 2149227429, i64 2149227463, i64 2149227484}
!132 = !{i64 2148528223, i64 2148528249, i64 2148528278, i64 2148528312, i64 2148528343, i64 2148528366}
