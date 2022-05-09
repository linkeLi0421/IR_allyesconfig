; ModuleID = '/llk/IR_all_yes/kernel/bpf/bpf_inode_storage.c_pt.bc'
source_filename = "../kernel/bpf/bpf_inode_storage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bpf_map_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bpf_func_proto = type { ptr, i8, i8, i32, %union.anon.188, %union.anon.190, ptr, ptr }
%union.anon.188 = type { %struct.anon.187 }
%struct.anon.187 = type { i32, i32, i32, i32, i32 }
%union.anon.190 = type { %struct.anon.189 }
%struct.anon.189 = type { ptr, ptr, ptr, ptr, ptr }
%struct.lsm_blob_sizes = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.bpf_local_storage_cache = type { %struct.spinlock, [16 x i64] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.164, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.165, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.166, ptr, %struct.address_space, %struct.list_head, %union.anon.167, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.164 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.hlist_node = type { ptr, ptr }
%union.anon.165 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.atomic_t = type { i32 }
%union.anon.166 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.167 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_local_storage = type { [16 x ptr], %struct.hlist_head, ptr, %struct.callback_head, %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.bpf_local_storage_elem = type { %struct.hlist_node, %struct.hlist_node, ptr, %struct.callback_head, [100 x i8], %struct.bpf_local_storage_data, [120 x i8] }
%struct.bpf_local_storage_data = type { ptr, [4 x i8], [0 x i8] }
%struct.bpf_local_storage_map = type { %struct.bpf_map, ptr, i32, i16, i16, [116 x i8] }
%struct.bpf_map = type { ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], i8, i8, [30 x i8], %struct.atomic64_t, %struct.atomic64_t, %struct.work_struct, %struct.mutex, %struct.atomic64_t, [96 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.file = type { %union.anon.19, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.19 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@bpf_inode_storage_free.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"kernel/bpf/bpf_inode_storage.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bpf_local_storage_map\00", [42 x i8] zeroinitializer }, align 32
@inode_storage_map_btf_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@inode_storage_map_ops = dso_local constant { %struct.bpf_map_ops, [60 x i8] } { %struct.bpf_map_ops { ptr @bpf_local_storage_map_alloc_check, ptr @inode_storage_map_alloc, ptr null, ptr @inode_storage_map_free, ptr @notsupp_get_next_key, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_fd_inode_storage_lookup_elem, ptr @bpf_fd_inode_storage_update_elem, ptr @bpf_fd_inode_storage_delete_elem, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bpf_local_storage_map_check_btf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inode_storage_ptr, ptr null, ptr @bpf_map_meta_equal, ptr null, ptr null, ptr @.str.2, ptr @inode_storage_map_btf_id, ptr null }, [60 x i8] zeroinitializer }, align 32
@bpf_inode_storage_btf_ids = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@bpf_inode_storage_get_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_inode_storage_get, i8 0, i8 0, i32 258, %union.anon.188 { %struct.anon.187 { i32 1, i32 16, i32 259, i32 10, i32 0 } }, %union.anon.190 { %struct.anon.189 { ptr null, ptr @bpf_inode_storage_btf_ids, ptr null, ptr null, ptr null } }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_inode_storage_delete_proto = dso_local constant { %struct.bpf_func_proto, [36 x i8] } { %struct.bpf_func_proto { ptr @bpf_inode_storage_delete, i8 0, i8 0, i32 0, %union.anon.188 { %struct.anon.187 { i32 1, i32 16, i32 0, i32 0, i32 0 } }, %union.anon.190 { %struct.anon.189 { ptr null, ptr @bpf_inode_storage_btf_ids, ptr null, ptr null, ptr null } }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bpf_lsm_blob_sizes = external dso_local local_unnamed_addr global %struct.lsm_blob_sizes, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@____bpf_inode_storage_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_trace_lock_map = external dso_local global %struct.lockdep_map, align 4
@inode_storage_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@____bpf_inode_storage_delete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@inode_cache = internal global { %struct.bpf_local_storage_cache, [48 x i8] } { %struct.bpf_local_storage_cache { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [16 x i64] zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"inode_cache.idx_lock\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 71, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 258, i32 18 }
@___asan_gen_.16 = private unnamed_addr constant [25 x i8] c"inode_storage_map_btf_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 247, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"inode_storage_map_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 248, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant [26 x i8] c"bpf_inode_storage_btf_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 263, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [28 x i8] c"bpf_inode_storage_get_proto\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 265, i32 29 }
@___asan_gen_.28 = private unnamed_addr constant [31 x i8] c"bpf_inode_storage_delete_proto\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 276, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 723, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"inode_cache\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [34 x i8] c"../kernel/bpf/bpf_inode_storage.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 22, i32 1 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @inode_storage_map_btf_id, ptr @inode_storage_map_ops, ptr @bpf_inode_storage_btf_ids, ptr @bpf_inode_storage_get_proto, ptr @bpf_inode_storage_delete_proto, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @inode_cache, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_storage_map_btf_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_storage_map_ops to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_inode_storage_btf_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_inode_storage_get_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_inode_storage_delete_proto to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inode_cache to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpf_inode_storage_free(ptr nocapture noundef readonly %inode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i, align 4
  %tobool.not.i65 = icmp eq ptr %1, null
  br i1 %tobool.not.i65, label %entry.cleanup_crit_edge, label %bpf_inode.exit, !prof !42

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

bpf_inode.exit:                                   ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %bpf_inode.exit.cleanup_crit_edge, label %if.end

bpf_inode.exit.cleanup_crit_edge:                 ; preds = %bpf_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %bpf_inode.exit
  %3 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !43
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %add.ptr.i, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end11_crit_edge, label %land.lhs.true6

land.lhs.true.do.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b64 = load i1, ptr @bpf_inode_storage_free.__warned, align 1
  br i1 %.b64, label %land.lhs.true6.do.end11_crit_edge, label %if.then8

land.lhs.true6.do.end11_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @bpf_inode_storage_free.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 71, ptr noundef nonnull @.str.1) #6
  br label %do.end11

do.end11:                                         ; preds = %if.then8, %land.lhs.true6.do.end11_crit_edge, %land.lhs.true.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.then14, label %if.end15

if.then14:                                        ; preds = %do.end11
  %call.i66 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i66, label %if.then14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i69

if.then14.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i69:                                ; preds = %if.then14
  %call1.i67 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i67)
  %tobool.not.i68 = icmp eq i32 %call1.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i71

land.lhs.true.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i71:                               ; preds = %land.lhs.true.i69
  %.b4.i70 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i70, label %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, label %if.then.i72

land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i72:                                      ; preds = %land.lhs.true2.i71
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i72, %land.lhs.true2.i71.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i69.rcu_read_unlock.exit_crit_edge, %if.then14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %9 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i.i.i73 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i73 to ptr
  %preempt_count.i.i.i.i74 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i74 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i74, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i74, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br label %cleanup

if.end15:                                         ; preds = %do.end11
  %lock = getelementptr inbounds %struct.bpf_local_storage, ptr %8, i32 0, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #6
  %list = getelementptr inbounds %struct.bpf_local_storage, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %tobool17.not = icmp eq ptr %14, null
  %add.ptr = getelementptr i8, ptr %14, i32 -8
  %tobool19.not9092 = icmp eq ptr %add.ptr, null
  %tobool19.not90 = or i1 %tobool17.not, %tobool19.not9092
  br i1 %tobool19.not90, label %if.end15.for.end_crit_edge, label %if.end15.land.rhs_crit_edge

if.end15.land.rhs_crit_edge:                      ; preds = %if.end15
  br label %land.rhs

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

land.rhs:                                         ; preds = %land.rhs.land.rhs_crit_edge, %if.end15.land.rhs_crit_edge
  %selem.091 = phi ptr [ %add.ptr29, %land.rhs.land.rhs_crit_edge ], [ %add.ptr, %if.end15.land.rhs_crit_edge ]
  %snode = getelementptr inbounds %struct.bpf_local_storage_elem, ptr %selem.091, i32 0, i32 1
  %15 = ptrtoint ptr %snode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %snode, align 8
  tail call void @bpf_selem_unlink_map(ptr noundef nonnull %selem.091) #6
  %call22 = tail call zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef nonnull %8, ptr noundef nonnull %selem.091, i1 noundef zeroext false) #6
  %tobool25.not = icmp eq ptr %16, null
  %add.ptr29 = getelementptr i8, ptr %16, i32 -8
  %tobool19.not93 = icmp eq ptr %add.ptr29, null
  %tobool19.not = or i1 %tobool25.not, %tobool19.not93
  br i1 %tobool19.not, label %land.rhs.for.end_crit_edge, label %land.rhs.land.rhs_crit_edge

land.rhs.land.rhs_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %if.end15.for.end_crit_edge
  %free_inode_storage.0.off0.lcssa = phi i1 [ false, %if.end15.for.end_crit_edge ], [ %call22, %land.rhs.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #6
  %call.i75 = tail call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i75, label %for.end.rcu_read_unlock.exit85_crit_edge, label %land.lhs.true.i78

for.end.rcu_read_unlock.exit85_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit85

land.lhs.true.i78:                                ; preds = %for.end
  %call1.i76 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76)
  %tobool.not.i77 = icmp eq i32 %call1.i76, 0
  br i1 %tobool.not.i77, label %land.lhs.true.i78.rcu_read_unlock.exit85_crit_edge, label %land.lhs.true2.i80

land.lhs.true.i78.rcu_read_unlock.exit85_crit_edge: ; preds = %land.lhs.true.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit85

land.lhs.true2.i80:                               ; preds = %land.lhs.true.i78
  %.b4.i79 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i79, label %land.lhs.true2.i80.rcu_read_unlock.exit85_crit_edge, label %if.then.i81

land.lhs.true2.i80.rcu_read_unlock.exit85_crit_edge: ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit85

if.then.i81:                                      ; preds = %land.lhs.true2.i80
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #6
  br label %rcu_read_unlock.exit85

rcu_read_unlock.exit85:                           ; preds = %if.then.i81, %land.lhs.true2.i80.rcu_read_unlock.exit85_crit_edge, %land.lhs.true.i78.rcu_read_unlock.exit85_crit_edge, %for.end.rcu_read_unlock.exit85_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !44
  %17 = tail call i32 @llvm.read_register.i32(metadata !32) #6
  %and.i.i.i.i.i82 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i82 to ptr
  %preempt_count.i.i.i.i83 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i83 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i83, align 4
  %sub.i.i.i84 = add i32 %20, -1
  store volatile i32 %sub.i.i.i84, ptr %preempt_count.i.i.i.i83, align 4
  tail call void @rcu_read_unlock_strict() #6
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  br i1 %free_inode_storage.0.off0.lcssa, label %do.end41, label %rcu_read_unlock.exit85.cleanup_crit_edge

rcu_read_unlock.exit85.cleanup_crit_edge:         ; preds = %rcu_read_unlock.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end41:                                         ; preds = %rcu_read_unlock.exit85
  call void @__sanitizer_cov_trace_pc() #8
  %rcu = getelementptr inbounds %struct.bpf_local_storage, ptr %8, i32 0, i32 3
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 72 to ptr)) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %rcu_read_unlock.exit85.cleanup_crit_edge, %rcu_read_unlock.exit, %bpf_inode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_selem_unlink_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_selem_unlink_storage_nolock(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_inode_storage_get(i64 noundef %map, i64 noundef %inode, i64 noundef %value, i64 noundef %flags, i64 %__ur_1) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %inode to i32
  %1 = inttoptr i32 %conv1 to ptr
  %conv2 = trunc i64 %value to i32
  %2 = inttoptr i32 %conv2 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end33.i_crit_edge

entry.if.end33.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %land.rhs.i, label %lor.rhs.i.if.end33.i_crit_edge

lor.rhs.i.if.end33.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %.b74.i = load i1, ptr @____bpf_inode_storage_get.__already_done, align 1
  br i1 %.b74.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then.i, !prof !45

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @____bpf_inode_storage_get.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 177, i32 noundef 9, ptr noundef null) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end33.i_crit_edge, %lor.rhs.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge, %entry.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %flags)
  %tobool41.not.i = icmp ugt i64 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool44.not.i = icmp eq i32 %conv1, 0
  %or.cond.i = or i1 %tobool44.not.i, %tobool41.not.i
  br i1 %or.cond.i, label %if.end33.i.____bpf_inode_storage_get.exit_crit_edge, label %lor.lhs.false45.i

if.end33.i.____bpf_inode_storage_get.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____bpf_inode_storage_get.exit

lor.lhs.false45.i:                                ; preds = %if.end33.i
  %i_security.i.i.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %i_security.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i_security.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %lor.lhs.false45.i.____bpf_inode_storage_get.exit_crit_edge, label %inode_storage_ptr.exit.i, !prof !42

lor.lhs.false45.i.____bpf_inode_storage_get.exit_crit_edge: ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____bpf_inode_storage_get.exit

inode_storage_ptr.exit.i:                         ; preds = %lor.lhs.false45.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %5
  %tobool47.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool47.not.i, label %inode_storage_ptr.exit.i.____bpf_inode_storage_get.exit_crit_edge, label %if.end49.i

inode_storage_ptr.exit.i.____bpf_inode_storage_get.exit_crit_edge: ; preds = %inode_storage_ptr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____bpf_inode_storage_get.exit

if.end49.i:                                       ; preds = %inode_storage_ptr.exit.i
  %call50.i = tail call fastcc ptr @inode_storage_lookup(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext true) #6
  %tobool51.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool51.not.i, label %if.end53.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call50.i, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  br label %____bpf_inode_storage_get.exit

if.end53.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %flags)
  %tobool55.not.i = icmp eq i64 %flags, 0
  br i1 %tobool55.not.i, label %if.end53.i.____bpf_inode_storage_get.exit_crit_edge, label %if.then56.i

if.end53.i.____bpf_inode_storage_get.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____bpf_inode_storage_get.exit

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  %call57.i = tail call ptr @bpf_local_storage_update(ptr noundef nonnull %1, ptr noundef %0, ptr noundef %2, i64 noundef 1) #6
  %cmp.i.i = icmp ugt ptr %call57.i, inttoptr (i32 -4096 to ptr)
  %data60.i = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call57.i, i32 0, i32 2
  %7 = ptrtoint ptr %data60.i to i32
  %cond.i = select i1 %cmp.i.i, i32 0, i32 %7
  br label %____bpf_inode_storage_get.exit

____bpf_inode_storage_get.exit:                   ; preds = %if.then56.i, %if.end53.i.____bpf_inode_storage_get.exit_crit_edge, %if.then52.i, %inode_storage_ptr.exit.i.____bpf_inode_storage_get.exit_crit_edge, %lor.lhs.false45.i.____bpf_inode_storage_get.exit_crit_edge, %if.end33.i.____bpf_inode_storage_get.exit_crit_edge
  %retval.0.shrunk.i = phi i32 [ %6, %if.then52.i ], [ %cond.i, %if.then56.i ], [ 0, %if.end33.i.____bpf_inode_storage_get.exit_crit_edge ], [ 0, %inode_storage_ptr.exit.i.____bpf_inode_storage_get.exit_crit_edge ], [ 0, %if.end53.i.____bpf_inode_storage_get.exit_crit_edge ], [ 0, %lor.lhs.false45.i.____bpf_inode_storage_get.exit_crit_edge ]
  %retval.0.i = zext i32 %retval.0.shrunk.i to i64
  ret i64 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @bpf_inode_storage_delete(i64 noundef %map, i64 noundef %inode, i64 %__ur_1, i64 %__ur_2, i64 %__ur_3) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i64 %map to i32
  %0 = inttoptr i32 %conv to ptr
  %conv1 = trunc i64 %inode to i32
  %1 = inttoptr i32 %conv1 to ptr
  %call.i = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.end33.i_crit_edge

entry.if.end33.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.lhs.false.i:                                  ; preds = %entry
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %lor.rhs.i, label %lor.lhs.false.i.if.end33.i_crit_edge

lor.lhs.false.i.if.end33.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i, label %land.rhs.i, label %lor.rhs.i.if.end33.i_crit_edge

lor.rhs.i.if.end33.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

land.rhs.i:                                       ; preds = %lor.rhs.i
  %.b48.i = load i1, ptr @____bpf_inode_storage_delete.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.if.end33.i_crit_edge, label %if.then.i, !prof !45

land.rhs.i.if.end33.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @____bpf_inode_storage_delete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 210, i32 noundef 9, ptr noundef null) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end33.i_crit_edge, %lor.rhs.i.if.end33.i_crit_edge, %lor.lhs.false.i.if.end33.i_crit_edge, %entry.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1)
  %tobool41.not.i = icmp eq i32 %conv1, 0
  br i1 %tobool41.not.i, label %if.end33.i.____bpf_inode_storage_delete.exit_crit_edge, label %if.end43.i

if.end33.i.____bpf_inode_storage_delete.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %____bpf_inode_storage_delete.exit

if.end43.i:                                       ; preds = %if.end33.i
  %call.i.i = tail call fastcc ptr @inode_storage_lookup(ptr noundef nonnull %1, ptr noundef %0, i1 noundef zeroext false) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end43.i.inode_storage_delete.exit.i_crit_edge, label %if.end.i.i

if.end43.i.inode_storage_delete.exit.i_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inode_storage_delete.exit.i

if.end.i.i:                                       ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i, i32 -128
  tail call void @bpf_selem_unlink(ptr noundef %add.ptr.i.i) #6
  br label %inode_storage_delete.exit.i

inode_storage_delete.exit.i:                      ; preds = %if.end.i.i, %if.end43.i.inode_storage_delete.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ -2, %if.end43.i.inode_storage_delete.exit.i_crit_edge ]
  %conv.i = sext i32 %retval.0.i.i to i64
  br label %____bpf_inode_storage_delete.exit

____bpf_inode_storage_delete.exit:                ; preds = %inode_storage_delete.exit.i, %if.end33.i.____bpf_inode_storage_delete.exit_crit_edge
  %retval.0.i = phi i64 [ %conv.i, %inode_storage_delete.exit.i ], [ -22, %if.end33.i.____bpf_inode_storage_delete.exit_crit_edge ]
  ret i64 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_local_storage_map_alloc_check(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @inode_storage_map_alloc(ptr noundef %attr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bpf_local_storage_map_alloc(ptr noundef %attr) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call zeroext i16 @bpf_local_storage_cache_idx_get(ptr noundef nonnull @inode_cache) #6
  %cache_idx = getelementptr inbounds %struct.bpf_local_storage_map, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %cache_idx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call3, ptr %cache_idx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inode_storage_map_free(ptr noundef %map) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_idx = getelementptr inbounds %struct.bpf_local_storage_map, ptr %map, i32 0, i32 4
  %0 = ptrtoint ptr %cache_idx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cache_idx, align 2
  tail call void @bpf_local_storage_cache_idx_free(ptr noundef nonnull @inode_cache, i16 noundef zeroext %1) #6
  tail call void @bpf_local_storage_map_free(ptr noundef %map, ptr noundef null) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @notsupp_get_next_key(ptr nocapture noundef readnone %map, ptr nocapture noundef readnone %key, ptr nocapture noundef readnone %next_key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @bpf_fd_inode_storage_lookup_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %call = tail call ptr @fget_raw(i32 noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %f_inode = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode, align 8
  %call2 = tail call fastcc ptr @inode_storage_lookup(ptr noundef %3, ptr noundef %map, i1 noundef zeroext true)
  tail call void @fput(ptr noundef nonnull %call) #6
  %tobool3.not = icmp eq ptr %call2, null
  %data = getelementptr inbounds %struct.bpf_local_storage_data, ptr %call2, i32 0, i32 2
  %spec.select = select i1 %tobool3.not, ptr null, ptr %data
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %if.end ], [ inttoptr (i32 -9 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_fd_inode_storage_update_elem(ptr noundef %map, ptr nocapture noundef readonly %key, ptr noundef %value, i64 noundef %map_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %call = tail call ptr @fget_raw(i32 noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode, align 8
  %i_security.i.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %i_security.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i_security.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.if.then3_crit_edge, label %inode_storage_ptr.exit, !prof !42

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

inode_storage_ptr.exit:                           ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %6
  %tobool2.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not, label %inode_storage_ptr.exit.if.then3_crit_edge, label %if.end4

inode_storage_ptr.exit.if.then3_crit_edge:        ; preds = %inode_storage_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %inode_storage_ptr.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call void @fput(ptr noundef nonnull %call) #6
  br label %cleanup

if.end4:                                          ; preds = %inode_storage_ptr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call ptr @bpf_local_storage_update(ptr noundef %3, ptr noundef %map, ptr noundef %value, i64 noundef %map_flags) #6
  tail call void @fput(ptr noundef nonnull %call) #6
  %cmp.i.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call6 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end4 ], [ -9, %if.then3 ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_fd_inode_storage_delete_elem(ptr noundef %map, ptr nocapture noundef readonly %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %key, align 4
  %call = tail call ptr @fget_raw(i32 noundef %1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %f_inode = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode, align 8
  %call.i = tail call fastcc ptr @inode_storage_lookup(ptr noundef %3, ptr noundef %map, i1 noundef zeroext false) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.inode_storage_delete.exit_crit_edge, label %if.end.i

if.end.inode_storage_delete.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %inode_storage_delete.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -128
  tail call void @bpf_selem_unlink(ptr noundef %add.ptr.i) #6
  br label %inode_storage_delete.exit

inode_storage_delete.exit:                        ; preds = %if.end.i, %if.end.inode_storage_delete.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -2, %if.end.inode_storage_delete.exit_crit_edge ]
  tail call void @fput(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %inode_storage_delete.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %inode_storage_delete.exit ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_local_storage_map_check_btf(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @inode_storage_ptr(ptr nocapture noundef readonly %owner) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i = getelementptr inbounds %struct.inode, ptr %owner, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.bpf_inode.exit_crit_edge, label %if.end.i, !prof !42

entry.bpf_inode.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpf_inode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  br label %bpf_inode.exit

bpf_inode.exit:                                   ; preds = %if.end.i, %entry.bpf_inode.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %if.end.i ], [ null, %entry.bpf_inode.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bpf_map_meta_equal(ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @inode_storage_lookup(ptr nocapture noundef readonly %inode, ptr noundef %map, i1 noundef zeroext %cacheit_lockit) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %i_security.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 10
  %0 = ptrtoint ptr %i_security.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_security.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %bpf_inode.exit, !prof !42

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

bpf_inode.exit:                                   ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.lsm_blob_sizes, ptr @bpf_lsm_blob_sizes, i32 0, i32 2), align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %2
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %bpf_inode.exit.cleanup_crit_edge, label %if.end

bpf_inode.exit.cleanup_crit_edge:                 ; preds = %bpf_inode.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %bpf_inode.exit
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %add.ptr.i, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.do.end19_crit_edge

if.end.do.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

lor.lhs.false:                                    ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef nonnull @rcu_trace_lock_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.do.end19_crit_edge

lor.lhs.false.do.end19_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %call7 = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %lor.lhs.false6.do.end19_crit_edge

lor.lhs.false6.do.end19_crit_edge:                ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %call10 = tail call i32 @rcu_read_lock_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true, label %lor.lhs.false9.do.end19_crit_edge

lor.lhs.false9.do.end19_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

land.lhs.true:                                    ; preds = %lor.lhs.false9
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end19_crit_edge, label %land.lhs.true14

land.lhs.true.do.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b30 = load i1, ptr @inode_storage_lookup.__warned, align 1
  br i1 %.b30, label %land.lhs.true14.do.end19_crit_edge, label %if.then16

land.lhs.true14.do.end19_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19

if.then16:                                        ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @inode_storage_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @.str.1) #6
  br label %do.end19

do.end19:                                         ; preds = %if.then16, %land.lhs.true14.do.end19_crit_edge, %land.lhs.true.do.end19_crit_edge, %lor.lhs.false9.do.end19_crit_edge, %lor.lhs.false6.do.end19_crit_edge, %lor.lhs.false.do.end19_crit_edge, %if.end.do.end19_crit_edge
  %tobool21.not = icmp eq ptr %4, null
  br i1 %tobool21.not, label %do.end19.cleanup_crit_edge, label %if.end23

do.end19.cleanup_crit_edge:                       ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end23:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call ptr @bpf_local_storage_lookup(ptr noundef nonnull %4, ptr noundef %map, i1 noundef zeroext %cacheit_lockit) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end19.cleanup_crit_edge, %bpf_inode.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call25, %if.end23 ], [ null, %bpf_inode.exit.cleanup_crit_edge ], [ null, %do.end19.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_update(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_lookup(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_selem_unlink(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_local_storage_map_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @bpf_local_storage_cache_idx_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_local_storage_cache_idx_free(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_local_storage_map_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_raw(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !22, !23, !25, !27, !29, !31}
!llvm.named.register.sp = !{!32}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 71, i32 18}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 258, i32 18}
!6 = !{ptr @inode_storage_map_ops, !7, !"inode_storage_map_ops", i1 false, i1 false}
!7 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 248, i32 26}
!8 = !{ptr @bpf_inode_storage_get_proto, !9, !"bpf_inode_storage_get_proto", i1 false, i1 false}
!9 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 265, i32 29}
!10 = !{ptr @bpf_inode_storage_delete_proto, !11, !"bpf_inode_storage_delete_proto", i1 false, i1 false}
!11 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 276, i32 29}
!12 = !{ptr @inode_storage_map_btf_id, !13, !"inode_storage_map_btf_id", i1 false, i1 false}
!13 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 247, i32 12}
!14 = !{ptr @bpf_inode_storage_btf_ids, !15, !"bpf_inode_storage_btf_ids", i1 false, i1 false}
!15 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 263, i32 1}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 177, i32 2}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 49, i32 3}
!27 = distinct !{null, !28, !"__already_done", i1 false, i1 false}
!28 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 210, i32 2}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../kernel/bpf/bpf_inode_storage.c", i32 22, i32 1}
!31 = !{ptr @inode_cache, !30, !"inode_cache", i1 false, i1 false}
!32 = !{!"sp"}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i64 2149169090}
!44 = !{i64 2149169356}
!45 = !{!"branch_weights", i32 2000, i32 1}
