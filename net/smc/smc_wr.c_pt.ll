; ModuleID = '/llk/IR_all_yes/net/smc/smc_wr.c_pt.bc'
source_filename = "../net/smc/smc_wr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.smc_ib_device = type { %struct.list_head, ptr, [2 x %struct.ib_port_attr], %struct.ib_event_handler, ptr, ptr, %struct.tasklet_struct, %struct.tasklet_struct, [2 x [6 x i8]], [2 x [16 x i8]], [2 x i8], i8, %struct.work_struct, i32, [1 x i32], %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, [2 x %struct.atomic_t], [2 x i32] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.172, i32 }
%union.anon.172 = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.173 }
%struct.rb_root = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.smc_wr_tx_pend = type { i64, ptr, i32, ptr, i32, %struct.smc_wr_tx_pend_priv, i8 }
%struct.smc_wr_tx_pend_priv = type { [32 x i8] }
%struct.smc_wr_buf = type { [48 x i8] }
%struct.smc_rdma_wr = type { [2 x %struct.ib_rdma_wr] }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
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
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.127, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.127 = type { %struct.list_head }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.smc_wr_rx_handler = type { %struct.hlist_node, ptr, i8 }
%struct.ib_recv_wr = type { ptr, %union.anon.161, ptr, i32 }
%union.anon.161 = type { i64 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_wc = type { %union.anon.137, i32, i32, i32, i32, ptr, %union.anon.138, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.137 = type { i64 }
%union.anon.138 = type { i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.smc_rdma_sges = type { [2 x %struct.smc_rdma_sge] }
%struct.smc_rdma_sge = type { [2 x %struct.ib_sge] }

@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/smc/smc_wr.c\00", [47 x i8] zeroinitializer }, align 32
@smc_wr_rx_hash_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@smc_wr_rx_hash = internal global { [16 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@smc_wr_create_link.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&lnk->wr_tx_wait\00", [47 x i8] zeroinitializer }, align 32
@smc_wr_create_link.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&lnk->wr_reg_wait\00", [46 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smc_wr_rx_hash_lock\00", [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.smc_wr_reg_send = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 -32, i32 0, i32 -5], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 5, i64 12, i64 13]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 63, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"smc_wr_rx_hash_lock\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"smc_wr_rx_hash\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 37, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 885, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 887, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 87, i32 2 }
@___asan_gen_.37 = private constant [20 x i8] c"../net/smc/smc_wr.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 38, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 326, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant [29 x i8] c"switch.table.smc_wr_reg_send\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @smc_wr_rx_hash_lock, ptr @smc_wr_rx_hash, ptr @smc_wr_create_link.__key, ptr @.str.1, ptr @smc_wr_create_link.__key.2, ptr @.str.3, ptr @init_completion.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.smc_wr_reg_send], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_wr_rx_hash_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_wr_rx_hash to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_wr_create_link.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_wr_create_link.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smc_wr_reg_send to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_tx_wait_no_pending_sends(ptr noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 63) #8
  %wr_tx_mask.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 18
  %wr_tx_cnt.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 19
  %0 = ptrtoint ptr %wr_tx_cnt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wr_tx_cnt.i, align 8
  %2 = ptrtoint ptr %wr_tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_tx_mask.i, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef %3, i32 noundef %1) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %1)
  %cmp4.i.i = icmp eq i32 %call.i.i, %1
  br i1 %cmp4.i.i, label %entry.do.end9_crit_edge, label %if.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wr_tx_wait = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  br label %for.cond

for.cond:                                         ; preds = %cleanup, %if.end
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %wr_tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %5 = ptrtoint ptr %wr_tx_cnt.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wr_tx_cnt.i, align 8
  %7 = ptrtoint ptr %wr_tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wr_tx_mask.i, align 4
  %call.i.i21 = call i32 @_find_first_bit_be(ptr noundef %8, i32 noundef %6) #8
  %cmp4.i.i22 = icmp eq i32 %call.i.i21, %6
  br i1 %cmp4.i.i22, label %for.end, label %cleanup

cleanup:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @schedule() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wr_tx_wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.end9

do.end9:                                          ; preds = %for.end, %entry.do.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_tx_cq_handler(ptr nocapture noundef readnone %ib_cq, ptr noundef %cq_context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.smc_ib_device, ptr %cq_context, i32 0, i32 6, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %send_tasklet = getelementptr inbounds %struct.smc_ib_device, ptr %cq_context, i32 0, i32 6
  tail call void @__tasklet_schedule(ptr noundef %send_tasklet) #8
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_tx_get_free_slot(ptr noundef %link, ptr noundef %handler, ptr nocapture noundef writeonly %wr_buf, ptr noundef writeonly %wr_rdma_buf, ptr nocapture noundef writeonly %wr_pend_priv) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  %wr_tx_cnt = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 19
  %2 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wr_tx_cnt, align 8
  %4 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %wr_buf, align 4
  %5 = ptrtoint ptr %wr_pend_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %wr_pend_priv, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !20) #8
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %9, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %terminating = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %terminating to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %terminating, align 8
  %11 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not = icmp eq i8 %11, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %12 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wr_tx_cnt, align 8
  %state.i.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %14 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %switch.i.i.i = icmp ugt i32 %15, 1
  br i1 %switch.i.i.i, label %smc_link_sendable.exit.i, label %if.then.cleanup95_crit_edge

if.then.cleanup95_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup95

smc_link_sendable.exit.i:                         ; preds = %if.then
  %cur_qp_state.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %cur_qp_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cur_qp_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 3
  br i1 %cmp.i.i, label %if.end.i, label %smc_link_sendable.exit.i.cleanup95_crit_edge

smc_link_sendable.exit.i.cleanup95_crit_edge:     ; preds = %smc_link_sendable.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup95

if.end.i:                                         ; preds = %smc_link_sendable.exit.i
  %wr_tx_mask.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 18
  %18 = ptrtoint ptr %wr_tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr_tx_mask.i, align 4
  %call2.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %19, i32 noundef %13, i32 noundef 0) #8
  %20 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wr_tx_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %21)
  %cmp28.i = icmp ult i32 %call2.i, %21
  br i1 %cmp28.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup95_crit_edge

if.end.i.cleanup95_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup95

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %idx.0 = phi i32 [ %call10.i, %for.inc.i.for.body.i_crit_edge ], [ %call2.i, %if.end.i.for.body.i_crit_edge ]
  %22 = ptrtoint ptr %wr_tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wr_tx_mask.i, align 4
  %call5.i = tail call i32 @_test_and_set_bit(i32 noundef %idx.0, ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %for.body.i.if.end82_crit_edge, label %for.inc.i

for.body.i.if.end82_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

for.inc.i:                                        ; preds = %for.body.i
  %24 = ptrtoint ptr %wr_tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr_tx_mask.i, align 4
  %26 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %wr_tx_cnt, align 8
  %add.i = add nuw i32 %idx.0, 1
  %call10.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %25, i32 noundef %27, i32 noundef %add.i) #8
  %28 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wr_tx_cnt, align 8
  %cmp.i = icmp ult i32 %call10.i, %29
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup95_crit_edge

for.inc.i.cleanup95_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup95

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.else:                                          ; preds = %lor.lhs.false
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 220) #8
  %state.i.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 54
  %30 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %switch.i.i = icmp ugt i32 %31, 1
  br i1 %switch.i.i, label %smc_link_sendable.exit, label %if.else.if.end76_crit_edge

if.else.if.end76_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

smc_link_sendable.exit:                           ; preds = %if.else
  %cur_qp_state.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %cur_qp_state.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cur_qp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i139 = icmp eq i32 %33, 3
  br i1 %cmp.i139, label %lor.lhs.false10, label %smc_link_sendable.exit.if.end76_crit_edge

smc_link_sendable.exit.if.end76_crit_edge:        ; preds = %smc_link_sendable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

lor.lhs.false10:                                  ; preds = %smc_link_sendable.exit
  %34 = ptrtoint ptr %terminating to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load12 = load i8, ptr %terminating, align 8
  %35 = and i8 %bf.load12, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool16.not = icmp eq i8 %35, 0
  br i1 %tobool16.not, label %smc_link_sendable.exit.i145, label %lor.lhs.false10.if.end76_crit_edge

lor.lhs.false10.if.end76_crit_edge:               ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

smc_link_sendable.exit.i145:                      ; preds = %lor.lhs.false10
  %36 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wr_tx_cnt, align 8
  %38 = ptrtoint ptr %cur_qp_state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cur_qp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i.i144 = icmp eq i32 %39, 3
  br i1 %cmp.i.i144, label %if.end.i149, label %smc_link_sendable.exit.i145.if.end76_crit_edge

smc_link_sendable.exit.i145.if.end76_crit_edge:   ; preds = %smc_link_sendable.exit.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

if.end.i149:                                      ; preds = %smc_link_sendable.exit.i145
  %wr_tx_mask.i146 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 18
  %40 = ptrtoint ptr %wr_tx_mask.i146 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr_tx_mask.i146, align 4
  %call2.i147 = tail call i32 @_find_next_zero_bit_be(ptr noundef %41, i32 noundef %37, i32 noundef 0) #8
  %42 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %wr_tx_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i147, i32 %43)
  %cmp28.i148 = icmp ult i32 %call2.i147, %43
  br i1 %cmp28.i148, label %if.end.i149.for.body.i153_crit_edge, label %if.end.i149.if.then30_crit_edge

if.end.i149.if.then30_crit_edge:                  ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.end.i149.for.body.i153_crit_edge:              ; preds = %if.end.i149
  br label %for.body.i153

for.body.i153:                                    ; preds = %for.inc.i157.for.body.i153_crit_edge, %if.end.i149.for.body.i153_crit_edge
  %idx.2 = phi i32 [ %call10.i155, %for.inc.i157.for.body.i153_crit_edge ], [ %call2.i147, %if.end.i149.for.body.i153_crit_edge ]
  %44 = ptrtoint ptr %wr_tx_mask.i146 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr_tx_mask.i146, align 4
  %call5.i151 = tail call i32 @_test_and_set_bit(i32 noundef %idx.2, ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i151)
  %tobool.not.i152 = icmp eq i32 %call5.i151, 0
  br i1 %tobool.not.i152, label %for.body.i153.if.end76_crit_edge, label %for.inc.i157

for.body.i153.if.end76_crit_edge:                 ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76

for.inc.i157:                                     ; preds = %for.body.i153
  %46 = ptrtoint ptr %wr_tx_mask.i146 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wr_tx_mask.i146, align 4
  %48 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %wr_tx_cnt, align 8
  %add.i154 = add nuw i32 %idx.2, 1
  %call10.i155 = tail call i32 @_find_next_zero_bit_be(ptr noundef %47, i32 noundef %49, i32 noundef %add.i154) #8
  %50 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %wr_tx_cnt, align 8
  %cmp.i156 = icmp ult i32 %call10.i155, %51
  br i1 %cmp.i156, label %for.inc.i157.for.body.i153_crit_edge, label %for.inc.i157.if.then30_crit_edge

for.inc.i157.if.then30_crit_edge:                 ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

for.inc.i157.for.body.i153_crit_edge:             ; preds = %for.inc.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i153

if.then30:                                        ; preds = %for.inc.i157.if.then30_crit_edge, %if.end.i149.if.then30_crit_edge
  %idx.3 = phi i32 [ %43, %if.end.i149.if.then30_crit_edge ], [ %51, %for.inc.i157.if.then30_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %52 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wr_tx_wait = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  %call32252 = call i32 @prepare_to_wait_event(ptr noundef %wr_tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %53 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %switch.i.i163253 = icmp ugt i32 %54, 1
  br i1 %switch.i.i163253, label %smc_link_sendable.exit167.preheader, label %if.then30.if.end72.thread238_crit_edge

if.then30.if.end72.thread238_crit_edge:           ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.thread238

smc_link_sendable.exit167.preheader:              ; preds = %if.then30
  %55 = ptrtoint ptr %cur_qp_state.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cur_qp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp.i165282 = icmp eq i32 %56, 3
  br i1 %cmp.i165282, label %smc_link_sendable.exit167.preheader.lor.lhs.false35_crit_edge, label %smc_link_sendable.exit167.preheader.if.end72.thread238_crit_edge

smc_link_sendable.exit167.preheader.if.end72.thread238_crit_edge: ; preds = %smc_link_sendable.exit167.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.thread238

smc_link_sendable.exit167.preheader.lor.lhs.false35_crit_edge: ; preds = %smc_link_sendable.exit167.preheader
  br label %lor.lhs.false35

smc_link_sendable.exit167:                        ; preds = %cleanup
  %57 = ptrtoint ptr %cur_qp_state.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cur_qp_state.i, align 4
  %cmp.i165 = icmp eq i32 %58, 3
  br i1 %cmp.i165, label %smc_link_sendable.exit167.lor.lhs.false35_crit_edge, label %smc_link_sendable.exit167.if.end72.thread238_crit_edge

smc_link_sendable.exit167.if.end72.thread238_crit_edge: ; preds = %smc_link_sendable.exit167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.thread238

smc_link_sendable.exit167.lor.lhs.false35_crit_edge: ; preds = %smc_link_sendable.exit167
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false35

lor.lhs.false35:                                  ; preds = %smc_link_sendable.exit167.lor.lhs.false35_crit_edge, %smc_link_sendable.exit167.preheader.lor.lhs.false35_crit_edge
  %idx.4254285 = phi i32 [ %idx.6, %smc_link_sendable.exit167.lor.lhs.false35_crit_edge ], [ %idx.3, %smc_link_sendable.exit167.preheader.lor.lhs.false35_crit_edge ]
  %__ret31.0255284 = phi i32 [ %call69, %smc_link_sendable.exit167.lor.lhs.false35_crit_edge ], [ 1000, %smc_link_sendable.exit167.preheader.lor.lhs.false35_crit_edge ]
  %call32256283 = phi i32 [ %call32, %smc_link_sendable.exit167.lor.lhs.false35_crit_edge ], [ %call32252, %smc_link_sendable.exit167.preheader.lor.lhs.false35_crit_edge ]
  %59 = ptrtoint ptr %terminating to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load37 = load i8, ptr %terminating, align 8
  %60 = and i8 %bf.load37, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool41.not = icmp eq i8 %60, 0
  br i1 %tobool41.not, label %smc_link_sendable.exit.i173, label %lor.lhs.false35.if.end72.thread238_crit_edge

lor.lhs.false35.if.end72.thread238_crit_edge:     ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.thread238

smc_link_sendable.exit.i173:                      ; preds = %lor.lhs.false35
  %61 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %wr_tx_cnt, align 8
  %63 = ptrtoint ptr %cur_qp_state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %cur_qp_state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %64)
  %cmp.i.i172 = icmp eq i32 %64, 3
  br i1 %cmp.i.i172, label %if.end.i177, label %smc_link_sendable.exit.i173.if.end72.thread238_crit_edge

smc_link_sendable.exit.i173.if.end72.thread238_crit_edge: ; preds = %smc_link_sendable.exit.i173
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.thread238

if.end.i177:                                      ; preds = %smc_link_sendable.exit.i173
  %65 = ptrtoint ptr %wr_tx_mask.i146 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr_tx_mask.i146, align 4
  %call2.i175 = call i32 @_find_next_zero_bit_be(ptr noundef %66, i32 noundef %62, i32 noundef 0) #8
  %67 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %wr_tx_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i175, i32 %68)
  %cmp28.i176 = icmp ult i32 %call2.i175, %68
  br i1 %cmp28.i176, label %if.end.i177.for.body.i181_crit_edge, label %if.end.i177..loopexit_crit_edge

if.end.i177..loopexit_crit_edge:                  ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

if.end.i177.for.body.i181_crit_edge:              ; preds = %if.end.i177
  br label %for.body.i181

for.body.i181:                                    ; preds = %for.inc.i185.for.body.i181_crit_edge, %if.end.i177.for.body.i181_crit_edge
  %idx.5 = phi i32 [ %call10.i183, %for.inc.i185.for.body.i181_crit_edge ], [ %call2.i175, %if.end.i177.for.body.i181_crit_edge ]
  %69 = ptrtoint ptr %wr_tx_mask.i146 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %wr_tx_mask.i146, align 4
  %call5.i179 = call i32 @_test_and_set_bit(i32 noundef %idx.5, ptr noundef %70) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i179)
  %tobool.not.i180 = icmp eq i32 %call5.i179, 0
  br i1 %tobool.not.i180, label %for.body.i181.if.end72.thread238_crit_edge, label %for.inc.i185

for.body.i181.if.end72.thread238_crit_edge:       ; preds = %for.body.i181
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.thread238

for.inc.i185:                                     ; preds = %for.body.i181
  %71 = ptrtoint ptr %wr_tx_mask.i146 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %wr_tx_mask.i146, align 4
  %73 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %wr_tx_cnt, align 8
  %add.i182 = add nuw i32 %idx.5, 1
  %call10.i183 = call i32 @_find_next_zero_bit_be(ptr noundef %72, i32 noundef %74, i32 noundef %add.i182) #8
  %75 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %wr_tx_cnt, align 8
  %cmp.i184 = icmp ult i32 %call10.i183, %76
  br i1 %cmp.i184, label %for.inc.i185.for.body.i181_crit_edge, label %for.inc.i185..loopexit_crit_edge

for.inc.i185..loopexit_crit_edge:                 ; preds = %for.inc.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %.loopexit

for.inc.i185.for.body.i181_crit_edge:             ; preds = %for.inc.i185
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i181

if.end72.thread238:                               ; preds = %cleanup.if.end72.thread238_crit_edge, %for.body.i181.if.end72.thread238_crit_edge, %smc_link_sendable.exit.i173.if.end72.thread238_crit_edge, %lor.lhs.false35.if.end72.thread238_crit_edge, %smc_link_sendable.exit167.if.end72.thread238_crit_edge, %smc_link_sendable.exit167.preheader.if.end72.thread238_crit_edge, %if.then30.if.end72.thread238_crit_edge
  %idx.7206.ph = phi i32 [ %idx.3, %if.then30.if.end72.thread238_crit_edge ], [ %idx.3, %smc_link_sendable.exit167.preheader.if.end72.thread238_crit_edge ], [ %idx.5, %for.body.i181.if.end72.thread238_crit_edge ], [ %idx.4254285, %lor.lhs.false35.if.end72.thread238_crit_edge ], [ %idx.6, %smc_link_sendable.exit167.if.end72.thread238_crit_edge ], [ %idx.6, %cleanup.if.end72.thread238_crit_edge ], [ %62, %smc_link_sendable.exit.i173.if.end72.thread238_crit_edge ]
  call void @finish_wait(ptr noundef %wr_tx_wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end76

.loopexit:                                        ; preds = %for.inc.i185..loopexit_crit_edge, %if.end.i177..loopexit_crit_edge
  %idx.6 = phi i32 [ %68, %if.end.i177..loopexit_crit_edge ], [ %76, %for.inc.i185..loopexit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret31.0255284)
  %tobool59.not = icmp eq i32 %__ret31.0255284, 0
  br i1 %tobool59.not, label %if.end72, label %if.end65

if.end65:                                         ; preds = %.loopexit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32256283)
  %tobool66.not = icmp eq i32 %call32256283, 0
  br i1 %tobool66.not, label %cleanup, label %if.end72.thread234

if.end72.thread234:                               ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end76

cleanup:                                          ; preds = %if.end65
  %call69 = call i32 @schedule_timeout(i32 noundef %__ret31.0255284) #8
  %call32 = call i32 @prepare_to_wait_event(ptr noundef %wr_tx_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %77 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %switch.i.i163 = icmp ugt i32 %78, 1
  br i1 %switch.i.i163, label %smc_link_sendable.exit167, label %cleanup.if.end72.thread238_crit_edge

cleanup.if.end72.thread238_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72.thread238

if.end72:                                         ; preds = %.loopexit
  call void @__sanitizer_cov_trace_pc() #10
  call void @finish_wait(ptr noundef %wr_tx_wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  call void @smcr_link_down_cond_sched(ptr noundef %link) #8
  br label %cleanup95

if.end76:                                         ; preds = %if.end72.thread234, %if.end72.thread238, %for.body.i153.if.end76_crit_edge, %smc_link_sendable.exit.i145.if.end76_crit_edge, %lor.lhs.false10.if.end76_crit_edge, %smc_link_sendable.exit.if.end76_crit_edge, %if.else.if.end76_crit_edge
  %idx.8233 = phi i32 [ %idx.6, %if.end72.thread234 ], [ %idx.7206.ph, %if.end72.thread238 ], [ %3, %smc_link_sendable.exit.if.end76_crit_edge ], [ %3, %lor.lhs.false10.if.end76_crit_edge ], [ %3, %if.else.if.end76_crit_edge ], [ %37, %smc_link_sendable.exit.i145.if.end76_crit_edge ], [ %idx.2, %for.body.i153.if.end76_crit_edge ]
  %79 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %wr_tx_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.8233, i32 %80)
  %cmp78 = icmp eq i32 %idx.8233, %80
  br i1 %cmp78, label %if.end76.cleanup95_crit_edge, label %if.end76.if.end82_crit_edge

if.end76.if.end82_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.end76.cleanup95_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup95

if.end82:                                         ; preds = %if.end76.if.end82_crit_edge, %for.body.i.if.end82_crit_edge
  %idx.9 = phi i32 [ %idx.8233, %if.end76.if.end82_crit_edge ], [ %idx.0, %for.body.i.if.end82_crit_edge ]
  %wr_tx_id.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 17
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_id.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  call void @llvm.prefetch.p0(ptr %wr_tx_id.i, i32 1, i32 3, i32 1) #8
  %81 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_id.i, ptr %wr_tx_id.i, i32 1, ptr elementtype(i32) %wr_tx_id.i) #8, !srcloc !31
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %81, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  %conv84 = sext i32 %asmresult.i.i.i.i.i.i to i64
  %wr_tx_pends = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 10
  %82 = ptrtoint ptr %wr_tx_pends to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wr_tx_pends, align 4
  %arrayidx = getelementptr %struct.smc_wr_tx_pend, ptr %83, i32 %idx.9
  %84 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv84, ptr %arrayidx, align 8
  %handler86 = getelementptr %struct.smc_wr_tx_pend, ptr %83, i32 %idx.9, i32 1
  %85 = ptrtoint ptr %handler86 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %handler, ptr %handler86, align 8
  %link87 = getelementptr %struct.smc_wr_tx_pend, ptr %83, i32 %idx.9, i32 3
  %86 = ptrtoint ptr %link87 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %link, ptr %link87, align 8
  %idx88 = getelementptr %struct.smc_wr_tx_pend, ptr %83, i32 %idx.9, i32 4
  %87 = ptrtoint ptr %idx88 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %idx.9, ptr %idx88, align 4
  %wr_tx_ibs = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 6
  %88 = ptrtoint ptr %wr_tx_ibs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %wr_tx_ibs, align 4
  %90 = getelementptr %struct.ib_send_wr, ptr %89, i32 %idx.9, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv84, ptr %90, align 8
  %wr_tx_bufs = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 5
  %92 = ptrtoint ptr %wr_tx_bufs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %wr_tx_bufs, align 8
  %arrayidx90 = getelementptr %struct.smc_wr_buf, ptr %93, i32 %idx.9
  %94 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %arrayidx90, ptr %wr_buf, align 4
  %tobool91.not = icmp eq ptr %wr_rdma_buf, null
  br i1 %tobool91.not, label %if.end82.if.end94_crit_edge, label %if.then92

if.end82.if.end94_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then92:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_rdmas = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 9
  %95 = ptrtoint ptr %wr_tx_rdmas to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wr_tx_rdmas, align 8
  %arrayidx93 = getelementptr %struct.smc_rdma_wr, ptr %96, i32 %idx.9
  %97 = ptrtoint ptr %wr_rdma_buf to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %arrayidx93, ptr %wr_rdma_buf, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end82.if.end94_crit_edge
  %priv = getelementptr %struct.smc_wr_tx_pend, ptr %83, i32 %idx.9, i32 5
  %98 = ptrtoint ptr %wr_pend_priv to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %priv, ptr %wr_pend_priv, align 4
  br label %cleanup95

cleanup95:                                        ; preds = %if.end94, %if.end76.cleanup95_crit_edge, %if.end72, %for.inc.i.cleanup95_crit_edge, %if.end.i.cleanup95_crit_edge, %smc_link_sendable.exit.i.cleanup95_crit_edge, %if.then.cleanup95_crit_edge
  %retval.0 = phi i32 [ 0, %if.end94 ], [ -32, %if.end72 ], [ -32, %if.end76.cleanup95_crit_edge ], [ -16, %if.end.i.cleanup95_crit_edge ], [ -67, %if.then.cleanup95_crit_edge ], [ -67, %smc_link_sendable.exit.i.cleanup95_crit_edge ], [ -16, %for.inc.i.cleanup95_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_link_down_cond_sched(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_tx_get_v2_slot(ptr noundef %link, ptr noundef %handler, ptr nocapture noundef writeonly %wr_buf, ptr nocapture noundef writeonly %wr_pend_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_tx_v2_pend = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 14
  %0 = ptrtoint ptr %wr_tx_v2_pend to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_tx_v2_pend, align 4
  %idx = getelementptr inbounds %struct.smc_wr_tx_pend, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 4
  %wr_tx_cnt = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 19
  %4 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wr_tx_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp eq i32 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %wr_buf, align 4
  %7 = ptrtoint ptr %wr_pend_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %wr_pend_priv, align 4
  %wr_tx_id.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_id.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr %wr_tx_id.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_tx_id.i, ptr %wr_tx_id.i, i32 1, ptr elementtype(i32) %wr_tx_id.i) #8, !srcloc !31
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !32
  %conv = sext i32 %asmresult.i.i.i.i.i.i to i64
  %9 = ptrtoint ptr %wr_tx_v2_pend to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wr_tx_v2_pend, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %10, align 8
  %handler3 = getelementptr inbounds %struct.smc_wr_tx_pend, ptr %10, i32 0, i32 1
  %12 = ptrtoint ptr %handler3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %handler, ptr %handler3, align 8
  %link4 = getelementptr inbounds %struct.smc_wr_tx_pend, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %link4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %link, ptr %link4, align 8
  %14 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wr_tx_cnt, align 8
  %idx6 = getelementptr inbounds %struct.smc_wr_tx_pend, ptr %10, i32 0, i32 4
  %16 = ptrtoint ptr %idx6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %idx6, align 4
  %wr_tx_v2_ib = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 12
  %17 = ptrtoint ptr %wr_tx_v2_ib to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr_tx_v2_ib, align 4
  %19 = getelementptr inbounds %struct.ib_send_wr, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv, ptr %19, align 8
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %21 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lgr, align 4
  %wr_tx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %22, i32 0, i32 21, i32 0, i32 3
  %23 = ptrtoint ptr %wr_tx_buf_v2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr_tx_buf_v2, align 4
  %25 = ptrtoint ptr %wr_buf to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %wr_buf, align 4
  %priv = getelementptr inbounds %struct.smc_wr_tx_pend, ptr %10, i32 0, i32 5
  %26 = ptrtoint ptr %wr_pend_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %priv, ptr %wr_pend_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_tx_put_slot(ptr noundef %link, ptr nocapture noundef readonly %wr_pend_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr i8, ptr %wr_pend_priv, i32 -4
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 4
  %wr_tx_cnt = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 19
  %2 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wr_tx_cnt, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_pends = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 10
  %4 = ptrtoint ptr %wr_tx_pends to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr_tx_pends, align 4
  %arrayidx = getelementptr %struct.smc_wr_tx_pend, ptr %5, i32 %1
  %6 = call ptr @memset(ptr %arrayidx, i32 0, i32 64)
  %wr_tx_bufs = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 5
  %7 = ptrtoint ptr %wr_tx_bufs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wr_tx_bufs, align 8
  %arrayidx3 = getelementptr %struct.smc_wr_buf, ptr %8, i32 %1
  %9 = call ptr @memset(ptr %arrayidx3, i32 0, i32 48)
  %wr_tx_mask = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 18
  %10 = ptrtoint ptr %wr_tx_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr_tx_mask, align 4
  %call = tail call i32 @_test_and_clear_bit(i32 noundef %1, ptr noundef %11) #8
  %wr_tx_wait = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %wr_tx_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %12 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lgr, align 4
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp4 = icmp eq i8 %15, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp8 = icmp eq i32 %1, %3
  %or.cond = select i1 %cmp4, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then10, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_v2_pend = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 14
  %16 = ptrtoint ptr %wr_tx_v2_pend to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %wr_tx_v2_pend, align 4
  %wr_tx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %13, i32 0, i32 21, i32 0, i32 3
  %17 = ptrtoint ptr %wr_tx_buf_v2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %wr_tx_buf_v2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 1, %if.then10 ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_tx_send(ptr noundef %link, ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 8
  %roce_cq_send = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roce_cq_send, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 6) #8
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 3
  %8 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %roce_qp, align 4
  %wr_tx_ibs = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 6
  %10 = ptrtoint ptr %wr_tx_ibs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr_tx_ibs, align 4
  %idx = getelementptr i8, ptr %priv, i32 -4
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %idx, align 4
  %arrayidx = getelementptr %struct.ib_send_wr, ptr %11, i32 %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %14 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !33
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %post_send.i, align 4
  %call.i9 = call i32 %18(ptr noundef %9, ptr noundef %arrayidx, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %tobool.not = icmp eq i32 %call.i9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %19 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %idx, align 4
  %wr_tx_cnt.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 19
  %21 = ptrtoint ptr %wr_tx_cnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wr_tx_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp.i = icmp ult i32 %20, %22
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_pends.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 10
  %23 = ptrtoint ptr %wr_tx_pends.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wr_tx_pends.i, align 4
  %arrayidx.i = getelementptr %struct.smc_wr_tx_pend, ptr %24, i32 %20
  %25 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 64)
  %wr_tx_bufs.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 5
  %26 = ptrtoint ptr %wr_tx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr_tx_bufs.i, align 8
  %arrayidx3.i = getelementptr %struct.smc_wr_buf, ptr %27, i32 %20
  %28 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 48)
  %wr_tx_mask.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 18
  %29 = ptrtoint ptr %wr_tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr_tx_mask.i, align 4
  %call.i10 = call i32 @_test_and_clear_bit(i32 noundef %20, ptr noundef %30) #8
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %smc_wr_tx_put_slot.exit

if.else.i:                                        ; preds = %if.then
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %31 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lgr.i, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp4.i = icmp eq i8 %34, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp8.i = icmp eq i32 %20, %22
  %or.cond.i = select i1 %cmp4.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %if.then10.i, label %if.else.i.smc_wr_tx_put_slot.exit_crit_edge

if.else.i.smc_wr_tx_put_slot.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_tx_put_slot.exit

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_v2_pend.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 14
  %35 = ptrtoint ptr %wr_tx_v2_pend.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %wr_tx_v2_pend.i, align 4
  %wr_tx_buf_v2.i = getelementptr inbounds %struct.smc_link_group, ptr %32, i32 0, i32 21, i32 0, i32 3
  %36 = ptrtoint ptr %wr_tx_buf_v2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %wr_tx_buf_v2.i, align 4
  br label %smc_wr_tx_put_slot.exit

smc_wr_tx_put_slot.exit:                          ; preds = %if.then10.i, %if.else.i.smc_wr_tx_put_slot.exit_crit_edge, %if.then.i
  call void @smcr_link_down_cond_sched(ptr noundef %link) #8
  br label %if.end

if.end:                                           ; preds = %smc_wr_tx_put_slot.exit, %entry.if.end_crit_edge
  ret i32 %call.i9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_tx_v2_send(ptr noundef %link, ptr nocapture noundef readonly %priv, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_tx_v2_ib = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 12
  %0 = ptrtoint ptr %wr_tx_v2_ib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_tx_v2_ib, align 4
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg_list, align 8
  %length = getelementptr inbounds %struct.ib_sge, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %len, ptr %length, align 8
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %link, align 8
  %roce_cq_send = getelementptr inbounds %struct.smc_ib_device, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %roce_cq_send, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %12(ptr noundef %8, i32 noundef 6) #8
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 3
  %13 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %roce_qp, align 4
  %15 = ptrtoint ptr %wr_tx_v2_ib to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr_tx_v2_ib, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %17 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !33
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %14, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %19, i32 0, i32 1, i32 6
  %20 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %post_send.i, align 4
  %call.i10 = call i32 %21(ptr noundef %14, ptr noundef %16, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool.not = icmp eq i32 %call.i10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %idx.i = getelementptr i8, ptr %priv, i32 -4
  %22 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %idx.i, align 4
  %wr_tx_cnt.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 19
  %24 = ptrtoint ptr %wr_tx_cnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wr_tx_cnt.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.i = icmp ult i32 %23, %25
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_pends.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 10
  %26 = ptrtoint ptr %wr_tx_pends.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr_tx_pends.i, align 4
  %arrayidx.i = getelementptr %struct.smc_wr_tx_pend, ptr %27, i32 %23
  %28 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 64)
  %wr_tx_bufs.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 5
  %29 = ptrtoint ptr %wr_tx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr_tx_bufs.i, align 8
  %arrayidx3.i = getelementptr %struct.smc_wr_buf, ptr %30, i32 %23
  %31 = call ptr @memset(ptr %arrayidx3.i, i32 0, i32 48)
  %wr_tx_mask.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 18
  %32 = ptrtoint ptr %wr_tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wr_tx_mask.i, align 4
  %call.i11 = call i32 @_test_and_clear_bit(i32 noundef %23, ptr noundef %33) #8
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 20
  call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %smc_wr_tx_put_slot.exit

if.else.i:                                        ; preds = %if.then
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %34 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lgr.i, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %35, i32 0, i32 16
  %36 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %37)
  %cmp4.i = icmp eq i8 %37, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp8.i = icmp eq i32 %23, %25
  %or.cond.i = select i1 %cmp4.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %if.then10.i, label %if.else.i.smc_wr_tx_put_slot.exit_crit_edge

if.else.i.smc_wr_tx_put_slot.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_tx_put_slot.exit

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_v2_pend.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 14
  %38 = ptrtoint ptr %wr_tx_v2_pend.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %wr_tx_v2_pend.i, align 4
  %wr_tx_buf_v2.i = getelementptr inbounds %struct.smc_link_group, ptr %35, i32 0, i32 21, i32 0, i32 3
  %39 = ptrtoint ptr %wr_tx_buf_v2.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wr_tx_buf_v2.i, align 4
  br label %smc_wr_tx_put_slot.exit

smc_wr_tx_put_slot.exit:                          ; preds = %if.then10.i, %if.else.i.smc_wr_tx_put_slot.exit_crit_edge, %if.then.i
  call void @smcr_link_down_cond_sched(ptr noundef %link) #8
  br label %if.end

if.end:                                           ; preds = %smc_wr_tx_put_slot.exit, %entry.if.end_crit_edge
  ret i32 %call.i10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_tx_send_wait(ptr noundef %link, ptr nocapture noundef %priv, i32 noundef %timeout) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %compl_requested = getelementptr i8, ptr %priv, i32 32
  %0 = ptrtoint ptr %compl_requested to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %compl_requested, align 8
  %idx = getelementptr i8, ptr %priv, i32 -4
  %1 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %idx, align 4
  %wr_tx_compl = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 11
  %3 = ptrtoint ptr %wr_tx_compl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wr_tx_compl, align 8
  %arrayidx = getelementptr %struct.completion, ptr %4, i32 %2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx, align 4
  %wait.i = getelementptr %struct.completion, ptr %4, i32 %2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #8
  %call = tail call i32 @smc_wr_tx_send(ptr noundef %link, ptr noundef %priv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %wr_tx_compl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr_tx_compl, align 8
  %arrayidx2 = getelementptr %struct.completion, ptr %7, i32 %2
  %call3 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %arrayidx2, i32 noundef %timeout) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3)
  %cmp = icmp slt i32 %call3, 1
  %8 = tail call i32 @llvm.smin.i32(i32 %call3, i32 0)
  %9 = select i1 %cmp, i32 -61, i32 %8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_reg_send(ptr noundef %link, ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 8
  %roce_cq_send = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roce_cq_send, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i = tail call i32 %7(ptr noundef %3, i32 noundef 6) #8
  %wr_reg_state = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 33
  %8 = ptrtoint ptr %wr_reg_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %wr_reg_state, align 8
  %9 = ptrtoint ptr %mr to i32
  %conv = zext i32 %9 to i64
  %wr_reg = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 30
  %10 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 30, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %10, align 8
  %mr2 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 30, i32 1
  %12 = ptrtoint ptr %mr2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mr, ptr %mr2, align 8
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %mr, i32 0, i32 3
  %13 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rkey, align 4
  %key = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 30, i32 2
  %15 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %key, align 4
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 3
  %16 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %roce_qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %18 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !33
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %17, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %20, i32 0, i32 1, i32 6
  %21 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %post_send.i, align 4
  %call.i101 = call i32 %22(ptr noundef %17, ptr noundef %wr_reg, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool.not = icmp eq i32 %call.i101, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup69_crit_edge

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.end:                                           ; preds = %entry
  %wr_reg_refcnt = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 32
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_reg_refcnt, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %wr_reg_refcnt, i32 1, i32 3, i32 1) #8
  %23 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_reg_refcnt, ptr %wr_reg_refcnt, i32 1, ptr elementtype(i32) %wr_reg_refcnt) #8, !srcloc !34
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 383) #8
  %24 = ptrtoint ptr %wr_reg_state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wr_reg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not = icmp eq i32 %25, 0
  br i1 %cmp.not, label %if.then21, label %if.end.if.end52_crit_edge

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then21:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %26 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %wr_reg_wait = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 31
  %call23112 = call i32 @prepare_to_wait_event(ptr noundef %wr_reg_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %27 = ptrtoint ptr %wr_reg_state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wr_reg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp26.not113.not = icmp eq i32 %28, 0
  br i1 %cmp26.not113.not, label %if.then21.if.end45_crit_edge, label %if.then21.for.end_crit_edge

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then21.if.end45_crit_edge:                     ; preds = %if.then21
  br label %if.end45

if.end45:                                         ; preds = %cleanup.if.end45_crit_edge, %if.then21.if.end45_crit_edge
  %__ret22.1116 = phi i32 [ %__ret22.1, %cleanup.if.end45_crit_edge ], [ 500, %if.then21.if.end45_crit_edge ]
  %call23115 = phi i32 [ %call23, %cleanup.if.end45_crit_edge ], [ %call23112, %if.then21.if.end45_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23115)
  %tobool46.not = icmp eq i32 %call23115, 0
  br i1 %tobool46.not, label %cleanup, label %if.end45.__out_crit_edge

if.end45.__out_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end45
  %call49 = call i32 @schedule_timeout(i32 noundef %__ret22.1116) #8
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %wr_reg_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %29 = ptrtoint ptr %wr_reg_state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wr_reg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp26.not = icmp eq i32 %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool32.not = icmp eq i32 %call49, 0
  %spec.store.select70 = select i1 %tobool32.not, i32 1, i32 %call49
  %__ret22.1 = select i1 %cmp26.not, i32 %call49, i32 %spec.store.select70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %tobool39.not = icmp eq i32 %__ret22.1, 0
  %not.cmp26.not = xor i1 %cmp26.not, true
  %31 = select i1 %not.cmp26.not, i1 true, i1 %tobool39.not
  br i1 %31, label %cleanup.for.end_crit_edge, label %cleanup.if.end45_crit_edge

cleanup.if.end45_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then21.for.end_crit_edge
  %__ret22.1.lcssa = phi i32 [ 500, %if.then21.for.end_crit_edge ], [ %__ret22.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wr_reg_wait, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end45.__out_crit_edge
  %__ret22.2104 = phi i32 [ %__ret22.1.lcssa, %for.end ], [ %call23115, %if.end45.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end52

if.end52:                                         ; preds = %__out, %if.end.if.end52_crit_edge
  %__ret.1 = phi i32 [ 500, %if.end.if.end52_crit_edge ], [ %__ret22.2104, %__out ]
  %call.i.i100 = call zeroext i1 @__kasan_check_write(ptr noundef %wr_reg_refcnt, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  call void @llvm.prefetch.p0(ptr %wr_reg_refcnt, i32 1, i32 3, i32 1) #8
  %32 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_reg_refcnt, ptr %wr_reg_refcnt, i32 1, ptr elementtype(i32) %wr_reg_refcnt) #8, !srcloc !36
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %32, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then56, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %wr_reg_wait57 = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 31
  call void @__wake_up(ptr noundef %wr_reg_wait57, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end52.if.end58_crit_edge
  %33 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %if.end65 [
    i32 0, label %if.then60
    i32 -512, label %if.end58.cleanup69_crit_edge
  ]

if.end58.cleanup69_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  call void @smcr_link_down_cond_sched(ptr noundef %link) #8
  br label %cleanup69

if.end65:                                         ; preds = %if.end58
  %34 = ptrtoint ptr %wr_reg_state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %wr_reg_state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %switch.lookup, label %if.end65.cleanup69_crit_edge

if.end65.cleanup69_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

switch.lookup:                                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.smc_wr_reg_send, i32 0, i32 %35
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup69

cleanup69:                                        ; preds = %switch.lookup, %if.end65.cleanup69_crit_edge, %if.then60, %if.end58.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.0 = phi i32 [ -32, %if.then60 ], [ %call.i101, %entry.cleanup69_crit_edge ], [ -4, %if.end58.cleanup69_crit_edge ], [ %__ret.1, %if.end65.cleanup69_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_rx_register_handler(ptr noundef %handler) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @smc_wr_rx_hash_lock) #8
  %type = getelementptr inbounds %struct.smc_wr_rx_handler, ptr %handler, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %conv = zext i8 %1 to i32
  %mul.i.i = mul i32 %conv, 1640531527
  %shr.i = lshr i32 %mul.i.i, 28
  %arrayidx = getelementptr [16 x %struct.hlist_head], ptr @smc_wr_rx_hash, i32 0, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.end.thread, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %handler, align 4
  br label %hlist_add_head.exit

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %h_iter.035 = phi ptr [ %8, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %type3 = getelementptr inbounds %struct.smc_wr_rx_handler, ptr %h_iter.035, i32 0, i32 2
  %5 = ptrtoint ptr %type3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type3, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %1)
  %cmp = icmp eq i8 %6, %1
  br i1 %cmp, label %for.body.out_unlock_crit_edge, label %for.inc

for.body.out_unlock_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_unlock

for.inc:                                          ; preds = %for.body
  %7 = ptrtoint ptr %h_iter.035 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %h_iter.035, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %9 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %3, ptr %handler, align 4
  br i1 %tobool.not, label %for.end.hlist_add_head.exit_crit_edge, label %do.body12.i

for.end.hlist_add_head.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %handler, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %for.end.hlist_add_head.exit_crit_edge, %for.end.thread
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %handler, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %handler, i32 0, i32 1
  %12 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %hlist_add_head.exit, %for.body.out_unlock_crit_edge
  %rc.0 = phi i32 [ 0, %hlist_add_head.exit ], [ -17, %for.body.out_unlock_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @smc_wr_rx_hash_lock) #8
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_rx_cq_handler(ptr nocapture noundef readnone %ib_cq, ptr noundef %cq_context) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.smc_ib_device, ptr %cq_context, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %recv_tasklet = getelementptr inbounds %struct.smc_ib_device, ptr %cq_context, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %recv_tasklet) #8
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_rx_post_init(ptr nocapture noundef %link) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_rx_cnt = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 28
  %0 = ptrtoint ptr %wr_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wr_rx_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %wr_rx_id.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 27
  %wr_rx_ibs.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 23
  %roce_qp.i = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %smc_wr_rx_post.exit.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %19, %smc_wr_rx_post.exit.for.body_crit_edge ]
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %smc_wr_rx_post.exit.for.body_crit_edge ]
  %3 = ptrtoint ptr %wr_rx_id.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %wr_rx_id.i, align 8
  %inc.i = add i64 %4, 1
  store i64 %inc.i, ptr %wr_rx_id.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %inc.i)
  %cmp164.i = icmp ult i64 %inc.i, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !38

if.then168.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i = trunc i64 %inc.i to i32
  %rem170.i = urem i32 %conv169.i, %2
  br label %smc_wr_rx_post.exit

if.else174.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %inc.i) #11, !srcloc !39
  %asmresult.i270.i = extractvalue { i64, i64 } %5, 0
  %shr.i.i = lshr i64 %asmresult.i270.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  br label %smc_wr_rx_post.exit

smc_wr_rx_post.exit:                              ; preds = %if.else174.i, %if.then168.i
  %__rem.0.i = phi i32 [ %rem170.i, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %6 = ptrtoint ptr %wr_rx_ibs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr_rx_ibs.i, align 8
  %8 = getelementptr %struct.ib_recv_wr, ptr %7, i32 %__rem.0.i, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %inc.i, ptr %8, align 8
  %10 = ptrtoint ptr %roce_qp.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %roce_qp.i, align 4
  %12 = load ptr, ptr %wr_rx_ibs.i, align 8
  %arrayidx181.i = getelementptr %struct.ib_recv_wr, ptr %12, i32 %__rem.0.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #8
  %13 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !33
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %post_recv.i.i = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 1, i32 7
  %16 = ptrtoint ptr %post_recv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %post_recv.i.i, align 4
  %call.i.i = call i32 %17(ptr noundef %11, ptr noundef %arrayidx181.i, ptr noundef nonnull %dummy.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #8
  %inc = add nuw i32 %i.04, 1
  %18 = ptrtoint ptr %wr_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wr_rx_cnt, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %smc_wr_rx_post.exit.for.body_crit_edge, label %smc_wr_rx_post.exit.for.end_crit_edge

smc_wr_rx_post.exit.for.end_crit_edge:            ; preds = %smc_wr_rx_post.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

smc_wr_rx_post.exit.for.body_crit_edge:           ; preds = %smc_wr_rx_post.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %smc_wr_rx_post.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call.i.i, %smc_wr_rx_post.exit.for.end_crit_edge ]
  ret i32 %rc.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_remember_qp_attr(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  %init_attr = alloca %struct.ib_qp_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %qp_attr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %init_attr) #8
  %0 = call ptr @memset(ptr %qp_attr, i32 0, i32 216)
  %1 = call ptr @memset(ptr %init_attr, i32 0, i32 72)
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 3
  %2 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roce_qp, align 4
  %call = call i32 @ib_query_qp(ptr noundef %3, ptr noundef %qp_attr, i32 noundef 1957875, ptr noundef nonnull %init_attr) #8
  %cap = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 4, i32 9
  %4 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap, align 4
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 16)
  %wr_tx_cnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 19
  %7 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %wr_tx_cnt, align 8
  %max_recv_wr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 4, i32 9, i32 1
  %8 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_recv_wr, align 4
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 48)
  %wr_rx_cnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 28
  %11 = ptrtoint ptr %wr_rx_cnt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %wr_rx_cnt, align 8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_free_link(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry30 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup73_crit_edge, label %if.end

entry.cleanup73_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

if.end:                                           ; preds = %entry
  %ibdev2 = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ibdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev2, align 8
  %wr_reg_wait.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 31
  tail call void @__wake_up(ptr noundef %wr_reg_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 20
  tail call void @__wake_up(ptr noundef %wr_tx_wait.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #8
  tail call void @smc_wr_tx_wait_no_pending_sends(ptr noundef %lnk)
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 643) #8
  %wr_reg_refcnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wr_reg_refcnt, i32 noundef 4) #8
  %4 = ptrtoint ptr %wr_reg_refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %wr_reg_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not = icmp eq i32 %5, 0
  br i1 %tobool7.not, label %if.end.do.body20_crit_edge, label %if.end9

if.end.do.body20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call10118 = call i32 @prepare_to_wait_event(ptr noundef %wr_reg_wait.i, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %call.i.i111119 = call zeroext i1 @__kasan_check_read(ptr noundef %wr_reg_refcnt, i32 noundef 4) #8
  %7 = ptrtoint ptr %wr_reg_refcnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %wr_reg_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not120 = icmp eq i32 %8, 0
  br i1 %tobool13.not120, label %if.end9.for.end_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  br label %cleanup

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  call void @schedule() #8
  %call10 = call i32 @prepare_to_wait_event(ptr noundef %wr_reg_wait.i, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %call.i.i111 = call zeroext i1 @__kasan_check_read(ptr noundef %wr_reg_refcnt, i32 noundef 4) #8
  %9 = ptrtoint ptr %wr_reg_refcnt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %wr_reg_refcnt, align 4
  %tobool13.not = icmp eq i32 %10, 0
  br i1 %tobool13.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end9.for.end_crit_edge
  call void @finish_wait(ptr noundef %wr_reg_wait.i, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.body20

do.body20:                                        ; preds = %for.end, %if.end.do.body20_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 644) #8
  %wr_tx_refcnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 21
  %call.i.i112 = call zeroext i1 @__kasan_check_read(ptr noundef %wr_tx_refcnt, i32 noundef 4) #8
  %11 = ptrtoint ptr %wr_tx_refcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %wr_tx_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool27.not = icmp eq i32 %12, 0
  br i1 %tobool27.not, label %do.body20.do.end48_crit_edge, label %if.end29

do.body20.do.end48_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

if.end29:                                         ; preds = %do.body20
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry30) #8
  %13 = call ptr @memset(ptr %__wq_entry30, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry30, i32 noundef 0) #8
  %call34121 = call i32 @prepare_to_wait_event(ptr noundef %wr_tx_wait.i, ptr noundef nonnull %__wq_entry30, i32 noundef 2) #8
  %call.i.i113122 = call zeroext i1 @__kasan_check_read(ptr noundef %wr_tx_refcnt, i32 noundef 4) #8
  %14 = ptrtoint ptr %wr_tx_refcnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %wr_tx_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool37.not123 = icmp eq i32 %15, 0
  br i1 %tobool37.not123, label %if.end29.for.end43_crit_edge, label %if.end29.cleanup40_crit_edge

if.end29.cleanup40_crit_edge:                     ; preds = %if.end29
  br label %cleanup40

if.end29.for.end43_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

cleanup40:                                        ; preds = %cleanup40.cleanup40_crit_edge, %if.end29.cleanup40_crit_edge
  call void @schedule() #8
  %call34 = call i32 @prepare_to_wait_event(ptr noundef %wr_tx_wait.i, ptr noundef nonnull %__wq_entry30, i32 noundef 2) #8
  %call.i.i113 = call zeroext i1 @__kasan_check_read(ptr noundef %wr_tx_refcnt, i32 noundef 4) #8
  %16 = ptrtoint ptr %wr_tx_refcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %wr_tx_refcnt, align 4
  %tobool37.not = icmp eq i32 %17, 0
  br i1 %tobool37.not, label %cleanup40.for.end43_crit_edge, label %cleanup40.cleanup40_crit_edge

cleanup40.cleanup40_crit_edge:                    ; preds = %cleanup40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup40

cleanup40.for.end43_crit_edge:                    ; preds = %cleanup40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end43

for.end43:                                        ; preds = %cleanup40.for.end43_crit_edge, %if.end29.for.end43_crit_edge
  call void @finish_wait(ptr noundef %wr_tx_wait.i, ptr noundef nonnull %__wq_entry30) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry30) #8
  br label %do.end48

do.end48:                                         ; preds = %for.end43, %do.body20.do.end48_crit_edge
  %wr_rx_dma_addr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 25
  %18 = ptrtoint ptr %wr_rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wr_rx_dma_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool49.not = icmp eq i32 %19, 0
  br i1 %tobool49.not, label %do.end48.if.end53_crit_edge, label %if.then50

do.end48.if.end53_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  %wr_rx_cnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 28
  %20 = ptrtoint ptr %wr_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %wr_rx_cnt, align 8
  %mul = mul i32 %21, 48
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  call void @dma_unmap_page_attrs(ptr noundef %23, i32 noundef %19, i32 noundef %mul, i32 noundef 2, i32 noundef 0) #8
  %24 = ptrtoint ptr %wr_rx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %wr_rx_dma_addr, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %do.end48.if.end53_crit_edge
  %wr_rx_v2_dma_addr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 26
  %25 = ptrtoint ptr %wr_rx_v2_dma_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wr_rx_v2_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool54.not = icmp eq i32 %26, 0
  br i1 %tobool54.not, label %if.end53.if.end59_crit_edge, label %if.then55

if.end53.if.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  call void @dma_unmap_page_attrs(ptr noundef %28, i32 noundef %26, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #8
  %29 = ptrtoint ptr %wr_rx_v2_dma_addr to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %wr_rx_v2_dma_addr, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then55, %if.end53.if.end59_crit_edge
  %wr_tx_dma_addr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 15
  %30 = ptrtoint ptr %wr_tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wr_tx_dma_addr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool60.not = icmp eq i32 %31, 0
  br i1 %tobool60.not, label %if.end59.if.end66_crit_edge, label %if.then61

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_cnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 19
  %32 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wr_tx_cnt, align 8
  %mul64 = mul i32 %33, 48
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 8
  call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %31, i32 noundef %mul64, i32 noundef 1, i32 noundef 0) #8
  %36 = ptrtoint ptr %wr_tx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %wr_tx_dma_addr, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end59.if.end66_crit_edge
  %wr_tx_v2_dma_addr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 16
  %37 = ptrtoint ptr %wr_tx_v2_dma_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %wr_tx_v2_dma_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool67.not = icmp eq i32 %38, 0
  br i1 %tobool67.not, label %if.end66.cleanup73_crit_edge, label %if.then68

if.end66.cleanup73_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 8
  call void @dma_unmap_page_attrs(ptr noundef %40, i32 noundef %38, i32 noundef 8192, i32 noundef 1, i32 noundef 0) #8
  %41 = ptrtoint ptr %wr_tx_v2_dma_addr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %wr_tx_v2_dma_addr, align 4
  br label %cleanup73

cleanup73:                                        ; preds = %if.then68, %if.end66.cleanup73_crit_edge, %entry.cleanup73_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_free_lgr_mem(ptr nocapture noundef %lgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 16
  %0 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %wr_rx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 2
  %2 = ptrtoint ptr %wr_rx_buf_v2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wr_rx_buf_v2, align 8
  tail call void @kfree(ptr noundef %3) #8
  %4 = ptrtoint ptr %wr_rx_buf_v2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %wr_rx_buf_v2, align 8
  %wr_tx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 3
  %5 = ptrtoint ptr %wr_tx_buf_v2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wr_tx_buf_v2, align 4
  tail call void @kfree(ptr noundef %6) #8
  %7 = ptrtoint ptr %wr_tx_buf_v2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %wr_tx_buf_v2, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_free_link_mem(ptr nocapture noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_tx_v2_ib = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 12
  %0 = ptrtoint ptr %wr_tx_v2_ib to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_tx_v2_ib, align 4
  tail call void @kfree(ptr noundef %1) #8
  %2 = ptrtoint ptr %wr_tx_v2_ib to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %wr_tx_v2_ib, align 4
  %wr_tx_v2_sge = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 13
  %3 = ptrtoint ptr %wr_tx_v2_sge to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wr_tx_v2_sge, align 8
  tail call void @kfree(ptr noundef %4) #8
  %5 = ptrtoint ptr %wr_tx_v2_sge to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %wr_tx_v2_sge, align 8
  %wr_tx_v2_pend = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 14
  %6 = ptrtoint ptr %wr_tx_v2_pend to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr_tx_v2_pend, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = ptrtoint ptr %wr_tx_v2_pend to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %wr_tx_v2_pend, align 4
  %wr_tx_compl = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 11
  %9 = ptrtoint ptr %wr_tx_compl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %wr_tx_compl, align 8
  tail call void @kfree(ptr noundef %10) #8
  %11 = ptrtoint ptr %wr_tx_compl to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %wr_tx_compl, align 8
  %wr_tx_pends = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 10
  %12 = ptrtoint ptr %wr_tx_pends to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wr_tx_pends, align 4
  tail call void @kfree(ptr noundef %13) #8
  %14 = ptrtoint ptr %wr_tx_pends to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %wr_tx_pends, align 4
  %wr_tx_mask = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 18
  %15 = ptrtoint ptr %wr_tx_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr_tx_mask, align 4
  tail call void @bitmap_free(ptr noundef %16) #8
  %17 = ptrtoint ptr %wr_tx_mask to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %wr_tx_mask, align 4
  %wr_tx_sges = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 7
  %18 = ptrtoint ptr %wr_tx_sges to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %wr_tx_sges, align 8
  tail call void @kfree(ptr noundef %19) #8
  %20 = ptrtoint ptr %wr_tx_sges to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %wr_tx_sges, align 8
  %wr_tx_rdma_sges = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 8
  %21 = ptrtoint ptr %wr_tx_rdma_sges to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr_tx_rdma_sges, align 4
  tail call void @kfree(ptr noundef %22) #8
  %23 = ptrtoint ptr %wr_tx_rdma_sges to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %wr_tx_rdma_sges, align 4
  %wr_rx_sges = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 24
  %24 = ptrtoint ptr %wr_rx_sges to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %wr_rx_sges, align 4
  tail call void @kfree(ptr noundef %25) #8
  %26 = ptrtoint ptr %wr_rx_sges to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %wr_rx_sges, align 4
  %wr_tx_rdmas = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 9
  %27 = ptrtoint ptr %wr_tx_rdmas to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr_tx_rdmas, align 8
  tail call void @kfree(ptr noundef %28) #8
  %29 = ptrtoint ptr %wr_tx_rdmas to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %wr_tx_rdmas, align 8
  %wr_rx_ibs = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 23
  %30 = ptrtoint ptr %wr_rx_ibs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wr_rx_ibs, align 8
  tail call void @kfree(ptr noundef %31) #8
  %32 = ptrtoint ptr %wr_rx_ibs to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %wr_rx_ibs, align 8
  %wr_tx_ibs = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 6
  %33 = ptrtoint ptr %wr_tx_ibs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr_tx_ibs, align 4
  tail call void @kfree(ptr noundef %34) #8
  %35 = ptrtoint ptr %wr_tx_ibs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %wr_tx_ibs, align 4
  %wr_tx_bufs = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 5
  %36 = ptrtoint ptr %wr_tx_bufs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wr_tx_bufs, align 8
  tail call void @kfree(ptr noundef %37) #8
  %38 = ptrtoint ptr %wr_tx_bufs to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %wr_tx_bufs, align 8
  %wr_rx_bufs = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 22
  %39 = ptrtoint ptr %wr_rx_bufs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wr_rx_bufs, align 4
  tail call void @kfree(ptr noundef %40) #8
  %41 = ptrtoint ptr %wr_rx_bufs to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %wr_rx_bufs, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_alloc_lgr_mem(ptr nocapture noundef %lgr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 16
  %0 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 8192) #12
  %wr_rx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 2
  %3 = ptrtoint ptr %wr_rx_buf_v2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %wr_rx_buf_v2, align 8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8192) #12
  %wr_tx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 3
  %5 = ptrtoint ptr %wr_tx_buf_v2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i16, ptr %wr_tx_buf_v2, align 4
  %tobool7.not = icmp eq ptr %call7.i.i16, null
  br i1 %tobool7.not, label %if.then8, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %wr_rx_buf_v2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr_rx_buf_v2, align 8
  tail call void @kfree(ptr noundef %7) #8
  br label %return

return:                                           ; preds = %if.then8, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then8 ], [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ 0, %if.end4.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_alloc_link_mem(ptr nocapture noundef %link) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 50
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 768) #12
  %wr_tx_bufs = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 5
  %5 = ptrtoint ptr %wr_tx_bufs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %wr_tx_bufs, align 8
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i130 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 2304) #12
  %wr_rx_bufs = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 22
  %7 = ptrtoint ptr %wr_rx_bufs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i130, ptr %wr_rx_bufs, align 4
  %tobool5.not = icmp eq ptr %call7.i.i.i130, null
  br i1 %tobool5.not, label %if.end.no_mem_wr_tx_bufs_crit_edge, label %if.end7

if.end.no_mem_wr_tx_bufs_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_tx_bufs

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i131 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 640) #12
  %wr_tx_ibs = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 6
  %9 = ptrtoint ptr %wr_tx_ibs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i.i131, ptr %wr_tx_ibs, align 4
  %tobool10.not = icmp eq ptr %call7.i.i.i131, null
  br i1 %tobool10.not, label %if.end7.no_mem_wr_rx_bufs_crit_edge, label %if.end12

if.end7.no_mem_wr_rx_bufs_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_rx_bufs

if.end12:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i132 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 1152) #12
  %wr_rx_ibs = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 23
  %11 = ptrtoint ptr %wr_rx_ibs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i.i132, ptr %wr_rx_ibs, align 8
  %tobool15.not = icmp eq ptr %call7.i.i.i132, null
  br i1 %tobool15.not, label %if.end12.no_mem_wr_tx_ibs_crit_edge, label %if.end17

if.end12.no_mem_wr_tx_ibs_crit_edge:              ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_tx_ibs

if.end17:                                         ; preds = %if.end12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i133 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1792) #12
  %wr_tx_rdmas = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 9
  %13 = ptrtoint ptr %wr_tx_rdmas to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i.i133, ptr %wr_tx_rdmas, align 8
  %tobool20.not = icmp eq ptr %call7.i.i.i133, null
  br i1 %tobool20.not, label %if.end17.no_mem_wr_rx_ibs_crit_edge, label %if.end22

if.end17.no_mem_wr_rx_ibs_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_rx_ibs

if.end22:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i134 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1024) #12
  %wr_tx_rdma_sges = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 8
  %15 = ptrtoint ptr %wr_tx_rdma_sges to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i134, ptr %wr_tx_rdma_sges, align 4
  %tobool25.not = icmp eq ptr %call7.i.i.i134, null
  br i1 %tobool25.not, label %if.end22.no_mem_wr_tx_rdmas_crit_edge, label %if.end27

if.end22.no_mem_wr_tx_rdmas_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_tx_rdmas

if.end27:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i135 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 256) #12
  %wr_tx_sges = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 7
  %17 = ptrtoint ptr %wr_tx_sges to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i135, ptr %wr_tx_sges, align 8
  %tobool30.not = icmp eq ptr %call7.i.i.i135, null
  br i1 %tobool30.not, label %if.end27.no_mem_wr_tx_rdma_sges_crit_edge, label %if.end7.i.i

if.end27.no_mem_wr_tx_rdma_sges_crit_edge:        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_tx_rdma_sges

if.end7.i.i:                                      ; preds = %if.end27
  %18 = select i1 %cmp, i32 1536, i32 768
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #13
  %wr_rx_sges = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 24
  %19 = ptrtoint ptr %wr_rx_sges to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %wr_rx_sges, align 4
  %tobool35.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool35.not, label %if.end7.i.i.no_mem_wr_tx_sges_crit_edge, label %if.end37

if.end7.i.i.no_mem_wr_tx_sges_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_tx_sges

if.end37:                                         ; preds = %if.end7.i.i
  %call38 = tail call ptr @bitmap_zalloc(i32 noundef 16, i32 noundef 3264) #8
  %wr_tx_mask = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 18
  %20 = ptrtoint ptr %wr_tx_mask to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38, ptr %wr_tx_mask, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.end37.no_mem_wr_rx_sges_crit_edge, label %if.end42

if.end37.no_mem_wr_rx_sges_crit_edge:             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_rx_sges

if.end42:                                         ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i147 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 1024) #12
  %wr_tx_pends = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 10
  %22 = ptrtoint ptr %wr_tx_pends to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i147, ptr %wr_tx_pends, align 4
  %tobool45.not = icmp eq ptr %call7.i.i.i147, null
  br i1 %tobool45.not, label %if.end42.no_mem_wr_tx_mask_crit_edge, label %if.end47

if.end42.no_mem_wr_tx_mask_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_tx_mask

if.end47:                                         ; preds = %if.end42
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i160 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 896) #12
  %wr_tx_compl = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 11
  %24 = ptrtoint ptr %wr_tx_compl to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i.i160, ptr %wr_tx_compl, align 8
  %tobool50.not = icmp eq ptr %call7.i.i.i160, null
  br i1 %tobool50.not, label %if.end47.no_mem_wr_tx_pends_crit_edge, label %if.end52

if.end47.no_mem_wr_tx_pends_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_wr_tx_pends

if.end52:                                         ; preds = %if.end47
  %25 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lgr, align 4
  %smc_version54 = getelementptr inbounds %struct.smc_link_group, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %smc_version54 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %smc_version54, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %28)
  %cmp56 = icmp eq i8 %28, 2
  br i1 %cmp56, label %if.then58, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then58:                                        ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 40) #12
  %wr_tx_v2_ib = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 12
  %30 = ptrtoint ptr %wr_tx_v2_ib to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i.i, ptr %wr_tx_v2_ib, align 4
  %tobool61.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool61.not, label %if.then58.no_mem_tx_compl_crit_edge, label %if.end63

if.then58.no_mem_tx_compl_crit_edge:              ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_tx_compl

if.end63:                                         ; preds = %if.then58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %31 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i167 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 16) #12
  %wr_tx_v2_sge = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 13
  %32 = ptrtoint ptr %wr_tx_v2_sge to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i167, ptr %wr_tx_v2_sge, align 8
  %tobool66.not = icmp eq ptr %call7.i.i167, null
  br i1 %tobool66.not, label %if.end63.no_mem_v2_ib_crit_edge, label %if.end68

if.end63.no_mem_v2_ib_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %no_mem_v2_ib

if.end68:                                         ; preds = %if.end63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i170 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 64) #12
  %wr_tx_v2_pend = getelementptr inbounds %struct.smc_link, ptr %link, i32 0, i32 14
  %34 = ptrtoint ptr %wr_tx_v2_pend to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i170, ptr %wr_tx_v2_pend, align 4
  %tobool71.not = icmp eq ptr %call7.i.i170, null
  br i1 %tobool71.not, label %no_mem_v2_sge, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

no_mem_v2_sge:                                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %wr_tx_v2_sge to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr_tx_v2_sge, align 8
  tail call void @kfree(ptr noundef %36) #8
  br label %no_mem_v2_ib

no_mem_v2_ib:                                     ; preds = %no_mem_v2_sge, %if.end63.no_mem_v2_ib_crit_edge
  %37 = ptrtoint ptr %wr_tx_v2_ib to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wr_tx_v2_ib, align 4
  tail call void @kfree(ptr noundef %38) #8
  br label %no_mem_tx_compl

no_mem_tx_compl:                                  ; preds = %no_mem_v2_ib, %if.then58.no_mem_tx_compl_crit_edge
  %39 = ptrtoint ptr %wr_tx_compl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %wr_tx_compl, align 8
  tail call void @kfree(ptr noundef %40) #8
  br label %no_mem_wr_tx_pends

no_mem_wr_tx_pends:                               ; preds = %no_mem_tx_compl, %if.end47.no_mem_wr_tx_pends_crit_edge
  %41 = ptrtoint ptr %wr_tx_pends to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %wr_tx_pends, align 4
  tail call void @kfree(ptr noundef %42) #8
  br label %no_mem_wr_tx_mask

no_mem_wr_tx_mask:                                ; preds = %no_mem_wr_tx_pends, %if.end42.no_mem_wr_tx_mask_crit_edge
  %43 = ptrtoint ptr %wr_tx_mask to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %wr_tx_mask, align 4
  tail call void @kfree(ptr noundef %44) #8
  br label %no_mem_wr_rx_sges

no_mem_wr_rx_sges:                                ; preds = %no_mem_wr_tx_mask, %if.end37.no_mem_wr_rx_sges_crit_edge
  %45 = ptrtoint ptr %wr_rx_sges to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %wr_rx_sges, align 4
  tail call void @kfree(ptr noundef %46) #8
  br label %no_mem_wr_tx_sges

no_mem_wr_tx_sges:                                ; preds = %no_mem_wr_rx_sges, %if.end7.i.i.no_mem_wr_tx_sges_crit_edge
  %47 = ptrtoint ptr %wr_tx_sges to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wr_tx_sges, align 8
  tail call void @kfree(ptr noundef %48) #8
  br label %no_mem_wr_tx_rdma_sges

no_mem_wr_tx_rdma_sges:                           ; preds = %no_mem_wr_tx_sges, %if.end27.no_mem_wr_tx_rdma_sges_crit_edge
  %49 = ptrtoint ptr %wr_tx_rdma_sges to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr_tx_rdma_sges, align 4
  tail call void @kfree(ptr noundef %50) #8
  br label %no_mem_wr_tx_rdmas

no_mem_wr_tx_rdmas:                               ; preds = %no_mem_wr_tx_rdma_sges, %if.end22.no_mem_wr_tx_rdmas_crit_edge
  %51 = ptrtoint ptr %wr_tx_rdmas to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wr_tx_rdmas, align 8
  tail call void @kfree(ptr noundef %52) #8
  br label %no_mem_wr_rx_ibs

no_mem_wr_rx_ibs:                                 ; preds = %no_mem_wr_tx_rdmas, %if.end17.no_mem_wr_rx_ibs_crit_edge
  %53 = ptrtoint ptr %wr_rx_ibs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wr_rx_ibs, align 8
  tail call void @kfree(ptr noundef %54) #8
  br label %no_mem_wr_tx_ibs

no_mem_wr_tx_ibs:                                 ; preds = %no_mem_wr_rx_ibs, %if.end12.no_mem_wr_tx_ibs_crit_edge
  %55 = ptrtoint ptr %wr_tx_ibs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %wr_tx_ibs, align 4
  tail call void @kfree(ptr noundef %56) #8
  br label %no_mem_wr_rx_bufs

no_mem_wr_rx_bufs:                                ; preds = %no_mem_wr_tx_ibs, %if.end7.no_mem_wr_rx_bufs_crit_edge
  %57 = ptrtoint ptr %wr_rx_bufs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %wr_rx_bufs, align 4
  tail call void @kfree(ptr noundef %58) #8
  br label %no_mem_wr_tx_bufs

no_mem_wr_tx_bufs:                                ; preds = %no_mem_wr_rx_bufs, %if.end.no_mem_wr_tx_bufs_crit_edge
  %59 = ptrtoint ptr %wr_tx_bufs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr_tx_bufs, align 8
  tail call void @kfree(ptr noundef %60) #8
  br label %cleanup

cleanup:                                          ; preds = %no_mem_wr_tx_bufs, %if.end68.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end68.cleanup_crit_edge ], [ 0, %if.end52.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ -12, %no_mem_wr_tx_bufs ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_remove_dev(ptr noundef %smcibdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_tasklet = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %recv_tasklet) #8
  %send_tasklet = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 6
  tail call void @tasklet_kill(ptr noundef %send_tasklet) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_wr_add_dev(ptr noundef %smcibdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %recv_tasklet = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 7
  tail call void @tasklet_setup(ptr noundef %recv_tasklet, ptr noundef nonnull @smc_wr_rx_tasklet_fn) #8
  %send_tasklet = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 6
  tail call void @tasklet_setup(ptr noundef %send_tasklet, ptr noundef nonnull @smc_wr_tx_tasklet_fn) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_wr_rx_tasklet_fn(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %dummy.i.i59.i = alloca ptr, align 4
  %dummy.i.i.i = alloca ptr, align 4
  %wc = alloca [10 x %struct.ib_wc], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %wc) #8
  %roce_cq_recv = getelementptr i8, ptr %t, i32 -28
  br label %again

again:                                            ; preds = %do.end.again_crit_edge, %entry
  %cmp = phi i1 [ false, %do.end.again_crit_edge ], [ true, %entry ]
  br label %do.body

do.body:                                          ; preds = %for.inc.i.do.body_crit_edge, %again
  %0 = call ptr @memset(ptr %wc, i32 0, i32 640)
  %1 = ptrtoint ptr %roce_cq_recv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %roce_cq_recv, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %4, i32 0, i32 1, i32 10
  %5 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %poll_cq.i, align 4
  %call.i = call i32 %6(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %wc) #8
  br i1 %cmp, label %if.then, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %roce_cq_recv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %roce_cq_recv, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i14 = call i32 %12(ptr noundef %8, i32 noundef 7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp189.i = icmp sgt i32 %call.i, 0
  br i1 %cmp189.i, label %if.end.for.body.i_crit_edge, label %do.end

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.0190.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %qp.i = getelementptr %struct.ib_wc, ptr %wc, i32 %i.0190.i, i32 5
  %13 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qp.i, align 8
  %qp_context.i = getelementptr inbounds %struct.ib_qp, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %qp_context.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp_context.i, align 4
  %status.i = getelementptr %struct.ib_wc, ptr %wc, i32 %i.0190.i, i32 1
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %18, label %sw.default.i [
    i32 0, label %if.then.i
    i32 12, label %for.body.i.sw.bb.i_crit_edge
    i32 13, label %for.body.i.sw.bb.i_crit_edge15
    i32 5, label %for.body.i.sw.bb.i_crit_edge16
  ]

for.body.i.sw.bb.i_crit_edge16:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge15:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.ib_wc, ptr %wc, i32 %i.0190.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %wr_rx_tstamp.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 29
  %21 = ptrtoint ptr %wr_rx_tstamp.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %wr_rx_tstamp.i, align 4
  %22 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %qp.i, align 8
  %qp_context.i.i = getelementptr inbounds %struct.ib_qp, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %qp_context.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qp_context.i.i, align 4
  %byte_len.i.i = getelementptr %struct.ib_wc, ptr %wc, i32 %i.0190.i, i32 4
  %26 = ptrtoint ptr %byte_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %byte_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i.i = icmp eq i32 %27, 0
  br i1 %cmp.i.i, label %if.then.i.smc_wr_rx_demultiplex.exit.i_crit_edge, label %if.end.i.i

if.then.i.smc_wr_rx_demultiplex.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_rx_demultiplex.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx.i, align 8
  %wr_rx_cnt.i.i = getelementptr inbounds %struct.smc_link, ptr %25, i32 0, i32 28
  %30 = ptrtoint ptr %wr_rx_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wr_rx_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %29)
  %cmp167.i.i = icmp ult i64 %29, 4294967296
  br i1 %cmp167.i.i, label %if.then171.i.i, label %if.else177.i.i, !prof !38

if.then171.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv172.i.i = trunc i64 %29 to i32
  %rem173.i.i = urem i32 %conv172.i.i, %31
  br label %if.end181.i.i

if.else177.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %29) #11, !srcloc !39
  %asmresult.i310.i.i = extractvalue { i64, i64 } %32, 0
  %shr.i.i.i = lshr i64 %asmresult.i310.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %if.end181.i.i

if.end181.i.i:                                    ; preds = %if.else177.i.i, %if.then171.i.i
  %__rem.0.i.i = phi i32 [ %rem173.i.i, %if.then171.i.i ], [ %conv.i.i.i, %if.else177.i.i ]
  %wr_rx_bufs.i.i = getelementptr inbounds %struct.smc_link, ptr %25, i32 0, i32 22
  %33 = ptrtoint ptr %wr_rx_bufs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %wr_rx_bufs.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.smc_wr_buf, ptr %34, i32 %__rem.0.i.i
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i, align 1
  %conv183.i.i = zext i8 %36 to i32
  %mul.i.i.i.i = mul i32 %conv183.i.i, 1640531527
  %shr.i311.i.i = lshr i32 %mul.i.i.i.i, 28
  %arrayidx185.i.i = getelementptr [16 x %struct.hlist_head], ptr @smc_wr_rx_hash, i32 0, i32 %shr.i311.i.i
  %37 = ptrtoint ptr %arrayidx185.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %handler.0333.i.i = load ptr, ptr %arrayidx185.i.i, align 4
  %tobool193.not334.i.i = icmp eq ptr %handler.0333.i.i, null
  br i1 %tobool193.not334.i.i, label %if.end181.i.i.smc_wr_rx_demultiplex.exit.i_crit_edge, label %if.end181.i.i.for.body.i.i_crit_edge

if.end181.i.i.for.body.i.i_crit_edge:             ; preds = %if.end181.i.i
  br label %for.body.i.i

if.end181.i.i.smc_wr_rx_demultiplex.exit.i_crit_edge: ; preds = %if.end181.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_rx_demultiplex.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end181.i.i.for.body.i.i_crit_edge
  %handler.0335.i.i = phi ptr [ %handler.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %handler.0333.i.i, %if.end181.i.i.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.smc_wr_rx_handler, ptr %handler.0335.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %type.i.i, align 4
  %40 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %41)
  %cmp196.i.i = icmp eq i8 %39, %41
  br i1 %cmp196.i.i, label %if.then198.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.then198.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %handler199.i.i = getelementptr inbounds %struct.smc_wr_rx_handler, ptr %handler.0335.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %handler199.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %handler199.i.i, align 4
  call void %43(ptr noundef %arrayidx.i, ptr noundef %arrayidx.i.i) #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then198.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %44 = ptrtoint ptr %handler.0335.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %handler.0.i.i = load ptr, ptr %handler.0335.i.i, align 4
  %tobool193.not.i.i = icmp eq ptr %handler.0.i.i, null
  br i1 %tobool193.not.i.i, label %for.inc.i.i.smc_wr_rx_demultiplex.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.smc_wr_rx_demultiplex.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_rx_demultiplex.exit.i

smc_wr_rx_demultiplex.exit.i:                     ; preds = %for.inc.i.i.smc_wr_rx_demultiplex.exit.i_crit_edge, %if.end181.i.i.smc_wr_rx_demultiplex.exit.i_crit_edge, %if.then.i.smc_wr_rx_demultiplex.exit.i_crit_edge
  %wr_rx_id.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 27
  %45 = ptrtoint ptr %wr_rx_id.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %wr_rx_id.i.i, align 8
  %inc.i.i = add i64 %46, 1
  store i64 %inc.i.i, ptr %wr_rx_id.i.i, align 8
  %wr_rx_cnt.i18.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 28
  %47 = ptrtoint ptr %wr_rx_cnt.i18.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %wr_rx_cnt.i18.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %inc.i.i)
  %cmp164.i.i = icmp ult i64 %inc.i.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !38

if.then168.i.i:                                   ; preds = %smc_wr_rx_demultiplex.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %inc.i.i to i32
  %rem170.i.i = urem i32 %conv169.i.i, %48
  br label %smc_wr_rx_post.exit.i

if.else174.i.i:                                   ; preds = %smc_wr_rx_demultiplex.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %48, i64 %inc.i.i) #11, !srcloc !39
  %asmresult.i270.i.i = extractvalue { i64, i64 } %49, 0
  %shr.i.i56.i = lshr i64 %asmresult.i270.i.i, 32
  %conv.i.i57.i = trunc i64 %shr.i.i56.i to i32
  br label %smc_wr_rx_post.exit.i

smc_wr_rx_post.exit.i:                            ; preds = %if.else174.i.i, %if.then168.i.i
  %__rem.0.i58.i = phi i32 [ %rem170.i.i, %if.then168.i.i ], [ %conv.i.i57.i, %if.else174.i.i ]
  %wr_rx_ibs.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 23
  %50 = ptrtoint ptr %wr_rx_ibs.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wr_rx_ibs.i.i, align 8
  %52 = getelementptr %struct.ib_recv_wr, ptr %51, i32 %__rem.0.i58.i, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %inc.i.i, ptr %52, align 8
  %roce_qp.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 3
  %54 = ptrtoint ptr %roce_qp.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %roce_qp.i.i, align 4
  %56 = load ptr, ptr %wr_rx_ibs.i.i, align 8
  %arrayidx181.i.i = getelementptr %struct.ib_recv_wr, ptr %56, i32 %__rem.0.i58.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i.i) #8
  %57 = ptrtoint ptr %dummy.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i.i, align 4, !annotation !33
  %58 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %55, align 4
  %post_recv.i.i.i = getelementptr inbounds %struct.ib_device, ptr %59, i32 0, i32 1, i32 7
  %60 = ptrtoint ptr %post_recv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %post_recv.i.i.i, align 4
  %call.i.i.i = call i32 %61(ptr noundef %55, ptr noundef %arrayidx181.i.i, ptr noundef nonnull %dummy.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i.i) #8
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge15, %for.body.i.sw.bb.i_crit_edge16
  call void @smcr_link_down_cond_sched(ptr noundef %16) #8
  br label %for.inc.i

sw.default.i:                                     ; preds = %for.body.i
  %wr_rx_id.i60.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 27
  %62 = ptrtoint ptr %wr_rx_id.i60.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %wr_rx_id.i60.i, align 8
  %inc.i61.i = add i64 %63, 1
  store i64 %inc.i61.i, ptr %wr_rx_id.i60.i, align 8
  %wr_rx_cnt.i62.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 28
  %64 = ptrtoint ptr %wr_rx_cnt.i62.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wr_rx_cnt.i62.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %inc.i61.i)
  %cmp164.i173.i = icmp ult i64 %inc.i61.i, 4294967296
  br i1 %cmp164.i173.i, label %if.then168.i177.i, label %if.else174.i181.i, !prof !38

if.then168.i177.i:                                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i175.i = trunc i64 %inc.i61.i to i32
  %rem170.i176.i = urem i32 %conv169.i175.i, %65
  br label %smc_wr_rx_post.exit188.i

if.else174.i181.i:                                ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %65, i64 %inc.i61.i) #11, !srcloc !39
  %asmresult.i270.i178.i = extractvalue { i64, i64 } %66, 0
  %shr.i.i179.i = lshr i64 %asmresult.i270.i178.i, 32
  %conv.i.i180.i = trunc i64 %shr.i.i179.i to i32
  br label %smc_wr_rx_post.exit188.i

smc_wr_rx_post.exit188.i:                         ; preds = %if.else174.i181.i, %if.then168.i177.i
  %__rem.0.i182.i = phi i32 [ %rem170.i176.i, %if.then168.i177.i ], [ %conv.i.i180.i, %if.else174.i181.i ]
  %wr_rx_ibs.i183.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 23
  %67 = ptrtoint ptr %wr_rx_ibs.i183.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %wr_rx_ibs.i183.i, align 8
  %69 = getelementptr %struct.ib_recv_wr, ptr %68, i32 %__rem.0.i182.i, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %inc.i61.i, ptr %69, align 8
  %roce_qp.i184.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 3
  %71 = ptrtoint ptr %roce_qp.i184.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %roce_qp.i184.i, align 4
  %73 = load ptr, ptr %wr_rx_ibs.i183.i, align 8
  %arrayidx181.i185.i = getelementptr %struct.ib_recv_wr, ptr %73, i32 %__rem.0.i182.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i59.i) #8
  %74 = ptrtoint ptr %dummy.i.i59.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i59.i, align 4, !annotation !33
  %75 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %72, align 4
  %post_recv.i.i186.i = getelementptr inbounds %struct.ib_device, ptr %76, i32 0, i32 1, i32 7
  %77 = ptrtoint ptr %post_recv.i.i186.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %post_recv.i.i186.i, align 4
  %call.i.i187.i = call i32 %78(ptr noundef %72, ptr noundef %arrayidx181.i185.i, ptr noundef nonnull %dummy.i.i59.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i59.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %smc_wr_rx_post.exit188.i, %sw.bb.i, %smc_wr_rx_post.exit.i
  %inc.i = add nuw nsw i32 %i.0190.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  br i1 %cmp, label %do.end.again_crit_edge, label %if.end8

do.end.again_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %wc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_wr_tx_tasklet_fn(ptr nocapture noundef readonly %t) #0 align 64 {
entry:
  %pnd_snd.i = alloca %struct.smc_wr_tx_pend, align 8
  %wc = alloca [10 x %struct.ib_wc], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 640, ptr nonnull %wc) #8
  %roce_cq_send = getelementptr i8, ptr %t, i32 -8
  %handler.i = getelementptr inbounds %struct.smc_wr_tx_pend, ptr %pnd_snd.i, i32 0, i32 1
  %priv.i = getelementptr inbounds %struct.smc_wr_tx_pend, ptr %pnd_snd.i, i32 0, i32 5
  br label %again

again:                                            ; preds = %do.end.again_crit_edge, %entry
  %cmp = phi i1 [ false, %do.end.again_crit_edge ], [ true, %entry ]
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %again
  %0 = call ptr @memset(ptr %wc, i32 0, i32 640)
  %1 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %roce_cq_send, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %poll_cq.i = getelementptr inbounds %struct.ib_device, ptr %4, i32 0, i32 1, i32 10
  %5 = ptrtoint ptr %poll_cq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %poll_cq.i, align 4
  %call.i = call i32 %6(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %wc) #8
  br i1 %cmp, label %if.then, label %do.body.if.end_crit_edge

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %roce_cq_send, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i18 = call i32 %12(ptr noundef %8, i32 noundef 6) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end.do.end_crit_edge, label %for.cond.preheader

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp520 = icmp sgt i32 %call.i, 0
  br i1 %cmp520, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.end_crit_edge

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %smc_wr_tx_process_cqe.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.021 = phi i32 [ %inc6, %smc_wr_tx_process_cqe.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pnd_snd.i) #8
  %qp.i = getelementptr [10 x %struct.ib_wc], ptr %wc, i32 0, i32 %i.021, i32 5
  %13 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %qp.i, align 8
  %qp_context.i = getelementptr inbounds %struct.ib_qp, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %qp_context.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %qp_context.i, align 4
  %opcode.i = getelementptr [10 x %struct.ib_wc], ptr %wc, i32 0, i32 %i.021, i32 2
  %17 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %opcode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp.i = icmp eq i32 %18, 8
  br i1 %cmp.i, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %status.i = getelementptr [10 x %struct.ib_wc], ptr %wc, i32 0, i32 %i.021, i32 1
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 2
  %21 = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 33
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i, ptr %21, align 8
  %wr_reg_wait.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 31
  br label %smc_wr_tx_process_cqe.exit.sink.split

if.end3.i:                                        ; preds = %for.body
  %arrayidx = getelementptr [10 x %struct.ib_wc], ptr %wc, i32 0, i32 %i.021
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx, align 8
  %wr_tx_cnt.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 19
  %25 = ptrtoint ptr %wr_tx_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %wr_tx_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp9.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp9.not.i.i, label %if.end3.i.smc_wr_tx_find_pending_index.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end3.i.smc_wr_tx_find_pending_index.exit.i_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_tx_find_pending_index.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end3.i
  %wr_tx_pends.i.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 10
  %27 = ptrtoint ptr %wr_tx_pends.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wr_tx_pends.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.010.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.smc_wr_tx_pend, ptr %28, i32 %i.010.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %30, i64 %24)
  %cmp2.i.i = icmp eq i64 %30, %24
  br i1 %cmp2.i.i, label %for.body.i.i.smc_wr_tx_find_pending_index.exit.i_crit_edge, label %for.inc.i.i

for.body.i.i.smc_wr_tx_find_pending_index.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_tx_find_pending_index.exit.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %26
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.then5.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.if.then5.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

smc_wr_tx_find_pending_index.exit.i:              ; preds = %for.body.i.i.smc_wr_tx_find_pending_index.exit.i_crit_edge, %if.end3.i.smc_wr_tx_find_pending_index.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end3.i.smc_wr_tx_find_pending_index.exit.i_crit_edge ], [ %i.010.i.i, %for.body.i.i.smc_wr_tx_find_pending_index.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %26)
  %cmp4.i = icmp eq i32 %retval.0.i.i, %26
  br i1 %cmp4.i, label %smc_wr_tx_find_pending_index.exit.i.if.then5.i_crit_edge, label %if.else17.i

smc_wr_tx_find_pending_index.exit.i.if.then5.i_crit_edge: ; preds = %smc_wr_tx_find_pending_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5.i

if.then5.i:                                       ; preds = %smc_wr_tx_find_pending_index.exit.i.if.then5.i_crit_edge, %for.inc.i.i.if.then5.i_crit_edge
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 50
  %31 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lgr.i, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %32, i32 0, i32 16
  %33 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %cmp6.not.i = icmp eq i8 %34, 2
  br i1 %cmp6.not.i, label %lor.lhs.false.i, label %if.then5.i.smc_wr_tx_process_cqe.exit_crit_edge

if.then5.i.smc_wr_tx_process_cqe.exit_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_tx_process_cqe.exit

lor.lhs.false.i:                                  ; preds = %if.then5.i
  %wr_tx_v2_pend.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 14
  %35 = ptrtoint ptr %wr_tx_v2_pend.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wr_tx_v2_pend.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %36, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %38, i64 %24)
  %cmp8.not.i = icmp eq i64 %38, %24
  br i1 %cmp8.not.i, label %if.end11.i, label %lor.lhs.false.i.smc_wr_tx_process_cqe.exit_crit_edge

lor.lhs.false.i.smc_wr_tx_process_cqe.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_tx_process_cqe.exit

if.end11.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %status12.i = getelementptr [10 x %struct.ib_wc], ptr %wc, i32 0, i32 %i.021, i32 1
  %39 = ptrtoint ptr %status12.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %status12.i, align 8
  %wc_status.i = getelementptr inbounds %struct.smc_wr_tx_pend, ptr %36, i32 0, i32 2
  %41 = ptrtoint ptr %wc_status.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %wc_status.i, align 4
  %42 = ptrtoint ptr %wr_tx_v2_pend.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %wr_tx_v2_pend.i, align 4
  %44 = call ptr @memcpy(ptr %pnd_snd.i, ptr %43, i32 64)
  %45 = call ptr @memset(ptr %43, i32 0, i32 64)
  %46 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lgr.i, align 4
  %wr_tx_buf_v2.i = getelementptr inbounds %struct.smc_link_group, ptr %47, i32 0, i32 21, i32 0, i32 3
  %48 = ptrtoint ptr %wr_tx_buf_v2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %wr_tx_buf_v2.i, align 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 8192)
  br label %if.end35.i

if.else17.i:                                      ; preds = %smc_wr_tx_find_pending_index.exit.i
  %status18.i = getelementptr [10 x %struct.ib_wc], ptr %wc, i32 0, i32 %i.021, i32 1
  %51 = ptrtoint ptr %status18.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %status18.i, align 8
  %wr_tx_pends.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 10
  %53 = ptrtoint ptr %wr_tx_pends.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wr_tx_pends.i, align 4
  %wc_status19.i = getelementptr %struct.smc_wr_tx_pend, ptr %54, i32 %retval.0.i.i, i32 2
  %55 = ptrtoint ptr %wc_status19.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %52, ptr %wc_status19.i, align 4
  %56 = load ptr, ptr %wr_tx_pends.i, align 4
  %compl_requested.i = getelementptr %struct.smc_wr_tx_pend, ptr %56, i32 %retval.0.i.i, i32 6
  %57 = ptrtoint ptr %compl_requested.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %compl_requested.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool22.not.i = icmp eq i8 %58, 0
  br i1 %tobool22.not.i, label %if.else17.i.if.end25.i_crit_edge, label %if.then23.i

if.else17.i.if.end25.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_compl.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 11
  %59 = ptrtoint ptr %wr_tx_compl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %wr_tx_compl.i, align 8
  %arrayidx24.i = getelementptr %struct.completion, ptr %60, i32 %retval.0.i.i
  call void @complete(ptr noundef %arrayidx24.i) #8
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.else17.i.if.end25.i_crit_edge
  %61 = ptrtoint ptr %wr_tx_pends.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wr_tx_pends.i, align 4
  %arrayidx27.i = getelementptr %struct.smc_wr_tx_pend, ptr %62, i32 %retval.0.i.i
  %63 = call ptr @memcpy(ptr %pnd_snd.i, ptr %arrayidx27.i, i32 64)
  %64 = call ptr @memset(ptr %arrayidx27.i, i32 0, i32 64)
  %wr_tx_bufs.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 5
  %65 = ptrtoint ptr %wr_tx_bufs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %wr_tx_bufs.i, align 8
  %arrayidx30.i = getelementptr %struct.smc_wr_buf, ptr %66, i32 %retval.0.i.i
  %67 = call ptr @memset(ptr %arrayidx30.i, i32 0, i32 48)
  %wr_tx_mask.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 18
  %68 = ptrtoint ptr %wr_tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wr_tx_mask.i, align 4
  %call31.i = call i32 @_test_and_clear_bit(i32 noundef %retval.0.i.i, ptr noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end25.i.smc_wr_tx_process_cqe.exit_crit_edge, label %if.end25.i.if.end35.i_crit_edge

if.end25.i.if.end35.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.end25.i.smc_wr_tx_process_cqe.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_tx_process_cqe.exit

if.end35.i:                                       ; preds = %if.end25.i.if.end35.i_crit_edge, %if.end11.i
  %status36.i = getelementptr [10 x %struct.ib_wc], ptr %wc, i32 0, i32 %i.021, i32 1
  %70 = ptrtoint ptr %status36.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %status36.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool37.not.i = icmp eq i32 %71, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end49.i_crit_edge, label %if.then38.i

if.end35.i.if.end49.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then38.i:                                      ; preds = %if.end35.i
  %lgr39.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 50
  %72 = ptrtoint ptr %lgr39.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lgr39.i, align 4
  %smc_version40.i = getelementptr inbounds %struct.smc_link_group, ptr %73, i32 0, i32 16
  %74 = ptrtoint ptr %smc_version40.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %smc_version40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp42.i = icmp eq i8 %75, 2
  br i1 %cmp42.i, label %if.then44.i, label %if.then38.i.if.end48.i_crit_edge

if.then38.i.if.end48.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48.i

if.then44.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_v2_pend45.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 14
  %76 = ptrtoint ptr %wr_tx_v2_pend45.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wr_tx_v2_pend45.i, align 4
  %78 = call ptr @memset(ptr %77, i32 0, i32 64)
  %79 = ptrtoint ptr %lgr39.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lgr39.i, align 4
  %wr_tx_buf_v247.i = getelementptr inbounds %struct.smc_link_group, ptr %80, i32 0, i32 21, i32 0, i32 3
  %81 = ptrtoint ptr %wr_tx_buf_v247.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %wr_tx_buf_v247.i, align 4
  %83 = call ptr @memset(ptr %82, i32 0, i32 8192)
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then44.i, %if.then38.i.if.end48.i_crit_edge
  call void @smcr_link_down_cond_sched(ptr noundef %16) #8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end48.i, %if.end35.i.if.end49.i_crit_edge
  %84 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %handler.i, align 8
  %tobool50.not.i = icmp eq ptr %85, null
  br i1 %tobool50.not.i, label %if.end49.i.if.end54.i_crit_edge, label %if.then51.i

if.end49.i.if.end54.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then51.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %status36.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %status36.i, align 8
  call void %85(ptr noundef %priv.i, ptr noundef %16, i32 noundef %87) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i, %if.end49.i.if.end54.i_crit_edge
  %wr_tx_wait.i = getelementptr inbounds %struct.smc_link, ptr %16, i32 0, i32 20
  br label %smc_wr_tx_process_cqe.exit.sink.split

smc_wr_tx_process_cqe.exit.sink.split:            ; preds = %if.end54.i, %if.then.i
  %wr_reg_wait.i.i.sink = phi ptr [ %wr_reg_wait.i.i, %if.then.i ], [ %wr_tx_wait.i, %if.end54.i ]
  call void @__wake_up(ptr noundef %wr_reg_wait.i.i.sink, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %smc_wr_tx_process_cqe.exit

smc_wr_tx_process_cqe.exit:                       ; preds = %smc_wr_tx_process_cqe.exit.sink.split, %if.end25.i.smc_wr_tx_process_cqe.exit_crit_edge, %lor.lhs.false.i.smc_wr_tx_process_cqe.exit_crit_edge, %if.then5.i.smc_wr_tx_process_cqe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pnd_snd.i) #8
  %inc6 = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc6, %call.i
  br i1 %exitcond.not, label %do.cond, label %smc_wr_tx_process_cqe.exit.for.body_crit_edge

smc_wr_tx_process_cqe.exit.for.body_crit_edge:    ; preds = %smc_wr_tx_process_cqe.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.cond:                                          ; preds = %smc_wr_tx_process_cqe.exit
  br i1 %cmp520, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge, %if.end.do.end_crit_edge
  br i1 %cmp, label %do.end.again_crit_edge, label %if.end10

do.end.again_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 640, ptr nonnull %wc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_wr_create_link(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  %ibdev1 = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ibdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev1, align 8
  %wr_tx_id = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_id, i32 noundef 4) #8
  %4 = ptrtoint ptr %wr_tx_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %wr_tx_id, align 4
  %wr_rx_id = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 27
  %5 = ptrtoint ptr %wr_rx_id to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %wr_rx_id, align 8
  %wr_rx_bufs = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 22
  %6 = ptrtoint ptr %wr_rx_bufs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wr_rx_bufs, align 4
  %wr_rx_cnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 28
  %8 = ptrtoint ptr %wr_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wr_rx_cnt, align 8
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call.i.i110 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %7) #8
  br i1 %call.i.i110, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.ib_dma_map_single.exit_crit_edge, label %if.then.i.i, !prof !38

land.rhs.i.i.ib_dma_map_single.exit_crit_edge:    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dma_map_single.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %11) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %15, %if.end.i.i.i ], [ %13, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %ib_dma_map_single.exit

if.end39.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %9, 48
  tail call void @debug_dma_map_single(ptr noundef %11, ptr noundef %7, i32 noundef %mul) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %7 to i32
  %sub.i.i = add i32 %17, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %16, i32 %shr.i.i
  %and.i.i = and i32 %17, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %mul, i32 noundef 2, i32 noundef 0) #8
  br label %ib_dma_map_single.exit

ib_dma_map_single.exit:                           ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.ib_dma_map_single.exit_crit_edge ]
  %wr_rx_dma_addr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 25
  %18 = ptrtoint ptr %wr_rx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %retval.0.i.i, ptr %wr_rx_dma_addr, align 8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %20, i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i.not = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i.not, label %ib_dma_map_single.exit.out_crit_edge, label %if.end

ib_dma_map_single.exit.out_crit_edge:             ; preds = %ib_dma_map_single.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %ib_dma_map_single.exit
  %lgr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %21 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lgr, align 4
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %cmp = icmp eq i8 %24, 2
  br i1 %cmp, label %if.then8, label %if.end.if.end29_crit_edge

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then8:                                         ; preds = %if.end
  %wr_rx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %22, i32 0, i32 21, i32 0, i32 2
  %25 = ptrtoint ptr %wr_rx_buf_v2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wr_rx_buf_v2, align 8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 8
  %call.i.i111 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #8
  br i1 %call.i.i111, label %land.rhs.i.i113, label %if.end39.i.i126

land.rhs.i.i113:                                  ; preds = %if.then8
  %.b1.i.i112 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i112, label %land.rhs.i.i113.ib_dma_map_single.exit129_crit_edge, label %if.then.i.i117, !prof !38

land.rhs.i.i113.ib_dma_map_single.exit129_crit_edge: ; preds = %land.rhs.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dma_map_single.exit129

if.then.i.i117:                                   ; preds = %land.rhs.i.i113
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i114 = tail call ptr @dev_driver_string(ptr noundef %28) #8
  %init_name.i.i.i115 = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i.i.i115 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i115, align 8
  %tobool.not.i.i.i116 = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i116, label %if.end.i.i.i118, label %if.then.i.i117.dev_name.exit.i.i120_crit_edge

if.then.i.i117.dev_name.exit.i.i120_crit_edge:    ; preds = %if.then.i.i117
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i120

if.end.i.i.i118:                                  ; preds = %if.then.i.i117
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  br label %dev_name.exit.i.i120

dev_name.exit.i.i120:                             ; preds = %if.end.i.i.i118, %if.then.i.i117.dev_name.exit.i.i120_crit_edge
  %retval.0.i.i.i119 = phi ptr [ %32, %if.end.i.i.i118 ], [ %30, %if.then.i.i117.dev_name.exit.i.i120_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call16.i.i114, ptr noundef %retval.0.i.i.i119) #8
  br label %ib_dma_map_single.exit129

if.end39.i.i126:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %28, ptr noundef %26, i32 noundef 8192) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %26 to i32
  %sub.i.i121 = add i32 %34, 1073741824
  %shr.i.i122 = lshr i32 %sub.i.i121, 12
  %add.ptr.i.i123 = getelementptr %struct.page, ptr %33, i32 %shr.i.i122
  %and.i.i124 = and i32 %34, 4095
  %call41.i.i125 = tail call i32 @dma_map_page_attrs(ptr noundef %28, ptr noundef %add.ptr.i.i123, i32 noundef %and.i.i124, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #8
  br label %ib_dma_map_single.exit129

ib_dma_map_single.exit129:                        ; preds = %if.end39.i.i126, %dev_name.exit.i.i120, %land.rhs.i.i113.ib_dma_map_single.exit129_crit_edge
  %retval.0.i.i127 = phi i32 [ %call41.i.i125, %if.end39.i.i126 ], [ -1, %dev_name.exit.i.i120 ], [ -1, %land.rhs.i.i113.ib_dma_map_single.exit129_crit_edge ]
  %wr_rx_v2_dma_addr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 26
  %35 = ptrtoint ptr %wr_rx_v2_dma_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i127, ptr %wr_rx_v2_dma_addr, align 4
  %36 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %3, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %37, i32 noundef %retval.0.i.i127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i127)
  %cmp.i.i131.not = icmp eq i32 %retval.0.i.i127, -1
  br i1 %cmp.i.i131.not, label %ib_dma_map_single.exit129.dma_unmap.sink.split_crit_edge, label %if.end18

ib_dma_map_single.exit129.dma_unmap.sink.split_crit_edge: ; preds = %ib_dma_map_single.exit129
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_unmap.sink.split

if.end18:                                         ; preds = %ib_dma_map_single.exit129
  %38 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lgr, align 4
  %wr_tx_buf_v2 = getelementptr inbounds %struct.smc_link_group, ptr %39, i32 0, i32 21, i32 0, i32 3
  %40 = ptrtoint ptr %wr_tx_buf_v2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %wr_tx_buf_v2, align 4
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 8
  %call.i.i133 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %41) #8
  br i1 %call.i.i133, label %land.rhs.i.i135, label %if.end39.i.i148

land.rhs.i.i135:                                  ; preds = %if.end18
  %.b1.i.i134 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i134, label %land.rhs.i.i135.ib_dma_map_single.exit151_crit_edge, label %if.then.i.i139, !prof !38

land.rhs.i.i135.ib_dma_map_single.exit151_crit_edge: ; preds = %land.rhs.i.i135
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dma_map_single.exit151

if.then.i.i139:                                   ; preds = %land.rhs.i.i135
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i136 = tail call ptr @dev_driver_string(ptr noundef %43) #8
  %init_name.i.i.i137 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %init_name.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i.i137, align 8
  %tobool.not.i.i.i138 = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i138, label %if.end.i.i.i140, label %if.then.i.i139.dev_name.exit.i.i142_crit_edge

if.then.i.i139.dev_name.exit.i.i142_crit_edge:    ; preds = %if.then.i.i139
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i142

if.end.i.i.i140:                                  ; preds = %if.then.i.i139
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %43, align 4
  br label %dev_name.exit.i.i142

dev_name.exit.i.i142:                             ; preds = %if.end.i.i.i140, %if.then.i.i139.dev_name.exit.i.i142_crit_edge
  %retval.0.i.i.i141 = phi ptr [ %47, %if.end.i.i.i140 ], [ %45, %if.then.i.i139.dev_name.exit.i.i142_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call16.i.i136, ptr noundef %retval.0.i.i.i141) #8
  br label %ib_dma_map_single.exit151

if.end39.i.i148:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %43, ptr noundef %41, i32 noundef 8192) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %41 to i32
  %sub.i.i143 = add i32 %49, 1073741824
  %shr.i.i144 = lshr i32 %sub.i.i143, 12
  %add.ptr.i.i145 = getelementptr %struct.page, ptr %48, i32 %shr.i.i144
  %and.i.i146 = and i32 %49, 4095
  %call41.i.i147 = tail call i32 @dma_map_page_attrs(ptr noundef %43, ptr noundef %add.ptr.i.i145, i32 noundef %and.i.i146, i32 noundef 8192, i32 noundef 1, i32 noundef 0) #8
  br label %ib_dma_map_single.exit151

ib_dma_map_single.exit151:                        ; preds = %if.end39.i.i148, %dev_name.exit.i.i142, %land.rhs.i.i135.ib_dma_map_single.exit151_crit_edge
  %retval.0.i.i149 = phi i32 [ %call41.i.i147, %if.end39.i.i148 ], [ -1, %dev_name.exit.i.i142 ], [ -1, %land.rhs.i.i135.ib_dma_map_single.exit151_crit_edge ]
  %wr_tx_v2_dma_addr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 16
  %50 = ptrtoint ptr %wr_tx_v2_dma_addr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i.i149, ptr %wr_tx_v2_dma_addr, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %3, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %52, i32 noundef %retval.0.i.i149) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i149)
  %cmp.i.i153.not = icmp eq i32 %retval.0.i.i149, -1
  br i1 %cmp.i.i153.not, label %ib_dma_map_single.exit151.dma_unmap.sink.split_crit_edge, label %ib_dma_map_single.exit151.if.end29_crit_edge

ib_dma_map_single.exit151.if.end29_crit_edge:     ; preds = %ib_dma_map_single.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

ib_dma_map_single.exit151.dma_unmap.sink.split_crit_edge: ; preds = %ib_dma_map_single.exit151
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_unmap.sink.split

if.end29:                                         ; preds = %ib_dma_map_single.exit151.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %wr_tx_bufs = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 5
  %53 = ptrtoint ptr %wr_tx_bufs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %wr_tx_bufs, align 8
  %wr_tx_cnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 19
  %55 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %wr_tx_cnt, align 8
  %57 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %3, align 8
  %call.i.i155 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %54) #8
  br i1 %call.i.i155, label %land.rhs.i.i157, label %if.end39.i.i170

land.rhs.i.i157:                                  ; preds = %if.end29
  %.b1.i.i156 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i156, label %land.rhs.i.i157.ib_dma_map_single.exit173_crit_edge, label %if.then.i.i161, !prof !38

land.rhs.i.i157.ib_dma_map_single.exit173_crit_edge: ; preds = %land.rhs.i.i157
  call void @__sanitizer_cov_trace_pc() #10
  br label %ib_dma_map_single.exit173

if.then.i.i161:                                   ; preds = %land.rhs.i.i157
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i158 = tail call ptr @dev_driver_string(ptr noundef %58) #8
  %init_name.i.i.i159 = getelementptr inbounds %struct.device, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %init_name.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i.i159, align 8
  %tobool.not.i.i.i160 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.i160, label %if.end.i.i.i162, label %if.then.i.i161.dev_name.exit.i.i164_crit_edge

if.then.i.i161.dev_name.exit.i.i164_crit_edge:    ; preds = %if.then.i.i161
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i164

if.end.i.i.i162:                                  ; preds = %if.then.i.i161
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 4
  br label %dev_name.exit.i.i164

dev_name.exit.i.i164:                             ; preds = %if.end.i.i.i162, %if.then.i.i161.dev_name.exit.i.i164_crit_edge
  %retval.0.i.i.i163 = phi ptr [ %62, %if.end.i.i.i162 ], [ %60, %if.then.i.i161.dev_name.exit.i.i164_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call16.i.i158, ptr noundef %retval.0.i.i.i163) #8
  br label %ib_dma_map_single.exit173

if.end39.i.i170:                                  ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %mul30 = mul i32 %56, 48
  tail call void @debug_dma_map_single(ptr noundef %58, ptr noundef %54, i32 noundef %mul30) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %64 = ptrtoint ptr %54 to i32
  %sub.i.i165 = add i32 %64, 1073741824
  %shr.i.i166 = lshr i32 %sub.i.i165, 12
  %add.ptr.i.i167 = getelementptr %struct.page, ptr %63, i32 %shr.i.i166
  %and.i.i168 = and i32 %64, 4095
  %call41.i.i169 = tail call i32 @dma_map_page_attrs(ptr noundef %58, ptr noundef %add.ptr.i.i167, i32 noundef %and.i.i168, i32 noundef %mul30, i32 noundef 1, i32 noundef 0) #8
  br label %ib_dma_map_single.exit173

ib_dma_map_single.exit173:                        ; preds = %if.end39.i.i170, %dev_name.exit.i.i164, %land.rhs.i.i157.ib_dma_map_single.exit173_crit_edge
  %retval.0.i.i171 = phi i32 [ %call41.i.i169, %if.end39.i.i170 ], [ -1, %dev_name.exit.i.i164 ], [ -1, %land.rhs.i.i157.ib_dma_map_single.exit173_crit_edge ]
  %wr_tx_dma_addr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 15
  %65 = ptrtoint ptr %wr_tx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i.i171, ptr %wr_tx_dma_addr, align 8
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %67, i32 noundef %retval.0.i.i171) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i171)
  %cmp.i.i175.not = icmp eq i32 %retval.0.i.i171, -1
  br i1 %cmp.i.i175.not, label %ib_dma_map_single.exit173.dma_unmap_crit_edge, label %if.end38

ib_dma_map_single.exit173.dma_unmap_crit_edge:    ; preds = %ib_dma_map_single.exit173
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_unmap

if.end38:                                         ; preds = %ib_dma_map_single.exit173
  %68 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lgr, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %69, i32 0, i32 16
  %70 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp.i = icmp eq i8 %71, 2
  %cond.i = select i1 %cmp.i, i32 2, i32 1
  %72 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %wr_tx_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp2268.not.i = icmp eq i32 %73, 0
  br i1 %cmp2268.not.i, label %if.end38.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end38.for.end.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end38
  %wr_tx_sges.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 7
  %roce_pd.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 2
  %wr_tx_rdma_sges.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 8
  %wr_tx_ibs.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 6
  %wr_tx_rdmas.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0269.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %74 = ptrtoint ptr %wr_tx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %wr_tx_dma_addr, align 8
  %mul.i = mul i32 %i.0269.i, 48
  %add.i = add i32 %75, %mul.i
  %conv4.i = zext i32 %add.i to i64
  %76 = ptrtoint ptr %wr_tx_sges.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %wr_tx_sges.i, align 8
  %arrayidx.i = getelementptr %struct.ib_sge, ptr %77, i32 %i.0269.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %conv4.i, ptr %arrayidx.i, align 8
  %79 = load ptr, ptr %wr_tx_sges.i, align 8
  %length.i = getelementptr %struct.ib_sge, ptr %79, i32 %i.0269.i, i32 1
  %80 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 44, ptr %length.i, align 8
  %81 = ptrtoint ptr %roce_pd.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %roce_pd.i, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %82, align 4
  %85 = load ptr, ptr %wr_tx_sges.i, align 8
  %lkey.i = getelementptr %struct.ib_sge, ptr %85, i32 %i.0269.i, i32 2
  %86 = ptrtoint ptr %lkey.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %84, ptr %lkey.i, align 4
  %87 = load ptr, ptr %roce_pd.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %87, align 4
  %90 = ptrtoint ptr %wr_tx_rdma_sges.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %wr_tx_rdma_sges.i, align 4
  %lkey14.i = getelementptr %struct.smc_rdma_sges, ptr %91, i32 %i.0269.i, i32 0, i32 0, i32 0, i32 0, i32 2
  %92 = ptrtoint ptr %lkey14.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %89, ptr %lkey14.i, align 4
  %93 = load ptr, ptr %roce_pd.i, align 8
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  %96 = load ptr, ptr %wr_tx_rdma_sges.i, align 4
  %lkey23.i = getelementptr %struct.smc_rdma_sges, ptr %96, i32 %i.0269.i, i32 0, i32 0, i32 0, i32 1, i32 2
  %97 = ptrtoint ptr %lkey23.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %95, ptr %lkey23.i, align 4
  %98 = load ptr, ptr %roce_pd.i, align 8
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  %101 = load ptr, ptr %wr_tx_rdma_sges.i, align 4
  %lkey32.i = getelementptr %struct.smc_rdma_sges, ptr %101, i32 %i.0269.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %102 = ptrtoint ptr %lkey32.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %100, ptr %lkey32.i, align 4
  %103 = load ptr, ptr %roce_pd.i, align 8
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %103, align 4
  %106 = load ptr, ptr %wr_tx_rdma_sges.i, align 4
  %lkey41.i = getelementptr %struct.smc_rdma_sges, ptr %106, i32 %i.0269.i, i32 0, i32 1, i32 0, i32 1, i32 2
  %107 = ptrtoint ptr %lkey41.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %105, ptr %lkey41.i, align 4
  %108 = ptrtoint ptr %wr_tx_ibs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %wr_tx_ibs.i, align 4
  %arrayidx42.i = getelementptr %struct.ib_send_wr, ptr %109, i32 %i.0269.i
  %110 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %arrayidx42.i, align 8
  %111 = load ptr, ptr %wr_tx_sges.i, align 8
  %arrayidx44.i = getelementptr %struct.ib_sge, ptr %111, i32 %i.0269.i
  %112 = load ptr, ptr %wr_tx_ibs.i, align 4
  %sg_list.i = getelementptr %struct.ib_send_wr, ptr %112, i32 %i.0269.i, i32 2
  %113 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %arrayidx44.i, ptr %sg_list.i, align 8
  %114 = load ptr, ptr %wr_tx_ibs.i, align 4
  %num_sge.i = getelementptr %struct.ib_send_wr, ptr %114, i32 %i.0269.i, i32 3
  %115 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %num_sge.i, align 4
  %116 = load ptr, ptr %wr_tx_ibs.i, align 4
  %opcode.i = getelementptr %struct.ib_send_wr, ptr %116, i32 %i.0269.i, i32 4
  %117 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %opcode.i, align 8
  %118 = load ptr, ptr %wr_tx_ibs.i, align 4
  %send_flags.i = getelementptr %struct.ib_send_wr, ptr %118, i32 %i.0269.i, i32 5
  %119 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 6, ptr %send_flags.i, align 4
  %120 = ptrtoint ptr %wr_tx_rdmas.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %wr_tx_rdmas.i, align 8
  %opcode55.i = getelementptr %struct.smc_rdma_wr, ptr %121, i32 %i.0269.i, i32 0, i32 0, i32 0, i32 4
  %122 = ptrtoint ptr %opcode55.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %opcode55.i, align 8
  %123 = load ptr, ptr %wr_tx_rdmas.i, align 8
  %opcode61.i = getelementptr %struct.smc_rdma_wr, ptr %123, i32 %i.0269.i, i32 0, i32 1, i32 0, i32 4
  %124 = ptrtoint ptr %opcode61.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %opcode61.i, align 8
  %125 = load ptr, ptr %wr_tx_rdma_sges.i, align 4
  %arrayidx63.i = getelementptr %struct.smc_rdma_sges, ptr %125, i32 %i.0269.i
  %126 = load ptr, ptr %wr_tx_rdmas.i, align 8
  %sg_list72.i = getelementptr %struct.smc_rdma_wr, ptr %126, i32 %i.0269.i, i32 0, i32 0, i32 0, i32 2
  %127 = ptrtoint ptr %sg_list72.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %arrayidx63.i, ptr %sg_list72.i, align 8
  %128 = load ptr, ptr %wr_tx_rdma_sges.i, align 4
  %arrayidx76.i = getelementptr %struct.smc_rdma_sges, ptr %128, i32 %i.0269.i, i32 0, i32 1
  %129 = load ptr, ptr %wr_tx_rdmas.i, align 8
  %sg_list84.i = getelementptr %struct.smc_rdma_wr, ptr %129, i32 %i.0269.i, i32 0, i32 1, i32 0, i32 2
  %130 = ptrtoint ptr %sg_list84.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %arrayidx76.i, ptr %sg_list84.i, align 8
  %inc.i = add nuw i32 %i.0269.i, 1
  %131 = ptrtoint ptr %wr_tx_cnt to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %wr_tx_cnt, align 8
  %cmp2.i = icmp ult i32 %inc.i, %132
  br i1 %cmp2.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end38.for.end.i_crit_edge
  %133 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %lgr, align 4
  %smc_version86.i = getelementptr inbounds %struct.smc_link_group, ptr %134, i32 0, i32 16
  %135 = ptrtoint ptr %smc_version86.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %smc_version86.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %136)
  %cmp88.i = icmp eq i8 %136, 2
  br i1 %cmp88.i, label %if.then.i, label %for.end.i.if.end.i_crit_edge

for.end.i.if.end.i_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %wr_tx_v2_dma_addr.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 16
  %137 = ptrtoint ptr %wr_tx_v2_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %wr_tx_v2_dma_addr.i, align 4
  %conv90.i = zext i32 %138 to i64
  %wr_tx_v2_sge.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 13
  %139 = ptrtoint ptr %wr_tx_v2_sge.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %wr_tx_v2_sge.i, align 8
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %conv90.i, ptr %140, align 8
  %142 = load ptr, ptr %wr_tx_v2_sge.i, align 8
  %length93.i = getelementptr inbounds %struct.ib_sge, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %length93.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 8192, ptr %length93.i, align 8
  %roce_pd94.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 2
  %144 = ptrtoint ptr %roce_pd94.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %roce_pd94.i, align 8
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %145, align 4
  %148 = load ptr, ptr %wr_tx_v2_sge.i, align 8
  %lkey97.i = getelementptr inbounds %struct.ib_sge, ptr %148, i32 0, i32 2
  %149 = ptrtoint ptr %lkey97.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %147, ptr %lkey97.i, align 4
  %wr_tx_v2_ib.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 12
  %150 = ptrtoint ptr %wr_tx_v2_ib.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %wr_tx_v2_ib.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %151, align 8
  %153 = load ptr, ptr %wr_tx_v2_sge.i, align 8
  %154 = load ptr, ptr %wr_tx_v2_ib.i, align 4
  %sg_list101.i = getelementptr inbounds %struct.ib_send_wr, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %sg_list101.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %153, ptr %sg_list101.i, align 8
  %156 = load ptr, ptr %wr_tx_v2_ib.i, align 4
  %num_sge103.i = getelementptr inbounds %struct.ib_send_wr, ptr %156, i32 0, i32 3
  %157 = ptrtoint ptr %num_sge103.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %num_sge103.i, align 4
  %158 = load ptr, ptr %wr_tx_v2_ib.i, align 4
  %opcode105.i = getelementptr inbounds %struct.ib_send_wr, ptr %158, i32 0, i32 4
  %159 = ptrtoint ptr %opcode105.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 2, ptr %opcode105.i, align 8
  %160 = load ptr, ptr %wr_tx_v2_ib.i, align 4
  %send_flags107.i = getelementptr inbounds %struct.ib_send_wr, ptr %160, i32 0, i32 5
  %161 = ptrtoint ptr %send_flags107.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 6, ptr %send_flags107.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.end.i.if.end.i_crit_edge
  %162 = ptrtoint ptr %wr_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %wr_rx_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp109270.not.i = icmp eq i32 %163, 0
  br i1 %cmp109270.not.i, label %if.end.i.smc_wr_init_sge.exit_crit_edge, label %for.body111.lr.ph.i

if.end.i.smc_wr_init_sge.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_init_sge.exit

for.body111.lr.ph.i:                              ; preds = %if.end.i
  %wr_rx_sges.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 24
  %roce_pd121.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 2
  %wr_rx_v2_dma_addr.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 26
  %wr_rx_ibs.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 23
  br label %for.body111.i

for.body111.i:                                    ; preds = %if.end148.i.for.body111.i_crit_edge, %for.body111.lr.ph.i
  %i.1271.i = phi i32 [ 0, %for.body111.lr.ph.i ], [ %inc160.i, %if.end148.i.for.body111.i_crit_edge ]
  %mul112.i = mul i32 %i.1271.i, %cond.i
  %164 = ptrtoint ptr %wr_rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %wr_rx_dma_addr, align 8
  %mul113.i = mul i32 %i.1271.i, 48
  %add114.i = add i32 %165, %mul113.i
  %conv115.i = zext i32 %add114.i to i64
  %166 = ptrtoint ptr %wr_rx_sges.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %wr_rx_sges.i, align 4
  %arrayidx116.i = getelementptr %struct.ib_sge, ptr %167, i32 %mul112.i
  %168 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_store8_noabort(i32 %168)
  store i64 %conv115.i, ptr %arrayidx116.i, align 8
  %169 = load ptr, ptr %wr_rx_sges.i, align 4
  %length120.i = getelementptr %struct.ib_sge, ptr %169, i32 %mul112.i, i32 1
  %170 = ptrtoint ptr %length120.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 44, ptr %length120.i, align 8
  %171 = ptrtoint ptr %roce_pd121.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %roce_pd121.i, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  %175 = load ptr, ptr %wr_rx_sges.i, align 4
  %lkey125.i = getelementptr %struct.ib_sge, ptr %175, i32 %mul112.i, i32 2
  %176 = ptrtoint ptr %lkey125.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %174, ptr %lkey125.i, align 4
  %177 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %lgr, align 4
  %smc_version127.i = getelementptr inbounds %struct.smc_link_group, ptr %178, i32 0, i32 16
  %179 = ptrtoint ptr %smc_version127.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %smc_version127.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %180)
  %cmp129.i = icmp eq i8 %180, 2
  br i1 %cmp129.i, label %if.then131.i, label %for.body111.i.if.end148.i_crit_edge

for.body111.i.if.end148.i_crit_edge:              ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148.i

if.then131.i:                                     ; preds = %for.body111.i
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %wr_rx_v2_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %wr_rx_v2_dma_addr.i, align 4
  %add132.i = add i32 %182, 44
  %conv133.i = zext i32 %add132.i to i64
  %183 = ptrtoint ptr %wr_rx_sges.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %wr_rx_sges.i, align 4
  %add135.i = add i32 %mul112.i, 1
  %arrayidx136.i = getelementptr %struct.ib_sge, ptr %184, i32 %add135.i
  %185 = ptrtoint ptr %arrayidx136.i to i32
  call void @__asan_store8_noabort(i32 %185)
  store i64 %conv133.i, ptr %arrayidx136.i, align 8
  %186 = load ptr, ptr %wr_rx_sges.i, align 4
  %length141.i = getelementptr %struct.ib_sge, ptr %186, i32 %add135.i, i32 1
  %187 = ptrtoint ptr %length141.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 8148, ptr %length141.i, align 8
  %188 = ptrtoint ptr %roce_pd121.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %roce_pd121.i, align 8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %189, align 4
  %192 = load ptr, ptr %wr_rx_sges.i, align 4
  %lkey147.i = getelementptr %struct.ib_sge, ptr %192, i32 %add135.i, i32 2
  %193 = ptrtoint ptr %lkey147.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %191, ptr %lkey147.i, align 4
  br label %if.end148.i

if.end148.i:                                      ; preds = %if.then131.i, %for.body111.i.if.end148.i_crit_edge
  %194 = ptrtoint ptr %wr_rx_ibs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %wr_rx_ibs.i, align 8
  %arrayidx149.i = getelementptr %struct.ib_recv_wr, ptr %195, i32 %i.1271.i
  %196 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr null, ptr %arrayidx149.i, align 8
  %197 = ptrtoint ptr %wr_rx_sges.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %wr_rx_sges.i, align 4
  %arrayidx152.i = getelementptr %struct.ib_sge, ptr %198, i32 %mul112.i
  %199 = load ptr, ptr %wr_rx_ibs.i, align 8
  %sg_list155.i = getelementptr %struct.ib_recv_wr, ptr %199, i32 %i.1271.i, i32 2
  %200 = ptrtoint ptr %sg_list155.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %arrayidx152.i, ptr %sg_list155.i, align 8
  %201 = load ptr, ptr %wr_rx_ibs.i, align 8
  %num_sge158.i = getelementptr %struct.ib_recv_wr, ptr %201, i32 %i.1271.i, i32 3
  %202 = ptrtoint ptr %num_sge158.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %cond.i, ptr %num_sge158.i, align 4
  %inc160.i = add nuw i32 %i.1271.i, 1
  %203 = ptrtoint ptr %wr_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %wr_rx_cnt, align 8
  %cmp109.i = icmp ult i32 %inc160.i, %204
  br i1 %cmp109.i, label %if.end148.i.for.body111.i_crit_edge, label %if.end148.i.smc_wr_init_sge.exit_crit_edge

if.end148.i.smc_wr_init_sge.exit_crit_edge:       ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %smc_wr_init_sge.exit

if.end148.i.for.body111.i_crit_edge:              ; preds = %if.end148.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body111.i

smc_wr_init_sge.exit:                             ; preds = %if.end148.i.smc_wr_init_sge.exit_crit_edge, %if.end.i.smc_wr_init_sge.exit_crit_edge
  %wr_reg.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 30
  %205 = ptrtoint ptr %wr_reg.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %wr_reg.i, align 8
  %num_sge166.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 30, i32 0, i32 3
  %206 = ptrtoint ptr %num_sge166.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 0, ptr %num_sge166.i, align 4
  %send_flags169.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 30, i32 0, i32 5
  %207 = ptrtoint ptr %send_flags169.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 2, ptr %send_flags169.i, align 4
  %opcode172.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 30, i32 0, i32 4
  %208 = ptrtoint ptr %opcode172.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 32, ptr %opcode172.i, align 8
  %access.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 30, i32 3
  %209 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 3, ptr %access.i, align 8
  %wr_tx_mask = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 18
  %210 = ptrtoint ptr %wr_tx_mask to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %wr_tx_mask, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 0, ptr %211, align 4
  %wr_tx_wait = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 20
  tail call void @__init_waitqueue_head(ptr noundef %wr_tx_wait, ptr noundef nonnull @.str.1, ptr noundef nonnull @smc_wr_create_link.__key) #8
  %wr_tx_refcnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_tx_refcnt, i32 noundef 4) #8
  %213 = ptrtoint ptr %wr_tx_refcnt to i32
  call void @__asan_store4_noabort(i32 %213)
  store volatile i32 0, ptr %wr_tx_refcnt, align 4
  %wr_reg_wait = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 31
  tail call void @__init_waitqueue_head(ptr noundef %wr_reg_wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @smc_wr_create_link.__key.2) #8
  %wr_reg_refcnt = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 32
  %call.i.i109 = tail call zeroext i1 @__kasan_check_write(ptr noundef %wr_reg_refcnt, i32 noundef 4) #8
  %214 = ptrtoint ptr %wr_reg_refcnt to i32
  call void @__asan_store4_noabort(i32 %214)
  store volatile i32 0, ptr %wr_reg_refcnt, align 4
  br label %cleanup

dma_unmap.sink.split:                             ; preds = %ib_dma_map_single.exit151.dma_unmap.sink.split_crit_edge, %ib_dma_map_single.exit129.dma_unmap.sink.split_crit_edge
  %wr_tx_v2_dma_addr.sink = phi ptr [ %wr_rx_v2_dma_addr, %ib_dma_map_single.exit129.dma_unmap.sink.split_crit_edge ], [ %wr_tx_v2_dma_addr, %ib_dma_map_single.exit151.dma_unmap.sink.split_crit_edge ]
  %215 = ptrtoint ptr %wr_tx_v2_dma_addr.sink to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 0, ptr %wr_tx_v2_dma_addr.sink, align 4
  br label %dma_unmap

dma_unmap:                                        ; preds = %dma_unmap.sink.split, %ib_dma_map_single.exit173.dma_unmap_crit_edge
  %wr_rx_v2_dma_addr42 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 26
  %216 = ptrtoint ptr %wr_rx_v2_dma_addr42 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %wr_rx_v2_dma_addr42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool43.not = icmp eq i32 %217, 0
  br i1 %tobool43.not, label %dma_unmap.if.end48_crit_edge, label %if.then44

dma_unmap.if.end48_crit_edge:                     ; preds = %dma_unmap
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then44:                                        ; preds = %dma_unmap
  call void @__sanitizer_cov_trace_pc() #10
  %218 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %3, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %219, i32 noundef %217, i32 noundef 8192, i32 noundef 2, i32 noundef 0) #8
  %220 = ptrtoint ptr %wr_rx_v2_dma_addr42 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %wr_rx_v2_dma_addr42, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %dma_unmap.if.end48_crit_edge
  %wr_tx_v2_dma_addr49 = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 16
  %221 = ptrtoint ptr %wr_tx_v2_dma_addr49 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %wr_tx_v2_dma_addr49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool50.not = icmp eq i32 %222, 0
  br i1 %tobool50.not, label %if.end48.if.end55_crit_edge, label %if.then51

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %223 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %3, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %224, i32 noundef %222, i32 noundef 8192, i32 noundef 1, i32 noundef 0) #8
  %225 = ptrtoint ptr %wr_tx_v2_dma_addr49 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 0, ptr %wr_tx_v2_dma_addr49, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %if.end48.if.end55_crit_edge
  %226 = ptrtoint ptr %wr_rx_dma_addr to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %wr_rx_dma_addr, align 8
  %228 = ptrtoint ptr %wr_rx_cnt to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %wr_rx_cnt, align 8
  %mul59 = mul i32 %229, 48
  %230 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %3, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %231, i32 noundef %227, i32 noundef %mul59, i32 noundef 2, i32 noundef 0) #8
  br label %out

out:                                              ; preds = %if.end55, %ib_dma_map_single.exit.out_crit_edge
  %232 = ptrtoint ptr %wr_rx_dma_addr to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %wr_rx_dma_addr, align 8
  br label %cleanup

cleanup:                                          ; preds = %out, %smc_wr_init_sge.exit
  %retval.0 = phi i32 [ -5, %out ], [ 0, %smc_wr_init_sge.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !18, !19}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/smc/smc_wr.c", i32 63, i32 2}
!2 = !{ptr @smc_wr_create_link.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../net/smc/smc_wr.c", i32 885, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @smc_wr_create_link.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../net/smc/smc_wr.c", i32 887, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @init_completion.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../include/linux/completion.h", i32 87, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/smc/smc_wr.c", i32 38, i32 8}
!13 = !{ptr @smc_wr_rx_hash_lock, !12, !"smc_wr_rx_hash_lock", i1 false, i1 false}
!14 = !{ptr @smc_wr_rx_hash, !15, !"smc_wr_rx_hash", i1 false, i1 false}
!15 = !{!"../net/smc/smc_wr.c", i32 37, i32 8}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148227275}
!31 = !{i64 2148142584, i64 2148142616, i64 2148142645, i64 2148142679, i64 2148142710, i64 2148142733}
!32 = !{i64 2148227504}
!33 = !{!"auto-init"}
!34 = !{i64 2148141864, i64 2148141890, i64 2148141919, i64 2148141953, i64 2148141984, i64 2148142007}
!35 = !{i64 2148230316}
!36 = !{i64 2148145049, i64 2148145081, i64 2148145110, i64 2148145144, i64 2148145175, i64 2148145198}
!37 = !{i64 2148230545}
!38 = !{!"branch_weights", i32 2000, i32 1}
!39 = !{i64 2148724383, i64 2148724663, i64 2148724997, i64 2148725331}
