; ModuleID = '/llk/IR_all_yes/drivers/mtd/chips/chipreg.c_pt.bc'
source_filename = "../drivers/mtd/chips/chipreg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+register_mtd_chip_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_register_mtd_chip_driver\09\09\09\09"
module asm "\09.long\09__crc_register_mtd_chip_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_mtd_chip_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22register_mtd_chip_driver\22\09\09\09\09\09"
module asm "__kstrtabns_register_mtd_chip_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_mtd_chip_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_mtd_chip_driver\09\09\09\09"
module asm "\09.long\09__crc_unregister_mtd_chip_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_mtd_chip_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_mtd_chip_driver\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_mtd_chip_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+do_map_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_do_map_probe\09\09\09\09"
module asm "\09.long\09__crc_do_map_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_do_map_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22do_map_probe\22\09\09\09\09\09"
module asm "__kstrtabns_do_map_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+map_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_map_destroy\09\09\09\09"
module asm "\09.long\09__crc_map_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_map_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22map_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_map_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mtd_chip_driver = type { ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }

@chip_drvs_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@chip_drvs_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @chip_drvs_list, ptr @chip_drvs_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_register_mtd_chip_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_mtd_chip_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_register_mtd_chip_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_mtd_chip_driver to i32), ptr @__kstrtab_register_mtd_chip_driver, ptr @__kstrtabns_register_mtd_chip_driver }, section "___ksymtab+register_mtd_chip_driver", align 4
@__kstrtab_unregister_mtd_chip_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_mtd_chip_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_mtd_chip_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_mtd_chip_driver to i32), ptr @__kstrtab_unregister_mtd_chip_driver, ptr @__kstrtabns_unregister_mtd_chip_driver }, section "___ksymtab+unregister_mtd_chip_driver", align 4
@__kstrtab_do_map_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_do_map_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_do_map_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @do_map_probe to i32), ptr @__kstrtab_do_map_probe, ptr @__kstrtabns_do_map_probe }, section "___ksymtab+do_map_probe", align 4
@__kstrtab_map_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_map_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_map_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @map_destroy to i32), ptr @__kstrtab_map_destroy, ptr @__kstrtabns_map_destroy }, section "___ksymtab+map_destroy", align 4
@__UNIQUE_ID_file185 = internal constant [39 x i8] c"chipreg.file=drivers/mtd/chips/chipreg\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [20 x i8] c"chipreg.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author187 = internal constant [53 x i8] c"chipreg.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description188 = internal constant [80 x i8] c"chipreg.description=Core routines for registering and invoking MTD chip drivers\00", section ".modinfo", align 1
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chip_drvs_lock\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [15 x i8] c"chip_drvs_lock\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [15 x i8] c"chip_drvs_list\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 16, i32 8 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 62, i32 15 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [31 x i8] c"../drivers/mtd/chips/chipreg.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 15, i32 8 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author187, ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__ksymtab_do_map_probe, ptr @__ksymtab_map_destroy, ptr @__ksymtab_register_mtd_chip_driver, ptr @__ksymtab_unregister_mtd_chip_driver, ptr @chip_drvs_lock, ptr @chip_drvs_list, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_drvs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_drvs_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @register_mtd_chip_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @chip_drvs_lock) #3
  %list = getelementptr inbounds %struct.mtd_chip_driver, ptr %drv, i32 0, i32 4
  %0 = load ptr, ptr @chip_drvs_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @chip_drvs_list, ptr noundef %0) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %1 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev1.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mtd_chip_driver, ptr %drv, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @chip_drvs_list, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @chip_drvs_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chip_drvs_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_mtd_chip_driver(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @chip_drvs_lock) #3
  %list = getelementptr inbounds %struct.mtd_chip_driver, ptr %drv, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.mtd_chip_driver, ptr %drv, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.mtd_chip_driver, ptr %drv, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chip_drvs_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @do_map_probe(ptr noundef %name, ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @chip_drvs_lock) #3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @chip_drvs_list, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @chip_drvs_list
  br i1 %cmp.not.i, label %for.cond.i.land.lhs.true_crit_edge, label %for.body.i

for.cond.i.land.lhs.true_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

for.body.i:                                       ; preds = %for.cond.i
  %name1.i = getelementptr i8, ptr %.pn.i, i32 -4
  %1 = ptrtoint ptr %name1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name1.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %name) #6
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %this.0.le.i = getelementptr i8, ptr %.pn.i, i32 -16
  %tobool6.not.i = icmp eq ptr %this.0.le.i, null
  br i1 %tobool6.not.i, label %for.end.i.land.lhs.true_crit_edge, label %land.lhs.true.i

for.end.i.land.lhs.true_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

land.lhs.true.i:                                  ; preds = %for.end.i
  %module.i = getelementptr i8, ptr %.pn.i, i32 -8
  %3 = ptrtoint ptr %module.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module.i, align 4
  %call7.i = tail call zeroext i1 @try_module_get(ptr noundef %4) #3
  br i1 %call7.i, label %land.lhs.true.i.if.end6_crit_edge, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %for.end.i.land.lhs.true_crit_edge, %for.cond.i.land.lhs.true_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chip_drvs_lock) #3
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str, ptr noundef %name) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  tail call void @_raw_spin_lock(ptr noundef nonnull @chip_drvs_lock) #3
  br label %for.cond.i17

for.cond.i17:                                     ; preds = %for.body.i21.for.cond.i17_crit_edge, %if.then
  %.pn.in.i14 = phi ptr [ @chip_drvs_list, %if.then ], [ %.pn.i15, %for.body.i21.for.cond.i17_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i15 = load ptr, ptr %.pn.in.i14, align 4
  %cmp.not.i16 = icmp eq ptr %.pn.i15, @chip_drvs_list
  br i1 %cmp.not.i16, label %for.cond.i17.if.end.thread40_crit_edge, label %for.body.i21

for.cond.i17.if.end.thread40_crit_edge:           ; preds = %for.cond.i17
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread40

for.body.i21:                                     ; preds = %for.cond.i17
  %name1.i18 = getelementptr i8, ptr %.pn.i15, i32 -4
  %6 = ptrtoint ptr %name1.i18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name1.i18, align 4
  %call.i19 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %name) #6
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %for.end.i24, label %for.body.i21.for.cond.i17_crit_edge

for.body.i21.for.cond.i17_crit_edge:              ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i17

for.end.i24:                                      ; preds = %for.body.i21
  %this.0.le.i22 = getelementptr i8, ptr %.pn.i15, i32 -16
  %tobool6.not.i23 = icmp eq ptr %this.0.le.i22, null
  br i1 %tobool6.not.i23, label %for.end.i24.if.end.thread40_crit_edge, label %land.lhs.true.i28

for.end.i24.if.end.thread40_crit_edge:            ; preds = %for.end.i24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread40

land.lhs.true.i28:                                ; preds = %for.end.i24
  %module.i25 = getelementptr i8, ptr %.pn.i15, i32 -8
  %8 = ptrtoint ptr %module.i25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module.i25, align 4
  %call7.i26 = tail call zeroext i1 @try_module_get(ptr noundef %9) #3
  br i1 %call7.i26, label %land.lhs.true.i28.if.end6_crit_edge, label %land.lhs.true.i28.if.end.thread40_crit_edge

land.lhs.true.i28.if.end.thread40_crit_edge:      ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.thread40

land.lhs.true.i28.if.end6_crit_edge:              ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end6

if.end.thread40:                                  ; preds = %land.lhs.true.i28.if.end.thread40_crit_edge, %for.end.i24.if.end.thread40_crit_edge, %for.cond.i17.if.end.thread40_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chip_drvs_lock) #3
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.i28.if.end6_crit_edge, %land.lhs.true.i.if.end6_crit_edge
  %drv.038 = phi ptr [ %this.0.le.i, %land.lhs.true.i.if.end6_crit_edge ], [ %this.0.le.i22, %land.lhs.true.i28.if.end6_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @chip_drvs_lock) #3
  %10 = ptrtoint ptr %drv.038 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drv.038, align 4
  %call7 = tail call ptr %11(ptr noundef %map) #3
  %module = getelementptr inbounds %struct.mtd_chip_driver, ptr %drv.038, i32 0, i32 2
  %12 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %13) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.thread40, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7, %if.end6 ], [ null, %if.end.thread40 ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @map_destroy(ptr noundef %mtd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %fldrv = getelementptr inbounds %struct.map_info, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %fldrv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fldrv, align 4
  %destroy = getelementptr inbounds %struct.mtd_chip_driver, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %destroy, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void %5(ptr noundef %mtd) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %fldrv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fldrv, align 4
  %module = getelementptr inbounds %struct.mtd_chip_driver, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %9) #3
  tail call void @kfree(ptr noundef %mtd) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mtd/chips/chipreg.c", i32 62, i32 15}
!2 = !{ptr @__ksymtab_register_mtd_chip_driver, !3, !"__ksymtab_register_mtd_chip_driver", i1 false, i1 false}
!3 = !{!"../drivers/mtd/chips/chipreg.c", i32 95, i32 1}
!4 = !{ptr @__ksymtab_unregister_mtd_chip_driver, !5, !"__ksymtab_unregister_mtd_chip_driver", i1 false, i1 false}
!5 = !{!"../drivers/mtd/chips/chipreg.c", i32 96, i32 1}
!6 = !{ptr @__ksymtab_do_map_probe, !7, !"__ksymtab_do_map_probe", i1 false, i1 false}
!7 = !{!"../drivers/mtd/chips/chipreg.c", i32 97, i32 1}
!8 = !{ptr @__ksymtab_map_destroy, !9, !"__ksymtab_map_destroy", i1 false, i1 false}
!9 = !{!"../drivers/mtd/chips/chipreg.c", i32 98, i32 1}
!10 = !{ptr @__UNIQUE_ID_file185, !11, !"__UNIQUE_ID_file185", i1 false, i1 false}
!11 = !{!"../drivers/mtd/chips/chipreg.c", i32 100, i32 1}
!12 = !{ptr @__UNIQUE_ID_license186, !11, !"__UNIQUE_ID_license186", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author187, !14, !"__UNIQUE_ID_author187", i1 false, i1 false}
!14 = !{!"../drivers/mtd/chips/chipreg.c", i32 101, i32 1}
!15 = !{ptr @__UNIQUE_ID_description188, !16, !"__UNIQUE_ID_description188", i1 false, i1 false}
!16 = !{!"../drivers/mtd/chips/chipreg.c", i32 102, i32 1}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/mtd/chips/chipreg.c", i32 15, i32 8}
!19 = !{ptr @chip_drvs_lock, !18, !"chip_drvs_lock", i1 false, i1 false}
!20 = !{ptr @chip_drvs_list, !21, !"chip_drvs_list", i1 false, i1 false}
!21 = !{!"../drivers/mtd/chips/chipreg.c", i32 16, i32 8}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
