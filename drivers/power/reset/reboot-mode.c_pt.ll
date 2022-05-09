; ModuleID = '/llk/IR_all_yes/drivers/power/reset/reboot-mode.c_pt.bc'
source_filename = "../drivers/power/reset/reboot-mode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+reboot_mode_register\22, \22a\22\09"
module asm "\09.weak\09__crc_reboot_mode_register\09\09\09\09"
module asm "\09.long\09__crc_reboot_mode_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reboot_mode_register:\09\09\09\09\09"
module asm "\09.asciz \09\22reboot_mode_register\22\09\09\09\09\09"
module asm "__kstrtabns_reboot_mode_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+reboot_mode_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_reboot_mode_unregister\09\09\09\09"
module asm "\09.long\09__crc_reboot_mode_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reboot_mode_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22reboot_mode_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_reboot_mode_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_reboot_mode_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_reboot_mode_register\09\09\09\09"
module asm "\09.long\09__crc_devm_reboot_mode_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_reboot_mode_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_reboot_mode_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_reboot_mode_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_reboot_mode_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_reboot_mode_unregister\09\09\09\09"
module asm "\09.long\09__crc_devm_reboot_mode_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_reboot_mode_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_reboot_mode_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_reboot_mode_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.reboot_mode_driver = type { ptr, %struct.list_head, ptr, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mode_info = type { ptr, i32, %struct.list_head }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mode-\00", [26 x i8] zeroinitializer }, align 32
@reboot_mode_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 84, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"reboot mode %s without magic number\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reboot_mode_register\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/power/reset/reboot-mode.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@reboot_mode_register._entry_ptr = internal global ptr @reboot_mode_register._entry, section ".printk_index", align 4
@reboot_mode_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid mode name(%s): too short!\0A\00", [61 x i8] zeroinitializer }, align 32
@reboot_mode_register._entry_ptr.8 = internal global ptr @reboot_mode_register._entry.6, section ".printk_index", align 4
@__kstrtab_reboot_mode_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_reboot_mode_register = external dso_local constant [0 x i8], align 1
@__ksymtab_reboot_mode_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reboot_mode_register to i32), ptr @__kstrtab_reboot_mode_register, ptr @__kstrtabns_reboot_mode_register }, section "___ksymtab_gpl+reboot_mode_register", align 4
@__kstrtab_reboot_mode_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_reboot_mode_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_reboot_mode_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reboot_mode_unregister to i32), ptr @__kstrtab_reboot_mode_unregister, ptr @__kstrtabns_reboot_mode_unregister }, section "___ksymtab_gpl+reboot_mode_unregister", align 4
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"devm_reboot_mode_release\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_devm_reboot_mode_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_reboot_mode_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_reboot_mode_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_reboot_mode_register to i32), ptr @__kstrtab_devm_reboot_mode_register, ptr @__kstrtabns_devm_reboot_mode_register }, section "___ksymtab_gpl+devm_reboot_mode_register", align 4
@__kstrtab_devm_reboot_mode_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_reboot_mode_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_reboot_mode_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_reboot_mode_unregister to i32), ptr @__kstrtab_devm_reboot_mode_unregister, ptr @__kstrtabns_devm_reboot_mode_unregister }, section "___ksymtab_gpl+devm_reboot_mode_unregister", align 4
@__UNIQUE_ID_author170 = internal constant [54 x i8] c"reboot_mode.author=Andy Yan <andy.yan@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [56 x i8] c"reboot_mode.description=System reboot mode core library\00", section ".modinfo", align 1
@__UNIQUE_ID_file172 = internal constant [49 x i8] c"reboot_mode.file=drivers/power/reset/reboot-mode\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [27 x i8] c"reboot_mode.license=GPL v2\00", section ".modinfo", align 1
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 73, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 83, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 96, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 152, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [37 x i8] c"../drivers/power/reset/reboot-mode.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 25, i32 23 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__ksymtab_devm_reboot_mode_register, ptr @__ksymtab_devm_reboot_mode_unregister, ptr @__ksymtab_reboot_mode_register, ptr @__ksymtab_reboot_mode_unregister, ptr @reboot_mode_register._entry, ptr @reboot_mode_register._entry.6, ptr @reboot_mode_register._entry_ptr, ptr @reboot_mode_register._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_mode_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reboot_mode_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reboot_mode_register(ptr noundef %reboot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reboot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reboot, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %head = getelementptr inbounds %struct.reboot_mode_driver, ptr %reboot, i32 0, i32 1
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %head, ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.reboot_mode_driver, ptr %reboot, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %prev.i, align 4
  %properties = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %6)
  %prop.087 = load ptr, ptr %properties, align 4
  %cmp.not88 = icmp eq ptr %prop.087, null
  br i1 %cmp.not88, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %prop.089 = phi ptr [ %prop.0, %for.inc.for.body_crit_edge ], [ %prop.087, %entry.for.body_crit_edge ]
  %7 = ptrtoint ptr %prop.089 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prop.089, align 4
  %call = tail call i32 @strncmp(ptr noundef %8, ptr noundef nonnull dereferenceable(6) @.str, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %reboot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reboot, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 16, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.error_crit_edge, label %if.end5

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %prop.089 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prop.089, align 4
  %magic = getelementptr inbounds %struct.mode_info, ptr %call.i, i32 0, i32 1
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef %12, ptr noundef %magic, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool8.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool8.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %reboot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reboot, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, ptr noundef %16) #7
  %17 = ptrtoint ptr %reboot to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reboot, align 4
  tail call void @devm_kfree(ptr noundef %18, ptr noundef nonnull %call.i) #4
  br label %for.inc

if.end12:                                         ; preds = %if.end5
  %19 = ptrtoint ptr %prop.089 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prop.089, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 5
  %call14 = tail call ptr @kstrdup_const(ptr noundef %add.ptr, i32 noundef 3264) #4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call14, ptr %call.i, align 4
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %if.end12.error_crit_edge, label %if.else

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.else:                                          ; preds = %if.end12
  %22 = ptrtoint ptr %call14 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp20 = icmp eq i8 %23, 0
  br i1 %cmp20, label %if.then22, label %if.end30

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree_const(ptr noundef nonnull %call14) #4
  %24 = ptrtoint ptr %reboot to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reboot, align 4
  %26 = ptrtoint ptr %prop.089 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prop.089, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.7, ptr noundef %27) #7
  br label %error

if.end30:                                         ; preds = %if.else
  %list = getelementptr inbounds %struct.mode_info, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i, align 4
  %call.i.i84 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %29, ptr noundef %head) #4
  br i1 %call.i.i84, label %if.end.i.i, label %if.end30.for.inc_crit_edge

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list, ptr %prev.i, align 4
  %31 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.mode_info, ptr %call.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %list, ptr %29, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end30.for.inc_crit_edge, %do.end, %for.body.for.inc_crit_edge
  %next = getelementptr inbounds %struct.property, ptr %prop.089, i32 0, i32 3
  %34 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %34)
  %prop.0 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %prop.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %reboot_notifier = getelementptr inbounds %struct.reboot_mode_driver, ptr %reboot, i32 0, i32 3
  %35 = ptrtoint ptr %reboot_notifier to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @reboot_mode_notify, ptr %reboot_notifier, align 4
  %call33 = tail call i32 @register_reboot_notifier(ptr noundef %reboot_notifier) #4
  br label %cleanup

error:                                            ; preds = %if.then22, %if.end12.error_crit_edge, %if.end.error_crit_edge
  %ret.0 = phi i32 [ -22, %if.then22 ], [ -12, %if.end.error_crit_edge ], [ -12, %if.end12.error_crit_edge ]
  %36 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn91 = load ptr, ptr %head, align 4
  %cmp40.not92 = icmp eq ptr %.pn91, %head
  br i1 %cmp40.not92, label %error.cleanup_crit_edge, label %error.for.body42_crit_edge

error.for.body42_crit_edge:                       ; preds = %error
  br label %for.body42

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %error.for.body42_crit_edge
  %.pn93 = phi ptr [ %.pn, %for.body42.for.body42_crit_edge ], [ %.pn91, %error.for.body42_crit_edge ]
  %info.0 = getelementptr i8, ptr %.pn93, i32 -8
  %37 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info.0, align 4
  tail call void @kfree_const(ptr noundef %38) #4
  %39 = ptrtoint ptr %.pn93 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn93, align 4
  %cmp40.not = icmp eq ptr %.pn, %head
  br i1 %cmp40.not, label %for.body42.cleanup_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body42

for.body42.cleanup_crit_edge:                     ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body42.cleanup_crit_edge, %error.cleanup_crit_edge, %for.end
  %retval.0 = phi i32 [ 0, %for.end ], [ %ret.0, %error.cleanup_crit_edge ], [ %ret.0, %for.body42.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reboot_mode_notify(ptr noundef %this, i32 noundef %mode, ptr noundef readonly %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %this, i32 -16
  %tobool.not.i = icmp eq ptr %cmd, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.10, ptr %cmd
  %head.i = getelementptr i8, ptr %this, i32 -12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %head.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %info.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %info.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %spec.select.i) #8
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %get_reboot_mode_magic.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

get_reboot_mode_magic.exit:                       ; preds = %for.body.i
  %magic4.i = getelementptr i8, ptr %.pn.i, i32 -4
  %3 = ptrtoint ptr %magic4.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %magic4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %get_reboot_mode_magic.exit.if.end_crit_edge, label %if.then

get_reboot_mode_magic.exit.if.end_crit_edge:      ; preds = %get_reboot_mode_magic.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %get_reboot_mode_magic.exit
  call void @__sanitizer_cov_trace_pc() #6
  %write = getelementptr i8, ptr %this, i32 -4
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  %call1 = tail call i32 %6(ptr noundef %add.ptr, i32 noundef %4) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %get_reboot_mode_magic.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @reboot_mode_unregister(ptr noundef %reboot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %reboot_notifier = getelementptr inbounds %struct.reboot_mode_driver, ptr %reboot, i32 0, i32 3
  %call = tail call i32 @unregister_reboot_notifier(ptr noundef %reboot_notifier) #4
  %head = getelementptr inbounds %struct.reboot_mode_driver, ptr %reboot, i32 0, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn11 = load ptr, ptr %head, align 4
  %cmp.not12 = icmp eq ptr %.pn11, %head
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn13 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn11, %entry.for.body_crit_edge ]
  %info.0 = getelementptr i8, ptr %.pn13, i32 -8
  %1 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info.0, align 4
  tail call void @kfree_const(ptr noundef %2) #4
  %3 = ptrtoint ptr %.pn13 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn13, align 4
  %cmp.not = icmp eq ptr %.pn, %head
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_reboot_mode_register(ptr noundef %dev, ptr noundef %reboot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_reboot_mode_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.9) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @reboot_mode_register(ptr noundef %reboot)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devres_free(ptr noundef nonnull %call) #4
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %reboot, ptr %call, align 4
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ 0, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_reboot_mode_release(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %reboot_notifier.i = getelementptr inbounds %struct.reboot_mode_driver, ptr %1, i32 0, i32 3
  %call.i = tail call i32 @unregister_reboot_notifier(ptr noundef %reboot_notifier.i) #4
  %head.i = getelementptr inbounds %struct.reboot_mode_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn11.i = load ptr, ptr %head.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %head.i
  br i1 %cmp.not12.i, label %entry.reboot_mode_unregister.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.reboot_mode_unregister.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %reboot_mode_unregister.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn11.i, %entry.for.body.i_crit_edge ]
  %info.0.i = getelementptr i8, ptr %.pn13.i, i32 -8
  %3 = ptrtoint ptr %info.0.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info.0.i, align 4
  tail call void @kfree_const(ptr noundef %4) #4
  %5 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp.not.i, label %for.body.i.reboot_mode_unregister.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.reboot_mode_unregister.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %reboot_mode_unregister.exit

reboot_mode_unregister.exit:                      ; preds = %for.body.i.reboot_mode_unregister.exit_crit_edge, %entry.reboot_mode_unregister.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_reboot_mode_unregister(ptr noundef %dev, ptr noundef %reboot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @devm_reboot_mode_release, ptr noundef nonnull @devm_reboot_mode_match, ptr noundef %reboot) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !42

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 189, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devm_reboot_mode_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !43

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 173, i32 noundef 9, ptr noundef null) #4
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #6
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/power/reset/reboot-mode.c", i32 73, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/power/reset/reboot-mode.c", i32 83, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @reboot_mode_register._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @reboot_mode_register._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/reset/reboot-mode.c", i32 96, i32 4}
!12 = !{ptr @reboot_mode_register._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @reboot_mode_register._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__ksymtab_reboot_mode_register, !15, !"__ksymtab_reboot_mode_register", i1 false, i1 false}
!15 = !{!"../drivers/power/reset/reboot-mode.c", i32 115, i32 1}
!16 = !{ptr @__ksymtab_reboot_mode_unregister, !17, !"__ksymtab_reboot_mode_unregister", i1 false, i1 false}
!17 = !{!"../drivers/power/reset/reboot-mode.c", i32 132, i32 1}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/reset/reboot-mode.c", i32 152, i32 7}
!20 = !{ptr @__ksymtab_devm_reboot_mode_register, !21, !"__ksymtab_devm_reboot_mode_register", i1 false, i1 false}
!21 = !{!"../drivers/power/reset/reboot-mode.c", i32 167, i32 1}
!22 = !{ptr @__ksymtab_devm_reboot_mode_unregister, !23, !"__ksymtab_devm_reboot_mode_unregister", i1 false, i1 false}
!23 = !{!"../drivers/power/reset/reboot-mode.c", i32 191, i32 1}
!24 = !{ptr @__UNIQUE_ID_author170, !25, !"__UNIQUE_ID_author170", i1 false, i1 false}
!25 = !{!"../drivers/power/reset/reboot-mode.c", i32 193, i32 1}
!26 = !{ptr @__UNIQUE_ID_description171, !27, !"__UNIQUE_ID_description171", i1 false, i1 false}
!27 = !{!"../drivers/power/reset/reboot-mode.c", i32 194, i32 1}
!28 = !{ptr @__UNIQUE_ID_file172, !29, !"__UNIQUE_ID_file172", i1 false, i1 false}
!29 = !{!"../drivers/power/reset/reboot-mode.c", i32 195, i32 1}
!30 = !{ptr @__UNIQUE_ID_license173, !29, !"__UNIQUE_ID_license173", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/reset/reboot-mode.c", i32 25, i32 23}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{!"branch_weights", i32 1, i32 2000}
