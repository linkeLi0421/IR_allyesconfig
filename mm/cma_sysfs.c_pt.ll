; ModuleID = '/llk/IR_all_yes/mm/cma_sysfs.c_pt.bc'
source_filename = "../mm/cma_sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cma = type { i32, i32, ptr, i32, %struct.spinlock, %struct.hlist_head, %struct.spinlock, %struct.debugfs_u32_array, [64 x i8], %struct.atomic64_t, %struct.atomic64_t, ptr }
%struct.hlist_head = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.debugfs_u32_array = type { ptr, i32 }
%struct.atomic64_t = type { i64 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cma_kobject = type { %struct.kobject, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@__initcall__kmod_cma_sysfs__207_112_cma_sysfs_init4 = internal global ptr @cma_sysfs_init, section ".initcall4.init", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cma\00", [28 x i8] zeroinitializer }, align 32
@mm_kobj = external dso_local local_unnamed_addr global ptr, align 4
@cma_area_count = external dso_local local_unnamed_addr global i32, align 4
@cma_areas = external dso_local global [8 x %struct.cma], align 8
@cma_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @cma_kobj_release, ptr @kobj_sysfs_ops, ptr null, ptr @cma_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@cma_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @cma_group, ptr null], [24 x i8] zeroinitializer }, align 32
@cma_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cma_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@cma_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @alloc_pages_success_attr, ptr @alloc_pages_fail_attr, ptr null], [20 x i8] zeroinitializer }, align 32
@alloc_pages_success_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alloc_pages_success_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@alloc_pages_fail_attr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alloc_pages_fail_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"alloc_pages_success\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alloc_pages_fail\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 80, i32 41 }
@___asan_gen_.8 = private unnamed_addr constant [10 x i8] c"cma_ktype\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 67, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 95, i32 24 }
@___asan_gen_.14 = private unnamed_addr constant [11 x i8] c"cma_groups\00", align 1
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"cma_group\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 65, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"cma_attrs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 60, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant [25 x i8] c"alloc_pages_success_attr\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"alloc_pages_fail_attr\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 40, i32 1 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 37, i32 25 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [18 x i8] c"../mm/cma_sysfs.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 49, i32 1 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__initcall__kmod_cma_sysfs__207_112_cma_sysfs_init4, ptr @.str, ptr @cma_ktype, ptr @.str.1, ptr @cma_groups, ptr @cma_group, ptr @cma_attrs, ptr @alloc_pages_success_attr, ptr @alloc_pages_fail_attr, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cma_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pages_success_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_pages_fail_attr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cma_sysfs_account_success_pages(ptr noundef %cma, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %nr_pages to i64
  %nr_pages_succeeded = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_pages_succeeded, i32 noundef 8) #4
  tail call void @generic_atomic64_add(i64 noundef %conv, ptr noundef %nr_pages_succeeded) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cma_sysfs_account_fail_pages(ptr noundef %cma, i32 noundef %nr_pages) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %nr_pages to i64
  %nr_pages_failed = getelementptr inbounds %struct.cma, ptr %cma, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_pages_failed, i32 noundef 8) #4
  tail call void @generic_atomic64_add(i64 noundef %conv, ptr noundef %nr_pages_failed) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cma_sysfs_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mm_kobj to i32))
  %0 = load ptr, ptr @mm_kobj, align 4
  %call = tail call ptr @kobject_create_and_add(ptr noundef nonnull @.str, ptr noundef %0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cma_area_count to i32))
  %1 = load i32, ptr @cma_area_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38.not = icmp eq i32 %1, 0
  br i1 %cmp38.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.039 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 140) #7
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %for.body.out_crit_edge, label %if.end4

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end4:                                          ; preds = %for.body
  %arrayidx = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.039
  %cma_kobj5 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.039, i32 11
  %3 = ptrtoint ptr %cma_kobj5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %cma_kobj5, align 8
  %cma6 = getelementptr inbounds %struct.cma_kobject, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %cma6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %cma6, align 8
  %name = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %i.039, i32 8
  %call7 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @cma_ktype, ptr noundef nonnull %call, ptr noundef nonnull @.str.1, ptr noundef %name) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %for.inc, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i) #4
  br label %out

for.inc:                                          ; preds = %if.end4
  %inc = add nuw i32 %i.039, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cma_area_count to i32))
  %5 = load i32, ptr @cma_area_count, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

out:                                              ; preds = %if.then9, %for.body.out_crit_edge
  %err.0 = phi i32 [ %call7, %if.then9 ], [ -12, %for.body.out_crit_edge ]
  %dec40 = add i32 %i.039, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec40)
  %cmp1241 = icmp sgt i32 %dec40, -1
  br i1 %cmp1241, label %out.while.body_crit_edge, label %out.while.end_crit_edge

out.while.end_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

out.while.body_crit_edge:                         ; preds = %out
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %out.while.body_crit_edge
  %dec42 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec40, %out.while.body_crit_edge ]
  %cma_kobj14 = getelementptr [8 x %struct.cma], ptr @cma_areas, i32 0, i32 %dec42, i32 11
  %6 = ptrtoint ptr %cma_kobj14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cma_kobj14, align 8
  tail call void @kobject_put(ptr noundef %7) #4
  %dec = add nsw i32 %dec42, -1
  %cmp12 = icmp sgt i32 %dec42, 0
  br i1 %cmp12, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %out.while.end_crit_edge
  tail call void @kobject_put(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %while.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_create_and_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cma_kobj_release(ptr nocapture noundef readonly %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cma.i = getelementptr inbounds %struct.cma_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %cma.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma.i, align 4
  %cma_kobj1 = getelementptr inbounds %struct.cma, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %cma_kobj1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cma_kobj1, align 8
  tail call void @kfree(ptr noundef %3) #4
  %4 = ptrtoint ptr %cma_kobj1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %cma_kobj1, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alloc_pages_success_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cma.i = getelementptr inbounds %struct.cma_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %cma.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma.i, align 4
  %nr_pages_succeeded = getelementptr inbounds %struct.cma, ptr %1, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_pages_succeeded, i32 noundef 8) #4
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %nr_pages_succeeded) #4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i64 noundef %call.i) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alloc_pages_fail_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %cma.i = getelementptr inbounds %struct.cma_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %cma.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cma.i, align 4
  %nr_pages_failed = getelementptr inbounds %struct.cma, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_pages_failed, i32 noundef 8) #4
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %nr_pages_failed) #4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i64 noundef %call.i) #4
  ret i32 %call2
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__initcall__kmod_cma_sysfs__207_112_cma_sysfs_init4, !1, !"__initcall__kmod_cma_sysfs__207_112_cma_sysfs_init4", i1 false, i1 false}
!1 = !{!"../mm/cma_sysfs.c", i32 112, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../mm/cma_sysfs.c", i32 80, i32 41}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../mm/cma_sysfs.c", i32 95, i32 24}
!6 = !{ptr @cma_ktype, !7, !"cma_ktype", i1 false, i1 false}
!7 = !{!"../mm/cma_sysfs.c", i32 67, i32 25}
!8 = !{ptr @cma_groups, !9, !"cma_groups", i1 false, i1 false}
!9 = !{!"../mm/cma_sysfs.c", i32 65, i32 1}
!10 = !{ptr @cma_group, !9, !"cma_group", i1 false, i1 false}
!11 = !{ptr @cma_attrs, !12, !"cma_attrs", i1 false, i1 false}
!12 = !{!"../mm/cma_sysfs.c", i32 60, i32 26}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../mm/cma_sysfs.c", i32 40, i32 1}
!15 = !{ptr @alloc_pages_success_attr, !14, !"alloc_pages_success_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../mm/cma_sysfs.c", i32 37, i32 25}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../mm/cma_sysfs.c", i32 49, i32 1}
!20 = !{ptr @alloc_pages_fail_attr, !19, !"alloc_pages_fail_attr", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
