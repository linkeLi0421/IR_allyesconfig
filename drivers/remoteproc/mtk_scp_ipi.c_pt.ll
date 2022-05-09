; ModuleID = '/llk/IR_all_yes/drivers/remoteproc/mtk_scp_ipi.c_pt.bc'
source_filename = "../drivers/remoteproc/mtk_scp_ipi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+scp_ipi_register\22, \22a\22\09"
module asm "\09.weak\09__crc_scp_ipi_register\09\09\09\09"
module asm "\09.long\09__crc_scp_ipi_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scp_ipi_register:\09\09\09\09\09"
module asm "\09.asciz \09\22scp_ipi_register\22\09\09\09\09\09"
module asm "__kstrtabns_scp_ipi_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scp_ipi_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_scp_ipi_unregister\09\09\09\09"
module asm "\09.long\09__crc_scp_ipi_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scp_ipi_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22scp_ipi_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_scp_ipi_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scp_memcpy_aligned\22, \22a\22\09"
module asm "\09.weak\09__crc_scp_memcpy_aligned\09\09\09\09"
module asm "\09.long\09__crc_scp_memcpy_aligned\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scp_memcpy_aligned:\09\09\09\09\09"
module asm "\09.asciz \09\22scp_memcpy_aligned\22\09\09\09\09\09"
module asm "__kstrtabns_scp_memcpy_aligned:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scp_ipi_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_scp_ipi_lock\09\09\09\09"
module asm "\09.long\09__crc_scp_ipi_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scp_ipi_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22scp_ipi_lock\22\09\09\09\09\09"
module asm "__kstrtabns_scp_ipi_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scp_ipi_unlock\22, \22a\22\09"
module asm "\09.weak\09__crc_scp_ipi_unlock\09\09\09\09"
module asm "\09.long\09__crc_scp_ipi_unlock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scp_ipi_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22scp_ipi_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_scp_ipi_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scp_ipi_send\22, \22a\22\09"
module asm "\09.weak\09__crc_scp_ipi_send\09\09\09\09"
module asm "\09.long\09__crc_scp_ipi_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scp_ipi_send:\09\09\09\09\09"
module asm "\09.asciz \09\22scp_ipi_send\22\09\09\09\09\09"
module asm "__kstrtabns_scp_ipi_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_scp = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, %struct.scp_run, %struct.mutex, [256 x %struct.scp_ipi_desc], [256 x i8], %struct.wait_queue_head, ptr, i32, i32, ptr }
%struct.scp_run = type { i32, [32 x i8], i32, i32, %struct.wait_queue_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scp_ipi_desc = type { %struct.mutex, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.mtk_scp_of_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.mtk_share_obj = type { i32, i32, [288 x i8] }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/remoteproc/mtk_scp_ipi.c\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_scp_ipi_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_scp_ipi_register = external dso_local constant [0 x i8], align 1
@__ksymtab_scp_ipi_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scp_ipi_register to i32), ptr @__kstrtab_scp_ipi_register, ptr @__kstrtabns_scp_ipi_register }, section "___ksymtab_gpl+scp_ipi_register", align 4
@__kstrtab_scp_ipi_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_scp_ipi_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_scp_ipi_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scp_ipi_unregister to i32), ptr @__kstrtab_scp_ipi_unregister, ptr @__kstrtabns_scp_ipi_unregister }, section "___ksymtab_gpl+scp_ipi_unregister", align 4
@__kstrtab_scp_memcpy_aligned = external dso_local constant [0 x i8], align 1
@__kstrtabns_scp_memcpy_aligned = external dso_local constant [0 x i8], align 1
@__ksymtab_scp_memcpy_aligned = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scp_memcpy_aligned to i32), ptr @__kstrtab_scp_memcpy_aligned, ptr @__kstrtabns_scp_memcpy_aligned }, section "___ksymtab_gpl+scp_memcpy_aligned", align 4
@__kstrtab_scp_ipi_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_scp_ipi_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_scp_ipi_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scp_ipi_lock to i32), ptr @__kstrtab_scp_ipi_lock, ptr @__kstrtabns_scp_ipi_lock }, section "___ksymtab_gpl+scp_ipi_lock", align 4
@__kstrtab_scp_ipi_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_scp_ipi_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_scp_ipi_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scp_ipi_unlock to i32), ptr @__kstrtab_scp_ipi_unlock, ptr @__kstrtabns_scp_ipi_unlock }, section "___ksymtab_gpl+scp_ipi_unlock", align 4
@scp_ipi_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scp_ipi_send\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scp_ipi_send._entry_ptr = internal global ptr @scp_ipi_send._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@scp_ipi_send._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: IPI timeout!\0A\00", [46 x i8] zeroinitializer }, align 32
@scp_ipi_send._entry_ptr.7 = internal global ptr @scp_ipi_send._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"scp ipi %d ack time out !\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_scp_ipi_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_scp_ipi_send = external dso_local constant [0 x i8], align 1
@__ksymtab_scp_ipi_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scp_ipi_send to i32), ptr @__kstrtab_scp_ipi_send, ptr @__kstrtabns_scp_ipi_send }, section "___ksymtab_gpl+scp_ipi_send", align 4
@__UNIQUE_ID_file232 = internal constant [48 x i8] c"mtk_scp_ipi.file=drivers/remoteproc/mtk_scp_ipi\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [27 x i8] c"mtk_scp_ipi.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [51 x i8] c"mtk_scp_ipi.description=MediaTek scp IPI interface\00", section ".modinfo", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 36, i32 6 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 171, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 179, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [36 x i8] c"../drivers/remoteproc/mtk_scp_ipi.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 202, i32 7 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__ksymtab_scp_ipi_lock, ptr @__ksymtab_scp_ipi_register, ptr @__ksymtab_scp_ipi_send, ptr @__ksymtab_scp_ipi_unlock, ptr @__ksymtab_scp_ipi_unregister, ptr @__ksymtab_scp_memcpy_aligned, ptr @scp_ipi_send._entry, ptr @scp_ipi_send._entry.5, ptr @scp_ipi_send._entry_ptr, ptr @scp_ipi_send._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_ipi_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_ipi_send._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scp_ipi_register(ptr noundef %scp, i32 noundef %id, ptr noundef %handler, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %scp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %id)
  %cmp = icmp ugt i32 %id, 255
  br i1 %cmp, label %do.end, label %lor.lhs.false.critedge, !prof !41

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #5
  br label %return

lor.lhs.false.critedge:                           ; preds = %if.end
  %cmp24 = icmp eq ptr %handler, null
  br i1 %cmp24, label %do.end40, label %scp_ipi_unlock.exit, !prof !41

do.end40:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 36, i32 noundef 9, ptr noundef null) #5
  br label %return

scp_ipi_unlock.exit:                              ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 15, i32 %id
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i, i32 noundef 0) #5
  %handler57 = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 15, i32 %id, i32 1
  %0 = ptrtoint ptr %handler57 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %handler, ptr %handler57, align 4
  %priv60 = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 15, i32 %id, i32 2
  %1 = ptrtoint ptr %priv60 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %priv, ptr %priv60, align 4
  tail call void @mutex_unlock(ptr noundef %arrayidx.i) #5
  br label %return

return:                                           ; preds = %scp_ipi_unlock.exit, %do.end40, %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %scp_ipi_unlock.exit ], [ -517, %entry.return_crit_edge ], [ -22, %do.end40 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scp_ipi_lock(ptr noundef %scp, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %id)
  %cmp = icmp ugt i32 %id, 255
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !41

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 117, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end21.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 15, i32 %id
  tail call void @mutex_lock_nested(ptr noundef %arrayidx, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %if.end21.critedge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scp_ipi_unlock(ptr noundef %scp, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %id)
  %cmp = icmp ugt i32 %id, 255
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !41

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 133, i32 noundef 9, ptr noundef null) #5
  br label %return

if.end21.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 15, i32 %id
  tail call void @mutex_unlock(ptr noundef %arrayidx) #5
  br label %return

return:                                           ; preds = %if.end21.critedge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scp_ipi_unregister(ptr noundef %scp, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %scp, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %id)
  %cmp = icmp ugt i32 %id, 255
  br i1 %cmp, label %do.end, label %scp_ipi_unlock.exit, !prof !41

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #5
  br label %return

scp_ipi_unlock.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 15, i32 %id
  tail call void @mutex_lock_nested(ptr noundef %arrayidx.i, i32 noundef 0) #5
  %handler = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 15, i32 %id, i32 1
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %handler, align 4
  %priv = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 15, i32 %id, i32 2
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %priv, align 4
  tail call void @mutex_unlock(ptr noundef %arrayidx.i) #5
  br label %return

return:                                           ; preds = %scp_ipi_unlock.exit, %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scp_memcpy_aligned(ptr noundef %dst, ptr noundef %src, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %dst to i32
  %and = and i32 %0, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and1 = and i32 %0, -4
  %1 = inttoptr i32 %and1 to ptr
  %sub2 = sub nuw nsw i32 4, %and
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !42
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %val, align 4
  %add.ptr = getelementptr i8, ptr %val, i32 %and
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %src, i32 %sub2)
  %6 = load i32, ptr %val, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %7) #5, !srcloc !43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %i.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %sub2, %if.then ]
  %add.ptr4 = getelementptr i8, ptr %dst, i32 %i.0
  %add.ptr5 = getelementptr i8, ptr %src, i32 %i.0
  %sub6 = sub i32 %len, %i.0
  %div44 = lshr i32 %sub6, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr4, ptr noundef %add.ptr5, i32 noundef %div44) #5
  %rem = and i32 %sub6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp8.not = icmp eq i32 %rem, 0
  br i1 %cmp8.not, label %if.end.if.end21_crit_edge, label %if.then9

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr11 = getelementptr i8, ptr %dst, i32 %len
  %idx.neg = sub nsw i32 0, %rem
  %add.ptr12 = getelementptr i8, ptr %add.ptr11, i32 %idx.neg
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !42
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  %add.ptr15 = getelementptr i8, ptr %src, i32 %len
  %add.ptr17 = getelementptr i8, ptr %add.ptr15, i32 %idx.neg
  %11 = call ptr @memcpy(ptr %val, ptr %add.ptr17, i32 %rem)
  %12 = load i32, ptr %val, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %13) #5, !srcloc !43
  br label %if.end21

if.end21:                                         ; preds = %if.then9, %if.end.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scp_ipi_send(ptr noundef %scp, i32 noundef %id, ptr noundef %buf, i32 noundef %len, i32 noundef %wait) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %send_buf = getelementptr inbounds %struct.mtk_scp, ptr %scp, i32 0, i32 12
  %0 = ptrtoint ptr %send_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %send_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %id)
  %cmp = icmp eq i32 %id, 0
  br i1 %cmp, label %do.end, label %lor.lhs.false.critedge, !prof !41

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #5
  br label %cleanup284

lor.lhs.false.critedge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %id)
  %cmp21 = icmp ugt i32 %id, 255
  br i1 %cmp21, label %do.end37, label %lor.lhs.false52.critedge, !prof !41

do.end37:                                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 162, i32 noundef 9, ptr noundef null) #5
  br label %cleanup284

lor.lhs.false52.critedge:                         ; preds = %lor.lhs.false.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %id)
  %cmp54 = icmp eq i32 %id, 255
  br i1 %cmp54, label %do.end70, label %lor.lhs.false85.critedge, !prof !41

do.end70:                                         ; preds = %lor.lhs.false52.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 163, i32 noundef 9, ptr noundef null) #5
  br label %cleanup284

lor.lhs.false85.critedge:                         ; preds = %lor.lhs.false52.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 288, i32 %len)
  %cmp87 = icmp ugt i32 %len, 288
  br i1 %cmp87, label %do.end103, label %lor.lhs.false118.critedge, !prof !41

do.end103:                                        ; preds = %lor.lhs.false85.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 9, ptr noundef null) #5
  br label %cleanup284

lor.lhs.false118.critedge:                        ; preds = %lor.lhs.false85.critedge
  %tobool120.not = icmp eq ptr %buf, null
  br i1 %tobool120.not, label %do.end138, label %if.end154, !prof !41

do.end138:                                        ; preds = %lor.lhs.false118.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 164, i32 noundef 9, ptr noundef null) #5
  br label %cleanup284

if.end154:                                        ; preds = %lor.lhs.false118.critedge
  %send_lock = getelementptr inbounds %struct.mtk_scp, ptr %scp, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %send_lock, i32 noundef 0) #5
  %clk = getelementptr inbounds %struct.mtk_scp, ptr %scp, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i340, label %if.end154.do.end159_crit_edge

if.end154.do.end159_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end159

if.end.i340:                                      ; preds = %if.end154
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end160, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i340
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %3) #5
  br label %do.end159

do.end159:                                        ; preds = %if.then3.i, %if.end154.do.end159_crit_edge
  %retval.0.i341.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end154.do.end159_crit_edge ]
  %4 = ptrtoint ptr %scp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #8
  br label %unlock_mutex

if.end160:                                        ; preds = %if.end.i340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 200
  %reg_base = getelementptr inbounds %struct.mtk_scp, ptr %scp, i32 0, i32 3
  %data = getelementptr inbounds %struct.mtk_scp, ptr %scp, i32 0, i32 10
  br label %do.body162

do.body162:                                       ; preds = %do.cond170.do.body162_crit_edge, %if.end160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp163 = icmp slt i32 %sub, 0
  br i1 %cmp163, label %do.end167, label %do.cond170

do.end167:                                        ; preds = %do.body162
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %scp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #8
  br label %clock_disable

do.cond170:                                       ; preds = %do.body162
  %10 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_base, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %host_to_scp_reg = getelementptr inbounds %struct.mtk_scp_of_data, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %host_to_scp_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %host_to_scp_reg, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %tobool174.not = icmp eq i32 %16, 0
  br i1 %tobool174.not, label %do.end175, label %do.cond170.do.body162_crit_edge

do.cond170.do.body162_crit_edge:                  ; preds = %do.cond170
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body162

do.end175:                                        ; preds = %do.cond170
  %share_buf = getelementptr inbounds %struct.mtk_share_obj, ptr %1, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %17 = ptrtoint ptr %share_buf to i32
  %and.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i342 = icmp eq i32 %and.i, 0
  br i1 %cmp.i342, label %do.end175.if.end.i344_crit_edge, label %if.then.i343

do.end175.if.end.i344_crit_edge:                  ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i344

if.then.i343:                                     ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #7
  %and1.i = and i32 %17, -4
  %18 = inttoptr i32 %and1.i to ptr
  %sub2.i = sub nuw nsw i32 4, %and.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !42
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #5
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %val.i, align 4
  %add.ptr.i = getelementptr i8, ptr %val.i, i32 %and.i
  %22 = call ptr @memcpy(ptr %add.ptr.i, ptr %buf, i32 %sub2.i)
  %23 = load i32, ptr %val.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %24) #5, !srcloc !43
  br label %if.end.i344

if.end.i344:                                      ; preds = %if.then.i343, %do.end175.if.end.i344_crit_edge
  %i.0.i = phi i32 [ 0, %do.end175.if.end.i344_crit_edge ], [ %sub2.i, %if.then.i343 ]
  %add.ptr4.i = getelementptr i8, ptr %share_buf, i32 %i.0.i
  %add.ptr5.i = getelementptr i8, ptr %buf, i32 %i.0.i
  %sub6.i = sub i32 %len, %i.0.i
  %div44.i = lshr i32 %sub6.i, 2
  tail call void @__iowrite32_copy(ptr noundef %add.ptr4.i, ptr noundef %add.ptr5.i, i32 noundef %div44.i) #5
  %rem.i = and i32 %sub6.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp8.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp8.not.i, label %if.end.i344.scp_memcpy_aligned.exit_crit_edge, label %if.then9.i

if.end.i344.scp_memcpy_aligned.exit_crit_edge:    ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #7
  br label %scp_memcpy_aligned.exit

if.then9.i:                                       ; preds = %if.end.i344
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr11.i = getelementptr i8, ptr %share_buf, i32 %len
  %idx.neg.i = sub nsw i32 0, %rem.i
  %add.ptr12.i = getelementptr i8, ptr %add.ptr11.i, i32 %idx.neg.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #5, !srcloc !42
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %val.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %buf, i32 %len
  %add.ptr17.i = getelementptr i8, ptr %add.ptr15.i, i32 %idx.neg.i
  %28 = call ptr @memcpy(ptr %val.i, ptr %add.ptr17.i, i32 %rem.i)
  %29 = load i32, ptr %val.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %30) #5, !srcloc !43
  br label %scp_memcpy_aligned.exit

scp_memcpy_aligned.exit:                          ; preds = %if.then9.i, %if.end.i344.scp_memcpy_aligned.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %31 = tail call i32 @llvm.bswap.i32(i32 %len)
  %len179 = getelementptr inbounds %struct.mtk_share_obj, ptr %1, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %len179, i32 %31) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %id)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %32) #5, !srcloc !43
  %arrayidx = getelementptr %struct.mtk_scp, ptr %scp, i32 0, i32 16, i32 %id
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %host_to_scp_int_bit = getelementptr inbounds %struct.mtk_scp_of_data, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %host_to_scp_int_bit to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %host_to_scp_int_bit, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %39 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_base, align 4
  %host_to_scp_reg190 = getelementptr inbounds %struct.mtk_scp_of_data, ptr %35, i32 0, i32 7
  %41 = ptrtoint ptr %host_to_scp_reg190 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %host_to_scp_reg190, align 4
  %add.ptr191 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191, i32 %38) #5, !srcloc !43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %tobool192.not = icmp eq i32 %wait, 0
  br i1 %tobool192.not, label %scp_memcpy_aligned.exit.clock_disable_crit_edge, label %if.else.i

scp_memcpy_aligned.exit.clock_disable_crit_edge:  ; preds = %scp_memcpy_aligned.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %clock_disable

if.else.i:                                        ; preds = %scp_memcpy_aligned.exit
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %wait) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 200) #5
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool203.not = icmp eq i8 %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool205.not = icmp eq i32 %call2.i, 0
  %spec.select = select i1 %tobool205.not, i32 1, i32 %call2.i
  %__ret.0 = select i1 %tobool203.not, i32 %call2.i, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool210.not = icmp eq i32 %__ret.0, 0
  %not.tobool203.not = xor i1 %tobool203.not, true
  %45 = select i1 %not.tobool203.not, i1 true, i1 %tobool210.not
  br i1 %45, label %if.else.i.if.end241_crit_edge, label %if.then214

if.else.i.if.end241_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end241

if.then214:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %46 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %ack_wq = getelementptr inbounds %struct.mtk_scp, ptr %scp, i32 0, i32 17
  %call216352 = call i32 @prepare_to_wait_event(ptr noundef %ack_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool220.not353 = icmp eq i8 %48, 0
  %__ret215.1356 = select i1 %tobool220.not353, i32 %call2.i, i32 %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret215.1356)
  %tobool230.not357 = icmp eq i32 %__ret215.1356, 0
  %not.tobool220.not358 = xor i1 %tobool220.not353, true
  %49 = select i1 %not.tobool220.not358, i1 true, i1 %tobool230.not357
  br i1 %49, label %if.then214.for.end_crit_edge, label %if.then214.cleanup_crit_edge

if.then214.cleanup_crit_edge:                     ; preds = %if.then214
  br label %cleanup

if.then214.for.end_crit_edge:                     ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then214.cleanup_crit_edge
  %__ret215.1359 = phi i32 [ %__ret215.1, %cleanup.cleanup_crit_edge ], [ %__ret215.1356, %if.then214.cleanup_crit_edge ]
  %call238 = call i32 @schedule_timeout(i32 noundef %__ret215.1359) #5
  %call216 = call i32 @prepare_to_wait_event(ptr noundef %ack_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool220.not = icmp eq i8 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool224.not = icmp eq i32 %call238, 0
  %spec.store.select287 = select i1 %tobool224.not, i32 1, i32 %call238
  %__ret215.1 = select i1 %tobool220.not, i32 %call238, i32 %spec.store.select287
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret215.1)
  %tobool230.not = icmp eq i32 %__ret215.1, 0
  %not.tobool220.not = xor i1 %tobool220.not, true
  %52 = select i1 %not.tobool220.not, i1 true, i1 %tobool230.not
  br i1 %52, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then214.for.end_crit_edge
  %__ret215.1.lcssa = phi i32 [ %__ret215.1356, %if.then214.for.end_crit_edge ], [ %__ret215.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %ack_wq, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end241

if.end241:                                        ; preds = %for.end, %if.else.i.if.end241_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.else.i.if.end241_crit_edge ], [ %__ret215.1.lcssa, %for.end ]
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %tobool246.not = icmp eq i32 %__ret.1, 0
  br i1 %tobool246.not, label %do.end264, label %if.end241.clock_disable_crit_edge, !prof !41

if.end241.clock_disable_crit_edge:                ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  br label %clock_disable

do.end264:                                        ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %id) #5
  br label %clock_disable

clock_disable:                                    ; preds = %do.end264, %if.end241.clock_disable_crit_edge, %scp_memcpy_aligned.exit.clock_disable_crit_edge, %do.end167
  %ret.0 = phi i32 [ -110, %do.end167 ], [ 0, %scp_memcpy_aligned.exit.clock_disable_crit_edge ], [ -5, %do.end264 ], [ 0, %if.end241.clock_disable_crit_edge ]
  %54 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %55) #5
  call void @clk_unprepare(ptr noundef %55) #5
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %clock_disable, %do.end159
  %ret.1 = phi i32 [ %retval.0.i341.ph, %do.end159 ], [ %ret.0, %clock_disable ]
  call void @mutex_unlock(ptr noundef %send_lock) #5
  br label %cleanup284

cleanup284:                                       ; preds = %unlock_mutex, %do.end138, %do.end103, %do.end70, %do.end37, %do.end
  %retval.0 = phi i32 [ %ret.1, %unlock_mutex ], [ -22, %do.end138 ], [ -22, %do.end103 ], [ -22, %do.end70 ], [ -22, %do.end37 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 36, i32 6}
!2 = !{ptr @__ksymtab_scp_ipi_register, !3, !"__ksymtab_scp_ipi_register", i1 false, i1 false}
!3 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 46, i32 1}
!4 = !{ptr @__ksymtab_scp_ipi_unregister, !5, !"__ksymtab_scp_ipi_unregister", i1 false, i1 false}
!5 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 69, i32 1}
!6 = !{ptr @__ksymtab_scp_memcpy_aligned, !7, !"__ksymtab_scp_memcpy_aligned", i1 false, i1 false}
!7 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 105, i32 1}
!8 = !{ptr @__ksymtab_scp_ipi_lock, !9, !"__ksymtab_scp_ipi_lock", i1 false, i1 false}
!9 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 121, i32 1}
!10 = !{ptr @__ksymtab_scp_ipi_unlock, !11, !"__ksymtab_scp_ipi_unlock", i1 false, i1 false}
!11 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 137, i32 1}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 171, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @scp_ipi_send._entry, !13, !"_entry", i1 false, i1 false}
!18 = !{ptr @scp_ipi_send._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 179, i32 4}
!21 = !{ptr @scp_ipi_send._entry.5, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @scp_ipi_send._entry_ptr.7, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 202, i32 7}
!25 = !{ptr @__ksymtab_scp_ipi_send, !26, !"__ksymtab_scp_ipi_send", i1 false, i1 false}
!26 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 215, i32 1}
!27 = !{ptr @__UNIQUE_ID_file232, !28, !"__UNIQUE_ID_file232", i1 false, i1 false}
!28 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 217, i32 1}
!29 = !{ptr @__UNIQUE_ID_license233, !28, !"__UNIQUE_ID_license233", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_description234, !31, !"__UNIQUE_ID_description234", i1 false, i1 false}
!31 = !{!"../drivers/remoteproc/mtk_scp_ipi.c", i32 218, i32 1}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2032779}
!43 = !{i64 2032361}
!44 = !{i64 2154256428}
!45 = !{i64 2154256639}
!46 = !{i64 2154257020}
!47 = !{i64 2154257454}
!48 = !{i8 0, i8 2}
