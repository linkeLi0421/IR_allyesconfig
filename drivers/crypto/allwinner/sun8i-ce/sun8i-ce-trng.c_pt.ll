; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sun8i_ce_dev = type { ptr, [3 x ptr], ptr, ptr, %struct.mutex, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.hwrng, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ce_variant = type { [3 x i8], [6 x i8], [2 x i32], i8, i8, i8, i8, [3 x %struct.ce_clock], i32, i8, i8 }
%struct.ce_clock = type { ptr, i32, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.sun8i_ce_flow = type { ptr, %struct.completion, i32, i32, i32, ptr, i32 }
%struct.ce_task = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.sginfo], [8 x %struct.sginfo], i32, [3 x i32] }
%struct.sginfo = type { i32, i32 }

@sun8i_ce_hwrng_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TRNG not supported\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun8i_ce_hwrng_register\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ce_hwrng_register._entry_ptr = internal global ptr @sun8i_ce_hwrng_register._entry, section ".printk_index", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun8i Crypto Engine TRNG\00", [39 x i8] zeroinitializer }, align 32
@sun8i_ce_hwrng_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 117, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Fail to register the TRNG\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sun8i_ce_hwrng_register._entry_ptr.9 = internal global ptr @sun8i_ce_hwrng_register._entry.6, section ".printk_index", align 4
@sun8i_ce_trng_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 52, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot DMA MAP DST\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun8i_ce_trng_read\00", [45 x i8] zeroinitializer }, align 32
@sun8i_ce_trng_read._entry_ptr = internal global ptr @sun8i_ce_trng_read._entry, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRNG\00", [27 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 108, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 111, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 117, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 52, i32 3 }
@___asan_gen_.55 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 86, i32 33 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 326, i32 6 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @sun8i_ce_hwrng_register._entry, ptr @sun8i_ce_hwrng_register._entry.6, ptr @sun8i_ce_hwrng_register._entry_ptr, ptr @sun8i_ce_hwrng_register._entry_ptr.9, ptr @sun8i_ce_trng_read._entry, ptr @sun8i_ce_trng_read._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_hwrng_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_hwrng_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_trng_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hwrng_register(ptr noundef %ce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 8
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %trng = getelementptr inbounds %struct.ce_variant, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %trng to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %trng, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %trng2 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 11
  %6 = ptrtoint ptr %trng2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.5, ptr %trng2, align 4
  %read = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 11, i32 5
  %7 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sun8i_ce_trng_read, ptr %read, align 4
  %quality = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 11, i32 7
  %8 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1000, ptr %quality, align 4
  %call = tail call i32 @hwrng_register(ptr noundef %trng2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 3
  %9 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.7) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %do.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_trng_read(ptr noundef %rng, ptr nocapture noundef writeonly %data, i32 noundef %max, i1 noundef zeroext %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rng, i32 -228
  %add = add i32 %max, 32
  %sub = and i32 %add, -32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub, i32 noundef 3521) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hwrng_stat_req = getelementptr i8, ptr %rng, i32 100
  %0 = ptrtoint ptr %hwrng_stat_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwrng_stat_req, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %hwrng_stat_req, align 4
  %hwrng_stat_bytes = getelementptr i8, ptr %rng, i32 104
  %2 = ptrtoint ptr %hwrng_stat_bytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwrng_stat_bytes, align 4
  %add1 = add i32 %3, %sub
  store i32 %add1, ptr %hwrng_stat_bytes, align 4
  %dev = getelementptr i8, ptr %rng, i32 -208
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !35

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %5) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i87, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i87:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i87, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i87 ], [ %7, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef -1) #6
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %5, ptr noundef nonnull %call9.i.i, i32 noundef %sub) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %call9.i.i to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %5, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #6
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %15, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end8

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.10) #9
  br label %err_dst

if.end8:                                          ; preds = %dma_map_single_attrs.exit
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i88 = tail call i32 @__pm_runtime_resume(ptr noundef %19, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %cmp = icmp slt i32 %call.i88, 0
  br i1 %cmp, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !36
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !37
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then11.err_pm.thread_crit_edge, label %do.end11.i.i.i.i

if.then11.err_pm.thread_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_pm.thread

do.end11.i.i.i.i:                                 ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !38
  br label %err_pm.thread

if.end13:                                         ; preds = %if.end8
  %rnglock = getelementptr i8, ptr %rng, i32 -112
  tail call void @mutex_lock_nested(ptr noundef %rnglock, i32 noundef 0) #6
  %chanlist = getelementptr i8, ptr %rng, i32 -20
  %23 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chanlist, align 4
  %tl = getelementptr %struct.sun8i_ce_flow, ptr %24, i32 3, i32 5
  %25 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tl, align 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 176)
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 50331648, ptr %26, align 8
  %variant = getelementptr i8, ptr %rng, i32 -12
  %29 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant, align 4
  %trng = getelementptr inbounds %struct.ce_variant, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %trng to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %trng, align 1
  %conv = zext i8 %32 to i32
  %or = or i32 %conv, -2147483648
  %33 = tail call i32 @llvm.bswap.i32(i32 %or)
  %t_common_ctl = getelementptr inbounds %struct.ce_task, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %t_common_ctl to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %t_common_ctl, align 4
  %35 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %variant, align 4
  %trng_t_dlen_in_bytes = getelementptr inbounds %struct.ce_variant, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %trng_t_dlen_in_bytes to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %trng_t_dlen_in_bytes, align 1, !range !39
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool16.not = icmp eq i8 %38, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %39 = tail call i32 @llvm.bswap.i32(i32 %sub)
  %.pre = lshr exact i32 %sub, 2
  %.pre105 = tail call i32 @llvm.bswap.i32(i32 %.pre)
  br label %err_pm

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %div85 = lshr exact i32 %sub, 2
  %40 = tail call i32 @llvm.bswap.i32(i32 %div85)
  br label %err_pm

err_pm.thread:                                    ; preds = %do.end11.i.i.i.i, %if.then11.err_pm.thread_crit_edge
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %42, i32 noundef %call41.i, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #6
  br label %err_dst

err_pm:                                           ; preds = %if.else, %if.then17
  %.pre-phi = phi i32 [ %.pre105, %if.then17 ], [ %40, %if.else ]
  %.sink = phi i32 [ %39, %if.then17 ], [ %40, %if.else ]
  %43 = getelementptr inbounds %struct.ce_task, ptr %26, i32 0, i32 7
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink, ptr %43, align 4
  %t_sym_ctl = getelementptr inbounds %struct.ce_task, ptr %26, i32 0, i32 2
  %45 = ptrtoint ptr %t_sym_ctl to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %t_sym_ctl, align 8
  %t_asym_ctl = getelementptr inbounds %struct.ce_task, ptr %26, i32 0, i32 3
  %46 = ptrtoint ptr %t_asym_ctl to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %t_asym_ctl, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %call41.i)
  %t_dst = getelementptr inbounds %struct.ce_task, ptr %26, i32 0, i32 9
  %48 = ptrtoint ptr %t_dst to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %t_dst, align 8
  %len = getelementptr inbounds %struct.ce_task, ptr %26, i32 0, i32 9, i32 0, i32 1
  %49 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.pre-phi, ptr %len, align 4
  %50 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chanlist, align 4
  %timeout = getelementptr %struct.sun8i_ce_flow, ptr %51, i32 3, i32 4
  %52 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub, ptr %timeout, align 4
  %call26 = tail call i32 @sun8i_ce_run_task(ptr noundef %add.ptr, i32 noundef 3, ptr noundef nonnull @.str.12) #6
  tail call void @mutex_unlock(ptr noundef %rnglock) #6
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %call.i89 = tail call i32 @__pm_runtime_idle(ptr noundef %54, i32 noundef 5) #6
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %56, i32 noundef %call41.i, i32 noundef %sub, i32 noundef 2, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool31.not = icmp eq i32 %call26, 0
  br i1 %tobool31.not, label %if.then32, label %err_pm.err_dst_crit_edge

err_pm.err_dst_crit_edge:                         ; preds = %err_pm
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_dst

if.then32:                                        ; preds = %err_pm
  call void @__sanitizer_cov_trace_pc() #8
  %57 = call ptr @memcpy(ptr %data, ptr %call9.i.i, i32 %max)
  br label %err_dst

err_dst:                                          ; preds = %if.then32, %err_pm.err_dst_crit_edge, %err_pm.thread, %do.end
  %err.1 = phi i32 [ -14, %do.end ], [ %call26, %err_pm.err_dst_crit_edge ], [ %max, %if.then32 ], [ %call.i88, %err_pm.thread ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_dst, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_dst ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrng_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_ce_hwrng_unregister(ptr noundef %ce) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 8
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 4
  %trng = getelementptr inbounds %struct.ce_variant, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %trng to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %trng, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp eq i8 %3, -1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %trng2 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %ce, i32 0, i32 11
  tail call void @hwrng_unregister(ptr noundef %trng2) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrng_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_run_task(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

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
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c", i32 108, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ce_hwrng_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ce_hwrng_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c", i32 111, i32 18}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c", i32 117, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sun8i_ce_hwrng_register._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @sun8i_ce_hwrng_register._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c", i32 52, i32 3}
!17 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sun8i_ce_trng_read._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @sun8i_ce_trng_read._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-trng.c", i32 86, i32 33}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2148159765}
!37 = !{i64 535686, i64 535711, i64 535733, i64 535749, i64 535761, i64 535781, i64 535805, i64 535821, i64 535833}
!38 = !{i64 2148159953}
!39 = !{i8 0, i8 2}
