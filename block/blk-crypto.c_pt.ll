; ModuleID = '/llk/IR_all_yes/block/blk-crypto.c_pt.bc'
source_filename = "../block/blk-crypto.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__bio_crypt_clone\22, \22a\22\09"
module asm "\09.weak\09__crc___bio_crypt_clone\09\09\09\09"
module asm "\09.long\09__crc___bio_crypt_clone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___bio_crypt_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22__bio_crypt_clone\22\09\09\09\09\09"
module asm "__kstrtabns___bio_crypt_clone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+blk_crypto_evict_key\22, \22a\22\09"
module asm "\09.weak\09__crc_blk_crypto_evict_key\09\09\09\09"
module asm "\09.long\09__crc_blk_crypto_evict_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blk_crypto_evict_key:\09\09\09\09\09"
module asm "\09.asciz \09\22blk_crypto_evict_key\22\09\09\09\09\09"
module asm "__kstrtabns_blk_crypto_evict_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.blk_crypto_mode = type { ptr, i32, i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bio_crypt_ctx = type { ptr, [4 x i64] }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.37, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.37 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_crypto_key = type { %struct.blk_crypto_config, i32, i32, [64 x i8] }
%struct.blk_crypto_config = type { i32, i32, i32 }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.39 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%union.anon.40 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"xts(aes)\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"essiv(cbc(aes),sha256)\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adiantum(xchacha12,aes)\00", [40 x i8] zeroinitializer }, align 32
@blk_crypto_modes = dso_local constant { [4 x %struct.blk_crypto_mode], [48 x i8] } { [4 x %struct.blk_crypto_mode] [%struct.blk_crypto_mode zeroinitializer, %struct.blk_crypto_mode { ptr @.str, i32 64, i32 16 }, %struct.blk_crypto_mode { ptr @.str.1, i32 16, i32 16 }, %struct.blk_crypto_mode { ptr @.str.2, i32 32, i32 32 }], [48 x i8] zeroinitializer }, align 32
@__param_str_num_prealloc_crypt_ctxs = internal constant [35 x i8] c"blk_crypto.num_prealloc_crypt_ctxs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@num_prealloc_crypt_ctxs = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_num_prealloc_crypt_ctxs = internal constant %struct.kernel_param { ptr @__param_str_num_prealloc_crypt_ctxs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @num_prealloc_crypt_ctxs } }, section "__param", align 4
@__UNIQUE_ID_num_prealloc_crypt_ctxstype278 = internal constant [48 x i8] c"blk_crypto.parmtype=num_prealloc_crypt_ctxs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_prealloc_crypt_ctxs279 = internal constant [85 x i8] c"blk_crypto.parm=num_prealloc_crypt_ctxs:Number of bio crypto contexts to preallocate\00", section ".modinfo", align 1
@__initcall__kmod_blk_crypto__281_79_bio_crypt_ctx_init4 = internal global ptr @bio_crypt_ctx_init, section ".initcall4.init", align 4
@bio_crypt_set_ctx.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"block/blk-crypto.c\00", [45 x i8] zeroinitializer }, align 32
@bio_crypt_ctx_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab___bio_crypt_clone = external dso_local constant [0 x i8], align 1
@__kstrtabns___bio_crypt_clone = external dso_local constant [0 x i8], align 1
@__ksymtab___bio_crypt_clone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__bio_crypt_clone to i32), ptr @__kstrtab___bio_crypt_clone, ptr @__kstrtabns___bio_crypt_clone }, section "___ksymtab_gpl+__bio_crypt_clone", align 4
@__blk_crypto_bio_prep.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_blk_crypto_evict_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_blk_crypto_evict_key = external dso_local constant [0 x i8], align 1
@__ksymtab_blk_crypto_evict_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blk_crypto_evict_key to i32), ptr @__kstrtab_blk_crypto_evict_key, ptr @__kstrtabns_blk_crypto_evict_key }, section "___ksymtab_gpl+blk_crypto_evict_key", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bio_crypt_ctx\00", [18 x i8] zeroinitializer }, align 32
@bio_crypt_ctx_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to allocate mem for bio crypt ctxs\0A\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 5, i64 9]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 22, i32 17 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 27, i32 17 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 32, i32 17 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"blk_crypto_modes\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 20, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"num_prealloc_crypt_ctxs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 44, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 90, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"bio_crypt_ctx_pool\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 51, i32 19 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 57, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"bio_crypt_ctx_cache\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 50, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [22 x i8] c"../block/blk-crypto.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 77, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_num_prealloc_crypt_ctxs279, ptr @__UNIQUE_ID_num_prealloc_crypt_ctxstype278, ptr @__initcall__kmod_blk_crypto__281_79_bio_crypt_ctx_init4, ptr @__ksymtab___bio_crypt_clone, ptr @__ksymtab_blk_crypto_evict_key, ptr @__param_num_prealloc_crypt_ctxs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @blk_crypto_modes, ptr @num_prealloc_crypt_ctxs, ptr @.str.3, ptr @bio_crypt_ctx_pool, ptr @.str.4, ptr @bio_crypt_ctx_cache, ptr @.str.5], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blk_crypto_modes to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_prealloc_crypt_ctxs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_crypt_ctx_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bio_crypt_ctx_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bio_crypt_ctx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.4, i32 noundef 40, i32 noundef 8, i32 noundef 0, ptr noundef null) #11
  store ptr %call, ptr @bio_crypt_ctx_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_no_mem_crit_edge, label %if.end

entry.out_no_mem_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_no_mem

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @num_prealloc_crypt_ctxs, align 4
  %call.i = tail call ptr @mempool_create(i32 noundef %0, ptr noundef nonnull @mempool_alloc_slab, ptr noundef nonnull @mempool_free_slab, ptr noundef nonnull %call) #11
  store ptr %call.i, ptr @bio_crypt_ctx_pool, align 4
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.out_no_mem_crit_edge, label %for.cond.preheader

if.end.out_no_mem_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_no_mem

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 0

out_no_mem:                                       ; preds = %if.end.out_no_mem_crit_edge, %entry.out_no_mem_crit_edge
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5) #14
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bio_crypt_set_ctx(ptr nocapture noundef writeonly %bio, ptr noundef %key, ptr nocapture noundef readonly %dun, i32 noundef %gfp_mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %gfp_mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b42 = load i1, ptr @bio_crypt_set_ctx.__already_done, align 1
  br i1 %.b42, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !44

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @bio_crypt_set_ctx.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 90, i32 noundef 9, ptr noundef null) #11
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %0 = load ptr, ptr @bio_crypt_ctx_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef %gfp_mask) #11
  %1 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %key, ptr %call, align 8
  %bc_dun = getelementptr inbounds %struct.bio_crypt_ctx, ptr %call, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %bc_dun, ptr %dun, i32 32)
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %3 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %bi_crypt_context, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bio_crypt_free_ctx(ptr nocapture noundef %bio) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %0 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_crypt_context, align 8
  %2 = load ptr, ptr @bio_crypt_ctx_pool, align 4
  tail call void @mempool_free(ptr noundef %1, ptr noundef %2) #11
  %3 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %bi_crypt_context, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__bio_crypt_clone(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src, i32 noundef %gfp_mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @bio_crypt_ctx_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %0, i32 noundef %gfp_mask) #11
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %dst, i32 0, i32 15
  %1 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %bi_crypt_context, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %bi_crypt_context3 = getelementptr inbounds %struct.bio, ptr %src, i32 0, i32 15
  %2 = ptrtoint ptr %bi_crypt_context3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_crypt_context3, align 8
  %4 = call ptr @memcpy(ptr %call, ptr %3, i32 40)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bio_crypt_dun_increment(ptr nocapture noundef %dun, i32 noundef %inc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool.not12.not = icmp eq i32 %inc, 0
  br i1 %tobool.not12.not, label %entry.for.end_crit_edge, label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %entry
  %conv = zext i32 %inc to i64
  %0 = ptrtoint ptr %dun to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dun, align 8
  %add = add i64 %1, %conv
  store i64 %add, ptr %dun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp3 = icmp ult i64 %add, %conv
  br i1 %cmp3, label %for.body.1, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.1:                                       ; preds = %for.body
  %conv.1 = zext i1 %cmp3 to i64
  %arrayidx.1 = getelementptr i64, ptr %dun, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx.1, align 8
  %add.1 = add i64 %3, %conv.1
  store i64 %add.1, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %conv.1)
  %cmp3.1 = icmp ult i64 %add.1, %conv.1
  br i1 %cmp3.1, label %for.body.2, label %for.body.1.for.end_crit_edge

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %conv.2 = zext i1 %cmp3.1 to i64
  %arrayidx.2 = getelementptr i64, ptr %dun, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.2, align 8
  %add.2 = add i64 %5, %conv.2
  store i64 %add.2, ptr %arrayidx.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %conv.2)
  %cmp3.2 = icmp ult i64 %add.2, %conv.2
  br i1 %cmp3.2, label %for.body.3, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #13
  %conv.3 = zext i1 %cmp3.2 to i64
  %arrayidx.3 = getelementptr i64, ptr %dun, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.3, align 8
  %add.3 = add i64 %7, %conv.3
  store i64 %add.3, ptr %arrayidx.3, align 8
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__bio_crypt_advance(ptr nocapture noundef readonly %bio, i32 noundef %bytes) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %0 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bi_crypt_context, align 8
  %bc_dun = getelementptr inbounds %struct.bio_crypt_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %data_unit_size_bits = getelementptr inbounds %struct.blk_crypto_key, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data_unit_size_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_unit_size_bits, align 4
  %shr = lshr i32 %bytes, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool.not12.not.i = icmp eq i32 %shr, 0
  br i1 %tobool.not12.not.i, label %entry.bio_crypt_dun_increment.exit_crit_edge, label %for.body.i

entry.bio_crypt_dun_increment.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_crypt_dun_increment.exit

for.body.i:                                       ; preds = %entry
  %conv.i = zext i32 %shr to i64
  %6 = ptrtoint ptr %bc_dun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bc_dun, align 8
  %add.i = add i64 %7, %conv.i
  store i64 %add.i, ptr %bc_dun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp3.i = icmp ult i64 %add.i, %conv.i
  br i1 %cmp3.i, label %for.body.i.1, label %for.body.i.bio_crypt_dun_increment.exit_crit_edge

for.body.i.bio_crypt_dun_increment.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_crypt_dun_increment.exit

for.body.i.1:                                     ; preds = %for.body.i
  %conv.i.1 = zext i1 %cmp3.i to i64
  %arrayidx.i.1 = getelementptr %struct.bio_crypt_ctx, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i.1, align 8
  %add.i.1 = add i64 %9, %conv.i.1
  store i64 %add.i.1, ptr %arrayidx.i.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.1, i64 %conv.i.1)
  %cmp3.i.1 = icmp ult i64 %add.i.1, %conv.i.1
  br i1 %cmp3.i.1, label %for.body.i.2, label %for.body.i.1.bio_crypt_dun_increment.exit_crit_edge

for.body.i.1.bio_crypt_dun_increment.exit_crit_edge: ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_crypt_dun_increment.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %conv.i.2 = zext i1 %cmp3.i.1 to i64
  %arrayidx.i.2 = getelementptr %struct.bio_crypt_ctx, ptr %1, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx.i.2, align 8
  %add.i.2 = add i64 %11, %conv.i.2
  store i64 %add.i.2, ptr %arrayidx.i.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.2, i64 %conv.i.2)
  %cmp3.i.2 = icmp ult i64 %add.i.2, %conv.i.2
  br i1 %cmp3.i.2, label %for.body.i.3, label %for.body.i.2.bio_crypt_dun_increment.exit_crit_edge

for.body.i.2.bio_crypt_dun_increment.exit_crit_edge: ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_crypt_dun_increment.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.3 = zext i1 %cmp3.i.2 to i64
  %arrayidx.i.3 = getelementptr %struct.bio_crypt_ctx, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.i.3, align 8
  %add.i.3 = add i64 %13, %conv.i.3
  store i64 %add.i.3, ptr %arrayidx.i.3, align 8
  br label %bio_crypt_dun_increment.exit

bio_crypt_dun_increment.exit:                     ; preds = %for.body.i.3, %for.body.i.2.bio_crypt_dun_increment.exit_crit_edge, %for.body.i.1.bio_crypt_dun_increment.exit_crit_edge, %for.body.i.bio_crypt_dun_increment.exit_crit_edge, %entry.bio_crypt_dun_increment.exit_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @bio_crypt_dun_is_contiguous(ptr nocapture noundef readonly %bc, i32 noundef %bytes, ptr nocapture noundef readonly %next_dun) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc, align 8
  %data_unit_size_bits = getelementptr inbounds %struct.blk_crypto_key, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %data_unit_size_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_unit_size_bits, align 4
  %shr = lshr i32 %bytes, %3
  %arrayidx = getelementptr %struct.bio_crypt_ctx, ptr %bc, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %conv = zext i32 %shr to i64
  %add = add i64 %5, %conv
  %6 = ptrtoint ptr %next_dun to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %next_dun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %7)
  %cmp2.not = icmp eq i64 %add, %7
  br i1 %cmp2.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp9 = icmp ult i64 %add, %conv
  %arrayidx.1 = getelementptr %struct.bio_crypt_ctx, ptr %bc, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.1, align 8
  %conv.1 = zext i1 %cmp9 to i64
  %add.1 = add i64 %9, %conv.1
  %arrayidx1.1 = getelementptr i64, ptr %next_dun, i32 1
  %10 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx1.1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %11)
  %cmp2.not.1 = icmp eq i64 %add.1, %11
  br i1 %cmp2.not.1, label %if.end.1, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1, i64 %conv.1)
  %cmp9.1 = icmp ult i64 %add.1, %conv.1
  %arrayidx.2 = getelementptr %struct.bio_crypt_ctx, ptr %bc, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.2, align 8
  %conv.2 = zext i1 %cmp9.1 to i64
  %add.2 = add i64 %13, %conv.2
  %arrayidx1.2 = getelementptr i64, ptr %next_dun, i32 2
  %14 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx1.2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %15)
  %cmp2.not.2 = icmp eq i64 %add.2, %15
  br i1 %cmp2.not.2, label %if.end.2, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2, i64 %conv.2)
  %cmp9.2 = icmp ult i64 %add.2, %conv.2
  %arrayidx.3 = getelementptr %struct.bio_crypt_ctx, ptr %bc, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.3, align 8
  %conv.3 = zext i1 %cmp9.2 to i64
  %add.3 = add i64 %17, %conv.3
  %arrayidx1.3 = getelementptr i64, ptr %next_dun, i32 3
  %18 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx1.3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %19)
  %cmp2.not.3 = icmp eq i64 %add.3, %19
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3, i64 %conv.3)
  %cmp9.3 = icmp uge i64 %add.3, %conv.3
  %spec.select = and i1 %cmp2.not.3, %cmp9.3
  br label %cleanup

cleanup:                                          ; preds = %if.end.2, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end.1.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ %spec.select, %if.end.2 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bio_crypt_rq_ctx_compatible(ptr nocapture noundef readonly %rq, ptr nocapture noundef readonly %bio) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_ctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 21
  %0 = ptrtoint ptr %crypt_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypt_ctx, align 8
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %2 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_crypt_context, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %tobool1.not.i = icmp eq ptr %3, null
  %brmerge.i = or i1 %tobool.not.i, %tobool1.not.i
  %tobool1.not.mux.i = and i1 %tobool.not.i, %tobool1.not.i
  br i1 %brmerge.i, label %entry.bio_crypt_ctx_compatible.exit_crit_edge, label %land.rhs.i

entry.bio_crypt_ctx_compatible.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_crypt_ctx_compatible.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %cmp.i = icmp eq ptr %5, %7
  br label %bio_crypt_ctx_compatible.exit

bio_crypt_ctx_compatible.exit:                    ; preds = %land.rhs.i, %entry.bio_crypt_ctx_compatible.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp.i, %land.rhs.i ], [ %tobool1.not.mux.i, %entry.bio_crypt_ctx_compatible.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @bio_crypt_ctx_mergeable(ptr noundef readonly %bc1, i32 noundef %bc1_bytes, ptr noundef readonly %bc2) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %bc1, null
  %tobool1.not.i = icmp eq ptr %bc2, null
  %brmerge.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %brmerge.i, label %bio_crypt_ctx_compatible.exit, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %0 = ptrtoint ptr %bc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bc1, align 8
  %2 = ptrtoint ptr %bc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bc2, align 8
  %cmp.i.not = icmp eq ptr %1, %3
  br i1 %cmp.i.not, label %lor.rhs, label %land.rhs.i.return_crit_edge

land.rhs.i.return_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

bio_crypt_ctx_compatible.exit:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tobool1.not.mux.i = and i1 %tobool.not.i, %tobool1.not.i
  br label %return

lor.rhs:                                          ; preds = %land.rhs.i
  %bc_dun = getelementptr inbounds %struct.bio_crypt_ctx, ptr %bc2, i32 0, i32 1
  %4 = ptrtoint ptr %bc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bc1, align 8
  %data_unit_size_bits.i = getelementptr inbounds %struct.blk_crypto_key, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %data_unit_size_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_unit_size_bits.i, align 4
  %shr.i = lshr i32 %bc1_bytes, %7
  %arrayidx.i = getelementptr %struct.bio_crypt_ctx, ptr %bc1, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %arrayidx.i, align 8
  %conv.i = zext i32 %shr.i to i64
  %add.i = add i64 %9, %conv.i
  %10 = ptrtoint ptr %bc_dun to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bc_dun, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %11)
  %cmp2.not.i = icmp eq i64 %add.i, %11
  br i1 %cmp2.not.i, label %if.end.i, label %lor.rhs.return_crit_edge

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.i:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv.i)
  %cmp9.i = icmp ult i64 %add.i, %conv.i
  %arrayidx.1.i = getelementptr %struct.bio_crypt_ctx, ptr %bc1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.1.i, align 8
  %conv.1.i = zext i1 %cmp9.i to i64
  %add.1.i = add i64 %13, %conv.1.i
  %arrayidx1.1.i = getelementptr %struct.bio_crypt_ctx, ptr %bc2, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx1.1.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1.i, i64 %15)
  %cmp2.not.1.i = icmp eq i64 %add.1.i, %15
  br i1 %cmp2.not.1.i, label %if.end.1.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.1.i, i64 %conv.1.i)
  %cmp9.1.i = icmp ult i64 %add.1.i, %conv.1.i
  %arrayidx.2.i = getelementptr %struct.bio_crypt_ctx, ptr %bc1, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %arrayidx.2.i, align 8
  %conv.2.i = zext i1 %cmp9.1.i to i64
  %add.2.i = add i64 %17, %conv.2.i
  %arrayidx1.2.i = getelementptr %struct.bio_crypt_ctx, ptr %bc2, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx1.2.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2.i, i64 %19)
  %cmp2.not.2.i = icmp eq i64 %add.2.i, %19
  br i1 %cmp2.not.2.i, label %if.end.2.i, label %if.end.1.i.return_crit_edge

if.end.1.i.return_crit_edge:                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp8(i64 %add.2.i, i64 %conv.2.i)
  %cmp9.2.i = icmp ult i64 %add.2.i, %conv.2.i
  %arrayidx.3.i = getelementptr %struct.bio_crypt_ctx, ptr %bc1, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx.3.i, align 8
  %conv.3.i = zext i1 %cmp9.2.i to i64
  %add.3.i = add i64 %21, %conv.3.i
  %arrayidx1.3.i = getelementptr %struct.bio_crypt_ctx, ptr %bc2, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx1.3.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3.i, i64 %23)
  %cmp2.not.3.i = icmp eq i64 %add.3.i, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %add.3.i, i64 %conv.3.i)
  %cmp9.3.i = icmp uge i64 %add.3.i, %conv.3.i
  %spec.select.i = and i1 %cmp2.not.3.i, %cmp9.3.i
  br label %return

return:                                           ; preds = %if.end.2.i, %if.end.1.i.return_crit_edge, %if.end.i.return_crit_edge, %lor.rhs.return_crit_edge, %bio_crypt_ctx_compatible.exit, %land.rhs.i.return_crit_edge
  %retval.0 = phi i1 [ false, %land.rhs.i.return_crit_edge ], [ false, %if.end.1.i.return_crit_edge ], [ false, %if.end.i.return_crit_edge ], [ false, %lor.rhs.return_crit_edge ], [ %spec.select.i, %if.end.2.i ], [ %tobool1.not.mux.i, %bio_crypt_ctx_compatible.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @__blk_crypto_init_request(ptr noundef %rq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %crypto_profile = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %crypto_profile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto_profile, align 4
  %crypt_ctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 21
  %4 = ptrtoint ptr %crypt_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crypt_ctx, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %crypt_keyslot = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 22
  %call = tail call zeroext i8 @blk_crypto_get_keyslot(ptr noundef %3, ptr noundef %7, ptr noundef %crypt_keyslot) #11
  ret i8 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @blk_crypto_get_keyslot(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__blk_crypto_free_request(ptr nocapture noundef %rq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_keyslot = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 22
  %0 = ptrtoint ptr %crypt_keyslot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypt_keyslot, align 4
  tail call void @blk_crypto_put_keyslot(ptr noundef %1) #11
  %crypt_ctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 21
  %2 = ptrtoint ptr %crypt_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypt_ctx, align 8
  %4 = load ptr, ptr @bio_crypt_ctx_pool, align 4
  tail call void @mempool_free(ptr noundef %3, ptr noundef %4) #11
  %5 = ptrtoint ptr %crypt_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %crypt_ctx, align 8
  %6 = ptrtoint ptr %crypt_keyslot to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %crypt_keyslot, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_crypto_put_keyslot(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__blk_crypto_bio_prep(ptr noundef %bio_ptr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bio_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bio_ptr, align 4
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bi_crypt_context, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.land.rhs_crit_edge, label %land.lhs.true.i

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.lhs.true.i:                                  ; preds = %entry
  %bi_size.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.land.rhs_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.land.rhs_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %bi_opf.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bi_opf.i, align 8
  %trunc.i = trunc i32 %9 to i8
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %if.end39 [
    i8 3, label %land.lhs.true2.i.land.rhs_crit_edge
    i8 5, label %land.lhs.true2.i.land.rhs_crit_edge67
    i8 9, label %land.lhs.true2.i.land.rhs_crit_edge68
  ]

land.lhs.true2.i.land.rhs_crit_edge68:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.lhs.true2.i.land.rhs_crit_edge67:            ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.lhs.true2.i.land.rhs_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true2.i.land.rhs_crit_edge, %land.lhs.true2.i.land.rhs_crit_edge67, %land.lhs.true2.i.land.rhs_crit_edge68, %land.lhs.true.i.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %.b62 = load i1, ptr @__blk_crypto_bio_prep.__already_done, align 1
  br i1 %.b62, label %land.rhs.fail.sink.split_crit_edge, label %if.then, !prof !44

land.rhs.fail.sink.split_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.sink.split

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__blk_crypto_bio_prep.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %fail.sink.split

if.end39:                                         ; preds = %land.lhs.true2.i
  %11 = ptrtoint ptr %bi_size.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %iter.sroa.6.0.copyload.i = load i32, ptr %bi_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iter.sroa.6.0.copyload.i)
  %tobool.not60.i = icmp eq i32 %iter.sroa.6.0.copyload.i, 0
  br i1 %tobool.not60.i, label %if.end39.if.end43_crit_edge, label %land.rhs.lr.ph.i

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

land.rhs.lr.ph.i:                                 ; preds = %if.end39
  %bi_io_vec.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 20
  %iter.sroa.16.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 3
  %12 = ptrtoint ptr %iter.sroa.16.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %iter.sroa.16.0.copyload.i = load i32, ptr %iter.sroa.16.0.bi_iter.sroa_idx.i, align 8
  %iter.sroa.10.0.bi_iter.sroa_idx.i = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %iter.sroa.10.0.bi_iter.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %iter.sroa.10.0.copyload.i = load i32, ptr %iter.sroa.10.0.bi_iter.sroa_idx.i, align 4
  %data_unit_size1.i = getelementptr inbounds %struct.blk_crypto_config, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %data_unit_size1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_unit_size1.i, align 4
  %16 = ptrtoint ptr %bi_io_vec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bi_io_vec.i, align 8
  %sub35.i = add i32 %15, -1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %iter.sroa.6.063.i = phi i32 [ %iter.sroa.6.0.copyload.i, %land.rhs.lr.ph.i ], [ %sub.i.i.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.10.062.i = phi i32 [ %iter.sroa.10.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.10.2.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %iter.sroa.16.061.i = phi i32 [ %iter.sroa.16.0.copyload.i, %land.rhs.lr.ph.i ], [ %iter.sroa.16.1.i, %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge ]
  %bv_len10.i = getelementptr %struct.bio_vec, ptr %17, i32 %iter.sroa.10.062.i, i32 1
  %18 = ptrtoint ptr %bv_len10.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bv_len10.i, align 4
  %sub.i = sub i32 %19, %iter.sroa.16.061.i
  %20 = tail call i32 @llvm.umin.i32(i32 %iter.sroa.6.063.i, i32 %sub.i) #11
  %bv_offset15.i = getelementptr %struct.bio_vec, ptr %17, i32 %iter.sroa.10.062.i, i32 2
  %21 = ptrtoint ptr %bv_offset15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bv_offset15.i, align 4
  %add17.i = add i32 %22, %iter.sroa.16.061.i
  %rem.i = and i32 %add17.i, 4095
  %sub18.i = sub nuw nsw i32 4096, %rem.i
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub18.i) #11
  %or.i = or i32 %23, %rem.i
  %and.i = and i32 %or.i, %sub35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp36.i = icmp eq i32 %and.i, 0
  br i1 %cmp36.i, label %for.inc.i, label %land.rhs.i.fail.sink.split_crit_edge

land.rhs.i.fail.sink.split_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail.sink.split

for.inc.i:                                        ; preds = %land.rhs.i
  %24 = ptrtoint ptr %bi_opf.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bi_opf.i, align 8
  %and.i.i.i = and i32 %25, 255
  %26 = add nsw i32 %and.i.i.i, -3
  %switch.and.i.i.i = and i32 %26, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i.i.i)
  %switch.selectcmp.i.i.i = icmp eq i32 %switch.and.i.i.i, 0
  br i1 %switch.selectcmp.i.i.i, label %for.inc.i.bio_advance_iter_single.exit.i_crit_edge, label %if.else.i.i

for.inc.i.bio_advance_iter_single.exit.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bio_advance_iter_single.exit.i

if.else.i.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i.i.i = add i32 %23, %iter.sroa.16.061.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %19)
  %cmp.i.i.i = icmp eq i32 %add.i.i.i, %19
  %spec.select.i = select i1 %cmp.i.i.i, i32 0, i32 %add.i.i.i
  %inc.i.i.i = zext i1 %cmp.i.i.i to i32
  %spec.select59.i = add i32 %iter.sroa.10.062.i, %inc.i.i.i
  br label %bio_advance_iter_single.exit.i

bio_advance_iter_single.exit.i:                   ; preds = %if.else.i.i, %for.inc.i.bio_advance_iter_single.exit.i_crit_edge
  %iter.sroa.16.1.i = phi i32 [ %iter.sroa.16.061.i, %for.inc.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select.i, %if.else.i.i ]
  %iter.sroa.10.2.i = phi i32 [ %iter.sroa.10.062.i, %for.inc.i.bio_advance_iter_single.exit.i_crit_edge ], [ %spec.select59.i, %if.else.i.i ]
  %sub.i.i.i = sub i32 %iter.sroa.6.063.i, %23
  %tobool.not.i64 = icmp eq i32 %sub.i.i.i, 0
  br i1 %tobool.not.i64, label %bio_advance_iter_single.exit.i.if.end43_crit_edge, label %bio_advance_iter_single.exit.i.land.rhs.i_crit_edge

bio_advance_iter_single.exit.i.land.rhs.i_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

bio_advance_iter_single.exit.i.if.end43_crit_edge: ; preds = %bio_advance_iter_single.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.end43:                                         ; preds = %bio_advance_iter_single.exit.i.if.end43_crit_edge, %if.end39.if.end43_crit_edge
  %bi_bdev = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %bi_bdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bi_bdev, align 4
  %bd_queue.i = getelementptr inbounds %struct.block_device, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %bd_queue.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bd_queue.i, align 4
  %crypto_profile = getelementptr inbounds %struct.request_queue, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %crypto_profile to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %crypto_profile, align 4
  %call45 = tail call zeroext i1 @__blk_crypto_cfg_supported(ptr noundef %32, ptr noundef %5) #11
  br i1 %call45, label %if.end43.cleanup_crit_edge, label %if.end47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %call48 = tail call zeroext i1 @blk_crypto_fallback_bio_prep(ptr noundef %bio_ptr) #11
  br i1 %call48, label %if.end47.cleanup_crit_edge, label %if.end47.fail_crit_edge

if.end47.fail_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

fail.sink.split:                                  ; preds = %land.rhs.i.fail.sink.split_crit_edge, %if.then, %land.rhs.fail.sink.split_crit_edge
  %bi_status42 = getelementptr inbounds %struct.bio, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %bi_status42 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 10, ptr %bi_status42, align 2
  br label %fail

fail:                                             ; preds = %fail.sink.split, %if.end47.fail_crit_edge
  %34 = ptrtoint ptr %bio_ptr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bio_ptr, align 4
  tail call void @bio_endio(ptr noundef %35) #11
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end47.cleanup_crit_edge, %if.end43.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %fail ], [ true, %if.end43.cleanup_crit_edge ], [ true, %if.end47.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__blk_crypto_cfg_supported(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_crypto_fallback_bio_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bio_endio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__blk_crypto_rq_bio_prep(ptr nocapture noundef %rq, ptr nocapture noundef readonly %bio, i32 noundef %gfp_mask) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crypt_ctx = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 21
  %0 = ptrtoint ptr %crypt_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypt_ctx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @bio_crypt_ctx_pool, align 4
  %call = tail call noalias ptr @mempool_alloc(ptr noundef %2, i32 noundef %gfp_mask) #11
  %3 = ptrtoint ptr %crypt_ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %crypt_ctx, align 8
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.then.return_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %4 = ptrtoint ptr %crypt_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crypt_ctx, align 8
  %bi_crypt_context = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 15
  %6 = ptrtoint ptr %bi_crypt_context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bi_crypt_context, align 8
  %8 = call ptr @memcpy(ptr %5, ptr %7, i32 40)
  br label %return

return:                                           ; preds = %if.end5, %if.then.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %if.then.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @blk_crypto_init_key(ptr nocapture noundef writeonly %blk_key, ptr nocapture noundef readonly %raw_key, i32 noundef %crypto_mode, i32 noundef %dun_bytes, i32 noundef %data_unit_size) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %blk_key, i32 0, i32 84)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %crypto_mode)
  %cmp = icmp ugt i32 %crypto_mode, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %keysize = getelementptr [4 x %struct.blk_crypto_mode], ptr @blk_crypto_modes, i32 0, i32 %crypto_mode, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %crypto_mode)
  %cmp1 = icmp eq i32 %crypto_mode, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dun_bytes)
  %cmp4 = icmp eq i32 %dun_bytes, 0
  %or.cond = or i1 %cmp1, %cmp4
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %ivsize = getelementptr [4 x %struct.blk_crypto_mode], ptr @blk_crypto_modes, i32 0, i32 %crypto_mode, i32 2
  %1 = ptrtoint ptr %ivsize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ivsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %dun_bytes)
  %cmp5 = icmp uge i32 %2, %dun_bytes
  %3 = tail call i32 @llvm.ctpop.i32(i32 %data_unit_size) #11, !range !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %4 = icmp eq i32 %3, 1
  %5 = and i1 %4, %cmp5
  br i1 %5, label %if.end9, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %blk_key to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %crypto_mode, ptr %blk_key, align 4
  %dun_bytes12 = getelementptr inbounds %struct.blk_crypto_config, ptr %blk_key, i32 0, i32 2
  %7 = ptrtoint ptr %dun_bytes12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dun_bytes, ptr %dun_bytes12, align 4
  %data_unit_size14 = getelementptr inbounds %struct.blk_crypto_config, ptr %blk_key, i32 0, i32 1
  %8 = ptrtoint ptr %data_unit_size14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %data_unit_size, ptr %data_unit_size14, align 4
  %9 = tail call i32 @llvm.ctlz.i32(i32 %data_unit_size, i1 true) #11, !range !45
  %sub.i.op.i = xor i32 %9, 31
  %data_unit_size_bits = getelementptr inbounds %struct.blk_crypto_key, ptr %blk_key, i32 0, i32 1
  %10 = ptrtoint ptr %data_unit_size_bits to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.i.op.i, ptr %data_unit_size_bits, align 4
  %11 = ptrtoint ptr %keysize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %keysize, align 4
  %size = getelementptr inbounds %struct.blk_crypto_key, ptr %blk_key, i32 0, i32 2
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %size, align 4
  %raw = getelementptr inbounds %struct.blk_crypto_key, ptr %blk_key, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %raw, ptr %raw_key, i32 %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @blk_crypto_config_supported(ptr nocapture noundef readnone %q, ptr nocapture noundef readnone %cfg) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_crypto_start_using_key(ptr noundef %key, ptr nocapture noundef readonly %q) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_profile = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 24
  %0 = ptrtoint ptr %crypto_profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_profile, align 4
  %call = tail call zeroext i1 @__blk_crypto_cfg_supported(ptr noundef %1, ptr noundef %key) #11
  br i1 %call, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %call2 = tail call i32 @blk_crypto_fallback_start_using_mode(i32 noundef %3) #11
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_crypto_fallback_start_using_mode(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @blk_crypto_evict_key(ptr nocapture noundef readonly %q, ptr noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_profile = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 24
  %0 = ptrtoint ptr %crypto_profile to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_profile, align 4
  %call = tail call zeroext i1 @__blk_crypto_cfg_supported(ptr noundef %1, ptr noundef %key) #11
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %crypto_profile to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crypto_profile, align 4
  %call2 = tail call i32 @__blk_crypto_evict_key(ptr noundef %3, ptr noundef %key) #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = tail call i32 @blk_crypto_fallback_evict_key(ptr noundef %key) #11
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__blk_crypto_evict_key(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_crypto_fallback_evict_key(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_slab(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_slab(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../block/blk-crypto.c", i32 22, i32 17}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../block/blk-crypto.c", i32 27, i32 17}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../block/blk-crypto.c", i32 32, i32 17}
!6 = !{ptr @blk_crypto_modes, !7, !"blk_crypto_modes", i1 false, i1 false}
!7 = !{!"../block/blk-crypto.c", i32 20, i32 30}
!8 = !{ptr @__param_num_prealloc_crypt_ctxs, !9, !"__param_num_prealloc_crypt_ctxs", i1 false, i1 false}
!9 = !{!"../block/blk-crypto.c", i32 46, i32 1}
!10 = !{ptr @__UNIQUE_ID_num_prealloc_crypt_ctxstype278, !9, !"__UNIQUE_ID_num_prealloc_crypt_ctxstype278", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_num_prealloc_crypt_ctxs279, !12, !"__UNIQUE_ID_num_prealloc_crypt_ctxs279", i1 false, i1 false}
!12 = !{!"../block/blk-crypto.c", i32 47, i32 1}
!13 = !{ptr @__initcall__kmod_blk_crypto__281_79_bio_crypt_ctx_init4, !14, !"__initcall__kmod_blk_crypto__281_79_bio_crypt_ctx_init4", i1 false, i1 false}
!14 = !{!"../block/blk-crypto.c", i32 79, i32 1}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../block/blk-crypto.c", i32 90, i32 2}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ksymtab___bio_crypt_clone, !19, !"__ksymtab___bio_crypt_clone", i1 false, i1 false}
!19 = !{!"../block/blk-crypto.c", i32 114, i32 1}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../block/blk-crypto.c", i32 271, i32 6}
!22 = !{ptr @__ksymtab_blk_crypto_evict_key, !23, !"__ksymtab_blk_crypto_evict_key", i1 false, i1 false}
!23 = !{!"../block/blk-crypto.c", i32 413, i32 1}
!24 = !{ptr @bio_crypt_ctx_pool, !25, !"bio_crypt_ctx_pool", i1 false, i1 false}
!25 = !{!"../block/blk-crypto.c", i32 51, i32 19}
!26 = !{ptr @__param_str_num_prealloc_crypt_ctxs, !9, !"__param_str_num_prealloc_crypt_ctxs", i1 false, i1 false}
!27 = !{ptr @num_prealloc_crypt_ctxs, !28, !"num_prealloc_crypt_ctxs", i1 false, i1 false}
!28 = !{!"../block/blk-crypto.c", i32 44, i32 12}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../block/blk-crypto.c", i32 57, i32 24}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../block/blk-crypto.c", i32 77, i32 8}
!33 = !{ptr @bio_crypt_ctx_cache, !34, !"bio_crypt_ctx_cache", i1 false, i1 false}
!34 = !{!"../block/blk-crypto.c", i32 50, i32 27}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i32 0, i32 33}
