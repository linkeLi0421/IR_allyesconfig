; ModuleID = '/llk/IR_all_yes/drivers/scsi/scsi_pm.c_pt.bc'
source_filename = "../drivers/scsi/scsi_pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+scsi_autopm_get_device\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_autopm_get_device\09\09\09\09"
module asm "\09.long\09__crc_scsi_autopm_get_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_autopm_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_autopm_get_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_autopm_get_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+scsi_autopm_put_device\22, \22a\22\09"
module asm "\09.weak\09__crc_scsi_autopm_put_device\09\09\09\09"
module asm "\09.long\09__crc_scsi_autopm_put_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_scsi_autopm_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22scsi_autopm_put_device\22\09\09\09\09\09"
module asm "__kstrtabns_scsi_autopm_put_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.execute_work = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.scsi_target = type { ptr, %struct.list_head, %struct.list_head, %struct.device, %struct.kref, i32, i32, i8, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_scsi_autopm_get_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_autopm_get_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_autopm_get_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_autopm_get_device to i32), ptr @__kstrtab_scsi_autopm_get_device, ptr @__kstrtabns_scsi_autopm_get_device }, section "___ksymtab_gpl+scsi_autopm_get_device", align 4
@__kstrtab_scsi_autopm_put_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_scsi_autopm_put_device = external dso_local constant [0 x i8], align 1
@__ksymtab_scsi_autopm_put_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @scsi_autopm_put_device to i32), ptr @__kstrtab_scsi_autopm_put_device, ptr @__kstrtabns_scsi_autopm_put_device }, section "___ksymtab_gpl+scsi_autopm_put_device", align 4
@scsi_bus_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @scsi_bus_prepare, ptr null, ptr @scsi_bus_suspend, ptr @scsi_bus_resume, ptr @scsi_bus_freeze, ptr @scsi_bus_thaw, ptr @scsi_bus_poweroff, ptr @scsi_bus_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @scsi_runtime_suspend, ptr @scsi_runtime_resume, ptr @scsi_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@scsi_dev_type_suspend.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scsi_mod\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scsi_dev_type_suspend\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/scsi/scsi_pm.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi suspend: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@scsi_bus_resume_common.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"scsi_bus_resume_common\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"scsi resume: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@scsi_runtime_suspend.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scsi_runtime_suspend\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"scsi_runtime_suspend\0A\00", [42 x i8] zeroinitializer }, align 32
@scsi_runtime_resume.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"scsi_runtime_resume\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"scsi_runtime_resume\0A\00", [43 x i8] zeroinitializer }, align 32
@scsi_runtime_idle.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"scsi_runtime_idle\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"scsi_runtime_idle\0A\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"scsi_bus_pm_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 262, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 64, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 89, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 165, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 192, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private constant [26 x i8] c"../drivers/scsi/scsi_pm.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 203, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__ksymtab_scsi_autopm_get_device, ptr @__ksymtab_scsi_autopm_put_device, ptr @scsi_bus_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scsi_bus_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_autopm_get_device(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %sdev_gendev, i32 noundef 4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call.i7 = tail call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev, i32 noundef 4) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_autopm_put_device(ptr noundef %sdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %sdev_gendev = getelementptr inbounds %struct.scsi_device, ptr %sdev, i32 0, i32 55
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %sdev_gendev, i32 noundef 4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_autopm_get_target(ptr noundef %starget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_autopm_put_target(ptr noundef %starget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.scsi_target, ptr %starget, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @scsi_autopm_get_host(ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %shost_gendev, i32 noundef 4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call.i7 = tail call i32 @__pm_runtime_idle(ptr noundef %shost_gendev, i32 noundef 4) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call.i, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @scsi_autopm_put_host(ptr noundef %shost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %shost_gendev, i32 noundef 4) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bus_prepare(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @scsi_is_host_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call1 = tail call i32 @scsi_complete_async_scans() #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bus_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.scsi_bus_suspend_common.exit_crit_edge, label %if.end.i

entry.scsi_bus_suspend_common.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_suspend_common.exit

if.end.i:                                         ; preds = %entry
  %driver.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %cond.end.i.i.thread, label %cond.end.i.i

cond.end.i.i:                                     ; preds = %if.end.i
  %pm2.i.i = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 -408
  %call.i.i = tail call i32 @scsi_device_quiesce(ptr noundef %add.ptr.i.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %cond.end.i.i.do.body.i.i_crit_edge

cond.end.i.i.do.body.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

cond.end.i.i.thread:                              ; preds = %if.end.i
  %add.ptr.i.i4 = getelementptr i8, ptr %dev, i32 -408
  %call.i.i5 = tail call i32 @scsi_device_quiesce(ptr noundef %add.ptr.i.i4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %cmp.i.i6 = icmp eq i32 %call.i.i5, 0
  br i1 %cmp.i.i6, label %cond.end.i.i.thread.do_scsi_suspend.exit.thread_crit_edge, label %cond.end.i.i.thread.do.body.i.i_crit_edge

cond.end.i.i.thread.do.body.i.i_crit_edge:        ; preds = %cond.end.i.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

cond.end.i.i.thread.do_scsi_suspend.exit.thread_crit_edge: ; preds = %cond.end.i.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_suspend.exit.thread

if.then.i.i:                                      ; preds = %cond.end.i.i
  %tobool.not.i1 = icmp eq ptr %3, null
  br i1 %tobool.not.i1, label %if.then.i.i.do_scsi_suspend.exit.thread_crit_edge, label %land.lhs.true.i

if.then.i.i.do_scsi_suspend.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_suspend.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i.i
  %suspend.i = getelementptr inbounds %struct.dev_pm_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %suspend.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %suspend.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do_scsi_suspend.exit.thread_crit_edge, label %do_scsi_suspend.exit

land.lhs.true.i.do_scsi_suspend.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_suspend.exit.thread

do_scsi_suspend.exit.thread:                      ; preds = %land.lhs.true.i.do_scsi_suspend.exit.thread_crit_edge, %if.then.i.i.do_scsi_suspend.exit.thread_crit_edge, %cond.end.i.i.thread.do_scsi_suspend.exit.thread_crit_edge
  br label %do.body.i.i

do_scsi_suspend.exit:                             ; preds = %land.lhs.true.i
  %call.i2 = tail call i32 %5(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool4.not.i.i = icmp eq i32 %call.i2, 0
  br i1 %tobool4.not.i.i, label %do_scsi_suspend.exit.do.body.i.i_crit_edge, label %if.then5.i.i

do_scsi_suspend.exit.do.body.i.i_crit_edge:       ; preds = %do_scsi_suspend.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

if.then5.i.i:                                     ; preds = %do_scsi_suspend.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @scsi_device_resume(ptr noundef %add.ptr.i.i) #2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then5.i.i, %do_scsi_suspend.exit.do.body.i.i_crit_edge, %do_scsi_suspend.exit.thread, %cond.end.i.i.thread.do.body.i.i_crit_edge, %cond.end.i.i.do.body.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i2, %if.then5.i.i ], [ 0, %do_scsi_suspend.exit.do.body.i.i_crit_edge ], [ %call.i.i, %cond.end.i.i.do.body.i.i_crit_edge ], [ %call.i.i5, %cond.end.i.i.thread.do.body.i.i_crit_edge ], [ 0, %do_scsi_suspend.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_dev_type_suspend.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_bus_suspend, %if.then15.i.i)) #2
          to label %scsi_bus_suspend_common.exit [label %if.then15.i.i], !srcloc !37

if.then15.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_dev_type_suspend.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %err.0.i.i) #2
  br label %scsi_bus_suspend_common.exit

scsi_bus_suspend_common.exit:                     ; preds = %if.then15.i.i, %do.body.i.i, %entry.scsi_bus_suspend_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.scsi_bus_suspend_common.exit_crit_edge ], [ %err.0.i.i, %do.body.i.i ], [ %err.0.i.i, %if.then15.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bus_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.end.i.thread, label %cond.end.i

cond.end.i:                                       ; preds = %entry
  %pm2.i = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2.i, align 4
  %call.i = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %cond.end.i.scsi_bus_resume_common.exit_crit_edge, label %if.end.i

cond.end.i.scsi_bus_resume_common.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_resume_common.exit

cond.end.i.thread:                                ; preds = %entry
  %call.i7 = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool3.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool3.not.i8, label %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge, label %cond.end.i.thread.do_scsi_resume.exit_crit_edge

cond.end.i.thread.do_scsi_resume.exit_crit_edge:  ; preds = %cond.end.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_resume.exit

cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge: ; preds = %cond.end.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_resume_common.exit

if.end.i:                                         ; preds = %cond.end.i
  %tobool.not.i1 = icmp eq ptr %3, null
  br i1 %tobool.not.i1, label %if.end.i.do_scsi_resume.exit_crit_edge, label %land.lhs.true.i

if.end.i.do_scsi_resume.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_resume.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %resume.i = getelementptr inbounds %struct.dev_pm_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %resume.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resume.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do_scsi_resume.exit_crit_edge, label %cond.true.i3

land.lhs.true.i.do_scsi_resume.exit_crit_edge:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_resume.exit

cond.true.i3:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i2 = tail call i32 %5(ptr noundef %dev) #2
  br label %do_scsi_resume.exit

do_scsi_resume.exit:                              ; preds = %cond.true.i3, %land.lhs.true.i.do_scsi_resume.exit_crit_edge, %if.end.i.do_scsi_resume.exit_crit_edge, %cond.end.i.thread.do_scsi_resume.exit_crit_edge
  %cond.i4 = phi i32 [ %call.i2, %cond.true.i3 ], [ 0, %land.lhs.true.i.do_scsi_resume.exit_crit_edge ], [ 0, %if.end.i.do_scsi_resume.exit_crit_edge ], [ 0, %cond.end.i.thread.do_scsi_resume.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -408
  tail call void @scsi_device_resume(ptr noundef %add.ptr.i) #2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_bus_resume_common.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_bus_resume, %if.then10.i)) #2
          to label %scsi_bus_resume_common.exit [label %if.then10.i], !srcloc !37

if.then10.i:                                      ; preds = %do_scsi_resume.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_bus_resume_common.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %cond.i4) #2
  br label %scsi_bus_resume_common.exit

scsi_bus_resume_common.exit:                      ; preds = %if.then10.i, %do_scsi_resume.exit, %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge, %cond.end.i.scsi_bus_resume_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cond.end.i.scsi_bus_resume_common.exit_crit_edge ], [ %cond.i4, %if.then10.i ], [ %cond.i4, %do_scsi_resume.exit ], [ 0, %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bus_freeze(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.scsi_bus_suspend_common.exit_crit_edge, label %if.end.i

entry.scsi_bus_suspend_common.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_suspend_common.exit

if.end.i:                                         ; preds = %entry
  %driver.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %cond.end.i.i.thread, label %cond.end.i.i

cond.end.i.i:                                     ; preds = %if.end.i
  %pm2.i.i = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 -408
  %call.i.i = tail call i32 @scsi_device_quiesce(ptr noundef %add.ptr.i.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %cond.end.i.i.do.body.i.i_crit_edge

cond.end.i.i.do.body.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

cond.end.i.i.thread:                              ; preds = %if.end.i
  %add.ptr.i.i4 = getelementptr i8, ptr %dev, i32 -408
  %call.i.i5 = tail call i32 @scsi_device_quiesce(ptr noundef %add.ptr.i.i4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %cmp.i.i6 = icmp eq i32 %call.i.i5, 0
  br i1 %cmp.i.i6, label %cond.end.i.i.thread.do_scsi_freeze.exit.thread_crit_edge, label %cond.end.i.i.thread.do.body.i.i_crit_edge

cond.end.i.i.thread.do.body.i.i_crit_edge:        ; preds = %cond.end.i.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

cond.end.i.i.thread.do_scsi_freeze.exit.thread_crit_edge: ; preds = %cond.end.i.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_freeze.exit.thread

if.then.i.i:                                      ; preds = %cond.end.i.i
  %tobool.not.i1 = icmp eq ptr %3, null
  br i1 %tobool.not.i1, label %if.then.i.i.do_scsi_freeze.exit.thread_crit_edge, label %land.lhs.true.i

if.then.i.i.do_scsi_freeze.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_freeze.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i.i
  %freeze.i = getelementptr inbounds %struct.dev_pm_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %freeze.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %freeze.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do_scsi_freeze.exit.thread_crit_edge, label %do_scsi_freeze.exit

land.lhs.true.i.do_scsi_freeze.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_freeze.exit.thread

do_scsi_freeze.exit.thread:                       ; preds = %land.lhs.true.i.do_scsi_freeze.exit.thread_crit_edge, %if.then.i.i.do_scsi_freeze.exit.thread_crit_edge, %cond.end.i.i.thread.do_scsi_freeze.exit.thread_crit_edge
  br label %do.body.i.i

do_scsi_freeze.exit:                              ; preds = %land.lhs.true.i
  %call.i2 = tail call i32 %5(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool4.not.i.i = icmp eq i32 %call.i2, 0
  br i1 %tobool4.not.i.i, label %do_scsi_freeze.exit.do.body.i.i_crit_edge, label %if.then5.i.i

do_scsi_freeze.exit.do.body.i.i_crit_edge:        ; preds = %do_scsi_freeze.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

if.then5.i.i:                                     ; preds = %do_scsi_freeze.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @scsi_device_resume(ptr noundef %add.ptr.i.i) #2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then5.i.i, %do_scsi_freeze.exit.do.body.i.i_crit_edge, %do_scsi_freeze.exit.thread, %cond.end.i.i.thread.do.body.i.i_crit_edge, %cond.end.i.i.do.body.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i2, %if.then5.i.i ], [ 0, %do_scsi_freeze.exit.do.body.i.i_crit_edge ], [ %call.i.i, %cond.end.i.i.do.body.i.i_crit_edge ], [ %call.i.i5, %cond.end.i.i.thread.do.body.i.i_crit_edge ], [ 0, %do_scsi_freeze.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_dev_type_suspend.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_bus_freeze, %if.then15.i.i)) #2
          to label %scsi_bus_suspend_common.exit [label %if.then15.i.i], !srcloc !37

if.then15.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_dev_type_suspend.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %err.0.i.i) #2
  br label %scsi_bus_suspend_common.exit

scsi_bus_suspend_common.exit:                     ; preds = %if.then15.i.i, %do.body.i.i, %entry.scsi_bus_suspend_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.scsi_bus_suspend_common.exit_crit_edge ], [ %err.0.i.i, %do.body.i.i ], [ %err.0.i.i, %if.then15.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bus_thaw(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.end.i.thread, label %cond.end.i

cond.end.i:                                       ; preds = %entry
  %pm2.i = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2.i, align 4
  %call.i = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %cond.end.i.scsi_bus_resume_common.exit_crit_edge, label %if.end.i

cond.end.i.scsi_bus_resume_common.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_resume_common.exit

cond.end.i.thread:                                ; preds = %entry
  %call.i7 = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool3.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool3.not.i8, label %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge, label %cond.end.i.thread.do_scsi_thaw.exit_crit_edge

cond.end.i.thread.do_scsi_thaw.exit_crit_edge:    ; preds = %cond.end.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_thaw.exit

cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge: ; preds = %cond.end.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_resume_common.exit

if.end.i:                                         ; preds = %cond.end.i
  %tobool.not.i1 = icmp eq ptr %3, null
  br i1 %tobool.not.i1, label %if.end.i.do_scsi_thaw.exit_crit_edge, label %land.lhs.true.i

if.end.i.do_scsi_thaw.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_thaw.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %thaw.i = getelementptr inbounds %struct.dev_pm_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %thaw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %thaw.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do_scsi_thaw.exit_crit_edge, label %cond.true.i3

land.lhs.true.i.do_scsi_thaw.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_thaw.exit

cond.true.i3:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i2 = tail call i32 %5(ptr noundef %dev) #2
  br label %do_scsi_thaw.exit

do_scsi_thaw.exit:                                ; preds = %cond.true.i3, %land.lhs.true.i.do_scsi_thaw.exit_crit_edge, %if.end.i.do_scsi_thaw.exit_crit_edge, %cond.end.i.thread.do_scsi_thaw.exit_crit_edge
  %cond.i4 = phi i32 [ %call.i2, %cond.true.i3 ], [ 0, %land.lhs.true.i.do_scsi_thaw.exit_crit_edge ], [ 0, %if.end.i.do_scsi_thaw.exit_crit_edge ], [ 0, %cond.end.i.thread.do_scsi_thaw.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -408
  tail call void @scsi_device_resume(ptr noundef %add.ptr.i) #2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_bus_resume_common.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_bus_thaw, %if.then10.i)) #2
          to label %scsi_bus_resume_common.exit [label %if.then10.i], !srcloc !37

if.then10.i:                                      ; preds = %do_scsi_thaw.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_bus_resume_common.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %cond.i4) #2
  br label %scsi_bus_resume_common.exit

scsi_bus_resume_common.exit:                      ; preds = %if.then10.i, %do_scsi_thaw.exit, %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge, %cond.end.i.scsi_bus_resume_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cond.end.i.scsi_bus_resume_common.exit_crit_edge ], [ %cond.i4, %if.then10.i ], [ %cond.i4, %do_scsi_thaw.exit ], [ 0, %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bus_poweroff(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.scsi_bus_suspend_common.exit_crit_edge, label %if.end.i

entry.scsi_bus_suspend_common.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_suspend_common.exit

if.end.i:                                         ; preds = %entry
  %driver.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %cond.end.i.i.thread, label %cond.end.i.i

cond.end.i.i:                                     ; preds = %if.end.i
  %pm2.i.i = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %dev, i32 -408
  %call.i.i = tail call i32 @scsi_device_quiesce(ptr noundef %add.ptr.i.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %cond.end.i.i.do.body.i.i_crit_edge

cond.end.i.i.do.body.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

cond.end.i.i.thread:                              ; preds = %if.end.i
  %add.ptr.i.i4 = getelementptr i8, ptr %dev, i32 -408
  %call.i.i5 = tail call i32 @scsi_device_quiesce(ptr noundef %add.ptr.i.i4) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i5)
  %cmp.i.i6 = icmp eq i32 %call.i.i5, 0
  br i1 %cmp.i.i6, label %cond.end.i.i.thread.do_scsi_poweroff.exit.thread_crit_edge, label %cond.end.i.i.thread.do.body.i.i_crit_edge

cond.end.i.i.thread.do.body.i.i_crit_edge:        ; preds = %cond.end.i.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

cond.end.i.i.thread.do_scsi_poweroff.exit.thread_crit_edge: ; preds = %cond.end.i.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_poweroff.exit.thread

if.then.i.i:                                      ; preds = %cond.end.i.i
  %tobool.not.i1 = icmp eq ptr %3, null
  br i1 %tobool.not.i1, label %if.then.i.i.do_scsi_poweroff.exit.thread_crit_edge, label %land.lhs.true.i

if.then.i.i.do_scsi_poweroff.exit.thread_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_poweroff.exit.thread

land.lhs.true.i:                                  ; preds = %if.then.i.i
  %poweroff.i = getelementptr inbounds %struct.dev_pm_ops, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %poweroff.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %poweroff.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do_scsi_poweroff.exit.thread_crit_edge, label %do_scsi_poweroff.exit

land.lhs.true.i.do_scsi_poweroff.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_poweroff.exit.thread

do_scsi_poweroff.exit.thread:                     ; preds = %land.lhs.true.i.do_scsi_poweroff.exit.thread_crit_edge, %if.then.i.i.do_scsi_poweroff.exit.thread_crit_edge, %cond.end.i.i.thread.do_scsi_poweroff.exit.thread_crit_edge
  br label %do.body.i.i

do_scsi_poweroff.exit:                            ; preds = %land.lhs.true.i
  %call.i2 = tail call i32 %5(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool4.not.i.i = icmp eq i32 %call.i2, 0
  br i1 %tobool4.not.i.i, label %do_scsi_poweroff.exit.do.body.i.i_crit_edge, label %if.then5.i.i

do_scsi_poweroff.exit.do.body.i.i_crit_edge:      ; preds = %do_scsi_poweroff.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body.i.i

if.then5.i.i:                                     ; preds = %do_scsi_poweroff.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @scsi_device_resume(ptr noundef %add.ptr.i.i) #2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then5.i.i, %do_scsi_poweroff.exit.do.body.i.i_crit_edge, %do_scsi_poweroff.exit.thread, %cond.end.i.i.thread.do.body.i.i_crit_edge, %cond.end.i.i.do.body.i.i_crit_edge
  %err.0.i.i = phi i32 [ %call.i2, %if.then5.i.i ], [ 0, %do_scsi_poweroff.exit.do.body.i.i_crit_edge ], [ %call.i.i, %cond.end.i.i.do.body.i.i_crit_edge ], [ %call.i.i5, %cond.end.i.i.thread.do.body.i.i_crit_edge ], [ 0, %do_scsi_poweroff.exit.thread ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_dev_type_suspend.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_bus_poweroff, %if.then15.i.i)) #2
          to label %scsi_bus_suspend_common.exit [label %if.then15.i.i], !srcloc !37

if.then15.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_dev_type_suspend.__UNIQUE_ID_ddebug280, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %err.0.i.i) #2
  br label %scsi_bus_suspend_common.exit

scsi_bus_suspend_common.exit:                     ; preds = %if.then15.i.i, %do.body.i.i, %entry.scsi_bus_suspend_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.scsi_bus_suspend_common.exit_crit_edge ], [ %err.0.i.i, %do.body.i.i ], [ %err.0.i.i, %if.then15.i.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_bus_restore(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.end.i.thread, label %cond.end.i

cond.end.i:                                       ; preds = %entry
  %pm2.i = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2.i, align 4
  %call.i = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %cond.end.i.scsi_bus_resume_common.exit_crit_edge, label %if.end.i

cond.end.i.scsi_bus_resume_common.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_resume_common.exit

cond.end.i.thread:                                ; preds = %entry
  %call.i7 = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool3.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool3.not.i8, label %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge, label %cond.end.i.thread.do_scsi_restore.exit_crit_edge

cond.end.i.thread.do_scsi_restore.exit_crit_edge: ; preds = %cond.end.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_restore.exit

cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge: ; preds = %cond.end.i.thread
  call void @__sanitizer_cov_trace_pc() #4
  br label %scsi_bus_resume_common.exit

if.end.i:                                         ; preds = %cond.end.i
  %tobool.not.i1 = icmp eq ptr %3, null
  br i1 %tobool.not.i1, label %if.end.i.do_scsi_restore.exit_crit_edge, label %land.lhs.true.i

if.end.i.do_scsi_restore.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_restore.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %restore.i = getelementptr inbounds %struct.dev_pm_ops, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %restore.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %restore.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do_scsi_restore.exit_crit_edge, label %cond.true.i3

land.lhs.true.i.do_scsi_restore.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do_scsi_restore.exit

cond.true.i3:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i2 = tail call i32 %5(ptr noundef %dev) #2
  br label %do_scsi_restore.exit

do_scsi_restore.exit:                             ; preds = %cond.true.i3, %land.lhs.true.i.do_scsi_restore.exit_crit_edge, %if.end.i.do_scsi_restore.exit_crit_edge, %cond.end.i.thread.do_scsi_restore.exit_crit_edge
  %cond.i4 = phi i32 [ %call.i2, %cond.true.i3 ], [ 0, %land.lhs.true.i.do_scsi_restore.exit_crit_edge ], [ 0, %if.end.i.do_scsi_restore.exit_crit_edge ], [ 0, %cond.end.i.thread.do_scsi_restore.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -408
  tail call void @scsi_device_resume(ptr noundef %add.ptr.i) #2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_bus_resume_common.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_bus_restore, %if.then10.i)) #2
          to label %scsi_bus_resume_common.exit [label %if.then10.i], !srcloc !37

if.then10.i:                                      ; preds = %do_scsi_restore.exit
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_bus_resume_common.__UNIQUE_ID_ddebug281, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %cond.i4) #2
  br label %scsi_bus_resume_common.exit

scsi_bus_resume_common.exit:                      ; preds = %if.then10.i, %do_scsi_restore.exit, %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge, %cond.end.i.scsi_bus_resume_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %cond.end.i.scsi_bus_resume_common.exit_crit_edge ], [ %cond.i4, %if.then10.i ], [ %cond.i4, %do_scsi_restore.exit ], [ 0, %cond.end.i.thread.scsi_bus_resume_common.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_runtime_suspend.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_runtime_suspend, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_runtime_suspend.__UNIQUE_ID_ddebug282, ptr noundef %dev, ptr noundef nonnull @.str.7) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.then5:                                         ; preds = %do.end
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then5.cond.end.i_crit_edge, label %cond.true.i

if.then5.cond.end.i_crit_edge:                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %pm2.i = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %pm2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pm2.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then5.cond.end.i_crit_edge
  %cond.i = phi ptr [ %3, %cond.true.i ], [ null, %if.then5.cond.end.i_crit_edge ]
  %request_queue.i = getelementptr i8, ptr %dev, i32 -404
  %4 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %request_queue.i, align 4
  %call.i = tail call i32 @blk_pre_runtime_suspend(ptr noundef %5) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %cond.end.i.if.end7_crit_edge

cond.end.i.if.end7_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.end.i:                                         ; preds = %cond.end.i
  %tobool4.not.i = icmp eq ptr %cond.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %runtime_suspend.i = getelementptr inbounds %struct.dev_pm_ops, ptr %cond.i, i32 0, i32 20
  %6 = ptrtoint ptr %runtime_suspend.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime_suspend.i, align 4
  %tobool5.not.i = icmp eq ptr %7, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then6.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end9.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call8.i = tail call i32 %7(ptr noundef %dev) #2
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %err.0.i = phi i32 [ %call8.i, %if.then6.i ], [ 0, %land.lhs.true.i.if.end9.i_crit_edge ], [ 0, %if.end.i.if.end9.i_crit_edge ]
  %8 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request_queue.i, align 4
  tail call void @blk_post_runtime_suspend(ptr noundef %9, i32 noundef %err.0.i) #2
  br label %if.end7

if.end7:                                          ; preds = %if.end9.i, %cond.end.i.if.end7_crit_edge, %do.end.if.end7_crit_edge
  %err.0 = phi i32 [ 0, %do.end.if.end7_crit_edge ], [ %err.0.i, %if.end9.i ], [ %call.i, %cond.end.i.if.end7_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_runtime_resume.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_runtime_resume, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_runtime_resume.__UNIQUE_ID_ddebug283, ptr noundef %dev, ptr noundef nonnull @.str.9) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end7

if.then5:                                         ; preds = %do.end
  %driver.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.end.thread.i, label %cond.end.i

cond.end.thread.i:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #4
  %request_queue15.i = getelementptr i8, ptr %dev, i32 -404
  %2 = ptrtoint ptr %request_queue15.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %request_queue15.i, align 4
  tail call void @blk_pre_runtime_resume(ptr noundef %3) #2
  br label %sdev_runtime_resume.exit

cond.end.i:                                       ; preds = %if.then5
  %pm2.i = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %pm2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pm2.i, align 4
  %request_queue.i = getelementptr i8, ptr %dev, i32 -404
  %6 = ptrtoint ptr %request_queue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %request_queue.i, align 4
  tail call void @blk_pre_runtime_resume(ptr noundef %7) #2
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %cond.end.i.sdev_runtime_resume.exit_crit_edge, label %land.lhs.true.i

cond.end.i.sdev_runtime_resume.exit_crit_edge:    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sdev_runtime_resume.exit

land.lhs.true.i:                                  ; preds = %cond.end.i
  %runtime_resume.i = getelementptr inbounds %struct.dev_pm_ops, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %runtime_resume.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime_resume.i, align 4
  %tobool4.not.i = icmp eq ptr %9, null
  br i1 %tobool4.not.i, label %land.lhs.true.i.sdev_runtime_resume.exit_crit_edge, label %if.then.i

land.lhs.true.i.sdev_runtime_resume.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %sdev_runtime_resume.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call i32 %9(ptr noundef %dev) #2
  br label %sdev_runtime_resume.exit

sdev_runtime_resume.exit:                         ; preds = %if.then.i, %land.lhs.true.i.sdev_runtime_resume.exit_crit_edge, %cond.end.i.sdev_runtime_resume.exit_crit_edge, %cond.end.thread.i
  %request_queue17.i = phi ptr [ %request_queue.i, %if.then.i ], [ %request_queue.i, %land.lhs.true.i.sdev_runtime_resume.exit_crit_edge ], [ %request_queue.i, %cond.end.i.sdev_runtime_resume.exit_crit_edge ], [ %request_queue15.i, %cond.end.thread.i ]
  %err.0.i = phi i32 [ %call.i, %if.then.i ], [ 0, %land.lhs.true.i.sdev_runtime_resume.exit_crit_edge ], [ 0, %cond.end.i.sdev_runtime_resume.exit_crit_edge ], [ 0, %cond.end.thread.i ]
  %10 = ptrtoint ptr %request_queue17.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %request_queue17.i, align 4
  tail call void @blk_post_runtime_resume(ptr noundef %11) #2
  br label %if.end7

if.end7:                                          ; preds = %sdev_runtime_resume.exit, %do.end.if.end7_crit_edge
  %err.0 = phi i32 [ %err.0.i, %sdev_runtime_resume.exit ], [ 0, %do.end.if.end7_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scsi_runtime_idle(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @scsi_runtime_idle.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@scsi_runtime_idle, %if.then)) #2
          to label %do.end [label %if.then], !srcloc !37

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @scsi_runtime_idle.__UNIQUE_ID_ddebug284, ptr noundef %dev, ptr noundef nonnull @.str.11) #2
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @scsi_is_sdev_device(ptr noundef %dev) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.return_crit_edge, label %if.then5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #2
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %0 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %0)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i11 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 8) #2
  br label %return

return:                                           ; preds = %if.then5, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -16, %if.then5 ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_complete_async_scans() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_sdev_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_device_quiesce(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scsi_device_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_pre_runtime_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_post_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_pre_runtime_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_post_runtime_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__ksymtab_scsi_autopm_get_device, !1, !"__ksymtab_scsi_autopm_get_device", i1 false, i1 false}
!1 = !{!"../drivers/scsi/scsi_pm.c", i32 227, i32 1}
!2 = !{ptr @__ksymtab_scsi_autopm_put_device, !3, !"__ksymtab_scsi_autopm_put_device", i1 false, i1 false}
!3 = !{!"../drivers/scsi/scsi_pm.c", i32 233, i32 1}
!4 = !{ptr @scsi_bus_pm_ops, !5, !"scsi_bus_pm_ops", i1 false, i1 false}
!5 = !{!"../drivers/scsi/scsi_pm.c", i32 262, i32 25}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/scsi_pm.c", i32 64, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @scsi_dev_type_suspend.__UNIQUE_ID_ddebug280, !7, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/scsi/scsi_pm.c", i32 89, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @scsi_bus_resume_common.__UNIQUE_ID_ddebug281, !13, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/scsi_pm.c", i32 165, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @scsi_runtime_suspend.__UNIQUE_ID_ddebug282, !17, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/scsi_pm.c", i32 192, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @scsi_runtime_resume.__UNIQUE_ID_ddebug283, !21, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/scsi_pm.c", i32 203, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @scsi_runtime_idle.__UNIQUE_ID_ddebug284, !25, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2148301745, i64 2148301750, i64 2148301763, i64 2148301807, i64 2148301841, i64 2148301862}
