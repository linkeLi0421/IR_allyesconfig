; ModuleID = '/llk/IR_all_yes/security/integrity/iint.c_pt.bc'
source_filename = "../security/integrity/iint.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rb_root = type { ptr }
%struct.lsm_info = type { ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.65 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.67 = type { ptr }
%struct.integrity_iint_cache = type { %struct.rb_node, %struct.mutex, ptr, i64, i32, i32, i32, i24, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }

@integrity_iint_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@iint_cache = internal unnamed_addr global ptr null, section ".data..read_mostly", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: lsm=integrity required.\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.integrity_inode_get = private unnamed_addr constant [20 x i8] c"integrity_inode_get\00", align 1
@integrity_iint_tree = internal global { %struct.rb_root, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"integrity\00", [22 x i8] zeroinitializer }, align 32
@__lsm_integrity = internal global %struct.lsm_info { ptr @.str.1, i32 0, i32 0, ptr null, ptr @integrity_iintcache_init, ptr null }, section ".lsm_info.init", align 4
@__initcall__kmod_integrity__223_232_integrity_fs_init7 = internal global ptr @integrity_fs_init, section ".initcall7.init", align 4
@integrity_dir = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"integrity_iint_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iint_cache\00", [21 x i8] zeroinitializer }, align 32
@init_once.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&iint->mutex\00", [19 x i8] zeroinitializer }, align 32
@integrity_fs_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013integrity: Unable to create integrity sysfs dir: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"integrity_fs_init\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"security/integrity/iint.c\00", [38 x i8] zeroinitializer }, align 32
@integrity_fs_init._entry_ptr = internal global ptr @integrity_fs_init._entry, section ".printk_index", align 4
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"integrity_iint_lock\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 107, i32 9 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"integrity_iint_tree\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 24, i32 23 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 183, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant [14 x i8] c"integrity_dir\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 28, i32 16 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 25, i32 8 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 178, i32 24 }
@___asan_gen_.29 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 172, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [29 x i8] c"../security/integrity/iint.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 223, i32 4 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__initcall__kmod_integrity__223_232_integrity_fs_init7, ptr @__lsm_integrity, ptr @integrity_fs_init._entry, ptr @integrity_fs_init._entry_ptr, ptr @integrity_iint_lock, ptr @.str, ptr @integrity_iint_tree, ptr @.str.1, ptr @integrity_dir, ptr @.str.2, ptr @.str.3, ptr @init_once.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_iint_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_iint_tree to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_dir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_once.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @integrity_fs_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @integrity_iint_find(ptr noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @integrity_iint_lock) #5
  %n.018.i = load ptr, ptr @integrity_iint_tree, align 4
  %tobool.not19.i = icmp eq ptr %n.018.i, null
  br i1 %tobool.not19.i, label %if.end.__integrity_iint_find.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.__integrity_iint_find.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__integrity_iint_find.exit

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.020.i = phi ptr [ %n.0.i, %if.end6.i.while.body.i_crit_edge ], [ %n.018.i, %if.end.while.body.i_crit_edge ]
  %inode1.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %n.020.i, i32 0, i32 2
  %2 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode1.i, align 8
  %cmp.i = icmp ugt ptr %3, %inode
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  %cmp3.i = icmp ult ptr %3, %inode
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.__integrity_iint_find.exit_crit_edge

if.else.i.__integrity_iint_find.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__integrity_iint_find.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %4 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.__integrity_iint_find.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end6.i.__integrity_iint_find.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__integrity_iint_find.exit

__integrity_iint_find.exit:                       ; preds = %if.end6.i.__integrity_iint_find.exit_crit_edge, %if.else.i.__integrity_iint_find.exit_crit_edge, %if.end.__integrity_iint_find.exit_crit_edge
  %.iint.1.i = phi ptr [ null, %if.end.__integrity_iint_find.exit_crit_edge ], [ null, %if.end6.i.__integrity_iint_find.exit_crit_edge ], [ %n.020.i, %if.else.i.__integrity_iint_find.exit_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @integrity_iint_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %__integrity_iint_find.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %.iint.1.i, %__integrity_iint_find.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @integrity_inode_get(ptr noundef %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @iint_cache, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.integrity_inode_get) #8
  unreachable

if.end:                                           ; preds = %entry
  %i_flags.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %1 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_flags.i, align 4
  %and.i = and i32 %2, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.if.end3_crit_edge, label %if.end.i

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  tail call void @_raw_read_lock(ptr noundef nonnull @integrity_iint_lock) #5
  %n.018.i.i = load ptr, ptr @integrity_iint_tree, align 4
  %tobool.not19.i.i = icmp eq ptr %n.018.i.i, null
  br i1 %tobool.not19.i.i, label %if.end.i.integrity_iint_find.exit.thread33_crit_edge, label %if.end.i.while.body.i.i_crit_edge

if.end.i.while.body.i.i_crit_edge:                ; preds = %if.end.i
  br label %while.body.i.i

if.end.i.integrity_iint_find.exit.thread33_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %integrity_iint_find.exit.thread33

while.body.i.i:                                   ; preds = %if.end6.i.i.while.body.i.i_crit_edge, %if.end.i.while.body.i.i_crit_edge
  %n.020.i.i = phi ptr [ %n.0.i.i, %if.end6.i.i.while.body.i.i_crit_edge ], [ %n.018.i.i, %if.end.i.while.body.i.i_crit_edge ]
  %inode1.i.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %n.020.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %inode1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %inode1.i.i, align 8
  %cmp.i.i = icmp ugt ptr %4, %inode
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i.i, i32 0, i32 2
  br label %if.end6.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  %cmp3.i.i = icmp ult ptr %4, %inode
  br i1 %cmp3.i.i, label %if.then4.i.i, label %integrity_iint_find.exit

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right.i.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i.i, i32 0, i32 1
  br label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.then4.i.i, %if.then.i.i
  %n.1.in.i.i = phi ptr [ %rb_left.i.i, %if.then.i.i ], [ %rb_right.i.i, %if.then4.i.i ]
  %5 = ptrtoint ptr %n.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %n.0.i.i = load ptr, ptr %n.1.in.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %n.0.i.i, null
  br i1 %tobool.not.i.i, label %if.end6.i.i.integrity_iint_find.exit.thread33_crit_edge, label %if.end6.i.i.while.body.i.i_crit_edge

if.end6.i.i.while.body.i.i_crit_edge:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i.i

if.end6.i.i.integrity_iint_find.exit.thread33_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %integrity_iint_find.exit.thread33

integrity_iint_find.exit.thread33:                ; preds = %if.end6.i.i.integrity_iint_find.exit.thread33_crit_edge, %if.end.i.integrity_iint_find.exit.thread33_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @integrity_iint_lock) #5
  br label %if.end3

integrity_iint_find.exit:                         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_read_unlock(ptr noundef nonnull @integrity_iint_lock) #5
  br label %cleanup

if.end3:                                          ; preds = %integrity_iint_find.exit.thread33, %if.end.if.end3_crit_edge
  %6 = load ptr, ptr @iint_cache, align 4
  %call4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 3136) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  tail call void @_raw_write_lock(ptr noundef nonnull @integrity_iint_lock) #5
  %7 = load ptr, ptr @integrity_iint_tree, align 4
  %tobool8.not37 = icmp eq ptr %7, null
  br i1 %tobool8.not37, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end7.while.body_crit_edge
  %8 = phi ptr [ %12, %while.body.while.body_crit_edge ], [ %7, %if.end7.while.body_crit_edge ]
  %inode9 = getelementptr inbounds %struct.integrity_iint_cache, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %inode9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %inode9, align 8
  %cmp = icmp ugt ptr %10, %inode
  %rb_left = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  %rb_right = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  %p.1 = select i1 %cmp, ptr %rb_left, ptr %rb_right
  %11 = ptrtoint ptr %p.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p.1, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %phi.cast.le = ptrtoint ptr %8 to i32
  br label %while.end

while.end:                                        ; preds = %while.cond.while.end_crit_edge, %if.end7.while.end_crit_edge
  %parent.0.lcssa = phi i32 [ %phi.cast.le, %while.cond.while.end_crit_edge ], [ 0, %if.end7.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %p.1, %while.cond.while.end_crit_edge ], [ @integrity_iint_tree, %if.end7.while.end_crit_edge ]
  %inode12 = getelementptr inbounds %struct.integrity_iint_cache, ptr %call4, i32 0, i32 2
  %13 = ptrtoint ptr %inode12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %inode, ptr %inode12, align 8
  %14 = ptrtoint ptr %i_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_flags.i, align 4
  %or = or i32 %15, 1024
  store i32 %or, ptr %i_flags.i, align 4
  %16 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %parent.0.lcssa, ptr %call4, align 8
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %call4, i32 0, i32 1
  %17 = ptrtoint ptr %rb_right.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %rb_right.i, align 4
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %call4, i32 0, i32 2
  %18 = ptrtoint ptr %rb_left.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %rb_left.i, align 8
  %19 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call4, ptr %p.0.lcssa, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %call4, ptr noundef nonnull @integrity_iint_tree) #5
  tail call void @_raw_write_unlock(ptr noundef nonnull @integrity_iint_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end3.cleanup_crit_edge, %integrity_iint_find.exit
  %retval.0 = phi ptr [ %call4, %while.end ], [ %n.020.i.i, %integrity_iint_find.exit ], [ null, %if.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @integrity_inode_free(ptr noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i_flags = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 4
  %0 = ptrtoint ptr %i_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_flags, align 4
  %and = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_write_lock(ptr noundef nonnull @integrity_iint_lock) #5
  %n.018.i = load ptr, ptr @integrity_iint_tree, align 4
  %tobool.not19.i = icmp eq ptr %n.018.i, null
  br i1 %tobool.not19.i, label %if.end.__integrity_iint_find.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.__integrity_iint_find.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__integrity_iint_find.exit

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %n.020.i = phi ptr [ %n.0.i, %if.end6.i.while.body.i_crit_edge ], [ %n.018.i, %if.end.while.body.i_crit_edge ]
  %inode1.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %n.020.i, i32 0, i32 2
  %2 = ptrtoint ptr %inode1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inode1.i, align 8
  %cmp.i = icmp ugt ptr %3, %inode
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_left.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 2
  br label %if.end6.i

if.else.i:                                        ; preds = %while.body.i
  %cmp3.i = icmp ult ptr %3, %inode
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i.__integrity_iint_find.exit_crit_edge

if.else.i.__integrity_iint_find.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__integrity_iint_find.exit

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %rb_right.i = getelementptr inbounds %struct.rb_node, ptr %n.020.i, i32 0, i32 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.then.i
  %n.1.in.i = phi ptr [ %rb_left.i, %if.then.i ], [ %rb_right.i, %if.then4.i ]
  %4 = ptrtoint ptr %n.1.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i = load ptr, ptr %n.1.in.i, align 4
  %tobool.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool.not.i, label %if.end6.i.__integrity_iint_find.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end6.i.__integrity_iint_find.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__integrity_iint_find.exit

__integrity_iint_find.exit:                       ; preds = %if.end6.i.__integrity_iint_find.exit_crit_edge, %if.else.i.__integrity_iint_find.exit_crit_edge, %if.end.__integrity_iint_find.exit_crit_edge
  %.iint.1.i = phi ptr [ null, %if.end.__integrity_iint_find.exit_crit_edge ], [ null, %if.end6.i.__integrity_iint_find.exit_crit_edge ], [ %n.020.i, %if.else.i.__integrity_iint_find.exit_crit_edge ]
  tail call void @rb_erase(ptr noundef %.iint.1.i, ptr noundef nonnull @integrity_iint_tree) #5
  tail call void @_raw_write_unlock(ptr noundef nonnull @integrity_iint_lock) #5
  %ima_hash.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %.iint.1.i, i32 0, i32 8
  %5 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ima_hash.i, align 8
  tail call void @kfree(ptr noundef %6) #5
  %7 = ptrtoint ptr %ima_hash.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %ima_hash.i, align 8
  %version.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %.iint.1.i, i32 0, i32 3
  %8 = ptrtoint ptr %version.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %version.i, align 8
  %flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %.iint.1.i, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags.i, align 8
  %atomic_flags.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %.iint.1.i, i32 0, i32 6
  %10 = ptrtoint ptr %atomic_flags.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %atomic_flags.i, align 8
  %ima_file_status.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %.iint.1.i, i32 0, i32 7
  %11 = ptrtoint ptr %ima_file_status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i = load i32, ptr %ima_file_status.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 255
  %bf.set16.i = or i32 %bf.clear.i, 1717986816
  store i32 %bf.set16.i, ptr %ima_file_status.i, align 4
  %measured_pcrs.i = getelementptr inbounds %struct.integrity_iint_cache, ptr %.iint.1.i, i32 0, i32 5
  %12 = ptrtoint ptr %measured_pcrs.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %measured_pcrs.i, align 4
  %13 = load ptr, ptr @iint_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %.iint.1.i) #5
  br label %cleanup

cleanup:                                          ; preds = %__integrity_iint_find.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_iintcache_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.3, i32 noundef 144, i32 noundef 0, i32 noundef 262144, ptr noundef nonnull @init_once) #5
  store ptr %call, ptr @iint_cache, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @integrity_kernel_read(ptr noundef %file, i64 noundef %offset, ptr noundef %addr, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  %offset.addr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %offset.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %offset, ptr %offset.addr, align 8
  %call = call i32 @__kernel_read(ptr noundef %file, ptr noundef %addr, i32 noundef %count, ptr noundef nonnull %offset.addr) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @integrity_load_keys() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ima_load_x509() #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ima_load_x509() local_unnamed_addr #4 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @integrity_fs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @securityfs_create_dir(ptr noundef nonnull @.str.1, ptr noundef null) #5
  store ptr %call, ptr @integrity_dir, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  %cmp.not = icmp eq ptr %call, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %0) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  store ptr null, ptr @integrity_dir, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %0, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @init_once(ptr noundef %foo) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %foo, i32 0, i32 144)
  %ima_file_status = getelementptr inbounds %struct.integrity_iint_cache, ptr %foo, i32 0, i32 7
  %1 = ptrtoint ptr %ima_file_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1717986816, ptr %ima_file_status, align 4
  %mutex = getelementptr inbounds %struct.integrity_iint_cache, ptr %foo, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_once.__key) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @securityfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold noreturn nounwind }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/integrity/iint.c", i32 107, i32 9}
!2 = !{ptr @__func__.integrity_inode_get, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/integrity/iint.c", i32 107, i32 42}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../security/integrity/iint.c", i32 183, i32 10}
!6 = !{ptr @__lsm_integrity, !7, !"__lsm_integrity", i1 false, i1 false}
!7 = !{!"../security/integrity/iint.c", i32 182, i32 1}
!8 = !{ptr @__initcall__kmod_integrity__223_232_integrity_fs_init7, !9, !"__initcall__kmod_integrity__223_232_integrity_fs_init7", i1 false, i1 false}
!9 = !{!"../security/integrity/iint.c", i32 232, i32 1}
!10 = !{ptr @iint_cache, !11, !"iint_cache", i1 false, i1 false}
!11 = !{!"../security/integrity/iint.c", i32 26, i32 27}
!12 = !{ptr @integrity_dir, !13, !"integrity_dir", i1 false, i1 false}
!13 = !{!"../security/integrity/iint.c", i32 28, i32 16}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../security/integrity/iint.c", i32 25, i32 8}
!16 = !{ptr @integrity_iint_lock, !15, !"integrity_iint_lock", i1 false, i1 false}
!17 = !{ptr @integrity_iint_tree, !18, !"integrity_iint_tree", i1 false, i1 false}
!18 = !{!"../security/integrity/iint.c", i32 24, i32 23}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../security/integrity/iint.c", i32 178, i32 24}
!21 = !{ptr @init_once.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../security/integrity/iint.c", i32 172, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/integrity/iint.c", i32 223, i32 4}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @integrity_fs_init._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @integrity_fs_init._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
