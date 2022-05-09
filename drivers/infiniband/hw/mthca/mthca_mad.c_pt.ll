; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mthca/mthca_mad.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mthca/mthca_mad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_mad_hdr = type { i8, i8, i8, i8, i16, i16, i64, i16, i16, i32 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.mthca_dev = type { %struct.ib_device, ptr, i32, i32, i32, i32, [64 x i8], i64, %union.anon.173, i64, i64, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, %union.anon.176, %struct.mthca_cmd, %struct.mthca_limits, %struct.mthca_uar_table, %struct.mthca_pd_table, %struct.mthca_mr_table, %struct.mthca_eq_table, %struct.mthca_cq_table, %struct.mthca_srq_table, %struct.mthca_qp_table, %struct.mthca_av_table, %struct.mthca_mcg_table, %struct.mthca_catas_err, %struct.mthca_uar, ptr, %struct.mthca_pd, %struct.mthca_mr, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x i8], i8 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.171 = type { %struct.ib_core_device }
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
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.173 = type { %struct.anon.175 }
%struct.anon.175 = type { i64, i64, i64, ptr, ptr, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.176 = type { %struct.anon.178 }
%struct.anon.178 = type { ptr, ptr }
%struct.mthca_cmd = type { ptr, %struct.mutex, %struct.semaphore, %struct.semaphore, i32, %struct.spinlock, i32, ptr, i16, i32, ptr, [8 x i16] }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.mthca_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.mthca_uar_table = type { %struct.mthca_alloc, i64, i32 }
%struct.mthca_alloc = type { i32, i32, i32, i32, %struct.spinlock, ptr }
%struct.mthca_pd_table = type { %struct.mthca_alloc }
%struct.mthca_mr_table = type { %struct.mthca_alloc, %struct.mthca_buddy, ptr, i64, i64, ptr, ptr, %struct.anon.179 }
%struct.mthca_buddy = type { ptr, ptr, i32, %struct.spinlock }
%struct.anon.179 = type { ptr, ptr, %struct.mthca_buddy }
%struct.mthca_eq_table = type { %struct.mthca_alloc, ptr, i32, i32, [3 x %struct.mthca_eq], i64, ptr, i32, i32, i8 }
%struct.mthca_eq = type { ptr, i32, i32, i32, i16, i16, i32, i32, ptr, %struct.mthca_mr, [64 x i8] }
%struct.mthca_cq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_array = type { ptr }
%struct.mthca_srq_table = type { %struct.mthca_alloc, %struct.spinlock, %struct.mthca_array, ptr }
%struct.mthca_qp_table = type { %struct.mthca_alloc, i32, i32, i32, %struct.spinlock, %struct.mthca_array, ptr, ptr, ptr }
%struct.mthca_av_table = type { ptr, i32, i64, ptr, %struct.mthca_alloc }
%struct.mthca_mcg_table = type { %struct.mutex, %struct.mthca_alloc, ptr }
%struct.mthca_catas_err = type { i64, ptr, i32, %struct.timer_list, %struct.list_head }
%struct.mthca_uar = type { i32, i32 }
%struct.mthca_pd = type { %struct.ib_pd, i32, %struct.atomic_t, %struct.mthca_mr, i32 }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mthca_mr = type { %struct.ib_mr, ptr, ptr }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ib_mad_send_buf = type { ptr, ptr, ptr, ptr, [2 x ptr], i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.172, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.172 = type { ptr }
%struct.ib_smp = type { i8, i8, i8, i8, i16, i8, i8, i64, i16, i16, i32, i64, i16, i16, [28 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.ib_mad_agent = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.list_head, i8, i8, i8 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }

@mthca_process_mad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 257, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MAD_IFC returned %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mthca_process_mad\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/infiniband/hw/mthca/mthca_mad.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mthca_process_mad._entry_ptr = internal global ptr @mthca_process_mad._entry, section ".printk_index", align 4
@mthca_create_agents.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->sm_lock\00", [18 x i8] zeroinitializer }, align 32
@mthca_create_agents._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to obtain port %d rate. aborting.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mthca_create_agents\00", [44 x i8] zeroinitializer }, align 32
@mthca_create_agents._entry_ptr = internal global ptr @mthca_create_agents._entry, section ".printk_index", align 4
@ib_lid_cpu16.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@mthca_update_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 63, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ib_query_port failed (%d) forport %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mthca_update_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mthca_update_rate._entry_ptr = internal global ptr @mthca_update_rate._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rdma_destroy_ah.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel AH shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 4, i64 9, i64 10, i64 129]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 7]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 129]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967222]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 129]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 129]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 2, i64 4, i64 8, i64 16]
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 257, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 289, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 308, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 4605, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private constant [43 x i8] c"../drivers/infiniband/hw/mthca/mthca_mad.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 61, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 3630, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @mthca_create_agents._entry, ptr @mthca_create_agents._entry_ptr, ptr @mthca_process_mad._entry, ptr @mthca_process_mad._entry_ptr, ptr @mthca_update_rate._entry, ptr @mthca_update_rate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mthca_create_agents.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_process_mad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_create_agents.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_create_agents._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mthca_update_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_process_mad(ptr noundef %ibdev, i32 noundef %mad_flags, i32 noundef %port_num, ptr noundef %in_wc, ptr noundef %in_grh, ptr noundef %in, ptr noundef %out, ptr nocapture noundef readnone %out_mad_size, ptr nocapture noundef readnone %out_mad_pkey_index) local_unnamed_addr #0 align 64 {
entry:
  %ah_attr.i.i = alloca %struct.rdma_ah_attr, align 8
  %event.i = alloca %struct.ib_event, align 4
  %pattr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %in_wc, null
  br i1 %tobool.not, label %cond.end.thread, label %cond.true

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pattr) #5
  %0 = call ptr @memset(ptr %pattr, i32 255, i32 72)
  %method208 = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 3
  %1 = ptrtoint ptr %method208 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %method208, align 1
  br label %if.end

cond.true:                                        ; preds = %entry
  %slid1 = getelementptr inbounds %struct.ib_wc, ptr %in_wc, i32 0, i32 8
  %3 = ptrtoint ptr %slid1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slid1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %4)
  %tobool.not.i = icmp ult i32 %4, 65536
  br i1 %tobool.not.i, label %cond.true.cond.end_crit_edge, label %land.rhs.i

cond.true.cond.end_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

land.rhs.i:                                       ; preds = %cond.true
  %.b39.i = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i, label %land.rhs.i.cond.end_crit_edge, label %if.then.i, !prof !37

land.rhs.i.cond.end_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 4605, i32 noundef 9, ptr noundef null) #5
  br label %cond.end

cond.end:                                         ; preds = %if.then.i, %land.rhs.i.cond.end_crit_edge, %cond.true.cond.end_crit_edge
  %conv.i = trunc i32 %4 to i16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %pattr) #5
  %5 = call ptr @memset(ptr %pattr, i32 255, i32 72)
  %method = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 3
  %6 = ptrtoint ptr %method to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %method, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp = icmp eq i8 %7, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool5.not = icmp eq i16 %conv.i, 0
  %or.cond = select i1 %cmp, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %cond.end
  %mgmt_class.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 1
  %8 = ptrtoint ptr %mgmt_class.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mgmt_class.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp.i = icmp ne i8 %9, 1
  %conv1.i = zext i1 %cmp.i to i32
  %sub.i = add i32 %port_num, -1
  %arrayidx2.i = getelementptr %struct.mthca_dev, ptr %ibdev, i32 0, i32 33, i32 %sub.i, i32 %conv1.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i188 = icmp eq ptr %11, null
  br i1 %tobool.not.i188, label %if.then.cleanup_crit_edge, label %if.then.i189

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i189:                                     ; preds = %if.then
  %call.i = tail call ptr @ib_create_send_mad(ptr noundef nonnull %11, i32 noundef %conv1.i, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 24, i32 noundef 232, i32 noundef 2592, i8 noundef zeroext 1) #5
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i189.cleanup_crit_edge, label %do.body5.i

if.then.i189.cleanup_crit_edge:                   ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body5.i:                                       ; preds = %if.then.i189
  %sm_lock.i = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 35
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sm_lock.i) #5
  %mad12.i = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %mad12.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mad12.i, align 4
  %14 = call ptr @memcpy(ptr %13, ptr %in, i32 256)
  %arrayidx14.i = getelementptr %struct.mthca_dev, ptr %ibdev, i32 0, i32 34, i32 %sub.i
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx14.i, align 4
  %ah.i = getelementptr inbounds %struct.ib_mad_send_buf, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %ah.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %ah.i, align 4
  %tobool15.not.i = icmp eq ptr %16, null
  br i1 %tobool15.not.i, label %if.then21.critedge.i, label %if.then16.i

if.then16.i:                                      ; preds = %do.body5.i
  %call17.i = tail call i32 @ib_post_send_mad(ptr noundef %call.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %phi.cmp.i = icmp eq i32 %call17.i, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock.i, i32 noundef %call9.i) #5
  br i1 %phi.cmp.i, label %if.then16.i.cleanup_crit_edge, label %if.then16.i.if.then21.i_crit_edge

if.then16.i.if.then21.i_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then21.i

if.then16.i.cleanup_crit_edge:                    ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then21.critedge.i:                             ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock.i, i32 noundef %call9.i) #5
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.then21.critedge.i, %if.then16.i.if.then21.i_crit_edge
  tail call void @ib_free_send_mad(ptr noundef %call.i) #5
  br label %cleanup

if.end:                                           ; preds = %cond.end.if.end_crit_edge, %cond.end.thread
  %18 = phi i8 [ %2, %cond.end.thread ], [ %7, %cond.end.if.end_crit_edge ]
  %method212 = phi ptr [ %method208, %cond.end.thread ], [ %method, %cond.end.if.end_crit_edge ]
  %mgmt_class = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 1
  %19 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %mgmt_class, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i8 %20, label %if.end.cleanup_crit_edge [
    i8 1, label %if.end.if.then16_crit_edge
    i8 -127, label %if.end.if.then16_crit_edge213
    i8 4, label %if.end.if.then65_crit_edge
    i8 9, label %if.end.if.then65_crit_edge214
    i8 10, label %if.end.if.then65_crit_edge215
  ]

if.end.if.then65_crit_edge215:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65

if.end.if.then65_crit_edge214:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65

if.end.if.then65_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65

if.end.if.then16_crit_edge213:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end.if.then16_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end.if.then16_crit_edge, %if.end.if.then16_crit_edge213
  %22 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %18, label %if.then16.cleanup_crit_edge [
    i8 1, label %if.then16.if.end35_crit_edge
    i8 2, label %if.then16.if.end35_crit_edge216
    i8 7, label %if.then16.if.end35_crit_edge217
  ]

if.then16.if.end35_crit_edge217:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then16.if.end35_crit_edge216:                  ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then16.if.end35_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.then16.if.end35_crit_edge, %if.then16.if.end35_crit_edge216, %if.then16.if.end35_crit_edge217
  %attr_id = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 7
  %23 = ptrtoint ptr %attr_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %attr_id, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %24)
  %cmp38 = icmp eq i16 %24, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %24)
  %cmp44 = icmp ugt i16 %24, -257
  %or.cond187 = or i1 %cmp38, %cmp44
  br i1 %or.cond187, label %if.end35.cleanup_crit_edge, label %if.end35.if.end81_crit_edge

if.end35.if.end81_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65:                                        ; preds = %if.end.if.then65_crit_edge, %if.end.if.then65_crit_edge214, %if.end.if.then65_crit_edge215
  %.off = add i8 %18, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then65.if.end81_crit_edge, label %if.then65.cleanup_crit_edge

if.then65.cleanup_crit_edge:                      ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then65.if.end81_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.end81:                                         ; preds = %if.then65.if.end81_crit_edge, %if.end35.if.end81_crit_edge
  %25 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %20, label %if.end81.if.end110_crit_edge [
    i8 1, label %if.end81.land.lhs.true93_crit_edge
    i8 -127, label %if.end81.land.lhs.true93_crit_edge218
  ]

if.end81.land.lhs.true93_crit_edge218:            ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true93

if.end81.land.lhs.true93_crit_edge:               ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true93

if.end81.if.end110_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.lhs.true93:                                  ; preds = %if.end81.land.lhs.true93_crit_edge, %if.end81.land.lhs.true93_crit_edge218
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp97 = icmp eq i8 %18, 2
  br i1 %cmp97, label %land.lhs.true99, label %land.lhs.true93.if.end110_crit_edge

land.lhs.true93.if.end110_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.lhs.true99:                                  ; preds = %land.lhs.true93
  %attr_id101 = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 7
  %26 = ptrtoint ptr %attr_id101 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %attr_id101, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %27)
  %cmp103 = icmp eq i16 %27, 21
  br i1 %cmp103, label %land.lhs.true105, label %land.lhs.true99.if.end110_crit_edge

land.lhs.true99.if.end110_crit_edge:              ; preds = %land.lhs.true99
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

land.lhs.true105:                                 ; preds = %land.lhs.true99
  %call106 = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %pattr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.then108, label %land.lhs.true105.if.end110_crit_edge

land.lhs.true105.if.end110_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end110

if.then108:                                       ; preds = %land.lhs.true105
  %lid = getelementptr inbounds %struct.ib_port_attr, ptr %pattr, i32 0, i32 13
  %28 = ptrtoint ptr %lid to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %lid, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %29)
  %tobool.not.i190 = icmp ult i32 %29, 65536
  br i1 %tobool.not.i190, label %if.then108.ib_lid_cpu16.exit195_crit_edge, label %land.rhs.i192

if.then108.ib_lid_cpu16.exit195_crit_edge:        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_lid_cpu16.exit195

land.rhs.i192:                                    ; preds = %if.then108
  %.b39.i191 = load i1, ptr @ib_lid_cpu16.__already_done, align 1
  br i1 %.b39.i191, label %land.rhs.i192.ib_lid_cpu16.exit195_crit_edge, label %if.then.i193, !prof !37

land.rhs.i192.ib_lid_cpu16.exit195_crit_edge:     ; preds = %land.rhs.i192
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_lid_cpu16.exit195

if.then.i193:                                     ; preds = %land.rhs.i192
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ib_lid_cpu16.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 4605, i32 noundef 9, ptr noundef null) #5
  br label %ib_lid_cpu16.exit195

ib_lid_cpu16.exit195:                             ; preds = %if.then.i193, %land.rhs.i192.ib_lid_cpu16.exit195_crit_edge, %if.then108.ib_lid_cpu16.exit195_crit_edge
  %conv.i194 = trunc i32 %29 to i16
  br label %if.end110

if.end110:                                        ; preds = %ib_lid_cpu16.exit195, %land.lhs.true105.if.end110_crit_edge, %land.lhs.true99.if.end110_crit_edge, %land.lhs.true93.if.end110_crit_edge, %if.end81.if.end110_crit_edge
  %prev_lid.0 = phi i16 [ 0, %land.lhs.true105.if.end110_crit_edge ], [ %conv.i194, %ib_lid_cpu16.exit195 ], [ 0, %land.lhs.true99.if.end110_crit_edge ], [ 0, %land.lhs.true93.if.end110_crit_edge ], [ 0, %if.end81.if.end110_crit_edge ]
  %and112 = and i32 %mad_flags, 1
  %and113 = and i32 %mad_flags, 2
  %call114 = call i32 @mthca_MAD_IFC(ptr noundef %ibdev, i32 noundef %and112, i32 noundef %and113, i32 noundef %port_num, ptr noundef %in_wc, ptr noundef %in_grh, ptr noundef %in, ptr noundef %out) #5
  %30 = zext i32 %call114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %call114, label %do.end [
    i32 -74, label %if.end110.cleanup_crit_edge
    i32 0, label %if.end123
  ]

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 1
  %31 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %call114) #8
  br label %cleanup

if.end123:                                        ; preds = %if.end110
  %status = getelementptr inbounds %struct.ib_mad_hdr, ptr %out, i32 0, i32 4
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool125.not = icmp eq i16 %34, 0
  br i1 %tobool125.not, label %if.then126, label %if.end123.if.end128_crit_edge

if.end123.if.end128_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.then126:                                       ; preds = %if.end123
  %conv127 = trunc i32 %port_num to i8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %event.i) #5
  %35 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %event.i, align 4, !annotation !38
  %36 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 1
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -1 to ptr), ptr %36, align 4, !annotation !38
  %38 = getelementptr inbounds %struct.ib_event, ptr %event.i, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %38, align 4, !annotation !38
  %40 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mgmt_class, align 1
  %42 = zext i8 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %41, label %if.then126.smp_snoop.exit_crit_edge [
    i8 1, label %if.then126.land.lhs.true.i_crit_edge
    i8 -127, label %if.then126.land.lhs.true.i_crit_edge219
  ]

if.then126.land.lhs.true.i_crit_edge219:          ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then126.land.lhs.true.i_crit_edge:             ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

if.then126.smp_snoop.exit_crit_edge:              ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #7
  br label %smp_snoop.exit

land.lhs.true.i:                                  ; preds = %if.then126.land.lhs.true.i_crit_edge, %if.then126.land.lhs.true.i_crit_edge219
  %43 = ptrtoint ptr %method212 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %method212, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %cmp9.i = icmp eq i8 %44, 2
  br i1 %cmp9.i, label %if.then.i197, label %land.lhs.true.i.smp_snoop.exit_crit_edge

land.lhs.true.i.smp_snoop.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smp_snoop.exit

if.then.i197:                                     ; preds = %land.lhs.true.i
  %attr_id.i = getelementptr inbounds %struct.ib_mad_hdr, ptr %in, i32 0, i32 7
  %45 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %attr_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %46)
  %cmp13.i = icmp eq i16 %46, 21
  br i1 %cmp13.i, label %if.then15.i, label %if.then.i197.if.end33.i_crit_edge

if.then.i197.if.end33.i_crit_edge:                ; preds = %if.then.i197
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

if.then15.i:                                      ; preds = %if.then.i197
  %lid16.i = getelementptr inbounds %struct.ib_smp, ptr %in, i32 0, i32 15, i32 16
  %47 = ptrtoint ptr %lid16.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %lid16.i, align 8
  %call17.i198 = call fastcc i32 @mthca_update_rate(ptr noundef %ibdev, i8 noundef zeroext %conv127) #5
  %sm_lid.i = getelementptr inbounds %struct.ib_smp, ptr %in, i32 0, i32 15, i32 18
  %49 = ptrtoint ptr %sm_lid.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sm_lid.i, align 2
  %neighbormtu_mastersmsl.i = getelementptr inbounds %struct.ib_smp, ptr %in, i32 0, i32 15, i32 36
  %51 = ptrtoint ptr %neighbormtu_mastersmsl.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %neighbormtu_mastersmsl.i, align 4
  %53 = and i8 %52, 15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %ah_attr.i.i) #5
  %conv.i.i = and i32 %port_num, 255
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %arrayidx.i.i = getelementptr %struct.mthca_dev, ptr %ibdev, i32 0, i32 33, i32 %sub.i.i
  %54 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.then15.i.update_sm_ah.exit.i_crit_edge, label %if.end.i.i

if.then15.i.update_sm_ah.exit.i_crit_edge:        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_sm_ah.exit.i

if.end.i.i:                                       ; preds = %if.then15.i
  %56 = call ptr @memset(ptr %ah_attr.i.i, i32 0, i32 56)
  %port_data.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %57 = ptrtoint ptr %port_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %port_data.i.i.i.i, align 8
  %core_cap_flags.i.i.i.i = getelementptr %struct.ib_port_data, ptr %58, i32 %conv.i.i, i32 1, i32 2
  %59 = ptrtoint ptr %core_cap_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %core_cap_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %60, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i.i, label %if.end.i.i.rdma_ah_find_type.exit.thread.i.i_crit_edge

if.end.i.i.rdma_ah_find_type.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rdma_ah_find_type.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i
  %and.i13.i.i.i = and i32 %60, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13.i.i.i)
  %tobool.i14.not.i.i.i = icmp eq i32 %and.i13.i.i.i, 0
  br i1 %tobool.i14.not.i.i.i, label %if.end.i.i.i.rdma_ah_find_type.exit.thread.i.i_crit_edge, label %if.then2.i.i.i

if.end.i.i.i.rdma_ah_find_type.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rdma_ah_find_type.exit.thread.i.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  %and.i17.i.i.i = and i32 %60, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %and.i17.i.i.i, 0
  %type57.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i.i, i32 0, i32 5
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i, label %if.then5.i.i.i

rdma_ah_find_type.exit.thread.i.i:                ; preds = %if.end.i.i.i.rdma_ah_find_type.exit.thread.i.i_crit_edge, %if.end.i.i.rdma_ah_find_type.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ 0, %if.end.i.i.i.rdma_ah_find_type.exit.thread.i.i_crit_edge ], [ 2, %if.end.i.i.rdma_ah_find_type.exit.thread.i.i_crit_edge ]
  %type53.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %type53.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %retval.0.i.ph.i.i, ptr %type53.i.i, align 4
  br label %rdma_ah_set_dlid.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %type57.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %type57.i.i, align 4
  %63 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i.i, i32 0, i32 6
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %50, ptr %63, align 8
  br label %rdma_ah_set_dlid.exit.i.i

if.then5.i.i.i:                                   ; preds = %if.then2.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %type57.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %type57.i.i, align 4
  %conv3.i.i = zext i16 %50 to i32
  %66 = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i.i, i32 0, i32 6
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv3.i.i, ptr %66, align 8
  br label %rdma_ah_set_dlid.exit.i.i

rdma_ah_set_dlid.exit.i.i:                        ; preds = %if.then5.i.i.i, %if.then.i.i.i, %rdma_ah_find_type.exit.thread.i.i
  %sl1.i.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %sl1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %53, ptr %sl1.i.i.i, align 8
  %port_num1.i.i.i = getelementptr inbounds %struct.rdma_ah_attr, ptr %ah_attr.i.i, i32 0, i32 3
  %69 = ptrtoint ptr %port_num1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv.i.i, ptr %port_num1.i.i.i, align 4
  %qp.i.i = getelementptr inbounds %struct.ib_mad_agent, ptr %55, i32 0, i32 1
  %70 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %qp.i.i, align 4
  %pd.i.i = getelementptr inbounds %struct.ib_qp, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pd.i.i, align 4
  %call10.i.i = call ptr @rdma_create_ah(ptr noundef %73, ptr noundef nonnull %ah_attr.i.i, i32 noundef 0) #5
  %cmp.i.i.i = icmp ugt ptr %call10.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %rdma_ah_set_dlid.exit.i.i.update_sm_ah.exit.i_crit_edge, label %do.body14.i.i

rdma_ah_set_dlid.exit.i.i.update_sm_ah.exit.i_crit_edge: ; preds = %rdma_ah_set_dlid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %update_sm_ah.exit.i

do.body14.i.i:                                    ; preds = %rdma_ah_set_dlid.exit.i.i
  %sm_lock.i.i = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 35
  %call17.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %sm_lock.i.i) #5
  %arrayidx22.i.i = getelementptr %struct.mthca_dev, ptr %ibdev, i32 0, i32 34, i32 %sub.i.i
  %74 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx22.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %75, null
  br i1 %tobool23.not.i.i, label %do.body14.i.i.if.end29.i.i_crit_edge, label %if.then24.i.i

do.body14.i.i.if.end29.i.i_crit_edge:             ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

if.then24.i.i:                                    ; preds = %do.body14.i.i
  %call.i.i.i = call i32 @rdma_destroy_ah_user(ptr noundef nonnull %75, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then24.i.i.if.end29.i.i_crit_edge, label %land.rhs.i.i.i

if.then24.i.i.if.end29.i.i_crit_edge:             ; preds = %if.then24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

land.rhs.i.i.i:                                   ; preds = %if.then24.i.i
  %.b38.i.i.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.rhs.i.i.i.if.end29.i.i_crit_edge, label %if.then.i51.i.i, !prof !37

land.rhs.i.i.i.if.end29.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i.i

if.then.i51.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.12) #5
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i51.i.i, %land.rhs.i.i.i.if.end29.i.i_crit_edge, %if.then24.i.i.if.end29.i.i_crit_edge, %do.body14.i.i.if.end29.i.i_crit_edge
  %76 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call10.i.i, ptr %arrayidx22.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock.i.i, i32 noundef %call17.i.i) #5
  br label %update_sm_ah.exit.i

update_sm_ah.exit.i:                              ; preds = %if.end29.i.i, %rdma_ah_set_dlid.exit.i.i.update_sm_ah.exit.i_crit_edge, %if.then15.i.update_sm_ah.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %ah_attr.i.i) #5
  %77 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %ibdev, ptr %event.i, align 4
  %78 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv.i.i, ptr %36, align 4
  %clientrereg_resv_subnetto.i = getelementptr inbounds %struct.ib_smp, ptr %in, i32 0, i32 15, i32 51
  %79 = ptrtoint ptr %clientrereg_resv_subnetto.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %clientrereg_resv_subnetto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %tobool.not.i199 = icmp sgt i8 %80, -1
  br i1 %tobool.not.i199, label %update_sm_ah.exit.i.if.end.i_crit_edge, label %if.then24.i

update_sm_ah.exit.i.if.end.i_crit_edge:           ; preds = %update_sm_ah.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then24.i:                                      ; preds = %update_sm_ah.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 17, ptr %38, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then24.i, %update_sm_ah.exit.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %prev_lid.0)
  %cmp28.not.i = icmp eq i16 %48, %prev_lid.0
  br i1 %cmp28.not.i, label %if.end.i.if.end33thread-pre-split.i_crit_edge, label %if.then30.i

if.end.i.if.end33thread-pre-split.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33thread-pre-split.i

if.then30.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 11, ptr %38, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #5
  br label %if.end33thread-pre-split.i

if.end33thread-pre-split.i:                       ; preds = %if.then30.i, %if.end.i.if.end33thread-pre-split.i_crit_edge
  %83 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %.pr.i = load i16, ptr %attr_id.i, align 8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.end33thread-pre-split.i, %if.then.i197.if.end33.i_crit_edge
  %84 = phi i16 [ %.pr.i, %if.end33thread-pre-split.i ], [ %46, %if.then.i197.if.end33.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %84)
  %cmp37.i = icmp eq i16 %84, 22
  br i1 %cmp37.i, label %if.then39.i, label %if.end33.i.smp_snoop.exit_crit_edge

if.end33.i.smp_snoop.exit_crit_edge:              ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %smp_snoop.exit

if.then39.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %ibdev, ptr %event.i, align 4
  %86 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 12, ptr %38, align 4
  %conv42.i = and i32 %port_num, 255
  %87 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %conv42.i, ptr %36, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %event.i) #5
  br label %smp_snoop.exit

smp_snoop.exit:                                   ; preds = %if.then39.i, %if.end33.i.smp_snoop.exit_crit_edge, %land.lhs.true.i.smp_snoop.exit_crit_edge, %if.then126.smp_snoop.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %event.i) #5
  %mgmt_class.i200 = getelementptr inbounds %struct.ib_mad_hdr, ptr %out, i32 0, i32 1
  %88 = ptrtoint ptr %mgmt_class.i200 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %mgmt_class.i200, align 1
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %89, label %smp_snoop.exit.if.end128_crit_edge [
    i8 1, label %smp_snoop.exit.land.lhs.true.i203_crit_edge
    i8 -127, label %smp_snoop.exit.land.lhs.true.i203_crit_edge220
  ]

smp_snoop.exit.land.lhs.true.i203_crit_edge220:   ; preds = %smp_snoop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i203

smp_snoop.exit.land.lhs.true.i203_crit_edge:      ; preds = %smp_snoop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i203

smp_snoop.exit.if.end128_crit_edge:               ; preds = %smp_snoop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

land.lhs.true.i203:                               ; preds = %smp_snoop.exit.land.lhs.true.i203_crit_edge, %smp_snoop.exit.land.lhs.true.i203_crit_edge220
  %method.i201 = getelementptr inbounds %struct.ib_mad_hdr, ptr %out, i32 0, i32 3
  %91 = ptrtoint ptr %method.i201 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %method.i201, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %92)
  %cmp9.i202 = icmp eq i8 %92, -127
  br i1 %cmp9.i202, label %land.lhs.true11.i, label %land.lhs.true.i203.if.end128_crit_edge

land.lhs.true.i203.if.end128_crit_edge:           ; preds = %land.lhs.true.i203
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

land.lhs.true11.i:                                ; preds = %land.lhs.true.i203
  %attr_id.i204 = getelementptr inbounds %struct.ib_mad_hdr, ptr %out, i32 0, i32 7
  %93 = ptrtoint ptr %attr_id.i204 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %attr_id.i204, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %94)
  %cmp14.i = icmp eq i16 %94, 16
  br i1 %cmp14.i, label %if.then.i205, label %land.lhs.true11.i.if.end128_crit_edge

land.lhs.true11.i.if.end128_crit_edge:            ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end128

if.then.i205:                                     ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #7
  %cap_mask_mutex.i = getelementptr inbounds %struct.mthca_dev, ptr %ibdev, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %cap_mask_mutex.i, i32 noundef 0) #5
  %data.i = getelementptr inbounds %struct.ib_smp, ptr %out, i32 0, i32 15
  %node_desc.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 16
  %95 = call ptr @memcpy(ptr %data.i, ptr %node_desc.i, i32 64)
  call void @mutex_unlock(ptr noundef %cap_mask_mutex.i) #5
  br label %if.end128

if.end128:                                        ; preds = %if.then.i205, %land.lhs.true11.i.if.end128_crit_edge, %land.lhs.true.i203.if.end128_crit_edge, %smp_snoop.exit.if.end128_crit_edge, %if.end123.if.end128_crit_edge
  %96 = ptrtoint ptr %mgmt_class to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %mgmt_class, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %97)
  %cmp132 = icmp eq i8 %97, -127
  br i1 %cmp132, label %if.then134, label %if.end128.if.end139_crit_edge

if.end128.if.end139_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end139

if.then134:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #7
  %98 = ptrtoint ptr %status to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %status, align 4
  %100 = or i16 %99, -32768
  store i16 %100, ptr %status, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then134, %if.end128.if.end139_crit_edge
  %101 = ptrtoint ptr %method212 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %method212, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %102)
  %cmp143 = icmp eq i8 %102, 7
  %. = select i1 %cmp143, i32 5, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %do.end, %if.end110.cleanup_crit_edge, %if.then65.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then21.i, %if.then16.i.cleanup_crit_edge, %if.then.i189.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then16.cleanup_crit_edge ], [ 1, %if.end35.cleanup_crit_edge ], [ 1, %if.then65.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end110.cleanup_crit_edge ], [ %., %if.end139 ], [ 5, %if.then.cleanup_crit_edge ], [ 5, %if.then.i189.cleanup_crit_edge ], [ 5, %if.then16.i.cleanup_crit_edge ], [ 5, %if.then21.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %pattr) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mthca_MAD_IFC(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mthca_create_agents(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sm_lock = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 35
  tail call void @__raw_spin_lock_init(ptr noundef %sm_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @mthca_create_agents.__key, i16 noundef signext 3) #5
  %limits = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp90 = icmp sgt i32 %1, 0
  br i1 %cmp90, label %entry.for.cond1.preheader_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %if.end.1.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %p.091 = phi i32 [ %add, %if.end.1.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %add = add nuw nsw i32 %p.091, 1
  %call4 = tail call ptr @ib_register_mad_agent(ptr noundef %dev, i32 noundef %add, i32 noundef 0, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @send_handler, ptr noundef null, ptr noundef null, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.cond1.preheader.if.then_crit_edge, label %if.end

for.cond1.preheader.if.then_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

for.cond11.preheader:                             ; preds = %if.end.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp14.not92 = icmp slt i32 %6, 1
  br i1 %cmp14.not92, label %for.cond11.preheader.cleanup_crit_edge, label %for.cond11.preheader.for.body15_crit_edge

for.cond11.preheader.for.body15_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body15

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %if.end.if.then_crit_edge, %for.cond1.preheader.if.then_crit_edge
  %call4.lcssa = phi ptr [ %call4, %for.cond1.preheader.if.then_crit_edge ], [ %call4.1, %if.end.if.then_crit_edge ]
  %2 = ptrtoint ptr %call4.lcssa to i32
  br label %err

if.end:                                           ; preds = %for.cond1.preheader
  %arrayidx7 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 33, i32 %p.091, i32 0
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %arrayidx7, align 4
  %call4.1 = tail call ptr @ib_register_mad_agent(ptr noundef %dev, i32 noundef %add, i32 noundef 1, ptr noundef null, i8 noundef zeroext 0, ptr noundef nonnull @send_handler, ptr noundef null, ptr noundef null, i32 noundef 0) #5
  %cmp.i.1 = icmp ugt ptr %call4.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1, label %if.end.if.then_crit_edge, label %if.end.1

if.end.if.then_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end.1:                                         ; preds = %if.end
  %arrayidx7.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 33, i32 %p.091, i32 1
  %4 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4.1, ptr %arrayidx7.1, align 4
  %5 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %limits, align 8
  %cmp = icmp slt i32 %add, %6
  br i1 %cmp, label %if.end.1.for.cond1.preheader_crit_edge, label %for.cond11.preheader

if.end.1.for.cond1.preheader_crit_edge:           ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.body15:                                       ; preds = %for.inc24.for.body15_crit_edge, %for.cond11.preheader.for.body15_crit_edge
  %p.193 = phi i32 [ %inc25, %for.inc24.for.body15_crit_edge ], [ 1, %for.cond11.preheader.for.body15_crit_edge ]
  %conv = trunc i32 %p.193 to i8
  %call16 = tail call fastcc i32 @mthca_update_rate(ptr noundef %dev, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.inc24, label %do.end21

do.end21:                                         ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #7
  %pdev = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.6, i32 noundef %p.193) #8
  br label %err

for.inc24:                                        ; preds = %for.body15
  %inc25 = add i32 %p.193, 1
  %9 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %limits, align 8
  %cmp14.not = icmp sgt i32 %inc25, %10
  br i1 %cmp14.not, label %for.inc24.cleanup_crit_edge, label %for.inc24.for.body15_crit_edge

for.inc24.for.body15_crit_edge:                   ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body15

for.inc24.cleanup_crit_edge:                      ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err:                                              ; preds = %do.end21, %if.then
  %ret.0 = phi i32 [ %2, %if.then ], [ %call16, %do.end21 ]
  %11 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %limits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3095 = icmp sgt i32 %12, 0
  br i1 %cmp3095, label %err.for.cond33.preheader_crit_edge, label %err.cleanup_crit_edge

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err.for.cond33.preheader_crit_edge:               ; preds = %err
  br label %for.cond33.preheader

for.cond33.preheader:                             ; preds = %for.inc46.1.for.cond33.preheader_crit_edge, %err.for.cond33.preheader_crit_edge
  %p.296 = phi i32 [ %inc50, %for.inc46.1.for.cond33.preheader_crit_edge ], [ 0, %err.for.cond33.preheader_crit_edge ]
  %arrayidx39 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 33, i32 %p.296, i32 0
  %13 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %14, null
  br i1 %tobool40.not, label %for.cond33.preheader.for.inc46_crit_edge, label %if.then41

for.cond33.preheader.for.inc46_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc46

if.then41:                                        ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %14) #5
  br label %for.inc46

for.inc46:                                        ; preds = %if.then41, %for.cond33.preheader.for.inc46_crit_edge
  %arrayidx39.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 33, i32 %p.296, i32 1
  %15 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx39.1, align 4
  %tobool40.not.1 = icmp eq ptr %16, null
  br i1 %tobool40.not.1, label %for.inc46.for.inc46.1_crit_edge, label %if.then41.1

for.inc46.for.inc46.1_crit_edge:                  ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc46.1

if.then41.1:                                      ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ib_unregister_mad_agent(ptr noundef nonnull %16) #5
  br label %for.inc46.1

for.inc46.1:                                      ; preds = %if.then41.1, %for.inc46.for.inc46.1_crit_edge
  %inc50 = add nuw nsw i32 %p.296, 1
  %17 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %limits, align 8
  %cmp30 = icmp slt i32 %inc50, %18
  br i1 %cmp30, label %for.inc46.1.for.cond33.preheader_crit_edge, label %for.inc46.1.cleanup_crit_edge

for.inc46.1.cleanup_crit_edge:                    ; preds = %for.inc46.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc46.1.for.cond33.preheader_crit_edge:       ; preds = %for.inc46.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond33.preheader

cleanup:                                          ; preds = %for.inc46.1.cleanup_crit_edge, %err.cleanup_crit_edge, %for.inc24.cleanup_crit_edge, %for.cond11.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err.cleanup_crit_edge ], [ 0, %for.cond11.preheader.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %for.inc46.1.cleanup_crit_edge ], [ 0, %for.inc24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_register_mad_agent(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_handler(ptr nocapture noundef readnone %agent, ptr nocapture noundef readonly %mad_send_wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mad_send_wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mad_send_wc, align 4
  tail call void @ib_free_send_mad(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mthca_update_rate(ptr noundef %dev, i8 noundef zeroext %port_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 72) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %port_num to i32
  %call1 = tail call i32 @ib_query_port(ptr noundef %dev, i32 noundef %conv, ptr noundef nonnull %call7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = getelementptr inbounds %struct.ib_device, ptr %dev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %call1, i32 noundef %conv) #8
  br label %out

if.end6:                                          ; preds = %if.end
  %active_speed = getelementptr inbounds %struct.ib_port_attr, ptr %call7.i, i32 0, i32 20
  %2 = ptrtoint ptr %active_speed to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %active_speed, align 2
  %conv7 = trunc i16 %3 to i8
  %active_width = getelementptr inbounds %struct.ib_port_attr, ptr %call7.i, i32 0, i32 19
  %4 = ptrtoint ptr %active_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active_width, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %5, label %sw.default.i [
    i8 1, label %if.end6.ib_width_enum_to_int.exit_crit_edge
    i8 16, label %sw.bb1.i
    i8 2, label %sw.bb2.i
    i8 4, label %sw.bb3.i
    i8 8, label %sw.bb4.i
  ]

if.end6.ib_width_enum_to_int.exit_crit_edge:      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_width_enum_to_int.exit

sw.bb1.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_width_enum_to_int.exit

sw.bb2.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_width_enum_to_int.exit

sw.bb3.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_width_enum_to_int.exit

sw.bb4.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_width_enum_to_int.exit

sw.default.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %ib_width_enum_to_int.exit

ib_width_enum_to_int.exit:                        ; preds = %sw.default.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end6.ib_width_enum_to_int.exit_crit_edge
  %retval.0.i = phi i8 [ -1, %sw.default.i ], [ 12, %sw.bb4.i ], [ 8, %sw.bb3.i ], [ 4, %sw.bb2.i ], [ 2, %sw.bb1.i ], [ %5, %if.end6.ib_width_enum_to_int.exit_crit_edge ]
  %mul = mul i8 %retval.0.i, %conv7
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 36, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %mul, ptr %arrayidx, align 1
  br label %out

out:                                              ; preds = %ib_width_enum_to_int.exit, %do.end
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_mad_agent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mthca_free_agents(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %limits = getelementptr inbounds %struct.mthca_dev, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %limits, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp27 = icmp sgt i32 %1, 0
  br i1 %cmp27, label %entry.for.cond1.preheader_crit_edge, label %entry.for.end13_crit_edge

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc11.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %p.028 = phi i32 [ %inc12, %for.inc11.for.cond1.preheader_crit_edge ], [ 0, %entry.for.cond1.preheader_crit_edge ]
  %arrayidx4 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 33, i32 %p.028, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  store ptr null, ptr %arrayidx4, align 4
  tail call void @ib_unregister_mad_agent(ptr noundef %3) #5
  %arrayidx4.1 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 33, i32 %p.028, i32 1
  %4 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4.1, align 4
  store ptr null, ptr %arrayidx4.1, align 4
  tail call void @ib_unregister_mad_agent(ptr noundef %5) #5
  %arrayidx8 = getelementptr %struct.mthca_dev, ptr %dev, i32 0, i32 34, i32 %p.028
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx8, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.cond1.preheader.for.inc11_crit_edge, label %if.then

for.cond1.preheader.for.inc11_crit_edge:          ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc11

if.then:                                          ; preds = %for.cond1.preheader
  %call.i = tail call i32 @rdma_destroy_ah_user(ptr noundef nonnull %7, i32 noundef 1, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.for.inc11_crit_edge, label %land.rhs.i

if.then.for.inc11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc11

land.rhs.i:                                       ; preds = %if.then
  %.b38.i = load i1, ptr @rdma_destroy_ah.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.for.inc11_crit_edge, label %if.then.i, !prof !37

land.rhs.i.for.inc11_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc11

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rdma_destroy_ah.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 3630, i32 noundef 9, ptr noundef nonnull @.str.12) #5
  br label %for.inc11

for.inc11:                                        ; preds = %if.then.i, %land.rhs.i.for.inc11_crit_edge, %if.then.for.inc11_crit_edge, %for.cond1.preheader.for.inc11_crit_edge
  %inc12 = add nuw nsw i32 %p.028, 1
  %8 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %limits, align 8
  %cmp = icmp slt i32 %inc12, %9
  br i1 %cmp, label %for.inc11.for.cond1.preheader_crit_edge, label %for.inc11.for.end13_crit_edge

for.inc11.for.end13_crit_edge:                    ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end13

for.inc11.for.cond1.preheader_crit_edge:          ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.end13:                                        ; preds = %for.inc11.for.end13_crit_edge, %entry.for.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_send_mad(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_post_send_mad(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_free_send_mad(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_create_ah(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_destroy_ah_user(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mthca/mthca_mad.c", i32 257, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mthca_process_mad._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mthca_process_mad._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mthca_create_agents.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/hw/mthca/mthca_mad.c", i32 289, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/hw/mthca/mthca_mad.c", i32 308, i32 4}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mthca_create_agents._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @mthca_create_agents._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/rdma/ib_verbs.h", i32 4605, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/hw/mthca/mthca_mad.c", i32 61, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mthca_update_rate._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @mthca_update_rate._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/rdma/ib_verbs.h", i32 3630, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{!"auto-init"}
