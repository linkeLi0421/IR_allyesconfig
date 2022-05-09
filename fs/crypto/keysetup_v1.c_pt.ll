; ModuleID = '/llk/IR_all_yes/fs/crypto/keysetup_v1.c_pt.bc'
source_filename = "../fs/crypto/keysetup_v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.key_type = type opaque
%struct.fscrypt_direct_key = type { %struct.hlist_node, %struct.refcount_struct, ptr, %struct.fscrypt_prepared_key, [8 x i8], [64 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fscrypt_prepared_key = type { ptr, ptr }
%struct.crypto_wait = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.fscrypt_info = type { %struct.fscrypt_prepared_key, i8, i8, ptr, ptr, ptr, %struct.list_head, ptr, %struct.siphash_key_t, i8, %union.fscrypt_policy, [16 x i8], i32 }
%struct.siphash_key_t = type { [2 x i64] }
%union.fscrypt_policy = type { %struct.fscrypt_policy_v2 }
%struct.fscrypt_policy_v2 = type { i8, i8, i8, i8, [4 x i8], [16 x i8] }
%struct.fscrypt_mode = type { ptr, ptr, i32, i32, i32, i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.73, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.74, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.75, ptr, %struct.address_space, %struct.list_head, %union.anon.76, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.73 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.74 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.75 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.76 = type { ptr }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fscrypt_operations = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fscrypt_key = type { i32, [64 x i8], i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.22, ptr, %struct.rw_semaphore, ptr, ptr, %union.anon.23, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i32, %union.anon.24, %union.anon.28, ptr }
%union.anon.22 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.23 = type { i64 }
%union.anon.24 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i32, %union.anon.25, ptr, ptr, ptr }
%union.anon.25 = type { i32 }
%union.anon.28 = type { %union.key_payload }
%union.key_payload = type { [4 x ptr] }
%struct.user_key_payload = type { %struct.callback_head, i16, [6 x i8], [0 x i8] }

@fscrypt_direct_keys_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fscrypt:\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"fscrypt_direct_keys_lock\00", [39 x i8] zeroinitializer }, align 32
@fscrypt_direct_keys = internal global { [64 x %struct.hlist_head], [64 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ecb(aes)\00", [23 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s%*phN\00", [24 x i8] zeroinitializer }, align 32
@key_type_logon = external dso_local global %struct.key_type, align 1
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"key with description '%s' has invalid payload\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"key with description '%s' is too short (got %u bytes, need %u+ bytes)\00", [58 x i8] zeroinitializer }, align 32
@user_key_payload_locked.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/keys/user-type.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@___asan_gen_.10 = private unnamed_addr constant [25 x i8] c"fscrypt_direct_keys_lock\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 304, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 33, i32 8 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"fscrypt_direct_keys\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 32, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 55, i32 54 }
@___asan_gen_.25 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 87, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 102, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 122, i32 3 }
@___asan_gen_.41 = private constant [27 x i8] c"../fs/crypto/keysetup_v1.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 129, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"../include/keys/user-type.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 53, i32 36 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @fscrypt_direct_keys_lock, ptr @.str, ptr @.str.1, ptr @fscrypt_direct_keys, ptr @.str.2, ptr @init_completion.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_direct_keys_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fscrypt_direct_keys to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fscrypt_put_direct_key(ptr noundef %dk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dk_refcount = getelementptr inbounds %struct.fscrypt_direct_key, ptr %dk, i32 0, i32 1
  %call = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %dk_refcount, ptr noundef nonnull @fscrypt_direct_keys_lock) #8
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %dk, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i, align 4
  %tobool.not.i.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i.i, label %if.end.hash_del.exit_crit_edge, label %if.then.i.i

if.end.hash_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hash_del.exit

if.then.i.i:                                      ; preds = %if.end
  %2 = ptrtoint ptr %dk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dk, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i3.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i3.i.i, label %if.then.i.i.__hlist_del.exit.i.i_crit_edge, label %do.body13.i.i.i

if.then.i.i.__hlist_del.exit.i.i_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__hlist_del.exit.i.i

do.body13.i.i.i:                                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i.i, align 4
  br label %__hlist_del.exit.i.i

__hlist_del.exit.i.i:                             ; preds = %do.body13.i.i.i, %if.then.i.i.__hlist_del.exit.i.i_crit_edge
  %6 = ptrtoint ptr %dk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dk, align 4
  %7 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i, align 4
  br label %hash_del.exit

hash_del.exit:                                    ; preds = %__hlist_del.exit.i.i, %if.end.hash_del.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fscrypt_direct_keys_lock) #8
  %tobool.not.i = icmp eq ptr %dk, null
  br i1 %tobool.not.i, label %hash_del.exit.return_crit_edge, label %if.then.i

hash_del.exit.return_crit_edge:                   ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i:                                        ; preds = %hash_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dk_key.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %dk, i32 0, i32 3
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %dk_key.i) #8
  tail call void @kfree_sensitive(ptr noundef nonnull %dk) #8
  br label %return

return:                                           ; preds = %if.then.i, %hash_del.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_setup_v1_file_key(ptr noundef %ci, ptr noundef %raw_master_key) local_unnamed_addr #0 align 64 {
entry:
  %wait.i.i = alloca %struct.crypto_wait, align 4
  %src_sg.i.i = alloca %struct.scatterlist, align 4
  %dst_sg.i.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 1
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call fastcc ptr @find_or_insert_direct_key(ptr noundef null, ptr noundef %raw_master_key, ptr noundef %ci) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.fscrypt_get_direct_key.exit.i_crit_edge

if.then.fscrypt_get_direct_key.exit.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %fscrypt_get_direct_key.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 96) #11
  %tobool2.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then.i_crit_edge, label %if.end5.i.i

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %dk_refcount.i.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %call7.i.i.i.i, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dk_refcount.i.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %dk_refcount.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %dk_refcount.i.i, align 8
  %ci_mode.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %5 = ptrtoint ptr %ci_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_mode.i.i, align 4
  %dk_mode.i.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %call7.i.i.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %dk_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dk_mode.i.i, align 4
  %dk_key.i.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %call7.i.i.i.i, i32 0, i32 3
  %call6.i.i = tail call i32 @fscrypt_prepare_key(ptr noundef %dk_key.i.i, ptr noundef %raw_master_key, ptr noundef %ci) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %free_direct_key.exit.i.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dk_descriptor.i.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %call7.i.i.i.i, i32 0, i32 4
  %master_key_descriptor.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %master_key_descriptor.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %9 = load i64, ptr %master_key_descriptor.i.i, align 1
  %10 = ptrtoint ptr %dk_descriptor.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %dk_descriptor.i.i, align 8
  %dk_raw.i.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %call7.i.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %ci_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ci_mode.i.i, align 4
  %keysize.i.i = getelementptr inbounds %struct.fscrypt_mode, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %keysize.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %keysize.i.i, align 4
  %15 = call ptr @memcpy(ptr %dk_raw.i.i, ptr %raw_master_key, i32 %14)
  %call13.i.i = tail call fastcc ptr @find_or_insert_direct_key(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %raw_master_key, ptr noundef %ci) #8
  br label %fscrypt_get_direct_key.exit.i

free_direct_key.exit.i.i:                         ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %dk_key.i.i) #8
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i.i) #8
  %16 = inttoptr i32 %call6.i.i to ptr
  br label %fscrypt_get_direct_key.exit.i

fscrypt_get_direct_key.exit.i:                    ; preds = %free_direct_key.exit.i.i, %if.end9.i.i, %if.then.fscrypt_get_direct_key.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %free_direct_key.exit.i.i ], [ %call13.i.i, %if.end9.i.i ], [ %call.i.i, %if.then.fscrypt_get_direct_key.exit.i_crit_edge ]
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %fscrypt_get_direct_key.exit.i.if.then.i_crit_edge, label %if.end.i

fscrypt_get_direct_key.exit.i.if.then.i_crit_edge: ; preds = %fscrypt_get_direct_key.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %fscrypt_get_direct_key.exit.i.if.then.i_crit_edge, %if.end.i.i.if.then.i_crit_edge
  %retval.0.i10.i = phi ptr [ %retval.0.i.i, %fscrypt_get_direct_key.exit.i.if.then.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.if.then.i_crit_edge ]
  %17 = ptrtoint ptr %retval.0.i10.i to i32
  br label %return

if.end.i:                                         ; preds = %fscrypt_get_direct_key.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ci_direct_key.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 7
  %18 = ptrtoint ptr %ci_direct_key.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i.i, ptr %ci_direct_key.i, align 8
  %dk_key.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %retval.0.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %dk_key.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %dk_key.i, align 4
  %21 = ptrtoint ptr %ci to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %ci, align 8
  br label %return

if.else:                                          ; preds = %entry
  %ci_mode.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %22 = ptrtoint ptr %ci_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ci_mode.i, align 4
  %keysize.i = getelementptr inbounds %struct.fscrypt_mode, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %keysize.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %keysize.i, align 4
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #12
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.else.return_crit_edge, label %if.end.i8

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i8:                                        ; preds = %if.else
  %ci_nonce.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 11
  %26 = ptrtoint ptr %ci_mode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ci_mode.i, align 4
  %keysize2.i = getelementptr inbounds %struct.fscrypt_mode, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %keysize2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %keysize2.i, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %wait.i.i) #8
  %30 = getelementptr inbounds i8, ptr %wait.i.i, i32 4
  %31 = call ptr @memset(ptr %30, i32 255, i32 56)
  %32 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wait.i.i, align 4
  call void @__init_swait_queue_head(ptr noundef %30, ptr noundef nonnull @.str.3, ptr noundef nonnull @init_completion.__key) #8
  %err.i.i = getelementptr inbounds %struct.crypto_wait, ptr %wait.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %err.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %err.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %src_sg.i.i) #8
  %34 = call ptr @memset(ptr %src_sg.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %dst_sg.i.i) #8
  %35 = call ptr @memset(ptr %dst_sg.i.i, i32 255, i32 20)
  %call.i.i7 = call ptr @crypto_alloc_skcipher(ptr noundef nonnull @.str.2, i32 noundef 0, i32 noundef 0) #8
  %cmp.i.i16.i = icmp ugt ptr %call.i.i7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i16.i, label %if.then.i17.i, label %if.end.i18.i

if.then.i17.i:                                    ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call.i.i7 to i32
  br label %derive_key_aes.exit.i

if.end.i18.i:                                     ; preds = %if.end.i8
  %base.i.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %call.i.i7, i32 0, i32 2
  %37 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base.i.i.i.i, align 128
  %or.i.i.i.i = or i32 %38, 256
  store i32 %or.i.i.i.i, ptr %base.i.i.i.i, align 128
  %39 = ptrtoint ptr %call.i.i7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call.i.i7, align 128
  %add.i.i.i = add i32 %40, 128
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3264) #12
  %tobool.not.i.i19.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %tobool.not.i.i19.i, label %if.end.i18.i.derive_key_aes.exit.i_crit_edge, label %if.end7.i.i, !prof !32

if.end.i18.i.derive_key_aes.exit.i_crit_edge:     ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %derive_key_aes.exit.i

if.end7.i.i:                                      ; preds = %if.end.i18.i
  %tfm1.i.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 4, i32 3
  %41 = ptrtoint ptr %tfm1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %base.i.i.i.i, ptr %tfm1.i.i.i.i, align 32
  %complete.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %complete.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @crypto_req_done, ptr %complete.i.i.i, align 8
  %data2.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 4, i32 2
  %43 = ptrtoint ptr %data2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %wait.i.i, ptr %data2.i.i.i, align 4
  %flags4.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 4, i32 4
  %44 = ptrtoint ptr %flags4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1536, ptr %flags4.i.i.i, align 4
  %call8.i.i = call i32 @crypto_skcipher_setkey(ptr noundef %call.i.i7, ptr noundef %ci_nonce.i, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %cmp.i20.i = icmp slt i32 %call8.i.i, 0
  br i1 %cmp.i20.i, label %if.end7.i.i.derive_key_aes.exit.i_crit_edge, label %if.end10.i.i

if.end7.i.i.derive_key_aes.exit.i_crit_edge:      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %derive_key_aes.exit.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  call void @sg_init_one(ptr noundef nonnull %src_sg.i.i, ptr noundef %raw_master_key, i32 noundef %29) #8
  call void @sg_init_one(ptr noundef nonnull %dst_sg.i.i, ptr noundef nonnull %call9.i.i, i32 noundef %29) #8
  %src1.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %src1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %src_sg.i.i, ptr %src1.i.i.i, align 8
  %dst2.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %dst2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dst_sg.i.i, ptr %dst2.i.i.i, align 4
  %47 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %29, ptr %call9.i.i.i.i, align 128
  %iv4.i.i.i = getelementptr inbounds %struct.skcipher_request, ptr %call9.i.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %iv4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %iv4.i.i.i, align 4
  %call11.i.i = call i32 @crypto_skcipher_encrypt(ptr noundef nonnull %call9.i.i.i.i) #8
  %49 = zext i32 %call11.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call11.i.i, label %if.end10.i.i.derive_key_aes.exit.i_crit_edge [
    i32 -115, label %if.end10.i.i.sw.bb.i.i.i_crit_edge
    i32 -16, label %if.end10.i.i.sw.bb.i.i.i_crit_edge11
  ]

if.end10.i.i.sw.bb.i.i.i_crit_edge11:             ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

if.end10.i.i.sw.bb.i.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i.i

if.end10.i.i.derive_key_aes.exit.i_crit_edge:     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %derive_key_aes.exit.i

sw.bb.i.i.i:                                      ; preds = %if.end10.i.i.sw.bb.i.i.i_crit_edge, %if.end10.i.i.sw.bb.i.i.i_crit_edge11
  call void @wait_for_completion(ptr noundef nonnull %wait.i.i) #8
  %50 = ptrtoint ptr %wait.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %wait.i.i, align 4
  %51 = ptrtoint ptr %err.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %err.i.i, align 4
  br label %derive_key_aes.exit.i

derive_key_aes.exit.i:                            ; preds = %sw.bb.i.i.i, %if.end10.i.i.derive_key_aes.exit.i_crit_edge, %if.end7.i.i.derive_key_aes.exit.i_crit_edge, %if.end.i18.i.derive_key_aes.exit.i_crit_edge, %if.then.i17.i
  %req.0.i.i = phi ptr [ null, %if.then.i17.i ], [ %call9.i.i.i.i, %if.end7.i.i.derive_key_aes.exit.i_crit_edge ], [ %call9.i.i.i.i, %if.end10.i.i.derive_key_aes.exit.i_crit_edge ], [ %call9.i.i.i.i, %sw.bb.i.i.i ], [ null, %if.end.i18.i.derive_key_aes.exit.i_crit_edge ]
  %res.0.i.i = phi i32 [ %36, %if.then.i17.i ], [ %call8.i.i, %if.end7.i.i.derive_key_aes.exit.i_crit_edge ], [ %call11.i.i, %if.end10.i.i.derive_key_aes.exit.i_crit_edge ], [ %52, %sw.bb.i.i.i ], [ -12, %if.end.i18.i.derive_key_aes.exit.i_crit_edge ]
  %tfm.0.i.i = phi ptr [ null, %if.then.i17.i ], [ %call.i.i7, %if.end7.i.i.derive_key_aes.exit.i_crit_edge ], [ %call.i.i7, %if.end10.i.i.derive_key_aes.exit.i_crit_edge ], [ %call.i.i7, %sw.bb.i.i.i ], [ %call.i.i7, %if.end.i18.i.derive_key_aes.exit.i_crit_edge ]
  call void @kfree_sensitive(ptr noundef %req.0.i.i) #8
  %base.i.i25.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm.0.i.i, i32 0, i32 2
  call void @crypto_destroy_tfm(ptr noundef %tfm.0.i.i, ptr noundef %base.i.i25.i.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %dst_sg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %src_sg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %wait.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %derive_key_aes.exit.i.out.i_crit_edge

derive_key_aes.exit.i.out.i_crit_edge:            ; preds = %derive_key_aes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i

if.end6.i:                                        ; preds = %derive_key_aes.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = call i32 @fscrypt_set_per_file_enc_key(ptr noundef %ci, ptr noundef nonnull %call9.i.i) #8
  br label %out.i

out.i:                                            ; preds = %if.end6.i, %derive_key_aes.exit.i.out.i_crit_edge
  %err.0.i = phi i32 [ %res.0.i.i, %derive_key_aes.exit.i.out.i_crit_edge ], [ %call7.i, %if.end6.i ]
  call void @kfree_sensitive(ptr noundef nonnull %call9.i.i) #8
  br label %return

return:                                           ; preds = %out.i, %if.else.return_crit_edge, %if.end.i, %if.then.i
  %retval.0 = phi i32 [ %17, %if.then.i ], [ 0, %if.end.i ], [ %err.0.i, %out.i ], [ -12, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fscrypt_setup_v1_file_key_via_subscribed_keyrings(ptr noundef %ci) local_unnamed_addr #0 align 64 {
entry:
  %payload = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %payload) #8
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %payload, align 4, !annotation !33
  %master_key_descriptor = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10, i32 0, i32 4
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %1 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ci_mode, align 4
  %keysize = getelementptr inbounds %struct.fscrypt_mode, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %keysize to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %keysize, align 4
  %call = call fastcc ptr @find_and_lock_process_key(ptr noundef nonnull @.str, ptr noundef %master_key_descriptor, i32 noundef %4, ptr noundef nonnull %payload)
  %cmp = icmp eq ptr %call, inttoptr (i32 -126 to ptr)
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ci_inode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 4
  %5 = ptrtoint ptr %ci_inode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ci_inode, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i_sb, align 4
  %s_cop = getelementptr inbounds %struct.super_block, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %s_cop to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_cop, align 4
  %key_prefix = getelementptr inbounds %struct.fscrypt_operations, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %key_prefix to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %key_prefix, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %land.lhs.true.if.then13_crit_edge, label %if.then

land.lhs.true.if.then13_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ci_mode, align 4
  %keysize10 = getelementptr inbounds %struct.fscrypt_mode, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %keysize10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %keysize10, align 4
  %call11 = call fastcc ptr @find_and_lock_process_key(ptr noundef nonnull %12, ptr noundef %master_key_descriptor, i32 noundef %16, ptr noundef nonnull %payload)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %key.0 = phi ptr [ %call11, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %cmp.i = icmp ugt ptr %key.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.then13_crit_edge, label %if.end15

if.end.if.then13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %if.end.if.then13_crit_edge, %land.lhs.true.if.then13_crit_edge
  %key.032 = phi ptr [ %key.0, %if.end.if.then13_crit_edge ], [ inttoptr (i32 -126 to ptr), %land.lhs.true.if.then13_crit_edge ]
  %17 = ptrtoint ptr %key.032 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %payload, align 4
  %raw = getelementptr inbounds %struct.fscrypt_key, ptr %19, i32 0, i32 1
  %call17 = tail call i32 @fscrypt_setup_v1_file_key(ptr noundef %ci, ptr noundef %raw)
  %sem = getelementptr inbounds %struct.key, ptr %key.0, i32 0, i32 4
  tail call void @up_read(ptr noundef %sem) #8
  tail call void @key_put(ptr noundef %key.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13
  %retval.0 = phi i32 [ %17, %if.then13 ], [ %call17, %if.end15 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %payload) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_and_lock_process_key(ptr noundef %prefix, ptr noundef %descriptor, i32 noundef %min_keysize, ptr nocapture noundef writeonly %payload_ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %prefix, i32 noundef 8, ptr noundef %descriptor) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @request_key_tag(ptr noundef nonnull @key_type_logon, ptr noundef nonnull %call, ptr noundef null, ptr noundef null) #8
  tail call void @kfree(ptr noundef nonnull %call) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %sem = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 4
  tail call void @down_read(ptr noundef %sem) #8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sem, i32 noundef 4) #8
  %0 = ptrtoint ptr %sem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %sem, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not.i = icmp eq i32 %1, 0
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %if.end5.user_key_payload_locked.exit_crit_edge

if.end5.user_key_payload_locked.exit_crit_edge:   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %user_key_payload_locked.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %user_key_payload_locked.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @user_key_payload_locked.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, label %if.then.i

land.lhs.true3.i.user_key_payload_locked.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %user_key_payload_locked.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @user_key_payload_locked.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 53, ptr noundef nonnull @.str.9) #8
  br label %user_key_payload_locked.exit

user_key_payload_locked.exit:                     ; preds = %if.then.i, %land.lhs.true3.i.user_key_payload_locked.exit_crit_edge, %land.lhs.true.i.user_key_payload_locked.exit_crit_edge, %if.end5.user_key_payload_locked.exit_crit_edge
  %2 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 17
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %user_key_payload_locked.exit.invalid_crit_edge, label %if.end9

user_key_payload_locked.exit.invalid_crit_edge:   ; preds = %user_key_payload_locked.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %invalid

if.end9:                                          ; preds = %user_key_payload_locked.exit
  %data = getelementptr inbounds %struct.user_key_payload, ptr %4, i32 0, i32 3
  %datalen = getelementptr inbounds %struct.user_key_payload, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %datalen to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %datalen, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 72, i16 %6)
  %cmp.not = icmp eq i16 %6, 72
  br i1 %cmp.not, label %lor.lhs.false, label %if.end9.if.then17_crit_edge

if.end9.if.then17_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end9
  %size = getelementptr inbounds %struct.user_key_payload, ptr %4, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %size, align 4
  %9 = add i32 %8, -65
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %9)
  %10 = icmp ult i32 %9, -64
  br i1 %10, label %lor.lhs.false.if.then17_crit_edge, label %if.end19

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then17

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end9.if.then17_crit_edge
  %description18 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 16, i32 0, i32 4
  %11 = ptrtoint ptr %description18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %description18, align 8
  tail call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %12) #13
  br label %invalid

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %min_keysize)
  %cmp21 = icmp ult i32 %8, %min_keysize
  br i1 %cmp21, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %description24 = getelementptr inbounds %struct.key, ptr %call.i, i32 0, i32 16, i32 0, i32 4
  %13 = ptrtoint ptr %description24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %description24, align 8
  tail call void (ptr, ptr, ptr, ...) @fscrypt_msg(ptr noundef null, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.7, ptr noundef %14, i32 noundef %8, i32 noundef %min_keysize) #13
  br label %invalid

if.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %payload_ret to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %data, ptr %payload_ret, align 4
  br label %cleanup

invalid:                                          ; preds = %if.then23, %if.then17, %user_key_payload_locked.exit.invalid_crit_edge
  tail call void @up_read(ptr noundef %sem) #8
  tail call void @key_put(ptr noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %invalid, %if.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -126 to ptr), %invalid ], [ %call.i, %if.end26 ], [ %call.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @key_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fscrypt_destroy_prepared_key(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @find_or_insert_direct_key(ptr noundef %to_insert, ptr noundef %raw_key, ptr nocapture noundef readonly %ci) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master_key_descriptor = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 10, i32 0, i32 4
  %0 = ptrtoint ptr %master_key_descriptor to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %hash_key.0.copyload = load i32, ptr %master_key_descriptor, align 1
  tail call void @_raw_spin_lock(ptr noundef nonnull @fscrypt_direct_keys_lock) #8
  %mul.i.i = mul i32 %hash_key.0.copyload, 1640531527
  %shr.i = lshr i32 %mul.i.i, 26
  %arrayidx = getelementptr [64 x %struct.hlist_head], ptr @fscrypt_direct_keys, i32 0, i32 %shr.i
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %dk.062 = load ptr, ptr %arrayidx, align 4
  %tobool2.not63 = icmp eq ptr %dk.062, null
  br i1 %tobool2.not63, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ci_mode = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 3
  %ci_inlinecrypt.i.i = getelementptr inbounds %struct.fscrypt_info, ptr %ci, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dk.064 = phi ptr [ %dk.062, %for.body.lr.ph ], [ %dk.0, %for.inc.for.body_crit_edge ]
  %dk_descriptor = getelementptr inbounds %struct.fscrypt_direct_key, ptr %dk.064, i32 0, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %master_key_descriptor, ptr noundef dereferenceable(8) %dk_descriptor, i32 8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp.not = icmp eq i32 %bcmp, 0
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ci_mode, align 4
  %dk_mode = getelementptr inbounds %struct.fscrypt_direct_key, ptr %dk.064, i32 0, i32 2
  %4 = ptrtoint ptr %dk_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dk_mode, align 4
  %cmp8.not = icmp eq ptr %3, %5
  br i1 %cmp8.not, label %if.end10, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end10:                                         ; preds = %if.end
  %6 = ptrtoint ptr %ci_inlinecrypt.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ci_inlinecrypt.i.i, align 1, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.i.not.i = icmp eq i8 %7, 0
  br i1 %tobool.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %blk_key.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %dk.064, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %blk_key.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %blk_key.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  br label %fscrypt_is_key_prepared.exit

if.end.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dk_key = getelementptr inbounds %struct.fscrypt_direct_key, ptr %dk.064, i32 0, i32 3
  %10 = ptrtoint ptr %dk_key to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %dk_key, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  br label %fscrypt_is_key_prepared.exit

fscrypt_is_key_prepared.exit:                     ; preds = %if.end.i, %if.then.i
  %retval.0.in.i = phi ptr [ %9, %if.then.i ], [ %11, %if.end.i ]
  %retval.0.i.not = icmp eq ptr %retval.0.in.i, null
  br i1 %retval.0.i.not, label %fscrypt_is_key_prepared.exit.for.inc_crit_edge, label %if.end13

fscrypt_is_key_prepared.exit.for.inc_crit_edge:   ; preds = %fscrypt_is_key_prepared.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end13:                                         ; preds = %fscrypt_is_key_prepared.exit
  %dk_raw = getelementptr inbounds %struct.fscrypt_direct_key, ptr %dk.064, i32 0, i32 5
  %12 = ptrtoint ptr %ci_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ci_mode, align 4
  %keysize = getelementptr inbounds %struct.fscrypt_mode, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %keysize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %keysize, align 4
  %call.i = tail call i32 @__crypto_memneq(ptr noundef %raw_key, ptr noundef %dk_raw, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i.not, label %if.end19, label %if.end13.for.inc_crit_edge

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end19:                                         ; preds = %if.end13
  %dk_refcount = getelementptr inbounds %struct.fscrypt_direct_key, ptr %dk.064, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %dk_refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %dk_refcount, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %dk_refcount, ptr %dk_refcount, i32 1, ptr elementtype(i32) %dk_refcount) #8, !srcloc !37
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end19.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !32

if.end19.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end19
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !38

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end19.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end19.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %dk_refcount, i32 noundef %.sink.i.i.i) #8
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fscrypt_direct_keys_lock) #8
  %tobool.not.i = icmp eq ptr %to_insert, null
  br i1 %tobool.not.i, label %refcount_inc.exit.cleanup_crit_edge, label %if.then.i56

refcount_inc.exit.cleanup_crit_edge:              ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i56:                                      ; preds = %refcount_inc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dk_key.i = getelementptr inbounds %struct.fscrypt_direct_key, ptr %to_insert, i32 0, i32 3
  tail call void @fscrypt_destroy_prepared_key(ptr noundef %dk_key.i) #8
  tail call void @kfree_sensitive(ptr noundef nonnull %to_insert) #8
  br label %cleanup

for.inc:                                          ; preds = %if.end13.for.inc_crit_edge, %fscrypt_is_key_prepared.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %dk.064 to i32
  call void @__asan_load4_noabort(i32 %18)
  %dk.0 = load ptr, ptr %dk.064, align 4
  %tobool2.not = icmp eq ptr %dk.0, null
  br i1 %tobool2.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %tobool30.not = icmp eq ptr %to_insert, null
  br i1 %tobool30.not, label %for.end.if.end35_crit_edge, label %if.then31

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then31:                                        ; preds = %for.end
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %to_insert to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %to_insert, align 4
  %tobool.not.i60 = icmp eq ptr %20, null
  br i1 %tobool.not.i60, label %if.then31.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then31.hlist_add_head.exit_crit_edge:          ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #10
  %pprev.i = getelementptr inbounds %struct.hlist_node, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %to_insert, ptr %pprev.i, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then31.hlist_add_head.exit_crit_edge
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %to_insert, ptr %arrayidx, align 4
  %pprev34.i = getelementptr inbounds %struct.hlist_node, ptr %to_insert, i32 0, i32 1
  %24 = ptrtoint ptr %pprev34.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %arrayidx, ptr %pprev34.i, align 4
  br label %if.end35

if.end35:                                         ; preds = %hlist_add_head.exit, %for.end.if.end35_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @fscrypt_direct_keys_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then.i56, %refcount_inc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %to_insert, %if.end35 ], [ %dk.064, %refcount_inc.exit.cleanup_crit_edge ], [ %dk.064, %if.then.i56 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_prepare_key(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fscrypt_set_per_file_enc_key(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_req_done(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @fscrypt_msg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @request_key_tag(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !17, !19, !21, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/crypto/keysetup_v1.c", i32 304, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/crypto/keysetup_v1.c", i32 33, i32 8}
!4 = !{ptr @fscrypt_direct_keys_lock, !3, !"fscrypt_direct_keys_lock", i1 false, i1 false}
!5 = !{ptr @fscrypt_direct_keys, !6, !"fscrypt_direct_keys", i1 false, i1 false}
!6 = !{!"../fs/crypto/keysetup_v1.c", i32 32, i32 8}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/crypto/keysetup_v1.c", i32 55, i32 54}
!9 = !{ptr @init_completion.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../include/linux/completion.h", i32 87, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../fs/crypto/keysetup_v1.c", i32 102, i32 38}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/crypto/keysetup_v1.c", i32 122, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../fs/crypto/keysetup_v1.c", i32 129, i32 3}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/keys/user-type.h", i32 53, i32 36}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!32 = !{!"branch_weights", i32 1, i32 2000}
!33 = !{!"auto-init"}
!34 = !{i8 0, i8 2}
!35 = !{i64 2154525182}
!36 = !{i64 2154531012}
!37 = !{i64 2148164785, i64 2148164817, i64 2148164846, i64 2148164880, i64 2148164911, i64 2148164934}
!38 = !{!"branch_weights", i32 2000, i32 1}
