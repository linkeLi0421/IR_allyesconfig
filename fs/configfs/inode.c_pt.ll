; ModuleID = '/llk/IR_all_yes/fs/configfs/inode.c_pt.bc'
source_filename = "../fs/configfs/inode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.80, %struct.list_head, %struct.list_head, %union.anon.81 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.78 }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { %struct.spinlock, i32 }
%union.anon.80 = type { %struct.list_head }
%struct.list_head = type { ptr, ptr }
%union.anon.81 = type { %struct.hlist_node }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.74, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.75, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.76, ptr, %struct.address_space, %struct.list_head, %union.anon.77, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.74 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.75 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.76 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.77 = type { ptr }

@ram_aops = external dso_local constant %struct.address_space_operations, align 4
@configfs_inode_operations = internal constant %struct.inode_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @configfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@configfs_dirent_lock = external dso_local global %struct.spinlock, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&default_group_class[depth - 1]\00", [32 x i8] zeroinitializer }, align 32
@default_group_class = internal global { [48 x %struct.lock_class_key], [96 x i8] } zeroinitializer, align 32
@configfs_set_inode_lock_class._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016configfs: Too many levels of inodes for the locking correctness validator.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"configfs_set_inode_lock_class\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/configfs/inode.c\00", [44 x i8] zeroinitializer }, align 32
@configfs_set_inode_lock_class._entry_ptr = internal global ptr @configfs_set_inode_lock_class._entry, section ".printk_index", align 4
@configfs_set_inode_lock_class._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016configfs: Spurious warnings may appear.\0A\00", [53 x i8] zeroinitializer }, align 32
@configfs_set_inode_lock_class._entry_ptr.6 = internal global ptr @configfs_set_inode_lock_class._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fs/configfs/configfs_internal.h\00", [32 x i8] zeroinitializer }, align 32
@configfs_dir_cachep = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 135, i32 4 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"default_group_class\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 28, i32 30 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 142, i32 4 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.30 = private constant [23 x i8] c"../fs/configfs/inode.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 143, i32 4 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [35 x i8] c"../fs/configfs/configfs_internal.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 155, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @configfs_set_inode_lock_class._entry, ptr @configfs_set_inode_lock_class._entry.4, ptr @configfs_set_inode_lock_class._entry_ptr, ptr @configfs_set_inode_lock_class._entry_ptr.6, ptr @.str, ptr @default_group_class, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_group_class to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_set_inode_lock_class._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_set_inode_lock_class._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @configfs_setattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #0 align 64 {
entry:
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %4 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iattr, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %s_iattr = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %s_iattr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %s_iattr, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 80) #10
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.then3.cleanup_crit_edge, label %if.end7

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %s_mode = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %s_mode to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %s_mode, align 4
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %ia_mode, align 4
  %ia_uid = getelementptr inbounds %struct.iattr, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ia_uid to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %ia_uid, align 8
  %ia_gid = getelementptr inbounds %struct.iattr, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ia_gid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %ia_gid, align 4
  %ia_atime = getelementptr inbounds %struct.iattr, ptr %call7.i.i, i32 0, i32 5
  %ia_mtime = getelementptr inbounds %struct.iattr, ptr %call7.i.i, i32 0, i32 6
  %ia_ctime = getelementptr inbounds %struct.iattr, ptr %call7.i.i, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %1) #7
  %14 = call ptr @memcpy(ptr %ia_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %15 = call ptr @memcpy(ptr %ia_mtime, ptr %ia_ctime, i32 16)
  %16 = call ptr @memcpy(ptr %ia_atime, ptr %ia_ctime, i32 16)
  %17 = ptrtoint ptr %s_iattr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %s_iattr, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.end.if.end11_crit_edge
  %sd_iattr.0 = phi ptr [ %7, %if.end.if.end11_crit_edge ], [ %call7.i.i, %if.end7 ]
  %call12 = call i32 @simple_setattr(ptr noundef %mnt_userns, ptr noundef %dentry, ptr noundef %iattr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end15.if.end20_crit_edge, label %if.then17

if.end15.if.end20_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %ia_uid18 = getelementptr inbounds %struct.iattr, ptr %sd_iattr.0, i32 0, i32 2
  %ia_uid19 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 2
  %18 = ptrtoint ptr %ia_uid19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ia_uid19, align 8
  %20 = ptrtoint ptr %ia_uid18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ia_uid18, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end15.if.end20_crit_edge
  %and21 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end26_crit_edge, label %if.then23

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %ia_gid24 = getelementptr inbounds %struct.iattr, ptr %sd_iattr.0, i32 0, i32 3
  %ia_gid25 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 3
  %21 = ptrtoint ptr %ia_gid25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ia_gid25, align 4
  %23 = ptrtoint ptr %ia_gid24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ia_gid24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end20.if.end26_crit_edge
  %and27 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end26.if.end32_crit_edge, label %if.then29

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %ia_atime30 = getelementptr inbounds %struct.iattr, ptr %sd_iattr.0, i32 0, i32 5
  %ia_atime31 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 5
  %24 = call ptr @memcpy(ptr %ia_atime30, ptr %ia_atime31, i32 16)
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end26.if.end32_crit_edge
  %and33 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end38_crit_edge, label %if.then35

if.end32.if.end38_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %ia_mtime36 = getelementptr inbounds %struct.iattr, ptr %sd_iattr.0, i32 0, i32 6
  %ia_mtime37 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 6
  %25 = call ptr @memcpy(ptr %ia_mtime36, ptr %ia_mtime37, i32 16)
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end32.if.end38_crit_edge
  %and39 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.if.end44_crit_edge, label %if.then41

if.end38.if.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %ia_ctime42 = getelementptr inbounds %struct.iattr, ptr %sd_iattr.0, i32 0, i32 7
  %ia_ctime43 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 7
  %26 = call ptr @memcpy(ptr %ia_ctime42, ptr %ia_ctime43, i32 16)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end38.if.end44_crit_edge
  %and45 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  %ia_mode48 = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %27 = ptrtoint ptr %ia_mode48 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ia_mode48, align 4
  %i_gid = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %i_gid to i32
  call void @__asan_load4_noabort(i32 %29)
  %.unpack = load i32, ptr %i_gid, align 8
  %30 = insertvalue [1 x i32] undef, i32 %.unpack, 0
  %call49 = call i32 @in_group_p([1 x i32] %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true, label %if.then47.if.end55_crit_edge

if.then47.if.end55_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

land.lhs.true:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = call zeroext i1 @capable(i32 noundef 4) #7
  %31 = and i16 %28, -1025
  %spec.select = select i1 %call51, i16 %28, i16 %31
  br label %if.end55

if.end55:                                         ; preds = %land.lhs.true, %if.then47.if.end55_crit_edge
  %mode.0 = phi i16 [ %28, %if.then47.if.end55_crit_edge ], [ %spec.select, %land.lhs.true ]
  %s_mode56 = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 7
  %32 = ptrtoint ptr %s_mode56 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %mode.0, ptr %s_mode56, align 4
  %ia_mode57 = getelementptr inbounds %struct.iattr, ptr %sd_iattr.0, i32 0, i32 1
  %33 = ptrtoint ptr %ia_mode57 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %mode.0, ptr %ia_mode57, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end44.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.then3.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %if.end55 ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @current_time(ptr sret(%struct.timespec64) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_setattr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in_group_p([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @configfs_new_inode(i16 noundef zeroext %mode, ptr nocapture noundef readonly %sd, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @new_inode(ptr noundef %s) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @get_next_ino() #7
  %i_ino = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %i_ino, align 8
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ram_aops, ptr %a_ops, align 4
  %i_op = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %i_op to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @configfs_inode_operations, ptr %i_op, align 8
  %s_iattr = getelementptr inbounds %struct.configfs_dirent, ptr %sd, i32 0, i32 9
  %5 = ptrtoint ptr %s_iattr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_iattr, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %ia_mode.i = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %ia_mode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %ia_mode.i, align 4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %call, align 8
  %i_uid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 2
  %ia_uid.i = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %ia_uid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ia_uid.i, align 8
  %12 = ptrtoint ptr %i_uid.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %i_uid.i, align 4
  %i_gid.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 3
  %ia_gid.i = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %ia_gid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ia_gid.i, align 4
  %15 = ptrtoint ptr %i_gid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %i_gid.i, align 8
  %i_atime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %ia_atime.i = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %i_atime.i, ptr %ia_atime.i, i32 16)
  %i_mtime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %ia_mtime.i = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 6
  %17 = call ptr @memcpy(ptr %i_mtime.i, ptr %ia_mtime.i, i32 16)
  %i_ctime.i = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  %ia_ctime.i = getelementptr inbounds %struct.iattr, ptr %6, i32 0, i32 7
  %18 = call ptr @memcpy(ptr %i_ctime.i, ptr %ia_ctime.i, i32 16)
  br label %if.end5

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %mode, ptr %call, align 8
  %i_atime.i13 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15
  %i_mtime.i14 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 16
  %i_ctime.i15 = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i, ptr noundef nonnull %call) #7
  %20 = call ptr @memcpy(ptr %i_ctime.i15, ptr %tmp.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i) #7
  %21 = call ptr @memcpy(ptr %i_mtime.i14, ptr %i_ctime.i15, i32 16)
  %22 = call ptr @memcpy(ptr %i_atime.i13, ptr %i_ctime.i15, i32 16)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3, %entry.if.end5_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @new_inode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_next_ino() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @configfs_create(ptr noundef readonly %dentry, i16 noundef zeroext %mode) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dentry, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %4 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_sb, align 4
  %call.i = tail call ptr @new_inode(ptr noundef %5) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end4.cleanup_crit_edge, label %if.then.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end4
  %call1.i = tail call i32 @get_next_ino() #7
  %i_ino.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %i_ino.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1.i, ptr %i_ino.i, align 8
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 9
  %7 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_mapping.i, align 8
  %a_ops.i = getelementptr inbounds %struct.address_space, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %a_ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ram_aops, ptr %a_ops.i, align 4
  %i_op.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %i_op.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @configfs_inode_operations, ptr %i_op.i, align 8
  %s_iattr.i = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 9
  %11 = ptrtoint ptr %s_iattr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_iattr.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %ia_mode.i.i = getelementptr inbounds %struct.iattr, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ia_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ia_mode.i.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %call.i, align 8
  %i_uid.i.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 2
  %ia_uid.i.i = getelementptr inbounds %struct.iattr, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %ia_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ia_uid.i.i, align 8
  %18 = ptrtoint ptr %i_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %i_uid.i.i, align 4
  %i_gid.i.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 3
  %ia_gid.i.i = getelementptr inbounds %struct.iattr, ptr %12, i32 0, i32 3
  %19 = ptrtoint ptr %ia_gid.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ia_gid.i.i, align 4
  %21 = ptrtoint ptr %i_gid.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %i_gid.i.i, align 8
  %i_atime.i.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %ia_atime.i.i = getelementptr inbounds %struct.iattr, ptr %12, i32 0, i32 5
  %22 = call ptr @memcpy(ptr %i_atime.i.i, ptr %ia_atime.i.i, i32 16)
  %i_mtime.i.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %ia_mtime.i.i = getelementptr inbounds %struct.iattr, ptr %12, i32 0, i32 6
  %23 = call ptr @memcpy(ptr %i_mtime.i.i, ptr %ia_mtime.i.i, i32 16)
  %i_ctime.i.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  %ia_ctime.i.i = getelementptr inbounds %struct.iattr, ptr %12, i32 0, i32 7
  %24 = call ptr @memcpy(ptr %i_ctime.i.i, ptr %ia_ctime.i.i, i32 16)
  br label %if.end9

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %mode, ptr %call.i, align 8
  %i_atime.i13.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 15
  %i_mtime.i14.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 16
  %i_ctime.i15.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp.i.i, ptr noundef nonnull %call.i) #7
  %26 = call ptr @memcpy(ptr %i_ctime.i15.i, ptr %tmp.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #7
  %27 = call ptr @memcpy(ptr %i_mtime.i14.i, ptr %i_ctime.i15.i, i32 16)
  %28 = call ptr @memcpy(ptr %i_atime.i13.i, ptr %i_ctime.i15.i, i32 16)
  br label %if.end9

if.end9:                                          ; preds = %if.else.i, %if.then3.i
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %29 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_parent, align 8
  %d_inode.i22 = getelementptr inbounds %struct.dentry, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %d_inode.i22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %d_inode.i22, align 8
  %i_mtime = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 16
  %i_ctime = getelementptr inbounds %struct.inode, ptr %32, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #7
  call void @current_time(ptr nonnull sret(%struct.timespec64) align 8 %tmp, ptr noundef %32) #7
  %33 = call ptr @memcpy(ptr %i_ctime, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #7
  %34 = call ptr @memcpy(ptr %i_mtime, ptr %i_ctime, i32 16)
  %s_depth.i = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %s_depth.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %s_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i23 = icmp sgt i32 %36, 0
  br i1 %cmp.i23, label %if.then.i24, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i24:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %36)
  %cmp1.i = icmp ult i32 %36, 49
  br i1 %cmp1.i, label %if.then2.i, label %do.end.i

if.then2.i:                                       ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #9
  %dep_map.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 25, i32 6
  %sub.i = add nsw i32 %36, -1
  %arrayidx.i = getelementptr [48 x %struct.lock_class_key], ptr @default_group_class, i32 0, i32 %sub.i
  %wait_type_inner.i = getelementptr inbounds %struct.inode, ptr %call.i, i32 0, i32 25, i32 6, i32 4
  %37 = ptrtoint ptr %wait_type_inner.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %wait_type_inner.i, align 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str, ptr noundef %arrayidx.i, i32 noundef 0, i8 noundef zeroext %38, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #9
  %call.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.then2.i, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -17 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.cleanup_crit_edge ], [ %call.i, %if.end9.cleanup_crit_edge ], [ %call.i, %if.then2.i ], [ %call.i, %do.end.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @configfs_get_name(ptr noundef readonly %sd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sd, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !27

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %s_element = getelementptr inbounds %struct.configfs_dirent, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %s_element to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_element, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end10, !prof !27

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

do.end10:                                         ; preds = %lor.rhs
  %s_type = getelementptr inbounds %struct.configfs_dirent, ptr %sd, i32 0, i32 6
  %2 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_type, align 4
  %and = and i32 %3, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  %s_dentry = getelementptr inbounds %struct.configfs_dirent, ptr %sd, i32 0, i32 8
  %4 = ptrtoint ptr %s_dentry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_dentry, align 4
  %name = getelementptr inbounds %struct.dentry, ptr %5, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  br label %cleanup

if.end13:                                         ; preds = %do.end10
  %and15 = and i32 %3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.then17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end13.cleanup_crit_edge, %if.then12
  %retval.0 = phi ptr [ %7, %if.then12 ], [ %9, %if.then17 ], [ null, %if.end13.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @configfs_drop_dentry(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %parent) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %s_dentry = getelementptr inbounds %struct.configfs_dirent, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %s_dentry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_dentry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %d_lockref = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref) #7
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_inode.i.i, align 8
  %cmp.i.not.i = icmp eq ptr %3, null
  br i1 %cmp.i.not.i, label %if.then.if.else_crit_edge, label %simple_positive.exit

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

simple_positive.exit:                             ; preds = %if.then
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i.not = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i.not, label %simple_positive.exit.if.else_crit_edge, label %dget_dlock.exit

simple_positive.exit.if.else_crit_edge:           ; preds = %simple_positive.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

dget_dlock.exit:                                  ; preds = %simple_positive.exit
  call void @__sanitizer_cov_trace_pc() #9
  %count.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 7, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %7, 1
  store i32 %inc.i, ptr %count.i, align 4
  tail call void @__d_drop(ptr noundef nonnull %1) #7
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #7
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %parent, i32 0, i32 5
  %8 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_inode.i, align 8
  %call7 = tail call i32 @simple_unlink(ptr noundef %9, ptr noundef nonnull %1) #7
  br label %if.end10

if.else:                                          ; preds = %simple_positive.exit.if.else_crit_edge, %if.then.if.else_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref) #7
  br label %if.end10

if.end10:                                         ; preds = %if.else, %dget_dlock.exit, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__d_drop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_unlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @configfs_hash_and_remove(ptr nocapture noundef readonly %dir, ptr nocapture noundef readonly %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 5
  %0 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_inode.i, align 8
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dir, i32 0, i32 11
  %2 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_fsdata, align 4
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 25
  tail call void @down_write(ptr noundef %i_rwsem.i) #7
  %s_children = getelementptr inbounds %struct.configfs_dirent, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %s_children to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn39 = load ptr, ptr %s_children, align 4
  %cmp.not41 = icmp eq ptr %.pn39, %s_children
  br i1 %cmp.not41, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn42 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn39, %if.end.for.body_crit_edge ]
  %sd.043 = getelementptr i8, ptr %.pn42, i32 -8
  %s_element = getelementptr i8, ptr %.pn42, i32 20
  %5 = ptrtoint ptr %s_element to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_element, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %tobool.not.i = icmp eq ptr %sd.043, null
  br i1 %tobool.not.i, label %if.end4.do.body5.i_crit_edge, label %lor.rhs.i, !prof !27

if.end4.do.body5.i_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

lor.rhs.i:                                        ; preds = %if.end4
  %7 = ptrtoint ptr %s_element to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_element, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %lor.rhs.i.do.body5.i_crit_edge, label %do.end10.i, !prof !27

lor.rhs.i.do.body5.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

do.body5.i:                                       ; preds = %lor.rhs.i.do.body5.i_crit_edge, %if.end4.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/configfs/inode.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 187, 0\0A.popsection", ""() #7, !srcloc !28
  unreachable

do.end10.i:                                       ; preds = %lor.rhs.i
  %s_type.i = getelementptr i8, ptr %.pn42, i32 24
  %9 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %s_type.i, align 4
  %and.i = and i32 %10, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool11.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then12.i

if.then12.i:                                      ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %s_dentry.i = getelementptr i8, ptr %.pn42, i32 32
  %11 = ptrtoint ptr %s_dentry.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %s_dentry.i, align 4
  %name.i = getelementptr inbounds %struct.dentry, ptr %12, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name.i, align 8
  br label %configfs_get_name.exit

if.end13.i:                                       ; preds = %do.end10.i
  %and15.i = and i32 %10, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end13.i.configfs_get_name.exit_crit_edge, label %if.then17.i

if.end13.i.configfs_get_name.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %configfs_get_name.exit

if.then17.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %8, align 4
  br label %configfs_get_name.exit

configfs_get_name.exit:                           ; preds = %if.then17.i, %if.end13.i.configfs_get_name.exit_crit_edge, %if.then12.i
  %retval.0.i = phi ptr [ %14, %if.then12.i ], [ %16, %if.then17.i ], [ null, %if.end13.i.configfs_get_name.exit_crit_edge ]
  %call6 = tail call i32 @strcmp(ptr noundef %retval.0.i, ptr noundef %name) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %configfs_get_name.exit.for.inc_crit_edge

configfs_get_name.exit.for.inc_crit_edge:         ; preds = %configfs_get_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then8:                                         ; preds = %configfs_get_name.exit
  %s_type.i.le = getelementptr i8, ptr %.pn42, i32 24
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn42) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_del_init.exit_crit_edge

if.then8.list_del_init.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn42, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn42, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then8.list_del_init.exit_crit_edge
  %23 = ptrtoint ptr %.pn42 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %.pn42, ptr %.pn42, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn42, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.pn42, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @configfs_dirent_lock) #7
  %s_dentry.i30 = getelementptr i8, ptr %.pn42, i32 32
  %25 = ptrtoint ptr %s_dentry.i30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %s_dentry.i30, align 4
  %tobool.not.i31 = icmp eq ptr %26, null
  br i1 %tobool.not.i31, label %list_del_init.exit.configfs_drop_dentry.exit_crit_edge, label %if.then.i

list_del_init.exit.configfs_drop_dentry.exit_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %configfs_drop_dentry.exit

if.then.i:                                        ; preds = %list_del_init.exit
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #7
  %d_inode.i.i.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %d_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %d_inode.i.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %28, null
  br i1 %cmp.i.not.i.i, label %if.then.i.if.else.i_crit_edge, label %simple_positive.exit.i

if.then.i.if.else.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

simple_positive.exit.i:                           ; preds = %if.then.i
  %pprev.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.i.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i.not.i, label %simple_positive.exit.i.if.else.i_crit_edge, label %dget_dlock.exit.i

simple_positive.exit.i.if.else.i_crit_edge:       ; preds = %simple_positive.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

dget_dlock.exit.i:                                ; preds = %simple_positive.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %count.i.i = getelementptr inbounds %struct.dentry, ptr %26, i32 0, i32 7, i32 0, i32 0, i32 1
  %31 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %count.i.i, align 4
  %inc.i.i = add i32 %32, 1
  store i32 %inc.i.i, ptr %count.i.i, align 4
  tail call void @__d_drop(ptr noundef nonnull %26) #7
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #7
  %33 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode.i, align 8
  %call7.i = tail call i32 @simple_unlink(ptr noundef %34, ptr noundef nonnull %26) #7
  br label %configfs_drop_dentry.exit

if.else.i:                                        ; preds = %simple_positive.exit.i.if.else.i_crit_edge, %if.then.i.if.else.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #7
  br label %configfs_drop_dentry.exit

configfs_drop_dentry.exit:                        ; preds = %if.else.i, %dget_dlock.exit.i, %list_del_init.exit.configfs_drop_dentry.exit_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %sd.043, i32 noundef 4) #7
  %35 = ptrtoint ptr %sd.043 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %sd.043, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i32 = icmp eq i32 %36, 0
  br i1 %tobool.not.i32, label %do.end.i, label %configfs_drop_dentry.exit.if.end.i_crit_edge, !prof !27

configfs_drop_dentry.exit.if.end.i_crit_edge:     ; preds = %configfs_drop_dentry.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %configfs_drop_dentry.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 155, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %configfs_drop_dentry.exit.if.end.i_crit_edge
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %sd.043, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr nonnull %sd.043, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %sd.043, ptr nonnull %sd.043, i32 1, ptr nonnull elementtype(i32) %sd.043) #7, !srcloc !30
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then23.i, label %if.end.i.for.end_crit_edge

if.end.i.for.end_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then23.i:                                      ; preds = %if.end.i
  %38 = ptrtoint ptr %s_type.i.le to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_type.i.le, align 4
  %and.i.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then23.i.for.end_crit_edge

if.then23.i.for.end_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %s_iattr.i.i = getelementptr i8, ptr %.pn42, i32 36
  %40 = ptrtoint ptr %s_iattr.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_iattr.i.i, align 4
  tail call void @kfree(ptr noundef %41) #7
  %s_frag.i.i = getelementptr i8, ptr %.pn42, i32 44
  %42 = ptrtoint ptr %s_frag.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %s_frag.i.i, align 4
  tail call void @put_fragment(ptr noundef %43) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @configfs_dir_cachep to i32))
  %44 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef nonnull %sd.043) #7
  br label %for.end

for.inc:                                          ; preds = %configfs_get_name.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %45 = ptrtoint ptr %.pn42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn42, align 4
  %cmp.not = icmp eq ptr %.pn, %s_children
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i.i, %if.then23.i.for.end_crit_edge, %if.end.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %46 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %d_inode.i, align 8
  %i_rwsem.i34 = getelementptr inbounds %struct.inode, ptr %47, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i34) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fragment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @configfs_inode_operations, !1, !"configfs_inode_operations", i1 false, i1 false}
!1 = !{!"../fs/configfs/inode.c", i32 31, i32 38}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/configfs/inode.c", i32 135, i32 4}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/configfs/inode.c", i32 142, i32 4}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @configfs_set_inode_lock_class._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @configfs_set_inode_lock_class._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/configfs/inode.c", i32 143, i32 4}
!12 = !{ptr @configfs_set_inode_lock_class._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @configfs_set_inode_lock_class._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @default_group_class, !15, !"default_group_class", i1 false, i1 false}
!15 = !{!"../fs/configfs/inode.c", i32 28, i32 30}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../fs/configfs/configfs_internal.h", i32 155, i32 2}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{i64 2154654321, i64 2154654805, i64 2154654358, i64 2154654414, i64 2154654448, i64 2154654472, i64 2154654513, i64 2154654534, i64 2154654562, i64 2154654596}
!29 = !{i64 2148796641}
!30 = !{i64 2148711350, i64 2148711382, i64 2148711411, i64 2148711445, i64 2148711476, i64 2148711499}
!31 = !{i64 2148796870}
