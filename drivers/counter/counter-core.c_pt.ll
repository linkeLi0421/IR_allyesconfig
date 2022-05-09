; ModuleID = '/llk/IR_all_yes/drivers/counter/counter-core.c_pt.bc'
source_filename = "../drivers/counter/counter-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+counter_priv\22, \22a\22\09"
module asm "\09.weak\09__crc_counter_priv\09\09\09\09"
module asm "\09.long\09__crc_counter_priv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_priv\22\09\09\09\09\09"
module asm "__kstrtabns_counter_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+counter_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_counter_alloc\09\09\09\09"
module asm "\09.long\09__crc_counter_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_counter_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+counter_put\22, \22a\22\09"
module asm "\09.weak\09__crc_counter_put\09\09\09\09"
module asm "\09.long\09__crc_counter_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_put:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_put\22\09\09\09\09\09"
module asm "__kstrtabns_counter_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+counter_add\22, \22a\22\09"
module asm "\09.weak\09__crc_counter_add\09\09\09\09"
module asm "\09.long\09__crc_counter_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_add\22\09\09\09\09\09"
module asm "__kstrtabns_counter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+counter_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_counter_unregister\09\09\09\09"
module asm "\09.long\09__crc_counter_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_counter_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22counter_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_counter_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_counter_alloc\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_counter_alloc\09\09\09\09"
module asm "\09.long\09__crc_devm_counter_alloc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_counter_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_counter_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_devm_counter_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_counter_add\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_counter_add\09\09\09\09"
module asm "\09.long\09__crc_devm_counter_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_counter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_counter_add\22\09\09\09\09\09"
module asm "__kstrtabns_devm_counter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.counter_device_allochelper = type { %struct.counter_device, [80 x i8], [0 x i32] }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.69, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.69 = type { %union.anon.70, [0 x %struct.counter_event] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__kstrtab_counter_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_priv to i32), ptr @__kstrtab_counter_priv, ptr @__kstrtabns_counter_priv }, section "___ksymtab_gpl+counter_priv", align 4
@counter_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@counter_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&counter->ops_exist_lock\00", [39 x i8] zeroinitializer }, align 32
@counter_device_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr @.str.2, ptr null, ptr null, ptr null, ptr @counter_device_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@counter_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.3, ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@counter_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_counter_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_alloc to i32), ptr @__kstrtab_counter_alloc, ptr @__kstrtabns_counter_alloc }, section "___ksymtab_gpl+counter_alloc", align 4
@__kstrtab_counter_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_put = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_put to i32), ptr @__kstrtab_counter_put, ptr @__kstrtabns_counter_put }, section "___ksymtab_gpl+counter_put", align 4
@__kstrtab_counter_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_add = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_add to i32), ptr @__kstrtab_counter_add, ptr @__kstrtabns_counter_add }, section "___ksymtab_gpl+counter_add", align 4
@__kstrtab_counter_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_counter_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_counter_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @counter_unregister to i32), ptr @__kstrtab_counter_unregister, ptr @__kstrtabns_counter_unregister }, section "___ksymtab_gpl+counter_unregister", align 4
@__kstrtab_devm_counter_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_counter_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_counter_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_counter_alloc to i32), ptr @__kstrtab_devm_counter_alloc, ptr @__kstrtabns_devm_counter_alloc }, section "___ksymtab_gpl+devm_counter_alloc", align 4
@__kstrtab_devm_counter_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_counter_add = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_counter_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_counter_add to i32), ptr @__kstrtab_devm_counter_add, ptr @__kstrtabns_devm_counter_add }, section "___ksymtab_gpl+devm_counter_add", align 4
@__initcall__kmod_counter__228_267_counter_init4 = internal global ptr @counter_init, section ".initcall4.init", align 4
@__exitcall_counter_exit = internal global ptr @counter_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [63 x i8] c"counter.author=William Breathitt Gray <vilhelm.gray@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [46 x i8] c"counter.description=Generic Counter interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [37 x i8] c"counter.file=drivers/counter/counter\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"counter.license=GPL v2\00", section ".modinfo", align 1
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"counter_ida.xa_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"counter_device\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"counter\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"counter_ida\00", align 1
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 105, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"counter_device_type\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 49, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"counter_bus_type\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 54, i32 24 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"counter_devt\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 59, i32 14 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 26, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 50, i32 10 }
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [34 x i8] c"../drivers/counter/counter-core.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 55, i32 10 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_counter_exit, ptr @__initcall__kmod_counter__228_267_counter_init4, ptr @__ksymtab_counter_add, ptr @__ksymtab_counter_alloc, ptr @__ksymtab_counter_priv, ptr @__ksymtab_counter_put, ptr @__ksymtab_counter_unregister, ptr @__ksymtab_devm_counter_add, ptr @__ksymtab_devm_counter_alloc, ptr @counter_exit, ptr @counter_ida, ptr @counter_alloc.__key, ptr @.str, ptr @counter_device_type, ptr @counter_bus_type, ptr @counter_devt, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @counter_priv(ptr noundef readnone %counter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata = getelementptr inbounds %struct.counter_device_allochelper, ptr %counter, i32 0, i32 2
  ret ptr %privdata
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @counter_alloc(i32 noundef %sizeof_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %sizeof_priv, 1664
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.counter_device, ptr %call9.i.i, i32 0, i32 9
  %call.i = tail call i32 @ida_alloc_range(ptr noundef nonnull @counter_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.err_ida_alloc_crit_edge, label %if.end5

if.end.err_ida_alloc_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_ida_alloc

if.end5:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.counter_device, ptr %call9.i.i, i32 0, i32 9, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call.i, ptr %id, align 4
  %ops_exist_lock = getelementptr inbounds %struct.counter_device, ptr %call9.i.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %ops_exist_lock, ptr noundef nonnull @.str, ptr noundef nonnull @counter_alloc.__key) #5
  %type = getelementptr inbounds %struct.counter_device, ptr %call9.i.i, i32 0, i32 9, i32 4
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @counter_device_type, ptr %type, align 4
  %bus = getelementptr inbounds %struct.counter_device, ptr %call9.i.i, i32 0, i32 9, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @counter_bus_type, ptr %bus, align 64
  %3 = load i32, ptr @counter_devt, align 4
  %shr = and i32 %3, -1048576
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %or = or i32 %shr, %5
  %devt = getelementptr inbounds %struct.counter_device, ptr %call9.i.i, i32 0, i32 9, i32 29
  %6 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %devt, align 16
  %call7 = tail call i32 @counter_chrdev_add(ptr noundef nonnull %call9.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %err_chrdev_add, label %if.end10

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @device_initialize(ptr noundef %dev2) #5
  br label %cleanup

err_chrdev_add:                                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @counter_ida, i32 noundef %8) #5
  br label %err_ida_alloc

err_ida_alloc:                                    ; preds = %err_chrdev_add, %if.end.err_ida_alloc_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_ida_alloc, %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_ida_alloc ], [ %call9.i.i, %if.end10 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @counter_chrdev_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @counter_put(ptr noundef %counter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @counter_add(ptr noundef %counter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9
  %parent = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent3 = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent3, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %of_node5 = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9, i32 27
  %5 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @counter_sysfs_add(ptr noundef %counter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %chrdev = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 10
  %call8 = tail call i32 @cdev_device_add(ptr noundef %chrdev, ptr noundef %dev1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @counter_sysfs_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @counter_unregister(ptr noundef %counter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %counter, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chrdev = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 10
  %dev = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9
  tail call void @cdev_device_del(ptr noundef %chrdev, ptr noundef %dev) #5
  %ops_exist_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ops_exist_lock, i32 noundef 0) #5
  %ops = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 2
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ops, align 8
  %events_wait = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %events_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  tail call void @mutex_unlock(ptr noundef %ops_exist_lock) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_counter_alloc(ptr noundef %dev, i32 noundef %sizeof_priv) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_alloc(i32 noundef %sizeof_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_counter_put, ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.devm_add_action_or_reset.exit_crit_edge, label %if.then.i

if.end.devm_add_action_or_reset.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %devm_add_action_or_reset.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i.i = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev.i.i) #5
  br label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.then.i, %if.end.devm_add_action_or_reset.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  %.call = select i1 %cmp, ptr null, ptr %call
  br label %cleanup

cleanup:                                          ; preds = %devm_add_action_or_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %.call, %devm_add_action_or_reset.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_counter_put(ptr noundef %counter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9
  tail call void @put_device(ptr noundef %dev.i) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_counter_add(ptr noundef %dev, ptr noundef %counter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9
  %parent.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent3.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %parent3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %parent3.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %of_node5.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9, i32 27
  %5 = ptrtoint ptr %of_node5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node5.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %call.i = tail call i32 @counter_sysfs_add(ptr noundef %counter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %counter_add.exit

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

counter_add.exit:                                 ; preds = %if.end.i
  %chrdev.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 10
  %call8.i = tail call i32 @cdev_device_add(ptr noundef %chrdev.i, ptr noundef %dev1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp = icmp slt i32 %call8.i, 0
  br i1 %cmp, label %counter_add.exit.cleanup_crit_edge, label %if.end

counter_add.exit.cleanup_crit_edge:               ; preds = %counter_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %counter_add.exit
  %call.i4 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_counter_release, ptr noundef %counter) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i5, label %if.end.cleanup_crit_edge, label %if.then.i6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i6:                                       ; preds = %if.end
  %tobool.not.i.i = icmp eq ptr %counter, null
  br i1 %tobool.not.i.i, label %if.then.i6.cleanup_crit_edge, label %if.end.i.i

if.then.i6.cleanup_crit_edge:                     ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @cdev_device_del(ptr noundef %chrdev.i, ptr noundef %dev1.i) #5
  %ops_exist_lock.i.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ops_exist_lock.i.i, i32 noundef 0) #5
  %ops.i.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 2
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ops.i.i, align 8
  %events_wait.i.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %events_wait.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  tail call void @mutex_unlock(ptr noundef %ops_exist_lock.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.then.i6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %counter_add.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8.i, %counter_add.exit.cleanup_crit_edge ], [ %call.i4, %if.end.i.i ], [ %call.i4, %if.then.i6.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_counter_release(ptr noundef %counter) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %counter, null
  br i1 %tobool.not.i, label %entry.counter_unregister.exit_crit_edge, label %if.end.i

entry.counter_unregister.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_unregister.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %chrdev.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 10
  %dev.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9
  tail call void @cdev_device_del(ptr noundef %chrdev.i, ptr noundef %dev.i) #5
  %ops_exist_lock.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %ops_exist_lock.i, i32 noundef 0) #5
  %ops.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 2
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ops.i, align 8
  %events_wait.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %events_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  tail call void @mutex_unlock(ptr noundef %ops_exist_lock.i) #5
  br label %counter_unregister.exit

counter_unregister.exit:                          ; preds = %if.end.i, %entry.counter_unregister.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @counter_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load i32, ptr @counter_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 256) #5
  tail call void @bus_unregister(ptr noundef nonnull @counter_bus_type) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @counter_bus_type) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @counter_devt, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err_unregister_bus, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_unregister_bus:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @bus_unregister(ptr noundef nonnull @counter_bus_type) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unregister_bus, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err_unregister_bus ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @counter_device_release(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  tail call void @counter_chrdev_remove(ptr noundef %add.ptr) #5
  %id = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void @ida_free(ptr noundef nonnull @counter_ida, i32 noundef %1) #5
  tail call void @kfree(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @counter_chrdev_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__ksymtab_counter_priv, !1, !"__ksymtab_counter_priv", i1 false, i1 false}
!1 = !{!"../drivers/counter/counter-core.c", i32 74, i32 1}
!2 = !{ptr @counter_alloc.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/counter/counter-core.c", i32 105, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__ksymtab_counter_alloc, !6, !"__ksymtab_counter_alloc", i1 false, i1 false}
!6 = !{!"../drivers/counter/counter-core.c", i32 127, i32 1}
!7 = !{ptr @__ksymtab_counter_put, !8, !"__ksymtab_counter_put", i1 false, i1 false}
!8 = !{!"../drivers/counter/counter-core.c", i32 133, i32 1}
!9 = !{ptr @__ksymtab_counter_add, !10, !"__ksymtab_counter_add", i1 false, i1 false}
!10 = !{!"../drivers/counter/counter-core.c", i32 160, i32 1}
!11 = !{ptr @__ksymtab_counter_unregister, !12, !"__ksymtab_counter_unregister", i1 false, i1 false}
!12 = !{!"../drivers/counter/counter-core.c", i32 182, i32 1}
!13 = !{ptr @__ksymtab_devm_counter_alloc, !14, !"__ksymtab_devm_counter_alloc", i1 false, i1 false}
!14 = !{!"../drivers/counter/counter-core.c", i32 217, i32 1}
!15 = !{ptr @__ksymtab_devm_counter_add, !16, !"__ksymtab_devm_counter_add", i1 false, i1 false}
!16 = !{!"../drivers/counter/counter-core.c", i32 238, i32 1}
!17 = !{ptr @__initcall__kmod_counter__228_267_counter_init4, !18, !"__initcall__kmod_counter__228_267_counter_init4", i1 false, i1 false}
!18 = !{!"../drivers/counter/counter-core.c", i32 267, i32 1}
!19 = !{ptr @__exitcall_counter_exit, !20, !"__exitcall_counter_exit", i1 false, i1 false}
!20 = !{!"../drivers/counter/counter-core.c", i32 268, i32 1}
!21 = !{ptr @__UNIQUE_ID_author229, !22, !"__UNIQUE_ID_author229", i1 false, i1 false}
!22 = !{!"../drivers/counter/counter-core.c", i32 270, i32 1}
!23 = !{ptr @__UNIQUE_ID_description230, !24, !"__UNIQUE_ID_description230", i1 false, i1 false}
!24 = !{!"../drivers/counter/counter-core.c", i32 271, i32 1}
!25 = !{ptr @__UNIQUE_ID_file231, !26, !"__UNIQUE_ID_file231", i1 false, i1 false}
!26 = !{!"../drivers/counter/counter-core.c", i32 272, i32 1}
!27 = !{ptr @__UNIQUE_ID_license232, !26, !"__UNIQUE_ID_license232", i1 false, i1 false}
!28 = !{ptr @counter_devt, !29, !"counter_devt", i1 false, i1 false}
!29 = !{!"../drivers/counter/counter-core.c", i32 59, i32 14}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/counter/counter-core.c", i32 26, i32 8}
!32 = !{ptr @counter_ida, !31, !"counter_ida", i1 false, i1 false}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/counter/counter-core.c", i32 50, i32 10}
!35 = !{ptr @counter_device_type, !36, !"counter_device_type", i1 false, i1 false}
!36 = !{!"../drivers/counter/counter-core.c", i32 49, i32 27}
!37 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/counter/counter-core.c", i32 55, i32 10}
!39 = !{ptr @counter_bus_type, !40, !"counter_bus_type", i1 false, i1 false}
!40 = !{!"../drivers/counter/counter-core.c", i32 54, i32 24}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
