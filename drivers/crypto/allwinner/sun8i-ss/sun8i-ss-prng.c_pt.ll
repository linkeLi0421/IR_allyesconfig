; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sun8i_ss_dev = type { ptr, [2 x ptr], ptr, ptr, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.sun8i_ss_flow = type { ptr, %struct.completion, i32, i32 }

@sun8i_ss_prng_generate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 73, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"The PRNG is not seeded\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun8i_ss_prng_generate\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ss_prng_generate._entry_ptr = internal global ptr @sun8i_ss_prng_generate._entry, section ".printk_index", align 4
@sun8i_ss_prng_generate._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 103, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot DMA MAP IV\0A\00", [45 x i8] zeroinitializer }, align 32
@sun8i_ss_prng_generate._entry_ptr.7 = internal global ptr @sun8i_ss_prng_generate._entry.5, section ".printk_index", align 4
@sun8i_ss_prng_generate._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 110, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot DMA MAP DST\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_ss_prng_generate._entry_ptr.10 = internal global ptr @sun8i_ss_prng_generate._entry.8, section ".printk_index", align 4
@sun8i_ss_prng_generate._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA timeout for PRNG (size=%u)\0A\00", [32 x i8] zeroinitializer }, align 32
@sun8i_ss_prng_generate._entry_ptr.13 = internal global ptr @sun8i_ss_prng_generate._entry.11, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 73, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 103, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 110, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 139, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 326, i32 6 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @sun8i_ss_prng_generate._entry, ptr @sun8i_ss_prng_generate._entry.11, ptr @sun8i_ss_prng_generate._entry.5, ptr @sun8i_ss_prng_generate._entry.8, ptr @sun8i_ss_prng_generate._entry_ptr, ptr @sun8i_ss_prng_generate._entry_ptr.10, ptr @sun8i_ss_prng_generate._entry_ptr.13, ptr @sun8i_ss_prng_generate._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_prng_generate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_prng_generate._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_prng_generate._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_prng_generate._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_prng_seed(ptr nocapture noundef %tfm, ptr nocapture noundef readonly %seed, i32 noundef %slen) local_unnamed_addr #0 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @sun8i_ss_prng_init(ptr nocapture noundef writeonly %tfm) local_unnamed_addr #2 align 64 {
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
define dso_local void @sun8i_ss_prng_exit(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_prng_generate(ptr nocapture noundef readonly %tfm, ptr nocapture noundef readnone %src, i32 noundef %slen, ptr nocapture noundef writeonly %dst, i32 noundef %dlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %ss2 = getelementptr i8, ptr %1, i32 -244
  %2 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss2, align 4
  %slen3 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %slen3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slen3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add4 = add i32 %dlen, 42
  %rem = urem i32 %add4, 20
  %sub = sub i32 %add4, %rem
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3521) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @sun8i_ss_get_engine_number(ptr noundef %3) #7
  %stat_req = getelementptr i8, ptr %1, i32 640
  %8 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_req, align 128
  %inc = add i32 %9, 1
  store i32 %inc, ptr %stat_req, align 128
  %stat_bytes = getelementptr i8, ptr %1, i32 648
  %10 = ptrtoint ptr %stat_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stat_bytes, align 8
  %add9 = add i32 %11, %sub
  store i32 %add9, ptr %stat_bytes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool10.not = icmp eq i32 %call8, 0
  %. = select i1 %tobool10.not, i32 1074003985, i32 -2147221487
  %dev14 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 4
  %14 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_ctx.i.i, align 4
  %16 = ptrtoint ptr %slen3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slen3, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %15) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end7
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i169, !prof !33

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i169:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %13) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 3
  %18 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.end.i.i170, label %if.then.i169.dev_name.exit.i_crit_edge

if.then.i169.dev_name.exit.i_crit_edge:           ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i170:                                    ; preds = %if.then.i169
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %13, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i170, %if.then.i169.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %21, %if.end.i.i170 ], [ %19, %if.then.i169.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %22 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev14, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %23, i32 noundef -1) #7
  br label %do.end23

dma_map_single_attrs.exit:                        ; preds = %if.end7
  tail call void @debug_dma_map_single(ptr noundef %13, ptr noundef %15, i32 noundef %17) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %24 = load ptr, ptr @mem_map, align 4
  %25 = ptrtoint ptr %15 to i32
  %sub.i = add i32 %25, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i171 = getelementptr %struct.page, ptr %24, i32 %shr.i
  %and.i = and i32 %25, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %13, ptr noundef %add.ptr.i171, i32 noundef %and.i, i32 noundef %17, i32 noundef 1, i32 noundef 0) #7
  %26 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev14, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %27, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i173 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i173, label %dma_map_single_attrs.exit.do.end23_crit_edge, label %if.end25

dma_map_single_attrs.exit.do.end23_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end23

do.end23:                                         ; preds = %dma_map_single_attrs.exit.do.end23_crit_edge, %dma_map_single_attrs.exit.thread
  %28 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.6) #11
  br label %err_free

if.end25:                                         ; preds = %dma_map_single_attrs.exit
  %30 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev14, align 4
  %call.i174 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #7
  br i1 %call.i174, label %land.rhs.i176, label %dma_map_single_attrs.exit191

land.rhs.i176:                                    ; preds = %if.end25
  %.b1.i175 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i175, label %land.rhs.i176.dma_map_single_attrs.exit191.thread_crit_edge, label %if.then.i180, !prof !33

land.rhs.i176.dma_map_single_attrs.exit191.thread_crit_edge: ; preds = %land.rhs.i176
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit191.thread

if.then.i180:                                     ; preds = %land.rhs.i176
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i177 = tail call ptr @dev_driver_string(ptr noundef %31) #7
  %init_name.i.i178 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i.i178 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i178, align 8
  %tobool.not.i.i179 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i179, label %if.end.i.i181, label %if.then.i180.dev_name.exit.i183_crit_edge

if.then.i180.dev_name.exit.i183_crit_edge:        ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i183

if.end.i.i181:                                    ; preds = %if.then.i180
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  br label %dev_name.exit.i183

dev_name.exit.i183:                               ; preds = %if.end.i.i181, %if.then.i180.dev_name.exit.i183_crit_edge
  %retval.0.i.i182 = phi ptr [ %35, %if.end.i.i181 ], [ %33, %if.then.i180.dev_name.exit.i183_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef %call16.i177, ptr noundef %retval.0.i.i182) #7
  br label %dma_map_single_attrs.exit191.thread

dma_map_single_attrs.exit191.thread:              ; preds = %dev_name.exit.i183, %land.rhs.i176.dma_map_single_attrs.exit191.thread_crit_edge
  %36 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev14, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %37, i32 noundef -1) #7
  br label %do.end34

dma_map_single_attrs.exit191:                     ; preds = %if.end25
  tail call void @debug_dma_map_single(ptr noundef %31, ptr noundef nonnull %call9.i.i, i32 noundef %sub) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %38 = load ptr, ptr @mem_map, align 4
  %39 = ptrtoint ptr %call9.i.i to i32
  %sub.i184 = add i32 %39, 1073741824
  %shr.i185 = lshr i32 %sub.i184, 12
  %add.ptr.i186 = getelementptr %struct.page, ptr %38, i32 %shr.i185
  %and.i187 = and i32 %39, 3968
  %call41.i188 = tail call i32 @dma_map_page_attrs(ptr noundef %31, ptr noundef %add.ptr.i186, i32 noundef %and.i187, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #7
  %40 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev14, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %41, i32 noundef %call41.i188) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i188)
  %cmp.i192 = icmp eq i32 %call41.i188, -1
  br i1 %cmp.i192, label %dma_map_single_attrs.exit191.do.end34_crit_edge, label %if.end36

dma_map_single_attrs.exit191.do.end34_crit_edge:  ; preds = %dma_map_single_attrs.exit191
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.end34:                                         ; preds = %dma_map_single_attrs.exit191.do.end34_crit_edge, %dma_map_single_attrs.exit191.thread
  %42 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.9) #11
  br label %err_iv

if.end36:                                         ; preds = %dma_map_single_attrs.exit191
  %44 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev14, align 4
  %call.i194 = tail call i32 @__pm_runtime_resume(ptr noundef %45, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp39 = icmp slt i32 %call.i194, 0
  br i1 %cmp39, label %if.then40, label %if.end42

if.then40:                                        ; preds = %if.end36
  %46 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev14, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !35
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then40.err_pm_crit_edge, label %do.end11.i.i.i.i

if.then40.err_pm_crit_edge:                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pm

do.end11.i.i.i.i:                                 ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !36
  br label %err_pm

if.end42:                                         ; preds = %if.end36
  %mlock = getelementptr inbounds %struct.sun8i_ss_dev, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %add.ptr46 = getelementptr i8, ptr %51, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %49) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  tail call void @arm_heavy_mb() #7
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  %add.ptr51 = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 %49) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %54 = tail call i32 @llvm.bswap.i32(i32 %call41.i188)
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %3, align 4
  %add.ptr56 = getelementptr i8, ptr %56, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %54) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %div168 = lshr i32 %sub, 2
  %57 = tail call i32 @llvm.bswap.i32(i32 %div168)
  %58 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %3, align 4
  %add.ptr61 = getelementptr i8, ptr %59, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 %57) #7, !srcloc !38
  %flows = getelementptr inbounds %struct.sun8i_ss_dev, ptr %3, i32 0, i32 5
  %60 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %flows, align 4
  %complete = getelementptr %struct.sun8i_ss_flow, ptr %61, i32 %call8, i32 1
  %62 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %complete, align 4
  %63 = load ptr, ptr %flows, align 4
  %status = getelementptr %struct.sun8i_ss_flow, ptr %63, i32 %call8, i32 2
  %64 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %.)
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #7, !srcloc !38
  %68 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %flows, align 4
  %complete74 = getelementptr %struct.sun8i_ss_flow, ptr %69, i32 %call8, i32 1
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %sub) #7
  %call76 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %complete74, i32 noundef %call2.i) #7
  %70 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %flows, align 4
  %status79 = getelementptr %struct.sun8i_ss_flow, ptr %71, i32 %call8, i32 2
  %72 = ptrtoint ptr %status79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %status79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp80 = icmp eq i32 %73, 0
  br i1 %cmp80, label %do.end84, label %if.end42.if.end86_crit_edge

if.end42.if.end86_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

do.end84:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.12, i32 noundef %sub) #11
  br label %if.end86

if.end86:                                         ; preds = %do.end84, %if.end42.if.end86_crit_edge
  %err.0 = phi i32 [ -14, %do.end84 ], [ 0, %if.end42.if.end86_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mlock) #7
  %76 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev14, align 4
  %call.i195 = tail call i32 @__pm_runtime_idle(ptr noundef %77, i32 noundef 5) #7
  br label %err_pm

err_pm:                                           ; preds = %if.end86, %do.end11.i.i.i.i, %if.then40.err_pm_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end86 ], [ %call.i194, %if.then40.err_pm_crit_edge ], [ %call.i194, %do.end11.i.i.i.i ]
  %78 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev14, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %79, i32 noundef %call41.i188, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #7
  br label %err_iv

err_iv:                                           ; preds = %err_pm, %do.end34
  %err.2 = phi i32 [ -14, %do.end34 ], [ %err.1, %err_pm ]
  %80 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev14, align 4
  %82 = ptrtoint ptr %slen3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %slen3, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %81, i32 noundef %call41.i, i32 noundef %83, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.2)
  %tobool93.not = icmp eq i32 %err.2, 0
  br i1 %tobool93.not, label %if.then94, label %err_iv.err_free_crit_edge

err_iv.err_free_crit_edge:                        ; preds = %err_iv
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free

if.then94:                                        ; preds = %err_iv
  call void @__sanitizer_cov_trace_pc() #9
  %84 = call ptr @memcpy(ptr %dst, ptr %call9.i.i, i32 %dlen)
  %85 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %__crt_ctx.i.i, align 4
  %add.ptr96 = getelementptr i8, ptr %call9.i.i, i32 %dlen
  %87 = ptrtoint ptr %slen3 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %slen3, align 4
  %89 = call ptr @memcpy(ptr %86, ptr %add.ptr96, i32 %88)
  br label %err_free

err_free:                                         ; preds = %if.then94, %err_iv.err_free_crit_edge, %do.end23
  %err.3 = phi i32 [ -14, %do.end23 ], [ %err.2, %err_iv.err_free_crit_edge ], [ 0, %if.then94 ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %err.3, %err_free ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_get_engine_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c", i32 73, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ss_prng_generate._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ss_prng_generate._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c", i32 103, i32 3}
!10 = !{ptr @sun8i_ss_prng_generate._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun8i_ss_prng_generate._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c", i32 110, i32 3}
!14 = !{ptr @sun8i_ss_prng_generate._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sun8i_ss_prng_generate._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-prng.c", i32 139, i32 3}
!18 = !{ptr @sun8i_ss_prng_generate._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sun8i_ss_prng_generate._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i64 2148159432}
!35 = !{i64 535353, i64 535378, i64 535400, i64 535416, i64 535428, i64 535448, i64 535472, i64 535488, i64 535500}
!36 = !{i64 2148159620}
!37 = !{i64 2154157689}
!38 = !{i64 6541751}
!39 = !{i64 2154158091}
!40 = !{i64 2154158494}
!41 = !{i64 2154158901}
!42 = !{i64 2154159237}
!43 = !{i64 2154159452}
