; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi-ng/ccu_common.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccu_helper_wait_for_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_helper_wait_for_lock\09\09\09\09"
module asm "\09.long\09__crc_ccu_helper_wait_for_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_helper_wait_for_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_helper_wait_for_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_helper_wait_for_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ccu_pll_notifier_register\22, \22a\22\09"
module asm "\09.weak\09__crc_ccu_pll_notifier_register\09\09\09\09"
module asm "\09.long\09__crc_ccu_pll_notifier_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_pll_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_pll_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_pll_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_sunxi_ccu_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_sunxi_ccu_probe\09\09\09\09"
module asm "\09.long\09__crc_devm_sunxi_ccu_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_sunxi_ccu_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_sunxi_ccu_probe\22\09\09\09\09\09"
module asm "__kstrtabns_devm_sunxi_ccu_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_pll_nb = type { %struct.notifier_block, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.sunxi_ccu = type { ptr, %struct.spinlock, %struct.ccu_reset }
%struct.ccu_reset = type { ptr, ptr, ptr, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/sunxi-ng/ccu_common.c\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_ccu_helper_wait_for_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_helper_wait_for_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_helper_wait_for_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_helper_wait_for_lock to i32), ptr @__kstrtab_ccu_helper_wait_for_lock, ptr @__kstrtabns_ccu_helper_wait_for_lock }, section "___ksymtab_gpl+ccu_helper_wait_for_lock", align 4
@__kstrtab_ccu_pll_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_pll_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_pll_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_pll_notifier_register to i32), ptr @__kstrtab_ccu_pll_notifier_register, ptr @__kstrtabns_ccu_pll_notifier_register }, section "___ksymtab_gpl+ccu_pll_notifier_register", align 4
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"devm_sunxi_ccu_release\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_devm_sunxi_ccu_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_sunxi_ccu_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_sunxi_ccu_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_sunxi_ccu_probe to i32), ptr @__kstrtab_devm_sunxi_ccu_probe, ptr @__kstrtabns_devm_sunxi_ccu_probe }, section "___ksymtab_gpl+devm_sunxi_ccu_probe", align 4
@of_sunxi_ccu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%pOF: probing clocks failed: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"of_sunxi_ccu_probe\00", [45 x i8] zeroinitializer }, align 32
@of_sunxi_ccu_probe._entry_ptr = internal global ptr @of_sunxi_ccu_probe._entry, section ".printk_index", align 4
@__UNIQUE_ID_file183 = internal constant [46 x i8] c"sunxi_ccu.file=drivers/clk/sunxi-ng/sunxi-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license184 = internal constant [22 x i8] c"sunxi_ccu.license=GPL\00", section ".modinfo", align 1
@sunxi_ccu_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ccu->lock\00", [21 x i8] zeroinitializer }, align 32
@sunxi_ccu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Couldn't register clock %d - %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sunxi_ccu_probe\00", [16 x i8] zeroinitializer }, align 32
@sunxi_ccu_probe._entry_ptr = internal global ptr @sunxi_ccu_probe._entry, section ".printk_index", align 4
@ccu_reset_ops = external dso_local constant %struct.reset_control_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 38, i32 2 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 186, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 214, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 99, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [37 x i8] c"../drivers/clk/sunxi-ng/ccu_common.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 124, i32 4 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file183, ptr @__UNIQUE_ID_license184, ptr @__ksymtab_ccu_helper_wait_for_lock, ptr @__ksymtab_ccu_pll_notifier_register, ptr @__ksymtab_devm_sunxi_ccu_probe, ptr @of_sunxi_ccu_probe._entry, ptr @of_sunxi_ccu_probe._entry_ptr, ptr @sunxi_ccu_probe._entry, ptr @sunxi_ccu_probe._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sunxi_ccu_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_sunxi_ccu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ccu_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_ccu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccu_helper_wait_for_lock(ptr nocapture noundef readonly %common, i32 noundef %lock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lock)
  %tobool.not = icmp eq i32 %lock, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %features = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 4
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %features, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %2 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common, align 4
  %reg4 = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 1
  %lock_reg = getelementptr inbounds %struct.ccu_common, ptr %common, i32 0, i32 2
  %.sink.in = select i1 %tobool1.not, ptr %reg4, ptr %lock_reg
  %4 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %4)
  %.sink = load i16, ptr %.sink.in, align 2
  %conv5 = zext i16 %.sink to i32
  %add.ptr6 = getelementptr i8, ptr %3, i32 %conv5
  %call = tail call i64 @ktime_get() #5
  %add.i = add i64 %call, 70000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 38) #5
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !35
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and1980 = and i32 %6, %lock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1980)
  %tobool20.not81 = icmp eq i32 %and1980, 0
  br i1 %tobool20.not81, label %if.end.land.lhs.true_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then34.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %call24 = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %if.then28, label %if.then34

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !35
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  br label %for.end

if.then34:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #5
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !35
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %and19 = and i32 %10, %lock
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then34.land.lhs.true_crit_edge, label %if.then34.for.end_crit_edge

if.then34.for.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then34.land.lhs.true_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

for.end:                                          ; preds = %if.then34.for.end_crit_edge, %if.then28, %if.end.for.end_crit_edge
  %reg.0 = phi i32 [ %8, %if.then28 ], [ %6, %if.end.for.end_crit_edge ], [ %10, %if.then34.for.end_crit_edge ]
  %and37 = and i32 %reg.0, %lock
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %do.end51, label %for.end.cleanup_crit_edge, !prof !36

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end51:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccu_pll_notifier_register(ptr noundef %pll_nb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pll_nb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ccu_pll_notifier_cb, ptr %pll_nb, align 4
  %common = getelementptr inbounds %struct.ccu_pll_nb, ptr %pll_nb, i32 0, i32 1
  %1 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common, align 4
  %clk = getelementptr inbounds %struct.ccu_common, ptr %2, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_notifier_register(ptr noundef %4, ptr noundef %pll_nb) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ccu_pll_notifier_cb(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event)
  %cmp.not = icmp eq i32 %event, 2
  br i1 %cmp.not, label %if.end, label %entry._crit_edge

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %12

if.end:                                           ; preds = %entry
  %common = getelementptr inbounds %struct.ccu_pll_nb, ptr %nb, i32 0, i32 1
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %enable = getelementptr inbounds %struct.ccu_pll_nb, ptr %nb, i32 0, i32 2
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %1, i32 noundef %3) #5
  %4 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common, align 4
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable, align 4
  %call = tail call i32 @ccu_gate_helper_enable(ptr noundef %5, i32 noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common, align 4
  %lock = getelementptr inbounds %struct.ccu_pll_nb, ptr %nb, i32 0, i32 3
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lock, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %9, i32 noundef %11)
  br label %12

out:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i32 1, %call
  %or.i = or i32 %sub.i, 32768
  br label %12

12:                                               ; preds = %out, %if.end4, %entry._crit_edge
  %13 = phi i32 [ %or.i, %out ], [ 1, %entry._crit_edge ], [ 1, %if.end4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_sunxi_ccu_probe(ptr noundef %dev, ptr noundef %reg, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_sunxi_ccu_release, i32 noundef 104, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call1 = tail call fastcc i32 @sunxi_ccu_probe(ptr noundef nonnull %call, ptr noundef %dev, ptr noundef %1, ptr noundef %reg, ptr noundef %desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devres_free(ptr noundef nonnull %call) #5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_sunxi_ccu_release(ptr nocapture noundef readonly %dev, ptr noundef %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %rcdev = getelementptr inbounds %struct.sunxi_ccu, ptr %res, i32 0, i32 2, i32 3
  tail call void @reset_controller_unregister(ptr noundef %rcdev) #5
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #5
  %hw_clks = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %hw_clks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_clks, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8.not = icmp eq i32 %7, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %8 = phi ptr [ %12, %cleanup.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %i.09 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.clk_hw_onecell_data, ptr %8, i32 0, i32 1, i32 %i.09
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_hw_unregister(ptr noundef nonnull %10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.09, 1
  %11 = ptrtoint ptr %hw_clks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_clks, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_ccu_probe(ptr noundef %ccu, ptr noundef %dev, ptr noundef %node, ptr noundef %reg, ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ccu to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %desc, ptr %ccu, align 4
  %lock = getelementptr inbounds %struct.sunxi_ccu, ptr %ccu, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @sunxi_ccu_probe.__key, i16 noundef signext 3) #5
  %num_ccu_clks = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %desc, i32 0, i32 1
  %1 = ptrtoint ptr %num_ccu_clks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_ccu_clks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp119.not = icmp eq i32 %2, 0
  br i1 %cmp119.not, label %entry.for.cond4.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %cleanup.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %hw_clks = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %desc, i32 0, i32 2
  %3 = ptrtoint ptr %hw_clks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw_clks, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp5122.not = icmp eq i32 %6, 0
  br i1 %cmp5122.not, label %for.cond4.preheader.for.end31_crit_edge, label %for.body6.lr.ph

for.cond4.preheader.for.end31_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end31

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %tobool13.not = icmp eq ptr %dev, null
  br label %for.body6

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr ptr, ptr %8, i32 %i.0120
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %reg, ptr %10, align 4
  %lock3 = getelementptr inbounds %struct.ccu_common, ptr %10, i32 0, i32 5
  %12 = ptrtoint ptr %lock3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lock, ptr %lock3, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0120, 1
  %13 = ptrtoint ptr %num_ccu_clks to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_ccu_clks, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.cond4.preheader_crit_edge

cleanup.for.cond4.preheader_crit_edge:            ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond4.preheader

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body6:                                        ; preds = %for.inc29.for.body6_crit_edge, %for.body6.lr.ph
  %15 = phi ptr [ %4, %for.body6.lr.ph ], [ %23, %for.inc29.for.body6_crit_edge ]
  %i.1123 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc30, %for.inc29.for.body6_crit_edge ]
  %arrayidx8 = getelementptr %struct.clk_hw_onecell_data, ptr %15, i32 0, i32 1, i32 %i.1123
  %16 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %17, null
  br i1 %tobool9.not, label %for.body6.for.inc29_crit_edge, label %if.end11

for.body6.for.inc29_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29

if.end11:                                         ; preds = %for.body6
  %init = getelementptr inbounds %struct.clk_hw, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = tail call i32 @clk_hw_register(ptr noundef nonnull %dev, ptr noundef nonnull %17) #5
  br label %if.end17

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 @of_clk_hw_register(ptr noundef %node, ptr noundef nonnull %17) #5
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then14
  %ret.1 = phi i32 [ %call15, %if.then14 ], [ %call16, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool18.not = icmp eq i32 %ret.1, 0
  br i1 %tobool18.not, label %if.end17.for.inc29_crit_edge, label %cleanup25

if.end17.for.inc29_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc29

cleanup25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %i.1123, ptr noundef %21) #8
  br label %err_clk_unreg

for.inc29:                                        ; preds = %if.end17.for.inc29_crit_edge, %for.body6.for.inc29_crit_edge
  %inc30 = add nuw i32 %i.1123, 1
  %22 = ptrtoint ptr %hw_clks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw_clks, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %cmp5 = icmp ult i32 %inc30, %25
  br i1 %cmp5, label %for.inc29.for.body6_crit_edge, label %for.inc29.for.end31_crit_edge

for.inc29.for.end31_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end31

for.inc29.for.body6_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body6

for.end31:                                        ; preds = %for.inc29.for.end31_crit_edge, %for.cond4.preheader.for.end31_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond4.preheader.for.end31_crit_edge ], [ %inc30, %for.inc29.for.end31_crit_edge ]
  %.lcssa = phi ptr [ %4, %for.cond4.preheader.for.end31_crit_edge ], [ %23, %for.inc29.for.end31_crit_edge ]
  %call33 = tail call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %.lcssa) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %for.end31.err_clk_unreg_crit_edge

for.end31.err_clk_unreg_crit_edge:                ; preds = %for.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clk_unreg

if.end36:                                         ; preds = %for.end31
  %reset37 = getelementptr inbounds %struct.sunxi_ccu, ptr %ccu, i32 0, i32 2
  %rcdev = getelementptr inbounds %struct.sunxi_ccu, ptr %ccu, i32 0, i32 2, i32 3
  %of_node = getelementptr inbounds %struct.sunxi_ccu, ptr %ccu, i32 0, i32 2, i32 3, i32 5
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %node, ptr %of_node, align 4
  %27 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ccu_reset_ops, ptr %rcdev, align 4
  %tobool39.not = icmp eq ptr %dev, null
  br i1 %tobool39.not, label %if.end36.cond.end_crit_edge, label %cond.true

if.end36.cond.end_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %28 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %owner, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end36.cond.end_crit_edge
  %cond = phi ptr [ %31, %cond.true ], [ null, %if.end36.cond.end_crit_edge ]
  %owner41 = getelementptr inbounds %struct.sunxi_ccu, ptr %ccu, i32 0, i32 2, i32 3, i32 1
  %32 = ptrtoint ptr %owner41 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cond, ptr %owner41, align 4
  %num_resets = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %desc, i32 0, i32 4
  %33 = ptrtoint ptr %num_resets to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_resets, align 4
  %nr_resets = getelementptr inbounds %struct.sunxi_ccu, ptr %ccu, i32 0, i32 2, i32 3, i32 8
  %35 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %nr_resets, align 4
  %36 = ptrtoint ptr %reset37 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %reg, ptr %reset37, align 4
  %lock45 = getelementptr inbounds %struct.sunxi_ccu, ptr %ccu, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %lock45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %lock, ptr %lock45, align 4
  %resets = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %desc, i32 0, i32 3
  %38 = ptrtoint ptr %resets to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resets, align 4
  %reset_map = getelementptr inbounds %struct.sunxi_ccu, ptr %ccu, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %reset_map to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %reset_map, align 4
  %call47 = tail call i32 @reset_controller_register(ptr noundef %rcdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cond.end.cleanup62_crit_edge, label %err_del_provider

cond.end.cleanup62_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

err_del_provider:                                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @of_clk_del_provider(ptr noundef %node) #5
  br label %err_clk_unreg

err_clk_unreg:                                    ; preds = %err_del_provider, %for.end31.err_clk_unreg_crit_edge, %cleanup25
  %i.1117 = phi i32 [ %i.1123, %cleanup25 ], [ %i.1.lcssa, %for.end31.err_clk_unreg_crit_edge ], [ %i.1.lcssa, %err_del_provider ]
  %ret.3 = phi i32 [ %ret.1, %cleanup25 ], [ %call33, %for.end31.err_clk_unreg_crit_edge ], [ %call47, %err_del_provider ]
  %dec126 = add i32 %i.1117, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec126)
  %cmp51127 = icmp sgt i32 %dec126, -1
  br i1 %cmp51127, label %err_clk_unreg.while.body_crit_edge, label %err_clk_unreg.cleanup62_crit_edge

err_clk_unreg.cleanup62_crit_edge:                ; preds = %err_clk_unreg
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

err_clk_unreg.while.body_crit_edge:               ; preds = %err_clk_unreg
  br label %while.body

while.body:                                       ; preds = %cleanup59.while.body_crit_edge, %err_clk_unreg.while.body_crit_edge
  %dec128 = phi i32 [ %dec, %cleanup59.while.body_crit_edge ], [ %dec126, %err_clk_unreg.while.body_crit_edge ]
  %41 = ptrtoint ptr %hw_clks to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hw_clks, align 4
  %arrayidx55 = getelementptr %struct.clk_hw_onecell_data, ptr %42, i32 0, i32 1, i32 %dec128
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %44, null
  br i1 %tobool56.not, label %while.body.cleanup59_crit_edge, label %if.end58

while.body.cleanup59_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

if.end58:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_hw_unregister(ptr noundef nonnull %44) #5
  br label %cleanup59

cleanup59:                                        ; preds = %if.end58, %while.body.cleanup59_crit_edge
  %dec = add i32 %dec128, -1
  %cmp51 = icmp sgt i32 %dec, -1
  br i1 %cmp51, label %cleanup59.while.body_crit_edge, label %cleanup59.cleanup62_crit_edge

cleanup59.cleanup62_crit_edge:                    ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup62

cleanup59.while.body_crit_edge:                   ; preds = %cleanup59
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup62:                                        ; preds = %cleanup59.cleanup62_crit_edge, %err_clk_unreg.cleanup62_crit_edge, %cond.end.cleanup62_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end.cleanup62_crit_edge ], [ %ret.3, %err_clk_unreg.cleanup62_crit_edge ], [ %ret.3, %cleanup59.cleanup62_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @of_sunxi_ccu_probe(ptr noundef %node, ptr noundef %reg, ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 104) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @sunxi_ccu_probe(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef %node, ptr noundef %reg, ptr noundef %desc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %node, i32 noundef %call1) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_controller_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !20, !21, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 38, i32 2}
!2 = !{ptr @__ksymtab_ccu_helper_wait_for_lock, !3, !"__ksymtab_ccu_helper_wait_for_lock", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 40, i32 1}
!4 = !{ptr @__ksymtab_ccu_pll_notifier_register, !5, !"__ksymtab_ccu_pll_notifier_register", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 88, i32 1}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 186, i32 8}
!8 = !{ptr @__ksymtab_devm_sunxi_ccu_probe, !9, !"__ksymtab_devm_sunxi_ccu_probe", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 200, i32 1}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 214, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @of_sunxi_ccu_probe._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @of_sunxi_ccu_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_file183, !16, !"__UNIQUE_ID_file183", i1 false, i1 false}
!16 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 219, i32 1}
!17 = !{ptr @__UNIQUE_ID_license184, !16, !"__UNIQUE_ID_license184", i1 false, i1 false}
!18 = !{ptr @sunxi_ccu_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 99, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/sunxi-ng/ccu_common.c", i32 124, i32 4}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sunxi_ccu_probe._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @sunxi_ccu_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 4995790}
!36 = !{!"branch_weights", i32 1, i32 2000}
