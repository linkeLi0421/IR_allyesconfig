; ModuleID = '/llk/IR_all_yes/drivers/hwtracing/coresight/coresight-sysfs.c_pt.bc'
source_filename = "../drivers/hwtracing/coresight/coresight-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+coresight_add_sysfs_link\22, \22a\22\09"
module asm "\09.weak\09__crc_coresight_add_sysfs_link\09\09\09\09"
module asm "\09.long\09__crc_coresight_add_sysfs_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_coresight_add_sysfs_link:\09\09\09\09\09"
module asm "\09.asciz \09\22coresight_add_sysfs_link\22\09\09\09\09\09"
module asm "__kstrtabns_coresight_add_sysfs_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+coresight_remove_sysfs_link\22, \22a\22\09"
module asm "\09.weak\09__crc_coresight_remove_sysfs_link\09\09\09\09"
module asm "\09.long\09__crc_coresight_remove_sysfs_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_coresight_remove_sysfs_link:\09\09\09\09\09"
module asm "\09.asciz \09\22coresight_remove_sysfs_link\22\09\09\09\09\09"
module asm "__kstrtabns_coresight_remove_sysfs_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.coresight_device = type { ptr, i32, %union.coresight_dev_subtype, ptr, %struct.csdev_access, %struct.device, ptr, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.list_head, %struct.list_head, %struct.spinlock, ptr }
%union.coresight_dev_subtype = type { %struct.anon.98 }
%struct.anon.98 = type { i32, i32 }
%struct.csdev_access = type { i8, %union.anon.99 }
%union.anon.99 = type { %struct.anon.100 }
%struct.anon.100 = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.coresight_sysfs_link = type { ptr, ptr, ptr, ptr }
%struct.coresight_connection = type { i32, i32, ptr, ptr, ptr }

@coresight_conns_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.2, ptr null, ptr null, ptr @coresight_conns_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_coresight_add_sysfs_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_coresight_add_sysfs_link = external dso_local constant [0 x i8], align 1
@__ksymtab_coresight_add_sysfs_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @coresight_add_sysfs_link to i32), ptr @__kstrtab_coresight_add_sysfs_link, ptr @__kstrtabns_coresight_add_sysfs_link }, section "___ksymtab_gpl+coresight_add_sysfs_link", align 4
@__kstrtab_coresight_remove_sysfs_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_coresight_remove_sysfs_link = external dso_local constant [0 x i8], align 1
@__ksymtab_coresight_remove_sysfs_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @coresight_remove_sysfs_link to i32), ptr @__kstrtab_coresight_remove_sysfs_link, ptr @__kstrtabns_coresight_remove_sysfs_link }, section "___ksymtab_gpl+coresight_remove_sysfs_link", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"out:%d\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"in:%d\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"connections\00", [20 x i8] zeroinitializer }, align 32
@coresight_conns_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_nr_links, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_nr_links = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @nr_links_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nr_links\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"coresight_conns_group\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 31, i32 31 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 153, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 157, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 33, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"coresight_conns_attrs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 26, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"dev_attr_nr_links\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 24, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [49 x i8] c"../drivers/hwtracing/coresight/coresight-sysfs.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 22, i32 22 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_coresight_add_sysfs_link, ptr @__ksymtab_coresight_remove_sysfs_link, ptr @coresight_conns_group, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @coresight_conns_attrs, ptr @dev_attr_nr_links, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_conns_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coresight_conns_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_nr_links to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coresight_create_conns_sysfs_group(ptr noundef %csdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %csdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  %call = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @coresight_conns_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %has_conns_grp = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 14
  %0 = ptrtoint ptr %has_conns_grp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %has_conns_grp, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coresight_remove_conns_sysfs_group(ptr noundef %csdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %csdev, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end:                                           ; preds = %entry
  %has_conns_grp = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 14
  %0 = ptrtoint ptr %has_conns_grp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_conns_grp, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.coresight_device, ptr %csdev, i32 0, i32 5
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @coresight_conns_group) #4
  %2 = ptrtoint ptr %has_conns_grp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %has_conns_grp, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coresight_add_sysfs_link(ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %target = getelementptr inbounds %struct.coresight_sysfs_link, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %orig_name = getelementptr inbounds %struct.coresight_sysfs_link, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %orig_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_name, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %target_name = getelementptr inbounds %struct.coresight_sysfs_link, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %target_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target_name, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end8

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false5
  %has_conns_grp = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %has_conns_grp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_conns_grp, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %lor.lhs.false11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end8
  %has_conns_grp13 = getelementptr inbounds %struct.coresight_device, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %has_conns_grp13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %has_conns_grp13, align 8, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  br i1 %tobool14.not, label %lor.lhs.false11.cleanup_crit_edge, label %if.end16

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %lor.lhs.false11
  %dev = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5
  %12 = load ptr, ptr @coresight_conns_group, align 4
  %dev19 = getelementptr inbounds %struct.coresight_device, ptr %3, i32 0, i32 5
  %call = tail call i32 @sysfs_add_link_to_group(ptr noundef %dev, ptr noundef %12, ptr noundef %dev19, ptr noundef nonnull %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end24, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %13 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %target, align 4
  %dev26 = getelementptr inbounds %struct.coresight_device, ptr %14, i32 0, i32 5
  %15 = load ptr, ptr @coresight_conns_group, align 4
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 4
  %dev29 = getelementptr inbounds %struct.coresight_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %target_name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %target_name, align 4
  %call32 = tail call i32 @sysfs_add_link_to_group(ptr noundef %dev26, ptr noundef %15, ptr noundef %dev29, ptr noundef %19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %dev36 = getelementptr inbounds %struct.coresight_device, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr @coresight_conns_group, align 4
  %23 = ptrtoint ptr %orig_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %orig_name, align 4
  tail call void @sysfs_remove_link_from_group(ptr noundef %dev36, ptr noundef %22, ptr noundef %24) #4
  br label %cleanup

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  %nr_links = getelementptr inbounds %struct.coresight_device, ptr %21, i32 0, i32 13
  %25 = ptrtoint ptr %nr_links to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_links, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %nr_links, align 4
  %27 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %target, align 4
  %nr_links41 = getelementptr inbounds %struct.coresight_device, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %nr_links41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_links41, align 4
  %inc42 = add i32 %30, 1
  store i32 %inc42, ptr %nr_links41, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then34, %if.end16.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ], [ %call, %if.end16.cleanup_crit_edge ], [ 0, %if.else ], [ %call32, %if.then34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_link_to_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coresight_remove_sysfs_link(ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %lor.lhs.false

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %target = getelementptr inbounds %struct.coresight_sysfs_link, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %orig_name = getelementptr inbounds %struct.coresight_sysfs_link, ptr %info, i32 0, i32 1
  %4 = ptrtoint ptr %orig_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %orig_name, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false3.return_crit_edge, label %lor.lhs.false5

lor.lhs.false3.return_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %target_name = getelementptr inbounds %struct.coresight_sysfs_link, ptr %info, i32 0, i32 3
  %6 = ptrtoint ptr %target_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %target_name, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %lor.lhs.false5.return_crit_edge, label %if.end8

lor.lhs.false5.return_crit_edge:                  ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end8:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.coresight_device, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr @coresight_conns_group, align 4
  tail call void @sysfs_remove_link_from_group(ptr noundef %dev, ptr noundef %8, ptr noundef nonnull %5) #4
  %9 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %target, align 4
  %dev12 = getelementptr inbounds %struct.coresight_device, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr @coresight_conns_group, align 4
  %12 = ptrtoint ptr %target_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %target_name, align 4
  tail call void @sysfs_remove_link_from_group(ptr noundef %dev12, ptr noundef %11, ptr noundef %13) #4
  %14 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %info, align 4
  %nr_links = getelementptr inbounds %struct.coresight_device, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %nr_links to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_links, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %nr_links, align 4
  %18 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %target, align 4
  %nr_links17 = getelementptr inbounds %struct.coresight_device, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %nr_links17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_links17, align 4
  %dec18 = add i32 %21, -1
  store i32 %dec18, ptr %nr_links17, align 4
  br label %return

return:                                           ; preds = %if.end8, %lor.lhs.false5.return_crit_edge, %lor.lhs.false3.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @coresight_make_links(ptr noundef %orig, ptr nocapture noundef %conn, ptr noundef %target) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.coresight_device, ptr %orig, i32 0, i32 5
  %0 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %conn, align 4
  %call = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.coresight_device, ptr %target, i32 0, i32 5
  %child_port = getelementptr inbounds %struct.coresight_connection, ptr %conn, i32 0, i32 1
  %2 = ptrtoint ptr %child_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %child_port, align 4
  %call2 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.1, i32 noundef %3) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #4
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %orig, ptr %call.i, align 4
  %target12 = getelementptr inbounds %struct.coresight_sysfs_link, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %target12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %target, ptr %target12, align 4
  %orig_name = getelementptr inbounds %struct.coresight_sysfs_link, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %orig_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %orig_name, align 4
  %target_name = getelementptr inbounds %struct.coresight_sysfs_link, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %target_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2, ptr %target_name, align 4
  %call13 = tail call i32 @coresight_add_sysfs_link(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %link17 = getelementptr inbounds %struct.coresight_connection, ptr %conn, i32 0, i32 4
  %8 = ptrtoint ptr %link17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %link17, align 4
  %child_dev = getelementptr inbounds %struct.coresight_connection, ptr %conn, i32 0, i32 3
  %9 = ptrtoint ptr %child_dev to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %target, ptr %child_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ %call13, %if.end10.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @coresight_remove_links(ptr noundef %orig, ptr nocapture noundef %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %orig, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %link = getelementptr inbounds %struct.coresight_connection, ptr %conn, i32 0, i32 4
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.return_crit_edge, label %if.end.i

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.coresight_remove_sysfs_link.exit_crit_edge, label %lor.lhs.false.i

if.end.i.coresight_remove_sysfs_link.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %coresight_remove_sysfs_link.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %target.i = getelementptr inbounds %struct.coresight_sysfs_link, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %target.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.coresight_remove_sysfs_link.exit_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.coresight_remove_sysfs_link.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %coresight_remove_sysfs_link.exit

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %orig_name.i = getelementptr inbounds %struct.coresight_sysfs_link, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %orig_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %orig_name.i, align 4
  %tobool4.not.i = icmp eq ptr %7, null
  br i1 %tobool4.not.i, label %lor.lhs.false3.i.coresight_remove_sysfs_link.exit_crit_edge, label %lor.lhs.false5.i

lor.lhs.false3.i.coresight_remove_sysfs_link.exit_crit_edge: ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %coresight_remove_sysfs_link.exit

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false3.i
  %target_name.i = getelementptr inbounds %struct.coresight_sysfs_link, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %target_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %target_name.i, align 4
  %tobool6.not.i = icmp eq ptr %9, null
  br i1 %tobool6.not.i, label %lor.lhs.false5.i.coresight_remove_sysfs_link.exit_crit_edge, label %if.end8.i

lor.lhs.false5.i.coresight_remove_sysfs_link.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %coresight_remove_sysfs_link.exit

if.end8.i:                                        ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.coresight_device, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr @coresight_conns_group, align 4
  tail call void @sysfs_remove_link_from_group(ptr noundef %dev.i, ptr noundef %10, ptr noundef nonnull %7) #4
  %11 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %target.i, align 4
  %dev12.i = getelementptr inbounds %struct.coresight_device, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr @coresight_conns_group, align 4
  %14 = ptrtoint ptr %target_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %target_name.i, align 4
  tail call void @sysfs_remove_link_from_group(ptr noundef %dev12.i, ptr noundef %13, ptr noundef %15) #4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %nr_links.i = getelementptr inbounds %struct.coresight_device, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %nr_links.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_links.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %nr_links.i, align 4
  %20 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %target.i, align 4
  %nr_links17.i = getelementptr inbounds %struct.coresight_device, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %nr_links17.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_links17.i, align 4
  %dec18.i = add i32 %23, -1
  store i32 %dec18.i, ptr %nr_links17.i, align 4
  br label %coresight_remove_sysfs_link.exit

coresight_remove_sysfs_link.exit:                 ; preds = %if.end8.i, %lor.lhs.false5.i.coresight_remove_sysfs_link.exit_crit_edge, %lor.lhs.false3.i.coresight_remove_sysfs_link.exit_crit_edge, %lor.lhs.false.i.coresight_remove_sysfs_link.exit_crit_edge, %if.end.i.coresight_remove_sysfs_link.exit_crit_edge
  %child_dev = getelementptr inbounds %struct.coresight_connection, ptr %conn, i32 0, i32 3
  %24 = ptrtoint ptr %child_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %child_dev, align 4
  %dev = getelementptr inbounds %struct.coresight_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %link, align 4
  %target_name = getelementptr inbounds %struct.coresight_sysfs_link, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %target_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %target_name, align 4
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %29) #4
  %dev4 = getelementptr inbounds %struct.coresight_device, ptr %orig, i32 0, i32 5
  %30 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %link, align 4
  %orig_name = getelementptr inbounds %struct.coresight_sysfs_link, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %orig_name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %orig_name, align 4
  tail call void @devm_kfree(ptr noundef %dev4, ptr noundef %33) #4
  %34 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %link, align 4
  tail call void @devm_kfree(ptr noundef %dev4, ptr noundef %35) #4
  %36 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %link, align 4
  %37 = ptrtoint ptr %child_dev to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %child_dev, align 4
  br label %return

return:                                           ; preds = %coresight_remove_sysfs_link.exit, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nr_links_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_links = getelementptr i8, ptr %dev, i32 948
  %0 = ptrtoint ptr %nr_links to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_links, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @__ksymtab_coresight_add_sysfs_link, !1, !"__ksymtab_coresight_add_sysfs_link", i1 false, i1 false}
!1 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 105, i32 1}
!2 = !{ptr @__ksymtab_coresight_remove_sysfs_link, !3, !"__ksymtab_coresight_remove_sysfs_link", i1 false, i1 false}
!3 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 126, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 153, i32 11}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 157, i32 10}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 33, i32 10}
!10 = !{ptr @coresight_conns_group, !11, !"coresight_conns_group", i1 false, i1 false}
!11 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 31, i32 31}
!12 = !{ptr @coresight_conns_attrs, !13, !"coresight_conns_attrs", i1 false, i1 false}
!13 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 26, i32 26}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 24, i32 8}
!16 = !{ptr @dev_attr_nr_links, !15, !"dev_attr_nr_links", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwtracing/coresight/coresight-sysfs.c", i32 22, i32 22}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{i8 0, i8 2}
