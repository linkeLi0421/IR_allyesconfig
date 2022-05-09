; ModuleID = '/llk/IR_all_yes/drivers/misc/pvpanic/pvpanic.c_pt.bc'
source_filename = "../drivers/misc/pvpanic/pvpanic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+devm_pvpanic_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_pvpanic_probe\09\09\09\09"
module asm "\09.long\09__crc_devm_pvpanic_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_pvpanic_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_pvpanic_probe\22\09\09\09\09\09"
module asm "__kstrtabns_devm_pvpanic_probe:\09\09\09\09\09"
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pvpanic_instance = type { ptr, i32, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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

@__UNIQUE_ID_author233 = internal constant [56 x i8] c"pvpanic.author=Mihai Carabas <mihai.carabas@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [42 x i8] c"pvpanic.description=pvpanic device driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [42 x i8] c"pvpanic.file=drivers/misc/pvpanic/pvpanic\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [20 x i8] c"pvpanic.license=GPL\00", section ".modinfo", align 1
@pvpanic_lock = internal global { %struct.spinlock, [52 x i8] } zeroinitializer, align 32
@pvpanic_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@__kstrtab_devm_pvpanic_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_pvpanic_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_pvpanic_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_pvpanic_probe to i32), ptr @__kstrtab_devm_pvpanic_probe, ptr @__kstrtabns_devm_pvpanic_probe }, section "___ksymtab_gpl+devm_pvpanic_probe", align 4
@__initcall__kmod_pvpanic__237_102_pvpanic_init6 = internal global ptr @pvpanic_init, section ".initcall6.init", align 4
@__exitcall_pvpanic_exit = internal global ptr @pvpanic_exit, section ".exitcall.exit", align 4
@pvpanic_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&pvpanic_lock\00", [18 x i8] zeroinitializer }, align 32
@panic_notifier_list = external dso_local global %struct.atomic_notifier_head, align 4
@pvpanic_panic_nb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @pvpanic_panic_notify, ptr null, i32 1 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"pvpanic_lock\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 30, i32 19 }
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"pvpanic_list\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 29, i32 25 }
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 96, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"pvpanic_panic_nb\00", align 1
@___asan_gen_.14 = private constant [34 x i8] c"../drivers/misc/pvpanic/pvpanic.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 58, i32 30 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_pvpanic_exit, ptr @__initcall__kmod_pvpanic__237_102_pvpanic_init6, ptr @__ksymtab_devm_pvpanic_probe, ptr @pvpanic_lock, ptr @pvpanic_list, ptr @pvpanic_init.__key, ptr @.str, ptr @pvpanic_panic_nb], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvpanic_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvpanic_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvpanic_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvpanic_panic_nb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_pvpanic_probe(ptr noundef %dev, ptr noundef %pi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %pi, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %pi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pi, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_lock(ptr noundef nonnull @pvpanic_lock) #2
  %list = getelementptr inbounds %struct.pvpanic_instance, ptr %pi, i32 0, i32 3
  %2 = load ptr, ptr @pvpanic_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @pvpanic_list, ptr noundef %2) #2
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.pvpanic_instance, ptr %pi, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pvpanic_list, ptr %prev3.i.i, align 4
  store volatile ptr %list, ptr @pvpanic_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pvpanic_lock) #2
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pi, ptr %driver_data.i, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @pvpanic_remove, ptr noundef nonnull %pi) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %list_add.exit.return_crit_edge, label %if.then.i

list_add.exit.return_crit_edge:                   ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then.i:                                        ; preds = %list_add.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @pvpanic_lock) #2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then.i
  %.pn.in.in.i.i = phi ptr [ @pvpanic_list, %if.then.i ], [ %.pn.in.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %7 = ptrtoint ptr %.pn.in.in.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn.in.i.i = load ptr, ptr %.pn.in.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.in.i.i, @pvpanic_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.pvpanic_remove.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.pvpanic_remove.exit.i_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %pvpanic_remove.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %pi_cur.0.i.i = getelementptr i8, ptr %.pn.in.i.i, i32 -12
  %cmp5.i.i = icmp eq ptr %pi_cur.0.i.i, %pi
  br i1 %cmp5.i.i, label %if.then.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i.i) #2
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.list_del.exit.i.i_crit_edge

if.then.i.i.list_del.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i.i, align 4
  %10 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %if.then.i.i.list_del.exit.i.i_crit_edge
  %14 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  br label %pvpanic_remove.exit.i

pvpanic_remove.exit.i:                            ; preds = %list_del.exit.i.i, %for.cond.i.i.pvpanic_remove.exit.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pvpanic_lock) #2
  br label %return

return:                                           ; preds = %pvpanic_remove.exit.i, %list_add.exit.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %list_add.exit.return_crit_edge ], [ %call.i, %pvpanic_remove.exit.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvpanic_remove(ptr noundef readnone %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @pvpanic_lock) #2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in.in = phi ptr [ @pvpanic_list, %entry ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, @pvpanic_list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %pi_cur.0 = getelementptr i8, ptr %.pn.in, i32 -12
  %cmp5 = icmp eq ptr %pi_cur.0, %param
  br i1 %cmp5, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #2
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %3 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev1.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %2, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pvpanic_lock) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvpanic_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @pvpanic_list, ptr @pvpanic_list, align 4
  store ptr @pvpanic_list, ptr getelementptr inbounds (%struct.list_head, ptr @pvpanic_list, i32 0, i32 1), align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @pvpanic_lock, ptr noundef nonnull @.str, ptr noundef nonnull @pvpanic_init.__key, i16 noundef signext 3) #2
  %call1 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @pvpanic_panic_nb) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvpanic_exit() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @panic_notifier_list, ptr noundef nonnull @pvpanic_panic_nb) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvpanic_panic_notify(ptr nocapture noundef readnone %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @kexec_crash_loaded() #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  tail call void @_raw_spin_lock(ptr noundef nonnull @pvpanic_lock) #2
  %.pn11.i = load ptr, ptr @pvpanic_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn11.i, @pvpanic_list
  br i1 %cmp.not13.i, label %entry.pvpanic_send_event.exit_crit_edge, label %for.body.lr.ph.i

entry.pvpanic_send_event.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %pvpanic_send_event.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %conv.i = trunc i32 %spec.select to i8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn14.i = phi ptr [ %.pn11.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %capability.i = getelementptr i8, ptr %.pn14.i, i32 -8
  %0 = ptrtoint ptr %capability.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capability.i, align 4
  %and.i = and i32 %1, %spec.select
  %events.i = getelementptr i8, ptr %.pn14.i, i32 -4
  %2 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %events.i, align 4
  %and1.i = and i32 %and.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  %pi_cur.015.i = getelementptr i8, ptr %.pn14.i, i32 -12
  %4 = ptrtoint ptr %pi_cur.015.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pi_cur.015.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !31
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %5, i8 %conv.i) #2, !srcloc !32
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %6 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @pvpanic_list
  br i1 %cmp.not.i, label %for.inc.i.pvpanic_send_event.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.inc.i.pvpanic_send_event.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %pvpanic_send_event.exit

pvpanic_send_event.exit:                          ; preds = %for.inc.i.pvpanic_send_event.exit_crit_edge, %entry.pvpanic_send_event.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @pvpanic_lock) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kexec_crash_loaded() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__UNIQUE_ID_author233, !1, !"__UNIQUE_ID_author233", i1 false, i1 false}
!1 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description234, !3, !"__UNIQUE_ID_description234", i1 false, i1 false}
!3 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file235, !5, !"__UNIQUE_ID_file235", i1 false, i1 false}
!5 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license236, !5, !"__UNIQUE_ID_license236", i1 false, i1 false}
!7 = !{ptr @__ksymtab_devm_pvpanic_probe, !8, !"__ksymtab_devm_pvpanic_probe", i1 false, i1 false}
!8 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 91, i32 1}
!9 = !{ptr @__initcall__kmod_pvpanic__237_102_pvpanic_init6, !10, !"__initcall__kmod_pvpanic__237_102_pvpanic_init6", i1 false, i1 false}
!10 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 102, i32 1}
!11 = !{ptr @__exitcall_pvpanic_exit, !12, !"__exitcall_pvpanic_exit", i1 false, i1 false}
!12 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 109, i32 1}
!13 = !{ptr @pvpanic_list, !14, !"pvpanic_list", i1 false, i1 false}
!14 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 29, i32 25}
!15 = !{ptr @pvpanic_lock, !16, !"pvpanic_lock", i1 false, i1 false}
!16 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 30, i32 19}
!17 = !{ptr @pvpanic_init.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 96, i32 2}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pvpanic_panic_nb, !21, !"pvpanic_panic_nb", i1 false, i1 false}
!21 = !{!"../drivers/misc/pvpanic/pvpanic.c", i32 58, i32 30}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2148871529}
!32 = !{i64 685360}
