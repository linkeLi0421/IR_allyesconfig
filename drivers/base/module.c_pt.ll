; ModuleID = '/llk/IR_all_yes/drivers/base/module.c_pt.bc'
source_filename = "../drivers/base/module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.driver_private = type { %struct.kobject, %struct.klist, %struct.klist_node, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.klist_node = type { ptr, %struct.list_head, %struct.kref }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }

@module_kset = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@module_create_drivers_dir.drivers_dir_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @module_create_drivers_dir.drivers_dir_mutex, i64 52), ptr getelementptr (i8, ptr @module_create_drivers_dir.drivers_dir_mutex, i64 52) }, ptr @module_create_drivers_dir.drivers_dir_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers_dir_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers_dir_mutex\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"drivers\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 62, i32 56 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 16, i32 38 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"drivers_dir_mutex\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 25, i32 9 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [25 x i8] c"../drivers/base/module.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 29, i32 44 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @module_create_drivers_dir.drivers_dir_mutex, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @module_create_drivers_dir.drivers_dir_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @module_add_driver(ptr noundef %mod, ptr noundef readonly %drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %mod, null
  br i1 %tobool1.not, label %if.else, label %if.end12

if.else:                                          ; preds = %if.end
  %mod_name = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 3
  %0 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mod_name, align 4
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else.cleanup_crit_edge, label %if.then4

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then4:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @module_kset to i32))
  %2 = load ptr, ptr @module_kset, align 4
  %call = tail call ptr @kset_find_obj(ptr noundef %2, ptr noundef nonnull %1) #2
  %tobool7.not = icmp eq ptr %call, null
  br i1 %tobool7.not, label %if.then4.cleanup_crit_edge, label %if.end12.thread46

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end12.thread46:                                ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #4
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 4
  %mkobj9 = getelementptr inbounds %struct.driver_private, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %mkobj9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %mkobj9, align 4
  tail call void @kobject_put(ptr noundef nonnull %call) #2
  br label %if.end15

if.end12:                                         ; preds = %if.end
  %mkobj = getelementptr inbounds %struct.module, ptr %mod, i32 0, i32 4
  %tobool13.not = icmp eq ptr %mkobj, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end15:                                         ; preds = %if.end12.if.end15_crit_edge, %if.end12.thread46
  %mk.149 = phi ptr [ %call, %if.end12.thread46 ], [ %mkobj, %if.end12.if.end15_crit_edge ]
  %p16 = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %6 = ptrtoint ptr %p16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p16, align 4
  %call18 = tail call i32 @sysfs_create_link(ptr noundef %7, ptr noundef nonnull %mk.149, ptr noundef nonnull @.str) #2
  %bus.i = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 1
  %8 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drv, align 4
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %11, ptr noundef %13) #2
  %tobool20.not = icmp eq ptr %call.i, null
  br i1 %tobool20.not, label %if.end15.cleanup_crit_edge, label %land.lhs.true.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end15
  tail call void @mutex_lock_nested(ptr noundef nonnull @module_create_drivers_dir.drivers_dir_mutex, i32 noundef 0) #2
  %drivers_dir.i = getelementptr inbounds %struct.module_kobject, ptr %mk.149, i32 0, i32 2
  %14 = ptrtoint ptr %drivers_dir.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drivers_dir.i, align 4
  %tobool1.not.i = icmp eq ptr %15, null
  br i1 %tobool1.not.i, label %if.then.i, label %land.lhs.true.i.module_create_drivers_dir.exit_crit_edge

land.lhs.true.i.module_create_drivers_dir.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %module_create_drivers_dir.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  %call.i43 = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str.4, ptr noundef nonnull %mk.149) #2
  %16 = ptrtoint ptr %drivers_dir.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i43, ptr %drivers_dir.i, align 4
  br label %module_create_drivers_dir.exit

module_create_drivers_dir.exit:                   ; preds = %if.then.i, %land.lhs.true.i.module_create_drivers_dir.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @module_create_drivers_dir.drivers_dir_mutex) #2
  %17 = ptrtoint ptr %drivers_dir.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drivers_dir.i, align 4
  %19 = ptrtoint ptr %p16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p16, align 4
  %call24 = tail call i32 @sysfs_create_link(ptr noundef %18, ptr noundef %20, ptr noundef nonnull %call.i) #2
  tail call void @kfree(ptr noundef nonnull %call.i) #2
  br label %cleanup

cleanup:                                          ; preds = %module_create_drivers_dir.exit, %if.end15.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @module_remove_driver(ptr noundef readonly %drv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %drv, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %p = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 18
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  tail call void @sysfs_remove_link(ptr noundef %1, ptr noundef nonnull @.str) #2
  %owner = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 2
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %mkobj = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 4
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 4
  %mkobj5 = getelementptr inbounds %struct.driver_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mkobj5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mkobj5, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then2
  %mk.0 = phi ptr [ %mkobj, %if.then2 ], [ %7, %if.else ]
  %tobool12.not = icmp eq ptr %mk.0, null
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %land.lhs.true

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end11
  %drivers_dir = getelementptr inbounds %struct.module_kobject, ptr %mk.0, i32 0, i32 2
  %8 = ptrtoint ptr %drivers_dir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drivers_dir, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %if.then14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then14:                                        ; preds = %land.lhs.true
  %bus.i = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 1
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %14 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %drv, align 4
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %13, ptr noundef %15) #2
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.then14.cleanup_crit_edge, label %if.then16

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #4
  %16 = ptrtoint ptr %drivers_dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drivers_dir, align 4
  tail call void @sysfs_remove_link(ptr noundef %17, ptr noundef nonnull %call.i) #2
  tail call void @kfree(ptr noundef nonnull %call.i) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.then14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/base/module.c", i32 62, i32 56}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/base/module.c", i32 16, i32 38}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/base/module.c", i32 25, i32 9}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @module_create_drivers_dir.drivers_dir_mutex, !5, !"drivers_dir_mutex", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/base/module.c", i32 29, i32 44}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
