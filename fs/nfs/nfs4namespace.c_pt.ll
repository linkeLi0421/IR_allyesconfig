; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4namespace.c_pt.bc'
source_filename = "../fs/nfs/nfs4namespace.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.64 }
%struct.atomic_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.121 }
%union.anon.121 = type { [4 x i32] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.158, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.159, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.160, ptr, %struct.address_space, %struct.list_head, %union.anon.161, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.158 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.159 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.160 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.161 = type { ptr }
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
%struct.nfs_server = type { ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_fsid, i64, %struct.timespec64, i32, ptr, i32, %struct.nfs_auth_info, ptr, ptr, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, %struct.rpc_wait_queue, ptr, %struct.rb_root, %struct.ida, %struct.ida, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, ptr, %struct.atomic_t, %struct.__kernel_sockaddr_storage, i32, i32, i16, i16, %struct.rpc_wait_queue, i32, ptr, i8 }
%struct.nfs_fsid = type { i64, i64 }
%struct.nfs_auth_info = type { i32, [12 x i32] }
%struct.ida = type { %struct.xarray }
%struct.__kernel_sockaddr_storage = type { %union.anon.69 }
%union.anon.69 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.nfs4_secinfo_flavors = type { i32, [0 x %struct.nfs4_secinfo4] }
%struct.nfs4_secinfo4 = type { i32, %struct.rpcsec_gss_info }
%struct.rpcsec_gss_info = type { %struct.rpcsec_gss_oid, i32, i32 }
%struct.rpcsec_gss_oid = type { i32, [32 x i8] }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.74, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.74 = type { %struct.work_struct }
%struct.page = type { i32, %union.anon.21, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.fs_context = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.p_log, ptr, ptr, ptr, i32, i32, i32, i32, i24 }
%struct.p_log = type { ptr, ptr }
%struct.nfs_fs_context = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nfs_auth_info, i32, ptr, i32, i32, ptr, i16, i16, i8, %struct.anon.165, %struct.anon.167, ptr, ptr, ptr, %struct.nfs_clone_mount }
%struct.anon.165 = type { %union.anon.166, i32, ptr, i32, i32, i16 }
%union.anon.166 = type { %struct.__kernel_sockaddr_storage }
%struct.anon.167 = type { %union.anon.168, i32, ptr, ptr, i32, i16, i16, i16, i16 }
%union.anon.168 = type { %struct.__kernel_sockaddr_storage }
%struct.nfs_clone_mount = type { ptr, ptr, ptr, i32 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.24, ptr }
%union.anon.24 = type { i64 }
%struct.lockref = type { %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.rpc_auth = type { i32, i32, i32, i32, i32, ptr, i32, %struct.refcount_struct, ptr }
%struct.nfs4_fs_locations = type { %struct.nfs_fattr, ptr, %struct.nfs4_pathname, i32, [10 x %struct.nfs4_fs_location] }
%struct.nfs_fattr = type { i32, i16, i32, %struct.kuid_t, %struct.kgid_t, i32, i64, %union.anon.76, %struct.nfs_fsid, i64, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64, i64, %struct.timespec64, %struct.timespec64, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.76 = type { %struct.anon.78 }
%struct.anon.78 = type { i64 }
%struct.nfs4_pathname = type { i32, [512 x %struct.nfs4_string] }
%struct.nfs4_string = type { i32, ptr }
%struct.nfs4_fs_location = type { i32, [10 x %struct.nfs4_string], %struct.nfs4_pathname }

@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs_do_refmount._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: getting locations for %pd2\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nfs_do_refmount\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/nfs/nfs4namespace.c\00", [41 x i8] zeroinitializer }, align 32
@nfs_do_refmount._entry_ptr = internal global ptr @nfs_do_refmount._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfs_follow_referral._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: referral at %pd2\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nfs_follow_referral\00", [44 x i8] zeroinitializer }, align 32
@nfs_follow_referral._entry_ptr = internal global ptr @nfs_follow_referral._entry, section ".printk_index", align 4
@nfs4_validate_fspath._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: path %s does not begin with fsroot %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nfs4_validate_fspath\00", [43 x i8] zeroinitializer }, align 32
@nfs4_validate_fspath._entry_ptr = internal global ptr @nfs4_validate_fspath._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 6]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 717, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 424, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 376, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [26 x i8] c"../fs/nfs/nfs4namespace.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 159, i32 3 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @nfs4_validate_fspath._entry, ptr @nfs4_validate_fspath._entry_ptr, ptr @nfs_do_refmount._entry, ptr @nfs_do_refmount._entry_ptr, ptr @nfs_follow_referral._entry, ptr @nfs_follow_referral._entry_ptr, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_do_refmount._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs_follow_referral._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_validate_fspath._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs_parse_server_name(ptr noundef %string, i32 noundef %len, ptr noundef %sa, i32 noundef %salen, ptr noundef %net, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rpc_pton(ptr noundef %net, ptr noundef %string, i32 noundef %len, ptr noundef %sa, i32 noundef %salen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @rpc_uaddr2sockaddr(ptr noundef %net, ptr noundef %string, i32 noundef %len, ptr noundef %sa, i32 noundef %salen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.then.if.end10_crit_edge

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @nfs_dns_resolve_name(ptr noundef %net, ptr noundef %string, i32 noundef %len, ptr noundef %sa, i32 noundef %salen) #9
  %0 = tail call i32 @llvm.smax.i32(i32 %call4, i32 0)
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool.not = icmp eq i32 %port, 0
  br i1 %tobool.not, label %if.else.if.end10_crit_edge, label %if.then8

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then8:                                         ; preds = %if.else
  %conv = trunc i32 %port to i16
  %1 = ptrtoint ptr %sa to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %sa, align 2
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i16 %2, label %if.then8.if.end10_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sw.bb.i:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %sa, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.bb1.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sa, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %4 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %sin6_port.sink.i, align 2
  br label %if.end10

if.end10:                                         ; preds = %sw.epilog.sink.split.i, %if.then8.if.end10_crit_edge, %if.else.if.end10_crit_edge, %if.then3, %if.then.if.end10_crit_edge
  %ret.0 = phi i32 [ %0, %if.then3 ], [ %call1, %if.then.if.end10_crit_edge ], [ %call, %if.else.if.end10_crit_edge ], [ %call, %if.then8.if.end10_crit_edge ], [ %call, %sw.epilog.sink.split.i ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_uaddr2sockaddr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_dns_resolve_name(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfs4_negotiate_security(ptr noundef %clnt, ptr noundef %inode, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #9
  %call3 = tail call i32 @nfs4_proc_secinfo(ptr noundef %inode, ptr noundef %name, ptr noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = inttoptr i32 %call3 to ptr
  br label %out

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp32.not.i = icmp eq i32 %2, 0
  br i1 %cmp32.not.i, label %if.end6.out_crit_edge, label %for.body.lr.ph.i

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph.i:                                 ; preds = %if.end6
  %i_sb.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 8
  %3 = ptrtoint ptr %i_sb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_sb.i, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %4, i32 0, i32 33
  %5 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_fs_info.i.i, align 16
  %auth_info.i = getelementptr inbounds %struct.nfs_server, ptr %6, i32 0, i32 36
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfs4_secinfo_flavors, ptr %call2, i32 0, i32 1, i32 %i.033.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %8, label %for.body.i.for.inc.i_crit_edge [
    i32 0, label %for.body.i.sw.bb.i_crit_edge
    i32 1, label %for.body.i.sw.bb.i_crit_edge17
    i32 6, label %for.body.i.sw.bb.i_crit_edge18
  ]

for.body.i.sw.bb.i_crit_edge18:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge17:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body.i.sw.bb.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

sw.bb.i:                                          ; preds = %for.body.i.sw.bb.i_crit_edge, %for.body.i.sw.bb.i_crit_edge17, %for.body.i.sw.bb.i_crit_edge18
  %flavor_info.i = getelementptr %struct.nfs4_secinfo_flavors, ptr %call2, i32 0, i32 1, i32 %i.033.i, i32 1
  %call.i = tail call i32 @rpcauth_get_pseudoflavor(i32 noundef %8, ptr noundef %flavor_info.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp3.not.i = icmp eq i32 %call.i, 8
  br i1 %cmp3.not.i, label %sw.bb.i.for.inc.i_crit_edge, label %land.lhs.true.i

sw.bb.i.for.inc.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %call4.i = tail call zeroext i1 @nfs_auth_info_match(ptr noundef %auth_info.i, i32 noundef %call.i) #9
  br i1 %call4.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call5.i = tail call ptr @rpc_clone_client_set_auth(ptr noundef %clnt, i32 noundef %call.i) #9
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.for.inc.i_crit_edge, label %if.end.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then.i
  %cl_auth.i = getelementptr inbounds %struct.rpc_clnt, ptr %call5.i, i32 0, i32 11
  %10 = ptrtoint ptr %cl_auth.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cl_auth.i, align 4
  %call8.i = tail call ptr @rpcauth_lookupcred(ptr noundef %11, i32 noundef 0) #9
  %cmp.i29.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i29.i, label %if.then10.i, label %cleanup.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rpc_shutdown_client(ptr noundef %call5.i) #9
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_rpccred(ptr noundef %call8.i) #9
  br label %out

for.inc.i:                                        ; preds = %if.then10.i, %if.then.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %sw.bb.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.033.i, 1
  %12 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call2, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.out_crit_edge

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

out:                                              ; preds = %for.inc.i.out_crit_edge, %cleanup.i, %if.end6.out_crit_edge, %if.then4
  %new.0 = phi ptr [ %0, %if.then4 ], [ %call5.i, %cleanup.i ], [ inttoptr (i32 -1 to ptr), %if.end6.out_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.inc.i.out_crit_edge ]
  %14 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !30

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !31

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.1) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !32
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !34
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@nfs4_negotiate_security, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !36

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %18) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %new.0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ %new.0, %if.then.i4.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_secinfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_submount(ptr noundef %fc, ptr nocapture noundef readnone %server) local_unnamed_addr #0 align 64 {
entry:
  %limit.i.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fs_private.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 3
  %0 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fs_private.i, align 4
  %dentry1 = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30, i32 1
  %2 = ptrtoint ptr %dentry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dentry1, align 4
  %call2 = tail call ptr @dget_parent(ptr noundef %3) #9
  %d_inode.i = getelementptr inbounds %struct.dentry, ptr %call2, i32 0, i32 5
  %4 = ptrtoint ptr %d_inode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %d_inode.i, align 8
  %mntfh = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 27
  %6 = ptrtoint ptr %mntfh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mntfh, align 4
  %fattr = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 30, i32 2
  %8 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fattr, align 4
  %call5 = tail call ptr @nfs4_proc_lookup_mountpoint(ptr noundef %5, ptr noundef %3, ptr noundef %7, ptr noundef %9) #9
  tail call void @dput(ptr noundef %call2) #9
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %cl_auth = getelementptr inbounds %struct.rpc_clnt, ptr %call5, i32 0, i32 11
  %11 = ptrtoint ptr %cl_auth to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cl_auth, align 4
  %au_flavor = getelementptr inbounds %struct.rpc_auth, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %au_flavor to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %au_flavor, align 4
  %selected_flavor = getelementptr inbounds %struct.nfs_fs_context, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %selected_flavor to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %selected_flavor, align 4
  %16 = ptrtoint ptr %fattr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fattr, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %and = and i32 %19, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end
  %20 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fs_private.i, align 4
  %call38.i.i.i.i = tail call ptr @__alloc_pages(i32 noundef 3264, i32 noundef 0, i32 noundef 0, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then10.if.end13_crit_edge, label %if.end.i

if.then10.if.end13_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i:                                         ; preds = %if.then10
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 46152, i32 noundef 3264, i32 noundef 4) #12
  %tobool3.not.i = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.out_free.i_crit_edge, label %if.end5.i

if.end.i.out_free.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free.i

if.end5.i:                                        ; preds = %if.end.i
  %dentry6.i = getelementptr inbounds %struct.nfs_fs_context, ptr %21, i32 0, i32 30, i32 1
  %22 = ptrtoint ptr %dentry6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dentry6.i, align 4
  %call7.i = tail call ptr @dget_parent(ptr noundef %23) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %24 = load i32, ptr @nfs_debug, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.end5.i.do.end16.i_crit_edge, label %do.end.i, !prof !30

if.end5.i.do.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16.i

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %23) #13
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end.i, %if.end5.i.do.end16.i_crit_edge
  %d_inode.i.i = getelementptr inbounds %struct.dentry, ptr %call7.i, i32 0, i32 5
  %25 = ptrtoint ptr %d_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %d_inode.i.i, align 8
  %d_name.i = getelementptr inbounds %struct.dentry, ptr %23, i32 0, i32 4
  %call18.i = tail call i32 @nfs4_proc_fs_locations(ptr noundef %call5, ptr noundef %26, ptr noundef %d_name.i, ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull %call38.i.i.i.i) #9
  tail call void @dput(ptr noundef %call7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp.not.i = icmp eq i32 %call18.i, 0
  br i1 %cmp.not.i, label %if.end20.i, label %do.end16.i.out_free_2.i_crit_edge

do.end16.i.out_free_2.i_crit_edge:                ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

if.end20.i:                                       ; preds = %do.end16.i
  %nlocations.i = getelementptr inbounds %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %nlocations.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nlocations.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp21.i = icmp slt i32 %28, 1
  br i1 %cmp21.i, label %if.end20.i.out_free_2.i_crit_edge, label %lor.lhs.false.i

if.end20.i.out_free_2.i_crit_edge:                ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

lor.lhs.false.i:                                  ; preds = %if.end20.i
  %fs_path.i = getelementptr inbounds %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %fs_path.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fs_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp22.i = icmp eq i32 %30, 0
  br i1 %cmp22.i, label %lor.lhs.false.i.out_free_2.i_crit_edge, label %do.body.i.i

lor.lhs.false.i.out_free_2.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

do.body.i.i:                                      ; preds = %lor.lhs.false.i
  %31 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fs_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %33 = load i32, ptr @nfs_debug, align 4
  %and.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.do.end9.i.i_crit_edge, label %do.end.i.i, !prof !30

do.body.i.i.do.end9.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end9.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dentry.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %32, i32 0, i32 30, i32 1
  %34 = ptrtoint ptr %dentry.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dentry.i.i, align 4
  %call6.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %35) #13
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end9.i.i_crit_edge
  %dentry11.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %32, i32 0, i32 30, i32 1
  %36 = ptrtoint ptr %dentry11.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dentry11.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 4096) #14
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %do.end9.i.i.out_free_2.i_crit_edge, label %if.end.i.i.i

do.end9.i.i.out_free_2.i_crit_edge:               ; preds = %do.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

if.end.i.i.i:                                     ; preds = %do.end9.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %limit.i.i.i.i) #9
  %39 = ptrtoint ptr %limit.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -1 to ptr), ptr %limit.i.i.i.i, align 4, !annotation !37
  %call.i.i.i.i = call ptr @nfs_path(ptr noundef nonnull %limit.i.i.i.i, ptr noundef %37, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 4096, i32 noundef 1) #9
  %cmp.i.i.i.i.i = icmp ugt ptr %call.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.i.if.end4.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end.i.i.i.if.end4.i.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i.i
  %40 = ptrtoint ptr %limit.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %limit.i.i.i.i, align 4
  %42 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %call.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 91, i8 %43)
  %cmp.i1.i.i.i.i = icmp eq i8 %43, 91
  br i1 %cmp.i1.i.i.i.i, label %if.then.i.i.i.i.i, label %if.else.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  %call.i.i.i.i.i = call ptr @strchr(ptr noundef %call.i.i.i.i, i32 noundef 93) #9
  %cmp2.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %cmp2.not.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.i.i.i.if.end4.i.i.i.i_crit_edge:      ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i.i.i.i
  %incdec.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 1
  %cmp4.i.i.i.i.i = icmp ult ptr %incdec.ptr.i.i.i.i.i, %41
  br i1 %cmp4.i.i.i.i.i, label %land.lhs.true6.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.if.end4.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

land.lhs.true6.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %44 = ptrtoint ptr %incdec.ptr.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %incdec.ptr.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %45)
  %cmp8.i.i.i.i.i = icmp eq i8 %45, 58
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %call.i.i.i.i.i, i32 2
  br i1 %cmp8.i.i.i.i.i, label %land.lhs.true6.i.i.i.i.i.nfs_path_component.exit.i.i.i.i_crit_edge, label %land.lhs.true6.i.i.i.i.i.if.end4.i.i.i.i_crit_edge

land.lhs.true6.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %land.lhs.true6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

land.lhs.true6.i.i.i.i.i.nfs_path_component.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true6.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_path_component.exit.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i.i.i.i
  %call11.i.i.i.i.i = call ptr @strchr(ptr noundef %call.i.i.i.i, i32 noundef 58) #9
  %cmp12.not.i.i.i.i.i = icmp ne ptr %call11.i.i.i.i.i, null
  %cmp15.i.i.i.i.i = icmp ult ptr %call11.i.i.i.i.i, %41
  %or.cond.i.i.i.i.i = and i1 %cmp12.not.i.i.i.i.i, %cmp15.i.i.i.i.i
  %add.ptr18.i.i.i.i.i = getelementptr i8, ptr %call11.i.i.i.i.i, i32 1
  br i1 %or.cond.i.i.i.i.i, label %if.else.i.i.i.i.i.nfs_path_component.exit.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end4.i.i.i.i_crit_edge

if.else.i.i.i.i.i.if.end4.i.i.i.i_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.else.i.i.i.i.i.nfs_path_component.exit.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_path_component.exit.i.i.i.i

nfs_path_component.exit.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.nfs_path_component.exit.i.i.i.i_crit_edge, %land.lhs.true6.i.i.i.i.i.nfs_path_component.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %land.lhs.true6.i.i.i.i.i.nfs_path_component.exit.i.i.i.i_crit_edge ], [ %add.ptr18.i.i.i.i.i, %if.else.i.i.i.i.i.nfs_path_component.exit.i.i.i.i_crit_edge ]
  %tobool.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %nfs_path_component.exit.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %nfs_path_component.exit.i.i.i.i.nfs4_path.exit.i.i.i_crit_edge

nfs_path_component.exit.i.i.i.i.nfs4_path.exit.i.i.i_crit_edge: ; preds = %nfs_path_component.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_path.exit.i.i.i

nfs_path_component.exit.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %nfs_path_component.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %nfs_path_component.exit.i.i.i.i.if.end4.i.i.i.i_crit_edge, %if.else.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %land.lhs.true6.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %if.then.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %if.end.i.i.i.if.end4.i.i.i.i_crit_edge
  br label %nfs4_path.exit.i.i.i

nfs4_path.exit.i.i.i:                             ; preds = %if.end4.i.i.i.i, %nfs_path_component.exit.i.i.i.i.nfs4_path.exit.i.i.i_crit_edge
  %retval.1.i.i.i.i = phi ptr [ %call.i.i.i.i, %if.end4.i.i.i.i ], [ %retval.0.i.i.i.i.i, %nfs_path_component.exit.i.i.i.i.nfs4_path.exit.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %limit.i.i.i.i) #9
  %cmp.i.i.i.i = icmp ugt ptr %retval.1.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %nfs4_path.exit.i.i.i.nfs4_validate_fspath.exit.i.i_crit_edge, label %if.end5.i.i.i

nfs4_path.exit.i.i.i.nfs4_validate_fspath.exit.i.i_crit_edge: ; preds = %nfs4_path.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_validate_fspath.exit.i.i

if.end5.i.i.i:                                    ; preds = %nfs4_path.exit.i.i.i
  %46 = ptrtoint ptr %fs_path.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fs_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp16.not.i.i.i.i.i = icmp eq i32 %47, 0
  br i1 %cmp16.not.i.i.i.i.i, label %if.end5.i.i.i.if.end8.i.i.i.i.i_crit_edge, label %if.end5.i.i.i.for.body.i.i.i.i.i_crit_edge

if.end5.i.i.i.for.body.i.i.i.i.i_crit_edge:       ; preds = %if.end5.i.i.i
  br label %for.body.i.i.i.i.i

if.end5.i.i.i.if.end8.i.i.i.i.i_crit_edge:        ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i.i.i

for.body.i.i.i.i.i:                               ; preds = %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge, %if.end5.i.i.i.for.body.i.i.i.i.i_crit_edge
  %i.018.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %if.end5.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %len.017.i.i.i.i.i = phi i32 [ %len.1.i.i.i.i.i, %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge ], [ 0, %if.end5.i.i.i.for.body.i.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 2, i32 1, i32 %i.018.i.i.i.i.i
  %48 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %49)
  %cmp2.i.i.i.i.i = icmp ugt i32 %49, 255
  %add.i.i.i.i.i = add i32 %len.017.i.i.i.i.i, 1
  %add4.i.i.i.i.i = add i32 %add.i.i.i.i.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add4.i.i.i.i.i)
  %cmp5.i.i.i.i.i = icmp slt i32 %add4.i.i.i.i.i, 4097
  %not.cmp2.i.i.i.i.i = xor i1 %cmp2.i.i.i.i.i, true
  %50 = select i1 %not.cmp2.i.i.i.i.i, i1 %cmp5.i.i.i.i.i, i1 false
  br i1 %50, label %for.inc.i.i.i.i.i, label %for.body.i.i.i.i.i.if.then.i40.i.i.i_crit_edge

for.body.i.i.i.i.i.if.then.i40.i.i.i_crit_edge:   ; preds = %for.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i40.i.i.i

for.inc.i.i.i.i.i:                                ; preds = %for.body.i.i.i.i.i
  %len.1.i.i.i.i.i = select i1 %cmp2.i.i.i.i.i, i32 %len.017.i.i.i.i.i, i32 %add4.i.i.i.i.i
  %inc.i.i.i.i.i = add nuw i32 %i.018.i.i.i.i.i, 1
  %exitcond.not.i.i.i.i.i = icmp eq i32 %inc.i.i.i.i.i, %47
  br i1 %exitcond.not.i.i.i.i.i, label %nfs4_pathname_len.exit.i.i.i.i, label %for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge

for.inc.i.i.i.i.i.for.body.i.i.i.i.i_crit_edge:   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i.i

nfs4_pathname_len.exit.i.i.i.i:                   ; preds = %for.inc.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.i.i.i.i.i)
  %cmp.i39.i.i.i = icmp slt i32 %len.1.i.i.i.i.i, 0
  br i1 %cmp.i39.i.i.i, label %nfs4_pathname_len.exit.i.i.i.i.if.then.i40.i.i.i_crit_edge, label %nfs4_pathname_len.exit.i.i.i.i.if.end8.i.i.i.i.i_crit_edge

nfs4_pathname_len.exit.i.i.i.i.if.end8.i.i.i.i.i_crit_edge: ; preds = %nfs4_pathname_len.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i.i.i.i

nfs4_pathname_len.exit.i.i.i.i.if.then.i40.i.i.i_crit_edge: ; preds = %nfs4_pathname_len.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i40.i.i.i

if.then.i40.i.i.i:                                ; preds = %nfs4_pathname_len.exit.i.i.i.i.if.then.i40.i.i.i_crit_edge, %for.body.i.i.i.i.i.if.then.i40.i.i.i_crit_edge
  %retval.0.i28.i.i.i.i = phi i32 [ %len.1.i.i.i.i.i, %nfs4_pathname_len.exit.i.i.i.i.if.then.i40.i.i.i_crit_edge ], [ -36, %for.body.i.i.i.i.i.if.then.i40.i.i.i_crit_edge ]
  %51 = inttoptr i32 %retval.0.i28.i.i.i.i to ptr
  br label %nfs4_pathname_string.exit.i.i.i

if.end8.i.i.i.i.i:                                ; preds = %nfs4_pathname_len.exit.i.i.i.i.if.end8.i.i.i.i.i_crit_edge, %if.end5.i.i.i.if.end8.i.i.i.i.i_crit_edge
  %retval.0.i32.i.i.i.i = phi i32 [ %len.1.i.i.i.i.i, %nfs4_pathname_len.exit.i.i.i.i.if.end8.i.i.i.i.i_crit_edge ], [ 0, %if.end5.i.i.i.if.end8.i.i.i.i.i_crit_edge ]
  %add.i.i.i.i = add nuw i32 %retval.0.i32.i.i.i.i, 1
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i.i, i32 noundef 3264) #12
  %tobool.not.i43.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i43.i.i.i, label %nfs4_validate_fspath.exit.i.thread.i, label %for.cond.preheader.i.i.i.i

nfs4_validate_fspath.exit.i.thread.i:             ; preds = %if.end8.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %out_free_2.i

for.cond.preheader.i.i.i.i:                       ; preds = %if.end8.i.i.i.i.i
  %52 = ptrtoint ptr %fs_path.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fs_path.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp633.not.i.i.i.i = icmp eq i32 %53, 0
  br i1 %cmp633.not.i.i.i.i, label %for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge

for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  br label %for.body.i.i.i.i

for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge
  %i.035.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %p.034.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %call9.i.i.i.i.i, %for.cond.preheader.i.i.i.i.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 2, i32 1, i32 %i.035.i.i.i.i
  %incdec.ptr.i.i.i.i = getelementptr i8, ptr %p.034.i.i.i.i, i32 1
  %54 = ptrtoint ptr %p.034.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 47, ptr %p.034.i.i.i.i, align 1
  %data.i.i.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 2, i32 1, i32 %i.035.i.i.i.i, i32 1
  %55 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i.i.i, align 4
  %57 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i.i.i, align 8
  %59 = call ptr @memcpy(ptr %incdec.ptr.i.i.i.i, ptr %56, i32 %58)
  %add.ptr.i.i.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i.i, i32 %58
  %inc.i.i.i.i = add nuw i32 %i.035.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %53
  br i1 %exitcond.not.i.i.i.i, label %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i.i

for.body.i.i.i.i.for.end.i.i.i.i_crit_edge:       ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i.i

for.end.i.i.i.i:                                  ; preds = %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge, %for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge
  %p.0.lcssa.i.i.i.i = phi ptr [ %call9.i.i.i.i.i, %for.cond.preheader.i.i.i.i.for.end.i.i.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %for.body.i.i.i.i.for.end.i.i.i.i_crit_edge ]
  %60 = ptrtoint ptr %p.0.lcssa.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %p.0.lcssa.i.i.i.i, align 1
  %phi.cast.i.i.i = and i32 %retval.0.i32.i.i.i.i, 65535
  br label %nfs4_pathname_string.exit.i.i.i

nfs4_pathname_string.exit.i.i.i:                  ; preds = %for.end.i.i.i.i, %if.then.i40.i.i.i
  %len.0.i.i.i = phi i32 [ %phi.cast.i.i.i, %for.end.i.i.i.i ], [ 65535, %if.then.i40.i.i.i ]
  %retval.0.i.i.i.i = phi ptr [ %call9.i.i.i.i.i, %for.end.i.i.i.i ], [ %51, %if.then.i40.i.i.i ]
  %cmp.i44.i.i.i = icmp ugt ptr %retval.0.i.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44.i.i.i, label %nfs4_pathname_string.exit.i.i.i.nfs4_validate_fspath.exit.i.i_crit_edge, label %if.end11.i.i.i

nfs4_pathname_string.exit.i.i.i.nfs4_validate_fspath.exit.i.i_crit_edge: ; preds = %nfs4_pathname_string.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_validate_fspath.exit.i.i

if.end11.i.i.i:                                   ; preds = %nfs4_pathname_string.exit.i.i.i
  %call12.i.i.i = call i32 @strncmp(ptr noundef %retval.1.i.i.i.i, ptr noundef %retval.0.i.i.i.i, i32 noundef %len.0.i.i.i) #9
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  call void @kfree(ptr noundef %retval.0.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end11.i.i.i.for.cond.preheader.i.i_crit_edge, label %do.body.i.i.i

if.end11.i.i.i.for.cond.preheader.i.i_crit_edge:  ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

do.body.i.i.i:                                    ; preds = %if.end11.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %61 = load i32, ptr @nfs_debug, align 4
  %and.i.i.i = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %do.body.i.i.i.out_free_2.i_crit_edge, label %do.end.i.i.i, !prof !30

do.body.i.i.i.out_free_2.i_crit_edge:             ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

do.end.i.i.i:                                     ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %export_path.i.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %32, i32 0, i32 26, i32 3
  %62 = ptrtoint ptr %export_path.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %export_path.i.i.i, align 4
  %call20.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %retval.1.i.i.i.i, ptr noundef %63) #13
  br label %out_free_2.i

nfs4_validate_fspath.exit.i.i:                    ; preds = %nfs4_pathname_string.exit.i.i.i.nfs4_validate_fspath.exit.i.i_crit_edge, %nfs4_path.exit.i.i.i.nfs4_validate_fspath.exit.i.i_crit_edge
  %retval.1.i.i.sink.i.i = phi ptr [ %retval.1.i.i.i.i, %nfs4_path.exit.i.i.i.nfs4_validate_fspath.exit.i.i_crit_edge ], [ %retval.0.i.i.i.i, %nfs4_pathname_string.exit.i.i.i.nfs4_validate_fspath.exit.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  %64 = ptrtoint ptr %retval.1.i.i.sink.i.i to i32
  %cmp13.i.i = icmp slt ptr %retval.1.i.i.sink.i.i, null
  br i1 %cmp13.i.i, label %nfs4_validate_fspath.exit.i.i.out_free_2.i_crit_edge, label %nfs4_validate_fspath.exit.i.i.for.cond.preheader.i.i_crit_edge

nfs4_validate_fspath.exit.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %nfs4_validate_fspath.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i.i

nfs4_validate_fspath.exit.i.i.out_free_2.i_crit_edge: ; preds = %nfs4_validate_fspath.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

for.cond.preheader.i.i:                           ; preds = %nfs4_validate_fspath.exit.i.i.for.cond.preheader.i.i_crit_edge, %if.end11.i.i.i.for.cond.preheader.i.i_crit_edge
  %65 = ptrtoint ptr %nlocations.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nlocations.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp17129.i.i = icmp sgt i32 %66, 0
  br i1 %cmp17129.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.out_free_2.i_crit_edge

for.cond.preheader.i.i.out_free_2.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %source30.i.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 10
  %net_ns.i.i.i = getelementptr inbounds %struct.fs_context, ptr %fc, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %error.0137.i.i = phi i32 [ -2, %for.body.lr.ph.i.i ], [ %error.1.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %loc.0130.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 4, i32 %loc.0130.i.i
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp21.i.i = icmp eq i32 %68, 0
  br i1 %cmp21.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false22.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

lor.lhs.false22.i.i:                              ; preds = %for.body.i.i
  %rootpath.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 4, i32 %loc.0130.i.i, i32 2
  %69 = ptrtoint ptr %rootpath.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rootpath.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp23.i.i = icmp eq i32 %70, 0
  br i1 %cmp23.i.i, label %lor.lhs.false22.i.i.for.inc.i.i_crit_edge, label %if.end25.i.i

lor.lhs.false22.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end25.i.i:                                     ; preds = %lor.lhs.false22.i.i
  %71 = ptrtoint ptr %fs_private.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fs_private.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end25.i.i
  %s.0193.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end25.i.i ]
  %len.0192.i.i.i = phi i32 [ %75, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end25.i.i ]
  %arrayidx.i.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 4, i32 %loc.0130.i.i, i32 1, i32 %s.0193.i.i.i
  %73 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i.i, align 8
  %75 = call i32 @llvm.umax.i32(i32 %74, i32 %len.0192.i.i.i) #9
  %inc.i.i.i = add nuw i32 %s.0193.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %68
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %nfs_server.i.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %72, i32 0, i32 26
  %hostname.i.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %72, i32 0, i32 26, i32 2
  %76 = ptrtoint ptr %hostname.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hostname.i.i.i, align 4
  call void @kfree(ptr noundef %77) #9
  %add.i.i.i = add i32 %75, 1
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3264) #12
  %78 = ptrtoint ptr %hostname.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call9.i.i.i.i, ptr %hostname.i.i.i, align 4
  %tobool.not.i55.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i55.i.i, label %for.end.i.i.i.for.inc.i.i_crit_edge, label %if.end10.i.i.i

for.end.i.i.i.for.inc.i.i_crit_edge:              ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end10.i.i.i:                                   ; preds = %for.end.i.i.i
  %export_path_len.i.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %72, i32 0, i32 26, i32 8
  %79 = ptrtoint ptr %rootpath.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %rootpath.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp16.not.i.i.i56.i.i = icmp eq i32 %80, 0
  br i1 %cmp16.not.i.i.i56.i.i, label %if.end10.i.i.i.if.end.i172.i.i.i_crit_edge, label %if.end10.i.i.i.for.body.i.i.i65.i.i_crit_edge

if.end10.i.i.i.for.body.i.i.i65.i.i_crit_edge:    ; preds = %if.end10.i.i.i
  br label %for.body.i.i.i65.i.i

if.end10.i.i.i.if.end.i172.i.i.i_crit_edge:       ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i172.i.i.i

for.body.i.i.i65.i.i:                             ; preds = %for.inc.i.i.i69.i.i.for.body.i.i.i65.i.i_crit_edge, %if.end10.i.i.i.for.body.i.i.i65.i.i_crit_edge
  %i.018.i.i.i57.i.i = phi i32 [ %inc.i.i.i67.i.i, %for.inc.i.i.i69.i.i.for.body.i.i.i65.i.i_crit_edge ], [ 0, %if.end10.i.i.i.for.body.i.i.i65.i.i_crit_edge ]
  %len.017.i.i.i58.i.i = phi i32 [ %len.1.i.i.i66.i.i, %for.inc.i.i.i69.i.i.for.body.i.i.i65.i.i_crit_edge ], [ 0, %if.end10.i.i.i.for.body.i.i.i65.i.i_crit_edge ]
  %arrayidx.i.i.i59.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 4, i32 %loc.0130.i.i, i32 2, i32 1, i32 %i.018.i.i.i57.i.i
  %81 = ptrtoint ptr %arrayidx.i.i.i59.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i.i59.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %82)
  %cmp2.i.i.i60.i.i = icmp ugt i32 %82, 255
  %add.i.i.i61.i.i = add i32 %len.017.i.i.i58.i.i, 1
  %add4.i.i.i62.i.i = add i32 %add.i.i.i61.i.i, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %add4.i.i.i62.i.i)
  %cmp5.i.i.i63.i.i = icmp slt i32 %add4.i.i.i62.i.i, 4097
  %not.cmp2.i.i.i64.i.i = xor i1 %cmp2.i.i.i60.i.i, true
  %83 = select i1 %not.cmp2.i.i.i64.i.i, i1 %cmp5.i.i.i63.i.i, i1 false
  br i1 %83, label %for.inc.i.i.i69.i.i, label %for.body.i.i.i65.i.i.if.then.i171.i.i.i_crit_edge

for.body.i.i.i65.i.i.if.then.i171.i.i.i_crit_edge: ; preds = %for.body.i.i.i65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i171.i.i.i

for.inc.i.i.i69.i.i:                              ; preds = %for.body.i.i.i65.i.i
  %len.1.i.i.i66.i.i = select i1 %cmp2.i.i.i60.i.i, i32 %len.017.i.i.i58.i.i, i32 %add4.i.i.i62.i.i
  %inc.i.i.i67.i.i = add nuw i32 %i.018.i.i.i57.i.i, 1
  %exitcond.not.i.i.i68.i.i = icmp eq i32 %inc.i.i.i67.i.i, %80
  br i1 %exitcond.not.i.i.i68.i.i, label %nfs4_pathname_len.exit.i.i70.i.i, label %for.inc.i.i.i69.i.i.for.body.i.i.i65.i.i_crit_edge

for.inc.i.i.i69.i.i.for.body.i.i.i65.i.i_crit_edge: ; preds = %for.inc.i.i.i69.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i65.i.i

nfs4_pathname_len.exit.i.i70.i.i:                 ; preds = %for.inc.i.i.i69.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.i.i.i66.i.i)
  %cmp.i170.i.i.i = icmp slt i32 %len.1.i.i.i66.i.i, 0
  br i1 %cmp.i170.i.i.i, label %nfs4_pathname_len.exit.i.i70.i.i.if.then.i171.i.i.i_crit_edge, label %nfs4_pathname_len.exit.i.i70.i.i.if.end.i172.i.i.i_crit_edge

nfs4_pathname_len.exit.i.i70.i.i.if.end.i172.i.i.i_crit_edge: ; preds = %nfs4_pathname_len.exit.i.i70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i172.i.i.i

nfs4_pathname_len.exit.i.i70.i.i.if.then.i171.i.i.i_crit_edge: ; preds = %nfs4_pathname_len.exit.i.i70.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i171.i.i.i

if.then.i171.i.i.i:                               ; preds = %nfs4_pathname_len.exit.i.i70.i.i.if.then.i171.i.i.i_crit_edge, %for.body.i.i.i65.i.i.if.then.i171.i.i.i_crit_edge
  %retval.0.i28.i.i71.i.i = phi i32 [ %len.1.i.i.i66.i.i, %nfs4_pathname_len.exit.i.i70.i.i.if.then.i171.i.i.i_crit_edge ], [ -36, %for.body.i.i.i65.i.i.if.then.i171.i.i.i_crit_edge ]
  %84 = inttoptr i32 %retval.0.i28.i.i71.i.i to ptr
  br label %nfs4_pathname_string.exit.i114.i.i

if.end.i172.i.i.i:                                ; preds = %nfs4_pathname_len.exit.i.i70.i.i.if.end.i172.i.i.i_crit_edge, %if.end10.i.i.i.if.end.i172.i.i.i_crit_edge
  %retval.0.i32.i.i72.i.i = phi i32 [ %len.1.i.i.i66.i.i, %nfs4_pathname_len.exit.i.i70.i.i.if.end.i172.i.i.i_crit_edge ], [ 0, %if.end10.i.i.i.if.end.i172.i.i.i_crit_edge ]
  %conv.i.i.i.i = trunc i32 %retval.0.i32.i.i72.i.i to i16
  %85 = ptrtoint ptr %export_path_len.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv.i.i.i.i, ptr %export_path_len.i.i.i, align 2
  %add.i.i73.i.i = add nuw i32 %retval.0.i32.i.i72.i.i, 1
  %call9.i.i.i95.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i73.i.i, i32 noundef 3264) #12
  %tobool.not.i.i98.i.i = icmp eq ptr %call9.i.i.i95.i.i, null
  br i1 %tobool.not.i.i98.i.i, label %if.end.i172.i.i.i.if.then14.i.i.i_crit_edge, label %for.cond.preheader.i.i101.i.i

if.end.i172.i.i.i.if.then14.i.i.i_crit_edge:      ; preds = %if.end.i172.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i.i.i

for.cond.preheader.i.i101.i.i:                    ; preds = %if.end.i172.i.i.i
  %86 = ptrtoint ptr %rootpath.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %rootpath.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp633.not.i.i100.i.i = icmp eq i32 %87, 0
  br i1 %cmp633.not.i.i100.i.i, label %for.cond.preheader.i.i101.i.i.for.end.i.i112.i.i_crit_edge, label %for.cond.preheader.i.i101.i.i.for.body.i.i110.i.i_crit_edge

for.cond.preheader.i.i101.i.i.for.body.i.i110.i.i_crit_edge: ; preds = %for.cond.preheader.i.i101.i.i
  br label %for.body.i.i110.i.i

for.cond.preheader.i.i101.i.i.for.end.i.i112.i.i_crit_edge: ; preds = %for.cond.preheader.i.i101.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i112.i.i

for.body.i.i110.i.i:                              ; preds = %for.body.i.i110.i.i.for.body.i.i110.i.i_crit_edge, %for.cond.preheader.i.i101.i.i.for.body.i.i110.i.i_crit_edge
  %i.035.i.i102.i.i = phi i32 [ %inc.i.i108.i.i, %for.body.i.i110.i.i.for.body.i.i110.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i101.i.i.for.body.i.i110.i.i_crit_edge ]
  %p.034.i.i103.i.i = phi ptr [ %add.ptr.i.i107.i.i, %for.body.i.i110.i.i.for.body.i.i110.i.i_crit_edge ], [ %call9.i.i.i95.i.i, %for.cond.preheader.i.i101.i.i.for.body.i.i110.i.i_crit_edge ]
  %arrayidx.i.i104.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 4, i32 %loc.0130.i.i, i32 2, i32 1, i32 %i.035.i.i102.i.i
  %incdec.ptr.i.i105.i.i = getelementptr i8, ptr %p.034.i.i103.i.i, i32 1
  %88 = ptrtoint ptr %p.034.i.i103.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 47, ptr %p.034.i.i103.i.i, align 1
  %data.i.i106.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 4, i32 %loc.0130.i.i, i32 2, i32 1, i32 %i.035.i.i102.i.i, i32 1
  %89 = ptrtoint ptr %data.i.i106.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i106.i.i, align 8
  %91 = ptrtoint ptr %arrayidx.i.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i104.i.i, align 4
  %93 = call ptr @memcpy(ptr %incdec.ptr.i.i105.i.i, ptr %90, i32 %92)
  %add.ptr.i.i107.i.i = getelementptr i8, ptr %incdec.ptr.i.i105.i.i, i32 %92
  %inc.i.i108.i.i = add nuw i32 %i.035.i.i102.i.i, 1
  %exitcond.not.i.i109.i.i = icmp eq i32 %inc.i.i108.i.i, %87
  br i1 %exitcond.not.i.i109.i.i, label %for.body.i.i110.i.i.for.end.i.i112.i.i_crit_edge, label %for.body.i.i110.i.i.for.body.i.i110.i.i_crit_edge

for.body.i.i110.i.i.for.body.i.i110.i.i_crit_edge: ; preds = %for.body.i.i110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i110.i.i

for.body.i.i110.i.i.for.end.i.i112.i.i_crit_edge: ; preds = %for.body.i.i110.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i112.i.i

for.end.i.i112.i.i:                               ; preds = %for.body.i.i110.i.i.for.end.i.i112.i.i_crit_edge, %for.cond.preheader.i.i101.i.i.for.end.i.i112.i.i_crit_edge
  %p.0.lcssa.i.i111.i.i = phi ptr [ %call9.i.i.i95.i.i, %for.cond.preheader.i.i101.i.i.for.end.i.i112.i.i_crit_edge ], [ %add.ptr.i.i107.i.i, %for.body.i.i110.i.i.for.end.i.i112.i.i_crit_edge ]
  %94 = ptrtoint ptr %p.0.lcssa.i.i111.i.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %p.0.lcssa.i.i111.i.i, align 1
  br label %nfs4_pathname_string.exit.i114.i.i

nfs4_pathname_string.exit.i114.i.i:               ; preds = %for.end.i.i112.i.i, %if.then.i171.i.i.i
  %retval.0.i.i113.i.i = phi ptr [ %84, %if.then.i171.i.i.i ], [ %call9.i.i.i95.i.i, %for.end.i.i112.i.i ]
  %cmp.i174.i.i.i = icmp ugt ptr %retval.0.i.i113.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174.i.i.i, label %nfs4_pathname_string.exit.i114.i.i.if.then14.i.i.i_crit_edge, label %if.end16.i.i.i

nfs4_pathname_string.exit.i114.i.i.if.then14.i.i.i_crit_edge: ; preds = %nfs4_pathname_string.exit.i114.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %nfs4_pathname_string.exit.i114.i.i.if.then14.i.i.i_crit_edge, %if.end.i172.i.i.i.if.then14.i.i.i_crit_edge
  %retval.0.i181.i.i.i = phi ptr [ %retval.0.i.i113.i.i, %nfs4_pathname_string.exit.i114.i.i.if.then14.i.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i172.i.i.i.if.then14.i.i.i_crit_edge ]
  %95 = ptrtoint ptr %retval.0.i181.i.i.i to i32
  br label %try_location.exit.i.i

if.end16.i.i.i:                                   ; preds = %nfs4_pathname_string.exit.i114.i.i
  %export_path18.i.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %72, i32 0, i32 26, i32 3
  %96 = ptrtoint ptr %export_path18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %export_path18.i.i.i, align 4
  call void @kfree(ptr noundef %97) #9
  %98 = ptrtoint ptr %export_path18.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %retval.0.i.i113.i.i, ptr %export_path18.i.i.i, align 4
  %99 = ptrtoint ptr %export_path_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %export_path_len.i.i.i, align 2
  %conv.i.i.i = zext i16 %100 to i32
  %add24.i.i.i = add i32 %add.i.i.i, %conv.i.i.i
  %add25.i.i.i = add i32 %add24.i.i.i, 1
  %call9.i166.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add25.i.i.i, i32 noundef 3264) #12
  %tobool27.not.i.i.i = icmp eq ptr %call9.i166.i.i.i, null
  br i1 %tobool27.not.i.i.i, label %if.end16.i.i.i.for.inc.i.i_crit_edge, label %if.end29.i.i.i

if.end16.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end29.i.i.i:                                   ; preds = %if.end16.i.i.i
  %101 = ptrtoint ptr %source30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %source30.i.i.i, align 4
  call void @kfree(ptr noundef %102) #9
  %103 = ptrtoint ptr %source30.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call9.i166.i.i.i, ptr %source30.i.i.i, align 4
  %104 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp34194.not.i.i.i = icmp eq i32 %105, 0
  br i1 %cmp34194.not.i.i.i, label %if.end29.i.i.i.for.inc.i.i_crit_edge, label %for.body36.lr.ph.i.i.i

if.end29.i.i.i.for.inc.i.i_crit_edge:             ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.body36.lr.ph.i.i.i:                           ; preds = %if.end29.i.i.i
  %addrlen186.i.i.i = getelementptr inbounds %struct.nfs_fs_context, ptr %72, i32 0, i32 26, i32 1
  %sin6_port.i.i.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %nfs_server.i.i.i, i32 0, i32 1
  br label %for.body36.i.i.i

for.body36.i.i.i:                                 ; preds = %for.inc82.i.i.i.for.body36.i.i.i_crit_edge, %for.body36.lr.ph.i.i.i
  %ret.0196.i.i.i = phi i32 [ -2, %for.body36.lr.ph.i.i.i ], [ %ret.1.ph.i.i.i, %for.inc82.i.i.i.for.body36.i.i.i_crit_edge ]
  %s.1195.i.i.i = phi i32 [ 0, %for.body36.lr.ph.i.i.i ], [ %inc83.i.i.i, %for.inc82.i.i.i.for.body36.i.i.i_crit_edge ]
  %arrayidx39.i.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 4, i32 %loc.0130.i.i, i32 1, i32 %s.1195.i.i.i
  %data.i.i.i = getelementptr %struct.nfs4_fs_locations, ptr %call1.i.i.i, i32 0, i32 4, i32 %loc.0130.i.i, i32 1, i32 %s.1195.i.i.i, i32 1
  %106 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i, align 4
  %108 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx39.i.i.i, align 8
  %call41.i.i.i = call ptr @memchr(ptr noundef %107, i32 noundef 37, i32 noundef %109) #15
  %tobool42.not.i.i.i = icmp eq ptr %call41.i.i.i, null
  br i1 %tobool42.not.i.i.i, label %if.end44.i.i.i, label %for.body36.i.i.i.for.inc82.i.i.i_crit_edge

for.body36.i.i.i.for.inc82.i.i.i_crit_edge:       ; preds = %for.body36.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc82.i.i.i

if.end44.i.i.i:                                   ; preds = %for.body36.i.i.i
  %110 = ptrtoint ptr %net_ns.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %net_ns.i.i.i, align 4
  %call.i.i115.i.i = call i32 @rpc_pton(ptr noundef %111, ptr noundef %107, i32 noundef %109, ptr noundef %nfs_server.i.i.i, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i115.i.i)
  %cmp.i175.i.i.i = icmp eq i32 %call.i.i115.i.i, 0
  br i1 %cmp.i175.i.i.i, label %if.then.i176.i.i.i, label %if.end44.i.i.i.nfs_parse_server_name.exit.thread.i.i.i_crit_edge

if.end44.i.i.i.nfs_parse_server_name.exit.thread.i.i.i_crit_edge: ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_parse_server_name.exit.thread.i.i.i

if.then.i176.i.i.i:                               ; preds = %if.end44.i.i.i
  %call1.i.i.i.i = call i32 @rpc_uaddr2sockaddr(ptr noundef %111, ptr noundef %107, i32 noundef %109, ptr noundef %nfs_server.i.i.i, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp2.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %cmp2.i.i.i.i, label %nfs_parse_server_name.exit.i.i.i, label %if.then.i176.i.i.i.nfs_parse_server_name.exit.thread.i.i.i_crit_edge

if.then.i176.i.i.i.nfs_parse_server_name.exit.thread.i.i.i_crit_edge: ; preds = %if.then.i176.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs_parse_server_name.exit.thread.i.i.i

nfs_parse_server_name.exit.thread.i.i.i:          ; preds = %if.then.i176.i.i.i.nfs_parse_server_name.exit.thread.i.i.i_crit_edge, %if.end44.i.i.i.nfs_parse_server_name.exit.thread.i.i.i_crit_edge
  %ret.0.i.ph.i.i.i = phi i32 [ %call.i.i115.i.i, %if.end44.i.i.i.nfs_parse_server_name.exit.thread.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i176.i.i.i.nfs_parse_server_name.exit.thread.i.i.i_crit_edge ]
  %112 = ptrtoint ptr %addrlen186.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %ret.0.i.ph.i.i.i, ptr %addrlen186.i.i.i, align 4
  br label %if.end55.i.i.i

nfs_parse_server_name.exit.i.i.i:                 ; preds = %if.then.i176.i.i.i
  %call4.i.i.i.i = call i32 @nfs_dns_resolve_name(ptr noundef %111, ptr noundef %107, i32 noundef %109, ptr noundef %nfs_server.i.i.i, i32 noundef 128) #9
  %113 = call i32 @llvm.smax.i32(i32 %call4.i.i.i.i, i32 0) #9
  %114 = ptrtoint ptr %addrlen186.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %addrlen186.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i.i.i)
  %cmp52.i.i.i = icmp slt i32 %call4.i.i.i.i, 1
  br i1 %cmp52.i.i.i, label %nfs_parse_server_name.exit.i.i.i.for.inc82.i.i.i_crit_edge, label %nfs_parse_server_name.exit.i.i.i.if.end55.i.i.i_crit_edge

nfs_parse_server_name.exit.i.i.i.if.end55.i.i.i_crit_edge: ; preds = %nfs_parse_server_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55.i.i.i

nfs_parse_server_name.exit.i.i.i.for.inc82.i.i.i_crit_edge: ; preds = %nfs_parse_server_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc82.i.i.i

if.end55.i.i.i:                                   ; preds = %nfs_parse_server_name.exit.i.i.i.if.end55.i.i.i_crit_edge, %nfs_parse_server_name.exit.thread.i.i.i
  %115 = ptrtoint ptr %nfs_server.i.i.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %nfs_server.i.i.i, align 2
  %117 = zext i16 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.10)
  switch i16 %116, label %if.end55.i.i.i.rpc_set_port.exit.i.i.i_crit_edge [
    i16 2, label %if.end55.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge
    i16 10, label %if.end55.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge36
  ]

if.end55.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge36: ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i.i.i

if.end55.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge: ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i.i.i

if.end55.i.i.i.rpc_set_port.exit.i.i.i_crit_edge: ; preds = %if.end55.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_set_port.exit.i.i.i

sw.epilog.sink.split.i.i.i.i:                     ; preds = %if.end55.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge, %if.end55.i.i.i.sw.epilog.sink.split.i.i.i.i_crit_edge36
  %118 = ptrtoint ptr %sin6_port.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 2049, ptr %sin6_port.i.i.i.i, align 2
  br label %rpc_set_port.exit.i.i.i

rpc_set_port.exit.i.i.i:                          ; preds = %sw.epilog.sink.split.i.i.i.i, %if.end55.i.i.i.rpc_set_port.exit.i.i.i_crit_edge
  %119 = ptrtoint ptr %hostname.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hostname.i.i.i, align 4
  %121 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i.i.i, align 4
  %123 = ptrtoint ptr %arrayidx39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx39.i.i.i, align 8
  %125 = call ptr @memcpy(ptr %120, ptr %122, i32 %124)
  %126 = load ptr, ptr %hostname.i.i.i, align 4
  %127 = load i32, ptr %arrayidx39.i.i.i, align 8
  %arrayidx64.i.i.i = getelementptr i8, ptr %126, i32 %127
  %128 = ptrtoint ptr %arrayidx64.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %arrayidx64.i.i.i, align 1
  %129 = load ptr, ptr %data.i.i.i, align 4
  %130 = load i32, ptr %arrayidx39.i.i.i, align 8
  %131 = call ptr @memcpy(ptr %call9.i166.i.i.i, ptr %129, i32 %130)
  %add.ptr.i.i.i = getelementptr i8, ptr %call9.i166.i.i.i, i32 %130
  %incdec.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 1
  %132 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 58, ptr %add.ptr.i.i.i, align 1
  %133 = ptrtoint ptr %export_path18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %export_path18.i.i.i, align 4
  %135 = ptrtoint ptr %export_path_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %export_path_len.i.i.i, align 2
  %conv72.i.i.i = zext i16 %136 to i32
  %137 = call ptr @memcpy(ptr %incdec.ptr.i.i.i, ptr %134, i32 %conv72.i.i.i)
  %138 = load i16, ptr %export_path_len.i.i.i, align 2
  %conv75.i.i.i = zext i16 %138 to i32
  %add.ptr76.i.i.i = getelementptr i8, ptr %incdec.ptr.i.i.i, i32 %conv75.i.i.i
  %139 = ptrtoint ptr %add.ptr76.i.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %add.ptr76.i.i.i, align 1
  %call77.i.i.i = call i32 @nfs4_get_referral_tree(ptr noundef %fc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i.i.i)
  %cmp78.i.i.i = icmp eq i32 %call77.i.i.i, 0
  br i1 %cmp78.i.i.i, label %rpc_set_port.exit.i.i.i.out_free_2.i_crit_edge, label %rpc_set_port.exit.i.i.i.for.inc82.i.i.i_crit_edge

rpc_set_port.exit.i.i.i.for.inc82.i.i.i_crit_edge: ; preds = %rpc_set_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc82.i.i.i

rpc_set_port.exit.i.i.i.out_free_2.i_crit_edge:   ; preds = %rpc_set_port.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

for.inc82.i.i.i:                                  ; preds = %rpc_set_port.exit.i.i.i.for.inc82.i.i.i_crit_edge, %nfs_parse_server_name.exit.i.i.i.for.inc82.i.i.i_crit_edge, %for.body36.i.i.i.for.inc82.i.i.i_crit_edge
  %ret.1.ph.i.i.i = phi i32 [ %call77.i.i.i, %rpc_set_port.exit.i.i.i.for.inc82.i.i.i_crit_edge ], [ %ret.0196.i.i.i, %nfs_parse_server_name.exit.i.i.i.for.inc82.i.i.i_crit_edge ], [ %ret.0196.i.i.i, %for.body36.i.i.i.for.inc82.i.i.i_crit_edge ]
  %inc83.i.i.i = add nuw i32 %s.1195.i.i.i, 1
  %140 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx.i.i, align 4
  %cmp34.i.i.i = icmp ult i32 %inc83.i.i.i, %141
  br i1 %cmp34.i.i.i, label %for.inc82.i.i.i.for.body36.i.i.i_crit_edge, label %for.inc82.i.i.i.try_location.exit.i.i_crit_edge

for.inc82.i.i.i.try_location.exit.i.i_crit_edge:  ; preds = %for.inc82.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %try_location.exit.i.i

for.inc82.i.i.i.for.body36.i.i.i_crit_edge:       ; preds = %for.inc82.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36.i.i.i

try_location.exit.i.i:                            ; preds = %for.inc82.i.i.i.try_location.exit.i.i_crit_edge, %if.then14.i.i.i
  %retval.2.i.i.i = phi i32 [ %95, %if.then14.i.i.i ], [ %ret.1.ph.i.i.i, %for.inc82.i.i.i.try_location.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i.i)
  %cmp27.i.i = icmp eq i32 %retval.2.i.i.i, 0
  br i1 %cmp27.i.i, label %try_location.exit.i.i.out_free_2.i_crit_edge, label %try_location.exit.i.i.for.inc.i.i_crit_edge

try_location.exit.i.i.for.inc.i.i_crit_edge:      ; preds = %try_location.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

try_location.exit.i.i.out_free_2.i_crit_edge:     ; preds = %try_location.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

for.inc.i.i:                                      ; preds = %try_location.exit.i.i.for.inc.i.i_crit_edge, %if.end29.i.i.i.for.inc.i.i_crit_edge, %if.end16.i.i.i.for.inc.i.i_crit_edge, %for.end.i.i.i.for.inc.i.i_crit_edge, %lor.lhs.false22.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %error.1.ph.i.i = phi i32 [ %retval.2.i.i.i, %try_location.exit.i.i.for.inc.i.i_crit_edge ], [ %error.0137.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %error.0137.i.i, %lor.lhs.false22.i.i.for.inc.i.i_crit_edge ], [ -2, %if.end29.i.i.i.for.inc.i.i_crit_edge ], [ -12, %if.end16.i.i.i.for.inc.i.i_crit_edge ], [ -12, %for.end.i.i.i.for.inc.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %loc.0130.i.i, 1
  %142 = ptrtoint ptr %nlocations.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %nlocations.i, align 16
  %cmp17.i.i = icmp slt i32 %inc.i.i, %143
  br i1 %cmp17.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.out_free_2.i_crit_edge

for.inc.i.i.out_free_2.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free_2.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

out_free_2.i:                                     ; preds = %for.inc.i.i.out_free_2.i_crit_edge, %try_location.exit.i.i.out_free_2.i_crit_edge, %rpc_set_port.exit.i.i.i.out_free_2.i_crit_edge, %for.cond.preheader.i.i.out_free_2.i_crit_edge, %nfs4_validate_fspath.exit.i.i.out_free_2.i_crit_edge, %do.end.i.i.i, %do.body.i.i.i.out_free_2.i_crit_edge, %nfs4_validate_fspath.exit.i.thread.i, %do.end9.i.i.out_free_2.i_crit_edge, %lor.lhs.false.i.out_free_2.i_crit_edge, %if.end20.i.out_free_2.i_crit_edge, %do.end16.i.out_free_2.i_crit_edge
  %err.0.i = phi i32 [ %call18.i, %do.end16.i.out_free_2.i_crit_edge ], [ -2, %if.end20.i.out_free_2.i_crit_edge ], [ -2, %lor.lhs.false.i.out_free_2.i_crit_edge ], [ %64, %nfs4_validate_fspath.exit.i.i.out_free_2.i_crit_edge ], [ -2, %do.body.i.i.i.out_free_2.i_crit_edge ], [ -2, %do.end.i.i.i ], [ -12, %do.end9.i.i.out_free_2.i_crit_edge ], [ -2, %for.cond.preheader.i.i.out_free_2.i_crit_edge ], [ -12, %nfs4_validate_fspath.exit.i.thread.i ], [ 0, %rpc_set_port.exit.i.i.i.out_free_2.i_crit_edge ], [ %error.1.ph.i.i, %for.inc.i.i.out_free_2.i_crit_edge ], [ 0, %try_location.exit.i.i.out_free_2.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #9
  br label %out_free.i

out_free.i:                                       ; preds = %out_free_2.i, %if.end.i.out_free.i_crit_edge
  %err.1.i = phi i32 [ %err.0.i, %out_free_2.i ], [ -12, %if.end.i.out_free.i_crit_edge ]
  call void @__free_pages(ptr noundef nonnull %call38.i.i.i.i, i32 noundef 0) #9
  br label %if.end13

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @nfs_do_submount(ptr noundef %fc) #9
  br label %if.end13

if.end13:                                         ; preds = %if.else, %out_free.i, %if.then10.if.end13_crit_edge
  %ret.0 = phi i32 [ %call12, %if.else ], [ %err.1.i, %out_free.i ], [ -12, %if.then10.if.end13_crit_edge ]
  call void @rpc_shutdown_client(ptr noundef %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ %ret.0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dget_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs4_proc_lookup_mountpoint(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dput(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_do_submount(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_shutdown_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfs4_replace_transport(ptr noundef %server, ptr noundef readonly %locations) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %locations, null
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %nlocations = getelementptr inbounds %struct.nfs4_fs_locations, ptr %locations, i32 0, i32 3
  %0 = ptrtoint ptr %nlocations to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nlocations, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1 = icmp slt i32 %1, 1
  br i1 %cmp1, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %call = tail call i32 @__get_free_pages(i32 noundef 1051840, i32 noundef 0) #9
  %2 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @__get_free_pages(i32 noundef 1051840, i32 noundef 0) #9
  %3 = inttoptr i32 %call4 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %for.cond.preheader

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.cond.preheader:                               ; preds = %if.end3
  %4 = ptrtoint ptr %nlocations to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nlocations, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp956 = icmp sgt i32 %5, 0
  br i1 %cmp956, label %for.body.lr.ph, label %for.cond.preheader.out_crit_edge

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %client.i = getelementptr inbounds %struct.nfs_server, ptr %server, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %error.060 = phi i32 [ -12, %for.body.lr.ph ], [ %error.1.ph, %for.inc.for.body_crit_edge ]
  %loc.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nfs4_fs_locations, ptr %locations, i32 0, i32 4, i32 %loc.057
  %cmp11 = icmp eq ptr %arrayidx, null
  br i1 %cmp11, label %for.body.for.inc_crit_edge, label %lor.lhs.false12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false12:                                  ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13 = icmp eq i32 %7, 0
  br i1 %cmp13, label %lor.lhs.false12.for.inc_crit_edge, label %lor.lhs.false14

lor.lhs.false12.for.inc_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %rootpath = getelementptr %struct.nfs4_fs_locations, ptr %locations, i32 0, i32 4, i32 %loc.057, i32 2
  %8 = ptrtoint ptr %rootpath to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rootpath, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15 = icmp eq i32 %9, 0
  br i1 %cmp15, label %lor.lhs.false14.for.inc_crit_edge, label %if.end17

lor.lhs.false14.for.inc_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end17:                                         ; preds = %lor.lhs.false14
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %call.i = tail call ptr @rpc_net_ns(ptr noundef %11) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 128) #14
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.end17.for.inc_crit_edge, label %for.cond.preheader.i

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.cond.preheader.i:                             ; preds = %if.end17
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp214.not.i = icmp eq i32 %14, 0
  br i1 %cmp214.not.i, label %for.cond.preheader.i.nfs4_try_replacing_one_location.exit.thread44_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.nfs4_try_replacing_one_location.exit.thread44_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_try_replacing_one_location.exit.thread44

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sin6_port.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %call7.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %error.017.i = phi i32 [ -2, %for.body.lr.ph.i ], [ %error.18.i, %for.inc.i.for.body.i_crit_edge ]
  %s.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.nfs4_fs_locations, ptr %locations, i32 0, i32 4, i32 %loc.057, i32 1, i32 %s.015.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %17 = add i32 %16, -4097
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %17)
  %18 = icmp ult i32 %17, -4096
  br i1 %18, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  %data.i = getelementptr %struct.nfs4_fs_locations, ptr %locations, i32 0, i32 4, i32 %loc.057, i32 1, i32 %s.015.i, i32 1
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %call9.i = tail call ptr @memchr(ptr noundef %20, i32 noundef 37, i32 noundef %16) #15
  %cmp10.not.i = icmp eq ptr %call9.i, null
  br i1 %cmp10.not.i, label %if.end12.i, label %if.end7.i.for.inc.i_crit_edge

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end7.i
  %call.i.i = tail call i32 @rpc_pton(ptr noundef %call.i, ptr noundef %20, i32 noundef %16, ptr noundef nonnull %call7.i.i, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end12.i.if.end18.i_crit_edge

if.end12.i.if.end18.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then.i.i:                                      ; preds = %if.end12.i
  %call1.i.i = tail call i32 @rpc_uaddr2sockaddr(ptr noundef %call.i, ptr noundef %20, i32 noundef %16, ptr noundef nonnull %call7.i.i, i32 noundef 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %nfs_parse_server_name.exit.i, label %if.then.i.i.if.end18.i_crit_edge

if.then.i.i.if.end18.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

nfs_parse_server_name.exit.i:                     ; preds = %if.then.i.i
  %call4.i.i = tail call i32 @nfs_dns_resolve_name(ptr noundef %call.i, ptr noundef %20, i32 noundef %16, ptr noundef nonnull %call7.i.i, i32 noundef 128) #9
  %21 = tail call i32 @llvm.smax.i32(i32 %call4.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp16.i = icmp slt i32 %call4.i.i, 1
  br i1 %cmp16.i, label %nfs_parse_server_name.exit.i.for.inc.i_crit_edge, label %nfs_parse_server_name.exit.i.if.end18.i_crit_edge

nfs_parse_server_name.exit.i.if.end18.i_crit_edge: ; preds = %nfs_parse_server_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

nfs_parse_server_name.exit.i.for.inc.i_crit_edge: ; preds = %nfs_parse_server_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end18.i:                                       ; preds = %nfs_parse_server_name.exit.i.if.end18.i_crit_edge, %if.then.i.i.if.end18.i_crit_edge, %if.end12.i.if.end18.i_crit_edge
  %ret.0.i3.i = phi i32 [ %21, %nfs_parse_server_name.exit.i.if.end18.i_crit_edge ], [ %call.i.i, %if.end12.i.if.end18.i_crit_edge ], [ %call1.i.i, %if.then.i.i.if.end18.i_crit_edge ]
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %call7.i.i, align 8
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %23, label %if.end18.i.rpc_set_port.exit.i_crit_edge [
    i16 2, label %if.end18.i.sw.epilog.sink.split.i.i_crit_edge
    i16 10, label %if.end18.i.sw.epilog.sink.split.i.i_crit_edge62
  ]

if.end18.i.sw.epilog.sink.split.i.i_crit_edge62:  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i

if.end18.i.sw.epilog.sink.split.i.i_crit_edge:    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split.i.i

if.end18.i.rpc_set_port.exit.i_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_set_port.exit.i

sw.epilog.sink.split.i.i:                         ; preds = %if.end18.i.sw.epilog.sink.split.i.i_crit_edge, %if.end18.i.sw.epilog.sink.split.i.i_crit_edge62
  %25 = ptrtoint ptr %sin6_port.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2049, ptr %sin6_port.i.i, align 2
  br label %rpc_set_port.exit.i

rpc_set_port.exit.i:                              ; preds = %sw.epilog.sink.split.i.i, %if.end18.i.rpc_set_port.exit.i_crit_edge
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %call21.i = tail call ptr @kmemdup_nul(ptr noundef %27, i32 noundef %29, i32 noundef 3264) #9
  %cmp22.i = icmp eq ptr %call21.i, null
  br i1 %cmp22.i, label %rpc_set_port.exit.i.nfs4_try_replacing_one_location.exit.thread44_crit_edge, label %cleanup.i

rpc_set_port.exit.i.nfs4_try_replacing_one_location.exit.thread44_crit_edge: ; preds = %rpc_set_port.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfs4_try_replacing_one_location.exit.thread44

cleanup.i:                                        ; preds = %rpc_set_port.exit.i
  %call25.i = tail call i32 @nfs4_update_server(ptr noundef %server, ptr noundef nonnull %call21.i, ptr noundef nonnull %call7.i.i, i32 noundef %ret.0.i3.i, ptr noundef %call.i) #9
  tail call void @kfree(ptr noundef nonnull %call21.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %nfs4_try_replacing_one_location.exit.thread47, label %cleanup.i.for.inc.i_crit_edge

cleanup.i.for.inc.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

nfs4_try_replacing_one_location.exit.thread47:    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %out

for.inc.i:                                        ; preds = %cleanup.i.for.inc.i_crit_edge, %nfs_parse_server_name.exit.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %error.18.i = phi i32 [ %call25.i, %cleanup.i.for.inc.i_crit_edge ], [ %error.017.i, %for.body.i.for.inc.i_crit_edge ], [ %error.017.i, %if.end7.i.for.inc.i_crit_edge ], [ %error.017.i, %nfs_parse_server_name.exit.i.for.inc.i_crit_edge ]
  %inc.i = add nuw i32 %s.015.i, 1
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %cmp2.i = icmp ult i32 %inc.i, %31
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %nfs4_try_replacing_one_location.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

nfs4_try_replacing_one_location.exit.thread44:    ; preds = %rpc_set_port.exit.i.nfs4_try_replacing_one_location.exit.thread44_crit_edge, %for.cond.preheader.i.nfs4_try_replacing_one_location.exit.thread44_crit_edge
  %error.2.i.ph = phi i32 [ -2, %for.cond.preheader.i.nfs4_try_replacing_one_location.exit.thread44_crit_edge ], [ -12, %rpc_set_port.exit.i.nfs4_try_replacing_one_location.exit.thread44_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %for.inc

nfs4_try_replacing_one_location.exit:             ; preds = %for.inc.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.18.i)
  %cmp19 = icmp eq i32 %error.18.i, 0
  br i1 %cmp19, label %nfs4_try_replacing_one_location.exit.out_crit_edge, label %nfs4_try_replacing_one_location.exit.for.inc_crit_edge

nfs4_try_replacing_one_location.exit.for.inc_crit_edge: ; preds = %nfs4_try_replacing_one_location.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

nfs4_try_replacing_one_location.exit.out_crit_edge: ; preds = %nfs4_try_replacing_one_location.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc:                                          ; preds = %nfs4_try_replacing_one_location.exit.for.inc_crit_edge, %nfs4_try_replacing_one_location.exit.thread44, %if.end17.for.inc_crit_edge, %lor.lhs.false14.for.inc_crit_edge, %lor.lhs.false12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %error.1.ph = phi i32 [ %error.2.i.ph, %nfs4_try_replacing_one_location.exit.thread44 ], [ %error.18.i, %nfs4_try_replacing_one_location.exit.for.inc_crit_edge ], [ %error.060, %for.body.for.inc_crit_edge ], [ %error.060, %lor.lhs.false12.for.inc_crit_edge ], [ %error.060, %lor.lhs.false14.for.inc_crit_edge ], [ -12, %if.end17.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %loc.057, 1
  %32 = ptrtoint ptr %nlocations to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nlocations, align 8
  %cmp9 = icmp slt i32 %inc, %33
  br i1 %cmp9, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %nfs4_try_replacing_one_location.exit.out_crit_edge, %nfs4_try_replacing_one_location.exit.thread47, %for.cond.preheader.out_crit_edge, %if.end3.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %page.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ %2, %if.end3.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %2, %nfs4_try_replacing_one_location.exit.thread47 ], [ %2, %for.cond.preheader.out_crit_edge ], [ %2, %nfs4_try_replacing_one_location.exit.out_crit_edge ], [ %2, %for.inc.out_crit_edge ]
  %page2.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ null, %if.end3.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %3, %nfs4_try_replacing_one_location.exit.thread47 ], [ %3, %for.cond.preheader.out_crit_edge ], [ %3, %nfs4_try_replacing_one_location.exit.out_crit_edge ], [ %3, %for.inc.out_crit_edge ]
  %error.2 = phi i32 [ -2, %entry.out_crit_edge ], [ -2, %lor.lhs.false.out_crit_edge ], [ -12, %if.end3.out_crit_edge ], [ -12, %if.end.out_crit_edge ], [ 0, %nfs4_try_replacing_one_location.exit.thread47 ], [ -12, %for.cond.preheader.out_crit_edge ], [ %error.1.ph, %for.inc.out_crit_edge ], [ 0, %nfs4_try_replacing_one_location.exit.out_crit_edge ]
  %34 = ptrtoint ptr %page.0 to i32
  tail call void @free_pages(i32 noundef %34, i32 noundef 0) #9
  %35 = ptrtoint ptr %page2.0 to i32
  tail call void @free_pages(i32 noundef %35, i32 noundef 0) #9
  ret i32 %error.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpcauth_get_pseudoflavor(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfs_auth_info_match(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_clone_client_set_auth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpcauth_lookupcred(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_rpccred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_proc_fs_locations(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfs_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_get_referral_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rpc_net_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs4_update_server(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !{null, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/linux/mm.h", i32 717, i32 2}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/nfs/nfs4namespace.c", i32 424, i32 2}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfs_do_refmount._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs_do_refmount._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs4namespace.c", i32 376, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nfs_follow_referral._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @nfs_follow_referral._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/nfs/nfs4namespace.c", i32 159, i32 3}
!17 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @nfs4_validate_fspath._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @nfs4_validate_fspath._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2153429280, i64 2153429763, i64 2153429317, i64 2153429373, i64 2153429407, i64 2153429431, i64 2153429472, i64 2153429493, i64 2153429521, i64 2153429555}
!33 = !{i64 2148440557}
!34 = !{i64 2148355266, i64 2148355298, i64 2148355327, i64 2148355361, i64 2148355392, i64 2148355415}
!35 = !{i64 2148440786}
!36 = !{i64 2148965458, i64 2148965463, i64 2148965476, i64 2148965520, i64 2148965554, i64 2148965575}
!37 = !{!"auto-init"}
