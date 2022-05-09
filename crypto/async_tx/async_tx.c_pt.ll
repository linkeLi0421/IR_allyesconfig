; ModuleID = '/llk/IR_all_yes/crypto/async_tx/async_tx.c_pt.bc'
source_filename = "../crypto/async_tx/async_tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__async_tx_find_channel\22, \22a\22\09"
module asm "\09.weak\09__crc___async_tx_find_channel\09\09\09\09"
module asm "\09.long\09__crc___async_tx_find_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___async_tx_find_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22__async_tx_find_channel\22\09\09\09\09\09"
module asm "__kstrtabns___async_tx_find_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+async_tx_submit\22, \22a\22\09"
module asm "\09.weak\09__crc_async_tx_submit\09\09\09\09"
module asm "\09.long\09__crc_async_tx_submit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_tx_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22async_tx_submit\22\09\09\09\09\09"
module asm "__kstrtabns_async_tx_submit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+async_trigger_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_async_trigger_callback\09\09\09\09"
module asm "\09.long\09__crc_async_trigger_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_trigger_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22async_trigger_callback\22\09\09\09\09\09"
module asm "__kstrtabns_async_trigger_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+async_tx_quiesce\22, \22a\22\09"
module asm "\09.weak\09__crc_async_tx_quiesce\09\09\09\09"
module asm "\09.long\09__crc_async_tx_quiesce\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_async_tx_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22async_tx_quiesce\22\09\09\09\09\09"
module asm "__kstrtabns_async_tx_quiesce:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.async_submit_ctl = type { i32, ptr, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_async_tx__234_33_async_tx_init6 = internal global ptr @async_tx_init, section ".initcall6.init", align 4
@__exitcall_async_tx_exit = internal global ptr @async_tx_exit, section ".exitcall.exit", align 4
@__kstrtab___async_tx_find_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns___async_tx_find_channel = external dso_local constant [0 x i8], align 1
@__ksymtab___async_tx_find_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__async_tx_find_channel to i32), ptr @__kstrtab___async_tx_find_channel, ptr @__kstrtabns___async_tx_find_channel }, section "___ksymtab_gpl+__async_tx_find_channel", align 4
@__kstrtab_async_tx_submit = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_tx_submit = external dso_local constant [0 x i8], align 1
@__ksymtab_async_tx_submit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_tx_submit to i32), ptr @__kstrtab_async_tx_submit, ptr @__kstrtabns_async_tx_submit }, section "___ksymtab_gpl+async_tx_submit", align 4
@async_trigger_callback.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"async_tx\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"async_trigger_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"crypto/async_tx/async_tx.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: (async)\0A\00", [19 x i8] zeroinitializer }, align 32
@async_trigger_callback.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: (sync)\0A\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_async_trigger_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_trigger_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_async_trigger_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_trigger_callback to i32), ptr @__kstrtab_async_trigger_callback, ptr @__kstrtabns_async_trigger_callback }, section "___ksymtab_gpl+async_trigger_callback", align 4
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: DMA error waiting for transaction\0A\00", [57 x i8] zeroinitializer }, align 32
@__func__.async_tx_quiesce = private unnamed_addr constant [17 x i8] c"async_tx_quiesce\00", align 1
@__kstrtab_async_tx_quiesce = external dso_local constant [0 x i8], align 1
@__kstrtabns_async_tx_quiesce = external dso_local constant [0 x i8], align 1
@__ksymtab_async_tx_quiesce = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @async_tx_quiesce to i32), ptr @__kstrtab_async_tx_quiesce, ptr @__kstrtabns_async_tx_quiesce }, section "___ksymtab_gpl+async_tx_quiesce", align 4
@__UNIQUE_ID_author237 = internal constant [34 x i8] c"async_tx.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [63 x i8] c"async_tx.description=Asynchronous Bulk Memory Transactions API\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [39 x i8] c"async_tx.file=crypto/async_tx/async_tx\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"async_tx.license=GPL\00", section ".modinfo", align 1
@async_tx_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016async_tx: api initialized (async)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"async_tx_init\00", [18 x i8] zeroinitializer }, align 32
@async_tx_init._entry_ptr = internal global ptr @async_tx_init._entry, section ".printk_index", align 4
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: DMA error waiting for depend_tx\0A\00", [59 x i8] zeroinitializer }, align 32
@__func__.async_tx_channel_switch = private unnamed_addr constant [24 x i8] c"async_tx_channel_switch\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 243, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 247, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 271, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 23, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [30 x i8] c"../crypto/async_tx/async_tx.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 119, i32 10 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_async_tx_exit, ptr @__initcall__kmod_async_tx__234_33_async_tx_init6, ptr @__ksymtab___async_tx_find_channel, ptr @__ksymtab_async_trigger_callback, ptr @__ksymtab_async_tx_quiesce, ptr @__ksymtab_async_tx_submit, ptr @async_tx_exit, ptr @async_tx_init._entry, ptr @async_tx_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @async_tx_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @async_tx_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dmaengine_put() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_put() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @async_tx_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dmaengine_get() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__async_tx_find_channel(ptr nocapture noundef readonly %submit, i32 noundef %tx_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %depend_tx1 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %0 = ptrtoint ptr %depend_tx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %depend_tx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 6
  %div3.i.i = lshr i32 %tx_type, 5
  %arrayidx.i.i = getelementptr i32, ptr %cap_mask, i32 %div3.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %tx_type, 31
  %8 = shl nuw i32 1, %and.i.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not = icmp eq i32 %9, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call ptr @dma_find_channel(i32 noundef %tx_type) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ %3, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_find_channel(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @async_tx_submit(ptr noundef readnone %chan, ptr noundef %tx, ptr nocapture noundef readonly %submit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %depend_tx1 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %0 = ptrtoint ptr %depend_tx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %depend_tx1, align 4
  %cb_fn = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %2 = ptrtoint ptr %cb_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cb_fn, align 4
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 6
  %4 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %callback, align 4
  %cb_param = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %5 = ptrtoint ptr %cb_param to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb_param, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 8
  %7 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %callback_param, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else30, label %if.then

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %if.then.do.body9_crit_edge, !prof !50

if.then.do.body9_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

lor.lhs.false:                                    ; preds = %if.then
  %next.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %next.i, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %lor.rhs, label %lor.lhs.false.do.body9_crit_edge, !prof !50

lor.lhs.false.do.body9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

lor.rhs:                                          ; preds = %lor.lhs.false
  %parent.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 13
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %do.end14, label %lor.rhs.do.body9_crit_edge, !prof !50

lor.rhs.do.body9_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

do.body9:                                         ; preds = %lor.rhs.do.body9_crit_edge, %lor.lhs.false.do.body9_crit_edge, %if.then.do.body9_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 161, 0\0A.popsection", ""() #5, !srcloc !51
  unreachable

do.end14:                                         ; preds = %lor.rhs
  %lock.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #5
  %parent.i67 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 13
  %14 = ptrtoint ptr %parent.i67 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i67, align 4
  %tobool16.not = icmp eq ptr %15, null
  %chan22 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %chan22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan22, align 4
  %cmp23 = icmp eq ptr %17, %chan
  br i1 %tobool16.not, label %if.else21, label %if.then17

if.then17:                                        ; preds = %do.end14
  br i1 %cmp23, label %if.end27.thread77, label %if.then17.sw.bb_crit_edge

if.then17.sw.bb_crit_edge:                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end27.thread77:                                ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tx, ptr %next.i, align 4
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %parent.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #5
  br label %if.end33

if.else21:                                        ; preds = %do.end14
  br i1 %cmp23, label %sw.bb28, label %if.else21.sw.bb_crit_edge

if.else21.sw.bb_crit_edge:                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %if.else21.sw.bb_crit_edge, %if.then17.sw.bb_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #5
  %chan1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan1.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #5
  %24 = ptrtoint ptr %parent.i67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i67, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %26 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan1.i, align 4
  %chan4.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %28 = ptrtoint ptr %chan4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan4.i, align 4
  %cmp.i70 = icmp eq ptr %27, %29
  br i1 %cmp.i70, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tx, ptr %next.i, align 4
  %31 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %parent.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #5
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 50
  %32 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %33(ptr noundef %21) #5
  br label %if.end33

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #5
  %cap_mask.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 6
  %34 = ptrtoint ptr %cap_mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %cap_mask.i, align 4
  %36 = and i32 %35, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not.i = icmp eq i32 %36, 0
  br i1 %tobool9.not.i, label %if.end.i.if.else24.i_crit_edge, label %if.end12.i

if.end.i.if.else24.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else24.i

if.end12.i:                                       ; preds = %if.end.i
  %device_prep_dma_interrupt.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 38
  %37 = ptrtoint ptr %device_prep_dma_interrupt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %device_prep_dma_interrupt.i, align 4
  %call11.i = tail call ptr %38(ptr noundef %21, i32 noundef 0) #5
  %tobool13.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool13.not.i, label %if.end12.i.if.else24.i_crit_edge, label %if.then14.i

if.end12.i.if.else24.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else24.i

if.then14.i:                                      ; preds = %if.end12.i
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11.i, i32 0, i32 6
  %39 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11.i, i32 0, i32 8
  %40 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %callback_param.i, align 4
  %next1.i68.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11.i, i32 0, i32 12
  %41 = ptrtoint ptr %next1.i68.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %tx, ptr %next1.i68.i, align 4
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call11.i, ptr %parent.i, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #5
  %43 = ptrtoint ptr %parent.i67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i67, align 4
  %tobool16.not.i = icmp eq ptr %44, null
  br i1 %tobool16.not.i, label %if.then20.i, label %if.end18.thread.i

if.end18.thread.i:                                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call11.i, ptr %next.i, align 4
  %parent.i73.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11.i, i32 0, i32 13
  %46 = ptrtoint ptr %parent.i73.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %1, ptr %parent.i73.i, align 4
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %48, 2
  store i32 %or.i.i, ptr %flags.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #5
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #5
  %parent.i75.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11.i, i32 0, i32 13
  %49 = ptrtoint ptr %parent.i75.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %parent.i75.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11.i, i32 0, i32 4
  %50 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_submit.i, align 4
  %call21.i = tail call i32 %51(ptr noundef nonnull %call11.i) #5
  %flags.i76.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call11.i, i32 0, i32 1
  %52 = ptrtoint ptr %flags.i76.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flags.i76.i, align 4
  %or.i77.i = or i32 %53, 2
  store i32 %or.i77.i, ptr %flags.i76.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end18.thread.i
  %device_issue_pending23.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 50
  %54 = ptrtoint ptr %device_issue_pending23.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device_issue_pending23.i, align 4
  tail call void %55(ptr noundef %21) #5
  br label %if.end33

if.else24.i:                                      ; preds = %if.end12.i.if.else24.i_crit_edge, %if.end.i.if.else24.i_crit_edge
  %call25.i = tail call i32 @dma_wait_for_async_tx(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.not.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.not.i, label %if.end28.i, label %if.then27.i

if.then27.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.async_tx_channel_switch) #9
  unreachable

if.end28.i:                                       ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #7
  %tx_submit29.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 4
  %56 = ptrtoint ptr %tx_submit29.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tx_submit29.i, align 4
  %call30.i = tail call i32 %57(ptr noundef %tx) #5
  br label %if.end33

sw.bb28:                                          ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #5
  %58 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %parent.i, align 4
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 4
  %59 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_submit, align 4
  %call29 = tail call i32 %60(ptr noundef %tx) #5
  br label %if.end33

if.else30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent.i72 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 13
  %61 = ptrtoint ptr %parent.i72 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %parent.i72, align 4
  %tx_submit31 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 4
  %62 = ptrtoint ptr %tx_submit31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_submit31, align 4
  %call32 = tail call i32 %63(ptr noundef %tx) #5
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %sw.bb28, %if.end28.i, %if.end22.i, %if.then.i, %if.end27.thread77
  %64 = ptrtoint ptr %submit to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %submit, align 4
  %and = and i32 %65, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i73 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 1
  %66 = ptrtoint ptr %flags.i73 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i73, align 4
  %or.i = or i32 %67, 2
  store i32 %or.i, ptr %flags.i73, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  br i1 %tobool.not, label %if.end36.if.end39_crit_edge, label %if.then38

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %flags.i74 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i74 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i74, align 4
  %or.i75 = or i32 %69, 2
  store i32 %or.i75, ptr %flags.i74, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end36.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @async_trigger_callback(ptr nocapture noundef %submit) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %depend_tx1 = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 1
  %0 = ptrtoint ptr %depend_tx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %depend_tx1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body19_crit_edge, label %if.then

entry.do.body19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

if.then:                                          ; preds = %entry
  %chan2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chan2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan2, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.then.do.body19_crit_edge, label %land.lhs.true

if.then.do.body19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

land.lhs.true:                                    ; preds = %if.then
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %cap_mask, align 4
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.do.body19_crit_edge, label %if.end9

land.lhs.true.do.body19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

if.end9:                                          ; preds = %land.lhs.true
  %device_prep_dma_interrupt = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 38
  %9 = ptrtoint ptr %device_prep_dma_interrupt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_prep_dma_interrupt, align 4
  %call8 = tail call ptr %10(ptr noundef %3, i32 noundef 0) #5
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end9.do.body19_crit_edge, label %do.body

if.end9.do.body19_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body19

do.body:                                          ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_trigger_callback.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_trigger_callback, %if.then16)) #5
          to label %do.end [label %if.then16], !srcloc !52

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_trigger_callback.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #5
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  tail call void @async_tx_submit(ptr noundef %3, ptr noundef nonnull %call8, ptr noundef %submit)
  br label %if.end36

do.body19:                                        ; preds = %if.end9.do.body19_crit_edge, %land.lhs.true.do.body19_crit_edge, %if.then.do.body19_crit_edge, %entry.do.body19_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @async_trigger_callback.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@async_trigger_callback, %if.then31)) #5
          to label %do.end34 [label %if.then31], !srcloc !52

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @async_trigger_callback.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %do.body19
  %11 = ptrtoint ptr %depend_tx1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %depend_tx1, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end34.async_tx_quiesce.exit_crit_edge, label %do.body.i

do.end34.async_tx_quiesce.exit_crit_edge:         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %async_tx_quiesce.exit

do.body.i:                                        ; preds = %do.end34
  %flags.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %do.end7.i, label %do.body4.i, !prof !50

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 269, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

do.end7.i:                                        ; preds = %do.body.i
  %call8.i = tail call i32 @dma_wait_for_async_tx(ptr noundef nonnull %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 0
  br i1 %cmp.not.i, label %if.end10.i, label %if.then9.i

if.then9.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.async_tx_quiesce) #9
  unreachable

if.end10.i:                                       ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %depend_tx1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %depend_tx1, align 4
  %flags.i16.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %flags.i16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i16.i, align 4
  %or.i.i = or i32 %18, 2
  store i32 %or.i.i, ptr %flags.i16.i, align 4
  store ptr null, ptr %depend_tx1, align 4
  br label %async_tx_quiesce.exit

async_tx_quiesce.exit:                            ; preds = %if.end10.i, %do.end34.async_tx_quiesce.exit_crit_edge
  %cb_fn.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 2
  %19 = ptrtoint ptr %cb_fn.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cb_fn.i, align 4
  %tobool.not.i52 = icmp eq ptr %20, null
  br i1 %tobool.not.i52, label %async_tx_quiesce.exit.if.end36_crit_edge, label %if.then.i

async_tx_quiesce.exit.if.end36_crit_edge:         ; preds = %async_tx_quiesce.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then.i:                                        ; preds = %async_tx_quiesce.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cb_param.i = getelementptr inbounds %struct.async_submit_ctl, ptr %submit, i32 0, i32 3
  %21 = ptrtoint ptr %cb_param.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cb_param.i, align 4
  tail call void %20(ptr noundef %22) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then.i, %async_tx_quiesce.exit.if.end36_crit_edge, %do.end
  %tx.058 = phi ptr [ %call8, %do.end ], [ null, %async_tx_quiesce.exit.if.end36_crit_edge ], [ null, %if.then.i ]
  ret ptr %tx.058
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @async_tx_quiesce(ptr nocapture noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %do.body

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

do.body:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %do.end7, label %do.body4, !prof !50

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22crypto/async_tx/async_tx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 269, 0\0A.popsection", ""() #5, !srcloc !53
  unreachable

do.end7:                                          ; preds = %do.body
  %call8 = tail call i32 @dma_wait_for_async_tx(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.async_tx_quiesce) #9
  unreachable

if.end10:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx, align 4
  %flags.i16 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flags.i16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i16, align 4
  %or.i = or i32 %7, 2
  store i32 %or.i, ptr %flags.i16, align 4
  store ptr null, ptr %tx, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_wait_for_async_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__initcall__kmod_async_tx__234_33_async_tx_init6, !1, !"__initcall__kmod_async_tx__234_33_async_tx_init6", i1 false, i1 false}
!1 = !{!"../crypto/async_tx/async_tx.c", i32 33, i32 1}
!2 = !{ptr @__exitcall_async_tx_exit, !3, !"__exitcall_async_tx_exit", i1 false, i1 false}
!3 = !{!"../crypto/async_tx/async_tx.c", i32 34, i32 1}
!4 = !{ptr @__ksymtab___async_tx_find_channel, !5, !"__ksymtab___async_tx_find_channel", i1 false, i1 false}
!5 = !{!"../crypto/async_tx/async_tx.c", i32 54, i32 1}
!6 = !{ptr @__ksymtab_async_tx_submit, !7, !"__ksymtab_async_tx_submit", i1 false, i1 false}
!7 = !{!"../crypto/async_tx/async_tx.c", i32 210, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../crypto/async_tx/async_tx.c", i32 243, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @async_trigger_callback.__UNIQUE_ID_ddebug235, !9, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../crypto/async_tx/async_tx.c", i32 247, i32 3}
!16 = !{ptr @async_trigger_callback.__UNIQUE_ID_ddebug236, !15, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!17 = !{ptr @__ksymtab_async_trigger_callback, !18, !"__ksymtab_async_trigger_callback", i1 false, i1 false}
!18 = !{!"../crypto/async_tx/async_tx.c", i32 257, i32 1}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../crypto/async_tx/async_tx.c", i32 271, i32 10}
!21 = !{ptr @__func__.async_tx_quiesce, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../crypto/async_tx/async_tx.c", i32 272, i32 10}
!23 = !{ptr @__ksymtab_async_tx_quiesce, !24, !"__ksymtab_async_tx_quiesce", i1 false, i1 false}
!24 = !{!"../crypto/async_tx/async_tx.c", i32 277, i32 1}
!25 = !{ptr @__UNIQUE_ID_author237, !26, !"__UNIQUE_ID_author237", i1 false, i1 false}
!26 = !{!"../crypto/async_tx/async_tx.c", i32 279, i32 1}
!27 = !{ptr @__UNIQUE_ID_description238, !28, !"__UNIQUE_ID_description238", i1 false, i1 false}
!28 = !{!"../crypto/async_tx/async_tx.c", i32 280, i32 1}
!29 = !{ptr @__UNIQUE_ID_file239, !30, !"__UNIQUE_ID_file239", i1 false, i1 false}
!30 = !{!"../crypto/async_tx/async_tx.c", i32 281, i32 1}
!31 = !{ptr @__UNIQUE_ID_license240, !30, !"__UNIQUE_ID_license240", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../crypto/async_tx/async_tx.c", i32 23, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @async_tx_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @async_tx_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../crypto/async_tx/async_tx.c", i32 119, i32 10}
!39 = !{ptr @__func__.async_tx_channel_switch, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../crypto/async_tx/async_tx.c", i32 120, i32 10}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2154151948, i64 2154152439, i64 2154151985, i64 2154152041, i64 2154152075, i64 2154152099, i64 2154152140, i64 2154152161, i64 2154152189, i64 2154152223}
!52 = !{i64 2148766025, i64 2148766030, i64 2148766043, i64 2148766087, i64 2148766121, i64 2148766142}
!53 = !{i64 2154161037, i64 2154161528, i64 2154161074, i64 2154161130, i64 2154161164, i64 2154161188, i64 2154161229, i64 2154161250, i64 2154161278, i64 2154161312}
