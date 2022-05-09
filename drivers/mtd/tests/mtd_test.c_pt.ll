; ModuleID = '/llk/IR_all_yes/drivers/mtd/tests/mtd_test.c_pt.bc'
source_filename = "../drivers/mtd/tests/mtd_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.erase_info = type { i64, i64, i64 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.52 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.52 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }

@mtdtest_erase_eraseblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016mtd_test: error %d while erasing EB %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtdtest_erase_eraseblock\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/mtd/tests/mtd_test.c\00", [35 x i8] zeroinitializer }, align 32
@mtdtest_erase_eraseblock._entry_ptr = internal global ptr @mtdtest_erase_eraseblock._entry, section ".printk_index", align 4
@mtdtest_scan_for_bad_eraseblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016mtd_test: scanning for bad eraseblocks\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mtdtest_scan_for_bad_eraseblocks\00", [63 x i8] zeroinitializer }, align 32
@mtdtest_scan_for_bad_eraseblocks._entry_ptr = internal global ptr @mtdtest_scan_for_bad_eraseblocks._entry, section ".printk_index", align 4
@mtdtest_scan_for_bad_eraseblocks._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016mtd_test: scanned %d eraseblocks, %d are bad\0A\00", [48 x i8] zeroinitializer }, align 32
@mtdtest_scan_for_bad_eraseblocks._entry_ptr.7 = internal global ptr @mtdtest_scan_for_bad_eraseblocks._entry.5, section ".printk_index", align 4
@mtdtest_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013mtd_test: error: read failed at %#llx\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mtdtest_read\00", [19 x i8] zeroinitializer }, align 32
@mtdtest_read._entry_ptr = internal global ptr @mtdtest_read._entry, section ".printk_index", align 4
@mtdtest_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013mtd_test: error: write failed at %#llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtdtest_write\00", [18 x i8] zeroinitializer }, align 32
@mtdtest_write._entry_ptr = internal global ptr @mtdtest_write._entry, section ".printk_index", align 4
@is_block_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016mtd_test: block %d is bad\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"is_block_bad\00", [19 x i8] zeroinitializer }, align 32
@is_block_bad._entry_ptr = internal global ptr @is_block_bad._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967179]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 22, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 49, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 56, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 91, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 106, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [32 x i8] c"../drivers/mtd/tests/mtd_test.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 36, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @is_block_bad._entry, ptr @is_block_bad._entry_ptr, ptr @mtdtest_erase_eraseblock._entry, ptr @mtdtest_erase_eraseblock._entry_ptr, ptr @mtdtest_read._entry, ptr @mtdtest_read._entry_ptr, ptr @mtdtest_scan_for_bad_eraseblocks._entry, ptr @mtdtest_scan_for_bad_eraseblocks._entry.5, ptr @mtdtest_scan_for_bad_eraseblocks._entry_ptr, ptr @mtdtest_scan_for_bad_eraseblocks._entry_ptr.7, ptr @mtdtest_write._entry, ptr @mtdtest_write._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_erase_eraseblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_scan_for_bad_eraseblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_scan_for_bad_eraseblocks._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtdtest_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_block_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtdtest_erase_eraseblock(ptr noundef %mtd, i32 noundef %ebnum) local_unnamed_addr #0 align 64 {
entry:
  %ei = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ei) #4
  %0 = getelementptr inbounds %struct.erase_info, ptr %ei, i32 0, i32 1
  %conv = zext i32 %ebnum to i64
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %1 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %erasesize, align 8
  %conv1 = zext i32 %2 to i64
  %mul = mul nuw i64 %conv1, %conv
  %3 = getelementptr inbounds i8, ptr %ei, i32 16
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %3, align 8
  %5 = ptrtoint ptr %ei to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %mul, ptr %ei, align 8
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv1, ptr %0, align 8
  %call = call i32 @mtd_erase(ptr noundef %mtd, ptr noundef nonnull %ei) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call, i32 noundef %ebnum) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ei) #4
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_erase(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtdtest_scan_for_bad_eraseblocks(ptr noundef %mtd, ptr nocapture noundef writeonly %bbt, i32 noundef %eb, i32 noundef %ebcnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %entry
  %mtd.addr.0.i.i = phi ptr [ %mtd, %entry ], [ %1, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %0 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %mtd_can_have_bb.exit, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond.i.i

mtd_can_have_bb.exit:                             ; preds = %while.cond.i.i
  %_block_isbad.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 42
  %2 = ptrtoint ptr %_block_isbad.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_block_isbad.i, align 4
  %tobool.i.not = icmp eq ptr %3, null
  br i1 %tobool.i.not, label %mtd_can_have_bb.exit.cleanup_crit_edge, label %do.end

mtd_can_have_bb.exit.cleanup_crit_edge:           ; preds = %mtd_can_have_bb.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %mtd_can_have_bb.exit
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ebcnt)
  %cmp26 = icmp sgt i32 %ebcnt, 0
  br i1 %cmp26, label %for.body.lr.ph, label %do.end.do.end13_crit_edge

do.end.do.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end13

for.body.lr.ph:                                   ; preds = %do.end
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %is_block_bad.exit.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %is_block_bad.exit.for.body_crit_edge ]
  %bad.027 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %is_block_bad.exit.for.body_crit_edge ]
  %add = add i32 %i.028, %eb
  %conv.i = zext i32 %add to i64
  %4 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %5 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %call.i = tail call i32 @mtd_block_isbad(ptr noundef %mtd, i64 noundef %mul.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.body.is_block_bad.exit_crit_edge, label %do.end.i

for.body.is_block_bad.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %is_block_bad.exit

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %add) #7
  br label %is_block_bad.exit

is_block_bad.exit:                                ; preds = %do.end.i, %for.body.is_block_bad.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp ne i32 %call.i, 0
  %conv = zext i1 %tobool3.not to i8
  %arrayidx = getelementptr i8, ptr %bbt, i32 %i.028
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx, align 1
  %add7 = zext i1 %tobool3.not to i32
  %spec.select = add i32 %bad.027, %add7
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 54, i32 noundef 0) #4
  %call.i25 = tail call i32 @__cond_resched() #4
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %ebcnt
  br i1 %exitcond.not, label %is_block_bad.exit.do.end13_crit_edge, label %is_block_bad.exit.for.body_crit_edge

is_block_bad.exit.for.body_crit_edge:             ; preds = %is_block_bad.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

is_block_bad.exit.do.end13_crit_edge:             ; preds = %is_block_bad.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end13

do.end13:                                         ; preds = %is_block_bad.exit.do.end13_crit_edge, %do.end.do.end13_crit_edge
  %bad.0.lcssa = phi i32 [ 0, %do.end.do.end13_crit_edge ], [ %spec.select, %is_block_bad.exit.do.end13_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %do.end.do.end13_crit_edge ], [ %ebcnt, %is_block_bad.exit.do.end13_crit_edge ]
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %i.0.lcssa, i32 noundef %bad.0.lcssa) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %mtd_can_have_bb.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtdtest_erase_good_eraseblocks(ptr noundef %mtd, ptr nocapture noundef readonly %bbt, i32 noundef %eb, i32 noundef %ebcnt) local_unnamed_addr #0 align 64 {
entry:
  %ei.i = alloca %struct.erase_info, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ebcnt)
  %cmp11.not = icmp eq i32 %ebcnt, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.erase_info, ptr %ei.i, i32 0, i32 1
  %erasesize.i = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  %1 = getelementptr inbounds i8, ptr %ei.i, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %bbt, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %add = add i32 %i.012, %eb
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ei.i) #4
  %conv.i = zext i32 %add to i64
  %4 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %erasesize.i, align 8
  %conv1.i = zext i32 %5 to i64
  %mul.i = mul nuw i64 %conv1.i, %conv.i
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %1, align 8
  %7 = ptrtoint ptr %ei.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %mul.i, ptr %ei.i, align 8
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv1.i, ptr %0, align 8
  %call.i = call i32 @mtd_erase(ptr noundef %mtd, ptr noundef nonnull %ei.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end3, label %mtdtest_erase_eraseblock.exit

mtdtest_erase_eraseblock.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i, i32 noundef %add) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ei.i) #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ei.i) #4
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 73, i32 noundef 0) #4
  %call.i10 = call i32 @__cond_resched() #4
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %ebcnt
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %mtdtest_erase_eraseblock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %mtdtest_erase_eraseblock.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtdtest_read(ptr noundef %mtd, i64 noundef %addr, i32 noundef %size, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read) #4
  %0 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %read, align 4, !annotation !39
  %call = call i32 @mtd_read(ptr noundef %mtd, i64 noundef %addr, i32 noundef %size, ptr noundef nonnull %read, ptr noundef %buf) #4
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %entry.do.end_crit_edge [
    i32 -117, label %entry.land.lhs.true_crit_edge
    i32 0, label %entry.land.lhs.true_crit_edge20
  ]

entry.land.lhs.true_crit_edge20:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge20
  %2 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %read, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp.not = icmp eq i32 %3, %size
  br i1 %cmp.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %err.1.ph = phi i32 [ -5, %land.lhs.true.do.end_crit_edge ], [ %call, %entry.do.end_crit_edge ]
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i64 noundef %addr) #7
  br label %if.end8

if.end8:                                          ; preds = %do.end, %land.lhs.true.if.end8_crit_edge
  %err.118 = phi i32 [ %err.1.ph, %do.end ], [ 0, %land.lhs.true.if.end8_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read) #4
  ret i32 %err.118
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtdtest_write(ptr noundef %mtd, i64 noundef %addr, i32 noundef %size, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %written = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %written) #4
  %0 = ptrtoint ptr %written to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %written, align 4, !annotation !39
  %call = call i32 @mtd_write(ptr noundef %mtd, i64 noundef %addr, i32 noundef %size, ptr noundef nonnull %written, ptr noundef %buf) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %1 = ptrtoint ptr %written to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %written, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %size)
  %cmp.not = icmp eq i32 %2, %size
  br i1 %cmp.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %err.0.ph = phi i32 [ -5, %land.lhs.true.do.end_crit_edge ], [ %call, %entry.do.end_crit_edge ]
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %addr) #7
  br label %if.end4

if.end4:                                          ; preds = %do.end, %land.lhs.true.if.end4_crit_edge
  %err.012 = phi i32 [ %err.0.ph, %do.end ], [ 0, %land.lhs.true.if.end4_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %written) #4
  ret i32 %err.012
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_write(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_block_isbad(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/tests/mtd_test.c", i32 22, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mtdtest_erase_eraseblock._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mtdtest_erase_eraseblock._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mtd/tests/mtd_test.c", i32 49, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @mtdtest_scan_for_bad_eraseblocks._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @mtdtest_scan_for_bad_eraseblocks._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mtd/tests/mtd_test.c", i32 56, i32 2}
!13 = !{ptr @mtdtest_scan_for_bad_eraseblocks._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @mtdtest_scan_for_bad_eraseblocks._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/tests/mtd_test.c", i32 91, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mtdtest_read._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtdtest_read._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mtd/tests/mtd_test.c", i32 106, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mtdtest_write._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @mtdtest_write._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/tests/mtd_test.c", i32 36, i32 3}
!27 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @is_block_bad._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @is_block_bad._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"auto-init"}
