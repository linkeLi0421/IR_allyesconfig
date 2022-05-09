; ModuleID = '/llk/IR_all_yes/fs/erofs/xattr.c_pt.bc'
source_filename = "../fs/erofs/xattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.34 }
%union.anon.34 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.atomic_t = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.36, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xattr_iter_handlers = type { ptr, ptr, ptr, ptr }
%struct.getxattr_iter = type { %struct.xattr_iter, ptr, i32, i32, %struct.qstr }
%struct.xattr_iter = type { ptr, %struct.erofs_buf, ptr, i32, i32 }
%struct.erofs_buf = type { ptr, ptr, i32 }
%struct.qstr = type { %union.anon.3, ptr }
%union.anon.3 = type { i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.76, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.77, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.78, ptr, %struct.address_space, %struct.list_head, %union.anon.79, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.77 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.78 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.79 = type { ptr }
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
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.erofs_sb_info = type { %struct.erofs_mount_opts, %struct.list_head, %struct.mutex, %struct.xarray, i32, i16, ptr, %struct.erofs_sb_lz4_info, ptr, ptr, i64, i64, i32, i32, i32, i16, i8, i32, i32, i64, i64, i64, [16 x i8], [16 x i8], i32, i32, %struct.kobject, %struct.completion }
%struct.erofs_mount_opts = type { i8, i32, i32, i32 }
%struct.erofs_sb_lz4_info = type { i16, i16 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.erofs_xattr_ibody_header = type { i32, i8, [7 x i8], [0 x i32] }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.74, %struct.list_head, %struct.list_head, %union.anon.75 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.lockref = type { %union.anon.5 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.spinlock, i32 }
%union.anon.74 = type { %struct.list_head }
%union.anon.75 = type { %struct.hlist_node }
%struct.listxattr_iter = type { %struct.xattr_iter, ptr, ptr, i32, i32 }
%struct.erofs_xattr_entry = type { i8, i8, i16, [0 x i8] }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@erofs_xattr_user_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str, i32 1, ptr @erofs_xattr_user_list, ptr @erofs_xattr_generic_get, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@erofs_xattr_trusted_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.1, i32 4, ptr @erofs_xattr_trusted_list, ptr @erofs_xattr_generic_get, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@erofs_xattr_security_handler = dso_local constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.2, i32 6, ptr null, ptr @erofs_xattr_generic_get, ptr null }, [40 x i8] zeroinitializer }, align 32
@posix_acl_access_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@posix_acl_default_xattr_handler = external dso_local constant %struct.xattr_handler, align 4
@erofs_xattr_handlers = dso_local global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @erofs_xattr_user_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @erofs_xattr_trusted_handler, ptr @erofs_xattr_security_handler, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@__func__.init_inode_xattrs = private unnamed_addr constant [18 x i8] c"init_inode_xattrs\00", align 1
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"xattr_isize %d of nid %llu is not supported yet\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bogus xattr ibody @ nid %llu\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@find_xattr_handlers = internal constant { %struct.xattr_iter_handlers, [16 x i8] } { %struct.xattr_iter_handlers { ptr @xattr_entrymatch, ptr @xattr_namematch, ptr @xattr_checkbuffer, ptr @xattr_copyvalue }, [16 x i8] zeroinitializer }, align 32
@list_xattr_handlers = internal constant { %struct.xattr_iter_handlers, [16 x i8] } { %struct.xattr_iter_handlers { ptr @xattr_entrylist, ptr @xattr_namelist, ptr @xattr_skipvalue, ptr null }, [16 x i8] zeroinitializer }, align 32
@erofs_xattr_handler.xattr_handler_map = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @erofs_xattr_user_handler, ptr @posix_acl_access_xattr_handler, ptr @posix_acl_default_xattr_handler, ptr @erofs_xattr_trusted_handler, ptr null, ptr @erofs_xattr_security_handler], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 6]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967235]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 449, i32 12 }
@___asan_gen_.15 = private unnamed_addr constant [25 x i8] c"erofs_xattr_user_handler\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 448, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 456, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"erofs_xattr_trusted_handler\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 455, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 464, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [29 x i8] c"erofs_xattr_security_handler\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 463, i32 43 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"erofs_xattr_handlers\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 470, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 643, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 55, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 62, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 181, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [20 x i8] c"find_xattr_handlers\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 332, i32 41 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"list_xattr_handlers\00", align 1
@___asan_gen_.49 = private constant [20 x i8] c"../fs/erofs/xattr.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 543, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"xattr_handler_map\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"../fs/erofs/xattr.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 48, i32 37 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @erofs_xattr_user_handler, ptr @.str.1, ptr @erofs_xattr_trusted_handler, ptr @.str.2, ptr @erofs_xattr_security_handler, ptr @erofs_xattr_handlers, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @find_xattr_handlers, ptr @list_xattr_handlers, ptr @erofs_xattr_handler.xattr_handler_map], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_xattr_user_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_xattr_trusted_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_xattr_security_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_xattr_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @find_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erofs_xattr_handler.xattr_handler_map to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_getxattr(ptr noundef %inode, i32 noundef %index, ptr noundef %name, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %remaining.i = alloca i32, align 4
  %it = alloca %struct.getxattr_iter, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %it) #14
  %0 = getelementptr inbounds i8, ptr %it, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 40)
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @init_inode_xattrs(ptr noundef %inode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %index4 = getelementptr inbounds %struct.getxattr_iter, ptr %it, i32 0, i32 3
  %2 = ptrtoint ptr %index4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %index, ptr %index4, align 4
  %call5 = tail call i32 @strlen(ptr noundef nonnull %name) #17
  %name6 = getelementptr inbounds %struct.getxattr_iter, ptr %it, i32 0, i32 4
  %3 = ptrtoint ptr %name6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call5, ptr %name6, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call5)
  %cmp = icmp ugt i32 %call5, 255
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %if.end10

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end3
  %buf = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %buf, align 4
  %.compoundliteral.sroa.2.0.buf.sroa_idx = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %.compoundliteral.sroa.2.0.buf.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %.compoundliteral.sroa.2.0.buf.sroa_idx, align 8
  %.compoundliteral.sroa.3.0.buf.sroa_idx = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %.compoundliteral.sroa.3.0.buf.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %.compoundliteral.sroa.3.0.buf.sroa_idx, align 4
  %name13 = getelementptr inbounds %struct.getxattr_iter, ptr %it, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %name, ptr %name13, align 8
  %buffer14 = getelementptr inbounds %struct.getxattr_iter, ptr %it, i32 0, i32 1
  %8 = ptrtoint ptr %buffer14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %buffer, ptr %buffer14, align 4
  %buffer_size15 = getelementptr inbounds %struct.getxattr_iter, ptr %it, i32 0, i32 2
  %9 = ptrtoint ptr %buffer_size15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %buffer_size, ptr %buffer_size15, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %10 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i_sb, align 4
  %12 = ptrtoint ptr %it to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %it, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remaining.i) #14
  %xattr_shared_count.i.i.i = getelementptr i8, ptr %inode, i32 -40
  %13 = ptrtoint ptr %xattr_shared_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xattr_shared_count.i.i.i, align 8
  %mul.i.i.i = shl i32 %14, 2
  %add.i.i.i = add i32 %mul.i.i.i, 12
  %xattr_isize.i.i = getelementptr i8, ptr %inode, i32 -42
  %15 = ptrtoint ptr %xattr_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %xattr_isize.i.i, align 2
  %conv.i.i = zext i16 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %add.i.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end14.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv.i.i)
  %cmp4.i.i = icmp ugt i32 %add.i.i.i, %conv.i.i
  br i1 %cmp4.i.i, label %do.body8.i.i, label %do.body.i.i.inline_getxattr.exit.thread_crit_edge, !prof !38

do.body.i.i.inline_getxattr.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_getxattr.exit.thread

do.body8.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #14, !srcloc !39
  unreachable

if.end14.i.i:                                     ; preds = %if.end10
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %11, i32 0, i32 33
  %17 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %s_fs_info.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -56
  %inode_isize.i.i = getelementptr i8, ptr %inode, i32 -43
  %19 = ptrtoint ptr %inode_isize.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %inode_isize.i.i, align 1
  %conv15.i.i = zext i8 %20 to i32
  %add.i.i = add i32 %add.i.i.i, %conv15.i.i
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr.i.i, align 8
  %meta_blkaddr.i.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %18, i32 0, i32 13
  %23 = ptrtoint ptr %meta_blkaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %meta_blkaddr.i.i.i, align 4
  %conv.i.i.i = zext i32 %24 to i64
  %mul.i59.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  %islotbits.i.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %18, i32 0, i32 16
  %25 = ptrtoint ptr %islotbits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %islotbits.i.i.i, align 2
  %sh_prom.i.i.i = zext i8 %26 to i64
  %shl.i.i.i = shl i64 %22, %sh_prom.i.i.i
  %conv17.i.i = zext i32 %add.i.i to i64
  %add.i60.i.i = add nuw nsw i64 %mul.i59.i.i, %conv17.i.i
  %add18.i.i = add i64 %add.i60.i.i, %shl.i.i.i
  %div58.i.i = lshr i64 %add18.i.i, 12
  %conv19.i.i = trunc i64 %div58.i.i to i32
  %blkaddr.i.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 3
  %27 = ptrtoint ptr %blkaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv19.i.i, ptr %blkaddr.i.i, align 4
  %28 = trunc i64 %shl.i.i.i to i32
  %29 = add i32 %add.i.i, %28
  %conv24.i.i = and i32 %29, 4095
  %ofs.i.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 4
  %30 = ptrtoint ptr %ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv24.i.i, ptr %ofs.i.i, align 8
  %call27.i.i = call ptr @erofs_read_metabuf(ptr noundef %buf, ptr noundef %11, i32 noundef %conv19.i.i, i32 noundef 2) #14
  %kaddr.i.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 2
  %31 = ptrtoint ptr %kaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call27.i.i, ptr %kaddr.i.i, align 8
  %cmp.i.i.i = icmp ugt ptr %call27.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then30.i.i, label %if.end33.i.i

if.then30.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %32 = ptrtoint ptr %call27.i.i to i32
  br label %inline_xattr_iter_begin.exit.i

if.end33.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %xattr_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %xattr_isize.i.i, align 2
  %conv35.i.i = zext i16 %34 to i32
  %sub.i.i = sub i32 %conv35.i.i, %add.i.i.i
  br label %inline_xattr_iter_begin.exit.i

inline_xattr_iter_begin.exit.i:                   ; preds = %if.end33.i.i, %if.then30.i.i
  %retval.0.i.i = phi i32 [ %32, %if.then30.i.i ], [ %sub.i.i, %if.end33.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %inline_xattr_iter_begin.exit.i.inline_getxattr.exit_crit_edge, label %if.end.i

inline_xattr_iter_begin.exit.i.inline_getxattr.exit_crit_edge: ; preds = %inline_xattr_iter_begin.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_getxattr.exit

if.end.i:                                         ; preds = %inline_xattr_iter_begin.exit.i
  %35 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %remaining.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not18.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not18.i, label %if.end.i.cond.false.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

while.condthread-pre-split.i:                     ; preds = %while.body.i
  %36 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr.i = load i32, ptr %remaining.i, align 4
  %tobool.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i, label %while.condthread-pre-split.i.inline_getxattr.exit.thread_crit_edge, label %while.condthread-pre-split.i.while.body.i_crit_edge

while.condthread-pre-split.i.while.body.i_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.condthread-pre-split.i.inline_getxattr.exit.thread_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_getxattr.exit.thread

while.body.i:                                     ; preds = %while.condthread-pre-split.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %call3.i = call fastcc i32 @xattr_foreach(ptr noundef nonnull %it, ptr noundef nonnull @find_xattr_handlers, ptr noundef nonnull %remaining.i) #14
  %37 = zext i32 %call3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3.i, label %inline_getxattr.exit.thread40 [
    i32 -61, label %while.condthread-pre-split.i
    i32 0, label %while.body.i.cond.false.i_crit_edge
  ]

while.body.i.cond.false.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

inline_getxattr.exit.thread40:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining.i) #14
  br label %if.end21

cond.false.i:                                     ; preds = %while.body.i.cond.false.i_crit_edge, %if.end.i.cond.false.i_crit_edge
  %38 = ptrtoint ptr %buffer_size15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %buffer_size15, align 8
  br label %inline_getxattr.exit

inline_getxattr.exit.thread:                      ; preds = %while.condthread-pre-split.i.inline_getxattr.exit.thread_crit_edge, %do.body.i.i.inline_getxattr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining.i) #14
  br label %if.then19

inline_getxattr.exit:                             ; preds = %cond.false.i, %inline_xattr_iter_begin.exit.i.inline_getxattr.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i, %inline_xattr_iter_begin.exit.i.inline_getxattr.exit_crit_edge ], [ %39, %cond.false.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i)
  %cmp18 = icmp eq i32 %retval.0.i, -61
  br i1 %cmp18, label %inline_getxattr.exit.if.then19_crit_edge, label %inline_getxattr.exit.if.end21_crit_edge

inline_getxattr.exit.if.end21_crit_edge:          ; preds = %inline_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

inline_getxattr.exit.if.then19_crit_edge:         ; preds = %inline_getxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.then19:                                        ; preds = %inline_getxattr.exit.if.then19_crit_edge, %inline_getxattr.exit.thread
  %40 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i_sb, align 4
  %42 = ptrtoint ptr %xattr_shared_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %xattr_shared_count.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp56.not.i = icmp eq i32 %43, 0
  br i1 %cmp56.not.i, label %if.then19.if.end21_crit_edge, label %for.body.lr.ph.i

if.then19.if.end21_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

for.body.lr.ph.i:                                 ; preds = %if.then19
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %41, i32 0, i32 33
  %44 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %s_fs_info.i, align 16
  %xattr_shared_xattrs.i = getelementptr i8, ptr %inode, i32 -36
  %xattr_blkaddr.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %45, i32 0, i32 14
  %ofs.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 4
  %kaddr.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 2
  %blkaddr15.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.057.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %xattr_shared_xattrs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xattr_shared_xattrs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %47, i32 %i.057.i
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %xattr_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %xattr_blkaddr.i.i, align 8
  %52 = lshr i32 %49, 10
  %div1.i.i = and i32 %52, 1048575
  %add.i.i33 = add i32 %div1.i.i, %51
  %mul.i.i = shl i32 %49, 2
  %rem.i.i = and i32 %mul.i.i, 4092
  %53 = ptrtoint ptr %ofs.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %rem.i.i, ptr %ofs.i, align 8
  %call6.i = call ptr @erofs_read_metabuf(ptr noundef %buf, ptr noundef %41, i32 noundef %add.i.i33, i32 noundef 2) #14
  %54 = ptrtoint ptr %kaddr.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call6.i, ptr %kaddr.i, align 8
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread.i, label %if.end.i34

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %call6.i to i32
  br label %if.end21

if.end.i34:                                       ; preds = %for.body.i
  %56 = ptrtoint ptr %blkaddr15.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i.i33, ptr %blkaddr15.i, align 4
  %call17.i = call fastcc i32 @xattr_foreach(ptr noundef nonnull %it, ptr noundef nonnull @find_xattr_handlers, ptr noundef null) #14
  %57 = zext i32 %call17.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %call17.i, label %if.end.i34.if.end21_crit_edge [
    i32 -61, label %for.inc.i
    i32 0, label %cond.false.i37
  ]

if.end.i34.if.end21_crit_edge:                    ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

for.inc.i:                                        ; preds = %if.end.i34
  %inc.i = add nuw i32 %i.057.i, 1
  %58 = ptrtoint ptr %xattr_shared_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %xattr_shared_count.i.i.i, align 8
  %cmp.i35 = icmp ult i32 %inc.i, %59
  br i1 %cmp.i35, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end21_crit_edge

for.inc.i.if.end21_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cond.false.i37:                                   ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #16
  %60 = ptrtoint ptr %buffer_size15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %buffer_size15, align 8
  br label %if.end21

if.end21:                                         ; preds = %cond.false.i37, %for.inc.i.if.end21_crit_edge, %if.end.i34.if.end21_crit_edge, %cleanup.thread.i, %if.then19.if.end21_crit_edge, %inline_getxattr.exit.if.end21_crit_edge, %inline_getxattr.exit.thread40
  %ret.0 = phi i32 [ %retval.0.i, %inline_getxattr.exit.if.end21_crit_edge ], [ %call3.i, %inline_getxattr.exit.thread40 ], [ %61, %cond.false.i37 ], [ %55, %cleanup.thread.i ], [ -61, %if.then19.if.end21_crit_edge ], [ %call17.i, %if.end.i34.if.end21_crit_edge ], [ -61, %for.inc.i.if.end21_crit_edge ]
  call void @erofs_put_metabuf(ptr noundef %buf) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end21 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -34, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %it) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_inode_xattrs(ptr noundef %inode) unnamed_addr #0 align 64 {
entry:
  %it = alloca %struct.xattr_iter, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %inode, i32 -56
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %it) #14
  %0 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1
  %1 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1, i32 2
  %3 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 2
  %4 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 3
  %5 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 4
  %flags = getelementptr i8, ptr %inode, i32 -48
  %6 = call ptr @memset(ptr %it, i32 255, i32 28)
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !40
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 181) #14
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 31, ptr noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.if.end8_crit_edge, label %wait_on_bit_lock.exit

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

wait_on_bit_lock.exit:                            ; preds = %if.end
  %call3.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %flags, i32 noundef 31, ptr noundef nonnull @bit_wait, i32 noundef 258) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool6.not = icmp eq i32 %call3.i, 0
  br i1 %tobool6.not, label %wait_on_bit_lock.exit.if.end8_crit_edge, label %wait_on_bit_lock.exit.cleanup_crit_edge

wait_on_bit_lock.exit.cleanup_crit_edge:          ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

wait_on_bit_lock.exit.if.end8_crit_edge:          ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end8

if.end8:                                          ; preds = %wait_on_bit_lock.exit.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %flags, align 4
  %and1.i163 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i163)
  %tobool11.not = icmp eq i32 %and1.i163, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.out_unlock_crit_edge

if.end8.out_unlock_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.end13:                                         ; preds = %if.end8
  %xattr_isize = getelementptr i8, ptr %inode, i32 -42
  %11 = ptrtoint ptr %xattr_isize to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %xattr_isize, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %12)
  %cmp = icmp eq i16 %12, 12
  br i1 %cmp, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %13 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %i_sb, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %14, ptr noundef nonnull @__func__.init_inode_xattrs, ptr noundef nonnull @.str.4, i32 noundef 12, i64 noundef %16) #14
  br label %out_unlock

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %12)
  %cmp20 = icmp ult i16 %12, 12
  br i1 %cmp20, label %if.then22, label %if.end39

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool24.not = icmp eq i16 %12, 0
  br i1 %tobool24.not, label %if.then22.out_unlock_crit_edge, label %if.then25

if.then22.out_unlock_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_unlock

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  %i_sb26 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %17 = ptrtoint ptr %i_sb26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i_sb26, align 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %add.ptr, align 8
  tail call void (ptr, ptr, ptr, ...) @_erofs_err(ptr noundef %18, ptr noundef nonnull @__func__.init_inode_xattrs, ptr noundef nonnull @.str.5, i64 noundef %20) #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 64, 0\0A.popsection", ""() #14, !srcloc !41
  unreachable

if.end39:                                         ; preds = %if.else
  %i_sb40 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb40 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb40, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info, align 16
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %0, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %1, align 4
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %2, align 4
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %add.ptr, align 8
  %meta_blkaddr.i = getelementptr inbounds %struct.erofs_sb_info, ptr %24, i32 0, i32 13
  %30 = ptrtoint ptr %meta_blkaddr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %meta_blkaddr.i, align 4
  %conv.i = zext i32 %31 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %islotbits.i = getelementptr inbounds %struct.erofs_sb_info, ptr %24, i32 0, i32 16
  %32 = ptrtoint ptr %islotbits.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %islotbits.i, align 2
  %sh_prom.i = zext i8 %33 to i64
  %shl.i = shl i64 %29, %sh_prom.i
  %add.i = add i64 %shl.i, %mul.i
  %inode_isize = getelementptr i8, ptr %inode, i32 -43
  %34 = ptrtoint ptr %inode_isize to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %inode_isize, align 1
  %conv43 = zext i8 %35 to i64
  %add = add i64 %add.i, %conv43
  %div162 = lshr i64 %add, 12
  %conv44 = trunc i64 %div162 to i32
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv44, ptr %4, align 4
  %37 = trunc i64 %add to i32
  %conv50 = and i32 %37, 4095
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv50, ptr %5, align 4
  %call53 = call ptr @erofs_read_metabuf(ptr noundef %0, ptr noundef %22, i32 noundef %conv44, i32 noundef 1) #14
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call53, ptr %3, align 4
  %cmp.i = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %call53 to i32
  br label %out_unlock

if.end59:                                         ; preds = %if.end39
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %5, align 4
  %add.ptr62 = getelementptr i8, ptr %call53, i32 %42
  %h_shared_count = getelementptr inbounds %struct.erofs_xattr_ibody_header, ptr %add.ptr62, i32 0, i32 1
  %43 = ptrtoint ptr %h_shared_count to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %h_shared_count, align 4
  %conv63 = zext i8 %44 to i32
  %xattr_shared_count = getelementptr i8, ptr %inode, i32 -40
  %45 = ptrtoint ptr %xattr_shared_count to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv63, ptr %xattr_shared_count, align 8
  %46 = shl nuw nsw i32 %conv63, 2
  %call8.i = call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3264) #18
  %xattr_shared_xattrs = getelementptr i8, ptr %inode, i32 -36
  %47 = ptrtoint ptr %xattr_shared_xattrs to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call8.i, ptr %xattr_shared_xattrs, align 4
  %tobool67.not = icmp eq ptr %call8.i, null
  br i1 %tobool67.not, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  call void @erofs_put_metabuf(ptr noundef %0) #14
  br label %out_unlock

if.end70:                                         ; preds = %if.end59
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %5, align 4
  %add72 = add i32 %49, 12
  store i32 %add72, ptr %5, align 4
  %50 = ptrtoint ptr %xattr_shared_count to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %xattr_shared_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp74184.not = icmp eq i32 %51, 0
  br i1 %cmp74184.not, label %if.end70.for.end_crit_edge, label %if.end70.for.body_crit_edge

if.end70.for.body_crit_edge:                      ; preds = %if.end70
  br label %for.body

if.end70.for.end_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %if.end109.for.body_crit_edge, %if.end70.for.body_crit_edge
  %52 = phi i32 [ %add115, %if.end109.for.body_crit_edge ], [ %add72, %if.end70.for.body_crit_edge ]
  %i.0185 = phi i32 [ %inc116, %if.end109.for.body_crit_edge ], [ 0, %if.end70.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %52)
  %cmp77 = icmp ugt i32 %52, 4095
  br i1 %cmp77, label %do.body80, label %for.body.if.end109_crit_edge

for.body.if.end109_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

do.body80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %52)
  %cmp82.not = icmp eq i32 %52, 4096
  br i1 %cmp82.not, label %do.end95, label %do.body87, !prof !42

do.body87:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 101, 0\0A.popsection", ""() #14, !srcloc !43
  unreachable

do.end95:                                         ; preds = %do.body80
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %4, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr %4, align 4
  %call98 = call ptr @erofs_read_metabuf(ptr noundef %0, ptr noundef %22, i32 noundef %inc, i32 noundef 1) #14
  %55 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call98, ptr %3, align 4
  %cmp.i173 = icmp ugt ptr %call98, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %if.then102, label %if.end107

if.then102:                                       ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #16
  %56 = ptrtoint ptr %xattr_shared_xattrs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xattr_shared_xattrs, align 4
  call void @kfree(ptr noundef %57) #14
  %58 = ptrtoint ptr %xattr_shared_xattrs to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %xattr_shared_xattrs, align 4
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %61 = ptrtoint ptr %60 to i32
  br label %out_unlock

if.end107:                                        ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #16
  %62 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %5, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.end107, %for.body.if.end109_crit_edge
  %63 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %3, align 4
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %5, align 4
  %add.ptr112 = getelementptr i8, ptr %64, i32 %66
  %67 = ptrtoint ptr %add.ptr112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr112, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %70 = ptrtoint ptr %xattr_shared_xattrs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xattr_shared_xattrs, align 4
  %arrayidx = getelementptr i32, ptr %71, i32 %i.0185
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %69, ptr %arrayidx, align 4
  %73 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %5, align 4
  %add115 = add i32 %74, 4
  store i32 %add115, ptr %5, align 4
  %inc116 = add nuw i32 %i.0185, 1
  %75 = ptrtoint ptr %xattr_shared_count to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %xattr_shared_count, align 8
  %cmp74 = icmp ult i32 %inc116, %76
  br i1 %cmp74, label %if.end109.for.body_crit_edge, label %if.end109.for.end_crit_edge

if.end109.for.end_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end109.for.body_crit_edge:                     ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end109.for.end_crit_edge, %if.end70.for.end_crit_edge
  call void @erofs_put_metabuf(ptr noundef %0) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !44
  call void @_set_bit(i32 noundef 0, ptr noundef %flags) #14
  br label %out_unlock

out_unlock:                                       ; preds = %for.end, %if.then102, %if.then68, %if.then56, %if.then22.out_unlock_crit_edge, %if.then15, %if.end8.out_unlock_crit_edge
  %ret.0 = phi i32 [ 0, %if.end8.out_unlock_crit_edge ], [ -95, %if.then15 ], [ %40, %if.then56 ], [ %61, %if.then102 ], [ 0, %for.end ], [ -12, %if.then68 ], [ -61, %if.then22.out_unlock_crit_edge ]
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %flags, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !45
  call void @llvm.prefetch.p0(ptr %flags, i32 1, i32 3, i32 1) #14
  %77 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags, ptr %flags, i32 -2147483648, ptr elementtype(i32) %flags) #14, !srcloc !46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !47
  call void @wake_up_bit(ptr noundef %flags, i32 noundef 31) #14
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %wait_on_bit_lock.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %ret.0, %out_unlock ], [ -512, %wait_on_bit_lock.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %it) #14
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @erofs_put_metabuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @erofs_xattr_user_list(ptr nocapture noundef readonly %dentry) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %0 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info, align 16
  %mount_opt = getelementptr inbounds %struct.erofs_mount_opts, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mount_opt, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @erofs_xattr_generic_get(ptr nocapture noundef readonly %handler, ptr nocapture noundef readnone %unused, ptr noundef %inode, ptr noundef %name, ptr noundef %buffer, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.xattr_handler, ptr %handler, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %entry.sw.epilog_crit_edge
    i32 6, label %entry.sw.epilog_crit_edge4
  ]

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %i_sb = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb, align 4
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info, align 16
  %mount_opt = getelementptr inbounds %struct.erofs_mount_opts, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %mount_opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mount_opt, align 4
  %and = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge4
  %call = tail call i32 @erofs_getxattr(ptr noundef %inode, i32 noundef %1, ptr noundef %name, ptr noundef %buffer, i32 noundef %size)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -95, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @erofs_xattr_trusted_list(ptr nocapture noundef readnone %dentry) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #14
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @erofs_listxattr(ptr noundef %dentry, ptr noundef %buffer, i32 noundef %buffer_size) local_unnamed_addr #0 align 64 {
entry:
  %remaining.i = alloca i32, align 4
  %it = alloca %struct.listxattr_iter, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %it) #14
  %0 = getelementptr inbounds i8, ptr %it, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %call1 = tail call fastcc i32 @init_inode_xattrs(ptr noundef %3)
  %4 = zext i32 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %call1, label %if.then2 [
    i32 -61, label %entry.cleanup_crit_edge
    i32 0, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %entry
  %buf = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %buf, align 4
  %.compoundliteral.sroa.2.0.buf.sroa_idx = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0.buf.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %.compoundliteral.sroa.2.0.buf.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.buf.sroa_idx = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %.compoundliteral.sroa.3.0.buf.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %.compoundliteral.sroa.3.0.buf.sroa_idx, align 4
  %dentry5 = getelementptr inbounds %struct.listxattr_iter, ptr %it, i32 0, i32 1
  %8 = ptrtoint ptr %dentry5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dentry, ptr %dentry5, align 4
  %buffer6 = getelementptr inbounds %struct.listxattr_iter, ptr %it, i32 0, i32 2
  %9 = ptrtoint ptr %buffer6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buffer, ptr %buffer6, align 4
  %buffer_size7 = getelementptr inbounds %struct.listxattr_iter, ptr %it, i32 0, i32 3
  %10 = ptrtoint ptr %buffer_size7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %buffer_size, ptr %buffer_size7, align 4
  %buffer_ofs = getelementptr inbounds %struct.listxattr_iter, ptr %it, i32 0, i32 4
  %11 = ptrtoint ptr %buffer_ofs to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %buffer_ofs, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %12 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d_sb, align 4
  %14 = ptrtoint ptr %it to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %it, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remaining.i) #14
  %15 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %d_inode.i, align 8
  %xattr_shared_count.i.i.i = getelementptr i8, ptr %16, i32 -40
  %17 = ptrtoint ptr %xattr_shared_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xattr_shared_count.i.i.i, align 8
  %mul.i.i.i = shl i32 %18, 2
  %add.i.i.i = add i32 %mul.i.i.i, 12
  %xattr_isize.i.i = getelementptr i8, ptr %16, i32 -42
  %19 = ptrtoint ptr %xattr_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %xattr_isize.i.i, align 2
  %conv.i.i = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %add.i.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end14.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv.i.i)
  %cmp4.i.i = icmp ugt i32 %add.i.i.i, %conv.i.i
  br i1 %cmp4.i.i, label %do.body8.i.i, label %inline_listxattr.exit.thread, !prof !38

inline_listxattr.exit.thread:                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining.i) #14
  br label %if.then12

do.body8.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 167, 0\0A.popsection", ""() #14, !srcloc !39
  unreachable

if.end14.i.i:                                     ; preds = %if.end3
  %i_sb.i.i = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 8
  %21 = ptrtoint ptr %i_sb.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i_sb.i.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %22, i32 0, i32 33
  %23 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_fs_info.i.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 -56
  %inode_isize.i.i = getelementptr i8, ptr %16, i32 -43
  %25 = ptrtoint ptr %inode_isize.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %inode_isize.i.i, align 1
  %conv15.i.i = zext i8 %26 to i32
  %add.i.i = add i32 %add.i.i.i, %conv15.i.i
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %add.ptr.i.i, align 8
  %meta_blkaddr.i.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %24, i32 0, i32 13
  %29 = ptrtoint ptr %meta_blkaddr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %meta_blkaddr.i.i.i, align 4
  %conv.i.i.i = zext i32 %30 to i64
  %mul.i59.i.i = shl nuw nsw i64 %conv.i.i.i, 12
  %islotbits.i.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %24, i32 0, i32 16
  %31 = ptrtoint ptr %islotbits.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %islotbits.i.i.i, align 2
  %sh_prom.i.i.i = zext i8 %32 to i64
  %shl.i.i.i = shl i64 %28, %sh_prom.i.i.i
  %conv17.i.i = zext i32 %add.i.i to i64
  %add.i60.i.i = add nuw nsw i64 %mul.i59.i.i, %conv17.i.i
  %add18.i.i = add i64 %add.i60.i.i, %shl.i.i.i
  %div58.i.i = lshr i64 %add18.i.i, 12
  %conv19.i.i = trunc i64 %div58.i.i to i32
  %blkaddr.i.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 3
  %33 = ptrtoint ptr %blkaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv19.i.i, ptr %blkaddr.i.i, align 4
  %34 = load i64, ptr %add.ptr.i.i, align 8
  %shl.i66.i.i = shl i64 %34, %sh_prom.i.i.i
  %35 = trunc i64 %shl.i66.i.i to i32
  %36 = add i32 %add.i.i, %35
  %conv24.i.i = and i32 %36, 4095
  %ofs.i.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 4
  %37 = ptrtoint ptr %ofs.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv24.i.i, ptr %ofs.i.i, align 4
  %call27.i.i = call ptr @erofs_read_metabuf(ptr noundef %buf, ptr noundef %22, i32 noundef %conv19.i.i, i32 noundef 2) #14
  %kaddr.i.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 2
  %38 = ptrtoint ptr %kaddr.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call27.i.i, ptr %kaddr.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call27.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then30.i.i, label %if.end33.i.i

if.then30.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %call27.i.i to i32
  br label %inline_xattr_iter_begin.exit.i

if.end33.i.i:                                     ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %xattr_isize.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %xattr_isize.i.i, align 2
  %conv35.i.i = zext i16 %41 to i32
  %sub.i.i = sub i32 %conv35.i.i, %add.i.i.i
  br label %inline_xattr_iter_begin.exit.i

inline_xattr_iter_begin.exit.i:                   ; preds = %if.end33.i.i, %if.then30.i.i
  %retval.0.i.i = phi i32 [ %39, %if.then30.i.i ], [ %sub.i.i, %if.end33.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i, label %inline_xattr_iter_begin.exit.i.inline_listxattr.exit_crit_edge, label %if.end.i

inline_xattr_iter_begin.exit.i.inline_listxattr.exit_crit_edge: ; preds = %inline_xattr_iter_begin.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_listxattr.exit

if.end.i:                                         ; preds = %inline_xattr_iter_begin.exit.i
  %42 = ptrtoint ptr %remaining.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i.i, ptr %remaining.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not23.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not23.i, label %if.end.i.cond.false.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.cond.false.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

while.condthread-pre-split.i:                     ; preds = %while.body.i
  %43 = ptrtoint ptr %remaining.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr.i = load i32, ptr %remaining.i, align 4
  %tobool.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i, label %while.condthread-pre-split.i.cond.false.i_crit_edge, label %while.condthread-pre-split.i.while.body.i_crit_edge

while.condthread-pre-split.i.while.body.i_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

while.condthread-pre-split.i.cond.false.i_crit_edge: ; preds = %while.condthread-pre-split.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i

while.body.i:                                     ; preds = %while.condthread-pre-split.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %call4.i = call fastcc i32 @xattr_foreach(ptr noundef nonnull %it, ptr noundef nonnull @list_xattr_handlers, ptr noundef nonnull %remaining.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %while.condthread-pre-split.i, label %while.body.i.inline_listxattr.exit_crit_edge

while.body.i.inline_listxattr.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %inline_listxattr.exit

cond.false.i:                                     ; preds = %while.condthread-pre-split.i.cond.false.i_crit_edge, %if.end.i.cond.false.i_crit_edge
  %44 = ptrtoint ptr %buffer_ofs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %buffer_ofs, align 4
  br label %inline_listxattr.exit

inline_listxattr.exit:                            ; preds = %cond.false.i, %while.body.i.inline_listxattr.exit_crit_edge, %inline_xattr_iter_begin.exit.i.inline_listxattr.exit_crit_edge
  %retval.0.i = phi i32 [ %retval.0.i.i, %inline_xattr_iter_begin.exit.i.inline_listxattr.exit_crit_edge ], [ %45, %cond.false.i ], [ %call4.i, %while.body.i.inline_listxattr.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remaining.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp10 = icmp sgt i32 %retval.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %retval.0.i)
  %cmp11 = icmp eq i32 %retval.0.i, -61
  %or.cond = or i1 %cmp10, %cmp11
  br i1 %or.cond, label %inline_listxattr.exit.if.then12_crit_edge, label %inline_listxattr.exit.if.end14_crit_edge

inline_listxattr.exit.if.end14_crit_edge:         ; preds = %inline_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

inline_listxattr.exit.if.then12_crit_edge:        ; preds = %inline_listxattr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then12

if.then12:                                        ; preds = %inline_listxattr.exit.if.then12_crit_edge, %inline_listxattr.exit.thread
  %46 = ptrtoint ptr %dentry5 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dentry5, align 4
  %d_inode.i.i26 = getelementptr inbounds %struct.dentry, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %d_inode.i.i26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %d_inode.i.i26, align 8
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i_sb.i, align 4
  %xattr_shared_count.i = getelementptr i8, ptr %49, i32 -40
  %52 = ptrtoint ptr %xattr_shared_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %xattr_shared_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp59.not.i = icmp eq i32 %53, 0
  br i1 %cmp59.not.i, label %if.then12.cond.false.i32_crit_edge, label %for.body.lr.ph.i

if.then12.cond.false.i32_crit_edge:               ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i32

for.body.lr.ph.i:                                 ; preds = %if.then12
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %51, i32 0, i32 33
  %54 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %s_fs_info.i, align 16
  %xattr_shared_xattrs.i = getelementptr i8, ptr %49, i32 -36
  %xattr_blkaddr.i.i = getelementptr inbounds %struct.erofs_sb_info, ptr %55, i32 0, i32 14
  %ofs.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 4
  %kaddr.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 2
  %blkaddr16.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 3
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end.i30
  %inc.i = add nuw i32 %i.060.i, 1
  %56 = ptrtoint ptr %xattr_shared_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %xattr_shared_count.i, align 8
  %cmp.i27 = icmp ult i32 %inc.i, %57
  br i1 %cmp.i27, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.cond.false.i32_crit_edge

for.cond.i.cond.false.i32_crit_edge:              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.false.i32

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.060.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %xattr_shared_xattrs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xattr_shared_xattrs.i, align 4
  %arrayidx.i = getelementptr i32, ptr %59, i32 %i.060.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i, align 4
  %62 = ptrtoint ptr %xattr_blkaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %xattr_blkaddr.i.i, align 8
  %64 = lshr i32 %61, 10
  %div1.i.i = and i32 %64, 1048575
  %add.i.i28 = add i32 %div1.i.i, %63
  %mul.i.i = shl i32 %61, 2
  %rem.i.i = and i32 %mul.i.i, 4092
  %65 = ptrtoint ptr %ofs.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %rem.i.i, ptr %ofs.i, align 4
  %call7.i = call ptr @erofs_read_metabuf(ptr noundef %buf, ptr noundef %51, i32 noundef %add.i.i28, i32 noundef 2) #14
  %66 = ptrtoint ptr %kaddr.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i, ptr %kaddr.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.thread.i, label %if.end.i30

cleanup.thread.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %67 = ptrtoint ptr %call7.i to i32
  br label %if.end14

if.end.i30:                                       ; preds = %for.body.i
  %68 = ptrtoint ptr %blkaddr16.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add.i.i28, ptr %blkaddr16.i, align 4
  %call18.i = call fastcc i32 @xattr_foreach(ptr noundef nonnull %it, ptr noundef nonnull @list_xattr_handlers, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool.not.i29 = icmp eq i32 %call18.i, 0
  br i1 %tobool.not.i29, label %for.cond.i, label %if.end.i30.if.end14_crit_edge

if.end.i30.if.end14_crit_edge:                    ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

cond.false.i32:                                   ; preds = %for.cond.i.cond.false.i32_crit_edge, %if.then12.cond.false.i32_crit_edge
  %69 = ptrtoint ptr %buffer_ofs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %buffer_ofs, align 4
  br label %if.end14

if.end14:                                         ; preds = %cond.false.i32, %if.end.i30.if.end14_crit_edge, %cleanup.thread.i, %inline_listxattr.exit.if.end14_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %inline_listxattr.exit.if.end14_crit_edge ], [ %70, %cond.false.i32 ], [ %67, %cleanup.thread.i ], [ %call18.i, %if.end.i30.if.end14_crit_edge ]
  call void @erofs_put_metabuf(ptr noundef %buf) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ %ret.0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %it) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @erofs_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 32768, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %prefix.0 = phi i32 [ 3, %sw.bb1 ], [ 2, %if.end.sw.epilog_crit_edge ]
  %call3 = tail call i32 @erofs_getxattr(ptr noundef %inode, i32 noundef %prefix.0, ptr noundef nonnull @.str.3, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  br i1 %cmp, label %if.end8.i, label %sw.epilog.if.end11_crit_edge

sw.epilog.if.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

if.end8.i:                                        ; preds = %sw.epilog
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %call3, i32 noundef 3264) #18
  %tobool6.not = icmp eq ptr %call9.i, null
  br i1 %tobool6.not, label %if.end8.i.cleanup_crit_edge, label %if.end9

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %call10 = tail call i32 @erofs_getxattr(ptr noundef %inode, i32 noundef %prefix.0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call9.i, i32 noundef %call3)
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %sw.epilog.if.end11_crit_edge
  %rc.0 = phi i32 [ %call10, %if.end9 ], [ %call3, %sw.epilog.if.end11_crit_edge ]
  %value.0 = phi ptr [ %call9.i, %if.end9 ], [ null, %sw.epilog.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -61, i32 %rc.0)
  %cmp12 = icmp eq i32 %rc.0, -61
  br i1 %cmp12, label %if.end11.if.end20_crit_edge, label %if.else

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp14 = icmp slt i32 %rc.0, 0
  br i1 %cmp14, label %if.then15, label %if.else17

if.then15:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %1 = inttoptr i32 %rc.0 to ptr
  br label %if.end20

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef %value.0, i32 noundef %rc.0) #14
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.then15, %if.end11.if.end20_crit_edge
  %acl.0 = phi ptr [ %1, %if.then15 ], [ %call18, %if.else17 ], [ null, %if.end11.if.end20_crit_edge ]
  tail call void @kfree(ptr noundef %value.0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %acl.0, %if.end20 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end8.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_erofs_err(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @erofs_read_metabuf(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xattr_foreach(ptr noundef %it, ptr nocapture noundef readonly %op, ptr noundef %tlimit) unnamed_addr #0 align 64 {
entry:
  %entry1 = alloca %struct.erofs_xattr_entry, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #14
  %0 = getelementptr inbounds %struct.erofs_xattr_entry, ptr %entry1, i32 0, i32 2
  %ofs.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 4
  %1 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ofs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %2)
  %cmp.i = icmp ult i32 %2, 4096
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end.i:                                         ; preds = %entry
  %div21.i = lshr i32 %2, 12
  %blkaddr.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 3
  %3 = ptrtoint ptr %blkaddr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %blkaddr.i, align 4
  %add.i = add i32 %4, %div21.i
  store i32 %add.i, ptr %blkaddr.i, align 4
  %buf.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1
  %5 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %it, align 4
  %call.i = tail call ptr @erofs_read_metabuf(ptr noundef %buf.i, ptr noundef %6, i32 noundef %add.i, i32 noundef 2) #14
  %kaddr.i = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 2
  %7 = ptrtoint ptr %kaddr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %kaddr.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %xattr_iter_fixup.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ofs.i, align 4
  %rem.i = and i32 %9, 4095
  store i32 %rem.i, ptr %ofs.i, align 4
  br label %if.end

xattr_iter_fixup.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %call.i to i32
  br label %cleanup148

if.end:                                           ; preds = %if.end8.i, %entry.if.end_crit_edge
  %kaddr = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 2
  %11 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kaddr, align 4
  %13 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ofs.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %add.ptr, align 2
  %17 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %entry1, align 4
  %tobool2.not = icmp eq ptr %tlimit, null
  br i1 %tobool2.not, label %if.end.if.end13_crit_edge, label %if.then3

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

if.then3:                                         ; preds = %if.end
  %18 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %entry1, align 4
  %conv.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %0, align 2
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #14
  %conv1.i = zext i16 %22 to i32
  %add2.i = add nuw nsw i32 %conv.i, 3
  %sub.i = add nuw nsw i32 %add2.i, %conv1.i
  %or.i = or i32 %sub.i, 3
  %23 = ptrtoint ptr %tlimit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tlimit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %or.i)
  %cmp.not = icmp ugt i32 %24, %or.i
  br i1 %cmp.not, label %if.end12, label %do.body6

do.body6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 211, 0\0A.popsection", ""() #14, !srcloc !48
  unreachable

if.end12:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  %add3.i.neg = xor i32 %or.i, -1
  %sub = add i32 %24, %add3.i.neg
  %25 = ptrtoint ptr %tlimit to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub, ptr %tlimit, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end.if.end13_crit_edge
  %26 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ofs.i, align 4
  %add = add i32 %27, 4
  store i32 %add, ptr %ofs.i, align 4
  %28 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %0, align 2
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv = zext i16 %30 to i32
  %31 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %op, align 4
  %call16 = call i32 %32(ptr noundef %it, ptr noundef nonnull %entry1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %33 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %entry1, align 4
  br i1 %tobool17.not, label %while.cond.preheader, label %if.then18

while.cond.preheader:                             ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp26267.not = icmp eq i8 %34, 0
  br i1 %cmp26267.not, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %blkaddr.i225 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 3
  %buf.i227 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1
  %name = getelementptr inbounds %struct.xattr_iter_handlers, ptr %op, i32 0, i32 1
  %35 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %ofs.i, align 4
  br label %while.body

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  %conv19 = zext i8 %34 to i32
  %add20 = add nuw nsw i32 %conv19, %conv
  %36 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ofs.i, align 4
  %add22 = add i32 %add20, %37
  store i32 %add22, ptr %ofs.i, align 4
  br label %out

while.body:                                       ; preds = %if.end73.while.body_crit_edge, %while.body.lr.ph
  %38 = phi i32 [ %.pr, %while.body.lr.ph ], [ %add75, %if.end73.while.body_crit_edge ]
  %processed.0268 = phi i32 [ 0, %while.body.lr.ph ], [ %add76, %if.end73.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %38)
  %cmp29 = icmp ugt i32 %38, 4095
  br i1 %cmp29, label %do.body32, label %while.body.if.end53_crit_edge

while.body.if.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

do.body32:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %38)
  %cmp34.not = icmp eq i32 %38, 4096
  br i1 %cmp34.not, label %if.end.i231, label %do.body39, !prof !42

do.body39:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 232, 0\0A.popsection", ""() #14, !srcloc !49
  unreachable

if.end.i231:                                      ; preds = %do.body32
  %39 = ptrtoint ptr %blkaddr.i225 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %blkaddr.i225, align 4
  %add.i226 = add i32 %40, 1
  store i32 %add.i226, ptr %blkaddr.i225, align 4
  %41 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %it, align 4
  %call.i228 = call ptr @erofs_read_metabuf(ptr noundef %buf.i227, ptr noundef %42, i32 noundef %add.i226, i32 noundef 2) #14
  %43 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i228, ptr %kaddr, align 4
  %cmp.i.i230 = icmp ugt ptr %call.i228, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i230, label %xattr_iter_fixup.exit236, label %xattr_iter_fixup.exit236.thread

xattr_iter_fixup.exit236.thread:                  ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #16
  %44 = ptrtoint ptr %ofs.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %ofs.i, align 4
  br label %if.end53

xattr_iter_fixup.exit236:                         ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %call.i228 to i32
  br label %out

if.end53:                                         ; preds = %xattr_iter_fixup.exit236.thread, %while.body.if.end53_crit_edge
  %46 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ofs.i, align 4
  %sub55 = sub i32 4096, %47
  %48 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %entry1, align 4
  %conv57 = zext i8 %49 to i32
  %sub58 = sub i32 %conv57, %processed.0268
  %50 = call i32 @llvm.umin.i32(i32 %sub55, i32 %sub58)
  %51 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name, align 4
  %53 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %kaddr, align 4
  %add.ptr63 = getelementptr i8, ptr %54, i32 %47
  %call64 = call i32 %52(ptr noundef %it, i32 noundef %processed.0268, ptr noundef %add.ptr63, i32 noundef %50) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end73, label %if.then66

if.then66:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %55 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %entry1, align 4
  %conv68 = zext i8 %56 to i32
  %57 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ofs.i, align 4
  %sub69 = sub i32 %conv, %processed.0268
  %add70 = add i32 %sub69, %conv68
  %add72 = add i32 %add70, %58
  store i32 %add72, ptr %ofs.i, align 4
  br label %out

if.end73:                                         ; preds = %if.end53
  %59 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ofs.i, align 4
  %add75 = add i32 %60, %50
  store i32 %add75, ptr %ofs.i, align 4
  %add76 = add i32 %50, %processed.0268
  %61 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %entry1, align 4
  %conv25 = zext i8 %62 to i32
  %cmp26 = icmp ult i32 %add76, %conv25
  br i1 %cmp26, label %if.end73.while.body_crit_edge, label %if.end73.while.end_crit_edge

if.end73.while.end_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end

if.end73.while.body_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

while.end:                                        ; preds = %if.end73.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %alloc_buffer = getelementptr inbounds %struct.xattr_iter_handlers, ptr %op, i32 0, i32 2
  %63 = ptrtoint ptr %alloc_buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %alloc_buffer, align 4
  %tobool77.not = icmp eq ptr %64, null
  br i1 %tobool77.not, label %while.end.if.end86_crit_edge, label %if.then78

while.end.if.end86_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then78:                                        ; preds = %while.end
  %call80 = call i32 %64(ptr noundef %it, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then78.if.end86_crit_edge, label %if.then82

if.then78.if.end86_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end86

if.then82:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ofs.i, align 4
  %add84 = add i32 %66, %conv
  store i32 %add84, ptr %ofs.i, align 4
  br label %out

if.end86:                                         ; preds = %if.then78.if.end86_crit_edge, %while.end.if.end86_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp88269.not = icmp eq i16 %29, 0
  br i1 %cmp88269.not, label %if.end86.out.thread_crit_edge, label %while.body90.lr.ph

if.end86.out.thread_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

while.body90.lr.ph:                               ; preds = %if.end86
  %blkaddr.i240 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 3
  %buf.i242 = getelementptr inbounds %struct.xattr_iter, ptr %it, i32 0, i32 1
  %value = getelementptr inbounds %struct.xattr_iter_handlers, ptr %op, i32 0, i32 3
  %67 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %.pr275 = load i32, ptr %ofs.i, align 4
  br label %while.body90

out.thread:                                       ; preds = %if.end120.out.thread_crit_edge, %if.end86.out.thread_crit_edge
  %68 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ofs.i, align 4
  %sub139259 = add i32 %69, -1
  %or260 = or i32 %sub139259, 3
  %add140261 = add i32 %or260, 1
  store i32 %add140261, ptr %ofs.i, align 4
  br label %cleanup148

while.body90:                                     ; preds = %if.end120.while.body90_crit_edge, %while.body90.lr.ph
  %70 = phi i32 [ %.pr275, %while.body90.lr.ph ], [ %add135, %if.end120.while.body90_crit_edge ]
  %processed.1270 = phi i32 [ 0, %while.body90.lr.ph ], [ %add136, %if.end120.while.body90_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %70)
  %cmp92 = icmp ugt i32 %70, 4095
  br i1 %cmp92, label %do.body95, label %while.body90.if.end120_crit_edge

while.body90.if.end120_crit_edge:                 ; preds = %while.body90
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end120

do.body95:                                        ; preds = %while.body90
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %70)
  %cmp97.not = icmp eq i32 %70, 4096
  br i1 %cmp97.not, label %if.end.i246, label %do.body106, !prof !42

do.body106:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/erofs/xattr.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 267, 0\0A.popsection", ""() #14, !srcloc !50
  unreachable

if.end.i246:                                      ; preds = %do.body95
  %71 = ptrtoint ptr %blkaddr.i240 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %blkaddr.i240, align 4
  %add.i241 = add i32 %72, 1
  store i32 %add.i241, ptr %blkaddr.i240, align 4
  %73 = ptrtoint ptr %it to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %it, align 4
  %call.i243 = call ptr @erofs_read_metabuf(ptr noundef %buf.i242, ptr noundef %74, i32 noundef %add.i241, i32 noundef 2) #14
  %75 = ptrtoint ptr %kaddr to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call.i243, ptr %kaddr, align 4
  %cmp.i.i245 = icmp ugt ptr %call.i243, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i245, label %xattr_iter_fixup.exit251, label %xattr_iter_fixup.exit251.thread

xattr_iter_fixup.exit251.thread:                  ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #16
  %76 = ptrtoint ptr %ofs.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %ofs.i, align 4
  br label %if.end120

xattr_iter_fixup.exit251:                         ; preds = %if.end.i246
  call void @__sanitizer_cov_trace_pc() #16
  %77 = ptrtoint ptr %call.i243 to i32
  br label %out

if.end120:                                        ; preds = %xattr_iter_fixup.exit251.thread, %while.body90.if.end120_crit_edge
  %78 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ofs.i, align 4
  %sub122 = sub i32 4096, %79
  %sub123 = sub i32 %conv, %processed.1270
  %80 = call i32 @llvm.umin.i32(i32 %sub122, i32 %sub123)
  %81 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %value, align 4
  %83 = ptrtoint ptr %kaddr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %kaddr, align 4
  %add.ptr133 = getelementptr i8, ptr %84, i32 %79
  call void %82(ptr noundef %it, i32 noundef %processed.1270, ptr noundef %add.ptr133, i32 noundef %80) #14
  %85 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ofs.i, align 4
  %add135 = add i32 %86, %80
  store i32 %add135, ptr %ofs.i, align 4
  %add136 = add i32 %80, %processed.1270
  %cmp88 = icmp ult i32 %add136, %conv
  br i1 %cmp88, label %if.end120.while.body90_crit_edge, label %if.end120.out.thread_crit_edge

if.end120.out.thread_crit_edge:                   ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %out.thread

if.end120.while.body90_crit_edge:                 ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body90

out:                                              ; preds = %xattr_iter_fixup.exit251, %if.then82, %if.then66, %xattr_iter_fixup.exit236, %if.then18
  %err.4 = phi i32 [ %call16, %if.then18 ], [ %45, %xattr_iter_fixup.exit236 ], [ %call64, %if.then66 ], [ %call80, %if.then82 ], [ %77, %xattr_iter_fixup.exit251 ]
  %87 = ptrtoint ptr %ofs.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ofs.i, align 4
  %sub139 = add i32 %88, -1
  %or = or i32 %sub139, 3
  %add140 = add i32 %or, 1
  store i32 %add140, ptr %ofs.i, align 4
  %89 = call i32 @llvm.smin.i32(i32 %err.4, i32 0)
  br label %cleanup148

cleanup148:                                       ; preds = %out, %out.thread, %xattr_iter_fixup.exit
  %retval.0 = phi i32 [ %10, %xattr_iter_fixup.exit ], [ 0, %out.thread ], [ %89, %out ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #14
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xattr_entrymatch(ptr nocapture noundef readonly %_it, ptr nocapture noundef readonly %entry1) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.getxattr_iter, ptr %_it, i32 0, i32 3
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %e_name_index = getelementptr inbounds %struct.erofs_xattr_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %e_name_index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %e_name_index, align 1
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp eq i32 %1, %conv
  br i1 %cmp.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.getxattr_iter, ptr %_it, i32 0, i32 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %name, align 8
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %entry1, align 2
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv3)
  %cmp4.not = icmp eq i32 %5, %conv3
  %phi.sel = select i1 %cmp4.not, i32 0, i32 -61
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i32 [ -61, %entry.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xattr_namematch(ptr nocapture noundef readonly %_it, i32 noundef %processed, ptr nocapture noundef readonly %buf, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %name1 = getelementptr inbounds %struct.getxattr_iter, ptr %_it, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name1, align 8
  %add.ptr2 = getelementptr i8, ptr %1, i32 %processed
  %bcmp = tail call i32 @bcmp(ptr %buf, ptr %add.ptr2, i32 %len) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %cond = select i1 %tobool.not, i32 0, i32 -61
  ret i32 %cond
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xattr_checkbuffer(ptr nocapture noundef %_it, i32 noundef %value_sz) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer_size = getelementptr inbounds %struct.getxattr_iter, ptr %_it, i32 0, i32 2
  %0 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buffer_size, align 8
  store i32 %value_sz, ptr %buffer_size, align 8
  %buffer = getelementptr inbounds %struct.getxattr_iter, ptr %_it, i32 0, i32 1
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  %tobool.not = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %value_sz)
  %cmp = icmp ult i32 %1, %value_sz
  %cond = select i1 %cmp, i32 -34, i32 0
  %cond2 = select i1 %tobool.not, i32 1, i32 %cond
  ret i32 %cond2
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xattr_copyvalue(ptr nocapture noundef readonly %_it, i32 noundef %processed, ptr nocapture noundef readonly %buf, i32 noundef %len) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.getxattr_iter, ptr %_it, i32 0, i32 1
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %processed
  %2 = call ptr @memcpy(ptr %add.ptr1, ptr %buf, i32 %len)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xattr_entrylist(ptr nocapture noundef %_it, ptr nocapture noundef readonly %entry1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %e_name_index = getelementptr inbounds %struct.erofs_xattr_entry, ptr %entry1, i32 0, i32 1
  %0 = ptrtoint ptr %e_name_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %e_name_index, align 1
  %conv = zext i8 %1 to i32
  %2 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %3 = icmp ult i32 %2, 6
  br i1 %3, label %erofs_xattr_handler.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

erofs_xattr_handler.exit:                         ; preds = %entry
  %arrayidx.i = getelementptr [7 x ptr], ptr @erofs_xattr_handler.xattr_handler_map, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %6 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %1, label %lor.lhs.false [
    i8 5, label %erofs_xattr_handler.exit.cleanup_crit_edge
    i8 0, label %erofs_xattr_handler.exit.cleanup_crit_edge50
  ]

erofs_xattr_handler.exit.cleanup_crit_edge50:     ; preds = %erofs_xattr_handler.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

erofs_xattr_handler.exit.cleanup_crit_edge:       ; preds = %erofs_xattr_handler.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %erofs_xattr_handler.exit
  %list = getelementptr inbounds %struct.xattr_handler, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %dentry = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 1
  %9 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry, align 4
  %call4 = tail call zeroext i1 %8(ptr noundef %10) #14
  br i1 %call4, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %prefix.i = getelementptr inbounds %struct.xattr_handler, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %prefix.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prefix.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %cond.false.i, label %if.end.xattr_prefix.exit_crit_edge

if.end.xattr_prefix.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %xattr_prefix.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  br label %xattr_prefix.exit

xattr_prefix.exit:                                ; preds = %cond.false.i, %if.end.xattr_prefix.exit_crit_edge
  %cond.i47 = phi ptr [ %14, %cond.false.i ], [ %12, %if.end.xattr_prefix.exit_crit_edge ]
  %call6 = tail call i32 @strlen(ptr noundef %cond.i47) #17
  %buffer = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 2
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %tobool7.not = icmp eq ptr %16, null
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %xattr_prefix.exit
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %entry1, align 2
  %conv9 = zext i8 %18 to i32
  %buffer_ofs = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 4
  %19 = ptrtoint ptr %buffer_ofs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buffer_ofs, align 4
  %add = add i32 %call6, 1
  %add10 = add i32 %add, %conv9
  %add11 = add i32 %add10, %20
  store i32 %add11, ptr %buffer_ofs, align 4
  br label %cleanup

if.end12:                                         ; preds = %xattr_prefix.exit
  %buffer_ofs13 = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 4
  %21 = ptrtoint ptr %buffer_ofs13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %buffer_ofs13, align 4
  %23 = ptrtoint ptr %entry1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %entry1, align 2
  %conv16 = zext i8 %24 to i32
  %add14 = add i32 %call6, 1
  %add17 = add i32 %add14, %22
  %add18 = add i32 %add17, %conv16
  %buffer_size = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 3
  %25 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %26)
  %cmp = icmp ugt i32 %add18, %26
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end21

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr24 = getelementptr i8, ptr %16, i32 %22
  %27 = call ptr @memcpy(ptr %add.ptr24, ptr %cond.i47, i32 %call6)
  %28 = ptrtoint ptr %buffer_ofs13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buffer_ofs13, align 4
  %add26 = add i32 %29, %call6
  store i32 %add26, ptr %buffer_ofs13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end12.cleanup_crit_edge, %if.then8, %land.lhs.true.cleanup_crit_edge, %erofs_xattr_handler.exit.cleanup_crit_edge, %erofs_xattr_handler.exit.cleanup_crit_edge50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 1, %if.then8 ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %erofs_xattr_handler.exit.cleanup_crit_edge ], [ -34, %if.end12.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %erofs_xattr_handler.exit.cleanup_crit_edge50 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xattr_namelist(ptr nocapture noundef %_it, i32 noundef %processed, ptr nocapture noundef readonly %buf, i32 noundef %len) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 2
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %buffer_ofs = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 4
  %2 = ptrtoint ptr %buffer_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_ofs, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %3
  %4 = call ptr @memcpy(ptr %add.ptr1, ptr %buf, i32 %len)
  %5 = load i32, ptr %buffer_ofs, align 4
  %add = add i32 %5, %len
  store i32 %add, ptr %buffer_ofs, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xattr_skipvalue(ptr nocapture noundef %_it, i32 noundef %value_sz) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 2
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 4
  %buffer_ofs = getelementptr inbounds %struct.listxattr_iter, ptr %_it, i32 0, i32 4
  %2 = ptrtoint ptr %buffer_ofs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_ofs, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %buffer_ofs, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  ret i32 1
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin }
attributes #18 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/erofs/xattr.c", i32 449, i32 12}
!2 = !{ptr @erofs_xattr_user_handler, !3, !"erofs_xattr_user_handler", i1 false, i1 false}
!3 = !{!"../fs/erofs/xattr.c", i32 448, i32 28}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/erofs/xattr.c", i32 456, i32 12}
!6 = !{ptr @erofs_xattr_trusted_handler, !7, !"erofs_xattr_trusted_handler", i1 false, i1 false}
!7 = !{!"../fs/erofs/xattr.c", i32 455, i32 28}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/erofs/xattr.c", i32 464, i32 12}
!10 = !{ptr @erofs_xattr_security_handler, !11, !"erofs_xattr_security_handler", i1 false, i1 false}
!11 = !{!"../fs/erofs/xattr.c", i32 463, i32 43}
!12 = !{ptr @erofs_xattr_handlers, !13, !"erofs_xattr_handlers", i1 false, i1 false}
!13 = !{!"../fs/erofs/xattr.c", i32 470, i32 29}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/erofs/xattr.c", i32 643, i32 37}
!16 = !{ptr @__func__.init_inode_xattrs, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/erofs/xattr.c", i32 55, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/erofs/xattr.c", i32 62, i32 4}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/wait_bit.h", i32 181, i32 2}
!23 = !{ptr @find_xattr_handlers, !24, !"find_xattr_handlers", i1 false, i1 false}
!24 = !{!"../fs/erofs/xattr.c", i32 332, i32 41}
!25 = !{ptr @list_xattr_handlers, !26, !"list_xattr_handlers", i1 false, i1 false}
!26 = !{!"../fs/erofs/xattr.c", i32 543, i32 41}
!27 = !{ptr @erofs_xattr_handler.xattr_handler_map, !28, !"xattr_handler_map", i1 false, i1 false}
!28 = !{!"../fs/erofs/xattr.h", i32 48, i32 37}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{!"branch_weights", i32 1, i32 2000}
!39 = !{i64 2154597631, i64 2154598112, i64 2154597668, i64 2154597724, i64 2154597758, i64 2154597782, i64 2154597823, i64 2154597844, i64 2154597872, i64 2154597906}
!40 = !{i64 2154591084}
!41 = !{i64 2154591734, i64 2154592214, i64 2154591771, i64 2154591827, i64 2154591861, i64 2154591885, i64 2154591926, i64 2154591947, i64 2154591975, i64 2154592009}
!42 = !{!"branch_weights", i32 2000, i32 1}
!43 = !{i64 2154593894, i64 2154594375, i64 2154593931, i64 2154593987, i64 2154594021, i64 2154594045, i64 2154594086, i64 2154594107, i64 2154594135, i64 2154594169}
!44 = !{i64 2154595476}
!45 = !{i64 2148506488}
!46 = !{i64 2148416883, i64 2148416915, i64 2148416944, i64 2148416978, i64 2148417009, i64 2148417032}
!47 = !{i64 2149649485}
!48 = !{i64 2154599394, i64 2154599875, i64 2154599431, i64 2154599487, i64 2154599521, i64 2154599545, i64 2154599586, i64 2154599607, i64 2154599635, i64 2154599669}
!49 = !{i64 2154601225, i64 2154601706, i64 2154601262, i64 2154601318, i64 2154601352, i64 2154601376, i64 2154601417, i64 2154601438, i64 2154601466, i64 2154601500}
!50 = !{i64 2154609310, i64 2154609791, i64 2154609347, i64 2154609403, i64 2154609437, i64 2154609461, i64 2154609502, i64 2154609523, i64 2154609551, i64 2154609585}
