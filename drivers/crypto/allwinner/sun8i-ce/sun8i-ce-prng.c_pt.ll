; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sun8i_ce_dev = type { ptr, [3 x ptr], ptr, ptr, %struct.mutex, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.hwrng, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct.sun8i_ce_flow = type { ptr, %struct.completion, i32, i32, i32, ptr, i32 }
%struct.ce_variant = type { [3 x i8], [6 x i8], [2 x i32], i8, i8, i8, i8, [3 x %struct.ce_clock], i32, i8, i8 }
%struct.ce_clock = type { ptr, i32, i32 }
%struct.ce_task = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.sginfo], [8 x %struct.sginfo], i32, [3 x i32] }
%struct.sginfo = type { i32, i32 }

@sun8i_ce_prng_generate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"not seeded\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun8i_ce_prng_generate\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ce_prng_generate._entry_ptr = internal global ptr @sun8i_ce_prng_generate._entry, section ".printk_index", align 4
@sun8i_ce_prng_generate.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i_ce\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s PRNG slen=%u dlen=%u todo=%u multi=%u\0A\00", [54 x i8] zeroinitializer }, align 32
@sun8i_ce_prng_generate._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 99, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot DMA MAP IV\0A\00", [45 x i8] zeroinitializer }, align 32
@sun8i_ce_prng_generate._entry_ptr.9 = internal global ptr @sun8i_ce_prng_generate._entry.7, section ".printk_index", align 4
@sun8i_ce_prng_generate._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot DMA MAP DST\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_ce_prng_generate._entry_ptr.12 = internal global ptr @sun8i_ce_prng_generate._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PRNG\00", [27 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 75, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 89, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 99, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 106, i32 3 }
@___asan_gen_.53 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 144, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 326, i32 6 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @sun8i_ce_prng_generate._entry, ptr @sun8i_ce_prng_generate._entry.10, ptr @sun8i_ce_prng_generate._entry.7, ptr @sun8i_ce_prng_generate._entry_ptr, ptr @sun8i_ce_prng_generate._entry_ptr.12, ptr @sun8i_ce_prng_generate._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_prng_generate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_prng_generate._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_prng_generate._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @sun8i_ce_prng_init(ptr nocapture noundef writeonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 0, ptr %__crt_ctx.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_ce_prng_exit(ptr nocapture noundef %tfm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #7
  %2 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %__crt_ctx.i, align 4
  %slen = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %3 = ptrtoint ptr %slen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %slen, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_prng_seed(ptr nocapture noundef %tfm, ptr nocapture noundef readonly %seed, i32 noundef %slen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8.i_crit_edge, label %land.lhs.true

entry.if.end8.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

land.lhs.true:                                    ; preds = %entry
  %slen2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %slen2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slen2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %slen)
  %cmp.not = icmp eq i32 %3, %slen
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree_sensitive(ptr noundef nonnull %1) #7
  %4 = ptrtoint ptr %slen2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %slen2, align 4
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %__crt_ctx.i.i, align 4
  br label %if.end8.i

if.end:                                           ; preds = %land.lhs.true
  %6 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %__crt_ctx.i.i, align 4
  %tobool7.not = icmp eq ptr %.pr, null
  br i1 %tobool7.not, label %if.end.if.end8.i_crit_edge, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.if.end8.i_crit_edge, %if.then, %entry.if.end8.i_crit_edge
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %slen, i32 noundef 3265) #10
  %7 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9.i, ptr %__crt_ctx.i.i, align 4
  %tobool13.not = icmp eq ptr %call9.i, null
  br i1 %tobool13.not, label %if.end8.i.cleanup_crit_edge, label %if.end8.i.if.end15_crit_edge

if.end8.i.if.end15_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end8.i.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %8 = phi ptr [ %call9.i, %if.end8.i.if.end15_crit_edge ], [ %.pr, %if.end.if.end15_crit_edge ]
  %9 = call ptr @memcpy(ptr %8, ptr %seed, i32 %slen)
  %slen17 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %slen17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %slen, ptr %slen17, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end8.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_prng_generate(ptr nocapture noundef readonly %tfm, ptr nocapture noundef readnone %src, i32 noundef %slen, ptr nocapture noundef writeonly %dst, i32 noundef %dlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %ce2 = getelementptr i8, ptr %1, i32 -244
  %2 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce2, align 4
  %slen3 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %slen3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slen3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %dlen, 40
  %add5 = add i32 %add, %5
  %add5.frozen = freeze i32 %add5
  %div = udiv i32 %add5.frozen, 20
  %8 = mul i32 %div, 20
  %rem.decomposed = sub i32 %add5.frozen, %8
  %sub = sub i32 %add5, %rem.decomposed
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3521) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.body9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ce_prng_generate.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ce_prng_generate, %if.then15)) #7
          to label %do.end19 [label %if.then15], !srcloc !35

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ce_prng_generate.__UNIQUE_ID_ddebug231, ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef %slen, i32 noundef %dlen, i32 noundef %sub, i32 noundef %div) #7
  br label %do.end19

do.end19:                                         ; preds = %if.then15, %do.body9
  %stat_req = getelementptr i8, ptr %1, i32 640
  %11 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stat_req, align 128
  %inc = add i32 %12, 1
  store i32 %inc, ptr %stat_req, align 128
  %stat_bytes = getelementptr i8, ptr %1, i32 648
  %13 = ptrtoint ptr %stat_bytes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stat_bytes, align 8
  %add20 = add i32 %14, %sub
  store i32 %add20, ptr %stat_bytes, align 8
  %dev21 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev21, align 4
  %17 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i, align 4
  %19 = ptrtoint ptr %slen3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slen3, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %18) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %do.end19
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !36

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %16) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %if.end.i.i155, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i155:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %16, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i155, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %24, %if.end.i.i155 ], [ %22, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %25 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev21, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %26, i32 noundef -1) #7
  br label %do.end30

dma_map_single_attrs.exit:                        ; preds = %do.end19
  tail call void @debug_dma_map_single(ptr noundef %16, ptr noundef %18, i32 noundef %20) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %18 to i32
  %sub.i = add i32 %28, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i156 = getelementptr %struct.page, ptr %27, i32 %shr.i
  %and.i = and i32 %28, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %16, ptr noundef %add.ptr.i156, i32 noundef %and.i, i32 noundef %20, i32 noundef 1, i32 noundef 0) #7
  %29 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev21, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %30, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end30_crit_edge, label %if.end32

dma_map_single_attrs.exit.do.end30_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end30:                                         ; preds = %dma_map_single_attrs.exit.do.end30_crit_edge, %dma_map_single_attrs.exit.thread
  %31 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.8) #11
  br label %err_iv

if.end32:                                         ; preds = %dma_map_single_attrs.exit
  %33 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev21, align 4
  %call.i158 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #7
  br i1 %call.i158, label %land.rhs.i160, label %dma_map_single_attrs.exit175

land.rhs.i160:                                    ; preds = %if.end32
  %.b1.i159 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i159, label %land.rhs.i160.dma_map_single_attrs.exit175.thread_crit_edge, label %if.then.i164, !prof !36

land.rhs.i160.dma_map_single_attrs.exit175.thread_crit_edge: ; preds = %land.rhs.i160
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit175.thread

if.then.i164:                                     ; preds = %land.rhs.i160
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i161 = tail call ptr @dev_driver_string(ptr noundef %34) #7
  %init_name.i.i162 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %init_name.i.i162 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i162, align 8
  %tobool.not.i.i163 = icmp eq ptr %36, null
  br i1 %tobool.not.i.i163, label %if.end.i.i165, label %if.then.i164.dev_name.exit.i167_crit_edge

if.then.i164.dev_name.exit.i167_crit_edge:        ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i167

if.end.i.i165:                                    ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  br label %dev_name.exit.i167

dev_name.exit.i167:                               ; preds = %if.end.i.i165, %if.then.i164.dev_name.exit.i167_crit_edge
  %retval.0.i.i166 = phi ptr [ %38, %if.end.i.i165 ], [ %36, %if.then.i164.dev_name.exit.i167_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i161, ptr noundef %retval.0.i.i166) #7
  br label %dma_map_single_attrs.exit175.thread

dma_map_single_attrs.exit175.thread:              ; preds = %dev_name.exit.i167, %land.rhs.i160.dma_map_single_attrs.exit175.thread_crit_edge
  %39 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev21, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %40, i32 noundef -1) #7
  br label %do.end41

dma_map_single_attrs.exit175:                     ; preds = %if.end32
  tail call void @debug_dma_map_single(ptr noundef %34, ptr noundef nonnull %call9.i.i, i32 noundef %sub) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %call9.i.i to i32
  %sub.i168 = add i32 %42, 1073741824
  %shr.i169 = lshr i32 %sub.i168, 12
  %add.ptr.i170 = getelementptr %struct.page, ptr %41, i32 %shr.i169
  %and.i171 = and i32 %42, 3968
  %call41.i172 = tail call i32 @dma_map_page_attrs(ptr noundef %34, ptr noundef %add.ptr.i170, i32 noundef %and.i171, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #7
  %43 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev21, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %44, i32 noundef %call41.i172) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i172)
  %cmp.i176 = icmp eq i32 %call41.i172, -1
  br i1 %cmp.i176, label %dma_map_single_attrs.exit175.do.end41_crit_edge, label %if.end43

dma_map_single_attrs.exit175.do.end41_crit_edge:  ; preds = %dma_map_single_attrs.exit175
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

do.end41:                                         ; preds = %dma_map_single_attrs.exit175.do.end41_crit_edge, %dma_map_single_attrs.exit175.thread
  %45 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.11) #11
  br label %err_dst

if.end43:                                         ; preds = %dma_map_single_attrs.exit175
  %47 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev21, align 4
  %call.i178 = tail call i32 @__pm_runtime_resume(ptr noundef %48, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %cmp46 = icmp slt i32 %call.i178, 0
  br i1 %cmp46, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end43
  %49 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev21, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %51 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !38
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then47.err_pm_crit_edge, label %do.end11.i.i.i.i

if.then47.err_pm_crit_edge:                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm

do.end11.i.i.i.i:                                 ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !39
  br label %err_pm

if.end49:                                         ; preds = %if.end43
  %rnglock = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %rnglock, i32 noundef 0) #7
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 6
  %52 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chanlist, align 4
  %tl = getelementptr %struct.sun8i_ce_flow, ptr %53, i32 3, i32 5
  %54 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tl, align 4
  %56 = call ptr @memset(ptr %55, i32 0, i32 176)
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 50331648, ptr %55, align 8
  %variant = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 8
  %58 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %variant, align 4
  %prng = getelementptr inbounds %struct.ce_variant, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %prng to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %prng, align 4
  %conv = zext i8 %61 to i32
  %or = or i32 %conv, -2147483648
  %62 = tail call i32 @llvm.bswap.i32(i32 %or)
  %t_common_ctl = getelementptr inbounds %struct.ce_task, ptr %55, i32 0, i32 1
  %63 = ptrtoint ptr %t_common_ctl to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %t_common_ctl, align 4
  %64 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %variant, align 4
  %prng_t_dlen_in_bytes = getelementptr inbounds %struct.ce_variant, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %prng_t_dlen_in_bytes to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %prng_t_dlen_in_bytes, align 2, !range !40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool52.not = icmp eq i8 %67, 0
  br i1 %tobool52.not, label %if.else, label %if.then53

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %68 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %.pre = lshr i32 %sub, 2
  %.pre203 = tail call i32 @llvm.bswap.i32(i32 %.pre)
  br label %if.end56

if.else:                                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %div54153 = lshr i32 %sub, 2
  %69 = tail call i32 @llvm.bswap.i32(i32 %div54153)
  br label %if.end56

if.end56:                                         ; preds = %if.else, %if.then53
  %.pre-phi = phi i32 [ %69, %if.else ], [ %.pre203, %if.then53 ]
  %.sink = phi i32 [ %69, %if.else ], [ %68, %if.then53 ]
  %70 = getelementptr inbounds %struct.ce_task, ptr %55, i32 0, i32 7
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink, ptr %70, align 4
  %t_sym_ctl = getelementptr inbounds %struct.ce_task, ptr %55, i32 0, i32 2
  %72 = ptrtoint ptr %t_sym_ctl to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 512, ptr %t_sym_ctl, align 8
  %t_asym_ctl = getelementptr inbounds %struct.ce_task, ptr %55, i32 0, i32 3
  %73 = ptrtoint ptr %t_asym_ctl to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %t_asym_ctl, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %t_key = getelementptr inbounds %struct.ce_task, ptr %55, i32 0, i32 4
  %75 = ptrtoint ptr %t_key to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %t_key, align 8
  %t_iv = getelementptr inbounds %struct.ce_task, ptr %55, i32 0, i32 5
  %76 = ptrtoint ptr %t_iv to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %t_iv, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %call41.i172)
  %t_dst = getelementptr inbounds %struct.ce_task, ptr %55, i32 0, i32 9
  %78 = ptrtoint ptr %t_dst to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %t_dst, align 8
  %len = getelementptr inbounds %struct.ce_task, ptr %55, i32 0, i32 9, i32 0, i32 1
  %79 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.pre-phi, ptr %len, align 4
  %80 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %chanlist, align 4
  %timeout = getelementptr %struct.sun8i_ce_flow, ptr %81, i32 3, i32 4
  %82 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2000, ptr %timeout, align 4
  %call63 = tail call i32 @sun8i_ce_run_task(ptr noundef %3, i32 noundef 3, ptr noundef nonnull @.str.13) #7
  tail call void @mutex_unlock(ptr noundef %rnglock) #7
  %83 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev21, align 4
  %call.i179 = tail call i32 @__pm_runtime_idle(ptr noundef %84, i32 noundef 5) #7
  br label %err_pm

err_pm:                                           ; preds = %if.end56, %do.end11.i.i.i.i, %if.then47.err_pm_crit_edge
  %err.0 = phi i32 [ %call63, %if.end56 ], [ %call.i178, %if.then47.err_pm_crit_edge ], [ %call.i178, %do.end11.i.i.i.i ]
  %85 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev21, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %86, i32 noundef %call41.i172, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #7
  br label %err_dst

err_dst:                                          ; preds = %err_pm, %do.end41
  %err.1 = phi i32 [ -14, %do.end41 ], [ %err.0, %err_pm ]
  %87 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev21, align 4
  %89 = ptrtoint ptr %slen3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %slen3, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %88, i32 noundef %call41.i, i32 noundef %90, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool70.not = icmp eq i32 %err.1, 0
  br i1 %tobool70.not, label %if.then71, label %err_dst.err_iv_crit_edge

err_dst.err_iv_crit_edge:                         ; preds = %err_dst
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_iv

if.then71:                                        ; preds = %err_dst
  call void @__sanitizer_cov_trace_pc() #9
  %91 = call ptr @memcpy(ptr %dst, ptr %call9.i.i, i32 %dlen)
  %92 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %__crt_ctx.i.i, align 4
  %add.ptr73 = getelementptr i8, ptr %call9.i.i, i32 %dlen
  %94 = ptrtoint ptr %slen3 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %slen3, align 4
  %96 = call ptr @memcpy(ptr %93, ptr %add.ptr73, i32 %95)
  br label %err_iv

err_iv:                                           ; preds = %if.then71, %err_dst.err_iv_crit_edge, %do.end30
  %err.2 = phi i32 [ -14, %do.end30 ], [ %err.1, %err_dst.err_iv_crit_edge ], [ 0, %if.then71 ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_iv, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.2, %err_iv ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_run_task(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c", i32 75, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ce_prng_generate._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ce_prng_generate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c", i32 89, i32 2}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sun8i_ce_prng_generate.__UNIQUE_ID_ddebug231, !9, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c", i32 99, i32 3}
!14 = !{ptr @sun8i_ce_prng_generate._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sun8i_ce_prng_generate._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c", i32 106, i32 3}
!18 = !{ptr @sun8i_ce_prng_generate._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sun8i_ce_prng_generate._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-prng.c", i32 144, i32 33}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2148734383, i64 2148734388, i64 2148734401, i64 2148734445, i64 2148734479, i64 2148734500}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2148160663}
!38 = !{i64 536584, i64 536609, i64 536631, i64 536647, i64 536659, i64 536679, i64 536703, i64 536719, i64 536731}
!39 = !{i64 2148160851}
!40 = !{i8 0, i8 2}
