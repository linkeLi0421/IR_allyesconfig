; ModuleID = '/llk/IR_all_yes/fs/hfs/attr.c_pt.bc'
source_filename = "../fs/hfs/attr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.hfs_find_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%union.hfs_cat_rec = type { %struct.hfs_cat_file }
%struct.hfs_cat_file = type <{ i8, i8, i8, i8, %struct.hfs_finfo, i32, i16, i32, i32, i16, i32, i32, i32, i32, i32, %struct.hfs_fxinfo, i16, [3 x %struct.hfs_extent], [3 x %struct.hfs_extent], i32 }>
%struct.hfs_finfo = type { i32, i32, i16, %struct.hfs_point, i16 }
%struct.hfs_point = type { i16, i16 }
%struct.hfs_fxinfo = type { i16, [8 x i8], i16, i32 }
%struct.hfs_extent = type { i16, i16 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.hlist_head = type { ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hfs_sb_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i16, i16, %struct.kuid_t, %struct.kgid_t, i32, i32, ptr, ptr, %struct.mutex, i32, i16, i32, ptr, i32, %struct.delayed_work, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@hfs_creator_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str, ptr null, i32 1, ptr null, ptr @hfs_xattr_get, ptr @hfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@hfs_type_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.1, ptr null, i32 0, ptr null, ptr @hfs_xattr_get, ptr @hfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@hfs_xattr_handlers = dso_local global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @hfs_creator_handler, ptr @hfs_type_handler, ptr null], [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hfs.creator\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hfs.type\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [20 x i8] c"hfs_creator_handler\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 135, i32 35 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"hfs_type_handler\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 142, i32 35 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"hfs_xattr_handlers\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 149, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 136, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [17 x i8] c"../fs/hfs/attr.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 143, i32 10 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @hfs_creator_handler, ptr @hfs_type_handler, ptr @hfs_xattr_handlers, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_creator_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_type_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hfs_xattr_handlers to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_xattr_get(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef writeonly %value, i32 noundef %size) #0 align 64 {
entry:
  %fd.i = alloca %struct.hfs_find_data, align 4
  %rec.i = alloca %union.hfs_cat_rec, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #3
  %2 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %rec.i) #3
  %3 = call ptr @memset(ptr %rec.i, i32 255, i32 102)
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.i = icmp eq i16 %6, -32768
  br i1 %cmp.i, label %lor.lhs.false.i, label %entry.__hfs_getxattr.exit_crit_edge

entry.__hfs_getxattr.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %__hfs_getxattr.exit

lor.lhs.false.i:                                  ; preds = %entry
  %flags.i = getelementptr i8, ptr %inode, i32 -252
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.__hfs_getxattr.exit_crit_edge

lor.lhs.false.i.__hfs_getxattr.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__hfs_getxattr.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool3.not.i = icmp eq i32 %size, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then4.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.i

if.then4.i:                                       ; preds = %if.end.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree.i = getelementptr inbounds %struct.hfs_sb_info, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %cat_tree.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cat_tree.i, align 4
  %call.i = call i32 @hfs_find_init(ptr noundef %14, ptr noundef nonnull %fd.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then4.i.__hfs_getxattr.exit_crit_edge

if.then4.i.__hfs_getxattr.exit_crit_edge:         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__hfs_getxattr.exit

if.end7.i:                                        ; preds = %if.then4.i
  %search_key.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 1
  %15 = ptrtoint ptr %search_key.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %search_key.i, align 4
  %cat_key.i = getelementptr i8, ptr %inode, i32 -244
  %17 = call ptr @memcpy(ptr %16, ptr %cat_key.i, i32 38)
  %call11.i = call i32 @hfs_brec_find(ptr noundef nonnull %fd.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i.if.then31.i_crit_edge

if.end7.i.if.then31.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31.i

if.end14.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #5
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 3
  %18 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bnode.i, align 4
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 7
  %20 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entryoffset.i, align 4
  call void @hfs_bnode_read(ptr noundef %19, ptr noundef nonnull %rec.i, i32 noundef %21, i32 noundef 102) #3
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end14.i, %if.end.i.if.end15.i_crit_edge
  %22 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end15.i.out.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb21.i
  ]

if.end15.i.out.i_crit_edge:                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

sw.bb.i:                                          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp16.i = icmp ugt i32 %size, 3
  br i1 %cmp16.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %UsrWds.i = getelementptr inbounds %struct.hfs_cat_file, ptr %rec.i, i32 0, i32 4
  %23 = ptrtoint ptr %UsrWds.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %UsrWds.i, align 1
  %25 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %value, align 1
  br label %out.i

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond.i = select i1 %tobool3.not.i, i32 4, i32 -34
  br label %out.i

sw.bb21.i:                                        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %size)
  %cmp22.i = icmp ugt i32 %size, 3
  br i1 %cmp22.i, label %if.then24.i, label %if.else26.i

if.then24.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #5
  %fdCreator.i = getelementptr inbounds %struct.hfs_cat_file, ptr %rec.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %fdCreator.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %fdCreator.i, align 1
  %28 = ptrtoint ptr %value to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %value, align 1
  br label %out.i

if.else26.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #5
  %cond28.i = select i1 %tobool3.not.i, i32 4, i32 -34
  br label %out.i

out.i:                                            ; preds = %if.else26.i, %if.then24.i, %if.else.i, %if.then18.i, %if.end15.i.out.i_crit_edge
  %res.1.i = phi i32 [ 0, %if.end15.i.out.i_crit_edge ], [ 4, %if.then24.i ], [ %cond28.i, %if.else26.i ], [ 4, %if.then18.i ], [ %cond.i, %if.else.i ]
  br i1 %tobool3.not.i, label %out.i.__hfs_getxattr.exit_crit_edge, label %out.i.if.then31.i_crit_edge

out.i.if.then31.i_crit_edge:                      ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then31.i

out.i.__hfs_getxattr.exit_crit_edge:              ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__hfs_getxattr.exit

if.then31.i:                                      ; preds = %out.i.if.then31.i_crit_edge, %if.end7.i.if.then31.i_crit_edge
  %res.150.i = phi i32 [ %res.1.i, %out.i.if.then31.i_crit_edge ], [ %call11.i, %if.end7.i.if.then31.i_crit_edge ]
  call void @hfs_find_exit(ptr noundef nonnull %fd.i) #3
  br label %__hfs_getxattr.exit

__hfs_getxattr.exit:                              ; preds = %if.then31.i, %out.i.__hfs_getxattr.exit_crit_edge, %if.then4.i.__hfs_getxattr.exit_crit_edge, %lor.lhs.false.i.__hfs_getxattr.exit_crit_edge, %entry.__hfs_getxattr.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %lor.lhs.false.i.__hfs_getxattr.exit_crit_edge ], [ -95, %entry.__hfs_getxattr.exit_crit_edge ], [ %call.i, %if.then4.i.__hfs_getxattr.exit_crit_edge ], [ %res.150.i, %if.then31.i ], [ %res.1.i, %out.i.__hfs_getxattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %rec.i) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #3
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hfs_xattr_set(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %name, ptr noundef readonly %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %fd.i = alloca %struct.hfs_find_data, align 4
  %rec.i = alloca %union.hfs_cat_rec, align 1
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags1, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %fd.i) #3
  %2 = call ptr @memset(ptr %fd.i, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 102, ptr nonnull %rec.i) #3
  %3 = call ptr @memset(ptr %rec.i, i32 255, i32 102)
  %4 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %inode, align 8
  %6 = and i16 %5, -4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32768, i16 %6)
  %cmp.i = icmp eq i16 %6, -32768
  br i1 %cmp.i, label %lor.lhs.false.i, label %if.end.__hfs_setxattr.exit_crit_edge

if.end.__hfs_setxattr.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %__hfs_setxattr.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %flags2.i = getelementptr i8, ptr %inode, i32 -252
  %7 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags2.i, align 4
  %and3.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.__hfs_setxattr.exit_crit_edge

lor.lhs.false.i.__hfs_setxattr.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__hfs_setxattr.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %9 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %10, i32 0, i32 33
  %11 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_fs_info.i, align 16
  %cat_tree.i = getelementptr inbounds %struct.hfs_sb_info, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %cat_tree.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cat_tree.i, align 4
  %call.i = call i32 @hfs_find_init(ptr noundef %14, ptr noundef nonnull %fd.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.__hfs_setxattr.exit_crit_edge

if.end.i.__hfs_setxattr.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %__hfs_setxattr.exit

if.end6.i:                                        ; preds = %if.end.i
  %search_key.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 1
  %15 = ptrtoint ptr %search_key.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %search_key.i, align 4
  %cat_key.i = getelementptr i8, ptr %inode, i32 -244
  %17 = call ptr @memcpy(ptr %16, ptr %cat_key.i, i32 38)
  %call10.i = call i32 @hfs_brec_find(ptr noundef nonnull %fd.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end6.i.out.i_crit_edge

if.end6.i.out.i_crit_edge:                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

if.end13.i:                                       ; preds = %if.end6.i
  %bnode.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 3
  %18 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bnode.i, align 4
  %entryoffset.i = getelementptr inbounds %struct.hfs_find_data, ptr %fd.i, i32 0, i32 7
  %20 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %entryoffset.i, align 4
  call void @hfs_bnode_read(ptr noundef %19, ptr noundef nonnull %rec.i, i32 noundef %21, i32 noundef 102) #3
  %22 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %if.end13.i.if.then26.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb18.i
  ]

if.end13.i.if.then26.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then26.i

sw.bb.i:                                          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp14.i = icmp eq i32 %size, 4
  br i1 %cmp14.i, label %if.then16.i, label %sw.bb.i.out.i_crit_edge

sw.bb.i.out.i_crit_edge:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

if.then16.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  %UsrWds.i = getelementptr inbounds %struct.hfs_cat_file, ptr %rec.i, i32 0, i32 4
  br label %if.then26.sink.split.i

sw.bb18.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp19.i = icmp eq i32 %size, 4
  br i1 %cmp19.i, label %if.then21.i, label %sw.bb18.i.out.i_crit_edge

sw.bb18.i.out.i_crit_edge:                        ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %out.i

if.then21.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #5
  %fdCreator.i = getelementptr inbounds %struct.hfs_cat_file, ptr %rec.i, i32 0, i32 4, i32 1
  br label %if.then26.sink.split.i

if.then26.sink.split.i:                           ; preds = %if.then21.i, %if.then16.i
  %fdCreator.sink.i = phi ptr [ %fdCreator.i, %if.then21.i ], [ %UsrWds.i, %if.then16.i ]
  %23 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %value, align 1
  %25 = ptrtoint ptr %fdCreator.sink.i to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %fdCreator.sink.i, align 1
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.then26.sink.split.i, %if.end13.i.if.then26.i_crit_edge
  %26 = ptrtoint ptr %bnode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bnode.i, align 4
  %28 = ptrtoint ptr %entryoffset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %entryoffset.i, align 4
  call void @hfs_bnode_write(ptr noundef %27, ptr noundef nonnull %rec.i, i32 noundef %29, i32 noundef 102) #3
  br label %out.i

out.i:                                            ; preds = %if.then26.i, %sw.bb18.i.out.i_crit_edge, %sw.bb.i.out.i_crit_edge, %if.end6.i.out.i_crit_edge
  %res.1.i = phi i32 [ %call10.i, %if.end6.i.out.i_crit_edge ], [ 0, %if.then26.i ], [ -34, %sw.bb.i.out.i_crit_edge ], [ -34, %sw.bb18.i.out.i_crit_edge ]
  call void @hfs_find_exit(ptr noundef nonnull %fd.i) #3
  br label %__hfs_setxattr.exit

__hfs_setxattr.exit:                              ; preds = %out.i, %if.end.i.__hfs_setxattr.exit_crit_edge, %lor.lhs.false.i.__hfs_setxattr.exit_crit_edge, %if.end.__hfs_setxattr.exit_crit_edge
  %retval.0.i = phi i32 [ %res.1.i, %out.i ], [ -95, %lor.lhs.false.i.__hfs_setxattr.exit_crit_edge ], [ -95, %if.end.__hfs_setxattr.exit_crit_edge ], [ %call.i, %if.end.i.__hfs_setxattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 102, ptr nonnull %rec.i) #3
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %fd.i) #3
  br label %return

return:                                           ; preds = %__hfs_setxattr.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %__hfs_setxattr.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_find_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hfs_brec_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_find_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hfs_bnode_write(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @hfs_xattr_handlers, !1, !"hfs_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/hfs/attr.c", i32 149, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/hfs/attr.c", i32 136, i32 10}
!4 = !{ptr @hfs_creator_handler, !5, !"hfs_creator_handler", i1 false, i1 false}
!5 = !{!"../fs/hfs/attr.c", i32 135, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/hfs/attr.c", i32 143, i32 10}
!8 = !{ptr @hfs_type_handler, !9, !"hfs_type_handler", i1 false, i1 false}
!9 = !{!"../fs/hfs/attr.c", i32 142, i32 35}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
