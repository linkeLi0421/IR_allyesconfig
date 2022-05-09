; ModuleID = '/llk/IR_all_yes/fs/configfs/symlink.c_pt.bc'
source_filename = "../fs/configfs/symlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.user_namespace = type opaque
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.inode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [36 x i8] }
%struct.path = type { ptr, ptr }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.62, %struct.list_head, %struct.list_head, %union.anon.63 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.spinlock, i32 }
%union.anon.62 = type { %struct.list_head }
%union.anon.63 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.configfs_dirent = type { %struct.atomic_t, i32, %struct.list_head, %struct.list_head, i32, ptr, i32, i16, ptr, ptr, i32, ptr }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"configfs_symlink_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@configfs_symlink_mutex = dso_local global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @configfs_symlink_mutex, i64 52), ptr getelementptr (i8, ptr @configfs_symlink_mutex, i64 52) }, ptr @configfs_symlink_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"configfs_symlink_mutex\00", [41 x i8] zeroinitializer }, align 32
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@configfs_dirent_lock = external dso_local global %struct.spinlock, align 4
@configfs_symlink_inode_operations = dso_local local_unnamed_addr constant %struct.inode_operations { ptr null, ptr @simple_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @configfs_setattr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [36 x i8] undef }, align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fs/configfs/configfs_internal.h\00", [32 x i8] zeroinitializer }, align 32
@configfs_get_target_path.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"configfs\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"configfs_get_target_path\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/configfs/symlink.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: depth = %d, size = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"configfs: %s: depth = %d, size = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@configfs_get_target_path.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: path = '%s'\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"configfs: %s: path = '%s'\0A\00", [37 x i8] zeroinitializer }, align 32
@configfs_dir_cachep = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.14 = private unnamed_addr constant [23 x i8] c"configfs_symlink_mutex\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 20, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [35 x i8] c"../fs/configfs/configfs_internal.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 147, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 67, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.42 = private constant [25 x i8] c"../fs/configfs/symlink.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 73, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @.str, ptr @configfs_symlink_mutex, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_symlink_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @configfs_symlink(ptr nocapture noundef readnone %mnt_userns, ptr noundef %dir, ptr noundef %dentry, ptr noundef %symname) local_unnamed_addr #0 align 64 {
entry:
  %path = alloca %struct.path, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path) #6
  %0 = ptrtoint ptr %path to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %path, align 4, !annotation !30
  %1 = getelementptr inbounds %struct.path, ptr %path, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !30
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %3 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d_parent, align 8
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %d_fsdata, align 4
  %call = tail call i32 @configfs_dirent_is_ready(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d_parent, align 8
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #6
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.not.i, label %if.end.configfs_get_config_item.exit_crit_edge, label %if.then.i

if.end.configfs_get_config_item.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %configfs_get_config_item.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %8, i32 0, i32 11
  %11 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d_fsdata.i, align 4
  %s_element.i = getelementptr inbounds %struct.configfs_dirent, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %s_element.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_element.i, align 4
  %call1.i = tail call ptr @config_item_get(ptr noundef %14) #6
  br label %configfs_get_config_item.exit

configfs_get_config_item.exit:                    ; preds = %if.then.i, %if.end.configfs_get_config_item.exit_crit_edge
  %item.0.i = phi ptr [ null, %if.end.configfs_get_config_item.exit_crit_edge ], [ %call1.i, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #6
  %ci_type = getelementptr inbounds %struct.config_item, ptr %item.0.i, i32 0, i32 6
  %15 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ci_type, align 4
  %tobool3.not = icmp eq ptr %16, null
  br i1 %tobool3.not, label %configfs_get_config_item.exit.out_put_crit_edge, label %lor.lhs.false

configfs_get_config_item.exit.out_put_crit_edge:  ; preds = %configfs_get_config_item.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put

lor.lhs.false:                                    ; preds = %configfs_get_config_item.exit
  %ct_item_ops = getelementptr inbounds %struct.config_item_type, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ct_item_ops, align 4
  %tobool4.not = icmp eq ptr %18, null
  br i1 %tobool4.not, label %lor.lhs.false.out_put_crit_edge, label %lor.lhs.false5

lor.lhs.false.out_put_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %allow_link = getelementptr inbounds %struct.configfs_item_operations, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %allow_link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %allow_link, align 4
  %tobool7.not = icmp eq ptr %20, null
  br i1 %tobool7.not, label %lor.lhs.false5.out_put_crit_edge, label %if.end9

lor.lhs.false5.out_put_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put

if.end9:                                          ; preds = %lor.lhs.false5
  %i_rwsem.i = getelementptr inbounds %struct.inode, ptr %dir, i32 0, i32 25
  tail call void @up_write(ptr noundef %i_rwsem.i) #6
  %d_sb = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %21 = ptrtoint ptr %d_sb to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %d_sb, align 4
  %call.i = call i32 @kern_path(ptr noundef %symname, i32 noundef 3, ptr noundef nonnull %path) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i65, label %if.end9.get_target.exit.thread_crit_edge

if.end9.get_target.exit.thread_crit_edge:         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_target.exit.thread

if.then.i65:                                      ; preds = %if.end9
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 9
  %25 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_sb.i, align 4
  %cmp.i = icmp eq ptr %26, %22
  br i1 %cmp.i, label %if.then1.i, label %if.then.i65.if.end7.sink.split.i_crit_edge

if.then.i65.if.end7.sink.split.i_crit_edge:       ; preds = %if.then.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.sink.split.i

if.then1.i:                                       ; preds = %if.then.i65
  %d_lockref.i.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 7
  call void @_raw_spin_lock(ptr noundef %d_lockref.i.i) #6
  %pprev.i.i.i.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %pprev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pprev.i.i.i.i, align 4
  %tobool.not.i.i.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.not.i.i, label %configfs_get_config_item.exit.thread.i, label %configfs_get_config_item.exit.i

configfs_get_config_item.exit.thread.i:           ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #6
  br label %if.end7.sink.split.i

configfs_get_config_item.exit.i:                  ; preds = %if.then1.i
  %d_fsdata.i.i = getelementptr inbounds %struct.dentry, ptr %24, i32 0, i32 11
  %29 = ptrtoint ptr %d_fsdata.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %d_fsdata.i.i, align 4
  %s_element.i.i = getelementptr inbounds %struct.configfs_dirent, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %s_element.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_element.i.i, align 4
  %call1.i.i = call ptr @config_item_get(ptr noundef %32) #6
  call void @_raw_spin_unlock(ptr noundef %d_lockref.i.i) #6
  %tobool4.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool4.not.i, label %configfs_get_config_item.exit.i.if.end7.sink.split.i_crit_edge, label %if.end13

configfs_get_config_item.exit.i.if.end7.sink.split.i_crit_edge: ; preds = %configfs_get_config_item.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.sink.split.i

if.end7.sink.split.i:                             ; preds = %configfs_get_config_item.exit.i.if.end7.sink.split.i_crit_edge, %configfs_get_config_item.exit.thread.i, %if.then.i65.if.end7.sink.split.i_crit_edge
  %ret.0.ph.i = phi i32 [ -2, %configfs_get_config_item.exit.thread.i ], [ -2, %configfs_get_config_item.exit.i.if.end7.sink.split.i_crit_edge ], [ -1, %if.then.i65.if.end7.sink.split.i_crit_edge ]
  call void @path_put(ptr noundef nonnull %path) #6
  br label %get_target.exit.thread

get_target.exit.thread:                           ; preds = %if.end7.sink.split.i, %if.end9.get_target.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %ret.0.ph.i, %if.end7.sink.split.i ], [ %call.i, %if.end9.get_target.exit.thread_crit_edge ]
  call void @down_write(ptr noundef %i_rwsem.i) #6
  br label %out_put

if.end13:                                         ; preds = %configfs_get_config_item.exit.i
  call void @down_write(ptr noundef %i_rwsem.i) #6
  %d_inode = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 5
  %33 = ptrtoint ptr %d_inode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %d_inode, align 8
  %tobool14.not = icmp eq ptr %34, null
  br i1 %tobool14.not, label %lor.lhs.false15, label %if.end13.if.end37_crit_edge

if.end13.if.end37_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

lor.lhs.false15:                                  ; preds = %if.end13
  %pprev.i.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.not, label %lor.lhs.false15.if.end37_crit_edge, label %if.end20

lor.lhs.false15.if.end37_crit_edge:               ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end20:                                         ; preds = %lor.lhs.false15
  %call19 = call i32 @inode_permission(ptr noundef nonnull @init_user_ns, ptr noundef %dir, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %if.end26, label %if.end20.if.end37_crit_edge

if.end20.if.end37_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end26:                                         ; preds = %if.end20
  %37 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ct_item_ops, align 4
  %allow_link24 = getelementptr inbounds %struct.configfs_item_operations, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %allow_link24 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %allow_link24, align 4
  %call25 = call i32 %40(ptr noundef %item.0.i, ptr noundef nonnull %call1.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool27.not = icmp eq i32 %call25, 0
  br i1 %tobool27.not, label %if.then28, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then28:                                        ; preds = %if.end26
  call void @mutex_lock_nested(ptr noundef nonnull @configfs_symlink_mutex, i32 noundef 0) #6
  %ci_dentry.i = getelementptr inbounds %struct.config_item, ptr %call1.i.i, i32 0, i32 7
  %41 = ptrtoint ptr %ci_dentry.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ci_dentry.i, align 4
  %d_fsdata.i67 = getelementptr inbounds %struct.dentry, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %d_fsdata.i67 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d_fsdata.i67, align 4
  %call.i68 = call i32 @configfs_dirent_is_ready(ptr noundef %44) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %if.then28.land.lhs.true_crit_edge, label %if.end.i

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end.i:                                         ; preds = %if.then28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 4096) #9
  %tobool2.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.land.lhs.true_crit_edge, label %if.end4.i

if.end.i.land.lhs.true_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end4.i:                                        ; preds = %if.end.i
  %tobool.not.i.i70 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i70, label %if.end4.i.configfs_get.exit.i_crit_edge, label %if.then.i.i

if.end4.i.configfs_get.exit.i_crit_edge:          ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %configfs_get.exit.i

if.then.i.i:                                      ; preds = %if.end4.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %44, i32 noundef 4) #6
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool1.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !31

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %call.i.i1.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %44, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr nonnull %44, i32 1, i32 3, i32 1) #6
  %48 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %44, ptr nonnull %44, i32 1, ptr nonnull elementtype(i32) %44) #6, !srcloc !32
  br label %configfs_get.exit.i

configfs_get.exit.i:                              ; preds = %if.end.i.i, %if.end4.i.configfs_get.exit.i_crit_edge
  call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #6
  %s_type.i = getelementptr inbounds %struct.configfs_dirent, ptr %44, i32 0, i32 6
  %49 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %s_type.i, align 4
  %and.i = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %configfs_get.exit.i
  call void @_raw_spin_unlock(ptr noundef nonnull @configfs_dirent_lock) #6
  %call.i.i.i36.i = call zeroext i1 @__kasan_check_read(ptr noundef %44, i32 noundef 4) #6
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i37.i = icmp eq i32 %52, 0
  br i1 %tobool.not.i37.i, label %do.end.i38.i, label %if.then7.i.if.end.i39.i_crit_edge, !prof !31

if.then7.i.if.end.i39.i_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i39.i

do.end.i38.i:                                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i39.i

if.end.i39.i:                                     ; preds = %do.end.i38.i, %if.then7.i.if.end.i39.i_crit_edge
  %call.i.i28.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #6
  %53 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %53, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.then23.i.i, label %if.end.i39.i.cleanup.sink.split.i_crit_edge

if.end.i39.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then23.i.i:                                    ; preds = %if.end.i39.i
  %54 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %s_type.i, align 4
  %and.i.i.i = and i32 %55, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then23.i.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.then23.i.i.cleanup.sink.split.i_crit_edge

if.then23.i.i.cleanup.sink.split.i_crit_edge:     ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then23.i.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.then23.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split.i

if.end8.i:                                        ; preds = %configfs_get.exit.i
  %s_links.i = getelementptr inbounds %struct.configfs_dirent, ptr %44, i32 0, i32 4
  %56 = ptrtoint ptr %s_links.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %s_links.i, align 4
  %inc.i = add i32 %57, 1
  store i32 %inc.i, ptr %s_links.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @configfs_dirent_lock) #6
  %call9.i = call fastcc i32 @configfs_get_target_path(ptr noundef %item.0.i, ptr noundef nonnull %call1.i.i, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end14.i, label %if.end8.i.if.then16.i_crit_edge

if.end8.i.if.then16.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

if.end14.i:                                       ; preds = %if.end8.i
  %ci_dentry12.i = getelementptr inbounds %struct.config_item, ptr %item.0.i, i32 0, i32 7
  %58 = ptrtoint ptr %ci_dentry12.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ci_dentry12.i, align 4
  %call13.i = call i32 @configfs_create_link(ptr noundef %44, ptr noundef %59, ptr noundef %dentry, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool15.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool15.not.i, label %create_link.exit, label %if.end14.i.if.then16.i_crit_edge

if.end14.i.if.then16.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.i

if.then16.i:                                      ; preds = %if.end14.i.if.then16.i_crit_edge, %if.end8.i.if.then16.i_crit_edge
  %ret.057.i = phi i32 [ %call13.i, %if.end14.i.if.then16.i_crit_edge ], [ %call9.i, %if.end8.i.if.then16.i_crit_edge ]
  call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #6
  %60 = ptrtoint ptr %s_links.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %s_links.i, align 4
  %dec.i = add i32 %61, -1
  store i32 %dec.i, ptr %s_links.i, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @configfs_dirent_lock) #6
  %call.i.i.i40.i = call zeroext i1 @__kasan_check_read(ptr noundef %44, i32 noundef 4) #6
  %62 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i41.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i41.i, label %do.end.i42.i, label %if.then16.i.if.end.i46.i_crit_edge, !prof !31

if.then16.i.if.end.i46.i_crit_edge:               ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i46.i

do.end.i42.i:                                     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i46.i

if.end.i46.i:                                     ; preds = %do.end.i42.i, %if.then16.i.if.end.i46.i_crit_edge
  %call.i.i28.i43.i = call zeroext i1 @__kasan_check_write(ptr noundef %44, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  call void @llvm.prefetch.p0(ptr %44, i32 1, i32 3, i32 1) #6
  %64 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %44, ptr %44, i32 1, ptr elementtype(i32) %44) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i44.i = extractvalue { i32, i32 } %64, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i44.i)
  %cmp.i.i.i45.i = icmp eq i32 %asmresult.i.i.i.i.i.i44.i, 0
  br i1 %cmp.i.i.i45.i, label %if.then23.i50.i, label %if.end.i46.i.cleanup.sink.split.i_crit_edge

if.end.i46.i.cleanup.sink.split.i_crit_edge:      ; preds = %if.end.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then23.i50.i:                                  ; preds = %if.end.i46.i
  %65 = ptrtoint ptr %s_type.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %s_type.i, align 4
  %and.i.i48.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48.i)
  %tobool.not.i.i49.i = icmp eq i32 %and.i.i48.i, 0
  br i1 %tobool.not.i.i49.i, label %if.then23.i50.i.cleanup.sink.split.sink.split.i_crit_edge, label %if.then23.i50.i.cleanup.sink.split.i_crit_edge

if.then23.i50.i.cleanup.sink.split.i_crit_edge:   ; preds = %if.then23.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.then23.i50.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.then23.i50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %if.then23.i50.i.cleanup.sink.split.sink.split.i_crit_edge, %if.then23.i.i.cleanup.sink.split.sink.split.i_crit_edge
  %retval.0.ph.ph.i = phi i32 [ -2, %if.then23.i.i.cleanup.sink.split.sink.split.i_crit_edge ], [ %ret.057.i, %if.then23.i50.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %s_iattr.i.i51.i = getelementptr inbounds %struct.configfs_dirent, ptr %44, i32 0, i32 9
  %67 = ptrtoint ptr %s_iattr.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %s_iattr.i.i51.i, align 4
  call void @kfree(ptr noundef %68) #6
  %s_frag.i.i52.i = getelementptr inbounds %struct.configfs_dirent, ptr %44, i32 0, i32 11
  %69 = ptrtoint ptr %s_frag.i.i52.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %s_frag.i.i52.i, align 4
  call void @put_fragment(ptr noundef %70) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @configfs_dir_cachep to i32))
  %71 = load ptr, ptr @configfs_dir_cachep, align 4
  call void @kmem_cache_free(ptr noundef %71, ptr noundef %44) #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %cleanup.sink.split.sink.split.i, %if.then23.i50.i.cleanup.sink.split.i_crit_edge, %if.end.i46.i.cleanup.sink.split.i_crit_edge, %if.then23.i.i.cleanup.sink.split.i_crit_edge, %if.end.i39.i.cleanup.sink.split.i_crit_edge
  %retval.0.ph.i = phi i32 [ -2, %if.end.i39.i.cleanup.sink.split.i_crit_edge ], [ -2, %if.then23.i.i.cleanup.sink.split.i_crit_edge ], [ %ret.057.i, %if.end.i46.i.cleanup.sink.split.i_crit_edge ], [ %ret.057.i, %if.then23.i50.i.cleanup.sink.split.i_crit_edge ], [ %retval.0.ph.ph.i, %cleanup.sink.split.sink.split.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %land.lhs.true

create_link.exit:                                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef nonnull @configfs_symlink_mutex) #6
  br label %if.end37

land.lhs.true:                                    ; preds = %cleanup.sink.split.i, %if.end.i.land.lhs.true_crit_edge, %if.then28.land.lhs.true_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -12, %if.end.i.land.lhs.true_crit_edge ], [ -2, %if.then28.land.lhs.true_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @configfs_symlink_mutex) #6
  %72 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ct_item_ops, align 4
  %drop_link = getelementptr inbounds %struct.configfs_item_operations, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %drop_link to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %drop_link, align 4
  %tobool32.not = icmp eq ptr %75, null
  br i1 %tobool32.not, label %land.lhs.true.if.end37_crit_edge, label %if.then33

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  call void %75(ptr noundef %item.0.i, ptr noundef nonnull %call1.i.i) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %land.lhs.true.if.end37_crit_edge, %create_link.exit, %if.end26.if.end37_crit_edge, %if.end20.if.end37_crit_edge, %lor.lhs.false15.if.end37_crit_edge, %if.end13.if.end37_crit_edge
  %ret.2 = phi i32 [ %call25, %if.end26.if.end37_crit_edge ], [ %retval.0.i.ph, %if.then33 ], [ %retval.0.i.ph, %land.lhs.true.if.end37_crit_edge ], [ 0, %create_link.exit ], [ %call19, %if.end20.if.end37_crit_edge ], [ -17, %lor.lhs.false15.if.end37_crit_edge ], [ -17, %if.end13.if.end37_crit_edge ]
  call void @config_item_put(ptr noundef nonnull %call1.i.i) #6
  call void @path_put(ptr noundef nonnull %path) #6
  br label %out_put

out_put:                                          ; preds = %if.end37, %get_target.exit.thread, %lor.lhs.false5.out_put_crit_edge, %lor.lhs.false.out_put_crit_edge, %configfs_get_config_item.exit.out_put_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.end37 ], [ -1, %lor.lhs.false5.out_put_crit_edge ], [ -1, %lor.lhs.false.out_put_crit_edge ], [ -1, %configfs_get_config_item.exit.out_put_crit_edge ], [ %ret.0.i.ph, %get_target.exit.thread ]
  call void @config_item_put(ptr noundef %item.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %out_put, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %out_put ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_dirent_is_ready(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inode_permission(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @configfs_unlink(ptr nocapture noundef readnone %dir, ptr noundef %dentry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %d_fsdata = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 11
  %0 = ptrtoint ptr %d_fsdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d_fsdata, align 4
  %s_type = getelementptr inbounds %struct.configfs_dirent, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s_type, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %s_element = getelementptr inbounds %struct.configfs_dirent, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %s_element to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_element, align 4
  %d_parent = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 3
  %6 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_parent, align 8
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %d_lockref.i) #6
  %pprev.i.i.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.not.i, label %if.end.configfs_get_config_item.exit_crit_edge, label %if.then.i

if.end.configfs_get_config_item.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %configfs_get_config_item.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %d_fsdata.i = getelementptr inbounds %struct.dentry, ptr %7, i32 0, i32 11
  %10 = ptrtoint ptr %d_fsdata.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %d_fsdata.i, align 4
  %s_element.i = getelementptr inbounds %struct.configfs_dirent, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %s_element.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %s_element.i, align 4
  %call1.i = tail call ptr @config_item_get(ptr noundef %13) #6
  br label %configfs_get_config_item.exit

configfs_get_config_item.exit:                    ; preds = %if.then.i, %if.end.configfs_get_config_item.exit_crit_edge
  %item.0.i = phi ptr [ null, %if.end.configfs_get_config_item.exit_crit_edge ], [ %call1.i, %if.then.i ]
  tail call void @_raw_spin_unlock(ptr noundef %d_lockref.i) #6
  %ci_type = getelementptr inbounds %struct.config_item, ptr %item.0.i, i32 0, i32 6
  %14 = ptrtoint ptr %ci_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ci_type, align 4
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #6
  %s_sibling = getelementptr inbounds %struct.configfs_dirent, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %s_sibling) #6
  br i1 %call.i.i, label %if.end.i.i, label %configfs_get_config_item.exit.list_del_init.exit_crit_edge

configfs_get_config_item.exit.list_del_init.exit_crit_edge: ; preds = %configfs_get_config_item.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %configfs_get_config_item.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.configfs_dirent, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %s_sibling to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_sibling, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %configfs_get_config_item.exit.list_del_init.exit_crit_edge
  %22 = ptrtoint ptr %s_sibling to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %s_sibling, ptr %s_sibling, align 4
  %prev.i3.i = getelementptr inbounds %struct.configfs_dirent, ptr %1, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %s_sibling, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @configfs_dirent_lock) #6
  %24 = ptrtoint ptr %d_parent to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d_parent, align 8
  tail call void @configfs_drop_dentry(ptr noundef %1, ptr noundef %25) #6
  tail call void @dput(ptr noundef %dentry) #6
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %1, i32 noundef 4) #6
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %do.end.i, label %list_del_init.exit.if.end.i_crit_edge, !prof !31

list_del_init.exit.if.end.i_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_del_init.exit.if.end.i_crit_edge
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %1, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %1, i32 1, i32 3, i32 1) #6
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %28, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then23.i, label %if.end.i.configfs_put.exit_crit_edge

if.end.i.configfs_put.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %configfs_put.exit

if.then23.i:                                      ; preds = %if.end.i
  %29 = ptrtoint ptr %s_type to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %s_type, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then23.i.configfs_put.exit_crit_edge

if.then23.i.configfs_put.exit_crit_edge:          ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %configfs_put.exit

if.then.i.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #8
  %s_iattr.i.i = getelementptr inbounds %struct.configfs_dirent, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %s_iattr.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %s_iattr.i.i, align 4
  tail call void @kfree(ptr noundef %32) #6
  %s_frag.i.i = getelementptr inbounds %struct.configfs_dirent, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %s_frag.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %s_frag.i.i, align 4
  tail call void @put_fragment(ptr noundef %34) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @configfs_dir_cachep to i32))
  %35 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %35, ptr noundef %1) #6
  br label %configfs_put.exit

configfs_put.exit:                                ; preds = %if.then.i.i, %if.then23.i.configfs_put.exit_crit_edge, %if.end.i.configfs_put.exit_crit_edge
  %tobool2.not = icmp eq ptr %15, null
  br i1 %tobool2.not, label %configfs_put.exit.if.end11_crit_edge, label %land.lhs.true

configfs_put.exit.if.end11_crit_edge:             ; preds = %configfs_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true:                                    ; preds = %configfs_put.exit
  %ct_item_ops = getelementptr inbounds %struct.config_item_type, ptr %15, i32 0, i32 1
  %36 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ct_item_ops, align 4
  %tobool3.not = icmp eq ptr %37, null
  br i1 %tobool3.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true4

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

land.lhs.true4:                                   ; preds = %land.lhs.true
  %drop_link = getelementptr inbounds %struct.configfs_item_operations, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %drop_link to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drop_link, align 4
  %tobool6.not = icmp eq ptr %39, null
  br i1 %tobool6.not, label %land.lhs.true4.if.end11_crit_edge, label %if.then7

land.lhs.true4.if.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  %s_element10 = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 5
  %40 = ptrtoint ptr %s_element10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %s_element10, align 4
  tail call void %39(ptr noundef %item.0.i, ptr noundef %41) #6
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true4.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %configfs_put.exit.if.end11_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @configfs_dirent_lock) #6
  %s_links = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 4
  %42 = ptrtoint ptr %s_links to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %s_links, align 4
  %dec = add i32 %43, -1
  store i32 %dec, ptr %s_links, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @configfs_dirent_lock) #6
  %call.i.i.i28 = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #6
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i29 = icmp eq i32 %45, 0
  br i1 %tobool.not.i29, label %do.end.i30, label %if.end11.if.end.i34_crit_edge, !prof !31

if.end11.if.end.i34_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i34

do.end.i30:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 155, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i34

if.end.i34:                                       ; preds = %do.end.i30, %if.end11.if.end.i34_crit_edge
  %call.i.i28.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %5, i32 1, i32 3, i32 1) #6
  %46 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #6, !srcloc !34
  %asmresult.i.i.i.i.i.i32 = extractvalue { i32, i32 } %46, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i32)
  %cmp.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i32, 0
  br i1 %cmp.i.i.i33, label %if.then23.i38, label %if.end.i34.configfs_put.exit42_crit_edge

if.end.i34.configfs_put.exit42_crit_edge:         ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %configfs_put.exit42

if.then23.i38:                                    ; preds = %if.end.i34
  %s_type.i.i35 = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 6
  %47 = ptrtoint ptr %s_type.i.i35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %s_type.i.i35, align 4
  %and.i.i36 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i36)
  %tobool.not.i.i37 = icmp eq i32 %and.i.i36, 0
  br i1 %tobool.not.i.i37, label %if.then.i.i41, label %if.then23.i38.configfs_put.exit42_crit_edge

if.then23.i38.configfs_put.exit42_crit_edge:      ; preds = %if.then23.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %configfs_put.exit42

if.then.i.i41:                                    ; preds = %if.then23.i38
  call void @__sanitizer_cov_trace_pc() #8
  %s_iattr.i.i39 = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 9
  %49 = ptrtoint ptr %s_iattr.i.i39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_iattr.i.i39, align 4
  tail call void @kfree(ptr noundef %50) #6
  %s_frag.i.i40 = getelementptr inbounds %struct.configfs_dirent, ptr %5, i32 0, i32 11
  %51 = ptrtoint ptr %s_frag.i.i40 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %s_frag.i.i40, align 4
  tail call void @put_fragment(ptr noundef %52) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @configfs_dir_cachep to i32))
  %53 = load ptr, ptr @configfs_dir_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %53, ptr noundef %5) #6
  br label %configfs_put.exit42

configfs_put.exit42:                              ; preds = %if.then.i.i41, %if.then23.i38.configfs_put.exit42_crit_edge, %if.end.i34.configfs_put.exit42_crit_edge
  tail call void @config_item_put(ptr noundef %item.0.i) #6
  br label %out

out:                                              ; preds = %configfs_put.exit42, %entry.out_crit_edge
  %ret.0 = phi i32 [ 0, %configfs_put.exit42 ], [ -1, %entry.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_drop_dentry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @simple_get_link(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_setattr(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @config_item_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kern_path(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @configfs_get_target_path(ptr nocapture noundef readonly %item, ptr noundef %target, ptr noundef %path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %entry
  %p.0.i = phi ptr [ %item, %entry ], [ %1, %land.rhs.i.do.body.i_crit_edge ]
  %depth.0.i = phi i32 [ 0, %entry ], [ %inc.i, %land.rhs.i.do.body.i_crit_edge ]
  %inc.i = add i32 %depth.0.i, 1
  %ci_parent.i = getelementptr inbounds %struct.config_item, ptr %p.0.i, i32 0, i32 4
  %0 = ptrtoint ptr %ci_parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.body.i.do.body.i41.preheader_crit_edge, label %land.rhs.i

do.body.i.do.body.i41.preheader_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i41.preheader

land.rhs.i:                                       ; preds = %do.body.i
  %call.i = tail call i32 @configfs_is_root(ptr noundef nonnull %1) #6
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.do.body.i41.preheader_crit_edge

land.rhs.i.do.body.i41.preheader_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i41.preheader

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i41.preheader:                            ; preds = %land.rhs.i.do.body.i41.preheader_crit_edge, %do.body.i.do.body.i41.preheader_crit_edge
  br label %do.body.i41

do.body.i41:                                      ; preds = %land.rhs.i42.do.body.i41_crit_edge, %do.body.i41.preheader
  %p.0.i38 = phi ptr [ %5, %land.rhs.i42.do.body.i41_crit_edge ], [ %target, %do.body.i41.preheader ]
  %length.0.i = phi i32 [ %add2.i, %land.rhs.i42.do.body.i41_crit_edge ], [ 1, %do.body.i41.preheader ]
  %2 = ptrtoint ptr %p.0.i38 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p.0.i38, align 4
  %call1.i = tail call i32 @strlen(ptr noundef %3) #10
  %add.i = add i32 %length.0.i, 1
  %add2.i = add i32 %add.i, %call1.i
  %ci_parent.i39 = getelementptr inbounds %struct.config_item, ptr %p.0.i38, i32 0, i32 4
  %4 = ptrtoint ptr %ci_parent.i39 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ci_parent.i39, align 4
  %tobool.not.i40 = icmp eq ptr %5, null
  br i1 %tobool.not.i40, label %do.body.i41.item_path_length.exit_crit_edge, label %land.rhs.i42

do.body.i41.item_path_length.exit_crit_edge:      ; preds = %do.body.i41
  call void @__sanitizer_cov_trace_pc() #8
  br label %item_path_length.exit

land.rhs.i42:                                     ; preds = %do.body.i41
  %call3.i = tail call i32 @configfs_is_root(ptr noundef nonnull %5) #6
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.rhs.i42.do.body.i41_crit_edge, label %land.rhs.i42.item_path_length.exit_crit_edge

land.rhs.i42.item_path_length.exit_crit_edge:     ; preds = %land.rhs.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %item_path_length.exit

land.rhs.i42.do.body.i41_crit_edge:               ; preds = %land.rhs.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i41

item_path_length.exit:                            ; preds = %land.rhs.i42.item_path_length.exit_crit_edge, %do.body.i41.item_path_length.exit_crit_edge
  %mul = mul i32 %inc.i, 3
  %add = add i32 %add2.i, %mul
  %sub = add i32 %add, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp = icmp sgt i32 %sub, 4096
  br i1 %cmp, label %item_path_length.exit.cleanup_crit_edge, label %do.body

item_path_length.exit.cleanup_crit_edge:          ; preds = %item_path_length.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %item_path_length.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configfs_get_target_path.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configfs_get_target_path, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !36

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @configfs_get_target_path.__UNIQUE_ID_ddebug215, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, i32 noundef %inc.i, i32 noundef %sub) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool7.not51 = icmp eq i32 %inc.i, 0
  br i1 %tobool7.not51, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %depth.053 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %inc.i, %do.end.for.body_crit_edge ]
  %s.052 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %path, %do.end.for.body_crit_edge ]
  %dec = add i32 %depth.053, -1
  %6 = ptrtoint ptr %s.052 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 774778624, ptr %s.052, align 1
  %add.ptr = getelementptr i8, ptr %s.052, i32 3
  %tobool7.not = icmp eq i32 %dec, 0
  br i1 %tobool7.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %tobool.not16.i = icmp eq ptr %target, null
  br i1 %tobool.not16.i, label %for.end.fill_item_path.exit_crit_edge, label %land.rhs.preheader.i

for.end.fill_item_path.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fill_item_path.exit

land.rhs.preheader.i:                             ; preds = %for.end
  %dec.i = add i32 %add, -2
  br label %land.rhs.i45

land.rhs.i45:                                     ; preds = %for.body.i.land.rhs.i45_crit_edge, %land.rhs.preheader.i
  %length.addr.018.i = phi i32 [ %dec5.i, %for.body.i.land.rhs.i45_crit_edge ], [ %dec.i, %land.rhs.preheader.i ]
  %p.017.i = phi ptr [ %12, %for.body.i.land.rhs.i45_crit_edge ], [ %target, %land.rhs.preheader.i ]
  %call.i43 = tail call i32 @configfs_is_root(ptr noundef nonnull %p.017.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool1.not.i44 = icmp eq i32 %call.i43, 0
  br i1 %tobool1.not.i44, label %for.body.i, label %land.rhs.i45.fill_item_path.exit_crit_edge

land.rhs.i45.fill_item_path.exit_crit_edge:       ; preds = %land.rhs.i45
  call void @__sanitizer_cov_trace_pc() #8
  br label %fill_item_path.exit

for.body.i:                                       ; preds = %land.rhs.i45
  %7 = ptrtoint ptr %p.017.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p.017.i, align 4
  %call3.i46 = tail call i32 @strlen(ptr noundef %8) #10
  %sub.i = sub i32 %length.addr.018.i, %call3.i46
  %add.ptr.i = getelementptr i8, ptr %path, i32 %sub.i
  %9 = call ptr @memcpy(ptr %add.ptr.i, ptr %8, i32 %call3.i46)
  %dec5.i = add i32 %sub.i, -1
  %add.ptr6.i = getelementptr i8, ptr %path, i32 %dec5.i
  %10 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 47, ptr %add.ptr6.i, align 1
  %ci_parent.i47 = getelementptr inbounds %struct.config_item, ptr %p.017.i, i32 0, i32 4
  %11 = ptrtoint ptr %ci_parent.i47 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_parent.i47, align 4
  %tobool.not.i48 = icmp eq ptr %12, null
  br i1 %tobool.not.i48, label %for.body.i.fill_item_path.exit_crit_edge, label %for.body.i.land.rhs.i45_crit_edge

for.body.i.land.rhs.i45_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i45

for.body.i.fill_item_path.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fill_item_path.exit

fill_item_path.exit:                              ; preds = %for.body.i.fill_item_path.exit_crit_edge, %land.rhs.i45.fill_item_path.exit_crit_edge, %for.end.fill_item_path.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @configfs_get_target_path.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@configfs_get_target_path, %if.then21)) #6
          to label %cleanup [label %if.then21], !srcloc !36

if.then21:                                        ; preds = %fill_item_path.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @configfs_get_target_path.__UNIQUE_ID_ddebug216, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef %path) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %fill_item_path.exit, %item_path_length.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -36, %item_path_length.exit.cleanup_crit_edge ], [ 0, %if.then21 ], [ 0, %fill_item_path.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_create_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_is_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_fragment(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !11, !12, !13, !14, !15, !17, !19, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/configfs/symlink.c", i32 20, i32 1}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @configfs_symlink_mutex, !1, !"configfs_symlink_mutex", i1 false, i1 false}
!4 = !{ptr @configfs_symlink_inode_operations, !5, !"configfs_symlink_inode_operations", i1 false, i1 false}
!5 = !{!"../fs/configfs/symlink.c", i32 266, i32 31}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/configfs/configfs_internal.h", i32 147, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/configfs/symlink.c", i32 67, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @configfs_get_target_path.__UNIQUE_ID_ddebug215, !9, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!14 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/configfs/symlink.c", i32 70, i32 12}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/configfs/symlink.c", i32 73, i32 2}
!19 = !{ptr @configfs_get_target_path.__UNIQUE_ID_ddebug216, !18, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!20 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2148657197, i64 2148657223, i64 2148657252, i64 2148657286, i64 2148657317, i64 2148657340}
!33 = !{i64 2148745673}
!34 = !{i64 2148660382, i64 2148660414, i64 2148660443, i64 2148660477, i64 2148660508, i64 2148660531}
!35 = !{i64 2148745902}
!36 = !{i64 2148481795, i64 2148481800, i64 2148481813, i64 2148481857, i64 2148481891, i64 2148481912}
