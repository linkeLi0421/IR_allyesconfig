; ModuleID = '/llk/IR_all_yes/fs/9p/vfs_super.c_pt.bc'
source_filename = "../fs/9p/vfs_super.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.super_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.atomic_t = type { i32 }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v9fs_session_info = type { i8, i8, i16, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, ptr, %struct.list_head, %struct.rw_semaphore, i32 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.backing_dev_info = type { i64, %struct.rb_node, %struct.list_head, i32, i32, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.bdi_writeback, %struct.list_head, %struct.xarray, %struct.mutex, %struct.rw_semaphore, %struct.wait_queue_head, ptr, [64 x i8], ptr, %struct.timer_list, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.bdi_writeback = type { ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.atomic_t, [4 x %struct.percpu_counter], i32, i32, i32, i32, i32, i32, i32, i32, %struct.fprop_local_percpu, i32, i32, %struct.spinlock, %struct.list_head, %struct.delayed_work, %struct.delayed_work, i32, %struct.list_head, %struct.percpu_ref, %struct.fprop_local_percpu, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.fprop_local_percpu = type { %struct.percpu_counter, i32, %struct.raw_spinlock }
%union.anon.65 = type { %struct.work_struct }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.p9_stat_dotl = type { i64, %struct.p9_qid, i32, %struct.kuid_t, %struct.kgid_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.p9_qid = type { i8, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.105, %struct.list_head, %struct.list_head, %union.anon.106 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.2, ptr }
%union.anon.2 = type { i64 }
%struct.lockref = type { %union.anon.103 }
%union.anon.103 = type { %struct.anon.104 }
%struct.anon.104 = type { %struct.spinlock, i32 }
%union.anon.105 = type { %struct.list_head }
%union.anon.106 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.100 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.102 = type { ptr }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.writeback_control = type { i32, i32, i64, i64, i32, i16, ptr, ptr, i32, i32, i32, i32, i32, i32 }
%struct.p9_rstatfs = type { i32, i32, i64, i64, i64, i64, i64, i64, i32 }
%struct.kstatfs = type { i32, i32, i64, i64, i64, i64, i64, %struct.__kernel_fsid_t, i32, i32, i32, [4 x i32] }
%struct.__kernel_fsid_t = type { [2 x i32] }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9p\00", [29 x i8] zeroinitializer }, align 32
@v9fs_fs_type = dso_local global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str, i32 32768, ptr null, ptr null, ptr @v9fs_mount, ptr @v9fs_kill_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_alias308 = internal constant [15 x i8] c"9p.alias=fs-9p\00", section ".modinfo", align 1
@__func__.v9fs_mount = private unnamed_addr constant [11 x i8] c"v9fs_mount\00", align 1
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@v9fs_cached_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@v9fs_dentry_operations = external dso_local constant %struct.dentry_operations, align 128
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" simple set mount, return 0\0A\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@v9fs_super_ops_dotl = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @v9fs_alloc_inode, ptr null, ptr @v9fs_free_inode, ptr null, ptr @v9fs_write_inode_dotl, ptr @v9fs_drop_inode, ptr @v9fs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v9fs_statfs, ptr null, ptr @v9fs_umount_begin, ptr @v9fs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@v9fs_xattr_handlers = external dso_local global [0 x ptr], align 4
@v9fs_super_ops = internal constant { %struct.super_operations, [60 x i8] } { %struct.super_operations { ptr @v9fs_alloc_inode, ptr null, ptr @v9fs_free_inode, ptr null, ptr @v9fs_write_inode, ptr null, ptr @v9fs_evict_inode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @simple_statfs, ptr null, ptr @v9fs_umount_begin, ptr @v9fs_show_options, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__func__.v9fs_write_inode_dotl = private unnamed_addr constant [22 x i8] c"v9fs_write_inode_dotl\00", align 1
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: inode %p, writeback_fid %p\0A\00", [32 x i8] zeroinitializer }, align 32
@__func__.v9fs_write_inode = private unnamed_addr constant [17 x i8] c"v9fs_write_inode\00", align 1
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: inode %p\0A\00", [18 x i8] zeroinitializer }, align 32
@__func__.v9fs_kill_super = private unnamed_addr constant [16 x i8] c"v9fs_kill_super\00", align 1
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" %p\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"exiting kill_super\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 363, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant [13 x i8] c"v9fs_fs_type\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 362, i32 25 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 120, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 189, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"v9fs_super_ops_dotl\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 351, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"v9fs_super_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 341, i32 38 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 327, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 302, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 221, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [21 x i8] c"../fs/9p/vfs_super.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 229, i32 2 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias308, ptr @.str, ptr @v9fs_fs_type, ptr @.str.1, ptr @.str.2, ptr @v9fs_super_ops_dotl, ptr @v9fs_super_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_fs_type to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_super_ops_dotl to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v9fs_super_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @v9fs_mount(ptr noundef %fs_type, i32 noundef %flags, ptr noundef %dev_name, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_mount, ptr noundef nonnull @.str.1) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 156) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup69_crit_edge, label %if.end

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @v9fs_session_init(ptr noundef nonnull %call7.i.i, ptr noundef %dev_name, ptr noundef %data) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.free_session_crit_edge, label %if.end7

if.end.free_session_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_session

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @sget(ptr noundef %fs_type, ptr noundef null, ptr noundef nonnull @v9fs_set_super, i32 noundef %flags, ptr noundef nonnull %call7.i.i) #6
  %cmp.i127 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call i32 @p9_client_clunk(ptr noundef %call3) #6
  tail call void @v9fs_session_close(ptr noundef nonnull %call7.i.i) #6
  br label %free_session

if.end12:                                         ; preds = %if.end7
  %s_maxbytes.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 4
  %1 = ptrtoint ptr %s_maxbytes.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 17592186040320, ptr %s_maxbytes.i, align 8
  %maxdata.i = getelementptr inbounds %struct.v9fs_session_info, ptr %call7.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %maxdata.i, align 4
  %sub.i = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i.i = icmp eq i32 %sub.i, 0
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #6, !range !35
  %sub.i.i = sub nuw nsw i32 32, %4
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %conv.i = trunc i32 %cond.i.i to i8
  %s_blocksize_bits.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 2
  %5 = ptrtoint ptr %s_blocksize_bits.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %s_blocksize_bits.i, align 4
  %shl.i = shl nuw i32 1, %cond.i.i
  %s_blocksize.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 3
  %6 = ptrtoint ptr %s_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl.i, ptr %s_blocksize.i, align 16
  %s_magic.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 12
  %7 = ptrtoint ptr %s_magic.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16914839, ptr %s_magic.i, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7.i.i, align 8
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %s_xattr.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 18
  %11 = ptrtoint ptr %s_xattr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @v9fs_xattr_handlers, ptr %s_xattr.i, align 16
  br label %if.end.i

if.else.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %s_time_max.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 36
  %12 = ptrtoint ptr %s_time_max.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 4294967295, ptr %s_time_max.i, align 64
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %v9fs_super_ops_dotl.sink.i = phi ptr [ @v9fs_super_ops, %if.else.i ], [ @v9fs_super_ops_dotl, %if.then.i ]
  %13 = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 6
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %v9fs_super_ops_dotl.sink.i, ptr %13, align 4
  %s_time_min.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 35
  %15 = ptrtoint ptr %s_time_min.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %s_time_min.i, align 8
  %call5.i = tail call i32 @super_setup_bdi(ptr noundef %call8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.release_sb_crit_edge

if.end.i.release_sb_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_sb

if.end8.i:                                        ; preds = %if.end.i
  %cache.i = getelementptr inbounds %struct.v9fs_session_info, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cache.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool9.not.i = icmp eq i32 %17, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.else12.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %s_bdi.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 27
  %18 = ptrtoint ptr %s_bdi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_bdi.i, align 8
  %ra_pages.i = getelementptr inbounds %struct.backing_dev_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ra_pages.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %ra_pages.i, align 4
  br label %if.end20.i

if.else12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %maxdata.i, align 4
  %shr.i = lshr i32 %22, 12
  %s_bdi14.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 27
  %23 = ptrtoint ptr %s_bdi14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %s_bdi14.i, align 8
  %ra_pages15.i = getelementptr inbounds %struct.backing_dev_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ra_pages15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i, ptr %ra_pages15.i, align 4
  %26 = load i32, ptr %maxdata.i, align 4
  %shr17.i = lshr i32 %26, 12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else12.i, %if.then10.i
  %s_bdi14.sink.i = phi ptr [ %s_bdi14.i, %if.else12.i ], [ %s_bdi.i, %if.then10.i ]
  %shr17.sink.i = phi i32 [ %shr17.i, %if.else12.i ], [ 0, %if.then10.i ]
  %27 = ptrtoint ptr %s_bdi14.sink.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_bdi14.sink.i, align 8
  %io_pages19.i = getelementptr inbounds %struct.backing_dev_info, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %io_pages19.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr17.sink.i, ptr %io_pages19.i, align 8
  %s_flags.i = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 10
  %30 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %s_flags.i, align 4
  %or.i = or i32 %31, 1073741952
  store i32 %or.i, ptr %s_flags.i, align 4
  %32 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cache.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool22.not.i = icmp eq i32 %33, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end20.i.if.end26.i_crit_edge

if.end20.i.if.end26.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then23.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  %or25.i = or i32 %31, 1073741968
  %34 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or25.i, ptr %s_flags.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then23.i, %if.end20.i.if.end26.i_crit_edge
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %call7.i.i, align 8
  %37 = and i8 %36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.not.i = icmp eq i8 %37, 0
  br i1 %cmp.not.i, label %if.end26.i.if.end16_crit_edge, label %if.then30.i

if.end26.i.if.end16_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then30.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %s_flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %s_flags.i, align 4
  %or32.i = or i32 %39, 65536
  store i32 %or32.i, ptr %s_flags.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then30.i, %if.end26.i.if.end16_crit_edge
  %40 = ptrtoint ptr %cache.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cache.i, align 8
  %42 = and i32 %41, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %switch126 = icmp eq i32 %42, 2
  %spec.select = select i1 %switch126, ptr @v9fs_cached_dentry_operations, ptr @v9fs_dentry_operations
  %43 = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 45
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %spec.select, ptr %43, align 8
  %call23 = tail call ptr @v9fs_get_inode(ptr noundef %call8, i16 noundef zeroext 17407, i32 noundef 0) #6
  %cmp.i128 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then25, label %if.end27

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call23 to i32
  br label %release_sb

if.end27:                                         ; preds = %if.end16
  %call28 = tail call ptr @d_make_root(ptr noundef %call23) #6
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.release_sb_crit_edge, label %if.end31

if.end27.release_sb_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_sb

if.end31:                                         ; preds = %if.end27
  %s_root = getelementptr inbounds %struct.super_block, ptr %call8, i32 0, i32 13
  %46 = ptrtoint ptr %s_root to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call28, ptr %s_root, align 64
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %call7.i.i, align 8
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool33.not = icmp eq i8 %49, 0
  br i1 %tobool33.not, label %if.else43, label %if.then34

if.then34:                                        ; preds = %if.end31
  %call35 = tail call ptr @p9_client_getattr_dotl(ptr noundef %call3, i64 noundef 2047) #6
  %cmp.i129 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %qid = getelementptr inbounds %struct.p9_stat_dotl, ptr %call35, i32 0, i32 1
  %call40 = tail call i32 @v9fs_qid2ino(ptr noundef %qid) #6
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call28, i32 0, i32 5
  %50 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %d_inode.i, align 8
  %i_ino = getelementptr inbounds %struct.inode, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %i_ino to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call40, ptr %i_ino, align 8
  %53 = load ptr, ptr %d_inode.i, align 8
  tail call void @v9fs_stat2inode_dotl(ptr noundef %call35, ptr noundef %53, i32 noundef 0) #6
  br label %if.end58

cleanup:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %call35 to i32
  br label %release_sb

if.else43:                                        ; preds = %if.end31
  %call45 = tail call ptr @p9_client_stat(ptr noundef %call3) #6
  %cmp.i131 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %cleanup55, label %cleanup55.thread

cleanup55.thread:                                 ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  %qid50 = getelementptr inbounds %struct.p9_wstat, ptr %call45, i32 0, i32 3
  %call51 = tail call i32 @v9fs_qid2ino(ptr noundef %qid50) #6
  %d_inode.i132 = getelementptr inbounds %struct.dentry, ptr %call28, i32 0, i32 5
  %55 = ptrtoint ptr %d_inode.i132 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %d_inode.i132, align 8
  %i_ino53 = getelementptr inbounds %struct.inode, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %i_ino53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call51, ptr %i_ino53, align 8
  %58 = load ptr, ptr %d_inode.i132, align 8
  tail call void @v9fs_stat2inode(ptr noundef %call45, ptr noundef %58, ptr noundef %call8, i32 noundef 0) #6
  tail call void @p9stat_free(ptr noundef %call45) #6
  br label %if.end58

cleanup55:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %call45 to i32
  br label %release_sb

if.end58:                                         ; preds = %cleanup55.thread, %cleanup.thread
  %call45.sink = phi ptr [ %call45, %cleanup55.thread ], [ %call35, %cleanup.thread ]
  tail call void @kfree(ptr noundef %call45.sink) #6
  %call59 = tail call i32 @v9fs_get_acl(ptr noundef %call23, ptr noundef %call3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end58.release_sb_crit_edge

if.end58.release_sb_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %release_sb

if.end62:                                         ; preds = %if.end58
  tail call void @v9fs_fid_add(ptr noundef nonnull %call28, ptr noundef %call3) #6
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_mount, ptr noundef nonnull @.str.2) #6
  %60 = ptrtoint ptr %s_root to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %s_root, align 64
  %tobool.not.i134 = icmp eq ptr %61, null
  br i1 %tobool.not.i134, label %if.end62.cleanup69_crit_edge, label %if.then.i135

if.end62.cleanup69_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup69

if.then.i135:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %d_lockref.i = getelementptr inbounds %struct.dentry, ptr %61, i32 0, i32 7
  tail call void @lockref_get(ptr noundef %d_lockref.i) #6
  br label %cleanup69

free_session:                                     ; preds = %if.then10, %if.end.free_session_crit_edge
  %retval1.2.in = phi ptr [ %call8, %if.then10 ], [ %call3, %if.end.free_session_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup69

release_sb:                                       ; preds = %if.end58.release_sb_crit_edge, %cleanup55, %cleanup, %if.end27.release_sb_crit_edge, %if.then25, %if.end.i.release_sb_crit_edge
  %retval1.3 = phi i32 [ %45, %if.then25 ], [ %54, %cleanup ], [ %call59, %if.end58.release_sb_crit_edge ], [ %59, %cleanup55 ], [ -12, %if.end27.release_sb_crit_edge ], [ %call5.i, %if.end.i.release_sb_crit_edge ]
  %call67 = tail call i32 @p9_client_clunk(ptr noundef %call3) #6
  tail call void @deactivate_locked_super(ptr noundef %call8) #6
  %62 = inttoptr i32 %retval1.3 to ptr
  br label %cleanup69

cleanup69:                                        ; preds = %release_sb, %free_session, %if.then.i135, %if.end62.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.0 = phi ptr [ %retval1.2.in, %free_session ], [ %62, %release_sb ], [ inttoptr (i32 -12 to ptr), %entry.cleanup69_crit_edge ], [ null, %if.end62.cleanup69_crit_edge ], [ %61, %if.then.i135 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_kill_super(ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_kill_super, ptr noundef nonnull @.str.5, ptr noundef %s) #6
  tail call void @kill_anon_super(ptr noundef %s) #6
  tail call void @v9fs_session_cancel(ptr noundef %1) #6
  tail call void @v9fs_session_close(ptr noundef %1) #6
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %s_fs_info, align 16
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_kill_super, ptr noundef nonnull @.str.6) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_session_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sget(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_set_super(ptr noundef %s, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %s, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %data, ptr %s_fs_info, align 16
  %call = tail call i32 @set_anon_super(ptr noundef %s, ptr noundef %data) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_get_inode(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @d_make_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_getattr_dotl(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_qid2ino(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_stat2inode_dotl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @p9_client_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_stat2inode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9stat_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_get_acl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_fid_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_clunk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_session_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @deactivate_locked_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_anon_super(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @super_setup_bdi(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_alloc_inode(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_free_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_write_inode_dotl(ptr noundef %inode, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -128
  %writeback_fid = getelementptr i8, ptr %inode, i32 -100
  %0 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %writeback_fid, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_write_inode_dotl, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.v9fs_write_inode_dotl, ptr noundef %inode, ptr noundef %1) #6
  %2 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %writeback_fid, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @p9_client_fsync(ptr noundef nonnull %3, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 2) #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %unpinned_fscache_wb.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %6 = ptrtoint ptr %unpinned_fscache_wb.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %unpinned_fscache_wb.i, align 4
  %7 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool.not.i = icmp eq i16 %7, 0
  %tobool.not.i.i = icmp eq ptr %5, null
  %or.cond.i = or i1 %tobool.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end5.cleanup_crit_edge, label %if.then.i.i

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__fscache_unuse_cookie(ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end5.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @v9fs_drop_inode(ptr nocapture noundef readonly %inode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %0 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %s_fs_info.i, align 16
  %cache = getelementptr inbounds %struct.v9fs_session_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cache, align 4
  %6 = and i32 %5, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp eq i32 %6, 2
  br i1 %switch, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 12
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %lor.rhs.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.rhs.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 28, i32 1
  %10 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  %lnot.ext.i.i.i = zext i1 %tobool.not.i.i.i to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.rhs.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ %lnot.ext.i.i.i, %lor.rhs.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_evict_inode(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_statfs(ptr noundef %dentry, ptr noundef %buf) #0 align 64 {
entry:
  %rs = alloca %struct.p9_rstatfs, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rs) #6
  %0 = call ptr @memset(ptr %rs, i32 255, i32 64)
  %call = tail call ptr @v9fs_fid_lookup(ptr noundef %dentry) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  br label %done

if.end:                                           ; preds = %entry
  %d_sb.i = getelementptr inbounds %struct.dentry, ptr %dentry, i32 0, i32 9
  %2 = ptrtoint ptr %d_sb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d_sb.i, align 4
  %s_fs_info.i = getelementptr inbounds %struct.super_block, ptr %3, i32 0, i32 33
  %4 = ptrtoint ptr %s_fs_info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %s_fs_info.i, align 16
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %call6 = call i32 @p9_client_statfs(ptr noundef %call, ptr noundef nonnull %rs) #6
  %9 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.then5.done_crit_edge [
    i32 0, label %if.then7
    i32 -38, label %if.then5.if.end12_crit_edge
  ]

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then5.done_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %rs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rs, align 8
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %buf, align 8
  %bsize = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 1
  %13 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bsize, align 4
  %f_bsize = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 1
  %15 = ptrtoint ptr %f_bsize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %f_bsize, align 4
  %blocks = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 2
  %16 = ptrtoint ptr %blocks to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %blocks, align 8
  %f_blocks = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 2
  %18 = ptrtoint ptr %f_blocks to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %f_blocks, align 8
  %bfree = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 3
  %19 = ptrtoint ptr %bfree to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %bfree, align 8
  %f_bfree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 3
  %21 = ptrtoint ptr %f_bfree to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %f_bfree, align 8
  %bavail = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 4
  %22 = ptrtoint ptr %bavail to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %bavail, align 8
  %f_bavail = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 4
  %24 = ptrtoint ptr %f_bavail to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %f_bavail, align 8
  %files = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 5
  %25 = ptrtoint ptr %files to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %files, align 8
  %f_files = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 5
  %27 = ptrtoint ptr %f_files to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %f_files, align 8
  %ffree = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 6
  %28 = ptrtoint ptr %ffree to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %ffree, align 8
  %f_ffree = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 6
  %30 = ptrtoint ptr %f_ffree to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %29, ptr %f_ffree, align 8
  %f_fsid = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 7
  %fsid = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 7
  %31 = ptrtoint ptr %fsid to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %fsid, align 8
  %tmp.sroa.0.0.insert.insert = call i64 @llvm.fshl.i64(i64 %32, i64 %32, i64 32)
  %33 = ptrtoint ptr %f_fsid to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %tmp.sroa.0.0.insert.insert, ptr %f_fsid, align 8
  %namelen = getelementptr inbounds %struct.p9_rstatfs, ptr %rs, i32 0, i32 8
  %34 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %namelen, align 8
  %f_namelen = getelementptr inbounds %struct.kstatfs, ptr %buf, i32 0, i32 8
  %36 = ptrtoint ptr %f_namelen to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %f_namelen, align 8
  br label %done

if.end12:                                         ; preds = %if.then5.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = call i32 @simple_statfs(ptr noundef %dentry, ptr noundef %buf) #6
  br label %done

done:                                             ; preds = %if.end12, %if.then7, %if.then5.done_crit_edge, %if.then
  %res.0 = phi i32 [ %1, %if.then ], [ 0, %if.then7 ], [ %call13, %if.end12 ], [ %call6, %if.then5.done_crit_edge ]
  %call14 = call i32 @p9_client_clunk(ptr noundef %call) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rs) #6
  ret i32 %res.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @v9fs_umount_begin(ptr nocapture noundef readonly %sb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %s_fs_info = getelementptr inbounds %struct.super_block, ptr %sb, i32 0, i32 33
  %0 = ptrtoint ptr %s_fs_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %s_fs_info, align 16
  tail call void @v9fs_session_begin_cancel(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v9fs_show_options(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_fsync(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mark_inode_dirty(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fscache_unuse_cookie(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v9fs_fid_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_statfs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_statfs(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_session_begin_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @v9fs_write_inode(ptr noundef %inode, ptr nocapture noundef readonly %wbc) #0 align 64 {
entry:
  %wstat = alloca %struct.p9_wstat, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %wstat) #6
  %0 = call ptr @memset(ptr %wstat, i32 255, i32 80)
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 8, ptr noundef nonnull @__func__.v9fs_write_inode, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.v9fs_write_inode, ptr noundef %inode) #6
  %add.ptr.i = getelementptr i8, ptr %inode, i32 -128
  %writeback_fid = getelementptr i8, ptr %inode, i32 -100
  %1 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %writeback_fid, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @v9fs_blank_wstat(ptr noundef nonnull %wstat) #6
  %3 = ptrtoint ptr %writeback_fid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %writeback_fid, align 4
  %call2 = call i32 @p9_client_wstat(ptr noundef %4, ptr noundef nonnull %wstat) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__mark_inode_dirty(ptr noundef %inode, i32 noundef 2) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %unpinned_fscache_wb.i = getelementptr inbounds %struct.writeback_control, ptr %wbc, i32 0, i32 5
  %7 = ptrtoint ptr %unpinned_fscache_wb.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load.i = load i16, ptr %unpinned_fscache_wb.i, align 4
  %8 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.i = icmp eq i16 %8, 0
  %tobool.not.i.i = icmp eq ptr %6, null
  %or.cond.i = or i1 %tobool.not.i.i, %tobool.not.i
  br i1 %or.cond.i, label %if.end4.cleanup_crit_edge, label %if.then.i.i

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @__fscache_unuse_cookie(ptr noundef nonnull %6, ptr noundef null, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.then.i.i ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %wstat) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_blank_wstat(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_client_wstat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockref_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_session_cancel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.fshl.i64(i64, i64, i64) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !18, !20, !21, !23, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/9p/vfs_super.c", i32 363, i32 10}
!2 = !{ptr @v9fs_fs_type, !3, !"v9fs_fs_type", i1 false, i1 false}
!3 = !{!"../fs/9p/vfs_super.c", i32 362, i32 25}
!4 = !{ptr @__UNIQUE_ID_alias308, !5, !"__UNIQUE_ID_alias308", i1 false, i1 false}
!5 = !{!"../fs/9p/vfs_super.c", i32 369, i32 1}
!6 = !{ptr @__func__.v9fs_mount, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/9p/vfs_super.c", i32 120, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../fs/9p/vfs_super.c", i32 189, i32 2}
!11 = !{ptr @v9fs_super_ops_dotl, !12, !"v9fs_super_ops_dotl", i1 false, i1 false}
!12 = !{!"../fs/9p/vfs_super.c", i32 351, i32 38}
!13 = !{ptr @__func__.v9fs_write_inode_dotl, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/9p/vfs_super.c", i32 327, i32 2}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @v9fs_super_ops, !17, !"v9fs_super_ops", i1 false, i1 false}
!17 = !{!"../fs/9p/vfs_super.c", i32 341, i32 38}
!18 = !{ptr @__func__.v9fs_write_inode, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/9p/vfs_super.c", i32 302, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__func__.v9fs_kill_super, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../fs/9p/vfs_super.c", i32 221, i32 2}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/9p/vfs_super.c", i32 229, i32 2}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i32 0, i32 33}
