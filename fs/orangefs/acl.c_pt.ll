; ModuleID = '/llk/IR_all_yes/fs/orangefs/acl.c_pt.bc'
source_filename = "../fs/orangefs/acl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.posix_acl = type { %struct.refcount_struct, %struct.callback_head, i32, [0 x %struct.posix_acl_entry] }
%struct.callback_head = type { ptr, ptr }
%struct.posix_acl_entry = type { i16, i16, %union.anon }
%union.anon = type { %struct.kuid_t }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.80, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.81, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.82, ptr, %struct.address_space, %struct.list_head, %union.anon.83, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.80 = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.81 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.82 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.83 = type { ptr }

@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system.posix_acl_access\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"system.posix_acl_default\00", [39 x i8] zeroinitializer }, align 32
@orangefs_get_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013orangefs_get_acl: bogus value of type %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_get_acl\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/orangefs/acl.c\00", [46 x i8] zeroinitializer }, align 32
@orangefs_get_acl._entry_ptr = internal global ptr @orangefs_get_acl._entry, section ".printk_index", align 4
@orangefs_gossip_debug_mask = external dso_local local_unnamed_addr global i64, align 8
@orangefs_get_acl._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017inode %pU, key %s, type %d\0A\00", [34 x i8] zeroinitializer }, align 32
@orangefs_get_acl._entry_ptr.7 = internal global ptr @orangefs_get_acl._entry.5, section ".printk_index", align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 4
@orangefs_get_acl._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013inode %pU retrieving acl's failed with error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@orangefs_get_acl._entry_ptr.10 = internal global ptr @orangefs_get_acl._entry.8, section ".printk_index", align 4
@orangefs_set_acl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: posix_acl_update_mode err: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"orangefs_set_acl\00", [47 x i8] zeroinitializer }, align 32
@orangefs_set_acl._entry_ptr = internal global ptr @orangefs_set_acl._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__orangefs_set_acl._entry = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 83, ptr null, ptr null }, align 1
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s: invalid type %d!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__orangefs_set_acl\00", [45 x i8] zeroinitializer }, align 32
@__orangefs_set_acl._entry_ptr = internal global ptr @__orangefs_set_acl._entry, section ".printk_index", align 4
@__orangefs_set_acl._entry.15 = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 91, ptr null, ptr null }, align 1
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: inode %pU, key %s type %d\0A\00", [63 x i8] zeroinitializer }, align 32
@__orangefs_set_acl._entry_ptr.17 = internal global ptr @__orangefs_set_acl._entry.15, section ".printk_index", align 4
@__orangefs_set_acl._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.4, i32 106, ptr null, ptr null }, align 1
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: name %s, value %p, size %zd, acl %p\0A\00", [53 x i8] zeroinitializer }, align 32
@__orangefs_set_acl._entry_ptr.20 = internal global ptr @__orangefs_set_acl._entry.18, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967258]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 16384, i64 32768]
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 24, i32 9 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 27, i32 9 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 30, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 44, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 57, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 142, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 83, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 87, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [21 x i8] c"../fs/orangefs/acl.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 104, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__orangefs_set_acl._entry, ptr @__orangefs_set_acl._entry.15, ptr @__orangefs_set_acl._entry.18, ptr @__orangefs_set_acl._entry_ptr, ptr @__orangefs_set_acl._entry_ptr.17, ptr @__orangefs_set_acl._entry_ptr.20, ptr @orangefs_get_acl._entry, ptr @orangefs_get_acl._entry.5, ptr @orangefs_get_acl._entry.8, ptr @orangefs_get_acl._entry_ptr, ptr @orangefs_get_acl._entry_ptr.10, ptr @orangefs_get_acl._entry_ptr.7, ptr @orangefs_set_acl._entry, ptr @orangefs_set_acl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_get_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_get_acl._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_get_acl._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orangefs_set_acl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @orangefs_get_acl(ptr noundef %inode, i32 noundef %type, i1 noundef zeroext %rcu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %rcu, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %do.end [
    i32 32768, label %if.end.sw.epilog_crit_edge
    i32 16384, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %type) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %key.0 = phi ptr [ @.str.1, %sw.bb1 ], [ @.str, %if.end.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 8192) #11
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %sw.epilog.cleanup_crit_edge, label %do.body9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9:                                         ; preds = %sw.epilog
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %2 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %2, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %do.body9.do.end20_crit_edge, label %do.end14

do.body9.do.end20_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -376
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %add.ptr.i.i, ptr noundef nonnull %key.0, i32 noundef %type) #10
  br label %do.end20

do.end20:                                         ; preds = %do.end14, %do.body9.do.end20_crit_edge
  %call21 = tail call i32 @orangefs_inode_getxattr(ptr noundef %inode, ptr noundef nonnull %key.0, ptr noundef nonnull %call7.i, i32 noundef 8192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp sgt i32 %call21, 0
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call ptr @posix_acl_from_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %call7.i, i32 noundef %call21) #7
  br label %if.end36

if.else:                                          ; preds = %do.end20
  %3 = zext i32 %call21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %call21, label %do.end30 [
    i32 -61, label %if.else.if.end36_crit_edge
    i32 -38, label %if.else.if.end36_crit_edge54
  ]

if.else.if.end36_crit_edge54:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end30:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i53 = getelementptr i8, ptr %inode, i32 -376
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %add.ptr.i.i53, i32 noundef %call21) #10
  %4 = inttoptr i32 %call21 to ptr
  br label %if.end36

if.end36:                                         ; preds = %do.end30, %if.else.if.end36_crit_edge, %if.else.if.end36_crit_edge54, %if.then22
  %acl.0 = phi ptr [ %call23, %if.then22 ], [ %4, %do.end30 ], [ null, %if.else.if.end36_crit_edge ], [ null, %if.else.if.end36_crit_edge54 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %acl.0, %if.end36 ], [ inttoptr (i32 -10 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_getxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @posix_acl_from_xattr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_set_acl(ptr nocapture noundef readnone %mnt_userns, ptr noundef %inode, ptr noundef %acl, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %acl.addr = alloca ptr, align 4
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %acl.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %acl, ptr %acl.addr, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #7
  %1 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %type)
  %cmp = icmp ne i32 %type, 32768
  %tobool.not = icmp eq ptr %acl, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then:                                          ; preds = %entry
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %call = call i32 @posix_acl_update_mode(ptr noundef nonnull @init_user_ns, ptr noundef %inode, ptr noundef %ia_mode, ptr noundef nonnull %acl.addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = ptrtoint ptr %ia_mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ia_mode, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp6.not = icmp eq i16 %3, %5
  br i1 %cmp6.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %iattr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %7 = ptrtoint ptr %acl.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %acl.addr, align 4
  %call11 = call fastcc i32 @__orangefs_set_acl(ptr noundef %inode, ptr noundef %8, i32 noundef %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end10
  %9 = ptrtoint ptr %iattr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iattr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp15 = icmp eq i32 %10, 1
  br i1 %cmp15, label %if.then17, label %land.lhs.true13.cleanup_crit_edge

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 @__orangefs_setattr(ptr noundef %inode, ptr noundef nonnull %iattr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %land.lhs.true13.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call18, %if.then17 ], [ 0, %land.lhs.true13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_update_mode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__orangefs_set_acl(ptr noundef %inode, ptr noundef %acl, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %type, label %do.end [
    i32 32768, label %entry.do.body2_crit_edge
    i32 16384, label %sw.bb1
  ]

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %type) #10
  br label %cleanup

do.body2:                                         ; preds = %sw.bb1, %entry.do.body2_crit_edge
  %name.0 = phi ptr [ @.str.1, %sw.bb1 ], [ @.str, %entry.do.body2_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %1 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and = and i64 %1, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %do.body2.do.end10_crit_edge, label %do.end5

do.body2.do.end10_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end5:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %inode, i32 -376
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14, ptr noundef %add.ptr.i.i, ptr noundef nonnull %name.0, i32 noundef %type) #10
  br label %do.end10

do.end10:                                         ; preds = %do.end5, %do.body2.do.end10_crit_edge
  %tobool11.not = icmp eq ptr %acl, null
  br i1 %tobool11.not, label %do.end10.do.body22_crit_edge, label %if.then12

do.end10.do.body22_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

if.then12:                                        ; preds = %do.end10
  %a_count = getelementptr inbounds %struct.posix_acl, ptr %acl, i32 0, i32 2
  %2 = ptrtoint ptr %a_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %a_count, align 4
  %mul.i = shl i32 %3, 3
  %add.i = or i32 %mul.i, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 3264) #12
  %tobool15.not = icmp eq ptr %call9.i, null
  br i1 %tobool15.not, label %if.then12.cleanup_crit_edge, label %if.end17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.then12
  %call18 = tail call i32 @posix_acl_to_xattr(ptr noundef nonnull @init_user_ns, ptr noundef nonnull %acl, ptr noundef nonnull %call9.i, i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %out.thread, label %if.end17.do.body22_crit_edge

if.end17.do.body22_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body22

out.thread:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

do.body22:                                        ; preds = %if.end17.do.body22_crit_edge, %do.end10.do.body22_crit_edge
  %size.0 = phi i32 [ %add.i, %if.end17.do.body22_crit_edge ], [ 0, %do.end10.do.body22_crit_edge ]
  %value.0 = phi ptr [ %call9.i, %if.end17.do.body22_crit_edge ], [ null, %do.end10.do.body22_crit_edge ]
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @orangefs_gossip_debug_mask to i32))
  %4 = load i64, ptr @orangefs_gossip_debug_mask, align 8
  %and23 = and i64 %4, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23)
  %tobool24.not = icmp eq i64 %and23, 0
  br i1 %tobool24.not, label %do.body22.out_crit_edge, label %do.end28

do.body22.out_crit_edge:                          ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.14, ptr noundef nonnull %name.0, ptr noundef %value.0, i32 noundef %size.0, ptr noundef %acl) #10
  br label %out

out:                                              ; preds = %do.end28, %do.body22.out_crit_edge
  %call34 = tail call i32 @orangefs_inode_setxattr(ptr noundef %inode, ptr noundef nonnull %name.0, ptr noundef %value.0, i32 noundef %size.0, i32 noundef 0) #7
  tail call void @kfree(ptr noundef %value.0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then36, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @set_cached_acl(ptr noundef %inode, i32 noundef %type, ptr noundef %acl) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %out.cleanup_crit_edge, %out.thread, %if.then12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.then12.cleanup_crit_edge ], [ 0, %if.then36 ], [ %call34, %out.cleanup_crit_edge ], [ %call18, %out.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__orangefs_setattr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @orangefs_init_acl(ptr noundef %inode, ptr noundef %dir) local_unnamed_addr #0 align 64 {
entry:
  %default_acl = alloca ptr, align 4
  %acl = alloca ptr, align 4
  %mode = alloca i16, align 2
  %iattr = alloca %struct.iattr, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %default_acl) #7
  %0 = ptrtoint ptr %default_acl to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %default_acl, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %acl) #7
  %1 = ptrtoint ptr %acl to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %acl, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mode) #7
  %2 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %inode, align 8
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %mode, align 2
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %iattr) #7
  %call = call i32 @posix_acl_create(ptr noundef %dir, ptr noundef nonnull %mode, ptr noundef nonnull %default_acl, ptr noundef nonnull %acl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %default_acl, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %if.end4.thread, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call fastcc i32 @__orangefs_set_acl(ptr noundef %inode, ptr noundef nonnull %6, i32 noundef 16384)
  %7 = ptrtoint ptr %default_acl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %default_acl, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then2.if.end4_crit_edge, label %land.lhs.true.i

if.then2.if.end4_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

land.lhs.true.i:                                  ; preds = %if.then2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %8, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  call void @llvm.prefetch.p0(ptr nonnull %8, i32 1, i32 3, i32 1) #7
  %9 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %8, ptr nonnull %8, i32 1, ptr nonnull elementtype(i32) %8) #7, !srcloc !47
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %do.end.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end4_crit_edge, label %if.then10.i.i.i.i, !prof !48

if.end5.i.i.i.i.if.end4_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %8, i32 noundef 3) #7
  br label %if.end4

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %a_rcu.i = getelementptr inbounds %struct.posix_acl, ptr %8, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %if.end4

if.end4:                                          ; preds = %do.end.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end4_crit_edge, %if.then2.if.end4_crit_edge
  %10 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %acl, align 4
  %tobool5.not = icmp eq ptr %11, null
  br i1 %tobool5.not, label %if.end4.if.else11_crit_edge, label %if.then6

if.end4.if.else11_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

if.end4.thread:                                   ; preds = %if.end
  %i_default_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 6
  %12 = ptrtoint ptr %i_default_acl to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %i_default_acl, align 4
  %13 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %acl, align 4
  %tobool5.not47 = icmp eq ptr %14, null
  br i1 %tobool5.not47, label %if.end4.thread.if.else11_crit_edge, label %if.end4.thread.if.end10_crit_edge

if.end4.thread.if.end10_crit_edge:                ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end4.thread.if.else11_crit_edge:               ; preds = %if.end4.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else11

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool7.not = icmp eq i32 %call3, 0
  br i1 %tobool7.not, label %if.then6.if.end10_crit_edge, label %if.then6.land.lhs.true.i39_crit_edge

if.then6.land.lhs.true.i39_crit_edge:             ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i39

if.then6.if.end10_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end10:                                         ; preds = %if.then6.if.end10_crit_edge, %if.end4.thread.if.end10_crit_edge
  %15 = phi ptr [ %11, %if.then6.if.end10_crit_edge ], [ %14, %if.end4.thread.if.end10_crit_edge ]
  %call9 = call fastcc i32 @__orangefs_set_acl(ptr noundef %inode, ptr noundef nonnull %15, i32 noundef 32768)
  %16 = ptrtoint ptr %acl to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load ptr, ptr %acl, align 4
  %tobool.not.i35 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i35, label %if.end10.if.end12_crit_edge, label %if.end10.land.lhs.true.i39_crit_edge

if.end10.land.lhs.true.i39_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i39

if.end10.if.end12_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

land.lhs.true.i39:                                ; preds = %if.end10.land.lhs.true.i39_crit_edge, %if.then6.land.lhs.true.i39_crit_edge
  %error.154 = phi i32 [ %call9, %if.end10.land.lhs.true.i39_crit_edge ], [ %call3, %if.then6.land.lhs.true.i39_crit_edge ]
  %17 = phi ptr [ %.pr, %if.end10.land.lhs.true.i39_crit_edge ], [ %11, %if.then6.land.lhs.true.i39_crit_edge ]
  %call.i.i.i.i.i.i36 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %17, i32 noundef 4) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !46
  call void @llvm.prefetch.p0(ptr nonnull %17, i32 1, i32 3, i32 1) #7
  %18 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #7, !srcloc !47
  %asmresult.i.i.i.i.i.i.i37 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i37)
  %cmp.i.i.i.i38 = icmp eq i32 %asmresult.i.i.i.i.i.i.i37, 1
  br i1 %cmp.i.i.i.i38, label %do.end.i44, label %if.end5.i.i.i.i41

if.end5.i.i.i.i41:                                ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i37)
  %.not.i.i.i.i40 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i37, 0
  br i1 %.not.i.i.i.i40, label %if.end5.i.i.i.i41.if.end12_crit_edge, label %if.then10.i.i.i.i42, !prof !48

if.end5.i.i.i.i41.if.end12_crit_edge:             ; preds = %if.end5.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10.i.i.i.i42:                              ; preds = %if.end5.i.i.i.i41
  call void @__sanitizer_cov_trace_pc() #9
  call void @refcount_warn_saturate(ptr noundef nonnull %17, i32 noundef 3) #7
  br label %if.end12

do.end.i44:                                       ; preds = %land.lhs.true.i39
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %a_rcu.i43 = getelementptr inbounds %struct.posix_acl, ptr %17, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %a_rcu.i43, ptr noundef nonnull inttoptr (i32 4 to ptr)) #7
  br label %if.end12

if.else11:                                        ; preds = %if.end4.thread.if.else11_crit_edge, %if.end4.if.else11_crit_edge
  %error.049 = phi i32 [ 0, %if.end4.thread.if.else11_crit_edge ], [ %call3, %if.end4.if.else11_crit_edge ]
  %i_acl = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 5
  %19 = ptrtoint ptr %i_acl to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %i_acl, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %do.end.i44, %if.then10.i.i.i.i42, %if.end5.i.i.i.i41.if.end12_crit_edge, %if.end10.if.end12_crit_edge
  %error.2 = phi i32 [ %error.049, %if.else11 ], [ %call9, %if.end10.if.end12_crit_edge ], [ %error.154, %if.end5.i.i.i.i41.if.end12_crit_edge ], [ %error.154, %if.then10.i.i.i.i42 ], [ %error.154, %do.end.i44 ]
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mode, align 2
  %22 = ptrtoint ptr %inode to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %inode, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp.not = icmp eq i16 %21, %23
  br i1 %cmp.not, label %if.end12.cleanup_crit_edge, label %if.then16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %24 = call ptr @memset(ptr %iattr, i32 0, i32 80)
  %25 = ptrtoint ptr %inode to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %21, ptr %inode, align 8
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %iattr, i32 0, i32 1
  %26 = ptrtoint ptr %ia_mode to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %21, ptr %ia_mode, align 4
  %27 = ptrtoint ptr %iattr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %iattr, align 8
  %call18 = call i32 @__orangefs_setattr(ptr noundef %inode, ptr noundef nonnull %iattr) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %error.2, %if.then16 ], [ %error.2, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %iattr) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mode) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %acl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %default_acl) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @posix_acl_to_xattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @orangefs_inode_setxattr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_cached_acl(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/orangefs/acl.c", i32 24, i32 9}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/orangefs/acl.c", i32 27, i32 9}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/orangefs/acl.c", i32 30, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @orangefs_get_acl._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @orangefs_get_acl._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/orangefs/acl.c", i32 44, i32 2}
!12 = !{ptr @orangefs_get_acl._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @orangefs_get_acl._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/orangefs/acl.c", i32 57, i32 3}
!16 = !{ptr @orangefs_get_acl._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @orangefs_get_acl._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/orangefs/acl.c", i32 142, i32 4}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @orangefs_set_acl._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @orangefs_set_acl._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/orangefs/acl.c", i32 83, i32 3}
!25 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__orangefs_set_acl._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @__orangefs_set_acl._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/orangefs/acl.c", i32 87, i32 2}
!30 = !{ptr @__orangefs_set_acl._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @__orangefs_set_acl._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/orangefs/acl.c", i32 104, i32 2}
!34 = !{ptr @__orangefs_set_acl._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @__orangefs_set_acl._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
!46 = !{i64 2148313706}
!47 = !{i64 2148228170, i64 2148228202, i64 2148228231, i64 2148228265, i64 2148228296, i64 2148228319}
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 2149882295}
