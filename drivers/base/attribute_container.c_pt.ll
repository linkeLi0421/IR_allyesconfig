; ModuleID = '/llk/IR_all_yes/drivers/base/attribute_container.c_pt.bc'
source_filename = "../drivers/base/attribute_container.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+attribute_container_classdev_to_container\22, \22a\22\09"
module asm "\09.weak\09__crc_attribute_container_classdev_to_container\09\09\09\09"
module asm "\09.long\09__crc_attribute_container_classdev_to_container\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attribute_container_classdev_to_container:\09\09\09\09\09"
module asm "\09.asciz \09\22attribute_container_classdev_to_container\22\09\09\09\09\09"
module asm "__kstrtabns_attribute_container_classdev_to_container:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+attribute_container_register\22, \22a\22\09"
module asm "\09.weak\09__crc_attribute_container_register\09\09\09\09"
module asm "\09.long\09__crc_attribute_container_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attribute_container_register:\09\09\09\09\09"
module asm "\09.asciz \09\22attribute_container_register\22\09\09\09\09\09"
module asm "__kstrtabns_attribute_container_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+attribute_container_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_attribute_container_unregister\09\09\09\09"
module asm "\09.long\09__crc_attribute_container_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attribute_container_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22attribute_container_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_attribute_container_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+attribute_container_find_class_device\22, \22a\22\09"
module asm "\09.weak\09__crc_attribute_container_find_class_device\09\09\09\09"
module asm "\09.long\09__crc_attribute_container_find_class_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attribute_container_find_class_device:\09\09\09\09\09"
module asm "\09.asciz \09\22attribute_container_find_class_device\22\09\09\09\09\09"
module asm "__kstrtabns_attribute_container_find_class_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.internal_container = type { %struct.klist_node, ptr, %struct.device }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.klist_iter = type { ptr, ptr }

@__kstrtab_attribute_container_classdev_to_container = external dso_local constant [0 x i8], align 1
@__kstrtabns_attribute_container_classdev_to_container = external dso_local constant [0 x i8], align 1
@__ksymtab_attribute_container_classdev_to_container = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attribute_container_classdev_to_container to i32), ptr @__kstrtab_attribute_container_classdev_to_container, ptr @__kstrtabns_attribute_container_classdev_to_container }, section "___ksymtab_gpl+attribute_container_classdev_to_container", align 4
@attribute_container_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @attribute_container_mutex, i64 52), ptr getelementptr (i8, ptr @attribute_container_mutex, i64 52) }, ptr @attribute_container_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@attribute_container_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @attribute_container_list, ptr @attribute_container_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_attribute_container_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_attribute_container_register = external dso_local constant [0 x i8], align 1
@__ksymtab_attribute_container_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attribute_container_register to i32), ptr @__kstrtab_attribute_container_register, ptr @__kstrtabns_attribute_container_register }, section "___ksymtab_gpl+attribute_container_register", align 4
@__kstrtab_attribute_container_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_attribute_container_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_attribute_container_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attribute_container_unregister to i32), ptr @__kstrtab_attribute_container_unregister, ptr @__kstrtabns_attribute_container_unregister }, section "___ksymtab_gpl+attribute_container_unregister", align 4
@attribute_container_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 160, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to allocate class container\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"attribute_container_add_device\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/base/attribute_container.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@attribute_container_add_device._entry_ptr = internal global ptr @attribute_container_add_device._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@attribute_container_add_attrs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__kstrtab_attribute_container_find_class_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_attribute_container_find_class_device = external dso_local constant [0 x i8], align 1
@__ksymtab_attribute_container_find_class_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attribute_container_find_class_device to i32), ptr @__kstrtab_attribute_container_find_class_device, ptr @__kstrtabns_attribute_container_find_class_device }, section "___ksymtab_gpl+attribute_container_find_class_device", align 4
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"attribute_container_mutex.wait_lock\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"attribute_container_mutex\00", [38 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.8 = private unnamed_addr constant [26 x i8] c"attribute_container_mutex\00", align 1
@___asan_gen_.11 = private unnamed_addr constant [25 x i8] c"attribute_container_list\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 62, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 160, i32 4 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 169, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 433, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [38 x i8] c"../drivers/base/attribute_container.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 64, i32 8 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_attribute_container_classdev_to_container, ptr @__ksymtab_attribute_container_find_class_device, ptr @__ksymtab_attribute_container_register, ptr @__ksymtab_attribute_container_unregister, ptr @attribute_container_add_device._entry, ptr @attribute_container_add_device._entry_ptr, ptr @attribute_container_mutex, ptr @attribute_container_list, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @attribute_container_add_attrs.__key, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attribute_container_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attribute_container_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attribute_container_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @attribute_container_add_attrs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @attribute_container_classdev_to_container(ptr nocapture noundef readonly %classdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cont = getelementptr i8, ptr %classdev, i32 -8
  %0 = ptrtoint ptr %cont to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cont, align 8
  ret ptr %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attribute_container_register(ptr noundef %cont) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cont to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %cont, ptr %cont, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cont, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cont, ptr %prev.i, align 4
  %containers = getelementptr inbounds %struct.attribute_container, ptr %cont, i32 0, i32 1
  tail call void @klist_init(ptr noundef %containers, ptr noundef nonnull @internal_container_klist_get, ptr noundef nonnull @internal_container_klist_put) #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @attribute_container_mutex, i32 noundef 0) #6
  %2 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @attribute_container_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cont, ptr noundef %2, ptr noundef nonnull @attribute_container_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %cont, ptr getelementptr inbounds (%struct.list_head, ptr @attribute_container_list, i32 0, i32 1), align 4
  %3 = ptrtoint ptr %cont to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @attribute_container_list, ptr %cont, align 4
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %prev.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %cont, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @internal_container_klist_get(ptr noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %classdev = getelementptr inbounds %struct.internal_container, ptr %n, i32 0, i32 2
  %call = tail call ptr @get_device(ptr noundef %classdev) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @internal_container_klist_put(ptr noundef %n) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %classdev = getelementptr inbounds %struct.internal_container, ptr %n, i32 0, i32 2
  tail call void @put_device(ptr noundef %classdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attribute_container_unregister(ptr noundef %cont) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @attribute_container_mutex, i32 noundef 0) #6
  %containers = getelementptr inbounds %struct.attribute_container, ptr %cont, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %containers) #6
  %k_list = getelementptr inbounds %struct.attribute_container, ptr %cont, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %k_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %k_list, align 4
  %cmp.i.not = icmp eq ptr %1, %k_list
  br i1 %cmp.i.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cont) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cont, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %cont to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cont, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %cont to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %cont, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cont, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %out

out:                                              ; preds = %list_del.exit, %entry.out_crit_edge
  %retval1.0 = phi i32 [ 0, %list_del.exit ], [ -16, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %containers) #6
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @attribute_container_add_device(ptr noundef %dev, ptr noundef readonly %fn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @attribute_container_mutex, i32 noundef 0) #6
  %cont.055 = load ptr, ptr @attribute_container_list, align 4
  %cmp.not56 = icmp eq ptr %cont.055, @attribute_container_list
  br i1 %cmp.not56, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %tobool18.not = icmp eq ptr %fn, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %cont.057 = phi ptr [ %cont.055, %for.body.lr.ph ], [ %cont.0, %cleanup.for.body_crit_edge ]
  %flags.i = getelementptr inbounds %struct.attribute_container, ptr %cont.057, i32 0, i32 6
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %match = getelementptr inbounds %struct.attribute_container, ptr %cont.057, i32 0, i32 5
  %2 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %match, align 4
  %call1 = tail call i32 %3(ptr noundef %cont.057, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 952) #9
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %cont9 = getelementptr %struct.internal_container, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %cont9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cont.057, ptr %cont9, align 8
  %classdev = getelementptr inbounds %struct.internal_container, ptr %call7.i.i, i32 0, i32 2
  tail call void @device_initialize(ptr noundef %classdev) #6
  %call10 = tail call ptr @get_device(ptr noundef %dev) #6
  %parent = getelementptr inbounds %struct.internal_container, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %parent, align 8
  %class = getelementptr inbounds %struct.attribute_container, ptr %cont.057, i32 0, i32 2
  %7 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class, align 4
  %class13 = getelementptr inbounds %struct.internal_container, ptr %call7.i.i, i32 0, i32 2, i32 33
  %9 = ptrtoint ptr %class13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %class13, align 4
  %10 = load ptr, ptr %class, align 4
  %dev_release = getelementptr inbounds %struct.class, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %dev_release to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @attribute_container_release, ptr %dev_release, align 4
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.dev_name.exit_crit_edge

if.end8.dev_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end8.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end8.dev_name.exit_crit_edge ]
  %call17 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %classdev, ptr noundef nonnull @.str.5, ptr noundef %retval.0.i) #6
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 %fn(ptr noundef %cont.057, ptr noundef %dev, ptr noundef %classdev) #6
  br label %if.end24

if.else:                                          ; preds = %dev_name.exit
  %call.i = tail call i32 @device_add(ptr noundef %classdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i52 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i52, label %if.end.i53, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i53:                                       ; preds = %if.else
  %16 = ptrtoint ptr %cont9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cont9, align 8
  %attrs1.i.i = getelementptr inbounds %struct.attribute_container, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %attrs1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  %grp12.i.i = getelementptr inbounds %struct.attribute_container, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %grp12.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %grp12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %land.lhs.true.critedge.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i53
  br i1 %tobool13.not.i.i, label %for.cond.preheader.i.i, label %do.body5.i.i, !prof !35

do.body5.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/attribute_container.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

land.lhs.true.critedge.i.i:                       ; preds = %if.end.i53
  br i1 %tobool13.not.i.i, label %land.lhs.true.critedge.i.i.if.end24_crit_edge, label %if.then18.i.i

land.lhs.true.critedge.i.i.if.end24_crit_edge:    ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

for.cond.preheader.i.i:                           ; preds = %land.rhs.i.i
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %tobool22.not50.i.i = icmp eq ptr %23, null
  br i1 %tobool22.not50.i.i, label %for.cond.preheader.i.i.if.end24_crit_edge, label %for.cond.preheader.i.i.do.body23.i.i_crit_edge

for.cond.preheader.i.i.do.body23.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  br label %do.body23.i.i

for.cond.preheader.i.i.if.end24_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then18.i.i:                                    ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i.i = tail call i32 @sysfs_create_group(ptr noundef %classdev, ptr noundef nonnull %21) #6
  br label %if.end24

for.cond.i.i:                                     ; preds = %do.body23.i.i
  %inc.i.i = add i32 %i.051.i.i, 1
  %arrayidx.i.i = getelementptr ptr, ptr %19, i32 %inc.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %25, null
  br i1 %tobool22.not.i.i, label %for.cond.i.i.if.end24_crit_edge, label %for.cond.i.i.do.body23.i.i_crit_edge

for.cond.i.i.do.body23.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23.i.i

for.cond.i.i.if.end24_crit_edge:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.body23.i.i:                                    ; preds = %for.cond.i.i.do.body23.i.i_crit_edge, %for.cond.preheader.i.i.do.body23.i.i_crit_edge
  %26 = phi ptr [ %25, %for.cond.i.i.do.body23.i.i_crit_edge ], [ %23, %for.cond.preheader.i.i.do.body23.i.i_crit_edge ]
  %arrayidx52.i.i = phi ptr [ %arrayidx.i.i, %for.cond.i.i.do.body23.i.i_crit_edge ], [ %19, %for.cond.preheader.i.i.do.body23.i.i_crit_edge ]
  %i.051.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.do.body23.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.do.body23.i.i_crit_edge ]
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @attribute_container_add_attrs.__key, ptr %key.i.i, align 4
  %28 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx52.i.i, align 4
  %call28.i.i = tail call i32 @device_create_file(ptr noundef %classdev, ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %for.cond.i.i, label %do.body23.i.i.if.end24_crit_edge

do.body23.i.i.if.end24_crit_edge:                 ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end24:                                         ; preds = %do.body23.i.i.if.end24_crit_edge, %for.cond.i.i.if.end24_crit_edge, %if.then18.i.i, %for.cond.preheader.i.i.if.end24_crit_edge, %land.lhs.true.critedge.i.i.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.then19
  %containers = getelementptr inbounds %struct.attribute_container, ptr %cont.057, i32 0, i32 1
  tail call void @klist_add_tail(ptr noundef nonnull %call7.i.i, ptr noundef %containers) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %30 = ptrtoint ptr %cont.057 to i32
  call void @__asan_load4_noabort(i32 %30)
  %cont.0 = load ptr, ptr %cont.057, align 4
  %cmp.not = icmp eq ptr %cont.0, @attribute_container_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @attribute_container_release(ptr noundef %classdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %classdev, i32 -24
  %parent = getelementptr inbounds %struct.device, ptr %classdev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  tail call void @kfree(ptr noundef %add.ptr) #6
  tail call void @put_device(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attribute_container_add_class_device(ptr noundef %classdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_add(ptr noundef %classdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cont.i.i = getelementptr i8, ptr %classdev, i32 -8
  %0 = ptrtoint ptr %cont.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cont.i.i, align 8
  %attrs1.i = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %attrs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %grp12.i = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %grp12.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grp12.i, align 4
  %tobool13.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %land.lhs.true.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end
  br i1 %tobool13.not.i, label %for.cond.preheader.i, label %do.body5.i, !prof !35

do.body5.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/attribute_container.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

land.lhs.true.critedge.i:                         ; preds = %if.end
  br i1 %tobool13.not.i, label %land.lhs.true.critedge.i.cleanup_crit_edge, label %if.then18.i

land.lhs.true.critedge.i.cleanup_crit_edge:       ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.i:                             ; preds = %land.rhs.i
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool22.not50.i = icmp eq ptr %7, null
  br i1 %tobool22.not50.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.do.body23.i_crit_edge

for.cond.preheader.i.do.body23.i_crit_edge:       ; preds = %for.cond.preheader.i
  br label %do.body23.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18.i:                                      ; preds = %land.lhs.true.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i = tail call i32 @sysfs_create_group(ptr noundef %classdev, ptr noundef nonnull %5) #6
  br label %cleanup

for.cond.i:                                       ; preds = %do.body23.i
  %inc.i = add i32 %i.051.i, 1
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %inc.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool22.not.i = icmp eq ptr %9, null
  br i1 %tobool22.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.do.body23.i_crit_edge

for.cond.i.do.body23.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body23.i:                                      ; preds = %for.cond.i.do.body23.i_crit_edge, %for.cond.preheader.i.do.body23.i_crit_edge
  %10 = phi ptr [ %9, %for.cond.i.do.body23.i_crit_edge ], [ %7, %for.cond.preheader.i.do.body23.i_crit_edge ]
  %arrayidx52.i = phi ptr [ %arrayidx.i, %for.cond.i.do.body23.i_crit_edge ], [ %3, %for.cond.preheader.i.do.body23.i_crit_edge ]
  %i.051.i = phi i32 [ %inc.i, %for.cond.i.do.body23.i_crit_edge ], [ 0, %for.cond.preheader.i.do.body23.i_crit_edge ]
  %key.i = getelementptr inbounds %struct.attribute, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @attribute_container_add_attrs.__key, ptr %key.i, align 4
  %12 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx52.i, align 4
  %call28.i = tail call i32 @device_create_file(ptr noundef %classdev, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %for.cond.i, label %do.body23.i.cleanup_crit_edge

do.body23.i.cleanup_crit_edge:                    ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body23.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.then18.i, %for.cond.preheader.i.cleanup_crit_edge, %land.lhs.true.critedge.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call20.i, %if.then18.i ], [ 0, %land.lhs.true.critedge.i.cleanup_crit_edge ], [ 0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %for.cond.i.cleanup_crit_edge ], [ %call28.i, %do.body23.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_add_tail(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @attribute_container_remove_device(ptr noundef %dev, ptr noundef readonly %fn) local_unnamed_addr #2 align 64 {
entry:
  %iter = alloca %struct.klist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @attribute_container_mutex, i32 noundef 0) #6
  %cont.050 = load ptr, ptr @attribute_container_list, align 4
  %cmp.not51 = icmp eq ptr %cont.050, @attribute_container_list
  br i1 %cmp.not51, label %entry.for.end30_crit_edge, label %for.body.lr.ph

entry.for.end30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.klist_iter, ptr %iter, i32 0, i32 1
  %tobool19.not = icmp eq ptr %fn, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %cont.052 = phi ptr [ %cont.050, %for.body.lr.ph ], [ %cont.0, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #6
  %1 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !37
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !37
  %flags.i = getelementptr inbounds %struct.attribute_container, ptr %cont.052, i32 0, i32 6
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %match = getelementptr inbounds %struct.attribute_container, ptr %cont.052, i32 0, i32 5
  %5 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %match, align 4
  %call1 = call i32 %6(ptr noundef %cont.052, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %containers = getelementptr inbounds %struct.attribute_container, ptr %cont.052, i32 0, i32 1
  call void @klist_iter_init(ptr noundef %containers, ptr noundef nonnull %iter) #6
  %call647 = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool8.not48 = icmp eq ptr %call647, null
  br i1 %tobool8.not48, label %if.end4.cond.end.thread_crit_edge, label %if.end4.for.body14_crit_edge

if.end4.for.body14_crit_edge:                     ; preds = %if.end4
  br label %for.body14

if.end4.cond.end.thread_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %for.cond5.backedge.cond.end.thread_crit_edge, %if.end4.cond.end.thread_crit_edge
  call void @klist_iter_exit(ptr noundef nonnull %iter) #6
  br label %cleanup

for.body14:                                       ; preds = %for.cond5.backedge.for.body14_crit_edge, %if.end4.for.body14_crit_edge
  %call649 = phi ptr [ %call6, %for.cond5.backedge.for.body14_crit_edge ], [ %call647, %if.end4.for.body14_crit_edge ]
  %classdev = getelementptr inbounds %struct.internal_container, ptr %call649, i32 0, i32 2
  %parent = getelementptr inbounds %struct.internal_container, ptr %call649, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %cmp15.not = icmp eq ptr %8, %dev
  br i1 %cmp15.not, label %if.end17, label %for.body14.for.cond5.backedge_crit_edge

for.body14.for.cond5.backedge_crit_edge:          ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.backedge

if.end17:                                         ; preds = %for.body14
  call void @klist_del(ptr noundef nonnull %call649) #6
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  call void %fn(ptr noundef %cont.052, ptr noundef %dev, ptr noundef %classdev) #6
  br label %for.cond5.backedge

if.else:                                          ; preds = %if.end17
  %cont.i.i = getelementptr %struct.internal_container, ptr %call649, i32 0, i32 1
  %9 = ptrtoint ptr %cont.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cont.i.i, align 8
  %attrs1.i = getelementptr inbounds %struct.attribute_container, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %attrs1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs1.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.else
  %grp.i = getelementptr inbounds %struct.attribute_container, ptr %10, i32 0, i32 3
  %13 = ptrtoint ptr %grp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %grp.i, align 4
  %tobool2.not.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.attribute_container_remove_attrs.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.attribute_container_remove_attrs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_remove_attrs.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  %grp3.i = getelementptr inbounds %struct.attribute_container, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %grp3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %grp3.i, align 4
  %tobool4.not.i = icmp eq ptr %16, null
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %if.then5.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %12, align 4
  %tobool8.not22.i = icmp eq ptr %18, null
  br i1 %tobool8.not22.i, label %for.cond.preheader.i.attribute_container_remove_attrs.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.attribute_container_remove_attrs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_remove_attrs.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @sysfs_remove_group(ptr noundef %classdev, ptr noundef nonnull %16) #6
  br label %attribute_container_remove_attrs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %19 = phi ptr [ %21, %for.body.i.for.body.i_crit_edge ], [ %18, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @device_remove_file(ptr noundef %classdev, ptr noundef nonnull %19) #6
  %inc.i = add i32 %i.023.i, 1
  %arrayidx.i = getelementptr ptr, ptr %12, i32 %inc.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %21, null
  br i1 %tobool8.not.i, label %for.body.i.attribute_container_remove_attrs.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.attribute_container_remove_attrs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_remove_attrs.exit

attribute_container_remove_attrs.exit:            ; preds = %for.body.i.attribute_container_remove_attrs.exit_crit_edge, %if.then5.i, %for.cond.preheader.i.attribute_container_remove_attrs.exit_crit_edge, %land.lhs.true.i.attribute_container_remove_attrs.exit_crit_edge
  call void @device_unregister(ptr noundef %classdev) #6
  br label %for.cond5.backedge

for.cond5.backedge:                               ; preds = %attribute_container_remove_attrs.exit, %if.then20, %for.body14.for.cond5.backedge_crit_edge
  %call6 = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %for.cond5.backedge.cond.end.thread_crit_edge, label %for.cond5.backedge.for.body14_crit_edge

for.cond5.backedge.for.body14_crit_edge:          ; preds = %for.cond5.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.cond5.backedge.cond.end.thread_crit_edge:     ; preds = %for.cond5.backedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread

cleanup:                                          ; preds = %cond.end.thread, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #6
  %22 = ptrtoint ptr %cont.052 to i32
  call void @__asan_load4_noabort(i32 %22)
  %cont.0 = load ptr, ptr %cont.052, align 4
  %cmp.not = icmp eq ptr %cont.0, @attribute_container_list
  br i1 %cmp.not, label %cleanup.for.end30_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end30

for.end30:                                        ; preds = %cleanup.for.end30_crit_edge, %entry.for.end30_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @klist_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_iter_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @klist_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @attribute_container_remove_attrs(ptr noundef %classdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cont.i = getelementptr i8, ptr %classdev, i32 -8
  %0 = ptrtoint ptr %cont.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cont.i, align 8
  %attrs1 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %grp = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grp, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %grp3 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %grp3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grp3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %for.cond.preheader, label %if.then5

for.cond.preheader:                               ; preds = %if.end
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %tobool8.not22 = icmp eq ptr %9, null
  br i1 %tobool8.not22, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysfs_remove_group(ptr noundef %classdev, ptr noundef nonnull %7) #6
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %10 = phi ptr [ %12, %for.body.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  tail call void @device_remove_file(ptr noundef %classdev, ptr noundef nonnull %10) #6
  %inc = add i32 %i.023, 1
  %arrayidx = getelementptr ptr, ptr %3, i32 %inc
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then5, %for.cond.preheader.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attribute_container_device_trigger_safe(ptr noundef %dev, ptr nocapture noundef readonly %fn, ptr noundef %undo) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @attribute_container_mutex, i32 noundef 0) #6
  %cont.088 = load ptr, ptr @attribute_container_list, align 4
  %cmp.not89 = icmp eq ptr %cont.088, @attribute_container_list
  br i1 %cmp.not89, label %entry.if.end62_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end62_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cont.090 = phi ptr [ %cont.0, %for.inc.for.body_crit_edge ], [ %cont.088, %entry.for.body_crit_edge ]
  %match = getelementptr inbounds %struct.attribute_container, ptr %cont.090, i32 0, i32 5
  %0 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match, align 4
  %call = tail call i32 %1(ptr noundef %cont.090, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call1 = tail call fastcc i32 @do_attribute_container_device_trigger_safe(ptr noundef %dev, ptr noundef %cont.090, ptr noundef %fn, ptr noundef %undo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.for.inc_crit_edge, label %land.lhs.true

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %cont.090 to i32
  call void @__asan_load4_noabort(i32 %2)
  %cont.0 = load ptr, ptr %cont.090, align 4
  %cmp.not = icmp eq ptr %cont.0, @attribute_container_list
  br i1 %cmp.not, label %for.inc.if.end62_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end62_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

land.lhs.true:                                    ; preds = %if.end
  %tobool10.not = icmp eq ptr %undo, null
  br i1 %tobool10.not, label %do.end, label %for.cond40.preheader, !prof !38

for.cond40.preheader:                             ; preds = %land.lhs.true
  %cont.191 = load ptr, ptr @attribute_container_list, align 4
  %cmp42.not92 = icmp eq ptr %cont.191, @attribute_container_list
  %cmp4693 = icmp eq ptr %cont.090, %cont.191
  %or.cond94 = or i1 %cmp42.not92, %cmp4693
  br i1 %or.cond94, label %for.cond40.preheader.if.end62_crit_edge, label %for.cond40.preheader.if.end48_crit_edge

for.cond40.preheader.if.end48_crit_edge:          ; preds = %for.cond40.preheader
  br label %if.end48

for.cond40.preheader.if.end62_crit_edge:          ; preds = %for.cond40.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 323, i32 noundef 9, ptr noundef null) #6
  br label %if.end62

if.end48:                                         ; preds = %for.inc55.if.end48_crit_edge, %for.cond40.preheader.if.end48_crit_edge
  %cont.195 = phi ptr [ %cont.1, %for.inc55.if.end48_crit_edge ], [ %cont.191, %for.cond40.preheader.if.end48_crit_edge ]
  %match49 = getelementptr inbounds %struct.attribute_container, ptr %cont.195, i32 0, i32 5
  %3 = ptrtoint ptr %match49 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match49, align 4
  %call50 = tail call i32 %4(ptr noundef %cont.195, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.for.inc55_crit_edge, label %if.end53

if.end48.for.inc55_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc55

if.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call fastcc i32 @do_attribute_container_device_trigger_safe(ptr noundef %dev, ptr noundef %cont.195, ptr noundef nonnull %undo, ptr noundef null)
  br label %for.inc55

for.inc55:                                        ; preds = %if.end53, %if.end48.for.inc55_crit_edge
  %5 = ptrtoint ptr %cont.195 to i32
  call void @__asan_load4_noabort(i32 %5)
  %cont.1 = load ptr, ptr %cont.195, align 4
  %cmp42.not = icmp eq ptr %cont.1, @attribute_container_list
  %cmp46 = icmp eq ptr %cont.090, %cont.1
  %or.cond = or i1 %cmp42.not, %cmp46
  br i1 %or.cond, label %for.inc55.if.end62_crit_edge, label %for.inc55.if.end48_crit_edge

for.inc55.if.end48_crit_edge:                     ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

for.inc55.if.end62_crit_edge:                     ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.end62:                                         ; preds = %for.inc55.if.end62_crit_edge, %do.end, %for.cond40.preheader.if.end62_crit_edge, %for.inc.if.end62_crit_edge, %entry.if.end62_crit_edge
  %ret.285 = phi i32 [ %call1, %do.end ], [ %call1, %for.cond40.preheader.if.end62_crit_edge ], [ 0, %entry.if.end62_crit_edge ], [ %call1, %for.inc55.if.end62_crit_edge ], [ 0, %for.inc.if.end62_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret i32 %ret.285
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_attribute_container_device_trigger_safe(ptr noundef %dev, ptr noundef %cont, ptr nocapture noundef readonly %fn, ptr noundef readonly %undo) unnamed_addr #2 align 64 {
entry:
  %iter = alloca %struct.klist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #6
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !37
  %1 = getelementptr inbounds %struct.klist_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !37
  %flags.i = getelementptr inbounds %struct.attribute_container, ptr %cont, i32 0, i32 6
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 %fn(ptr noundef %cont, ptr noundef %dev, ptr noundef null) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %containers = getelementptr inbounds %struct.attribute_container, ptr %cont, i32 0, i32 1
  call void @klist_iter_init(ptr noundef %containers, ptr noundef nonnull %iter) #6
  %call272 = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool3.not73 = icmp eq ptr %call272, null
  br i1 %tobool3.not73, label %if.end.cond.end.thread_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cond.end.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %if.end13.cond.end.thread_crit_edge, %if.end.cond.end.thread_crit_edge
  call void @klist_iter_exit(ptr noundef nonnull %iter) #6
  br label %cleanup

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %if.end.for.body_crit_edge
  %call274 = phi ptr [ %call2, %if.end13.for.body_crit_edge ], [ %call272, %if.end.for.body_crit_edge ]
  %parent = getelementptr inbounds %struct.internal_container, ptr %call274, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  %cmp6 = icmp eq ptr %6, %dev
  br i1 %cmp6, label %if.then7, label %for.body.if.end13_crit_edge

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then7:                                         ; preds = %for.body
  %classdev = getelementptr inbounds %struct.internal_container, ptr %call274, i32 0, i32 2
  %call9 = call i32 %fn(ptr noundef %cont, ptr noundef %dev, ptr noundef %classdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then11

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then11:                                        ; preds = %if.then7
  call void @klist_iter_exit(ptr noundef nonnull %iter) #6
  %tobool14.not = icmp eq ptr %undo, null
  br i1 %tobool14.not, label %if.then11.cleanup_crit_edge, label %if.end16

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %for.body.if.end13_crit_edge
  %call2 = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end13.cond.end.thread_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end13.cond.end.thread_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread

if.end16:                                         ; preds = %if.then11
  call void @klist_iter_init(ptr noundef %containers, ptr noundef nonnull %iter) #6
  %call2075 = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool22.not76 = icmp eq ptr %call2075, null
  br i1 %tobool22.not76, label %if.end16.cond.end29.thread_crit_edge, label %if.end16.for.body32_crit_edge

if.end16.for.body32_crit_edge:                    ; preds = %if.end16
  br label %for.body32

if.end16.cond.end29.thread_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end29.thread

cond.end29.thread:                                ; preds = %if.end42.cond.end29.thread_crit_edge, %if.end16.cond.end29.thread_crit_edge
  call void @klist_iter_exit(ptr noundef nonnull %iter) #6
  br label %cleanup

for.body32:                                       ; preds = %if.end42.for.body32_crit_edge, %if.end16.for.body32_crit_edge
  %call2077 = phi ptr [ %call20, %if.end42.for.body32_crit_edge ], [ %call2075, %if.end16.for.body32_crit_edge ]
  %cmp33 = icmp eq ptr %call2077, %call274
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #8
  call void @klist_iter_exit(ptr noundef nonnull %iter) #6
  br label %cleanup

if.end35:                                         ; preds = %for.body32
  %parent37 = getelementptr inbounds %struct.internal_container, ptr %call2077, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent37 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent37, align 8
  %cmp38 = icmp eq ptr %8, %dev
  br i1 %cmp38, label %if.then39, label %if.end35.if.end42_crit_edge

if.end35.if.end42_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %classdev36 = getelementptr inbounds %struct.internal_container, ptr %call2077, i32 0, i32 2
  %call41 = call i32 %undo(ptr noundef %cont, ptr noundef %dev, ptr noundef %classdev36) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end35.if.end42_crit_edge
  %call20 = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end42.cond.end29.thread_crit_edge, label %if.end42.for.body32_crit_edge

if.end42.for.body32_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32

if.end42.cond.end29.thread_crit_edge:             ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end29.thread

cleanup:                                          ; preds = %if.then34, %cond.end29.thread, %if.then11.cleanup_crit_edge, %cond.end.thread, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call9, %if.then11.cleanup_crit_edge ], [ %call9, %if.then34 ], [ 0, %cond.end.thread ], [ %call9, %cond.end29.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @attribute_container_device_trigger(ptr noundef %dev, ptr nocapture noundef readonly %fn) local_unnamed_addr #2 align 64 {
entry:
  %iter = alloca %struct.klist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @attribute_container_mutex, i32 noundef 0) #6
  %cont.045 = load ptr, ptr @attribute_container_list, align 4
  %cmp.not46 = icmp eq ptr %cont.045, @attribute_container_list
  br i1 %cmp.not46, label %entry.for.end26_crit_edge, label %for.body.lr.ph

entry.for.end26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds %struct.klist_iter, ptr %iter, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %cont.047 = phi ptr [ %cont.045, %for.body.lr.ph ], [ %cont.0, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #6
  %1 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !37
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %0, align 4, !annotation !37
  %match = getelementptr inbounds %struct.attribute_container, ptr %cont.047, i32 0, i32 5
  %3 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %match, align 4
  %call = call i32 %4(ptr noundef %cont.047, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %for.body
  %flags.i = getelementptr inbounds %struct.attribute_container, ptr %cont.047, i32 0, i32 6
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not = icmp eq i32 %and.i, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = call i32 %fn(ptr noundef %cont.047, ptr noundef %dev, ptr noundef null) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %containers = getelementptr inbounds %struct.attribute_container, ptr %cont.047, i32 0, i32 1
  call void @klist_iter_init(ptr noundef %containers, ptr noundef nonnull %iter) #6
  %call742 = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool9.not43 = icmp eq ptr %call742, null
  br i1 %tobool9.not43, label %if.end5.cond.end.thread_crit_edge, label %if.end5.for.body15_crit_edge

if.end5.for.body15_crit_edge:                     ; preds = %if.end5
  br label %for.body15

if.end5.cond.end.thread_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %if.end20.cond.end.thread_crit_edge, %if.end5.cond.end.thread_crit_edge
  call void @klist_iter_exit(ptr noundef nonnull %iter) #6
  br label %cleanup

for.body15:                                       ; preds = %if.end20.for.body15_crit_edge, %if.end5.for.body15_crit_edge
  %call744 = phi ptr [ %call7, %if.end20.for.body15_crit_edge ], [ %call742, %if.end5.for.body15_crit_edge ]
  %parent = getelementptr inbounds %struct.internal_container, ptr %call744, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 8
  %cmp16 = icmp eq ptr %8, %dev
  br i1 %cmp16, label %if.then17, label %for.body15.if.end20_crit_edge

for.body15.if.end20_crit_edge:                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then17:                                        ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  %classdev = getelementptr inbounds %struct.internal_container, ptr %call744, i32 0, i32 2
  %call19 = call i32 %fn(ptr noundef %cont.047, ptr noundef %dev, ptr noundef %classdev) #6
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %for.body15.if.end20_crit_edge
  %call7 = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end20.cond.end.thread_crit_edge, label %if.end20.for.body15_crit_edge

if.end20.for.body15_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

if.end20.cond.end.thread_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.thread

cleanup:                                          ; preds = %cond.end.thread, %if.then3, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #6
  %9 = ptrtoint ptr %cont.047 to i32
  call void @__asan_load4_noabort(i32 %9)
  %cont.0 = load ptr, ptr %cont.047, align 4
  %cmp.not = icmp eq ptr %cont.0, @attribute_container_list
  br i1 %cmp.not, label %cleanup.for.end26_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.for.end26_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end26

for.end26:                                        ; preds = %cleanup.for.end26_crit_edge, %entry.for.end26_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @attribute_container_trigger(ptr noundef %dev, ptr nocapture noundef readonly %fn) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @attribute_container_mutex, i32 noundef 0) #6
  %cont.011 = load ptr, ptr @attribute_container_list, align 4
  %cmp.not12 = icmp eq ptr %cont.011, @attribute_container_list
  br i1 %cmp.not12, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cont.013 = phi ptr [ %cont.0, %for.inc.for.body_crit_edge ], [ %cont.011, %entry.for.body_crit_edge ]
  %match = getelementptr inbounds %struct.attribute_container, ptr %cont.013, i32 0, i32 5
  %0 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %match, align 4
  %call = tail call i32 %1(ptr noundef %cont.013, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 %fn(ptr noundef %cont.013, ptr noundef %dev) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %cont.013 to i32
  call void @__asan_load4_noabort(i32 %2)
  %cont.0 = load ptr, ptr %cont.013, align 4
  %cmp.not = icmp eq ptr %cont.0, @attribute_container_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @attribute_container_mutex) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attribute_container_add_attrs(ptr noundef %classdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cont.i = getelementptr i8, ptr %classdev, i32 -8
  %0 = ptrtoint ptr %cont.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cont.i, align 8
  %attrs1 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs1, align 4
  %tobool.not = icmp eq ptr %3, null
  %grp12 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %grp12 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grp12, align 4
  %tobool13.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.critedge, label %land.rhs

land.rhs:                                         ; preds = %entry
  br i1 %tobool13.not, label %land.rhs.if.end15_crit_edge, label %do.body5, !prof !35

land.rhs.if.end15_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body5:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/attribute_container.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

land.lhs.true.critedge:                           ; preds = %entry
  br i1 %tobool13.not, label %land.lhs.true.critedge.cleanup_crit_edge, label %land.lhs.true.critedge.if.end15_crit_edge

land.lhs.true.critedge.if.end15_crit_edge:        ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

land.lhs.true.critedge.cleanup_crit_edge:         ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.critedge.if.end15_crit_edge, %land.rhs.if.end15_crit_edge
  %grp16 = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %grp16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grp16, align 4
  %tobool17.not = icmp eq ptr %7, null
  br i1 %tobool17.not, label %for.cond.preheader, label %if.then18

for.cond.preheader:                               ; preds = %if.end15
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %tobool22.not50 = icmp eq ptr %9, null
  br i1 %tobool22.not50, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.do.body23_crit_edge

for.cond.preheader.do.body23_crit_edge:           ; preds = %for.cond.preheader
  br label %do.body23

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 @sysfs_create_group(ptr noundef %classdev, ptr noundef nonnull %7) #6
  br label %cleanup

for.cond:                                         ; preds = %do.body23
  %inc = add i32 %i.051, 1
  %arrayidx = getelementptr ptr, ptr %3, i32 %inc
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %for.cond.cleanup_crit_edge, label %for.cond.do.body23_crit_edge

for.cond.do.body23_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body23:                                        ; preds = %for.cond.do.body23_crit_edge, %for.cond.preheader.do.body23_crit_edge
  %12 = phi ptr [ %11, %for.cond.do.body23_crit_edge ], [ %9, %for.cond.preheader.do.body23_crit_edge ]
  %arrayidx52 = phi ptr [ %arrayidx, %for.cond.do.body23_crit_edge ], [ %3, %for.cond.preheader.do.body23_crit_edge ]
  %i.051 = phi i32 [ %inc, %for.cond.do.body23_crit_edge ], [ 0, %for.cond.preheader.do.body23_crit_edge ]
  %key = getelementptr inbounds %struct.attribute, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @attribute_container_add_attrs.__key, ptr %key, align 4
  %14 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx52, align 4
  %call28 = tail call i32 @device_create_file(ptr noundef %classdev, ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.cond, label %do.body23.cleanup_crit_edge

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body23.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then18, %for.cond.preheader.cleanup_crit_edge, %land.lhs.true.critedge.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.then18 ], [ 0, %land.lhs.true.critedge.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call28, %do.body23.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attribute_container_add_class_device_adapter(ptr nocapture noundef readnone %cont, ptr nocapture noundef readnone %dev, ptr noundef %classdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @device_add(ptr noundef %classdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.attribute_container_add_class_device.exit_crit_edge

entry.attribute_container_add_class_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_add_class_device.exit

if.end.i:                                         ; preds = %entry
  %cont.i.i.i = getelementptr i8, ptr %classdev, i32 -8
  %0 = ptrtoint ptr %cont.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cont.i.i.i, align 8
  %attrs1.i.i = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %attrs1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %grp12.i.i = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %grp12.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grp12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %land.lhs.true.critedge.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  br i1 %tobool13.not.i.i, label %for.cond.preheader.i.i, label %do.body5.i.i, !prof !35

do.body5.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/base/attribute_container.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 424, 0\0A.popsection", ""() #6, !srcloc !36
  unreachable

land.lhs.true.critedge.i.i:                       ; preds = %if.end.i
  br i1 %tobool13.not.i.i, label %land.lhs.true.critedge.i.i.attribute_container_add_class_device.exit_crit_edge, label %if.then18.i.i

land.lhs.true.critedge.i.i.attribute_container_add_class_device.exit_crit_edge: ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_add_class_device.exit

for.cond.preheader.i.i:                           ; preds = %land.rhs.i.i
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %tobool22.not50.i.i = icmp eq ptr %7, null
  br i1 %tobool22.not50.i.i, label %for.cond.preheader.i.i.attribute_container_add_class_device.exit_crit_edge, label %for.cond.preheader.i.i.do.body23.i.i_crit_edge

for.cond.preheader.i.i.do.body23.i.i_crit_edge:   ; preds = %for.cond.preheader.i.i
  br label %do.body23.i.i

for.cond.preheader.i.i.attribute_container_add_class_device.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_add_class_device.exit

if.then18.i.i:                                    ; preds = %land.lhs.true.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i.i = tail call i32 @sysfs_create_group(ptr noundef %classdev, ptr noundef nonnull %5) #6
  br label %attribute_container_add_class_device.exit

for.cond.i.i:                                     ; preds = %do.body23.i.i
  %inc.i.i = add i32 %i.051.i.i, 1
  %arrayidx.i.i = getelementptr ptr, ptr %3, i32 %inc.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %9, null
  br i1 %tobool22.not.i.i, label %for.cond.i.i.attribute_container_add_class_device.exit_crit_edge, label %for.cond.i.i.do.body23.i.i_crit_edge

for.cond.i.i.do.body23.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body23.i.i

for.cond.i.i.attribute_container_add_class_device.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_add_class_device.exit

do.body23.i.i:                                    ; preds = %for.cond.i.i.do.body23.i.i_crit_edge, %for.cond.preheader.i.i.do.body23.i.i_crit_edge
  %10 = phi ptr [ %9, %for.cond.i.i.do.body23.i.i_crit_edge ], [ %7, %for.cond.preheader.i.i.do.body23.i.i_crit_edge ]
  %arrayidx52.i.i = phi ptr [ %arrayidx.i.i, %for.cond.i.i.do.body23.i.i_crit_edge ], [ %3, %for.cond.preheader.i.i.do.body23.i.i_crit_edge ]
  %i.051.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.do.body23.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.do.body23.i.i_crit_edge ]
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @attribute_container_add_attrs.__key, ptr %key.i.i, align 4
  %12 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx52.i.i, align 4
  %call28.i.i = tail call i32 @device_create_file(ptr noundef %classdev, ptr noundef %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %for.cond.i.i, label %do.body23.i.i.attribute_container_add_class_device.exit_crit_edge

do.body23.i.i.attribute_container_add_class_device.exit_crit_edge: ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_add_class_device.exit

attribute_container_add_class_device.exit:        ; preds = %do.body23.i.i.attribute_container_add_class_device.exit_crit_edge, %for.cond.i.i.attribute_container_add_class_device.exit_crit_edge, %if.then18.i.i, %for.cond.preheader.i.i.attribute_container_add_class_device.exit_crit_edge, %land.lhs.true.critedge.i.i.attribute_container_add_class_device.exit_crit_edge, %entry.attribute_container_add_class_device.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.attribute_container_add_class_device.exit_crit_edge ], [ %call20.i.i, %if.then18.i.i ], [ 0, %land.lhs.true.critedge.i.i.attribute_container_add_class_device.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.attribute_container_add_class_device.exit_crit_edge ], [ %call28.i.i, %do.body23.i.i.attribute_container_add_class_device.exit_crit_edge ], [ 0, %for.cond.i.i.attribute_container_add_class_device.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @attribute_container_class_device_del(ptr noundef %classdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cont.i.i = getelementptr i8, ptr %classdev, i32 -8
  %0 = ptrtoint ptr %cont.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cont.i.i, align 8
  %attrs1.i = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %attrs1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs1.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %grp.i = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %grp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %grp.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.attribute_container_remove_attrs.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.attribute_container_remove_attrs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_remove_attrs.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %grp3.i = getelementptr inbounds %struct.attribute_container, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %grp3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %grp3.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %for.cond.preheader.i, label %if.then5.i

for.cond.preheader.i:                             ; preds = %if.end.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %tobool8.not22.i = icmp eq ptr %9, null
  br i1 %tobool8.not22.i, label %for.cond.preheader.i.attribute_container_remove_attrs.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.attribute_container_remove_attrs.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_remove_attrs.exit

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysfs_remove_group(ptr noundef %classdev, ptr noundef nonnull %7) #6
  br label %attribute_container_remove_attrs.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %10 = phi ptr [ %12, %for.body.i.for.body.i_crit_edge ], [ %9, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.023.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  tail call void @device_remove_file(ptr noundef %classdev, ptr noundef nonnull %10) #6
  %inc.i = add i32 %i.023.i, 1
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %inc.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool8.not.i = icmp eq ptr %12, null
  br i1 %tobool8.not.i, label %for.body.i.attribute_container_remove_attrs.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.attribute_container_remove_attrs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attribute_container_remove_attrs.exit

attribute_container_remove_attrs.exit:            ; preds = %for.body.i.attribute_container_remove_attrs.exit_crit_edge, %if.then5.i, %for.cond.preheader.i.attribute_container_remove_attrs.exit_crit_edge, %land.lhs.true.i.attribute_container_remove_attrs.exit_crit_edge
  tail call void @device_del(ptr noundef %classdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @attribute_container_find_class_device(ptr noundef %cont, ptr noundef readnone %dev) #2 align 64 {
entry:
  %iter = alloca %struct.klist_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter) #6
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter, align 4, !annotation !37
  %1 = getelementptr inbounds %struct.klist_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !37
  %containers = getelementptr inbounds %struct.attribute_container, ptr %cont, i32 0, i32 1
  call void @klist_iter_init(ptr noundef %containers, ptr noundef nonnull %iter) #6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %call = call ptr @klist_next(ptr noundef nonnull %iter) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.cond
  %parent = getelementptr inbounds %struct.internal_container, ptr %call, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %cmp3 = icmp eq ptr %4, %dev
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %classdev = getelementptr inbounds %struct.internal_container, ptr %call, i32 0, i32 2
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %cdev.0 = phi ptr [ %classdev, %if.then ], [ null, %for.cond.for.end_crit_edge ]
  call void @klist_iter_exit(ptr noundef nonnull %iter) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter) #6
  ret ptr %cdev.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @__ksymtab_attribute_container_classdev_to_container, !1, !"__ksymtab_attribute_container_classdev_to_container", i1 false, i1 false}
!1 = !{!"../drivers/base/attribute_container.c", i32 60, i32 1}
!2 = !{ptr @__ksymtab_attribute_container_register, !3, !"__ksymtab_attribute_container_register", i1 false, i1 false}
!3 = !{!"../drivers/base/attribute_container.c", i32 85, i32 1}
!4 = !{ptr @__ksymtab_attribute_container_unregister, !5, !"__ksymtab_attribute_container_unregister", i1 false, i1 false}
!5 = !{!"../drivers/base/attribute_container.c", i32 109, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/base/attribute_container.c", i32 160, i32 4}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @attribute_container_add_device._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @attribute_container_add_device._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/base/attribute_container.c", i32 169, i32 31}
!16 = !{ptr @attribute_container_add_attrs.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/base/attribute_container.c", i32 433, i32 3}
!18 = !{ptr @__ksymtab_attribute_container_find_class_device, !19, !"__ksymtab_attribute_container_find_class_device", i1 false, i1 false}
!19 = !{!"../drivers/base/attribute_container.c", i32 548, i32 1}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/base/attribute_container.c", i32 64, i32 8}
!22 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @attribute_container_mutex, !21, !"attribute_container_mutex", i1 false, i1 false}
!24 = !{ptr @attribute_container_list, !25, !"attribute_container_list", i1 false, i1 false}
!25 = !{!"../drivers/base/attribute_container.c", i32 62, i32 8}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{i64 2152707494, i64 2152707993, i64 2152707531, i64 2152707587, i64 2152707621, i64 2152707645, i64 2152707686, i64 2152707707, i64 2152707735, i64 2152707769}
!37 = !{!"auto-init"}
!38 = !{!"branch_weights", i32 1, i32 2000}
