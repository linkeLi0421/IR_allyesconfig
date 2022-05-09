; ModuleID = '/llk/IR_all_yes/drivers/comedi/comedi_usb.c_pt.bc'
source_filename = "../drivers/comedi/comedi_usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+comedi_to_usb_interface\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_to_usb_interface\09\09\09\09"
module asm "\09.long\09__crc_comedi_to_usb_interface\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_to_usb_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_to_usb_interface\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_to_usb_interface:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_to_usb_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_to_usb_dev\09\09\09\09"
module asm "\09.long\09__crc_comedi_to_usb_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_to_usb_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_to_usb_dev\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_to_usb_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_usb_auto_config\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_usb_auto_config\09\09\09\09"
module asm "\09.long\09__crc_comedi_usb_auto_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_usb_auto_config:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_usb_auto_config\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_usb_auto_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_usb_auto_unconfig\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_usb_auto_unconfig\09\09\09\09"
module asm "\09.long\09__crc_comedi_usb_auto_unconfig\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_usb_auto_unconfig:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_usb_auto_unconfig\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_usb_auto_unconfig:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_usb_driver_register\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_usb_driver_register\09\09\09\09"
module asm "\09.long\09__crc_comedi_usb_driver_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_usb_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_usb_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_usb_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+comedi_usb_driver_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_comedi_usb_driver_unregister\09\09\09\09"
module asm "\09.long\09__crc_comedi_usb_driver_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_comedi_usb_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22comedi_usb_driver_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_comedi_usb_driver_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }

@__kstrtab_comedi_to_usb_interface = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_to_usb_interface = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_to_usb_interface = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_to_usb_interface to i32), ptr @__kstrtab_comedi_to_usb_interface, ptr @__kstrtabns_comedi_to_usb_interface }, section "___ksymtab_gpl+comedi_to_usb_interface", align 4
@__kstrtab_comedi_to_usb_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_to_usb_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_to_usb_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_to_usb_dev to i32), ptr @__kstrtab_comedi_to_usb_dev, ptr @__kstrtabns_comedi_to_usb_dev }, section "___ksymtab_gpl+comedi_to_usb_dev", align 4
@__kstrtab_comedi_usb_auto_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_usb_auto_config = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_usb_auto_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_usb_auto_config to i32), ptr @__kstrtab_comedi_usb_auto_config, ptr @__kstrtabns_comedi_usb_auto_config }, section "___ksymtab_gpl+comedi_usb_auto_config", align 4
@__kstrtab_comedi_usb_auto_unconfig = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_usb_auto_unconfig = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_usb_auto_unconfig = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_usb_auto_unconfig to i32), ptr @__kstrtab_comedi_usb_auto_unconfig, ptr @__kstrtabns_comedi_usb_auto_unconfig }, section "___ksymtab_gpl+comedi_usb_auto_unconfig", align 4
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"comedi_usb\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_comedi_usb_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_usb_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_usb_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_usb_driver_register to i32), ptr @__kstrtab_comedi_usb_driver_register, ptr @__kstrtabns_comedi_usb_driver_register }, section "___ksymtab_gpl+comedi_usb_driver_register", align 4
@__kstrtab_comedi_usb_driver_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_comedi_usb_driver_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_comedi_usb_driver_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @comedi_usb_driver_unregister to i32), ptr @__kstrtab_comedi_usb_driver_unregister, ptr @__kstrtabns_comedi_usb_driver_unregister }, section "___ksymtab_gpl+comedi_usb_driver_unregister", align 4
@__initcall__kmod_comedi_usb__239_141_comedi_usb_init6 = internal global ptr @comedi_usb_init, section ".initcall6.init", align 4
@__exitcall_comedi_usb_exit = internal global ptr @comedi_usb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author240 = internal constant [41 x i8] c"comedi_usb.author=https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [51 x i8] c"comedi_usb.description=Comedi USB interface module\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [42 x i8] c"comedi_usb.file=drivers/comedi/comedi_usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [23 x i8] c"comedi_usb.license=GPL\00", section ".modinfo", align 1
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [31 x i8] c"../drivers/comedi/comedi_usb.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 110, i32 8 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_comedi_usb_exit, ptr @__initcall__kmod_comedi_usb__239_141_comedi_usb_init6, ptr @__ksymtab_comedi_to_usb_dev, ptr @__ksymtab_comedi_to_usb_interface, ptr @__ksymtab_comedi_usb_auto_config, ptr @__ksymtab_comedi_usb_auto_unconfig, ptr @__ksymtab_comedi_usb_driver_register, ptr @__ksymtab_comedi_usb_driver_unregister, ptr @comedi_usb_exit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @comedi_to_usb_interface(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %hw_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -32
  %spec.select = select i1 %tobool.not, ptr null, ptr %add.ptr
  ret ptr %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @comedi_to_usb_dev(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %hw_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw_dev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -32
  %tobool.not4 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not4
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent.i = getelementptr i8, ptr %1, i32 136
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 -128
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %add.ptr.i3, %cond.true ], [ null, %entry.cond.end_crit_edge ]
  ret ptr %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @comedi_usb_auto_config(ptr noundef %intf, ptr noundef %driver, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call = tail call i32 @comedi_auto_config(ptr noundef %dev, ptr noundef %driver, i32 noundef %context) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_auto_config(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @comedi_usb_auto_unconfig(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void @comedi_auto_unconfig(ptr noundef %dev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_auto_unconfig(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @comedi_usb_driver_register(ptr noundef %comedi_driver, ptr noundef %usb_driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef %comedi_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @usb_register_driver(ptr noundef %usb_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_driver_unregister(ptr noundef %comedi_driver) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @comedi_usb_driver_unregister(ptr noundef %comedi_driver, ptr noundef %usb_driver) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @usb_deregister(ptr noundef %usb_driver) #5
  tail call void @comedi_driver_unregister(ptr noundef %comedi_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @comedi_usb_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @comedi_usb_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_comedi_to_usb_interface, !1, !"__ksymtab_comedi_to_usb_interface", i1 false, i1 false}
!1 = !{!"../drivers/comedi/comedi_usb.c", i32 27, i32 1}
!2 = !{ptr @__ksymtab_comedi_to_usb_dev, !3, !"__ksymtab_comedi_to_usb_dev", i1 false, i1 false}
!3 = !{!"../drivers/comedi/comedi_usb.c", i32 45, i32 1}
!4 = !{ptr @__ksymtab_comedi_usb_auto_config, !5, !"__ksymtab_comedi_usb_auto_config", i1 false, i1 false}
!5 = !{!"../drivers/comedi/comedi_usb.c", i32 68, i32 1}
!6 = !{ptr @__ksymtab_comedi_usb_auto_unconfig, !7, !"__ksymtab_comedi_usb_auto_unconfig", i1 false, i1 false}
!7 = !{!"../drivers/comedi/comedi_usb.c", i32 88, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/comedi/comedi_usb.c", i32 110, i32 8}
!10 = !{ptr @__ksymtab_comedi_usb_driver_register, !11, !"__ksymtab_comedi_usb_driver_register", i1 false, i1 false}
!11 = !{!"../drivers/comedi/comedi_usb.c", i32 118, i32 1}
!12 = !{ptr @__ksymtab_comedi_usb_driver_unregister, !13, !"__ksymtab_comedi_usb_driver_unregister", i1 false, i1 false}
!13 = !{!"../drivers/comedi/comedi_usb.c", i32 135, i32 1}
!14 = !{ptr @__initcall__kmod_comedi_usb__239_141_comedi_usb_init6, !15, !"__initcall__kmod_comedi_usb__239_141_comedi_usb_init6", i1 false, i1 false}
!15 = !{!"../drivers/comedi/comedi_usb.c", i32 141, i32 1}
!16 = !{ptr @__exitcall_comedi_usb_exit, !17, !"__exitcall_comedi_usb_exit", i1 false, i1 false}
!17 = !{!"../drivers/comedi/comedi_usb.c", i32 146, i32 1}
!18 = !{ptr @__UNIQUE_ID_author240, !19, !"__UNIQUE_ID_author240", i1 false, i1 false}
!19 = !{!"../drivers/comedi/comedi_usb.c", i32 148, i32 1}
!20 = !{ptr @__UNIQUE_ID_description241, !21, !"__UNIQUE_ID_description241", i1 false, i1 false}
!21 = !{!"../drivers/comedi/comedi_usb.c", i32 149, i32 1}
!22 = !{ptr @__UNIQUE_ID_file242, !23, !"__UNIQUE_ID_file242", i1 false, i1 false}
!23 = !{!"../drivers/comedi/comedi_usb.c", i32 150, i32 1}
!24 = !{ptr @__UNIQUE_ID_license243, !23, !"__UNIQUE_ID_license243", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
