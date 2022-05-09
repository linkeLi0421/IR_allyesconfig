; ModuleID = '/llk/IR_all_yes/drivers/vfio/mdev/mdev_sysfs.c_pt.bc'
source_filename = "../drivers/vfio/mdev/mdev_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mdev_type_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.mdev_parent = type { ptr, ptr, %struct.kref, %struct.list_head, ptr, %struct.list_head, %struct.rw_semaphore }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mdev_parent_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mdev_type = type { %struct.kobject, ptr, ptr, %struct.list_head, i32 }
%struct.mdev_device = type { %struct.device, %struct.guid_t, ptr, %struct.list_head, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.guid_t = type { [16 x i8] }

@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mdev_supported_types\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdev_type\00", [22 x i8] zeroinitializer }, align 32
@mdev_device_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_remove, ptr null], [24 x i8] zeroinitializer }, align 32
@mdev_type_attr_create = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.2, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @create_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"create\00", [25 x i8] zeroinitializer }, align 32
@add_mdev_supported_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: Type name empty!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"add_mdev_supported_type\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/vfio/mdev/mdev_sysfs.c\00", [33 x i8] zeroinitializer }, align 32
@add_mdev_supported_type._entry_ptr = internal global ptr @add_mdev_supported_type._entry, section ".printk_index", align 4
@mdev_type_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @mdev_type_release, ptr @mdev_type_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%s\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mdev_type_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @mdev_type_attr_show, ptr @mdev_type_attr_store }, [24 x i8] zeroinitializer }, align 32
@mdev_type_release.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdev\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mdev_type_release\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Releasing group %s\0A\00", [44 x i8] zeroinitializer }, align 32
@dev_attr_remove = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @remove_store }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 208, i32 48 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 270, i32 45 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"mdev_device_attrs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 255, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"mdev_type_attr_create\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 78, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 104, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"mdev_type_ktype\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 90, i32 25 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 119, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 130, i32 46 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"mdev_type_sysfs_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 46, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 84, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"dev_attr_remove\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [34 x i8] c"../drivers/vfio/mdev/mdev_sysfs.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 253, i32 8 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @add_mdev_supported_type._entry, ptr @add_mdev_supported_type._entry_ptr, ptr @.str, ptr @.str.1, ptr @mdev_device_attrs, ptr @mdev_type_attr_create, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mdev_type_ktype, ptr @.str.6, ptr @.str.7, ptr @mdev_type_sysfs_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dev_attr_remove, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_device_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_create to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @add_mdev_supported_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_remove to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @parent_remove_sysfs_files(ptr noundef readonly %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type_list = getelementptr inbounds %struct.mdev_parent, ptr %parent, i32 0, i32 5
  %0 = ptrtoint ptr %type_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type_list, align 4
  %cmp.not24 = icmp eq ptr %1, %type_list
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %type.0 = getelementptr i8, ptr %.pn.in25, i32 -144
  %2 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in25, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %parent.i = getelementptr i8, ptr %.pn.in25, i32 -4
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %ops.i = getelementptr inbounds %struct.mdev_parent, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %supported_type_groups.i = getelementptr inbounds %struct.mdev_parent_ops, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %supported_type_groups.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %supported_type_groups.i, align 4
  %type_group_id.i = getelementptr i8, ptr %.pn.in25, i32 8
  %17 = ptrtoint ptr %type_group_id.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type_group_id.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %attrs.i = getelementptr inbounds %struct.attribute_group, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %attrs.i, align 4
  tail call void @sysfs_remove_files(ptr noundef %type.0, ptr noundef %22) #6
  %devices_kobj.i = getelementptr i8, ptr %.pn.in25, i32 -8
  %23 = ptrtoint ptr %devices_kobj.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %devices_kobj.i, align 4
  tail call void @kobject_put(ptr noundef %24) #6
  tail call void @sysfs_remove_file_ns(ptr noundef %type.0, ptr noundef nonnull @mdev_type_attr_create, ptr noundef null) #6
  tail call void @kobject_del(ptr noundef %type.0) #6
  tail call void @kobject_put(ptr noundef %type.0) #6
  %cmp.not = icmp eq ptr %.pn, %type_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent, align 4
  %ops = getelementptr inbounds %struct.mdev_parent, ptr %parent, i32 0, i32 1
  %27 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops, align 4
  %dev_attr_groups = getelementptr inbounds %struct.mdev_parent_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev_attr_groups to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_attr_groups, align 4
  tail call void @sysfs_remove_groups(ptr noundef %26, ptr noundef %30) #6
  %mdev_types_kset = getelementptr inbounds %struct.mdev_parent, ptr %parent, i32 0, i32 4
  %31 = ptrtoint ptr %mdev_types_kset to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdev_types_kset, align 4
  tail call void @kset_unregister(ptr noundef %32) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @parent_create_sysfs_files(ptr noundef %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str, ptr noundef null, ptr noundef %1) #6
  %mdev_types_kset = getelementptr inbounds %struct.mdev_parent, ptr %parent, i32 0, i32 4
  %2 = ptrtoint ptr %mdev_types_kset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mdev_types_kset, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %type_list = getelementptr inbounds %struct.mdev_parent, ptr %parent, i32 0, i32 5
  %3 = ptrtoint ptr %type_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %type_list, ptr %type_list, align 4
  %prev.i = getelementptr inbounds %struct.mdev_parent, ptr %parent, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %type_list, ptr %prev.i, align 4
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %ops = getelementptr inbounds %struct.mdev_parent, ptr %parent, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %dev_attr_groups = getelementptr inbounds %struct.mdev_parent_ops, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev_attr_groups to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_attr_groups, align 4
  %call4 = tail call i32 @sysfs_create_groups(ptr noundef %6, ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.create_err_crit_edge

if.end.create_err_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_err

if.end7:                                          ; preds = %if.end
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops, align 4
  %supported_type_groups53.i = getelementptr inbounds %struct.mdev_parent_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %supported_type_groups53.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %supported_type_groups53.i, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %tobool.not54.i = icmp eq ptr %16, null
  br i1 %tobool.not54.i, label %if.end7.cleanup_crit_edge, label %for.body.lr.ph.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end7
  %ref.i.i.i = getelementptr inbounds %struct.mdev_parent, ptr %parent, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %17 = phi ptr [ %16, %for.body.lr.ph.i ], [ %74, %for.inc21.i.for.body.i_crit_edge ]
  %i.055.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc21.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #9
  br label %if.then.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 156) #10
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end6.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %21 = ptrtoint ptr %mdev_types_kset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mdev_types_kset, align 4
  %kset.i.i = getelementptr inbounds %struct.kobject, ptr %call7.i.i.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %kset.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %kset.i.i, align 8
  %parent7.i.i = getelementptr inbounds %struct.mdev_type, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %parent7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %parent, ptr %parent7.i.i, align 4
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %ref.i.i.i, i32 1, i32 3, i32 1) #6
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i.i.i, ptr %ref.i.i.i, i32 1, ptr elementtype(i32) %ref.i.i.i) #6, !srcloc !40
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end6.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !41

if.end6.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end6.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.mdev_get_parent.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !42

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.mdev_get_parent.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdev_get_parent.exit.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end6.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end6.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #6
  br label %mdev_get_parent.exit.i.i

mdev_get_parent.exit.i.i:                         ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.mdev_get_parent.exit.i.i_crit_edge
  %type_group_id8.i.i = getelementptr inbounds %struct.mdev_type, ptr %call7.i.i.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %type_group_id8.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.055.i, ptr %type_group_id8.i.i, align 8
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 4
  %call10.i.i = tail call ptr @dev_driver_string(ptr noundef %29) #6
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %17, align 4
  %call12.i.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @mdev_type_ktype, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef %call10.i.i, ptr noundef %31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.end17.i.i, label %mdev_get_parent.exit.i.i.add_mdev_supported_type.exit.sink.split.i_crit_edge

mdev_get_parent.exit.i.i.add_mdev_supported_type.exit.sink.split.i_crit_edge: ; preds = %mdev_get_parent.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_mdev_supported_type.exit.sink.split.i

if.end17.i.i:                                     ; preds = %mdev_get_parent.exit.i.i
  %call.i.i.i = tail call i32 @sysfs_create_file_ns(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @mdev_type_attr_create, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool20.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.end17.i.i.attr_create_failed.i.i_crit_edge

if.end17.i.i.attr_create_failed.i.i_crit_edge:    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attr_create_failed.i.i

if.end22.i.i:                                     ; preds = %if.end17.i.i
  %call24.i.i = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.7, ptr noundef nonnull %call7.i.i.i.i) #6
  %devices_kobj.i.i = getelementptr inbounds %struct.mdev_type, ptr %call7.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %devices_kobj.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call24.i.i, ptr %devices_kobj.i.i, align 8
  %tobool26.not.i.i = icmp eq ptr %call24.i.i, null
  br i1 %tobool26.not.i.i, label %if.end22.i.i.attr_devices_failed.i.i_crit_edge, label %if.end28.i.i

if.end22.i.i.attr_devices_failed.i.i_crit_edge:   ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %attr_devices_failed.i.i

if.end28.i.i:                                     ; preds = %if.end22.i.i
  %attrs.i.i = getelementptr inbounds %struct.attribute_group, ptr %17, i32 0, i32 3
  %33 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %attrs.i.i, align 4
  %call30.i.i = tail call i32 @sysfs_create_files(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %34) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end28.i.i.add_mdev_supported_type.exit.i_crit_edge, label %if.then32.i.i

if.end28.i.i.add_mdev_supported_type.exit.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_mdev_supported_type.exit.i

if.then32.i.i:                                    ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %devices_kobj.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %devices_kobj.i.i, align 8
  tail call void @kobject_put(ptr noundef %36) #6
  br label %attr_devices_failed.i.i

attr_devices_failed.i.i:                          ; preds = %if.then32.i.i, %if.end22.i.i.attr_devices_failed.i.i_crit_edge
  tail call void @sysfs_remove_file_ns(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @mdev_type_attr_create, ptr noundef null) #6
  br label %attr_create_failed.i.i

attr_create_failed.i.i:                           ; preds = %attr_devices_failed.i.i, %if.end17.i.i.attr_create_failed.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %call.i.i.i, %if.end17.i.i.attr_create_failed.i.i_crit_edge ], [ -12, %attr_devices_failed.i.i ]
  tail call void @kobject_del(ptr noundef nonnull %call7.i.i.i.i) #6
  br label %add_mdev_supported_type.exit.sink.split.i

add_mdev_supported_type.exit.sink.split.i:        ; preds = %attr_create_failed.i.i, %mdev_get_parent.exit.i.i.add_mdev_supported_type.exit.sink.split.i_crit_edge
  %call12.i.sink.i = phi i32 [ %ret.1.i.i, %attr_create_failed.i.i ], [ %call12.i.i, %mdev_get_parent.exit.i.i.add_mdev_supported_type.exit.sink.split.i_crit_edge ]
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i.i) #6
  %37 = inttoptr i32 %call12.i.sink.i to ptr
  br label %add_mdev_supported_type.exit.i

add_mdev_supported_type.exit.i:                   ; preds = %add_mdev_supported_type.exit.sink.split.i, %if.end28.i.i.add_mdev_supported_type.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call7.i.i.i.i, %if.end28.i.i.add_mdev_supported_type.exit.i_crit_edge ], [ %37, %add_mdev_supported_type.exit.sink.split.i ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %add_mdev_supported_type.exit.i.if.then.i_crit_edge, label %if.end.i

add_mdev_supported_type.exit.i.if.then.i_crit_edge: ; preds = %add_mdev_supported_type.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %add_mdev_supported_type.exit.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge, %do.end.i.i
  %retval.0.i47.i = phi ptr [ inttoptr (i32 -22 to ptr), %do.end.i.i ], [ %retval.0.i.i, %add_mdev_supported_type.exit.i.if.then.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.if.then.i_crit_edge ]
  %38 = ptrtoint ptr %type_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %type_list, align 4
  %cmp.not56.i = icmp eq ptr %39, %type_list
  br i1 %cmp.not56.i, label %if.then.i.add_mdev_supported_type_groups.exit_crit_edge, label %if.then.i.for.body11.i_crit_edge

if.then.i.for.body11.i_crit_edge:                 ; preds = %if.then.i
  br label %for.body11.i

if.then.i.add_mdev_supported_type_groups.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_mdev_supported_type_groups.exit

for.body11.i:                                     ; preds = %list_del.exit.i.for.body11.i_crit_edge, %if.then.i.for.body11.i_crit_edge
  %.pn.in57.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body11.i_crit_edge ], [ %39, %if.then.i.for.body11.i_crit_edge ]
  %ltype.0.i = getelementptr i8, ptr %.pn.in57.i, i32 -144
  %40 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn.i = load ptr, ptr %.pn.in57.i, align 4
  %call.i.i37.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in57.i) #6
  br i1 %call.i.i37.i, label %if.end.i.i.i, label %for.body11.i.list_del.exit.i_crit_edge

for.body11.i.list_del.exit.i_crit_edge:           ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in57.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i.i, align 4
  %43 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn.in57.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body11.i.list_del.exit.i_crit_edge
  %47 = ptrtoint ptr %.pn.in57.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in57.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in57.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %parent.i.i = getelementptr i8, ptr %.pn.in57.i, i32 -4
  %49 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent.i.i, align 4
  %ops.i38.i = getelementptr inbounds %struct.mdev_parent, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %ops.i38.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i38.i, align 4
  %supported_type_groups.i39.i = getelementptr inbounds %struct.mdev_parent_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %supported_type_groups.i39.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %supported_type_groups.i39.i, align 4
  %type_group_id.i.i = getelementptr i8, ptr %.pn.in57.i, i32 8
  %55 = ptrtoint ptr %type_group_id.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type_group_id.i.i, align 4
  %arrayidx.i40.i = getelementptr ptr, ptr %54, i32 %56
  %57 = ptrtoint ptr %arrayidx.i40.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i40.i, align 4
  %attrs.i41.i = getelementptr inbounds %struct.attribute_group, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %attrs.i41.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %attrs.i41.i, align 4
  tail call void @sysfs_remove_files(ptr noundef %ltype.0.i, ptr noundef %60) #6
  %devices_kobj.i42.i = getelementptr i8, ptr %.pn.in57.i, i32 -8
  %61 = ptrtoint ptr %devices_kobj.i42.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %devices_kobj.i42.i, align 4
  tail call void @kobject_put(ptr noundef %62) #6
  tail call void @sysfs_remove_file_ns(ptr noundef %ltype.0.i, ptr noundef nonnull @mdev_type_attr_create, ptr noundef null) #6
  tail call void @kobject_del(ptr noundef %ltype.0.i) #6
  tail call void @kobject_put(ptr noundef %ltype.0.i) #6
  %cmp.not.i = icmp eq ptr %.pn.i, %type_list
  br i1 %cmp.not.i, label %list_del.exit.i.add_mdev_supported_type_groups.exit_crit_edge, label %list_del.exit.i.for.body11.i_crit_edge

list_del.exit.i.for.body11.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i

list_del.exit.i.add_mdev_supported_type_groups.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %add_mdev_supported_type_groups.exit

if.end.i:                                         ; preds = %add_mdev_supported_type.exit.i
  %next19.i = getelementptr inbounds %struct.mdev_type, ptr %retval.0.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %type_list to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %type_list, align 4
  %call.i.i43.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next19.i, ptr noundef %type_list, ptr noundef %64) #6
  br i1 %call.i.i43.i, label %if.end.i.i44.i, label %if.end.i.for.inc21.i_crit_edge

if.end.i.for.inc21.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc21.i

if.end.i.i44.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %next19.i, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %next19.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %next19.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mdev_type, ptr %retval.0.i.i, i32 0, i32 3, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %type_list, ptr %prev3.i.i.i, align 4
  %68 = ptrtoint ptr %type_list to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %next19.i, ptr %type_list, align 4
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.end.i.i44.i, %if.end.i.for.inc21.i_crit_edge
  %inc.i = add i32 %i.055.i, 1
  %69 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ops, align 4
  %supported_type_groups.i = getelementptr inbounds %struct.mdev_parent_ops, ptr %70, i32 0, i32 4
  %71 = ptrtoint ptr %supported_type_groups.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %supported_type_groups.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %72, i32 %inc.i
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %74, null
  br i1 %tobool.not.i, label %for.inc21.i.cleanup_crit_edge, label %for.inc21.i.for.body.i_crit_edge

for.inc21.i.for.body.i_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc21.i.cleanup_crit_edge:                    ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

add_mdev_supported_type_groups.exit:              ; preds = %list_del.exit.i.add_mdev_supported_type_groups.exit_crit_edge, %if.then.i.add_mdev_supported_type_groups.exit_crit_edge
  %tobool9.not = icmp eq ptr %retval.0.i47.i, null
  br i1 %tobool9.not, label %add_mdev_supported_type_groups.exit.cleanup_crit_edge, label %if.then10

add_mdev_supported_type_groups.exit.cleanup_crit_edge: ; preds = %add_mdev_supported_type_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %add_mdev_supported_type_groups.exit
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %retval.0.i47.i to i32
  %76 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %parent, align 4
  %78 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops, align 4
  %dev_attr_groups14 = getelementptr inbounds %struct.mdev_parent_ops, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %dev_attr_groups14 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_attr_groups14, align 4
  tail call void @sysfs_remove_groups(ptr noundef %77, ptr noundef %81) #6
  br label %create_err

create_err:                                       ; preds = %if.then10, %if.end.create_err_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.create_err_crit_edge ], [ %75, %if.then10 ]
  %82 = ptrtoint ptr %mdev_types_kset to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mdev_types_kset, align 4
  tail call void @kset_unregister(ptr noundef %83) #6
  br label %cleanup

cleanup:                                          ; preds = %create_err, %add_mdev_supported_type_groups.exit.cleanup_crit_edge, %for.inc21.i.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %create_err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %add_mdev_supported_type_groups.exit.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %for.inc21.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mdev_create_sysfs_files(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.mdev_device, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type1, align 4
  %devices_kobj = getelementptr inbounds %struct.mdev_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devices_kobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devices_kobj, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call4 = tail call i32 @sysfs_create_link(ptr noundef %3, ptr noundef %mdev, ptr noundef %retval.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %call6 = tail call i32 @sysfs_create_link(ptr noundef %mdev, ptr noundef %1, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.type_link_failed_crit_edge

if.end.type_link_failed_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %type_link_failed

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @sysfs_create_files(ptr noundef %mdev, ptr noundef nonnull @mdev_device_attrs) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %create_files_failed

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

create_files_failed:                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sysfs_remove_link(ptr noundef %mdev, ptr noundef nonnull @.str.1) #6
  br label %type_link_failed

type_link_failed:                                 ; preds = %create_files_failed, %if.end.type_link_failed_crit_edge
  %ret.0 = phi i32 [ %call6, %if.end.type_link_failed_crit_edge ], [ %call10, %create_files_failed ]
  %8 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type1, align 4
  %devices_kobj15 = getelementptr inbounds %struct.mdev_type, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %devices_kobj15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devices_kobj15, align 4
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i34 = icmp eq ptr %13, null
  br i1 %tobool.not.i34, label %if.end.i35, label %type_link_failed.dev_name.exit37_crit_edge

type_link_failed.dev_name.exit37_crit_edge:       ; preds = %type_link_failed
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit37

if.end.i35:                                       ; preds = %type_link_failed
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mdev, align 4
  br label %dev_name.exit37

dev_name.exit37:                                  ; preds = %if.end.i35, %type_link_failed.dev_name.exit37_crit_edge
  %retval.0.i36 = phi ptr [ %15, %if.end.i35 ], [ %13, %type_link_failed.dev_name.exit37_crit_edge ]
  tail call void @sysfs_remove_link(ptr noundef %11, ptr noundef %retval.0.i36) #6
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit37, %if.end9.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %dev_name.exit37 ], [ %call4, %dev_name.exit.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_files(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mdev_remove_sysfs_files(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sysfs_remove_files(ptr noundef %mdev, ptr noundef nonnull @mdev_device_attrs) #6
  tail call void @sysfs_remove_link(ptr noundef %mdev, ptr noundef nonnull @.str.1) #6
  %type = getelementptr inbounds %struct.mdev_device, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %devices_kobj = getelementptr inbounds %struct.mdev_type, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devices_kobj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devices_kobj, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  tail call void @sysfs_remove_link(ptr noundef %3, ptr noundef %retval.0.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_files(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @create_store(ptr noundef %mtype, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %uuid = alloca %struct.guid_t, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %uuid) #6
  %0 = add i32 %count, -38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %0)
  %1 = icmp ult i32 %0, -2
  %2 = call ptr @memset(ptr %uuid, i32 255, i32 16)
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %count, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @guid_parse(ptr noundef nonnull %call, ptr noundef nonnull %uuid) #6
  call void @kfree(ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 @mdev_device_create(ptr noundef %mtype, ptr noundef nonnull %uuid) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  %count.call8 = select i1 %tobool9.not, i32 %count, i32 %call8
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %count.call8, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %uuid) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @guid_parse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_device_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdev_type_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdev_type_release.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdev_type_release, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !43

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kobj, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mdev_type_release.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.10, ptr noundef %1) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %parent = getelementptr inbounds %struct.mdev_type, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %ref.i = getelementptr inbounds %struct.mdev_parent, ptr %3, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !44
  tail call void @llvm.prefetch.p0(ptr %ref.i, i32 1, i32 3, i32 1) #6
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref.i, ptr %ref.i, i32 1, ptr elementtype(i32) %ref.i) #6, !srcloc !45
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.mdev_put_parent.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !42

if.end5.i.i.i.i.i.mdev_put_parent.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mdev_put_parent.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %ref.i, i32 noundef 3) #6
  br label %mdev_put_parent.exit

if.then.i.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !46
  tail call void @mdev_release_parent(ptr noundef %ref.i) #6
  br label %mdev_put_parent.exit

mdev_put_parent.exit:                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.mdev_put_parent.exit_crit_edge
  tail call void @kfree(ptr noundef %kobj) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_release_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_type_attr_show(ptr noundef %kobj, ptr noundef %__attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.mdev_type_attribute, ptr %__attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %__attr, ptr noundef %buf) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdev_type_attr_store(ptr noundef %kobj, ptr noundef %__attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.mdev_type_attribute, ptr %__attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 %1(ptr noundef %kobj, ptr noundef %__attr, ptr noundef %buf, i32 noundef %count) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call, %if.then ], [ -5, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !47
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup9_crit_edge, label %if.end

entry.cleanup9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %call2 = call zeroext i1 @device_remove_file_self(ptr noundef %dev, ptr noundef %attr) #6
  br i1 %call2, label %if.then3, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then3:                                         ; preds = %land.lhs.true
  %call4 = call i32 @mdev_device_remove(ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup9_crit_edge

if.then3.cleanup9_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup9

cleanup9:                                         ; preds = %if.end8, %if.then3.cleanup9_crit_edge, %entry.cleanup9_crit_edge
  %retval.1 = phi i32 [ %count, %if.end8 ], [ %call4, %if.then3.cleanup9_crit_edge ], [ -22, %entry.cleanup9_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_remove_file_self(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_device_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !22, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 208, i32 48}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 270, i32 45}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 78, i32 8}
!6 = !{ptr @mdev_type_attr_create, !5, !"mdev_type_attr_create", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 104, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @add_mdev_supported_type._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @add_mdev_supported_type._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 119, i32 8}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 130, i32 46}
!17 = !{ptr @mdev_type_ktype, !18, !"mdev_type_ktype", i1 false, i1 false}
!18 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 90, i32 25}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 84, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mdev_type_release.__UNIQUE_ID_ddebug183, !20, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!24 = !{ptr @mdev_type_sysfs_ops, !25, !"mdev_type_sysfs_ops", i1 false, i1 false}
!25 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 46, i32 31}
!26 = !{ptr @mdev_device_attrs, !27, !"mdev_device_attrs", i1 false, i1 false}
!27 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 255, i32 32}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/vfio/mdev/mdev_sysfs.c", i32 253, i32 8}
!30 = !{ptr @dev_attr_remove, !29, !"dev_attr_remove", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 2148500386, i64 2148500418, i64 2148500447, i64 2148500481, i64 2148500512, i64 2148500535}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2148322671, i64 2148322676, i64 2148322689, i64 2148322733, i64 2148322767, i64 2148322788}
!44 = !{i64 2148588411}
!45 = !{i64 2148502851, i64 2148502883, i64 2148502912, i64 2148502946, i64 2148502977, i64 2148503000}
!46 = !{i64 2149910714}
!47 = !{!"auto-init"}
