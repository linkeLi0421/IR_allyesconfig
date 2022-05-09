; ModuleID = '/llk/IR_all_yes/fs/kernfs/inode.c_pt.bc'
source_filename = "../fs/kernfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.6 }
%union.anon.6 = type { [5 x %struct.uid_gid_extent] }
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
%struct.ctl_table_header = type { %union.anon.16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.xattr_handler = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.kernfs_iattrs = type { %struct.kuid_t, %struct.kgid_t, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.simple_xattrs, %struct.atomic_t, %struct.atomic_t }
%struct.simple_xattrs = type { %struct.list_head, %struct.spinlock }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.lockdep_map, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.0, ptr, i64, i16, i16, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.0 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { ptr, ptr, i64, ptr }
%struct.kernfs_root = type { ptr, i32, %struct.idr, i32, i32, ptr, %struct.list_head, %struct.wait_queue_head, %struct.rw_semaphore }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.81, %struct.list_head, %struct.list_head, %union.anon.82 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.4, ptr }
%union.anon.4 = type { i64 }
%struct.lockref = type { %union.anon.79 }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { %struct.spinlock, i32 }
%union.anon.81 = type { %struct.list_head }
%union.anon.82 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.78, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.73 = type { i32 }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.78 = type { ptr }
%struct.path = type { ptr, ptr }

@init_user_ns = external dso_local global %struct.user_namespace, align 4
@kernfs_trusted_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.3, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@kernfs_security_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.4, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_xattr_set }, [40 x i8] zeroinitializer }, align 32
@kernfs_user_xattr_handler = internal constant { %struct.xattr_handler, [40 x i8] } { %struct.xattr_handler { ptr null, ptr @.str.5, i32 0, ptr null, ptr @kernfs_vfs_xattr_get, ptr @kernfs_vfs_user_xattr_set }, [40 x i8] zeroinitializer }, align 32
@kernfs_xattr_handlers = dso_local global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @kernfs_trusted_xattr_handler, ptr @kernfs_security_xattr_handler, ptr @kernfs_user_xattr_handler, ptr null], [16 x i8] zeroinitializer }, align 32
@__kernfs_iattrs.iattr_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__kernfs_iattrs.iattr_mutex, i64 52), ptr getelementptr (i8, ptr @__kernfs_iattrs.iattr_mutex, i64 52) }, ptr @__kernfs_iattrs.iattr_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, align 4
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iattr_mutex.wait_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iattr_mutex\00", [20 x i8] zeroinitializer }, align 32
@kernfs_iattrs_cache = external dso_local local_unnamed_addr global ptr, align 4
@simple_xattrs_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&xattrs->lock\00", [18 x i8] zeroinitializer }, align 32
@ram_aops = external dso_local constant %struct.address_space_operations, align 4
@kernfs_iops = internal constant %struct.inode_operations { ptr null, ptr null, ptr @kernfs_iop_permission, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kernfs_iop_setattr, ptr @kernfs_iop_getattr, ptr @kernfs_iop_listxattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@kernfs_dir_iops = external dso_local constant %struct.inode_operations, align 128
@kernfs_dir_fops = external dso_local constant %struct.file_operations, align 4
@kernfs_file_fops = external dso_local constant %struct.file_operations, align 4
@kernfs_symlink_iops = external dso_local constant %struct.inode_operations, align 128
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trusted.\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"security.\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"user.\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.6 = private unnamed_addr constant [29 x i8] c"kernfs_trusted_xattr_handler\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 423, i32 35 }
@___asan_gen_.9 = private unnamed_addr constant [30 x i8] c"kernfs_security_xattr_handler\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 429, i32 35 }
@___asan_gen_.12 = private unnamed_addr constant [26 x i8] c"kernfs_user_xattr_handler\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 435, i32 35 }
@___asan_gen_.15 = private unnamed_addr constant [22 x i8] c"kernfs_xattr_handlers\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 441, i32 29 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 29, i32 9 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"../include/linux/xattr.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 100, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 424, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 430, i32 12 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [21 x i8] c"../fs/kernfs/inode.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 436, i32 12 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @kernfs_trusted_xattr_handler, ptr @kernfs_security_xattr_handler, ptr @kernfs_user_xattr_handler, ptr @kernfs_xattr_handlers, ptr @.str, ptr @.str.1, ptr @simple_xattrs_init.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_trusted_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_security_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_user_xattr_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kernfs_xattr_handlers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @simple_xattrs_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__kernfs_setattr(ptr nocapture noundef %kn, ptr nocapture noundef readonly %iattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iattr, align 8
  %call.i = tail call fastcc ptr @__kernfs_iattrs(ptr noundef %kn, i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %ia_uid4 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %2 = ptrtoint ptr %ia_uid4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ia_uid4, align 8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call.i, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %and6 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %ia_gid = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 1
  %ia_gid9 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %5 = ptrtoint ptr %ia_gid9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ia_gid9, align 4
  %7 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ia_gid, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  %and11 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %ia_atime = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 2
  %ia_atime14 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %8 = call ptr @memcpy(ptr %ia_atime, ptr %ia_atime14, i32 16)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %and16 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end20_crit_edge, label %if.then18

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 3
  %ia_mtime19 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %9 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_mtime19, i32 16)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end15.if.end20_crit_edge
  %and21 = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 4
  %ia_ctime24 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %10 = call ptr @memcpy(ptr %ia_ctime, ptr %ia_ctime24, i32 16)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %and26 = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.then28

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %11 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ia_mode, align 4
  %mode = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 12
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %mode, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end25.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_setattr(ptr nocapture noundef %kn, ptr nocapture noundef readonly %iattr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 3
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %spec.select.i = select i1 %tobool.not.i, ptr %kn, ptr %1
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %2 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %3, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #4
  %4 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iattr, align 8
  %call.i.i = tail call fastcc ptr @__kernfs_iattrs(ptr noundef %kn, i32 noundef 1) #4
  %tobool.not.i5 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i5, label %entry.__kernfs_setattr.exit_crit_edge, label %if.end.i

entry.__kernfs_setattr.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__kernfs_setattr.exit

if.end.i:                                         ; preds = %entry
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_uid4.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %6 = ptrtoint ptr %ia_uid4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ia_uid4.i, align 8
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %call.i.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %and6.i = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then8.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_gid.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 1
  %ia_gid9.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %9 = ptrtoint ptr %ia_gid9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ia_gid9.i, align 4
  %11 = ptrtoint ptr %ia_gid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ia_gid.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end10.i_crit_edge
  %and11.i = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then13.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_atime.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 2
  %ia_atime14.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %12 = call ptr @memcpy(ptr %ia_atime.i, ptr %ia_atime14.i, i32 16)
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end15.i_crit_edge
  %and16.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end20.i_crit_edge, label %if.then18.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_mtime.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 3
  %ia_mtime19.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %13 = call ptr @memcpy(ptr %ia_mtime.i, ptr %ia_mtime19.i, i32 16)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end20.i_crit_edge
  %and21.i = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then23.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_ctime.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 4
  %ia_ctime24.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %14 = call ptr @memcpy(ptr %ia_ctime.i, ptr %ia_ctime24.i, i32 16)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %and26.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.__kernfs_setattr.exit_crit_edge, label %if.then28.i

if.end25.i.__kernfs_setattr.exit_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__kernfs_setattr.exit

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %15 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ia_mode.i, align 4
  %mode.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 12
  %17 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %mode.i, align 2
  br label %__kernfs_setattr.exit

__kernfs_setattr.exit:                            ; preds = %if.then28.i, %if.end25.i.__kernfs_setattr.exit_crit_edge, %entry.__kernfs_setattr.exit_crit_edge
  %retval.0.i = phi i32 [ -12, %entry.__kernfs_setattr.exit_crit_edge ], [ 0, %if.then28.i ], [ 0, %if.end25.i.__kernfs_setattr.exit_crit_edge ]
  tail call void @up_write(ptr noundef %kernfs_rwsem) #4
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_iop_setattr(ptr nocapture readnone %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  %spec.select.i = select i1 %tobool.not.i, ptr %3, ptr %5
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %6 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %7, i32 0, i32 8
  tail call void @down_write(ptr noundef %kernfs_rwsem) #4
  %call2 = tail call i32 @setattr_prepare(ptr noundef nonnull @init_user_ns, ptr noundef %dentry, ptr noundef %iattr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iattr, align 8
  %call.i.i = tail call fastcc ptr @__kernfs_iattrs(ptr noundef nonnull %3, i32 noundef 1) #4
  %tobool.not.i23 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i23, label %if.end5.out_crit_edge, label %if.end.i

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end.i:                                         ; preds = %if.end5
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_uid4.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %10 = ptrtoint ptr %ia_uid4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ia_uid4.i, align 8
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %call.i.i, align 8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %and6.i = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then8.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_gid.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 1
  %ia_gid9.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %13 = ptrtoint ptr %ia_gid9.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ia_gid9.i, align 4
  %15 = ptrtoint ptr %ia_gid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ia_gid.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end10.i_crit_edge
  %and11.i = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then13.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_atime.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 2
  %ia_atime14.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %ia_atime.i, ptr %ia_atime14.i, i32 16)
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end15.i_crit_edge
  %and16.i = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end20.i_crit_edge, label %if.then18.i

if.end15.i.if.end20.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20.i

if.then18.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_mtime.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 3
  %ia_mtime19.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %17 = call ptr @memcpy(ptr %ia_mtime.i, ptr %ia_mtime19.i, i32 16)
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then18.i, %if.end15.i.if.end20.i_crit_edge
  %and21.i = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end25.i_crit_edge, label %if.then23.i

if.end20.i.if.end25.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_ctime.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 4
  %ia_ctime24.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %ia_ctime.i, ptr %ia_ctime24.i, i32 16)
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end25.i_crit_edge
  %and26.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.end25.i.if.end9_crit_edge, label %if.then28.i

if.end25.i.if.end9_crit_edge:                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then28.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %19 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ia_mode.i, align 4
  %mode.i = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 12
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %mode.i, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then28.i, %if.end25.i.if.end9_crit_edge
  tail call void @setattr_copy(ptr noundef nonnull @init_user_ns, ptr noundef %1, ptr noundef %iattr) #4
  br label %out

out:                                              ; preds = %if.end9, %if.end5.out_crit_edge, %if.end.out_crit_edge
  %error.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ 0, %if.end9 ], [ -12, %if.end5.out_crit_edge ]
  tail call void @up_write(ptr noundef %kernfs_rwsem) #4
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @setattr_prepare(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @setattr_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_iop_listxattr(ptr nocapture noundef readonly %dentry, ptr noundef %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.i = icmp eq ptr %1, null
  br i1 %cmp.i.i, label %entry.kernfs_dentry_node.exit_crit_edge, label %if.end.i

entry.kernfs_dentry_node.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_dentry_node.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  br label %kernfs_dentry_node.exit

kernfs_dentry_node.exit:                          ; preds = %if.end.i, %entry.kernfs_dentry_node.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ null, %entry.kernfs_dentry_node.exit_crit_edge ]
  %call.i = tail call fastcc ptr @__kernfs_iattrs(ptr noundef %retval.0.i, i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %kernfs_dentry_node.exit.cleanup_crit_edge, label %if.end

kernfs_dentry_node.exit.cleanup_crit_edge:        ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %kernfs_dentry_node.exit
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i.i, align 8
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 5
  %call3 = tail call i32 @simple_xattr_list(ptr noundef %5, ptr noundef %xattrs, ptr noundef %buf, i32 noundef %size) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %kernfs_dentry_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -12, %kernfs_dentry_node.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_list(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_iop_getattr(ptr nocapture readnone %mnt_userns, ptr nocapture noundef readonly %path, ptr noundef %stat, i32 %request_mask, i32 %query_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %0 = ptrtoint ptr %dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry, align 4
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i, align 8
  %i_private = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 54
  %4 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_private, align 4
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  %spec.select.i = select i1 %tobool.not.i, ptr %5, ptr %7
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %9, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem) #4
  %i_lock = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #4
  %iattr.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 13
  %10 = ptrtoint ptr %iattr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iattr.i, align 4
  %mode.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 12
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode.i, align 2
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %3, align 8
  %tobool.not.i10 = icmp eq ptr %11, null
  br i1 %tobool.not.i10, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %11, align 8
  %17 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %i_uid.i.i, align 4
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 3
  %ia_gid.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 1
  %18 = ptrtoint ptr %ia_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ia_gid.i.i, align 4
  %20 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %i_gid.i.i, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 15
  %ia_atime.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 2
  %21 = call ptr @memcpy(ptr %i_atime.i.i, ptr %ia_atime.i.i, i32 16)
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 16
  %ia_mtime.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %ia_mtime.i.i, i32 16)
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 17
  %ia_ctime.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 4
  %23 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %ia_ctime.i.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 11
  %24 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags.i.i, align 8
  %26 = and i16 %25, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %26)
  %cmp.i = icmp eq i16 %26, 1
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.kernfs_refresh_inode.exit_crit_edge

if.end.i.kernfs_refresh_inode.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_refresh_inode.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %27 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %add.i = add i32 %29, 2
  tail call void @set_nlink(ptr noundef %3, i32 noundef %add.i) #4
  br label %kernfs_refresh_inode.exit

kernfs_refresh_inode.exit:                        ; preds = %if.then1.i, %if.end.i.kernfs_refresh_inode.exit_crit_edge
  tail call void @generic_fillattr(ptr noundef nonnull @init_user_ns, ptr noundef %3, ptr noundef %stat) #4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #4
  tail call void @up_read(ptr noundef %kernfs_rwsem) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_fillattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @kernfs_get_inode(ptr noundef %sb, ptr noundef %kn) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 10
  %0 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %id.i, align 8
  %conv.i.i = trunc i64 %1 to i32
  %call1 = tail call ptr @iget_locked(ptr noundef %sb, i32 noundef %conv.i.i) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %i_state = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 24
  %2 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i_state, align 8
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @kernfs_get(ptr noundef %kn) #4
  %i_private.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 54
  %4 = ptrtoint ptr %i_private.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %kn, ptr %i_private.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 9
  %5 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ram_aops, ptr %a_ops.i, align 4
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 7
  %8 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @kernfs_iops, ptr %i_op.i, align 8
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %id.i, align 8
  %shr.i.i.i = lshr i64 %10, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  %i_generation.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 49
  %11 = ptrtoint ptr %i_generation.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i.i.i, ptr %i_generation.i, align 8
  %mode.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 12
  %12 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mode.i, align 2
  %14 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %call1, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 15
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 16
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #4
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, ptr noundef nonnull %call1) #4
  %15 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #4
  %16 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %i_ctime.i.i, i32 16)
  %17 = call ptr @memcpy(ptr %i_atime.i.i, ptr %i_ctime.i.i, i32 16)
  %iattr.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 13
  %18 = ptrtoint ptr %iattr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iattr.i.i, align 4
  %20 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mode.i, align 2
  %22 = ptrtoint ptr %call1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %call1, align 8
  %tobool.not.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i, label %if.then.if.end.i.i_crit_edge, label %if.then.i.i

if.then.if.end.i.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %i_uid.i.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 2
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %19, align 8
  %25 = ptrtoint ptr %i_uid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %i_uid.i.i.i, align 4
  %i_gid.i.i.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 3
  %ia_gid.i.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %ia_gid.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ia_gid.i.i.i, align 4
  %28 = ptrtoint ptr %i_gid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %i_gid.i.i.i, align 8
  %ia_atime.i.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %19, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %i_atime.i.i, ptr %ia_atime.i.i.i, i32 16)
  %ia_mtime.i.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %19, i32 0, i32 3
  %30 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %ia_mtime.i.i.i, i32 16)
  %ia_ctime.i.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %19, i32 0, i32 4
  %31 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %ia_ctime.i.i.i, i32 16)
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.if.end.i.i_crit_edge
  %flags.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 11
  %32 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags.i.i.i, align 8
  %34 = and i16 %33, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %34)
  %cmp.i.i = icmp eq i16 %34, 1
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end.i.i.kernfs_refresh_inode.exit.i_crit_edge

if.end.i.i.kernfs_refresh_inode.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_refresh_inode.exit.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 8
  %add.i.i = add i32 %37, 2
  call void @set_nlink(ptr noundef nonnull %call1, i32 noundef %add.i.i) #4
  br label %kernfs_refresh_inode.exit.i

kernfs_refresh_inode.exit.i:                      ; preds = %if.then1.i.i, %if.end.i.i.kernfs_refresh_inode.exit.i_crit_edge
  %38 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %flags.i.i.i, align 8
  %40 = and i16 %39, 15
  %and.i.i = zext i16 %40 to i32
  %41 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %kernfs_refresh_inode.exit.i
  %42 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @kernfs_dir_iops, ptr %i_op.i, align 8
  %43 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @kernfs_dir_fops, ptr %43, align 8
  %45 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags.i.i.i, align 8
  %47 = and i16 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i = icmp eq i16 %47, 0
  br i1 %tobool.not.i, label %sw.bb.i.kernfs_init_inode.exit_crit_edge, label %if.then.i

sw.bb.i.kernfs_init_inode.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_init_inode.exit

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @make_empty_dir_inode(ptr noundef nonnull %call1) #4
  br label %kernfs_init_inode.exit

sw.bb3.i:                                         ; preds = %kernfs_refresh_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %size.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 8, i32 0, i32 2
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %size.i, align 8
  %i_size.i = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 14
  %50 = ptrtoint ptr %i_size.i to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %i_size.i, align 8
  %51 = getelementptr inbounds %struct.inode, ptr %call1, i32 0, i32 44
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @kernfs_file_fops, ptr %51, align 8
  br label %kernfs_init_inode.exit

sw.bb4.i:                                         ; preds = %kernfs_refresh_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %53 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @kernfs_symlink_iops, ptr %i_op.i, align 8
  br label %kernfs_init_inode.exit

do.body.i:                                        ; preds = %kernfs_refresh_inode.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/kernfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 229, 0\0A.popsection", ""() #4, !srcloc !32
  unreachable

kernfs_init_inode.exit:                           ; preds = %sw.bb4.i, %sw.bb3.i, %if.then.i, %sw.bb.i.kernfs_init_inode.exit_crit_edge
  call void @unlock_new_inode(ptr noundef nonnull %call1) #4
  br label %if.end

if.end:                                           ; preds = %kernfs_init_inode.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iget_locked(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kernfs_evict_inode(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %i_data = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 46
  tail call void @truncate_inode_pages_final(ptr noundef %i_data) #4
  tail call void @clear_inode(ptr noundef %inode) #4
  tail call void @kernfs_put(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @truncate_inode_pages_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_iop_permission(ptr nocapture readnone %mnt_userns, ptr noundef %inode, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr %1, ptr %3
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 8
  %kernfs_rwsem = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 8
  tail call void @down_read(ptr noundef %kernfs_rwsem) #4
  %i_lock = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %i_lock) #4
  %iattr.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %iattr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iattr.i, align 4
  %mode.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mode.i, align 2
  %10 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %inode, align 8
  %tobool.not.i13 = icmp eq ptr %7, null
  br i1 %tobool.not.i13, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 2
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 8
  %13 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %i_uid.i.i, align 4
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 3
  %ia_gid.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %ia_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ia_gid.i.i, align 4
  %16 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %i_gid.i.i, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 15
  %ia_atime.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %7, i32 0, i32 2
  %17 = call ptr @memcpy(ptr %i_atime.i.i, ptr %ia_atime.i.i, i32 16)
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 16
  %ia_mtime.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %7, i32 0, i32 3
  %18 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %ia_mtime.i.i, i32 16)
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 17
  %ia_ctime.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %7, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %ia_ctime.i.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %flags.i.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %flags.i.i, align 8
  %22 = and i16 %21, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %22)
  %cmp.i = icmp eq i16 %22, 1
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.kernfs_refresh_inode.exit_crit_edge

if.end.i.kernfs_refresh_inode.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_refresh_inode.exit

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %23 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 8
  %add.i = add i32 %25, 2
  tail call void @set_nlink(ptr noundef %inode, i32 noundef %add.i) #4
  br label %kernfs_refresh_inode.exit

kernfs_refresh_inode.exit:                        ; preds = %if.then1.i, %if.end.i.kernfs_refresh_inode.exit_crit_edge
  %call1 = tail call i32 @generic_permission(ptr noundef nonnull @init_user_ns, ptr noundef %inode, i32 noundef %mask) #4
  tail call void @_raw_spin_unlock(ptr noundef %i_lock) #4
  tail call void @up_read(ptr noundef %kernfs_rwsem) #4
  br label %cleanup

cleanup:                                          ; preds = %kernfs_refresh_inode.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %kernfs_refresh_inode.exit ], [ -10, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_xattr_get(ptr nocapture noundef readonly %kn, ptr noundef %name, ptr noundef %value, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex, i32 noundef 0) #4
  %iattr.i.i = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 13
  %0 = ptrtoint ptr %iattr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iattr.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %1, i32 0, i32 5
  %call1 = tail call i32 @simple_xattr_get(ptr noundef %xattrs, ptr noundef %name, ptr noundef %value, i32 noundef %size) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernfs_xattr_set(ptr nocapture noundef %kn, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @__kernfs_iattrs(ptr noundef %kn, i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 5
  %call1 = tail call i32 @simple_xattr_set(ptr noundef %xattrs, ptr noundef %name, ptr noundef %value, i32 noundef %size, i32 noundef %flags, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_xattr_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__kernfs_iattrs(ptr nocapture noundef %kn, i32 noundef %alloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex, i32 noundef 0) #4
  %iattr = getelementptr inbounds %struct.kernfs_node, ptr %kn, i32 0, i32 13
  %0 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iattr, align 4
  %tobool.not = icmp ne ptr %1, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc)
  %tobool1.not = icmp eq i32 %alloc, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.out_unlock_crit_edge, label %if.end

entry.out_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernfs_iattrs_cache to i32))
  %2 = load ptr, ptr @kernfs_iattrs_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 3520) #4
  %3 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %iattr, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.out_unlock_crit_edge, label %if.end6

if.end.out_unlock_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %out_unlock

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %call.i, align 8
  %ia_gid = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ia_gid, align 4
  %ia_atime = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 2
  tail call void @ktime_get_real_ts64(ptr noundef %ia_atime) #4
  %6 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iattr, align 4
  %ia_mtime = getelementptr inbounds %struct.kernfs_iattrs, ptr %7, i32 0, i32 3
  %ia_atime14 = getelementptr inbounds %struct.kernfs_iattrs, ptr %7, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_atime14, i32 16)
  %9 = load ptr, ptr %iattr, align 4
  %ia_ctime = getelementptr inbounds %struct.kernfs_iattrs, ptr %9, i32 0, i32 4
  %ia_atime17 = getelementptr inbounds %struct.kernfs_iattrs, ptr %9, i32 0, i32 2
  %10 = call ptr @memcpy(ptr %ia_ctime, ptr %ia_atime17, i32 16)
  %11 = load ptr, ptr %iattr, align 4
  %xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %xattrs to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %xattrs, ptr %xattrs, align 4
  %prev.i.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %xattrs, ptr %prev.i.i, align 4
  %lock.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %11, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @simple_xattrs_init.__key, i16 noundef signext 3) #4
  %14 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iattr, align 4
  %nr_user_xattrs = getelementptr inbounds %struct.kernfs_iattrs, ptr %15, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_user_xattrs, i32 noundef 4) #4
  %16 = ptrtoint ptr %nr_user_xattrs to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 0, ptr %nr_user_xattrs, align 4
  %17 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iattr, align 4
  %user_xattr_size = getelementptr inbounds %struct.kernfs_iattrs, ptr %18, i32 0, i32 7
  %call.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_xattr_size, i32 noundef 4) #4
  %19 = ptrtoint ptr %user_xattr_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 0, ptr %user_xattr_size, align 4
  br label %out_unlock

out_unlock:                                       ; preds = %if.end6, %if.end.out_unlock_crit_edge, %entry.out_unlock_crit_edge
  %20 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iattr, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  ret ptr %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_nlink(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kernfs_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @make_empty_dir_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unlock_new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_vfs_xattr_get(ptr noundef %handler, ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %inode, ptr noundef %suffix, ptr noundef %value, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %suffix) #4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex, i32 noundef 0) #4
  %iattr.i.i.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %iattr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iattr.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @__kernfs_iattrs.iattr_mutex) #4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.kernfs_xattr_get.exit_crit_edge, label %if.end.i

entry.kernfs_xattr_get.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_xattr_get.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %xattrs.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %3, i32 0, i32 5
  %call1.i = tail call i32 @simple_xattr_get(ptr noundef %xattrs.i, ptr noundef %call, ptr noundef %value, i32 noundef %size) #4
  br label %kernfs_xattr_get.exit

kernfs_xattr_get.exit:                            ; preds = %if.end.i, %entry.kernfs_xattr_get.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -61, %entry.kernfs_xattr_get.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_vfs_xattr_set(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %inode, ptr noundef %suffix, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %suffix) #4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call.i.i = tail call fastcc ptr @__kernfs_iattrs(ptr noundef %1, i32 noundef 1) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.kernfs_xattr_set.exit_crit_edge, label %if.end.i

entry.kernfs_xattr_set.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_xattr_set.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %xattrs.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i.i, i32 0, i32 5
  %call1.i = tail call i32 @simple_xattr_set(ptr noundef %xattrs.i, ptr noundef %call, ptr noundef %value, i32 noundef %size, i32 noundef %flags, ptr noundef null) #4
  br label %kernfs_xattr_set.exit

kernfs_xattr_set.exit:                            ; preds = %if.end.i, %entry.kernfs_xattr_set.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -12, %entry.kernfs_xattr_set.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xattr_full_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kernfs_vfs_user_xattr_set(ptr noundef %handler, ptr nocapture noundef readnone %mnt_userns, ptr nocapture noundef readnone %unused, ptr nocapture noundef readonly %inode, ptr noundef %suffix, ptr noundef %value, i32 noundef %size, i32 noundef %flags) #0 align 64 {
entry:
  %removed_size.i25 = alloca i32, align 4
  %removed_size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xattr_full_name(ptr noundef %handler, ptr noundef %suffix) #4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %parent.i = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %spec.select.i = select i1 %tobool.not.i, ptr %1, ptr %3
  %root.i = getelementptr inbounds %struct.kernfs_node, ptr %spec.select.i, i32 0, i32 8, i32 0, i32 2
  %4 = ptrtoint ptr %root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root.i, align 8
  %flags2 = getelementptr inbounds %struct.kernfs_root, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags2, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call fastcc ptr @__kernfs_iattrs(ptr noundef %1, i32 noundef 1) #4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool7.not = icmp eq ptr %value, null
  %xattrs10 = getelementptr inbounds %struct.kernfs_iattrs, ptr %call.i, i32 0, i32 5
  %iattr.i26 = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %iattr.i26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iattr.i26, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end6
  %user_xattr_size.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %9, i32 0, i32 7
  %nr_user_xattrs.i = getelementptr inbounds %struct.kernfs_iattrs, ptr %9, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %removed_size.i) #4
  %10 = ptrtoint ptr %removed_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %removed_size.i, align 4, !annotation !33
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_user_xattrs.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %nr_user_xattrs.i, i32 1, i32 3, i32 1) #4
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_user_xattrs.i, ptr %nr_user_xattrs.i, i32 1, ptr elementtype(i32) %nr_user_xattrs.i) #4, !srcloc !35
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %asmresult.i.i.i.i.i)
  %cmp.i = icmp sgt i32 %asmresult.i.i.i.i.i, 128
  br i1 %cmp.i, label %if.then8.dec_count_out.i_crit_edge, label %if.end.i

if.then8.dec_count_out.i_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %dec_count_out.i

if.end.i:                                         ; preds = %if.then8
  %call.i.i23.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %user_xattr_size.i, i32 noundef 4) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %user_xattr_size.i, i32 1, i32 3, i32 1) #4
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_xattr_size.i, ptr %user_xattr_size.i, i32 %size, ptr elementtype(i32) %user_xattr_size.i) #4, !srcloc !35
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %asmresult.i.i.i.i)
  %cmp3.i = icmp sgt i32 %asmresult.i.i.i.i, 131072
  br i1 %cmp3.i, label %if.end.i.dec_size_out.i_crit_edge, label %if.end5.i

if.end.i.dec_size_out.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dec_size_out.i

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @simple_xattr_set(ptr noundef %xattrs10, ptr noundef %call, ptr noundef nonnull %value, i32 noundef %size, i32 noundef %flags, ptr noundef nonnull %removed_size.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i24 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i24, label %land.lhs.true.i, label %if.end5.i.dec_size_out.i_crit_edge

if.end5.i.dec_size_out.i_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dec_size_out.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %13 = ptrtoint ptr %removed_size.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %removed_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp7.i = icmp sgt i32 %14, -1
  br i1 %cmp7.i, label %land.lhs.true.i.dec_size_out.i_crit_edge, label %land.lhs.true.i.kernfs_vfs_user_xattr_add.exit_crit_edge

land.lhs.true.i.kernfs_vfs_user_xattr_add.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_vfs_user_xattr_add.exit

land.lhs.true.i.dec_size_out.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dec_size_out.i

dec_size_out.i:                                   ; preds = %land.lhs.true.i.dec_size_out.i_crit_edge, %if.end5.i.dec_size_out.i_crit_edge, %if.end.i.dec_size_out.i_crit_edge
  %size.addr.0.i = phi i32 [ %size, %if.end.i.dec_size_out.i_crit_edge ], [ %14, %land.lhs.true.i.dec_size_out.i_crit_edge ], [ %size, %if.end5.i.dec_size_out.i_crit_edge ]
  %ret.0.i = phi i32 [ -28, %if.end.i.dec_size_out.i_crit_edge ], [ 0, %land.lhs.true.i.dec_size_out.i_crit_edge ], [ %call6.i, %if.end5.i.dec_size_out.i_crit_edge ]
  %call.i.i24.i = call zeroext i1 @__kasan_check_write(ptr noundef %user_xattr_size.i, i32 noundef 4) #4
  call void @llvm.prefetch.p0(ptr %user_xattr_size.i, i32 1, i32 3, i32 1) #4
  %15 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_xattr_size.i, ptr %user_xattr_size.i, i32 %size.addr.0.i, ptr elementtype(i32) %user_xattr_size.i) #4, !srcloc !37
  br label %dec_count_out.i

dec_count_out.i:                                  ; preds = %dec_size_out.i, %if.then8.dec_count_out.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %dec_size_out.i ], [ -28, %if.then8.dec_count_out.i_crit_edge ]
  %call.i.i25.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_user_xattrs.i, i32 noundef 4) #4
  call void @llvm.prefetch.p0(ptr %nr_user_xattrs.i, i32 1, i32 3, i32 1) #4
  %16 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_user_xattrs.i, ptr %nr_user_xattrs.i, i32 1, ptr elementtype(i32) %nr_user_xattrs.i) #4, !srcloc !37
  br label %kernfs_vfs_user_xattr_add.exit

kernfs_vfs_user_xattr_add.exit:                   ; preds = %dec_count_out.i, %land.lhs.true.i.kernfs_vfs_user_xattr_add.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.1.i, %dec_count_out.i ], [ 0, %land.lhs.true.i.kernfs_vfs_user_xattr_add.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %removed_size.i) #4
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %removed_size.i25) #4
  %17 = ptrtoint ptr %removed_size.i25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %removed_size.i25, align 4, !annotation !33
  %call.i27 = call i32 @simple_xattr_set(ptr noundef %xattrs10, ptr noundef %call, ptr noundef null, i32 noundef %size, i32 noundef %flags, ptr noundef nonnull %removed_size.i25) #4
  %18 = ptrtoint ptr %removed_size.i25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %removed_size.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i28 = icmp sgt i32 %19, -1
  br i1 %cmp.i28, label %if.then.i, label %if.else.kernfs_vfs_user_xattr_rm.exit_crit_edge

if.else.kernfs_vfs_user_xattr_rm.exit_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %kernfs_vfs_user_xattr_rm.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %nr_user_xattrs.i29 = getelementptr inbounds %struct.kernfs_iattrs, ptr %9, i32 0, i32 6
  %user_xattr_size.i30 = getelementptr inbounds %struct.kernfs_iattrs, ptr %9, i32 0, i32 7
  %call.i.i.i31 = call zeroext i1 @__kasan_check_write(ptr noundef %user_xattr_size.i30, i32 noundef 4) #4
  call void @llvm.prefetch.p0(ptr %user_xattr_size.i30, i32 1, i32 3, i32 1) #4
  %20 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %user_xattr_size.i30, ptr %user_xattr_size.i30, i32 %19, ptr elementtype(i32) %user_xattr_size.i30) #4, !srcloc !37
  %call.i.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_user_xattrs.i29, i32 noundef 4) #4
  call void @llvm.prefetch.p0(ptr %nr_user_xattrs.i29, i32 1, i32 3, i32 1) #4
  %21 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_user_xattrs.i29, ptr %nr_user_xattrs.i29, i32 1, ptr elementtype(i32) %nr_user_xattrs.i29) #4, !srcloc !37
  br label %kernfs_vfs_user_xattr_rm.exit

kernfs_vfs_user_xattr_rm.exit:                    ; preds = %if.then.i, %if.else.kernfs_vfs_user_xattr_rm.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %removed_size.i25) #4
  br label %cleanup

cleanup:                                          ; preds = %kernfs_vfs_user_xattr_rm.exit, %kernfs_vfs_user_xattr_add.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %kernfs_vfs_user_xattr_add.exit ], [ %call.i27, %kernfs_vfs_user_xattr_rm.exit ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @kernfs_xattr_handlers, !1, !"kernfs_xattr_handlers", i1 false, i1 false}
!1 = !{!"../fs/kernfs/inode.c", i32 441, i32 29}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/kernfs/inode.c", i32 29, i32 9}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__kernfs_iattrs.iattr_mutex, !3, !"iattr_mutex", i1 false, i1 false}
!6 = !{ptr @simple_xattrs_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../include/linux/xattr.h", i32 100, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @kernfs_iops, !10, !"kernfs_iops", i1 false, i1 false}
!10 = !{!"../fs/kernfs/inode.c", i32 20, i32 38}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../fs/kernfs/inode.c", i32 424, i32 12}
!13 = !{ptr @kernfs_trusted_xattr_handler, !14, !"kernfs_trusted_xattr_handler", i1 false, i1 false}
!14 = !{!"../fs/kernfs/inode.c", i32 423, i32 35}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/kernfs/inode.c", i32 430, i32 12}
!17 = !{ptr @kernfs_security_xattr_handler, !18, !"kernfs_security_xattr_handler", i1 false, i1 false}
!18 = !{!"../fs/kernfs/inode.c", i32 429, i32 35}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/kernfs/inode.c", i32 436, i32 12}
!21 = !{ptr @kernfs_user_xattr_handler, !22, !"kernfs_user_xattr_handler", i1 false, i1 false}
!22 = !{!"../fs/kernfs/inode.c", i32 435, i32 35}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{i64 2154733410, i64 2154733892, i64 2154733447, i64 2154733503, i64 2154733537, i64 2154733561, i64 2154733602, i64 2154733623, i64 2154733651, i64 2154733685}
!33 = !{!"auto-init"}
!34 = !{i64 2148798605}
!35 = !{i64 2148713890, i64 2148713922, i64 2148713951, i64 2148713985, i64 2148714016, i64 2148714039}
!36 = !{i64 2148798834}
!37 = !{i64 2148715635, i64 2148715661, i64 2148715690, i64 2148715724, i64 2148715755, i64 2148715778}
