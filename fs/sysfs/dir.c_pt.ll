; ModuleID = '/llk/IR_all_yes/fs/sysfs/dir.c_pt.bc'
source_filename = "../fs/sysfs/dir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sysfs_create_mount_point\22, \22a\22\09"
module asm "\09.weak\09__crc_sysfs_create_mount_point\09\09\09\09"
module asm "\09.long\09__crc_sysfs_create_mount_point\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_create_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_create_mount_point\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_create_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+sysfs_remove_mount_point\22, \22a\22\09"
module asm "\09.weak\09__crc_sysfs_remove_mount_point\09\09\09\09"
module asm "\09.long\09__crc_sysfs_remove_mount_point\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sysfs_remove_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22sysfs_remove_mount_point\22\09\09\09\09\09"
module asm "__kstrtabns_sysfs_remove_mount_point:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.2, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.2 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sysfs_symlink_target_lock\00", [38 x i8] zeroinitializer }, align 32
@sysfs_symlink_target_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sysfs_warn_dup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014sysfs: cannot create duplicate filename '%s/%s'\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sysfs_warn_dup\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fs/sysfs/dir.c\00", [17 x i8] zeroinitializer }, align 32
@sysfs_warn_dup._entry_ptr = internal global ptr @sysfs_warn_dup._entry, section ".printk_index", align 4
@sysfs_root_kn = external dso_local local_unnamed_addr global ptr, align 4
@sysfs_remove_dir.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_sysfs_create_mount_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_create_mount_point = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_create_mount_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_create_mount_point to i32), ptr @__kstrtab_sysfs_create_mount_point, ptr @__kstrtabns_sysfs_create_mount_point }, section "___ksymtab_gpl+sysfs_create_mount_point", align 4
@__kstrtab_sysfs_remove_mount_point = external dso_local constant [0 x i8], align 1
@__kstrtabns_sysfs_remove_mount_point = external dso_local constant [0 x i8], align 1
@__ksymtab_sysfs_remove_mount_point = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sysfs_remove_mount_point to i32), ptr @__kstrtab_sysfs_remove_mount_point, ptr @__kstrtabns_sysfs_remove_mount_point }, section "___ksymtab_gpl+sysfs_remove_mount_point", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.7 = private unnamed_addr constant [26 x i8] c"sysfs_symlink_target_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 19, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [18 x i8] c"../fs/sysfs/dir.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 29, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_sysfs_create_mount_point, ptr @__ksymtab_sysfs_remove_mount_point, ptr @sysfs_warn_dup._entry, ptr @sysfs_warn_dup._entry_ptr, ptr @.str, ptr @sysfs_symlink_target_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_symlink_target_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysfs_warn_dup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysfs_warn_dup(ptr noundef %parent, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @kernfs_path_from_node(ptr noundef %parent, ptr noundef null, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %call7.i.i, ptr noundef %name) #9
  tail call void @dump_stack() #9
  tail call void @kfree(ptr noundef %call7.i.i) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_dir_ns(ptr noundef %kobj, ptr noundef %ns) local_unnamed_addr #0 align 64 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uid) #5
  %0 = ptrtoint ptr %uid to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %uid, align 4, !annotation !24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gid) #5
  %1 = ptrtoint ptr %gid to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %gid, align 4, !annotation !24
  %tobool.not = icmp eq ptr %kobj, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !25

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 46, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end23:                                         ; preds = %entry
  %parent24 = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %parent24 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent24, align 4
  %tobool25.not = icmp eq ptr %3, null
  %sd = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 5
  %parent.0.in = select i1 %tobool25.not, ptr @sysfs_root_kn, ptr %sd
  %4 = ptrtoint ptr %parent.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %parent.0 = load ptr, ptr %parent.0.in, align 4
  %tobool29.not = icmp eq ptr %parent.0, null
  br i1 %tobool29.not, label %if.end23.cleanup_crit_edge, label %if.end31

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  call void @kobject_get_ownership(ptr noundef nonnull %kobj, ptr noundef nonnull %uid, ptr noundef nonnull %gid) #5
  %5 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kobj, align 4
  %7 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %7)
  %.fca.0.load48 = load i32, ptr %uid, align 4
  %.fca.0.insert49 = insertvalue [1 x i32] poison, i32 %.fca.0.load48, 0
  %8 = ptrtoint ptr %gid to i32
  call void @__asan_load4_noabort(i32 %8)
  %.fca.0.load = load i32, ptr %gid, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call33 = call ptr @kernfs_create_dir_ns(ptr noundef nonnull %parent.0, ptr noundef %6, i16 noundef zeroext 493, [1 x i32] %.fca.0.insert49, [1 x i32] %.fca.0.insert, ptr noundef nonnull %kobj, ptr noundef %ns) #5
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end41

if.then35:                                        ; preds = %if.end31
  %9 = ptrtoint ptr %call33 to i32
  %cmp = icmp eq ptr %call33, inttoptr (i32 -17 to ptr)
  br i1 %cmp, label %if.then37, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37:                                        ; preds = %if.then35
  %10 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kobj, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 4096) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then37.sysfs_warn_dup.exit_crit_edge, label %if.then.i

if.then37.sysfs_warn_dup.exit_crit_edge:          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysfs_warn_dup.exit

if.then.i:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = call i32 @kernfs_path_from_node(ptr noundef nonnull %parent.0, ptr noundef null, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #5
  br label %sysfs_warn_dup.exit

sysfs_warn_dup.exit:                              ; preds = %if.then.i, %if.then37.sysfs_warn_dup.exit_crit_edge
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %call7.i.i.i, ptr noundef %11) #9
  call void @dump_stack() #9
  call void @kfree(ptr noundef %call7.i.i.i) #5
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %sd42 = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %13 = ptrtoint ptr %sd42 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call33, ptr %sd42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %sysfs_warn_dup.exit, %if.then35.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end41 ], [ -2, %if.end23.cleanup_crit_edge ], [ -17, %sysfs_warn_dup.exit ], [ %9, %if.then35.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gid) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uid) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_get_ownership(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_create_dir_ns(ptr noundef, ptr noundef, i16 noundef zeroext, [1 x i32], [1 x i32], ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysfs_remove_dir(ptr nocapture noundef %kobj) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @sysfs_symlink_target_lock) #5
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sd, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @sysfs_symlink_target_lock) #5
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end38_crit_edge, label %if.then

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then:                                          ; preds = %entry
  %flags.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %flags.i, align 8
  %5 = and i16 %4, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %5)
  %cmp.not = icmp eq i16 %5, 1
  br i1 %cmp.not, label %if.then.if.end30_crit_edge, label %land.rhs

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

land.rhs:                                         ; preds = %if.then
  %.b44 = load i1, ptr @sysfs_remove_dir.__already_done, align 1
  br i1 %.b44, label %land.rhs.if.end30_crit_edge, label %if.then9, !prof !26

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then9:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @sysfs_remove_dir.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 100, i32 noundef 9, ptr noundef null) #5
  br label %if.end30

if.end30:                                         ; preds = %if.then9, %land.rhs.if.end30_crit_edge, %if.then.if.end30_crit_edge
  tail call void @kernfs_remove(ptr noundef nonnull %1) #5
  br label %if.end38

if.end38:                                         ; preds = %if.end30, %entry.if.end38_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_rename_dir_ns(ptr nocapture noundef readonly %kobj, ptr noundef %new_name, ptr noundef %new_ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %call = tail call ptr @kernfs_get_parent(ptr noundef %1) #5
  %2 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd, align 4
  %call2 = tail call i32 @kernfs_rename_ns(ptr noundef %3, ptr noundef %call, ptr noundef %new_name, ptr noundef %new_ns) #5
  tail call void @kernfs_put(ptr noundef %call) #5
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_rename_ns(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_move_dir_ns(ptr nocapture noundef readonly %kobj, ptr noundef readonly %new_parent_kobj, ptr noundef %new_ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 5
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %tobool.not = icmp eq ptr %new_parent_kobj, null
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %sd1 = getelementptr inbounds %struct.kobject, ptr %new_parent_kobj, i32 0, i32 5
  %2 = ptrtoint ptr %sd1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true.cond.end_crit_edge

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysfs_root_kn to i32))
  %4 = load ptr, ptr @sysfs_root_kn, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi ptr [ %4, %cond.false ], [ %3, %land.lhs.true.cond.end_crit_edge ]
  %name = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 8
  %call = tail call i32 @kernfs_rename_ns(ptr noundef %1, ptr noundef %cond, ptr noundef %6, ptr noundef %new_ns) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysfs_create_mount_point(ptr nocapture noundef readonly %parent_kobj, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.kobject, ptr %parent_kobj, i32 0, i32 5
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %call = tail call ptr @kernfs_create_empty_dir(ptr noundef %1, ptr noundef %name) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %call to i32
  %cmp = icmp eq ptr %call, inttoptr (i32 -17 to ptr)
  br i1 %cmp, label %if.then3, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then3:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 4096) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then3.sysfs_warn_dup.exit_crit_edge, label %if.then.i

if.then3.sysfs_warn_dup.exit_crit_edge:           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %sysfs_warn_dup.exit

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %call.i.i = tail call i32 @kernfs_path_from_node(ptr noundef %1, ptr noundef null, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #5
  br label %sysfs_warn_dup.exit

sysfs_warn_dup.exit:                              ; preds = %if.then.i, %if.then3.sysfs_warn_dup.exit_crit_edge
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %call7.i.i.i, ptr noundef %name) #9
  tail call void @dump_stack() #9
  tail call void @kfree(ptr noundef %call7.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %sysfs_warn_dup.exit, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -17, %sysfs_warn_dup.exit ], [ %2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kernfs_create_empty_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sysfs_remove_mount_point(ptr nocapture noundef readonly %parent_kobj, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sd = getelementptr inbounds %struct.kobject, ptr %parent_kobj, i32 0, i32 5
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd, align 4
  %call = tail call i32 @kernfs_remove_by_name_ns(ptr noundef %1, ptr noundef %name, ptr noundef null) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernfs_path_from_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/sysfs/dir.c", i32 19, i32 1}
!2 = !{ptr @sysfs_symlink_target_lock, !1, !"sysfs_symlink_target_lock", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../fs/sysfs/dir.c", i32 29, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @sysfs_warn_dup._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @sysfs_warn_dup._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../fs/sysfs/dir.c", i32 100, i32 3}
!11 = !{ptr @__ksymtab_sysfs_create_mount_point, !12, !"__ksymtab_sysfs_create_mount_point", i1 false, i1 false}
!12 = !{!"../fs/sysfs/dir.c", i32 147, i32 1}
!13 = !{ptr @__ksymtab_sysfs_remove_mount_point, !14, !"__ksymtab_sysfs_remove_mount_point", i1 false, i1 false}
!14 = !{!"../fs/sysfs/dir.c", i32 161, i32 1}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
