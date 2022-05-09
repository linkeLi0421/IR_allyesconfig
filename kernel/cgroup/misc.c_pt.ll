; ModuleID = '/llk/IR_all_yes/kernel/cgroup/misc.c_pt.bc'
source_filename = "../kernel/cgroup/misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+misc_cg_res_total_usage\22, \22a\22\09"
module asm "\09.weak\09__crc_misc_cg_res_total_usage\09\09\09\09"
module asm "\09.long\09__crc_misc_cg_res_total_usage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_misc_cg_res_total_usage:\09\09\09\09\09"
module asm "\09.asciz \09\22misc_cg_res_total_usage\22\09\09\09\09\09"
module asm "__kstrtabns_misc_cg_res_total_usage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+misc_cg_set_capacity\22, \22a\22\09"
module asm "\09.weak\09__crc_misc_cg_set_capacity\09\09\09\09"
module asm "\09.long\09__crc_misc_cg_set_capacity\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_misc_cg_set_capacity:\09\09\09\09\09"
module asm "\09.asciz \09\22misc_cg_set_capacity\22\09\09\09\09\09"
module asm "__kstrtabns_misc_cg_set_capacity:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+misc_cg_try_charge\22, \22a\22\09"
module asm "\09.weak\09__crc_misc_cg_try_charge\09\09\09\09"
module asm "\09.long\09__crc_misc_cg_try_charge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_misc_cg_try_charge:\09\09\09\09\09"
module asm "\09.asciz \09\22misc_cg_try_charge\22\09\09\09\09\09"
module asm "__kstrtabns_misc_cg_try_charge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+misc_cg_uncharge\22, \22a\22\09"
module asm "\09.weak\09__crc_misc_cg_uncharge\09\09\09\09"
module asm "\09.long\09__crc_misc_cg_uncharge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_misc_cg_uncharge:\09\09\09\09\09"
module asm "\09.asciz \09\22misc_cg_uncharge\22\09\09\09\09\09"
module asm "__kstrtabns_misc_cg_uncharge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.misc_cg = type { %struct.cgroup_subsys_state, %struct.cgroup_file, [0 x %struct.misc_res] }
%struct.cgroup_subsys_state = type { ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i64, %struct.atomic_t, %struct.work_struct, %struct.rcu_work, ptr }
%struct.percpu_ref = type { i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.cgroup_file = type { ptr, i32, %struct.timer_list }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.misc_res = type { i32, %struct.atomic_t, %struct.atomic_t }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cftype = type { [64 x i8], i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.cgroup_subsys = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, %struct.idr, %struct.list_head, ptr, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@root_cg = internal global { %struct.misc_cg, [32 x i8] } zeroinitializer, align 32
@__kstrtab_misc_cg_res_total_usage = external dso_local constant [0 x i8], align 1
@__kstrtabns_misc_cg_res_total_usage = external dso_local constant [0 x i8], align 1
@__ksymtab_misc_cg_res_total_usage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @misc_cg_res_total_usage to i32), ptr @__kstrtab_misc_cg_res_total_usage, ptr @__kstrtabns_misc_cg_res_total_usage }, section "___ksymtab_gpl+misc_cg_res_total_usage", align 4
@__kstrtab_misc_cg_set_capacity = external dso_local constant [0 x i8], align 1
@__kstrtabns_misc_cg_set_capacity = external dso_local constant [0 x i8], align 1
@__ksymtab_misc_cg_set_capacity = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @misc_cg_set_capacity to i32), ptr @__kstrtab_misc_cg_set_capacity, ptr @__kstrtabns_misc_cg_set_capacity }, section "___ksymtab_gpl+misc_cg_set_capacity", align 4
@__kstrtab_misc_cg_try_charge = external dso_local constant [0 x i8], align 1
@__kstrtabns_misc_cg_try_charge = external dso_local constant [0 x i8], align 1
@__ksymtab_misc_cg_try_charge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @misc_cg_try_charge to i32), ptr @__kstrtab_misc_cg_try_charge, ptr @__kstrtabns_misc_cg_try_charge }, section "___ksymtab_gpl+misc_cg_try_charge", align 4
@__kstrtab_misc_cg_uncharge = external dso_local constant [0 x i8], align 1
@__kstrtabns_misc_cg_uncharge = external dso_local constant [0 x i8], align 1
@__ksymtab_misc_cg_uncharge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @misc_cg_uncharge to i32), ptr @__kstrtab_misc_cg_uncharge, ptr @__kstrtabns_misc_cg_uncharge }, section "___ksymtab_gpl+misc_cg_uncharge", align 4
@misc_cg_files = internal global { [5 x %struct.cftype], [168 x i8] } { [5 x %struct.cftype] [%struct.cftype { [64 x i8] c"max\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_cg_max_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_cg_max_write, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"current\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_cg_current_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"capacity\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 1, i32 0, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_cg_capacity_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype { [64 x i8] c"events\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 2, i32 168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @misc_events_show, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer }, %struct.cftype zeroinitializer], [168 x i8] zeroinitializer }, align 32
@misc_cgrp_subsys = dso_local global { %struct.cgroup_subsys, [52 x i8] } { %struct.cgroup_subsys { ptr @misc_cg_alloc, ptr null, ptr null, ptr null, ptr @misc_cg_free, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, %struct.idr zeroinitializer, %struct.list_head zeroinitializer, ptr @misc_cg_files, ptr @misc_cg_files, i32 0 }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [8 x i8] c"root_cg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 30, i32 23 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"misc_cg_files\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 350, i32 22 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"misc_cgrp_subsys\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 419, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [24 x i8] c"../kernel/cgroup/misc.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 256, i32 23 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_misc_cg_res_total_usage, ptr @__ksymtab_misc_cg_set_capacity, ptr @__ksymtab_misc_cg_try_charge, ptr @__ksymtab_misc_cg_uncharge, ptr @root_cg, ptr @misc_cg_files, ptr @misc_cgrp_subsys, ptr @.str.4], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_cg to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_cg_files to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misc_cgrp_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @misc_cg_res_total_usage(i32 %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @misc_cg_set_capacity(i32 %type, i32 %capacity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @misc_cg_try_charge(i32 %type, ptr nocapture readnone %cg, i32 %amount) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @misc_cg_uncharge(i32 %type, ptr nocapture %cg, i32 noundef %amount) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @misc_cg_alloc(ptr noundef readnone %parent_css) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent_css, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 224) #7
  %tobool1.not = icmp eq ptr %call7.i.i, null
  %spec.select = select i1 %tobool1.not, ptr inttoptr (i32 -12 to ptr), ptr %call7.i.i
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ @root_cg, %entry.cleanup_crit_edge ], [ %spec.select, %if.else ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @misc_cg_free(ptr noundef %css) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %css) #4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @misc_cg_max_show(ptr nocapture noundef readonly %sf, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @misc_cg_max_write(ptr nocapture noundef readnone %of, ptr noundef %buf, i32 noundef %nbytes, i64 noundef %off) #1 align 64 {
entry:
  %buf.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @strim(ptr noundef %buf) #4
  %0 = ptrtoint ptr %buf.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %buf.addr, align 4
  %call1 = call ptr @strsep(ptr noundef nonnull %buf.addr, ptr noundef nonnull @.str.4) #4
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @misc_cg_current_show(ptr nocapture noundef readonly %sf, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @misc_cg_capacity_show(ptr nocapture noundef readnone %sf, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @misc_events_show(ptr nocapture noundef readonly %sf, ptr nocapture noundef readnone %v) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %call.i = tail call ptr @of_css(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_css(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_misc_cg_res_total_usage, !1, !"__ksymtab_misc_cg_res_total_usage", i1 false, i1 false}
!1 = !{!"../kernel/cgroup/misc.c", i32 84, i32 1}
!2 = !{ptr @__ksymtab_misc_cg_set_capacity, !3, !"__ksymtab_misc_cg_set_capacity", i1 false, i1 false}
!3 = !{!"../kernel/cgroup/misc.c", i32 106, i32 1}
!4 = !{ptr @__ksymtab_misc_cg_try_charge, !5, !"__ksymtab_misc_cg_try_charge", i1 false, i1 false}
!5 = !{!"../kernel/cgroup/misc.c", i32 177, i32 1}
!6 = !{ptr @__ksymtab_misc_cg_uncharge, !7, !"__ksymtab_misc_cg_uncharge", i1 false, i1 false}
!7 = !{!"../kernel/cgroup/misc.c", i32 198, i32 1}
!8 = !{ptr @misc_cgrp_subsys, !9, !"misc_cgrp_subsys", i1 false, i1 false}
!9 = !{!"../kernel/cgroup/misc.c", i32 419, i32 22}
!10 = !{ptr @root_cg, !11, !"root_cg", i1 false, i1 false}
!11 = !{!"../kernel/cgroup/misc.c", i32 30, i32 23}
!12 = distinct !{null, !13, !"misc_res_capacity", i1 false, i1 false}
!13 = !{!"../kernel/cgroup/misc.c", i32 40, i32 22}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../kernel/cgroup/misc.c", i32 119, i32 2}
!16 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"misc_res_name", i1 false, i1 false}
!19 = !{!"../kernel/cgroup/misc.c", i32 20, i32 26}
!20 = !{ptr @misc_cg_files, !21, !"misc_cg_files", i1 false, i1 false}
!21 = !{!"../kernel/cgroup/misc.c", i32 350, i32 22}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/cgroup/misc.c", i32 218, i32 20}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/cgroup/misc.c", i32 220, i32 20}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/cgroup/misc.c", i32 256, i32 23}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/cgroup/misc.c", i32 271, i32 14}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/cgroup/misc.c", i32 344, i32 19}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
