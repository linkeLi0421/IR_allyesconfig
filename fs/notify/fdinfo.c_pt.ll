; ModuleID = '/llk/IR_all_yes/fs/notify/fdinfo.c_pt.bc'
source_filename = "../fs/notify/fdinfo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file = type { %union.anon.1, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.fsnotify_group = type { ptr, %struct.refcount_struct, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i32, i32, i32, i8, %struct.mutex, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %union.anon.78 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.78 = type { %struct.fanotify_group_private_data }
%struct.fanotify_group_private_data = type { ptr, %struct.list_head, %struct.wait_queue_head, i32, i32, ptr, %struct.mempool_s }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.fsnotify_mark_connector = type { %struct.spinlock, i16, i16, %struct.__kernel_fsid_t, %union.anon.65, %struct.hlist_head }
%struct.__kernel_fsid_t = type { [2 x i32] }
%union.anon.65 = type { ptr }
%struct.hlist_head = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.66, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.67, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.68, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.66 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.67 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.68 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.anon.79 = type { %struct.file_handle, [128 x i8] }
%struct.file_handle = type { i32, i32, [0 x i8] }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fanotify flags:%x event-flags:%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"inotify wd:%x ino:%lx sdev:%x mask:%x ignored_mask:%x \00", [41 x i8] zeroinitializer }, align 32
@show_mark_fhandle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fs/notify/fdinfo.c\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Can't encode file handler for inotify: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fhandle-bytes:%x fhandle-type:%x f_handle:\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02x\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"fanotify ino:%lx sdev:%x mflags:%x mask:%x ignored_mask:%x \00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fanotify mnt_id:%x mflags:%x mask:%x ignored_mask:%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fanotify sdev:%x mflags:%x mask:%x ignored_mask:%x\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 2]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 146, i32 16 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 93, i32 17 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 54, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 61, i32 16 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 65, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 123, i32 17 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 132, i32 17 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [22 x i8] c"../fs/notify/fdinfo.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 137, i32 17 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @inotify_show_fdinfo(ptr noundef %m, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %mark_mutex.i = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mark_mutex.i, i32 noundef 0) #3
  %marks_list.i = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 11
  %count.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %size.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %inotify_fdinfo.exit.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %marks_list.i, %entry ], [ %.pn.i, %inotify_fdinfo.exit.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %marks_list.i
  br i1 %cmp.not.i, label %for.cond.i.show_fdinfo.exit_crit_edge, label %for.body.i

for.cond.i.show_fdinfo.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %show_fdinfo.exit

for.body.i:                                       ; preds = %for.cond.i
  %mark.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %connector.i = getelementptr i8, ptr %.pn.i, i32 60
  %3 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connector.i, align 4
  %type.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not.i1 = icmp eq i16 %6, 0
  br i1 %cmp.not.i1, label %if.end.i, label %for.body.i.inotify_fdinfo.exit_crit_edge

for.body.i.inotify_fdinfo.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %inotify_fdinfo.exit

if.end.i:                                         ; preds = %for.body.i
  %7 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %4, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 -768
  %call3.i = tail call ptr @igrab(ptr noundef %add.ptr.i.i) #3
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %if.end.i.inotify_fdinfo.exit_crit_edge, label %if.then4.i

if.end.i.inotify_fdinfo.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %inotify_fdinfo.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %mark.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mark.0.i, align 4
  %and.i = and i32 %11, 4095
  %wd.i = getelementptr i8, ptr %.pn.i, i32 72
  %12 = ptrtoint ptr %wd.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %wd.i, align 4
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call3.i, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call3.i, i32 0, i32 8
  %16 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %i_sb.i, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %s_dev.i, align 8
  %ignored_mask.i = getelementptr i8, ptr %.pn.i, i32 64
  %20 = ptrtoint ptr %ignored_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ignored_mask.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %15, i32 noundef %19, i32 noundef %and.i, i32 noundef %21) #3
  tail call fastcc void @show_mark_fhandle(ptr noundef %m, ptr noundef nonnull %call3.i) #3
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #3
  tail call void @iput(ptr noundef nonnull %call3.i) #3
  br label %inotify_fdinfo.exit

inotify_fdinfo.exit:                              ; preds = %if.then4.i, %if.end.i.inotify_fdinfo.exit_crit_edge, %for.body.i.inotify_fdinfo.exit_crit_edge
  %22 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %count.i.i, align 4
  %24 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size.i.i, align 4
  %cmp.i.i = icmp eq i32 %23, %25
  br i1 %cmp.i.i, label %inotify_fdinfo.exit.show_fdinfo.exit_crit_edge, label %inotify_fdinfo.exit.for.cond.i_crit_edge

inotify_fdinfo.exit.for.cond.i_crit_edge:         ; preds = %inotify_fdinfo.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

inotify_fdinfo.exit.show_fdinfo.exit_crit_edge:   ; preds = %inotify_fdinfo.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %show_fdinfo.exit

show_fdinfo.exit:                                 ; preds = %inotify_fdinfo.exit.show_fdinfo.exit_crit_edge, %for.cond.i.show_fdinfo.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mark_mutex.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fanotify_show_fdinfo(ptr noundef %m, ptr nocapture noundef readonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %flags = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 8127
  %f_flags = getelementptr inbounds %struct.fsnotify_group, ptr %1, i32 0, i32 15, i32 0, i32 4
  %4 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_flags, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str, i32 noundef %and, i32 noundef %5) #3
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %mark_mutex.i = getelementptr inbounds %struct.fsnotify_group, ptr %7, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %mark_mutex.i, i32 noundef 0) #3
  %marks_list.i = getelementptr inbounds %struct.fsnotify_group, ptr %7, i32 0, i32 11
  %count.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 3
  %size.i.i = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %fanotify_fdinfo.exit.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %marks_list.i, %entry ], [ %.pn.i, %fanotify_fdinfo.exit.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %marks_list.i
  br i1 %cmp.not.i, label %for.cond.i.show_fdinfo.exit_crit_edge, label %for.body.i

for.cond.i.show_fdinfo.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %show_fdinfo.exit

for.body.i:                                       ; preds = %for.cond.i
  %mark.0.i = getelementptr i8, ptr %.pn.i, i32 -12
  %flags.i = getelementptr i8, ptr %.pn.i, i32 68
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %and.i = shl i32 %10, 6
  %11 = and i32 %and.i, 64
  %connector.i = getelementptr i8, ptr %.pn.i, i32 60
  %12 = ptrtoint ptr %connector.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connector.i, align 4
  %type.i = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type.i, align 4
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %for.body.i.fanotify_fdinfo.exit_crit_edge [
    i16 0, label %if.then2.i
    i16 1, label %if.then13.i
    i16 2, label %if.then24.i
  ]

for.body.i.fanotify_fdinfo.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fanotify_fdinfo.exit

if.then2.i:                                       ; preds = %for.body.i
  %17 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 -768
  %call4.i = tail call ptr @igrab(ptr noundef %add.ptr.i.i) #3
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then2.i.fanotify_fdinfo.exit_crit_edge, label %if.end7.i

if.then2.i.fanotify_fdinfo.exit_crit_edge:        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %fanotify_fdinfo.exit

if.end7.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #5
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 11
  %20 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i_ino.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %call4.i, i32 0, i32 8
  %22 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_sb.i, align 4
  %s_dev.i = getelementptr inbounds %struct.super_block, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %s_dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %s_dev.i, align 8
  %26 = ptrtoint ptr %mark.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mark.0.i, align 4
  %ignored_mask.i = getelementptr i8, ptr %.pn.i, i32 64
  %28 = ptrtoint ptr %ignored_mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ignored_mask.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.6, i32 noundef %21, i32 noundef %25, i32 noundef %11, i32 noundef %27, i32 noundef %29) #3
  tail call fastcc void @show_mark_fhandle(ptr noundef %m, ptr noundef nonnull %call4.i) #3
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #3
  tail call void @iput(ptr noundef nonnull %call4.i) #3
  br label %fanotify_fdinfo.exit

if.then13.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %30 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %13, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %mnt_id.i = getelementptr i8, ptr %32, i32 8
  %33 = ptrtoint ptr %mnt_id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mnt_id.i, align 4
  %35 = ptrtoint ptr %mark.0.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mark.0.i, align 4
  %ignored_mask17.i = getelementptr i8, ptr %.pn.i, i32 64
  %37 = ptrtoint ptr %ignored_mask17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ignored_mask17.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.7, i32 noundef %34, i32 noundef %11, i32 noundef %36, i32 noundef %38) #3
  br label %fanotify_fdinfo.exit

if.then24.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  %39 = getelementptr inbounds %struct.fsnotify_mark_connector, ptr %13, i32 0, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %s_dev27.i = getelementptr i8, ptr %41, i32 -1092
  %42 = ptrtoint ptr %s_dev27.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_dev27.i, align 8
  %44 = ptrtoint ptr %mark.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mark.0.i, align 4
  %ignored_mask29.i = getelementptr i8, ptr %.pn.i, i32 64
  %46 = ptrtoint ptr %ignored_mask29.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ignored_mask29.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.8, i32 noundef %43, i32 noundef %11, i32 noundef %45, i32 noundef %47) #3
  br label %fanotify_fdinfo.exit

fanotify_fdinfo.exit:                             ; preds = %if.then24.i, %if.then13.i, %if.end7.i, %if.then2.i.fanotify_fdinfo.exit_crit_edge, %for.body.i.fanotify_fdinfo.exit_crit_edge
  %48 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %count.i.i, align 4
  %50 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i.i, align 4
  %cmp.i.i = icmp eq i32 %49, %51
  br i1 %cmp.i.i, label %fanotify_fdinfo.exit.show_fdinfo.exit_crit_edge, label %fanotify_fdinfo.exit.for.cond.i_crit_edge

fanotify_fdinfo.exit.for.cond.i_crit_edge:        ; preds = %fanotify_fdinfo.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i

fanotify_fdinfo.exit.show_fdinfo.exit_crit_edge:  ; preds = %fanotify_fdinfo.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %show_fdinfo.exit

show_fdinfo.exit:                                 ; preds = %fanotify_fdinfo.exit.show_fdinfo.exit_crit_edge, %for.cond.i.show_fdinfo.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mark_mutex.i) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @igrab(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @show_mark_fhandle(ptr noundef %m, ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %f = alloca %struct.anon.79, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %f) #3
  %0 = getelementptr inbounds i8, ptr %f, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 132)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #3
  %2 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %f, align 4
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 32, ptr %size, align 4
  %f_handle = getelementptr inbounds %struct.file_handle, ptr %f, i32 0, i32 2
  %call = call i32 @exportfs_encode_inode_fh(ptr noundef %inode, ptr noundef %f_handle, ptr noundef nonnull %size, ptr noundef null) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call)
  %cmp = icmp eq i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  %or.cond = or i1 %cmp, %cmp4
  br i1 %or.cond, label %land.end, label %if.end38

land.end:                                         ; preds = %entry
  %.b62 = load i1, ptr @show_mark_fhandle.__already_done, align 1
  br i1 %.b62, label %land.end.cleanup_crit_edge, label %if.then9, !prof !27

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then9:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #5
  store i1 true, ptr @show_mark_fhandle.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 54, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef %call) #3
  br label %cleanup

if.end38:                                         ; preds = %entry
  %handle_type = getelementptr inbounds %struct.file_handle, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %handle_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %handle_type, align 4
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  %mul = shl i32 %6, 2
  %7 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %f, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.4, i32 noundef %mul, i32 noundef %call) #3
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4863.not = icmp eq i32 %9, 0
  br i1 %cmp4863.not, label %if.end38.cleanup_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  br label %for.body

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end38.for.body_crit_edge
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end38.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.file_handle, ptr %f, i32 0, i32 2, i32 %i.064
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.5, i32 noundef %conv) #3
  %inc = add nuw i32 %i.064, 1
  %12 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f, align 4
  %cmp48 = icmp ult i32 %inc, %13
  br i1 %cmp48, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then9, %land.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #3
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %f) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @exportfs_encode_inode_fh(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/notify/fdinfo.c", i32 146, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/notify/fdinfo.c", i32 93, i32 17}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../fs/notify/fdinfo.c", i32 54, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/notify/fdinfo.c", i32 61, i32 16}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/notify/fdinfo.c", i32 65, i32 17}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/notify/fdinfo.c", i32 123, i32 17}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/notify/fdinfo.c", i32 132, i32 17}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/notify/fdinfo.c", i32 137, i32 17}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 2000, i32 1}
