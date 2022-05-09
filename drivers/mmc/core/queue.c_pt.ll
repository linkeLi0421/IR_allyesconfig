; ModuleID = '/llk/IR_all_yes/drivers/mmc/core/queue.c_pt.bc'
source_filename = "../drivers/mmc/core/queue.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.blk_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_queue = type { ptr, %struct.mmc_ctx, %struct.blk_mq_tag_set, ptr, ptr, %struct.spinlock, [3 x i32], i32, i8, i8, i8, i8, i8, %struct.work_struct, %struct.wait_queue_head, ptr, ptr, %struct.mutex, %struct.work_struct }
%struct.mmc_ctx = type { ptr }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, %struct.fault_attr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, %struct.blk_crypto_profile, i8, [15 x i8], [0 x i32] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.blk_crypto_profile = type { %struct.blk_crypto_ll_ops, i32, [4 x i32], ptr, i32, %struct.rw_semaphore, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, ptr, i32, ptr }
%struct.blk_crypto_ll_ops = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.41, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.42, %union.anon.43, %union.anon.44, %union.anon.49, ptr, ptr }
%union.anon.41 = type { %struct.list_head }
%union.anon.42 = type { %struct.hlist_node }
%union.anon.43 = type { %struct.rb_node }
%union.anon.44 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, %struct.list_head, ptr }
%union.anon.49 = type { i64, [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.mmc_card = type { ptr, %struct.device, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i8, [4 x i32], [4 x i32], [2 x i32], [16 x i32], %struct.mmc_cid, %struct.mmc_csd, %struct.mmc_ext_csd, %struct.sd_scr, %struct.sd_ssr, %struct.sd_switch_caps, %struct.sd_ext_reg, %struct.sd_ext_reg, i32, %struct.atomic_t, %struct.sdio_cccr, %struct.sdio_cis, [7 x ptr], ptr, i8, i8, i32, ptr, ptr, i32, i32, i32, ptr, [7 x %struct.mmc_part], i32, ptr }
%struct.mmc_cid = type { i32, [8 x i8], i8, i32, i16, i16, i8, i8, i8 }
%struct.mmc_csd = type { i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.mmc_ext_csd = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i8, i8, i32, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8], i8, i8, i8, i32 }
%struct.sd_scr = type { i8, i8, i8, i8, i8, i8 }
%struct.sd_ssr = type { i32, i32, i32 }
%struct.sd_switch_caps = type { i32, i32, i32, i32, i32 }
%struct.sd_ext_reg = type { i8, i8, i16, i8, i8, i8 }
%struct.sdio_cccr = type { i32, i32, i8 }
%struct.sdio_cis = type { i16, i16, i16, i32 }
%struct.mmc_part = type { i64, i32, [20 x i8], i8, i32 }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmc_queue_req = type { %struct.mmc_blk_request, ptr, i32, i32, ptr, i32, i32 }
%struct.mmc_blk_request = type { %struct.mmc_request, %struct.mmc_command, %struct.mmc_command, %struct.mmc_command, %struct.mmc_data }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32, ptr, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_cqe_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mmc_init_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mq->lock\00", [22 x i8] zeroinitializer }, align 32
@mmc_mq_ops = internal constant { %struct.blk_mq_ops, [56 x i8] } { %struct.blk_mq_ops { ptr @mmc_mq_queue_rq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_mq_timed_out, ptr null, ptr @mmc_blk_mq_complete, ptr null, ptr null, ptr @mmc_mq_init_request, ptr @mmc_mq_exit_request, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mmc_init_queue.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mmc/core/queue.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"merging was advertised but not possible\00", [56 x i8] zeroinitializer }, align 32
@mmc_setup_queue.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&mq->recovery_work)\00", [58 x i8] zeroinitializer }, align 32
@mmc_setup_queue.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&mq->complete_work)\00", [58 x i8] zeroinitializer }, align 32
@mmc_setup_queue.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&mq->complete_lock\00", [45 x i8] zeroinitializer }, align 32
@mmc_setup_queue.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mq->wait\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 2, i64 3, i64 5, i64 34, i64 35]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 512, i64 4096]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 417, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"mmc_mq_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 339, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 453, i32 9 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 362, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 384, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 385, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 387, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [28 x i8] c"../drivers/mmc/core/queue.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 389, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @mmc_init_queue.__key, ptr @.str, ptr @mmc_mq_ops, ptr @mmc_init_queue.__key.1, ptr @.str.2, ptr @.str.3, ptr @mmc_setup_queue.__key, ptr @.str.4, ptr @mmc_setup_queue.__key.5, ptr @.str.6, ptr @mmc_setup_queue.__key.7, ptr @.str.8, ptr @mmc_setup_queue.__key.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_init_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_mq_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_init_queue.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_setup_queue.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_setup_queue.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_setup_queue.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_setup_queue.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @mmc_cqe_check_busy(ptr nocapture noundef %mq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cqe_busy = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 7
  %0 = ptrtoint ptr %cqe_busy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cqe_busy, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx.i = getelementptr %struct.mmc_queue, ptr %mq, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %and2 = and i32 %1, -2
  %4 = ptrtoint ptr %cqe_busy to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and2, ptr %cqe_busy, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mmc_issue_type(ptr nocapture noundef readonly %mq, ptr nocapture noundef readonly %req) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mq, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 65
  %4 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cqe_enabled, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hsq_enabled = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  %6 = ptrtoint ptr %hsq_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hsq_enabled, align 16, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmd_flags.i, align 4
  %trunc.i = trunc i32 %9 to i8
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %sw.default.i [
    i8 34, label %if.then.cleanup_crit_edge
    i8 35, label %if.then.cleanup_crit_edge12
    i8 3, label %if.then.cleanup_crit_edge13
    i8 5, label %if.then.cleanup_crit_edge14
    i8 2, label %sw.bb1.i
  ]

if.then.cleanup_crit_edge14:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.cleanup_crit_edge13:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.cleanup_crit_edge12:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %caps2.i.i = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %caps2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %caps2.i.i, align 4
  %and.i.i = lshr i32 %12, 24
  %and.i.lobit.i = and i32 %and.i.i, 1
  br label %cleanup

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %cmd_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %13 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %14, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %switch = icmp eq i32 %and, 0
  %spec.select = select i1 %switch, i32 2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.default.i, %sw.bb1.i, %if.then.cleanup_crit_edge, %if.then.cleanup_crit_edge12, %if.then.cleanup_crit_edge13, %if.then.cleanup_crit_edge14
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ 2, %sw.default.i ], [ %and.i.lobit.i, %sw.bb1.i ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge12 ], [ 0, %if.then.cleanup_crit_edge13 ], [ 0, %if.then.cleanup_crit_edge14 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_cqe_recovery_notifier(ptr nocapture noundef readonly %mrq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %mrq, i32 -192
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i.i, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %lock = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %recovery_needed.i = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %recovery_needed.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %recovery_needed.i, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.__mmc_cqe_recovery_notifier.exit_crit_edge

entry.__mmc_cqe_recovery_notifier.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %__mmc_cqe_recovery_notifier.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %recovery_needed.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %recovery_needed.i, align 1
  %recovery_work.i = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %recovery_work.i) #7
  br label %__mmc_cqe_recovery_notifier.exit

__mmc_cqe_recovery_notifier.exit:                 ; preds = %if.then.i, %entry.__mmc_cqe_recovery_notifier.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mmc_init_queue(ptr noundef %mq, ptr noundef %card) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %2 = ptrtoint ptr %mq to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %mq, align 4
  %lock = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @mmc_init_queue.__key, i16 noundef signext 3) #7
  %tag_set = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2
  %3 = call ptr @memset(ptr %tag_set, i32 0, i32 184)
  %ops = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mmc_mq_ops, ptr %ops, align 4
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 65
  %5 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cqe_enabled, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hsq_enabled = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 68
  %7 = ptrtoint ptr %hsq_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hsq_enabled, align 16, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %cmdq_depth = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 42
  %9 = ptrtoint ptr %cmdq_depth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmdq_depth, align 4
  %cqe_qdepth = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 64
  %11 = ptrtoint ptr %cqe_qdepth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cqe_qdepth, align 16
  %13 = tail call i32 @llvm.smin.i32(i32 %10, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %.sink = phi i32 [ %13, %if.then ], [ 64, %land.lhs.true.if.end_crit_edge ], [ 64, %entry.if.end_crit_edge ]
  %queue_depth7 = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %queue_depth7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %queue_depth7, align 4
  %numa_node = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2, i32 7
  %15 = ptrtoint ptr %numa_node to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %numa_node, align 4
  %flags = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2, i32 9
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 33, ptr %flags, align 4
  %nr_hw_queues = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %nr_hw_queues to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %nr_hw_queues, align 4
  %cmd_size = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2, i32 6
  %18 = ptrtoint ptr %cmd_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 380, ptr %cmd_size, align 4
  %driver_data = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2, i32 10
  %19 = ptrtoint ptr %driver_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %mq, ptr %driver_data, align 4
  %caps2.i = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 17
  %20 = ptrtoint ptr %caps2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %caps2.i, align 4
  %and.i = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.if.else21_crit_edge, label %land.lhs.true14

if.end.if.else21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else21

land.lhs.true14:                                  ; preds = %if.end
  %max_segs = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 21
  %22 = ptrtoint ptr %max_segs to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %max_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %23)
  %cmp15 = icmp ult i16 %23, 512
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true14.if.else21_crit_edge

land.lhs.true14.if.else21_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else21

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 128
  %call18 = tail call i32 @dma_get_merge_boundary(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.if.else21_crit_edge, label %if.then20

land.lhs.true17.if.else21_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else21

if.then20:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  %can_dma_map_merge = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 29
  %26 = ptrtoint ptr %can_dma_map_merge to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load = load i16, ptr %can_dma_map_merge, align 8
  %bf.set = or i16 %bf.load, 128
  store i16 %bf.set, ptr %can_dma_map_merge, align 8
  br label %if.end26

if.else21:                                        ; preds = %land.lhs.true17.if.else21_crit_edge, %land.lhs.true14.if.else21_crit_edge, %if.end.if.else21_crit_edge
  %can_dma_map_merge22 = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 29
  %27 = ptrtoint ptr %can_dma_map_merge22 to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load23 = load i16, ptr %can_dma_map_merge22, align 8
  %bf.clear24 = and i16 %bf.load23, -129
  store i16 %bf.clear24, ptr %can_dma_map_merge22, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then20
  %call28 = tail call i32 @blk_mq_alloc_tag_set(ptr noundef %tag_set) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %28 = inttoptr i32 %call28 to ptr
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %call35 = tail call ptr @__blk_mq_alloc_disk(ptr noundef %tag_set, ptr noundef %mq, ptr noundef nonnull @mmc_init_queue.__key.1) #7
  %cmp.i = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #7
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %queue = getelementptr inbounds %struct.gendisk, ptr %call35, i32 0, i32 9
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue, align 4
  %queue40 = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 4
  %31 = ptrtoint ptr %queue40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %queue40, align 4
  %caps = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 16
  %32 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %caps, align 32
  %and = and i32 %33, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %land.lhs.true42

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

land.lhs.true42:                                  ; preds = %if.end39
  %use_spi_crc = getelementptr inbounds %struct.mmc_host, ptr %1, i32 0, i32 29
  %34 = ptrtoint ptr %use_spi_crc to i32
  call void @__asan_load2_noabort(i32 %34)
  %bf.load43 = load i16, ptr %use_spi_crc, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load43)
  %tobool44.not = icmp sgt i16 %bf.load43, -1
  br i1 %tobool44.not, label %land.lhs.true42.if.end47_crit_edge, label %if.then45

land.lhs.true42.if.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then45:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blk_queue_flag_set(i32 noundef 15, ptr noundef %30) #7
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %land.lhs.true42.if.end47_crit_edge, %if.end39.if.end47_crit_edge
  %35 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %queue40, align 4
  tail call void @blk_queue_rq_timeout(ptr noundef %36, i32 noundef 6000) #7
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 8
  %39 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %queue40, align 4
  tail call void @blk_queue_flag_set(i32 noundef 6, ptr noundef %40) #7
  %41 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue40, align 4
  tail call void @blk_queue_flag_clear(i32 noundef 10, ptr noundef %42) #7
  %call.i = tail call i32 @mmc_can_erase(ptr noundef %card) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end47.if.end.i_crit_edge, label %if.then.i

if.end47.if.end.i_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end47
  %43 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %queue40, align 4
  %call.i.i = tail call i32 @mmc_calc_max_discard(ptr noundef %card) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i_crit_edge, label %if.end.i.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  tail call void @blk_queue_flag_set(i32 noundef 8, ptr noundef %44) #7
  tail call void @blk_queue_max_discard_sectors(ptr noundef %44, i32 noundef %call.i.i) #7
  %pref_erase.i.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 11
  %45 = ptrtoint ptr %pref_erase.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pref_erase.i.i, align 4
  %shl.i.i = shl i32 %46, 9
  %discard_granularity.i.i = getelementptr inbounds %struct.request_queue, ptr %44, i32 0, i32 37, i32 18
  %47 = ptrtoint ptr %discard_granularity.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.i.i, ptr %discard_granularity.i.i, align 4
  %48 = load i32, ptr %pref_erase.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %call.i.i)
  %cmp.i.i = icmp ugt i32 %48, %call.i.i
  %spec.store.select.i.i = select i1 %cmp.i.i, i32 512, i32 %shl.i.i
  %49 = ptrtoint ptr %discard_granularity.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %spec.store.select.i.i, ptr %discard_granularity.i.i, align 4
  %call6.i.i = tail call i32 @mmc_can_secure_erase_trim(ptr noundef %card) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blk_queue_flag_set(i32 noundef 11, ptr noundef %44) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then8.i.i, %if.end.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %if.end47.if.end.i_crit_edge
  %50 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %38, align 128
  %dma_mask.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 18
  %52 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_mask.i, align 8
  %tobool4.not.i = icmp eq ptr %53, null
  br i1 %tobool4.not.i, label %if.end.i.if.then8.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %53, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %55)
  %tobool7.not.i = icmp eq i64 %55, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then8.i_crit_edge, label %lor.lhs.false.i.if.end10.i_crit_edge

lor.lhs.false.i.if.end10.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge
  %56 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %queue40, align 4
  tail call void @blk_queue_bounce_limit(ptr noundef %57, i32 noundef 1) #7
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %lor.lhs.false.i.if.end10.i_crit_edge
  %58 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %queue40, align 4
  %max_blk_count.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 25
  %60 = ptrtoint ptr %max_blk_count.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_blk_count.i, align 128
  %max_req_size.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 23
  %62 = ptrtoint ptr %max_req_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_req_size.i, align 8
  %div169.i = lshr i32 %63, 9
  %64 = tail call i32 @llvm.umin.i32(i32 %61, i32 %div169.i) #7
  tail call void @blk_queue_max_hw_sectors(ptr noundef %59, i32 noundef %64) #7
  %can_dma_map_merge.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 29
  %65 = ptrtoint ptr %can_dma_map_merge.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i = load i16, ptr %can_dma_map_merge.i, align 8
  %66 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool12.not.i = icmp eq i16 %66, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end40.i_crit_edge, label %if.then13.i

if.end10.i.if.end40.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then13.i:                                      ; preds = %if.end10.i
  %67 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %queue40, align 4
  %69 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %38, align 128
  %call16.i = tail call zeroext i1 @blk_queue_can_use_dma_map_merging(ptr noundef %68, ptr noundef %70) #7
  br i1 %call16.i, label %if.then13.i.if.end40.i_crit_edge, label %do.end.i, !prof !32

if.then13.i.if.end40.i_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

do.end.i:                                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 364, i32 noundef 9, ptr noundef nonnull @.str.3) #7
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end.i, %if.then13.i.if.end40.i_crit_edge, %if.end10.i.if.end40.i_crit_edge
  %71 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queue40, align 4
  %73 = ptrtoint ptr %can_dma_map_merge.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %bf.load.i.i = load i16, ptr %can_dma_map_merge.i, align 8
  %74 = and i16 %bf.load.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %74)
  %tobool.not.i170.i = icmp eq i16 %74, 0
  br i1 %tobool.not.i170.i, label %cond.false.i.i, label %if.end40.i.mmc_get_max_segments.exit.i_crit_edge

if.end40.i.mmc_get_max_segments.exit.i_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc_get_max_segments.exit.i

cond.false.i.i:                                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_segs.i.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 21
  %75 = ptrtoint ptr %max_segs.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %max_segs.i.i, align 4
  br label %mmc_get_max_segments.exit.i

mmc_get_max_segments.exit.i:                      ; preds = %cond.false.i.i, %if.end40.i.mmc_get_max_segments.exit.i_crit_edge
  %cond.i.i = phi i16 [ %76, %cond.false.i.i ], [ 512, %if.end40.i.mmc_get_max_segments.exit.i_crit_edge ]
  tail call void @blk_queue_max_segments(ptr noundef %72, i16 noundef zeroext %cond.i.i) #7
  %type.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 4
  %77 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp43.i = icmp eq i32 %78, 0
  br i1 %cmp43.i, label %land.lhs.true.i, label %mmc_get_max_segments.exit.i.if.end80.i_crit_edge

mmc_get_max_segments.exit.i.if.end80.i_crit_edge: ; preds = %mmc_get_max_segments.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

land.lhs.true.i:                                  ; preds = %mmc_get_max_segments.exit.i
  %data_sector_size.i = getelementptr inbounds %struct.mmc_card, ptr %card, i32 0, i32 21, i32 35
  %79 = ptrtoint ptr %data_sector_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %data_sector_size.i, align 4
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %80, label %do.end66.critedge.i [
    i32 0, label %land.lhs.true.i.if.end80.i_crit_edge
    i32 512, label %land.lhs.true.i.if.end72.i_crit_edge
    i32 4096, label %land.lhs.true.i.if.end72.i_crit_edge90
  ]

land.lhs.true.i.if.end72.i_crit_edge90:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

land.lhs.true.i.if.end72.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

do.end66.critedge.i:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 369, i32 noundef 9, ptr noundef null) #7
  br label %if.end72.i

if.end72.i:                                       ; preds = %do.end66.critedge.i, %land.lhs.true.i.if.end72.i_crit_edge, %land.lhs.true.i.if.end72.i_crit_edge90
  br label %if.end80.i

if.end80.i:                                       ; preds = %if.end72.i, %land.lhs.true.i.if.end80.i_crit_edge, %mmc_get_max_segments.exit.i.if.end80.i_crit_edge
  %block_size.0.i = phi i32 [ %80, %if.end72.i ], [ 512, %land.lhs.true.i.if.end80.i_crit_edge ], [ 512, %mmc_get_max_segments.exit.i.if.end80.i_crit_edge ]
  %82 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %queue40, align 4
  tail call void @blk_queue_logical_block_size(ptr noundef %83, i32 noundef %block_size.0.i) #7
  %84 = ptrtoint ptr %can_dma_map_merge.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %bf.load83.i = load i16, ptr %can_dma_map_merge.i, align 8
  %85 = and i16 %bf.load83.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool87.not.i = icmp eq i16 %85, 0
  br i1 %tobool87.not.i, label %if.then88.i, label %if.end80.i.if.end90.i_crit_edge

if.end80.i.if.end90.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90.i

if.then88.i:                                      ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %queue40, align 4
  %max_seg_size.i = getelementptr inbounds %struct.mmc_host, ptr %38, i32 0, i32 20
  %88 = ptrtoint ptr %max_seg_size.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max_seg_size.i, align 16
  %neg.i = sub i32 0, %block_size.0.i
  %and.i89 = and i32 %89, %neg.i
  tail call void @blk_queue_max_segment_size(ptr noundef %87, i32 noundef %and.i89) #7
  br label %if.end90.i

if.end90.i:                                       ; preds = %if.then88.i, %if.end80.i.if.end90.i_crit_edge
  %90 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %38, align 128
  %dma_parms.i.i = getelementptr inbounds %struct.device, ptr %91, i32 0, i32 22
  %92 = ptrtoint ptr %dma_parms.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dma_parms.i.i, align 4
  %tobool.not.i171.i = icmp eq ptr %93, null
  br i1 %tobool.not.i171.i, label %if.end90.i.mmc_setup_queue.exit_crit_edge, label %if.then.i.i

if.end90.i.mmc_setup_queue.exit_crit_edge:        ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc_setup_queue.exit

if.then.i.i:                                      ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %queue40, align 4
  %max_segment_size.i.i = getelementptr inbounds %struct.request_queue, ptr %95, i32 0, i32 37, i32 7
  %96 = ptrtoint ptr %max_segment_size.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %max_segment_size.i.i, align 4
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %93, align 4
  br label %mmc_setup_queue.exit

mmc_setup_queue.exit:                             ; preds = %if.then.i.i, %if.end90.i.mmc_setup_queue.exit_crit_edge
  %recovery_work.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 13
  tail call void @__init_work(ptr noundef %recovery_work.i, i32 noundef 0) #7
  %99 = ptrtoint ptr %recovery_work.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -64, ptr %recovery_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @mmc_setup_queue.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry99.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 13, i32 1
  %100 = ptrtoint ptr %entry99.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %entry99.i, ptr %entry99.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 13, i32 1, i32 1
  %101 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %entry99.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 13, i32 2
  %102 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @mmc_mq_recovery_handler, ptr %func.i, align 4
  %complete_work.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 18
  tail call void @__init_work(ptr noundef %complete_work.i, i32 noundef 0) #7
  %103 = ptrtoint ptr %complete_work.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -64, ptr %complete_work.i, align 4
  %lockdep_map109.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 18, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map109.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @mmc_setup_queue.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry111.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 18, i32 1
  %104 = ptrtoint ptr %entry111.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %entry111.i, ptr %entry111.i, align 4
  %prev.i172.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 18, i32 1, i32 1
  %105 = ptrtoint ptr %prev.i172.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %entry111.i, ptr %prev.i172.i, align 4
  %func113.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 18, i32 2
  %106 = ptrtoint ptr %func113.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @mmc_blk_mq_complete_work, ptr %func113.i, align 4
  %complete_lock.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %complete_lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @mmc_setup_queue.__key.7) #7
  %wait.i = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 14
  tail call void @__init_waitqueue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @mmc_setup_queue.__key.9) #7
  %107 = ptrtoint ptr %queue40 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %queue40, align 4
  tail call void @mmc_crypto_setup_queue(ptr noundef %108, ptr noundef %38) #7
  br label %cleanup

cleanup:                                          ; preds = %mmc_setup_queue.exit, %if.then37, %if.then30
  %retval.0 = phi ptr [ %28, %if.then30 ], [ %call35, %if.then37 ], [ %call35, %mmc_setup_queue.exit ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_get_merge_boundary(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_alloc_tag_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__blk_mq_alloc_disk(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_free_tag_set(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_rq_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_queue_suspend(ptr nocapture noundef readonly %mq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 4
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_quiesce_queue(ptr noundef %1) #7
  %2 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mq, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @__mmc_claim_host(ptr noundef %5, ptr noundef null, ptr noundef null) #7
  %6 = ptrtoint ptr %mq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mq, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  tail call void @mmc_release_host(ptr noundef %9) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_quiesce_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_release_host(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_queue_resume(ptr nocapture noundef readonly %mq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 4
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  tail call void @blk_mq_unquiesce_queue(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_unquiesce_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmc_cleanup_queue(ptr noundef %mq) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 4
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %queue_flags = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %queue_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %queue_flags, align 4
  %4 = and i32 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @blk_mq_unquiesce_queue(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @blk_cleanup_queue(ptr noundef %1) #7
  %tag_set = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 2
  tail call void @blk_mq_free_tag_set(ptr noundef %tag_set) #7
  %complete_work = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 18
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %complete_work) #7
  %5 = ptrtoint ptr %mq to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %mq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_cleanup_queue(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mmc_queue_map_sg(ptr nocapture noundef readonly %mq, ptr noundef %mqrq) local_unnamed_addr #3 align 64 {
entry:
  %last_sg.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %mqrq, i32 -192
  %queue = getelementptr inbounds %struct.mmc_queue, ptr %mq, i32 0, i32 4
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %sg = getelementptr inbounds %struct.mmc_queue_req, ptr %mqrq, i32 0, i32 1
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %last_sg.i) #7
  %4 = ptrtoint ptr %last_sg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %last_sg.i, align 4
  %call.i = call i32 @__blk_rq_map_sg(ptr noundef %1, ptr noundef %add.ptr.i.i, ptr noundef %3, ptr noundef nonnull %last_sg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %last_sg.i) #7
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mmc_mq_queue_rq(ptr nocapture noundef readnone %hctx, ptr nocapture noundef readonly %bd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bd, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queuedata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.mmc_card, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %rq_flags = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %rq_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rq_flags, align 8
  %or = or i32 %13, 2048
  store i32 %or, ptr %rq_flags, align 8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call = tail call i32 @mmc_issue_type(ptr noundef %5, ptr noundef %1)
  %lock = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %recovery_needed = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 9
  %14 = ptrtoint ptr %recovery_needed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %recovery_needed, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.if.then9_crit_edge

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.end
  %busy = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %busy, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.end11, label %lor.lhs.false.if.then9_crit_edge

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.end.if.then9_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %18 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end11
  %arrayidx.i = getelementptr %struct.mmc_queue, ptr %5, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.i.not = icmp eq i32 %20, 0
  br i1 %tobool.i.not, label %sw.bb.sw.epilog_crit_edge, label %if.then13

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %cqe_busy = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 7
  %21 = ptrtoint ptr %cqe_busy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cqe_busy, align 4
  %or14 = or i32 %22, 1
  store i32 %or14, ptr %cqe_busy, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %cleanup

sw.bb17:                                          ; preds = %if.end11
  %hsq_enabled = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 68
  %23 = ptrtoint ptr %hsq_enabled to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %hsq_enabled, align 16, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool18.not = icmp eq i8 %24, 0
  br i1 %tobool18.not, label %sw.bb17.sw.epilog_crit_edge, label %land.lhs.true19

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true19:                                  ; preds = %sw.bb17
  %arrayidx = getelementptr %struct.mmc_queue, ptr %5, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp = icmp sgt i32 %26, 2
  br i1 %cmp, label %if.then20, label %land.lhs.true19.sw.epilog_crit_edge

land.lhs.true19.sw.epilog_crit_edge:              ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then20:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %cleanup

sw.default:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %timeout = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 60000, ptr %timeout, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %land.lhs.true19.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %28 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %busy, align 4
  %arrayidx25 = getelementptr %struct.mmc_queue, ptr %5, i32 0, i32 6, i32 %call
  %29 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx25, align 4
  %add = add i32 %30, 1
  store i32 %add, ptr %arrayidx25, align 4
  %in_flight.i = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 6
  %31 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %in_flight.i, align 4
  %arrayidx2.i = getelementptr %struct.mmc_queue, ptr %5, i32 0, i32 6, i32 1
  %33 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.mmc_queue, ptr %5, i32 0, i32 6, i32 2
  %35 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx4.i, align 4
  %add.i = add i32 %36, %34
  %add5.i = add i32 %add.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add5.i)
  %cmp27 = icmp eq i32 %add5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add.i)
  %cmp29 = icmp ne i32 %add.i, 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %rq_flags32 = getelementptr inbounds %struct.request, ptr %1, i32 0, i32 4
  %37 = ptrtoint ptr %rq_flags32 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rq_flags32, align 8
  %and33 = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then35, label %sw.epilog.if.end39_crit_edge

sw.epilog.if.end39_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then35:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %retries = getelementptr %struct.request, ptr %1, i32 2, i32 32
  %39 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %retries, align 4
  %or38 = or i32 %38, 128
  %40 = ptrtoint ptr %rq_flags32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %or38, ptr %rq_flags32, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %sw.epilog.if.end39_crit_edge
  br i1 %cmp27, label %if.then41, label %if.end39.if.end42_crit_edge

if.end39.if.end42_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %ctx = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 1
  tail call void @mmc_get_card(ptr noundef %7, ptr noundef %ctx) #7
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end39.if.end42_crit_edge
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 65
  %41 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cqe_enabled, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool43.not = icmp eq i8 %42, 0
  br i1 %tobool43.not, label %if.end42.if.end49_crit_edge, label %if.then44

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  %need_retune = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 32
  %43 = ptrtoint ptr %need_retune to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %need_retune, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool45.not = icmp eq i32 %44, 0
  %brmerge = select i1 %tobool45.not, i1 true, i1 %cmp29
  br i1 %brmerge, label %if.then44.land.end_crit_edge, label %land.rhs

if.then44.land.end_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.rhs:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %hold_retune = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 33
  %45 = ptrtoint ptr %hold_retune to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hold_retune, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool48.not = icmp eq i32 %46, 0
  %phi.sel = select i1 %tobool48.not, i16 1024, i16 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then44.land.end_crit_edge
  %47 = phi i16 [ 0, %if.then44.land.end_crit_edge ], [ %phi.sel, %land.rhs ]
  %retune_now = getelementptr inbounds %struct.mmc_host, ptr %9, i32 0, i32 29
  %48 = ptrtoint ptr %retune_now to i32
  call void @__asan_load2_noabort(i32 %48)
  %bf.load = load i16, ptr %retune_now, align 8
  %bf.clear = and i16 %bf.load, -1025
  %bf.set = or i16 %bf.clear, %47
  store i16 %bf.set, ptr %retune_now, align 8
  br label %if.end49

if.end49:                                         ; preds = %land.end, %if.end42.if.end49_crit_edge
  tail call void @blk_mq_start_request(ptr noundef %1) #7
  %call50 = tail call i32 @mmc_blk_mq_issue_rq(ptr noundef %5, ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call50)
  %switch.selectcmp = icmp eq i32 %call50, 2
  %switch.select = select i1 %switch.selectcmp, i8 10, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call50)
  %switch.selectcmp131 = icmp eq i32 %call50, 1
  %switch.select132 = select i1 %switch.selectcmp131, i8 9, i8 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp55.not = icmp eq i32 %call50, 0
  br i1 %cmp55.not, label %do.body71, label %if.then56

if.then56:                                        ; preds = %if.end49
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %49 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx25, align 4
  %sub = add i32 %50, -1
  store i32 %sub, ptr %arrayidx25, align 4
  %51 = ptrtoint ptr %in_flight.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %in_flight.i, align 4
  %53 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx2.i, align 4
  %add.i138 = add i32 %54, %52
  %55 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx4.i, align 4
  %add5.i140 = sub i32 0, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i138, i32 %add5.i140)
  %cmp61 = icmp eq i32 %add.i138, %add5.i140
  %57 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %busy, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br i1 %cmp61, label %if.then67, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then67:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %ctx68 = getelementptr inbounds %struct.mmc_queue, ptr %5, i32 0, i32 1
  tail call void @mmc_put_card(ptr noundef %7, ptr noundef %ctx68) #7
  br label %cleanup

do.body71:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %58)
  store volatile i8 0, ptr %busy, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body71, %if.then67, %if.then56.cleanup_crit_edge, %if.then20, %if.then13, %if.then9, %if.then
  %retval.0 = phi i8 [ 10, %if.then ], [ 9, %if.then9 ], [ 9, %if.then20 ], [ 9, %if.then13 ], [ %switch.select132, %if.then56.cleanup_crit_edge ], [ %switch.select132, %if.then67 ], [ %switch.select132, %do.body71 ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_mq_timed_out(ptr noundef %req, i1 noundef zeroext %reserved) #3 align 64 {
entry:
  %recovery_needed.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %req, align 8
  %queuedata = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queuedata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queuedata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %lock = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %recovery_needed = getelementptr inbounds %struct.mmc_queue, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %recovery_needed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %recovery_needed, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %lor.lhs.false, label %cond.end.critedge22

lor.lhs.false:                                    ; preds = %entry
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 65
  %10 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %cqe_enabled, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %tobool9.not, label %cond.end.critedge, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %hsq_enabled = getelementptr inbounds %struct.mmc_host, ptr %7, i32 0, i32 68
  %12 = ptrtoint ptr %hsq_enabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hsq_enabled, align 16, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool10.not = icmp eq i8 %13, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  br i1 %tobool10.not, label %cond.false, label %lor.rhs.cond.end_crit_edge

lor.rhs.cond.end_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %lor.rhs
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %req, align 8
  %queuedata.i = getelementptr inbounds %struct.request_queue, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %queuedata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %queuedata.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %call3.i = tail call i32 @mmc_issue_type(ptr noundef %17, ptr noundef %req) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %recovery_needed.i) #7
  %22 = ptrtoint ptr %recovery_needed.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %recovery_needed.i, align 1
  %call3.off.i = add i32 %call3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call3.off.i)
  %switch.i = icmp ult i32 %call3.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %cond.false.mmc_cqe_timed_out.exit_crit_edge

cond.false.mmc_cqe_timed_out.exit_crit_edge:      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc_cqe_timed_out.exit

sw.bb.i:                                          ; preds = %cond.false
  %add.ptr.i.i.i = getelementptr %struct.request, ptr %req, i32 1
  %cqe_ops.i = getelementptr inbounds %struct.mmc_host, ptr %21, i32 0, i32 62
  %23 = ptrtoint ptr %cqe_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cqe_ops.i, align 8
  %cqe_timeout.i = getelementptr inbounds %struct.mmc_cqe_ops, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %cqe_timeout.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cqe_timeout.i, align 4
  %call4.i = call zeroext i1 %26(ptr noundef %21, ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %recovery_needed.i) #7
  br i1 %call4.i, label %if.then.i, label %sw.bb.i.mmc_cqe_timed_out.exit_crit_edge

sw.bb.i.mmc_cqe_timed_out.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc_cqe_timed_out.exit

if.then.i:                                        ; preds = %sw.bb.i
  %27 = ptrtoint ptr %recovery_needed.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %recovery_needed.i, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %if.then.i.mmc_cqe_timed_out.exit_crit_edge, label %if.then5.i

if.then.i.mmc_cqe_timed_out.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc_cqe_timed_out.exit

if.then5.i:                                       ; preds = %if.then.i
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %req, align 8
  %queuedata.i.i = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %queuedata.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %queuedata.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.mmc_queue, ptr %32, i32 0, i32 5
  %call5.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %recovery_needed.i.i.i = getelementptr inbounds %struct.mmc_queue, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %recovery_needed.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %recovery_needed.i.i.i, align 1, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then5.i.mmc_cqe_recovery_notifier.exit.i_crit_edge

if.then5.i.mmc_cqe_recovery_notifier.exit.i_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc_cqe_recovery_notifier.exit.i

if.then.i.i.i:                                    ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %recovery_needed.i.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %recovery_needed.i.i.i, align 1
  %recovery_work.i.i.i = getelementptr inbounds %struct.mmc_queue, ptr %32, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %recovery_work.i.i.i) #7
  br label %mmc_cqe_recovery_notifier.exit.i

mmc_cqe_recovery_notifier.exit.i:                 ; preds = %if.then.i.i.i, %if.then5.i.mmc_cqe_recovery_notifier.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call5.i.i) #7
  br label %mmc_cqe_timed_out.exit

mmc_cqe_timed_out.exit:                           ; preds = %mmc_cqe_recovery_notifier.exit.i, %if.then.i.mmc_cqe_timed_out.exit_crit_edge, %sw.bb.i.mmc_cqe_timed_out.exit_crit_edge, %cond.false.mmc_cqe_timed_out.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %mmc_cqe_recovery_notifier.exit.i ], [ 1, %if.then.i.mmc_cqe_timed_out.exit_crit_edge ], [ 0, %sw.bb.i.mmc_cqe_timed_out.exit_crit_edge ], [ 1, %cond.false.mmc_cqe_timed_out.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %recovery_needed.i) #7
  br label %cond.end

cond.end.critedge:                                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  br label %cond.end

cond.end.critedge22:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.end.critedge22, %cond.end.critedge, %mmc_cqe_timed_out.exit, %lor.rhs.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i, %mmc_cqe_timed_out.exit ], [ 1, %lor.rhs.cond.end_crit_edge ], [ 1, %cond.end.critedge ], [ 1, %cond.end.critedge22 ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_blk_mq_complete(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmc_mq_init_request(ptr nocapture noundef readonly %set, ptr nocapture noundef writeonly %req, i32 noundef %hctx_idx, i32 noundef %numa_node) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.blk_mq_tag_set, ptr %set, i32 0, i32 10
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %can_dma_map_merge.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %can_dma_map_merge.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_dma_map_merge.i, align 8
  %7 = and i16 %bf.load.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  br i1 %tobool.not.i, label %cond.false.i, label %entry.if.end7.i.i_crit_edge

entry.if.end7.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %max_segs.i = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %max_segs.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %max_segs.i, align 4
  %phi.cast = zext i16 %9 to i32
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %cond.false.i, %entry.if.end7.i.i_crit_edge
  %cond.i = phi i32 [ %phi.cast, %cond.false.i ], [ 512, %entry.if.end7.i.i_crit_edge ]
  %10 = mul nuw nsw i32 %cond.i, 20
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #10
  %tobool.not.i10 = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i10, label %if.end7.i.i.mmc_alloc_sg.exit_crit_edge, label %if.then.i

if.end7.i.i.mmc_alloc_sg.exit_crit_edge:          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmc_alloc_sg.exit

if.then.i:                                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @sg_init_table(ptr noundef nonnull %call8.i.i, i32 noundef %cond.i) #7
  br label %mmc_alloc_sg.exit

mmc_alloc_sg.exit:                                ; preds = %if.then.i, %if.end7.i.i.mmc_alloc_sg.exit_crit_edge
  %retval.0.i3.i = phi ptr [ %call8.i.i, %if.then.i ], [ null, %if.end7.i.i.mmc_alloc_sg.exit_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.request, ptr %req, i32 1
  %sg = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i3.i, ptr %sg, align 4
  %tobool.not = icmp eq ptr %retval.0.i3.i, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_mq_exit_request(ptr nocapture noundef readnone %set, ptr nocapture noundef %req, i32 noundef %hctx_idx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr %struct.request, ptr %req, i32 1
  %sg = getelementptr inbounds %struct.mmc_queue_req, ptr %add.ptr.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg, align 4
  tail call void @kfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_get_card(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_start_request(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_blk_mq_issue_rq(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_put_card(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_clear(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_erase(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_bounce_limit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_hw_sectors(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_queue_can_use_dma_map_merging(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segments(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_logical_block_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_segment_size(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmc_mq_recovery_handler(ptr noundef %work) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -268
  %queue = getelementptr i8, ptr %work, i32 -72
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %ctx = getelementptr i8, ptr %work, i32 -264
  tail call void @mmc_get_card(ptr noundef %3, ptr noundef %ctx) #7
  %in_recovery = getelementptr i8, ptr %work, i32 -6
  %6 = ptrtoint ptr %in_recovery to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %in_recovery, align 2
  %cqe_enabled = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 65
  %7 = ptrtoint ptr %cqe_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cqe_enabled, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %hsq_enabled = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 68
  %9 = ptrtoint ptr %hsq_enabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %hsq_enabled, align 16, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mmc_blk_cqe_recovery(ptr noundef %add.ptr) #7
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void @mmc_blk_mq_recovery(ptr noundef %add.ptr) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = ptrtoint ptr %in_recovery to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %in_recovery, align 2
  %lock = getelementptr i8, ptr %work, i32 -68
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %recovery_needed = getelementptr i8, ptr %work, i32 -7
  %12 = ptrtoint ptr %recovery_needed to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %recovery_needed, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %hsq_enabled6 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 68
  %13 = ptrtoint ptr %hsq_enabled6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hsq_enabled6, align 16, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool7.not = icmp eq i8 %14, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cqe_ops = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 62
  %15 = ptrtoint ptr %cqe_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cqe_ops, align 8
  %cqe_recovery_finish = getelementptr inbounds %struct.mmc_cqe_ops, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %cqe_recovery_finish to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cqe_recovery_finish, align 4
  tail call void %18(ptr noundef %5) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 4
  tail call void @mmc_put_card(ptr noundef %20, ptr noundef %ctx) #7
  tail call void @blk_mq_run_hw_queues(ptr noundef %1, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_blk_mq_complete_work(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_crypto_setup_queue(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_calc_max_discard(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_discard_sectors(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_can_secure_erase_trim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_blk_cqe_recovery(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_blk_mq_recovery(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queues(ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mmc_claim_host(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_rq_map_sg(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @mmc_init_queue.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/mmc/core/queue.c", i32 417, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @mmc_init_queue.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/mmc/core/queue.c", i32 453, i32 9}
!5 = !{ptr @mmc_mq_ops, !6, !"mmc_mq_ops", i1 false, i1 false}
!6 = !{!"../drivers/mmc/core/queue.c", i32 339, i32 32}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mmc/core/queue.c", i32 362, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @mmc_setup_queue.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/mmc/core/queue.c", i32 384, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mmc_setup_queue.__key.5, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/mmc/core/queue.c", i32 385, i32 2}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mmc_setup_queue.__key.7, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/mmc/core/queue.c", i32 387, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @mmc_setup_queue.__key.9, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/mmc/core/queue.c", i32 389, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i8 0, i8 2}
!32 = !{!"branch_weights", i32 2000, i32 1}
