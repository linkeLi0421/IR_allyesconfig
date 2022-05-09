; ModuleID = '/llk/IR_all_yes/drivers/base/driver.c_pt.bc'
source_filename = "../drivers/base/driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+driver_for_each_device\22, \22a\22\09"
module asm "\09.weak\09__crc_driver_for_each_device\09\09\09\09"
module asm "\09.long\09__crc_driver_for_each_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_for_each_device\22\09\09\09\09\09"
module asm "__kstrtabns_driver_for_each_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+driver_find_device\22, \22a\22\09"
module asm "\09.weak\09__crc_driver_find_device\09\09\09\09"
module asm "\09.long\09__crc_driver_find_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_find_device\22\09\09\09\09\09"
module asm "__kstrtabns_driver_find_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+driver_create_file\22, \22a\22\09"
module asm "\09.weak\09__crc_driver_create_file\09\09\09\09"
module asm "\09.long\09__crc_driver_create_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_create_file\22\09\09\09\09\09"
module asm "__kstrtabns_driver_create_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+driver_remove_file\22, \22a\22\09"
module asm "\09.weak\09__crc_driver_remove_file\09\09\09\09"
module asm "\09.long\09__crc_driver_remove_file\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_remove_file:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_remove_file\22\09\09\09\09\09"
module asm "__kstrtabns_driver_remove_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc_driver_register\09\09\09\09"
module asm "\09.long\09__crc_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+driver_find\22, \22a\22\09"
module asm "\09.weak\09__crc_driver_find\09\09\09\09"
module asm "\09.long\09__crc_driver_find\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_driver_find:\09\09\09\09\09"
module asm "\09.asciz \09\22driver_find\22\09\09\09\09\09"
module asm "__kstrtabns_driver_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.klist_iter = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_private = type { %struct.klist, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.klist_node, %struct.list_head, ptr, ptr, ptr, i8 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.subsys_private = type { %struct.kset, ptr, %struct.list_head, %struct.mutex, ptr, %struct.klist, %struct.klist, %struct.blocking_notifier_head, i8, ptr, %struct.kset, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }

@__kstrtab_driver_for_each_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_for_each_device = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_for_each_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_for_each_device to i32), ptr @__kstrtab_driver_for_each_device, ptr @__kstrtabns_driver_for_each_device }, section "___ksymtab_gpl+driver_for_each_device", align 4
@__kstrtab_driver_find_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_find_device = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_find_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_find_device to i32), ptr @__kstrtab_driver_find_device, ptr @__kstrtabns_driver_find_device }, section "___ksymtab_gpl+driver_find_device", align 4
@__kstrtab_driver_create_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_create_file = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_create_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_create_file to i32), ptr @__kstrtab_driver_create_file, ptr @__kstrtabns_driver_create_file }, section "___ksymtab_gpl+driver_create_file", align 4
@__kstrtab_driver_remove_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_remove_file = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_remove_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_remove_file to i32), ptr @__kstrtab_driver_remove_file, ptr @__kstrtabns_driver_remove_file }, section "___ksymtab_gpl+driver_remove_file", align 4
@driver_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\013Driver '%s' was unable to register with bus_type '%s' because the bus was not initialized.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"driver_register\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/base/driver.c\00", [42 x i8] zeroinitializer }, align 32
@driver_register._entry_ptr = internal global ptr @driver_register._entry, section ".printk_index", align 4
@driver_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014Driver '%s' needs updating - please use bus_type methods\0A\00", [36 x i8] zeroinitializer }, align 32
@driver_register._entry_ptr.5 = internal global ptr @driver_register._entry.3, section ".printk_index", align 4
@driver_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Error: Driver '%s' is already registered, aborting...\0A\00", [39 x i8] zeroinitializer }, align 32
@driver_register._entry_ptr.8 = internal global ptr @driver_register._entry.6, section ".printk_index", align 4
@__kstrtab_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_register to i32), ptr @__kstrtab_driver_register, ptr @__kstrtabns_driver_register }, section "___ksymtab_gpl+driver_register", align 4
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unexpected driver unregister!\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_unregister to i32), ptr @__kstrtab_driver_unregister, ptr @__kstrtabns_driver_unregister }, section "___ksymtab_gpl+driver_unregister", align 4
@__kstrtab_driver_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_driver_find = external dso_local constant [0 x i8], align 1
@__ksymtab_driver_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @driver_find to i32), ptr @__kstrtab_driver_find, ptr @__kstrtabns_driver_find }, section "___ksymtab_gpl+driver_find", align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 153, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 161, i32 3 }
@___asan_gen_.28 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 166, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [25 x i8] c"../drivers/base/driver.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 194, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab_driver_create_file, ptr @__ksymtab_driver_find, ptr @__ksymtab_driver_find_device, ptr @__ksymtab_driver_for_each_device, ptr @__ksymtab_driver_register, ptr @__ksymtab_driver_remove_file, ptr @__ksymtab_driver_unregister, ptr @driver_register._entry, ptr @driver_register._entry.3, ptr @driver_register._entry.6, ptr @driver_register._entry_ptr, ptr @driver_register._entry_ptr.5, ptr @driver_register._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @driver_for_each_device(ptr noundef readonly %drv, ptr noundef readonly %start, ptr noundef %data, ptr nocapture noundef readonly %fn) #0 align 64 {
entry:
  %i = alloca %struct.klist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #4
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %i, align 4, !annotation !39
  %1 = getelementptr inbounds %struct.klist_iter, ptr %i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !39
  %tobool.not = icmp eq ptr %drv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 4
  %klist_devices = getelementptr inbounds %struct.driver_private, ptr %4, i32 0, i32 1
  %tobool1.not = icmp eq ptr %start, null
  br i1 %tobool1.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %p2 = getelementptr inbounds %struct.device, ptr %start, i32 0, i32 2
  %5 = ptrtoint ptr %p2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p2, align 4
  %knode_driver = getelementptr inbounds %struct.device_private, ptr %6, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %knode_driver, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  call void @klist_iter_init_node(ptr noundef %klist_devices, ptr noundef nonnull %i, ptr noundef %cond) #4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %cond.end
  %call.i = call ptr @klist_next(ptr noundef nonnull %i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %land.rhs.while.end_crit_edge, label %next_device.exit

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

next_device.exit:                                 ; preds = %land.rhs
  %device.i = getelementptr i8, ptr %call.i, i32 64
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %next_device.exit.while.end_crit_edge, label %while.body

next_device.exit.while.end_crit_edge:             ; preds = %next_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %next_device.exit
  %call5 = call i32 %fn(ptr noundef nonnull %8, ptr noundef %data) #4
  %tobool3.not = icmp eq i32 %call5, 0
  br i1 %tobool3.not, label %while.body.land.rhs_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

while.end:                                        ; preds = %while.body.while.end_crit_edge, %next_device.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %error.0.lcssa = phi i32 [ 0, %land.rhs.while.end_crit_edge ], [ %call5, %while.body.while.end_crit_edge ], [ 0, %next_device.exit.while.end_crit_edge ]
  call void @klist_iter_exit(ptr noundef nonnull %i) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0.lcssa, %while.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @driver_find_device(ptr noundef readonly %drv, ptr noundef readonly %start, ptr noundef %data, ptr nocapture noundef readonly %match) #0 align 64 {
entry:
  %i = alloca %struct.klist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %i) #4
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %i, align 4, !annotation !39
  %1 = getelementptr inbounds %struct.klist_iter, ptr %i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !39
  %tobool.not = icmp eq ptr %drv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %klist_devices = getelementptr inbounds %struct.driver_private, ptr %4, i32 0, i32 1
  %tobool3.not = icmp eq ptr %start, null
  br i1 %tobool3.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %p4 = getelementptr inbounds %struct.device, ptr %start, i32 0, i32 2
  %5 = ptrtoint ptr %p4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p4, align 4
  %knode_driver = getelementptr inbounds %struct.device_private, ptr %6, i32 0, i32 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi ptr [ %knode_driver, %cond.true ], [ null, %if.end.cond.end_crit_edge ]
  call void @klist_iter_init_node(ptr noundef %klist_devices, ptr noundef nonnull %i, ptr noundef %cond) #4
  %call.i21 = call ptr @klist_next(ptr noundef nonnull %i) #4
  %tobool.not.i22 = icmp eq ptr %call.i21, null
  br i1 %tobool.not.i22, label %cond.end.while.end_crit_edge, label %cond.end.next_device.exit_crit_edge

cond.end.next_device.exit_crit_edge:              ; preds = %cond.end
  br label %next_device.exit

cond.end.while.end_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

next_device.exit:                                 ; preds = %if.end11.next_device.exit_crit_edge, %cond.end.next_device.exit_crit_edge
  %call.i23 = phi ptr [ %call.i, %if.end11.next_device.exit_crit_edge ], [ %call.i21, %cond.end.next_device.exit_crit_edge ]
  %device.i = getelementptr i8, ptr %call.i23, i32 64
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device.i, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %next_device.exit.while.end_crit_edge, label %while.body

next_device.exit.while.end_crit_edge:             ; preds = %next_device.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %next_device.exit
  %call6 = call i32 %match(ptr noundef nonnull %8, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %while.body.if.end11_crit_edge, label %land.lhs.true

while.body.if.end11_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %while.body
  %call8 = call ptr @get_device(ptr noundef nonnull %8) #4
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %while.body.if.end11_crit_edge
  %call.i = call ptr @klist_next(ptr noundef nonnull %i) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end11.while.end_crit_edge, label %if.end11.next_device.exit_crit_edge

if.end11.next_device.exit_crit_edge:              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %next_device.exit

if.end11.while.end_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %if.end11.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %next_device.exit.while.end_crit_edge, %cond.end.while.end_crit_edge
  %dev.0.i20 = phi ptr [ null, %cond.end.while.end_crit_edge ], [ null, %if.end11.while.end_crit_edge ], [ %8, %land.lhs.true.while.end_crit_edge ], [ null, %next_device.exit.while.end_crit_edge ]
  call void @klist_iter_exit(ptr noundef nonnull %i) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %dev.0.i20, %while.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %i) #4
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @driver_create_file(ptr noundef readonly %drv, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %call.i = tail call i32 @sysfs_create_file_ns(ptr noundef %1, ptr noundef %attr, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %error.0 = phi i32 [ %call.i, %if.then ], [ -22, %entry.if.end_crit_edge ]
  ret i32 %error.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @driver_remove_file(ptr noundef readonly %drv, ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drv, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  tail call void @sysfs_remove_file_ns(ptr noundef %1, ptr noundef %attr, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @driver_add_groups(ptr nocapture noundef readonly %drv, ptr noundef %groups) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %call = tail call i32 @sysfs_create_groups(ptr noundef %1, ptr noundef %groups) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @driver_remove_groups(ptr nocapture noundef readonly %drv, ptr noundef %groups) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  tail call void @sysfs_remove_groups(ptr noundef %1, ptr noundef %groups) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @driver_register(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 4
  %p = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %5, ptr noundef %7) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %probe = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %probe, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %probe5 = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 8
  %10 = ptrtoint ptr %probe5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %probe5, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.do.end21_crit_edge

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %remove = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remove, align 4
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %lor.lhs.false.lor.lhs.false12_crit_edge, label %land.lhs.true9

lor.lhs.false.lor.lhs.false12_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false12

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %remove10 = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 10
  %14 = ptrtoint ptr %remove10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %remove10, align 4
  %tobool11.not = icmp eq ptr %15, null
  br i1 %tobool11.not, label %land.lhs.true9.lor.lhs.false12_crit_edge, label %land.lhs.true9.do.end21_crit_edge

land.lhs.true9.do.end21_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

land.lhs.true9.lor.lhs.false12_crit_edge:         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %land.lhs.true9.lor.lhs.false12_crit_edge, %lor.lhs.false.lor.lhs.false12_crit_edge
  %shutdown = getelementptr inbounds %struct.bus_type, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %shutdown, align 4
  %tobool14.not = icmp eq ptr %17, null
  br i1 %tobool14.not, label %lor.lhs.false12.if.end25_crit_edge, label %land.lhs.true15

lor.lhs.false12.if.end25_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

land.lhs.true15:                                  ; preds = %lor.lhs.false12
  %shutdown16 = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 11
  %18 = ptrtoint ptr %shutdown16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shutdown16, align 4
  %tobool17.not = icmp eq ptr %19, null
  br i1 %tobool17.not, label %land.lhs.true15.if.end25_crit_edge, label %land.lhs.true15.do.end21_crit_edge

land.lhs.true15.do.end21_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end21

land.lhs.true15.if.end25_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

do.end21:                                         ; preds = %land.lhs.true15.do.end21_crit_edge, %land.lhs.true9.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge
  %20 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drv, align 4
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %21) #7
  br label %if.end25

if.end25:                                         ; preds = %do.end21, %land.lhs.true15.if.end25_crit_edge, %lor.lhs.false12.if.end25_crit_edge
  %22 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drv, align 4
  %24 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus, align 4
  %p.i = getelementptr inbounds %struct.bus_type, ptr %25, i32 0, i32 20
  %26 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %p.i, align 4
  %drivers_kset.i = getelementptr inbounds %struct.subsys_private, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %drivers_kset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drivers_kset.i, align 4
  %call.i = tail call ptr @kset_find_obj(ptr noundef %29, ptr noundef %23) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end25.if.end37_crit_edge, label %driver_find.exit

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

driver_find.exit:                                 ; preds = %if.end25
  tail call void @kobject_put(ptr noundef nonnull %call.i) #4
  %driver.i = getelementptr inbounds %struct.driver_private, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver.i, align 4
  %tobool29.not = icmp eq ptr %31, null
  br i1 %tobool29.not, label %driver_find.exit.if.end37_crit_edge, label %do.end33

driver_find.exit.if.end37_crit_edge:              ; preds = %driver_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.end33:                                         ; preds = %driver_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drv, align 4
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %33) #7
  br label %cleanup

if.end37:                                         ; preds = %driver_find.exit.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  %call38 = tail call i32 @bus_add_driver(ptr noundef %drv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end41:                                         ; preds = %if.end37
  %groups = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 14
  %34 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %groups, align 4
  %p.i70 = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %36 = ptrtoint ptr %p.i70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %p.i70, align 4
  %call.i71 = tail call i32 @sysfs_create_groups(ptr noundef %37, ptr noundef %35) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool43.not = icmp eq i32 %call.i71, 0
  br i1 %tobool43.not, label %if.end45, label %if.then44

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bus_remove_driver(ptr noundef %drv) #4
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %p.i70 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p.i70, align 4
  %call47 = tail call i32 @kobject_uevent(ptr noundef %39, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then44, %if.end37.cleanup_crit_edge, %do.end33, %do.end
  %retval.0 = phi i32 [ -16, %do.end33 ], [ %call.i71, %if.then44 ], [ 0, %if.end45 ], [ -22, %do.end ], [ %call38, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @driver_find(ptr noundef %name, ptr nocapture noundef readonly %bus) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %p = getelementptr inbounds %struct.bus_type, ptr %bus, i32 0, i32 20
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %drivers_kset = getelementptr inbounds %struct.subsys_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %drivers_kset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drivers_kset, align 4
  %call = tail call ptr @kset_find_obj(ptr noundef %3, ptr noundef %name) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kobject_put(ptr noundef nonnull %call) #4
  %driver = getelementptr inbounds %struct.driver_private, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %5, %if.then ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_add_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_remove_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @driver_unregister(ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drv, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end18

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 194, i32 noundef 9, ptr noundef nonnull @.str.9) #4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  %groups = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 14
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  tail call void @sysfs_remove_groups(ptr noundef nonnull %1, ptr noundef %3) #4
  tail call void @bus_remove_driver(ptr noundef nonnull %drv) #4
  br label %return

return:                                           ; preds = %if.end18, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_driver_for_each_device, !1, !"__ksymtab_driver_for_each_device", i1 false, i1 false}
!1 = !{!"../drivers/base/driver.c", i32 59, i32 1}
!2 = !{ptr @__ksymtab_driver_find_device, !3, !"__ksymtab_driver_find_device", i1 false, i1 false}
!3 = !{!"../drivers/base/driver.c", i32 94, i32 1}
!4 = !{ptr @__ksymtab_driver_create_file, !5, !"__ksymtab_driver_create_file", i1 false, i1 false}
!5 = !{!"../drivers/base/driver.c", i32 112, i32 1}
!6 = !{ptr @__ksymtab_driver_remove_file, !7, !"__ksymtab_driver_remove_file", i1 false, i1 false}
!7 = !{!"../drivers/base/driver.c", i32 125, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/base/driver.c", i32 153, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @driver_register._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @driver_register._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/base/driver.c", i32 161, i32 3}
!16 = !{ptr @driver_register._entry.3, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @driver_register._entry_ptr.5, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/base/driver.c", i32 166, i32 3}
!20 = !{ptr @driver_register._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @driver_register._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_driver_register, !23, !"__ksymtab_driver_register", i1 false, i1 false}
!23 = !{!"../drivers/base/driver.c", i32 183, i32 1}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/base/driver.c", i32 194, i32 3}
!26 = !{ptr @__ksymtab_driver_unregister, !27, !"__ksymtab_driver_unregister", i1 false, i1 false}
!27 = !{!"../drivers/base/driver.c", i32 200, i32 1}
!28 = !{ptr @__ksymtab_driver_find, !29, !"__ksymtab_driver_find", i1 false, i1 false}
!29 = !{!"../drivers/base/driver.c", i32 227, i32 1}
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
