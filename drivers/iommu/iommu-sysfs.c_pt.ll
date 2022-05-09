; ModuleID = '/llk/IR_all_yes/drivers/iommu/iommu-sysfs.c_pt.bc'
source_filename = "../drivers/iommu/iommu-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+iommu_device_sysfs_add\22, \22a\22\09"
module asm "\09.weak\09__crc_iommu_device_sysfs_add\09\09\09\09"
module asm "\09.long\09__crc_iommu_device_sysfs_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_sysfs_add:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_sysfs_add\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_sysfs_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iommu_device_sysfs_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_iommu_device_sysfs_remove\09\09\09\09"
module asm "\09.long\09__crc_iommu_device_sysfs_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_sysfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_sysfs_remove\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_sysfs_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iommu_device_link\22, \22a\22\09"
module asm "\09.weak\09__crc_iommu_device_link\09\09\09\09"
module asm "\09.long\09__crc_iommu_device_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_link:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_link\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+iommu_device_unlink\22, \22a\22\09"
module asm "\09.weak\09__crc_iommu_device_unlink\09\09\09\09"
module asm "\09.long\09__crc_iommu_device_unlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iommu_device_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22iommu_device_unlink\22\09\09\09\09\09"
module asm "__kstrtabns_iommu_device_unlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.iommu_device = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }

@__initcall__kmod_iommu_sysfs__228_47_iommu_dev_init2 = internal global ptr @iommu_dev_init, section ".initcall2.init", align 4
@iommu_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.1, ptr null, ptr null, ptr @dev_groups, ptr null, ptr null, ptr null, ptr null, ptr @release_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_iommu_device_sysfs_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_sysfs_add = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_sysfs_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_sysfs_add to i32), ptr @__kstrtab_iommu_device_sysfs_add, ptr @__kstrtabns_iommu_device_sysfs_add }, section "___ksymtab_gpl+iommu_device_sysfs_add", align 4
@__kstrtab_iommu_device_sysfs_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_sysfs_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_sysfs_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_sysfs_remove to i32), ptr @__kstrtab_iommu_device_sysfs_remove, ptr @__kstrtabns_iommu_device_sysfs_remove }, section "___ksymtab_gpl+iommu_device_sysfs_remove", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iommu\00", [26 x i8] zeroinitializer }, align 32
@__kstrtab_iommu_device_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_link = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_link to i32), ptr @__kstrtab_iommu_device_link, ptr @__kstrtabns_iommu_device_link }, section "___ksymtab_gpl+iommu_device_link", align 4
@__kstrtab_iommu_device_unlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_iommu_device_unlink = external dso_local constant [0 x i8], align 1
@__ksymtab_iommu_device_unlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iommu_device_unlink to i32), ptr @__kstrtab_iommu_device_unlink, ptr @__kstrtabns_iommu_device_unlink }, section "___ksymtab_gpl+iommu_device_unlink", align 4
@iommu_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @devices_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@devices_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @devices_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@devices_attr = internal global { [1 x ptr], [28 x i8] } zeroinitializer, align 32
@___asan_gen_.2 = private unnamed_addr constant [12 x i8] c"iommu_class\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 37, i32 21 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 113, i32 51 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 118, i32 65 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 45, i32 9 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"dev_groups\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 27, i32 38 }
@___asan_gen_.17 = private unnamed_addr constant [19 x i8] c"devices_attr_group\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 22, i32 37 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"devices_attr\00", align 1
@___asan_gen_.21 = private constant [31 x i8] c"../drivers/iommu/iommu-sysfs.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 18, i32 26 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__initcall__kmod_iommu_sysfs__228_47_iommu_dev_init2, ptr @__ksymtab_iommu_device_link, ptr @__ksymtab_iommu_device_sysfs_add, ptr @__ksymtab_iommu_device_sysfs_remove, ptr @__ksymtab_iommu_device_unlink, ptr @iommu_class, ptr @.str, ptr @.str.1, ptr @iommu_dev_init.__key, ptr @dev_groups, ptr @devices_attr_group, ptr @devices_attr], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iommu_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devices_attr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iommu_dev_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @iommu_class, ptr noundef nonnull @iommu_dev_init.__key) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iommu_device_sysfs_add(ptr noundef %iommu, ptr noundef %parent, ptr noundef %groups, ptr noundef %fmt, ...) #1 align 64 {
entry:
  %vargs = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vargs) #6
  %0 = ptrtoint ptr %vargs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %vargs, align 4, !annotation !33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 928) #9
  %dev = getelementptr inbounds %struct.iommu_device, ptr %iommu, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %dev, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i) #6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %class = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @iommu_class, ptr %class, align 4
  %6 = load ptr, ptr %dev, align 4
  %parent5 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %parent5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %parent, ptr %parent5, align 8
  %8 = load ptr, ptr %dev, align 4
  %groups7 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 34
  %9 = ptrtoint ptr %groups7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %groups, ptr %groups7, align 8
  call void @llvm.va_start(ptr nonnull %vargs)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %vargs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.0.load = load i32, ptr %vargs, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call9 = call i32 @kobject_set_name_vargs(ptr noundef %11, ptr noundef %fmt, [1 x i32] %.fca.0.insert) #6
  call void @llvm.va_end(ptr nonnull %vargs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end12:                                         ; preds = %if.end
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call14 = call i32 @device_add(ptr noundef %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.error_crit_edge

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %iommu, ptr %driver_data.i, align 4
  br label %cleanup

error:                                            ; preds = %if.end12.error_crit_edge, %if.end.error_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end.error_crit_edge ], [ %call14, %if.end12.error_crit_edge ]
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  call void @put_device(ptr noundef %19) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vargs) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name_vargs(ptr noundef, ptr noundef, [1 x i32]) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iommu_device_sysfs_remove(ptr nocapture noundef %iommu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.iommu_device, ptr %iommu, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i, align 4
  %3 = load ptr, ptr %dev, align 4
  tail call void @device_unregister(ptr noundef %3) #6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dev, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iommu_device_link(ptr noundef readonly %iommu, ptr noundef %link) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iommu, null
  %cmp.i = icmp ugt ptr %iommu, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.iommu_device, ptr %iommu, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %link, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call i32 @sysfs_add_link_to_group(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %link, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %dev_name.exit
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call10 = tail call i32 @sysfs_create_link_nowarn(ptr noundef %link, ptr noundef %7, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end6.cleanup_crit_edge, label %if.then12

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i28 = icmp eq ptr %11, null
  br i1 %tobool.not.i28, label %if.end.i29, label %if.then12.dev_name.exit31_crit_edge

if.then12.dev_name.exit31_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit31

if.end.i29:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %link, align 4
  br label %dev_name.exit31

dev_name.exit31:                                  ; preds = %if.end.i29, %if.then12.dev_name.exit31_crit_edge
  %retval.0.i30 = phi ptr [ %13, %if.end.i29 ], [ %11, %if.then12.dev_name.exit31_crit_edge ]
  tail call void @sysfs_remove_link_from_group(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef %retval.0.i30) #6
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit31, %if.end6.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %call3, %dev_name.exit.cleanup_crit_edge ], [ %call10, %dev_name.exit31 ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_link_to_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iommu_device_unlink(ptr noundef readonly %iommu, ptr noundef %link) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %iommu, null
  %cmp.i = icmp ugt ptr %iommu, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @sysfs_remove_link(ptr noundef %link, ptr noundef nonnull @.str.1) #6
  %dev = getelementptr inbounds %struct.iommu_device, ptr %iommu, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %link, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.end.dev_name.exit_crit_edge ]
  tail call void @sysfs_remove_link_from_group(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %retval.0.i) #6
  br label %return

return:                                           ; preds = %dev_name.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_device(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @__initcall__kmod_iommu_sysfs__228_47_iommu_dev_init2, !1, !"__initcall__kmod_iommu_sysfs__228_47_iommu_dev_init2", i1 false, i1 false}
!1 = !{!"../drivers/iommu/iommu-sysfs.c", i32 47, i32 1}
!2 = !{ptr @__ksymtab_iommu_device_sysfs_add, !3, !"__ksymtab_iommu_device_sysfs_add", i1 false, i1 false}
!3 = !{!"../drivers/iommu/iommu-sysfs.c", i32 90, i32 1}
!4 = !{ptr @__ksymtab_iommu_device_sysfs_remove, !5, !"__ksymtab_iommu_device_sysfs_remove", i1 false, i1 false}
!5 = !{!"../drivers/iommu/iommu-sysfs.c", i32 98, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/iommu/iommu-sysfs.c", i32 113, i32 51}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/iommu/iommu-sysfs.c", i32 118, i32 65}
!10 = !{ptr @__ksymtab_iommu_device_link, !11, !"__ksymtab_iommu_device_link", i1 false, i1 false}
!11 = !{!"../drivers/iommu/iommu-sysfs.c", i32 125, i32 1}
!12 = !{ptr @__ksymtab_iommu_device_unlink, !13, !"__ksymtab_iommu_device_unlink", i1 false, i1 false}
!13 = !{!"../drivers/iommu/iommu-sysfs.c", i32 135, i32 1}
!14 = !{ptr @iommu_dev_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iommu/iommu-sysfs.c", i32 45, i32 9}
!16 = !{ptr @iommu_class, !17, !"iommu_class", i1 false, i1 false}
!17 = !{!"../drivers/iommu/iommu-sysfs.c", i32 37, i32 21}
!18 = !{ptr @dev_groups, !19, !"dev_groups", i1 false, i1 false}
!19 = !{!"../drivers/iommu/iommu-sysfs.c", i32 27, i32 38}
!20 = !{ptr @devices_attr_group, !21, !"devices_attr_group", i1 false, i1 false}
!21 = !{!"../drivers/iommu/iommu-sysfs.c", i32 22, i32 37}
!22 = !{ptr @devices_attr, !23, !"devices_attr", i1 false, i1 false}
!23 = !{!"../drivers/iommu/iommu-sysfs.c", i32 18, i32 26}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{!"auto-init"}
