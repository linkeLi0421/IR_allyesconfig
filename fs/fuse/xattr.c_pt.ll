; ModuleID = '/llk/IR_all_yes/fs/fuse/xattr.c_pt.bc'
source_filename = "../fs/fuse/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.fuse_args = type { i64, i32, i16, i16, i16, [3 x %struct.fuse_in_arg], [2 x %struct.fuse_arg], ptr }
%struct.fuse_in_arg = type { i32, ptr }
%struct.fuse_arg = type { i32, ptr }
%struct.fuse_setxattr_in = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.77, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.78, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.79, ptr, %struct.address_space, %struct.list_head, %union.anon.80, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.79 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.80 = type { ptr }
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
%struct.fuse_conn = type { %struct.spinlock, %struct.refcount_struct, %struct.atomic_t, %struct.callback_head, %struct.kuid_t, %struct.kgid_t, ptr, ptr, i32, i32, i32, i32, %struct.fuse_iqueue, %struct.atomic64_t, %struct.rb_root, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, i32, i32, %struct.wait_queue_head, i32, i8, [7 x i8], %struct.atomic_t, i32, %struct.list_head, i32, [5 x ptr], i32, [4 x i32], %struct.atomic64_t, ptr, %struct.rw_semaphore, %struct.list_head, %struct.list_head, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fuse_iqueue = type { i32, %struct.spinlock, %struct.wait_queue_head, i64, %struct.list_head, %struct.list_head, %struct.fuse_forget_link, ptr, i32, ptr, ptr, ptr }
%struct.fuse_forget_link = type { %struct.fuse_forget_one, ptr }
%struct.fuse_forget_one = type { i64, i64 }
%struct.fuse_inode = type { %struct.inode, i64, i64, ptr, i64, i32, i16, i64, i64, %union.anon.81, i32, %struct.mutex, %struct.spinlock }
%union.anon.81 = type { %struct.anon.83 }
%struct.anon.83 = type { i8, i64, i64, i64, %struct.timespec64, i64, %struct.spinlock }
%struct.fuse_getxattr_in = type { i32, i32 }
%struct.fuse_getxattr_out = type { i32, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.75, %struct.list_head, %struct.list_head, %union.anon.76 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.75 = type { %struct.list_head }
%union.anon.76 = type { %struct.hlist_node }

@fuse_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str, i32 0, ptr null, ptr @fuse_xattr_get, ptr @fuse_xattr_set }, [40 x i8] zeroinitializer }, align 32
@fuse_xattr_handlers = dso_local global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fuse_xattr_handler, ptr null], [24 x i8] zeroinitializer }, align 32
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@fuse_acl_xattr_handlers = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @fuse_xattr_handler, ptr null], [16 x i8] zeroinitializer }, align 32
@fuse_no_acl_access_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.1, ptr null, i32 32768, ptr @no_xattr_list, ptr @no_xattr_get, ptr @no_xattr_set }, [40 x i8] zeroinitializer }, align 32
@fuse_no_acl_default_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr @.str.2, ptr null, i32 32768, ptr @no_xattr_list, ptr @no_xattr_get, ptr @no_xattr_set }, [40 x i8] zeroinitializer }, align 32
@fuse_no_acl_xattr_handlers = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @fuse_no_acl_access_xattr_handler, ptr @fuse_no_acl_default_xattr_handler, ptr @fuse_xattr_handler, ptr null], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"fuse_xattr_handler\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 227, i32 35 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"fuse_xattr_handlers\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 233, i32 29 }
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"fuse_acl_xattr_handlers\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 238, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [33 x i8] c"fuse_no_acl_access_xattr_handler\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 245, i32 35 }
@___asan_gen_.17 = private unnamed_addr constant [34 x i8] c"fuse_no_acl_default_xattr_handler\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 253, i32 35 }
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"fuse_no_acl_xattr_handlers\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 261, i32 29 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 228, i32 12 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 246, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [19 x i8] c"../fs/fuse/xattr.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 254, i32 11 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @fuse_xattr_handler, ptr @fuse_xattr_handlers, ptr @fuse_acl_xattr_handlers, ptr @fuse_no_acl_access_xattr_handler, ptr @fuse_no_acl_default_xattr_handler, ptr @fuse_no_acl_xattr_handlers, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_xattr_handlers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_acl_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_no_acl_access_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_no_acl_default_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fuse_no_acl_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, i32 noundef %extra_flags) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_setxattr_in, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #6
  %4 = getelementptr inbounds i8, ptr %args, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %inarg) #6
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %no_setxattr = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %no_setxattr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load = load i56, ptr %no_setxattr, align 1
  %9 = and i56 %bf.load, 274877906944
  %tobool.not = icmp eq i56 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = getelementptr inbounds %struct.fuse_setxattr_in, ptr %inarg, i32 0, i32 2
  %11 = getelementptr inbounds %struct.fuse_setxattr_in, ptr %inarg, i32 0, i32 1
  %12 = getelementptr inbounds i8, ptr %inarg, i32 12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %12, align 4
  %14 = ptrtoint ptr %inarg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size, ptr %inarg, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %flags, ptr %11, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %extra_flags, ptr %10, align 4
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %17 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 21, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %18 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %nodeid.i, align 8
  %20 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %21 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 3, ptr %in_numargs, align 4
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %setxattr_ext = getelementptr inbounds %struct.fuse_conn, ptr %23, i32 0, i32 26
  %24 = ptrtoint ptr %setxattr_ext to i32
  call void @__asan_loadN_noabort(i32 %24, i32 7)
  %bf.load5 = load i56, ptr %setxattr_ext, align 1
  %25 = and i56 %bf.load5, 137438953472
  %tobool9.not = icmp eq i56 %25, 0
  %cond = select i1 %tobool9.not, i32 8, i32 16
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %26 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond, ptr %in_args, align 4
  %value13 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %value13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %inarg, ptr %value13, align 8
  %call14 = call i32 @strlen(ptr noundef %name) #9
  %add = add i32 %call14, 1
  %arrayidx16 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %arrayidx16, align 4
  %value20 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1, i32 1
  %29 = ptrtoint ptr %value20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name, ptr %value20, align 8
  %arrayidx22 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %size, ptr %arrayidx22, align 4
  %value26 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 2, i32 1
  %31 = ptrtoint ptr %value26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %value, ptr %value26, align 8
  %call27 = call i32 @fuse_simple_request(ptr noundef %3, ptr noundef nonnull %args) #6
  %32 = zext i32 %call27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call27, label %if.end.cleanup_crit_edge [
    i32 -38, label %if.end33.thread
    i32 0, label %if.then35
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %no_setxattr30 = getelementptr inbounds %struct.fuse_conn, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %no_setxattr30 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load31 = load i56, ptr %no_setxattr30, align 1
  %bf.set = or i56 %bf.load31, 274877906944
  store i56 %bf.set, ptr %no_setxattr30, align 1
  br label %cleanup

if.then35:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @fuse_update_ctime(ptr noundef %inode) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end33.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then35 ], [ -95, %if.end33.thread ], [ %call27, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %inarg) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_simple_request(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fuse_update_ctime(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_getxattr(ptr nocapture noundef readonly %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_getxattr_in, align 8
  %outarg = alloca %struct.fuse_getxattr_out, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #6
  %4 = getelementptr inbounds i8, ptr %args, i32 16
  %5 = call ptr @memset(ptr %4, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inarg) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outarg) #6
  %6 = ptrtoint ptr %outarg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %outarg, align 4, !annotation !27
  %7 = getelementptr inbounds %struct.fuse_getxattr_out, ptr %outarg, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !27
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %no_getxattr = getelementptr inbounds %struct.fuse_conn, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %no_getxattr to i32
  call void @__asan_loadN_noabort(i32 %11, i32 7)
  %bf.load = load i56, ptr %no_getxattr, align 1
  %12 = and i56 %bf.load, 68719476736
  %tobool.not = icmp eq i56 %12, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %inarg, align 8
  store i32 %size, ptr %inarg, align 8
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %14 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 22, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %15 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %nodeid.i, align 8
  %17 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %18 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %19 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %in_args, align 4
  %value6 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %value6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %inarg, ptr %value6, align 8
  %call7 = call i32 @strlen(ptr noundef %name) #9
  %add = add i32 %call7, 1
  %arrayidx9 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %arrayidx9, align 4
  %value13 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 1, i32 1
  %22 = ptrtoint ptr %value13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %name, ptr %value13, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %23 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %out_numargs, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool14.not = icmp eq i32 %size, 0
  br i1 %tobool14.not, label %if.end.if.end29_crit_edge, label %if.then15

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %out_argvar = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 4
  %24 = ptrtoint ptr %out_argvar to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load16 = load i16, ptr %out_argvar, align 8
  %bf.set = or i16 %bf.load16, 512
  store i16 %bf.set, ptr %out_argvar, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then15, %if.end.if.end29_crit_edge
  %size.sink = phi i32 [ %size, %if.then15 ], [ 8, %if.end.if.end29_crit_edge ]
  %value.sink = phi ptr [ %value, %if.then15 ], [ %outarg, %if.end.if.end29_crit_edge ]
  %25 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %size.sink, ptr %25, align 4
  %27 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %value.sink, ptr %27, align 8
  %call30 = call i32 @fuse_simple_request(ptr noundef %3, ptr noundef nonnull %args) #6
  %29 = or i32 %call30, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %if.then33, label %if.end29.if.end35_crit_edge

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then33:                                        ; preds = %if.end29
  %31 = ptrtoint ptr %outarg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %outarg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %32)
  %cmp = icmp slt i32 %32, 65536
  br i1 %cmp, label %if.then33.if.end35_crit_edge, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then33.if.end35_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end35:                                         ; preds = %if.then33.if.end35_crit_edge, %if.end29.if.end35_crit_edge
  %ret.0 = phi i32 [ %call30, %if.end29.if.end35_crit_edge ], [ %32, %if.then33.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %ret.0)
  %cmp36 = icmp eq i32 %ret.0, -38
  br i1 %cmp36, label %if.then37, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  %no_getxattr39 = getelementptr inbounds %struct.fuse_conn, ptr %34, i32 0, i32 26
  %35 = ptrtoint ptr %no_getxattr39 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 7)
  %bf.load40 = load i56, ptr %no_getxattr39, align 1
  %bf.set42 = or i56 %bf.load40, 68719476736
  store i56 %bf.set42, ptr %no_getxattr39, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end35.cleanup_crit_edge, %if.then33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %if.then37 ], [ %ret.0, %if.end35.cleanup_crit_edge ], [ 65536, %if.then33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outarg) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inarg) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_listxattr(ptr nocapture noundef readonly %entry1, ptr noundef %list, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  %inarg = alloca %struct.fuse_getxattr_in, align 8
  %outarg = alloca %struct.fuse_getxattr_out, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %entry1, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #6
  %6 = getelementptr inbounds i8, ptr %args, i32 16
  %7 = call ptr @memset(ptr %6, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %inarg) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %outarg) #6
  %8 = ptrtoint ptr %outarg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %outarg, align 4, !annotation !27
  %9 = getelementptr inbounds %struct.fuse_getxattr_out, ptr %outarg, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4, !annotation !27
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i, align 4
  %13 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  %call4 = tail call i32 @fuse_allow_current_process(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %no_listxattr = getelementptr inbounds %struct.fuse_conn, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %no_listxattr to i32
  call void @__asan_loadN_noabort(i32 %18, i32 7)
  %bf.load = load i56, ptr %no_listxattr, align 1
  %19 = and i56 %bf.load, 34359738368
  %tobool8.not = icmp eq i56 %19, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %20 = ptrtoint ptr %inarg to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %inarg, align 8
  store i32 %size, ptr %inarg, align 8
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %21 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 23, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %nodeid.i, align 8
  %24 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %25 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %in_numargs, align 4
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %26 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %inarg, ptr %value, align 8
  %out_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 3
  %28 = ptrtoint ptr %out_numargs to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %out_numargs, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool16.not = icmp eq i32 %size, 0
  br i1 %tobool16.not, label %if.end10.if.end31_crit_edge, label %if.then17

if.end10.if.end31_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %out_argvar = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 4
  %29 = ptrtoint ptr %out_argvar to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load18 = load i16, ptr %out_argvar, align 8
  %bf.set = or i16 %bf.load18, 512
  store i16 %bf.set, ptr %out_argvar, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then17, %if.end10.if.end31_crit_edge
  %size.sink = phi i32 [ %size, %if.then17 ], [ 8, %if.end10.if.end31_crit_edge ]
  %list.sink = phi ptr [ %list, %if.then17 ], [ %outarg, %if.end10.if.end31_crit_edge ]
  %30 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %size.sink, ptr %30, align 4
  %32 = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 6, i32 0, i32 1
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list.sink, ptr %32, align 8
  %call32 = call i32 @fuse_simple_request(ptr noundef %5, ptr noundef nonnull %args) #6
  %34 = or i32 %call32, %size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %if.then35, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %outarg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %outarg, align 4
  %38 = call i32 @llvm.smin.i32(i32 %37, i32 65536)
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %if.end31.if.end37_crit_edge
  %ret.0 = phi i32 [ %call32, %if.end31.if.end37_crit_edge ], [ %38, %if.then35 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp38 = icmp slt i32 %ret.0, 1
  %brmerge74 = or i1 %tobool16.not, %cmp38
  br i1 %brmerge74, label %if.end37.if.end43_crit_edge, label %if.end37.while.cond.i_crit_edge

if.end37.while.cond.i_crit_edge:                  ; preds = %if.end37
  br label %while.cond.i

if.end37.if.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end37.while.cond.i_crit_edge
  %list.addr.0.i = phi ptr [ %list.addr.1.i, %while.body.i.while.cond.i_crit_edge ], [ %list, %if.end37.while.cond.i_crit_edge ]
  %size.addr.0.i = phi i32 [ %size.addr.1.i, %while.body.i.while.cond.i_crit_edge ], [ %ret.0, %if.end37.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.addr.0.i)
  %tobool.not.i = icmp eq i32 %size.addr.0.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end43_crit_edge, label %while.body.i

while.cond.i.if.end43_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

while.body.i:                                     ; preds = %while.cond.i
  %call.i = call i32 @strnlen(ptr noundef %list.addr.0.i, i32 noundef %size.addr.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %size.addr.0.i)
  %cmp.i = icmp eq i32 %call.i, %size.addr.0.i
  %or.cond.i = select i1 %tobool1.not.i, i1 true, i1 %cmp.i
  %add.i = add i32 %call.i, 1
  %list.addr.1.idx.i = select i1 %or.cond.i, i32 0, i32 %add.i
  %list.addr.1.i = getelementptr i8, ptr %list.addr.0.i, i32 %list.addr.1.idx.i
  %size.addr.1.i = sub i32 %size.addr.0.i, %list.addr.1.idx.i
  br i1 %or.cond.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %while.cond.i.if.end43_crit_edge, %if.end37.if.end43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %ret.0)
  %cmp44 = icmp eq i32 %ret.0, -38
  br i1 %cmp44, label %if.then45, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %no_listxattr47 = getelementptr inbounds %struct.fuse_conn, ptr %40, i32 0, i32 26
  %41 = ptrtoint ptr %no_listxattr47 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 7)
  %bf.load48 = load i56, ptr %no_listxattr47, align 1
  %bf.set50 = or i56 %bf.load48, 34359738368
  store i56 %bf.set50, ptr %no_listxattr47, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end43.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -13, %if.end.cleanup_crit_edge ], [ -95, %if.end6.cleanup_crit_edge ], [ -95, %if.then45 ], [ %ret.0, %if.end43.cleanup_crit_edge ], [ -5, %while.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %outarg) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %inarg) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fuse_allow_current_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fuse_removexattr(ptr noundef %inode, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #6
  %4 = getelementptr inbounds i8, ptr %args, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 56)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %no_removexattr = getelementptr inbounds %struct.fuse_conn, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %no_removexattr to i32
  call void @__asan_loadN_noabort(i32 %8, i32 7)
  %bf.load = load i56, ptr %no_removexattr, align 1
  %9 = and i56 %bf.load, 17179869184
  %tobool.not = icmp eq i56 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %opcode = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 1
  %10 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 24, ptr %opcode, align 8
  %nodeid.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %11 = ptrtoint ptr %nodeid.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %nodeid.i, align 8
  %13 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %args, align 8
  %in_numargs = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 2
  %14 = ptrtoint ptr %in_numargs to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %in_numargs, align 4
  %call2 = tail call i32 @strlen(ptr noundef %name) #9
  %add = add i32 %call2, 1
  %in_args = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5
  %15 = ptrtoint ptr %in_args to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %in_args, align 4
  %value = getelementptr inbounds %struct.fuse_args, ptr %args, i32 0, i32 5, i32 0, i32 1
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %name, ptr %value, align 8
  %call5 = call i32 @fuse_simple_request(ptr noundef %3, ptr noundef nonnull %args) #6
  %17 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %call5, label %if.end.cleanup_crit_edge [
    i32 -38, label %if.end11.thread
    i32 0, label %if.then13
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %no_removexattr8 = getelementptr inbounds %struct.fuse_conn, ptr %19, i32 0, i32 26
  %20 = ptrtoint ptr %no_removexattr8 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 7)
  %bf.load9 = load i56, ptr %no_removexattr8, align 1
  %bf.set = or i56 %bf.load9, 17179869184
  store i56 %bf.set, ptr %no_removexattr8, align 1
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @fuse_update_ctime(ptr noundef %inode) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end11.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ 0, %if.then13 ], [ -95, %if.end11.thread ], [ %call5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_xattr_get(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @fuse_getxattr(ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fuse_xattr_set(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dentry, ptr noundef %inode, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %args.i = alloca %struct.fuse_args, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %2 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not = icmp eq i32 %2, 0
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %value, null
  br i1 %tobool.not, label %if.then1, label %if.end3

if.then1:                                         ; preds = %if.end
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i.i, align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #6
  %7 = getelementptr inbounds i8, ptr %args.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 56)
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %no_removexattr.i = getelementptr inbounds %struct.fuse_conn, ptr %10, i32 0, i32 26
  %11 = ptrtoint ptr %no_removexattr.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 7)
  %bf.load.i = load i56, ptr %no_removexattr.i, align 1
  %12 = and i56 %bf.load.i, 17179869184
  %tobool.not.i = icmp eq i56 %12, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then1.fuse_removexattr.exit_crit_edge

if.then1.fuse_removexattr.exit_crit_edge:         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_removexattr.exit

if.end.i:                                         ; preds = %if.then1
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 24, ptr %7, align 8
  %nodeid.i.i = getelementptr inbounds %struct.fuse_inode, ptr %inode, i32 0, i32 1
  %14 = ptrtoint ptr %nodeid.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %nodeid.i.i, align 8
  %16 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %args.i, align 8
  %in_numargs.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 2
  %17 = ptrtoint ptr %in_numargs.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %in_numargs.i, align 4
  %call2.i = tail call i32 @strlen(ptr noundef %name) #10
  %add.i = add i32 %call2.i, 1
  %in_args.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5
  %18 = ptrtoint ptr %in_args.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %in_args.i, align 4
  %value.i = getelementptr inbounds %struct.fuse_args, ptr %args.i, i32 0, i32 5, i32 0, i32 1
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %name, ptr %value.i, align 8
  %call5.i = call i32 @fuse_simple_request(ptr noundef %6, ptr noundef nonnull %args.i) #6
  %20 = zext i32 %call5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %call5.i, label %if.end.i.fuse_removexattr.exit_crit_edge [
    i32 -38, label %if.end11.thread.i
    i32 0, label %if.then13.i
  ]

if.end.i.fuse_removexattr.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fuse_removexattr.exit

if.end11.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %6, align 4
  %no_removexattr8.i = getelementptr inbounds %struct.fuse_conn, ptr %22, i32 0, i32 26
  %23 = ptrtoint ptr %no_removexattr8.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 7)
  %bf.load9.i = load i56, ptr %no_removexattr8.i, align 1
  %bf.set.i = or i56 %bf.load9.i, 17179869184
  store i56 %bf.set.i, ptr %no_removexattr8.i, align 1
  br label %fuse_removexattr.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @fuse_update_ctime(ptr noundef %inode) #6
  br label %fuse_removexattr.exit

fuse_removexattr.exit:                            ; preds = %if.then13.i, %if.end11.thread.i, %if.end.i.fuse_removexattr.exit_crit_edge, %if.then1.fuse_removexattr.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %if.then1.fuse_removexattr.exit_crit_edge ], [ 0, %if.then13.i ], [ -95, %if.end11.thread.i ], [ %call5.i, %if.end.i.fuse_removexattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #6
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @fuse_setxattr(ptr noundef %inode, ptr noundef %name, ptr noundef nonnull %value, i32 noundef %size, i32 noundef %flags, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end3, %fuse_removexattr.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ %retval.0.i, %fuse_removexattr.exit ], [ -5, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @no_xattr_list(ptr nocapture noundef readnone %dentry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @no_xattr_get(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %inode, ptr nocapture noundef readnone %name, ptr nocapture noundef readnone %value, i32 noundef %size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @no_xattr_set(ptr nocapture noundef readnone %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %dentry, ptr nocapture noundef readnone %nodee, ptr nocapture noundef readnone %name, ptr nocapture noundef readnone %value, i32 noundef %size, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @fuse_xattr_handlers, !1, !"fuse_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/fuse/xattr.c", i32 233, i32 29}
!2 = !{ptr @fuse_acl_xattr_handlers, !3, !"fuse_acl_xattr_handlers", i1 false, i1 false}
!3 = !{!"../fs/fuse/xattr.c", i32 238, i32 29}
!4 = !{ptr @fuse_no_acl_xattr_handlers, !5, !"fuse_no_acl_xattr_handlers", i1 false, i1 false}
!5 = !{!"../fs/fuse/xattr.c", i32 261, i32 29}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/fuse/xattr.c", i32 228, i32 12}
!8 = !{ptr @fuse_xattr_handler, !9, !"fuse_xattr_handler", i1 false, i1 false}
!9 = !{!"../fs/fuse/xattr.c", i32 227, i32 35}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/fuse/xattr.c", i32 246, i32 11}
!12 = !{ptr @fuse_no_acl_access_xattr_handler, !13, !"fuse_no_acl_access_xattr_handler", i1 false, i1 false}
!13 = !{!"../fs/fuse/xattr.c", i32 245, i32 35}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/fuse/xattr.c", i32 254, i32 11}
!16 = !{ptr @fuse_no_acl_default_xattr_handler, !17, !"fuse_no_acl_default_xattr_handler", i1 false, i1 false}
!17 = !{!"../fs/fuse/xattr.c", i32 253, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
