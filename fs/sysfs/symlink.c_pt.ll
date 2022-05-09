; ModuleID = '/llk/IR_all_yes/fs/sysfs/symlink.c_pt.bc'
source_filename = "../fs/sysfs/symlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sysfs_create_link\22, \22a\22\09"
module asm "\09.weak\09__crc_sysfs_create_link\09\09\09\09"
module asm "\09.long\09__crc_sysfs_create_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_link:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_link\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sysfs_create_link_nowarn\22, \22a\22\09"
module asm "\09.weak\09__crc_sysfs_create_link_nowarn\09\09\09\09"
module asm "\09.long\09__crc_sysfs_create_link_nowarn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_link_nowarn:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_link_nowarn\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_link_nowarn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sysfs_remove_link\22, \22a\22\09"
module asm "\09.weak\09__crc_sysfs_remove_link\09\09\09\09"
module asm "\09.long\09__crc_sysfs_remove_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_link:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_link\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sysfs_rename_link_ns\22, \22a\22\09"
module asm "\09.weak\09__crc_sysfs_rename_link_ns\09\09\09\09"
module asm "\09.long\09__crc_sysfs_rename_link_ns\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_rename_link_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_rename_link_ns\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_rename_link_ns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.0, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.0 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }

@__kstrtab_sysfs_create_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_link = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_link to i32), ptr @__kstrtab_sysfs_create_link, ptr @__kstrtabns_sysfs_create_link }, section "___ksymtab_gpl+sysfs_create_link", align 4
@__kstrtab_sysfs_create_link_nowarn = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_link_nowarn = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_link_nowarn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_link_nowarn to i32), ptr @__kstrtab_sysfs_create_link_nowarn, ptr @__kstrtabns_sysfs_create_link_nowarn }, section "___ksymtab_gpl+sysfs_create_link_nowarn", align 4
@sysfs_symlink_target_lock = external dso_local global %struct.spinlock, align 4
@sysfs_root_kn = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_sysfs_remove_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_link = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_link to i32), ptr @__kstrtab_sysfs_remove_link, ptr @__kstrtabns_sysfs_remove_link }, section "___ksymtab_gpl+sysfs_remove_link", align 4
@__kstrtab_sysfs_rename_link_ns = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_rename_link_ns = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_rename_link_ns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_rename_link_ns to i32), ptr @__kstrtab_sysfs_rename_link_ns, ptr @__kstrtabns_sysfs_rename_link_ns }, section "___ksymtab_gpl+sysfs_rename_link_ns", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/sysfs/symlink.c\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [22 x i8] c"../fs/sysfs/symlink.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 26, i32 6 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_sysfs_create_link, ptr @__ksymtab_sysfs_create_link_nowarn, ptr @__ksymtab_sysfs_remove_link, ptr @__ksymtab_sysfs_rename_link_ns, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_link_sd(ptr noundef %kn, ptr nocapture noundef readonly %target, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sysfs_do_create_link_sd(ptr noundef %kn, ptr noundef %target, ptr noundef %name, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sysfs_do_create_link_sd(ptr noundef %parent, ptr nocapture noundef readonly %target_kobj, ptr noundef %name, i32 noundef %warn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  %tobool1.not = icmp eq ptr %parent, null
  %spec.select = or i1 %tobool1.not, %tobool.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 26, i32 noundef 9, ptr noundef null) #2
  br label %cleanup

if.end24:                                         ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysfs_symlink_target_lock) #2
  %sd = getelementptr inbounds %struct.kobject, ptr %target_kobj, i32 0, i32 5
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %tobool25.not = icmp eq ptr %1, null
  br i1 %tobool25.not, label %if.end28.thread, label %if.end31

if.end28.thread:                                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysfs_symlink_target_lock) #2
  br label %cleanup

if.end31:                                         ; preds = %if.end24
  tail call void @kernfs_get(ptr noundef nonnull %1) #2
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysfs_symlink_target_lock) #2
  %call = tail call ptr @kernfs_create_link(ptr noundef nonnull %parent, ptr noundef nonnull %name, ptr noundef nonnull %1) #2
  tail call void @kernfs_put(ptr noundef nonnull %1) #2
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end34, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %warn)
  %tobool35.not = icmp ne i32 %warn, 0
  %cmp = icmp eq ptr %call, inttoptr (i32 -17 to ptr)
  %or.cond = select i1 %tobool35.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then37, label %if.end34.if.end38_crit_edge

if.end34.if.end38_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end38

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @sysfs_warn_dup(ptr noundef nonnull %parent, ptr noundef nonnull %name) #2
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end34.if.end38_crit_edge
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.end31.cleanup_crit_edge, %if.end28.thread, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %2, %if.end38 ], [ 0, %if.end31.cleanup_crit_edge ], [ -2, %if.end28.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_link(ptr noundef readonly %kobj, ptr nocapture noundef readonly %target, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %kobj, null
  %sd.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %parent.0.in.i = select i1 %tobool.not.i, ptr @sysfs_root_kn, ptr %sd.i
  %0 = ptrtoint ptr %parent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %parent.0.i = load ptr, ptr %parent.0.in.i, align 4
  %tobool1.not.i = icmp eq ptr %parent.0.i, null
  br i1 %tobool1.not.i, label %entry.sysfs_do_create_link.exit_crit_edge, label %if.end3.i

entry.sysfs_do_create_link.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sysfs_do_create_link.exit

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call fastcc i32 @sysfs_do_create_link_sd(ptr noundef nonnull %parent.0.i, ptr noundef %target, ptr noundef %name, i32 noundef 1) #2
  br label %sysfs_do_create_link.exit

sysfs_do_create_link.exit:                        ; preds = %if.end3.i, %entry.sysfs_do_create_link.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end3.i ], [ -14, %entry.sysfs_do_create_link.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_link_nowarn(ptr noundef readonly %kobj, ptr nocapture noundef readonly %target, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %kobj, null
  %sd.i = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %parent.0.in.i = select i1 %tobool.not.i, ptr @sysfs_root_kn, ptr %sd.i
  %0 = ptrtoint ptr %parent.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %parent.0.i = load ptr, ptr %parent.0.in.i, align 4
  %tobool1.not.i = icmp eq ptr %parent.0.i, null
  br i1 %tobool1.not.i, label %entry.sysfs_do_create_link.exit_crit_edge, label %if.end3.i

entry.sysfs_do_create_link.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sysfs_do_create_link.exit

if.end3.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call.i = tail call fastcc i32 @sysfs_do_create_link_sd(ptr noundef nonnull %parent.0.i, ptr noundef %target, ptr noundef %name, i32 noundef 0) #2
  br label %sysfs_do_create_link.exit

sysfs_do_create_link.exit:                        ; preds = %if.end3.i, %entry.sysfs_do_create_link.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.end3.i ], [ -14, %entry.sysfs_do_create_link.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysfs_delete_link(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %targ, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysfs_symlink_target_lock) #2
  %sd = getelementptr inbounds %struct.kobject, ptr %targ, i32 0, i32 5
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sd1 = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %2 = ptrtoint ptr %sd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd1, align 4
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 8
  %6 = and i16 %5, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.i.not = icmp eq i16 %6, 0
  br i1 %tobool.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  %ns3 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %ns3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ns3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ns.0 = phi ptr [ %8, %if.then ], [ null, %land.lhs.true.if.end_crit_edge ], [ null, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysfs_symlink_target_lock) #2
  %sd4 = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %9 = ptrtoint ptr %sd4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd4, align 4
  %call5 = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %10, ptr noundef %name, ptr noundef %ns.0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysfs_remove_link(ptr noundef readonly %kobj, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %kobj, null
  %sd = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %parent.0.in = select i1 %tobool.not, ptr @sysfs_root_kn, ptr %sd
  %0 = ptrtoint ptr %parent.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %parent.0 = load ptr, ptr %parent.0.in, align 4
  %call.i = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %parent.0, ptr noundef %name, ptr noundef null) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_rename_link_ns(ptr noundef readonly %kobj, ptr noundef readonly %targ, ptr noundef %old, ptr noundef %new, ptr noundef %new_ns) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %kobj, null
  %sd = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %parent.0.in = select i1 %tobool.not, ptr @sysfs_root_kn, ptr %sd
  %0 = ptrtoint ptr %parent.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %parent.0 = load ptr, ptr %parent.0.in, align 4
  %sd1 = getelementptr inbounds %struct.kobject, ptr %targ, i32 0, i32 5
  %1 = ptrtoint ptr %sd1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sd1, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %ns = getelementptr inbounds %struct.kernfs_node, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %ns to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ns, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %old_ns.0 = phi ptr [ %4, %if.then3 ], [ null, %entry.if.end5_crit_edge ]
  %call = tail call ptr @kernfs_find_and_get_ns(ptr noundef %parent.0, ptr noundef %old, ptr noundef %old_ns.0) #2
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %if.end5.out_crit_edge, label %if.end8

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end8:                                          ; preds = %if.end5
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %flags.i, align 8
  %7 = and i16 %6, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %7)
  %cmp.not = icmp eq i16 %7, 4
  br i1 %cmp.not, label %if.end11, label %if.end8.out_crit_edge

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end11:                                         ; preds = %if.end8
  %8 = getelementptr inbounds %struct.kernfs_node, ptr %call, i32 0, i32 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 8
  %cmp12.not = icmp eq ptr %12, %targ
  br i1 %cmp12.not, label %if.end14, label %if.end11.out_crit_edge

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  br label %out

if.end14:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  %call15 = tail call i32 @kernfs_rename_ns(ptr noundef nonnull %call, ptr noundef %parent.0, ptr noundef %new, ptr noundef %new_ns) #2
  br label %out

out:                                              ; preds = %if.end14, %if.end11.out_crit_edge, %if.end8.out_crit_edge, %if.end5.out_crit_edge
  %result.0 = phi i32 [ -22, %if.end8.out_crit_edge ], [ -22, %if.end11.out_crit_edge ], [ %call15, %if.end14 ], [ -2, %if.end5.out_crit_edge ]
  tail call void @kernfs_put(ptr noundef %call) #2
  ret i32 %result.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_rename_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_warn_dup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_sysfs_create_link, !1, !"__ksymtab_sysfs_create_link", i1 false, i1 false}
!1 = !{!"../fs/sysfs/symlink.c", i32 94, i32 1}
!2 = !{ptr @__ksymtab_sysfs_create_link_nowarn, !3, !"__ksymtab_sysfs_create_link_nowarn", i1 false, i1 false}
!3 = !{!"../fs/sysfs/symlink.c", i32 110, i32 1}
!4 = !{ptr @__ksymtab_sysfs_remove_link, !5, !"__ksymtab_sysfs_remove_link", i1 false, i1 false}
!5 = !{!"../fs/sysfs/symlink.c", i32 154, i32 1}
!6 = !{ptr @__ksymtab_sysfs_rename_link_ns, !7, !"__ksymtab_sysfs_rename_link_ns", i1 false, i1 false}
!7 = !{!"../fs/sysfs/symlink.c", i32 198, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/sysfs/symlink.c", i32 26, i32 6}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
