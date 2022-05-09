; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/peerlookup.c_pt.bc'
source_filename = "../drivers/net/wireguard/peerlookup.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pubkey_hashtable = type { [2048 x %struct.hlist_head], %struct.siphash_key_t, %struct.mutex }
%struct.hlist_head = type { ptr }
%struct.siphash_key_t = type { [2 x i64] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.143, %struct.atomic_t }
%struct.anon.143 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.14 }
%union.anon.14 = type { %struct.raw_spinlock }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.endpoint = type { %union.anon.144, %union.anon.145 }
%union.anon.144 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%union.anon.145 = type { %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.noise_handshake = type { %struct.index_hashtable_entry, i32, i64, ptr, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, %struct.rw_semaphore }
%struct.index_hashtable_entry = type { ptr, %struct.hlist_node, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cookie = type { i64, i8, [16 x i8], i8, [16 x i8], [32 x i8], [32 x i8], %struct.rw_semaphore }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.timespec64 = type { i64, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.index_hashtable = type { [8192 x %struct.hlist_head], %struct.spinlock }

@wg_pubkey_hashtable_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&table->lock\00", [19 x i8] zeroinitializer }, align 32
@wg_pubkey_hashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/wireguard/peerlookup.c\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@wg_pubkey_hashtable_lookup.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_index_hashtable_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wg_index_hashtable_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_index_hashtable_insert.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_index_hashtable_insert.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_index_hashtable_insert.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_index_hashtable_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_index_hashtable_lookup.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 31, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 60, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private constant [38 x i8] c"../drivers/net/wireguard/peerlookup.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 91, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 749, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 760, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @wg_pubkey_hashtable_alloc.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @wg_index_hashtable_alloc.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_pubkey_hashtable_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_index_hashtable_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_pubkey_hashtable_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 8304, i32 noundef 3264, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %key = getelementptr inbounds %struct.pubkey_hashtable, ptr %call.i, i32 0, i32 1
  tail call void @get_random_bytes(ptr noundef %key, i32 noundef 16) #5
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 8192)
  %lock = getelementptr inbounds %struct.pubkey_hashtable, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @wg_pubkey_hashtable_alloc.__key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_pubkey_hashtable_add(ptr noundef %table, ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pubkey_hashtable, ptr %table, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %pubkey_hash = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 16
  %remote_static = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 5
  %key.i = getelementptr inbounds %struct.pubkey_hashtable, ptr %table, i32 0, i32 1
  %call.i.i = tail call i64 @__siphash_unaligned(ptr noundef %remote_static, i32 noundef 32, ptr noundef %key.i) #5
  %0 = trunc i64 %call.i.i to i32
  %idxprom.i = and i32 %0, 2047
  %arrayidx.i = getelementptr [2048 x %struct.hlist_head], ptr %table, i32 0, i32 %idxprom.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %3 = ptrtoint ptr %pubkey_hash to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %pubkey_hash, align 4
  %pprev.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 16, i32 1
  %4 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %pubkey_hash, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

entry.hlist_add_head_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %pubkey_hash, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %entry.hlist_add_head_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_pubkey_hashtable_remove(ptr noundef %table, ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.pubkey_hashtable, ptr %table, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %pprev.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 16, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %pubkey_hash = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 16
  %2 = ptrtoint ptr %pubkey_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pubkey_hash, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_pubkey_hashtable_lookup(ptr noundef %table, ptr noundef %pubkey) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #5
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #5
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %key.i = getelementptr inbounds %struct.pubkey_hashtable, ptr %table, i32 0, i32 1
  %call.i.i = tail call i64 @__siphash_unaligned(ptr noundef %pubkey, i32 noundef 32, ptr noundef %key.i) #5
  %0 = trunc i64 %call.i.i to i32
  %idxprom.i = and i32 %0, 2047
  %arrayidx.i = getelementptr [2048 x %struct.hlist_head], ptr %table, i32 0, i32 %idxprom.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx.i, align 4
  %call2 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end8_crit_edge

rcu_read_lock_bh.exit.do.end8_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b56 = load i1, ptr @wg_pubkey_hashtable_lookup.__warned, align 1
  br i1 %.b56, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @wg_pubkey_hashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @.str.2) #5
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock_bh.exit.do.end8_crit_edge
  %tobool11.not = icmp eq ptr %2, null
  %add.ptr = getelementptr i8, ptr %2, i32 -1000
  %tobool13.not6770 = icmp eq ptr %add.ptr, null
  %tobool13.not67 = or i1 %tobool11.not, %tobool13.not6770
  br i1 %tobool13.not67, label %do.end8.for.end_crit_edge, label %do.end8.for.body_crit_edge

do.end8.for.body_crit_edge:                       ; preds = %do.end8
  br label %for.body

do.end8.for.end_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %do.end34.for.body_crit_edge, %do.end8.for.body_crit_edge
  %iter_peer.068 = phi ptr [ %add.ptr41, %do.end34.for.body_crit_edge ], [ %add.ptr, %do.end8.for.body_crit_edge ]
  %remote_static = getelementptr inbounds %struct.wg_peer, ptr %iter_peer.068, i32 0, i32 10, i32 5
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(32) %pubkey, ptr noundef dereferenceable(32) %remote_static, i32 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool15.not = icmp eq i32 %bcmp, 0
  br i1 %tobool15.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %for.body
  %pubkey_hash = getelementptr inbounds %struct.wg_peer, ptr %iter_peer.068, i32 0, i32 16
  %3 = ptrtoint ptr %pubkey_hash to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pubkey_hash, align 8
  %call24 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true26, label %for.inc.do.end34_crit_edge

for.inc.do.end34_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

land.lhs.true26:                                  ; preds = %for.inc
  %call27 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true26.do.end34_crit_edge, label %land.lhs.true29

land.lhs.true26.do.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

land.lhs.true29:                                  ; preds = %land.lhs.true26
  %.b5455 = load i1, ptr @wg_pubkey_hashtable_lookup.__warned.3, align 1
  br i1 %.b5455, label %land.lhs.true29.do.end34_crit_edge, label %if.then31

land.lhs.true29.do.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end34

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @wg_pubkey_hashtable_lookup.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 61, ptr noundef nonnull @.str.2) #5
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %land.lhs.true29.do.end34_crit_edge, %land.lhs.true26.do.end34_crit_edge, %for.inc.do.end34_crit_edge
  %tobool37.not = icmp eq ptr %4, null
  %add.ptr41 = getelementptr i8, ptr %4, i32 -1000
  %tobool13.not71 = icmp eq ptr %add.ptr41, null
  %tobool13.not = or i1 %tobool37.not, %tobool13.not71
  br i1 %tobool13.not, label %do.end34.for.end_crit_edge, label %do.end34.for.body_crit_edge

do.end34.for.body_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end34.for.end_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.end34.for.end_crit_edge, %for.body.for.end_crit_edge, %do.end8.for.end_crit_edge
  %iter_peer.0.lcssa = phi ptr [ null, %do.end8.for.end_crit_edge ], [ %iter_peer.068, %for.body.for.end_crit_edge ], [ null, %do.end34.for.end_crit_edge ]
  %call45 = tail call ptr @wg_peer_get_maybe_zero(ptr noundef %iter_peer.0.lcssa) #5
  %call.i58 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i58, label %for.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i61

for.end.rcu_read_unlock_bh.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i61:                                ; preds = %for.end
  %call1.i59 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #5
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i61.rcu_read_unlock_bh.exit_crit_edge, %for.end.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #5
  tail call fastcc void @local_bh_enable() #5
  ret ptr %call45
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_peer_get_maybe_zero(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_index_hashtable_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef 32812, i32 noundef 3264, i32 noundef -1) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = call ptr @memset(ptr %call.i, i32 0, i32 32768)
  %lock = getelementptr inbounds %struct.index_hashtable, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @wg_index_hashtable_alloc.__key, i16 noundef signext 3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_index_hashtable_insert(ptr noundef %table, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.index_hashtable, ptr %table, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %index_hash = getelementptr inbounds %struct.index_hashtable_entry, ptr %entry1, i32 0, i32 1
  %pprev.i.i = getelementptr inbounds %struct.index_hashtable_entry, ptr %entry1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %index_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %index_hash, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  tail call fastcc void @local_bh_disable() #5
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %hlist_del_init_rcu.exit.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

hlist_del_init_rcu.exit.rcu_read_lock_bh.exit_crit_edge: ; preds = %hlist_del_init_rcu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %hlist_del_init_rcu.exit
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i163

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

if.then.i163:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #5
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i163, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %hlist_del_init_rcu.exit.rcu_read_lock_bh.exit_crit_edge
  %index = getelementptr inbounds %struct.index_hashtable_entry, ptr %entry1, i32 0, i32 3
  br label %search_unused_slot

search_unused_slot:                               ; preds = %search_unused_slot.backedge, %rcu_read_lock_bh.exit
  %call = tail call i32 @get_random_u32() #5
  %7 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call, ptr %index, align 4
  %and.i = and i32 %call, 8191
  %arrayidx.i = getelementptr [8192 x %struct.hlist_head], ptr %table, i32 0, i32 %and.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.i, align 4
  %call6 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true, label %search_unused_slot.do.end12_crit_edge

search_unused_slot.do.end12_crit_edge:            ; preds = %search_unused_slot
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

land.lhs.true:                                    ; preds = %search_unused_slot
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end12_crit_edge, label %land.lhs.true9

land.lhs.true.do.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b159 = load i1, ptr @wg_index_hashtable_insert.__warned, align 1
  br i1 %.b159, label %land.lhs.true9.do.end12_crit_edge, label %if.then

land.lhs.true9.do.end12_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end12

if.then:                                          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @wg_index_hashtable_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 135, ptr noundef nonnull @.str.2) #5
  br label %do.end12

do.end12:                                         ; preds = %if.then, %land.lhs.true9.do.end12_crit_edge, %land.lhs.true.do.end12_crit_edge, %search_unused_slot.do.end12_crit_edge
  %tobool15.not = icmp eq ptr %9, null
  %add.ptr = getelementptr i8, ptr %9, i32 -4
  %tobool17.not182188 = icmp eq ptr %add.ptr, null
  %tobool17.not182 = or i1 %tobool15.not, %tobool17.not182188
  br i1 %tobool17.not182, label %do.end12.for.end_crit_edge, label %do.end12.for.body_crit_edge

do.end12.for.body_crit_edge:                      ; preds = %do.end12
  br label %for.body

do.end12.for.end_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %do.end39.for.body_crit_edge, %do.end12.for.body_crit_edge
  %existing_entry.0183 = phi ptr [ %add.ptr46, %do.end39.for.body_crit_edge ], [ %add.ptr, %do.end12.for.body_crit_edge ]
  %index18 = getelementptr inbounds %struct.index_hashtable_entry, ptr %existing_entry.0183, i32 0, i32 3
  %10 = ptrtoint ptr %index18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index18, align 4
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp eq i32 %11, %13
  br i1 %cmp, label %for.body.search_unused_slot.backedge_crit_edge, label %for.inc

for.body.search_unused_slot.backedge_crit_edge:   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %search_unused_slot.backedge

for.inc:                                          ; preds = %for.body
  %index_hash27 = getelementptr inbounds %struct.index_hashtable_entry, ptr %existing_entry.0183, i32 0, i32 1
  %14 = ptrtoint ptr %index_hash27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %index_hash27, align 4
  %call29 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %for.inc.do.end39_crit_edge

for.inc.do.end39_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

land.lhs.true31:                                  ; preds = %for.inc
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b153158 = load i1, ptr @wg_index_hashtable_insert.__warned.4, align 1
  br i1 %.b153158, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @wg_index_hashtable_insert.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 135, ptr noundef nonnull @.str.2) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %for.inc.do.end39_crit_edge
  %tobool42.not = icmp eq ptr %15, null
  %add.ptr46 = getelementptr i8, ptr %15, i32 -4
  %tobool17.not191 = icmp eq ptr %add.ptr46, null
  %tobool17.not = or i1 %tobool42.not, %tobool17.not191
  br i1 %tobool17.not, label %do.end39.for.end_crit_edge, label %do.end39.for.body_crit_edge

do.end39.for.body_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %do.end39.for.end_crit_edge, %do.end12.for.end_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %and.i164 = and i32 %17, 8191
  %arrayidx.i165 = getelementptr [8192 x %struct.hlist_head], ptr %table, i32 0, i32 %and.i164
  %18 = ptrtoint ptr %arrayidx.i165 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %arrayidx.i165, align 4
  %call60 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true62, label %for.end.do.end70_crit_edge

for.end.do.end70_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

land.lhs.true62:                                  ; preds = %for.end
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true62.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true62.do.end70_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true62
  %.b154157 = load i1, ptr @wg_index_hashtable_insert.__warned.5, align 1
  br i1 %.b154157, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @wg_index_hashtable_insert.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @.str.2) #5
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true62.do.end70_crit_edge, %for.end.do.end70_crit_edge
  %tobool73.not = icmp eq ptr %19, null
  %add.ptr77 = getelementptr i8, ptr %19, i32 -4
  %tobool82.not184189 = icmp eq ptr %add.ptr77, null
  %tobool82.not184 = or i1 %tobool73.not, %tobool82.not184189
  br i1 %tobool82.not184, label %do.end70.for.end120_crit_edge, label %do.end70.for.body83_crit_edge

do.end70.for.body83_crit_edge:                    ; preds = %do.end70
  br label %for.body83

do.end70.for.end120_crit_edge:                    ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end120

for.body83:                                       ; preds = %do.end109.for.body83_crit_edge, %do.end70.for.body83_crit_edge
  %existing_entry.1185 = phi ptr [ %add.ptr116, %do.end109.for.body83_crit_edge ], [ %add.ptr77, %do.end70.for.body83_crit_edge ]
  %index84 = getelementptr inbounds %struct.index_hashtable_entry, ptr %existing_entry.1185, i32 0, i32 3
  %20 = ptrtoint ptr %index84 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index84, align 4
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp86 = icmp eq i32 %21, %23
  br i1 %cmp86, label %if.then87, label %for.inc90

if.then87:                                        ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  br label %search_unused_slot.backedge

search_unused_slot.backedge:                      ; preds = %if.then87, %for.body.search_unused_slot.backedge_crit_edge
  br label %search_unused_slot

for.inc90:                                        ; preds = %for.body83
  %index_hash96 = getelementptr inbounds %struct.index_hashtable_entry, ptr %existing_entry.1185, i32 0, i32 1
  %24 = ptrtoint ptr %index_hash96 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %index_hash96, align 4
  %call99 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %land.lhs.true101, label %for.inc90.do.end109_crit_edge

for.inc90.do.end109_crit_edge:                    ; preds = %for.inc90
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end109

land.lhs.true101:                                 ; preds = %for.inc90
  %call102 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true101.do.end109_crit_edge, label %land.lhs.true104

land.lhs.true101.do.end109_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end109

land.lhs.true104:                                 ; preds = %land.lhs.true101
  %.b155156 = load i1, ptr @wg_index_hashtable_insert.__warned.6, align 1
  br i1 %.b155156, label %land.lhs.true104.do.end109_crit_edge, label %if.then106

land.lhs.true104.do.end109_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end109

if.then106:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @wg_index_hashtable_insert.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 147, ptr noundef nonnull @.str.2) #5
  br label %do.end109

do.end109:                                        ; preds = %if.then106, %land.lhs.true104.do.end109_crit_edge, %land.lhs.true101.do.end109_crit_edge, %for.inc90.do.end109_crit_edge
  %tobool112.not = icmp eq ptr %25, null
  %add.ptr116 = getelementptr i8, ptr %25, i32 -4
  %tobool82.not192 = icmp eq ptr %add.ptr116, null
  %tobool82.not = or i1 %tobool112.not, %tobool82.not192
  br i1 %tobool82.not, label %do.end109.for.end120_crit_edge, label %do.end109.for.body83_crit_edge

do.end109.for.body83_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body83

do.end109.for.end120_crit_edge:                   ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end120

for.end120:                                       ; preds = %do.end109.for.end120_crit_edge, %do.end70.for.end120_crit_edge
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  %and.i166 = and i32 %27, 8191
  %arrayidx.i167 = getelementptr [8192 x %struct.hlist_head], ptr %table, i32 0, i32 %and.i166
  %28 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i167, align 4
  %30 = ptrtoint ptr %index_hash to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %index_hash, align 4
  %31 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %arrayidx.i167, ptr %pprev.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !35
  %32 = ptrtoint ptr %arrayidx.i167 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %index_hash, ptr %arrayidx.i167, align 4
  %tobool.not.i168 = icmp eq ptr %29, null
  br i1 %tobool.not.i168, label %for.end120.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

for.end120.hlist_add_head_rcu.exit_crit_edge:     ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #7
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %29, i32 0, i32 1
  %33 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %index_hash, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %for.end120.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call.i169 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i169, label %hlist_add_head_rcu.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i172

hlist_add_head_rcu.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %hlist_add_head_rcu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i172:                               ; preds = %hlist_add_head_rcu.exit
  %call1.i170 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i170)
  %tobool.not.i171 = icmp eq i32 %call1.i170, 0
  br i1 %tobool.not.i171, label %land.lhs.true.i172.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i174

land.lhs.true.i172.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i172
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i174:                              ; preds = %land.lhs.true.i172
  %.b4.i173 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i173, label %land.lhs.true2.i174.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i175

land.lhs.true2.i174.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

if.then.i175:                                     ; preds = %land.lhs.true2.i174
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #5
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i175, %land.lhs.true2.i174.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i172.rcu_read_unlock_bh.exit_crit_edge, %hlist_add_head_rcu.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #5
  tail call fastcc void @local_bh_enable() #5
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_index_hashtable_replace(ptr noundef %table, ptr noundef %old, ptr noundef %new) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.index_hashtable, ptr %table, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %index_hash = getelementptr inbounds %struct.index_hashtable_entry, ptr %old, i32 0, i32 1
  %pprev.i = getelementptr inbounds %struct.index_hashtable_entry, ptr %old, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i, align 4
  %tobool.not.i = icmp ne ptr %1, null
  br i1 %tobool.not.i, label %if.end, label %entry.out_crit_edge, !prof !36

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.index_hashtable_entry, ptr %old, i32 0, i32 3
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %index6 = getelementptr inbounds %struct.index_hashtable_entry, ptr %new, i32 0, i32 3
  %4 = ptrtoint ptr %index6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %index6, align 4
  %index_hash8 = getelementptr inbounds %struct.index_hashtable_entry, ptr %new, i32 0, i32 1
  %5 = ptrtoint ptr %index_hash to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %index_hash, align 4
  %7 = ptrtoint ptr %index_hash8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %index_hash8, align 4
  %8 = ptrtoint ptr %pprev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pprev.i, align 4
  %pprev5.i = getelementptr inbounds %struct.index_hashtable_entry, ptr %new, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %pprev5.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %pprev5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !37
  %11 = ptrtoint ptr %pprev5.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pprev5.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %index_hash8, ptr %12, align 4
  %tobool.not.i19 = icmp eq ptr %6, null
  br i1 %tobool.not.i19, label %if.end.hlist_replace_rcu.exit_crit_edge, label %do.body50.i

if.end.hlist_replace_rcu.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_replace_rcu.exit

do.body50.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %index_hash8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %index_hash8, align 4
  %pprev53.i = getelementptr inbounds %struct.hlist_node, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pprev53.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %index_hash8, ptr %pprev53.i, align 4
  br label %hlist_replace_rcu.exit

hlist_replace_rcu.exit:                           ; preds = %do.body50.i, %if.end.hlist_replace_rcu.exit_crit_edge
  %17 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev.i, align 4
  %18 = ptrtoint ptr %index_hash to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %index_hash, align 4
  store ptr null, ptr %pprev.i, align 4
  br label %out

out:                                              ; preds = %hlist_replace_rcu.exit, %entry.out_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret i1 %tobool.not.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_index_hashtable_remove(ptr noundef %table, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.index_hashtable, ptr %table, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %pprev.i.i = getelementptr inbounds %struct.index_hashtable_entry, ptr %entry1, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.not.i, label %entry.hlist_del_init_rcu.exit_crit_edge, label %if.then.i

entry.hlist_del_init_rcu.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %hlist_del_init_rcu.exit

if.then.i:                                        ; preds = %entry
  %index_hash = getelementptr inbounds %struct.index_hashtable_entry, ptr %entry1, i32 0, i32 1
  %2 = ptrtoint ptr %index_hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %index_hash, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %3, ptr %1, align 4
  %tobool.not.i7.i = icmp eq ptr %3, null
  br i1 %tobool.not.i7.i, label %if.then.i.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i.__hlist_del.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %1, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i.__hlist_del.exit.i_crit_edge
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr null, ptr %pprev.i.i, align 4
  br label %hlist_del_init_rcu.exit

hlist_del_init_rcu.exit:                          ; preds = %__hlist_del.exit.i, %entry.hlist_del_init_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_index_hashtable_lookup(ptr noundef %table, i32 noundef %type_mask, i32 noundef %index, ptr nocapture noundef writeonly %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @local_bh_disable() #5
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #5
  %call.i = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 750, ptr noundef nonnull @.str.9) #5
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %and.i = and i32 %index, 8191
  %arrayidx.i = getelementptr [8192 x %struct.hlist_head], ptr %table, i32 0, i32 %and.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %call3 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end9_crit_edge

rcu_read_lock_bh.exit.do.end9_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true6

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b88 = load i1, ptr @wg_index_hashtable_lookup.__warned, align 1
  br i1 %.b88, label %land.lhs.true6.do.end9_crit_edge, label %if.then

land.lhs.true6.do.end9_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @wg_index_hashtable_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 210, ptr noundef nonnull @.str.2) #5
  br label %do.end9

do.end9:                                          ; preds = %if.then, %land.lhs.true6.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock_bh.exit.do.end9_crit_edge
  %tobool12.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %tobool14.not104107 = icmp eq ptr %add.ptr, null
  %tobool14.not104 = or i1 %tobool12.not, %tobool14.not104107
  br i1 %tobool14.not104, label %do.end9.if.end72_crit_edge, label %do.end9.for.body_crit_edge

do.end9.for.body_crit_edge:                       ; preds = %do.end9
  br label %for.body

do.end9.if.end72_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

for.body:                                         ; preds = %do.end39.for.body_crit_edge, %do.end9.for.body_crit_edge
  %iter_entry.0105 = phi ptr [ %add.ptr46, %do.end39.for.body_crit_edge ], [ %add.ptr, %do.end9.for.body_crit_edge ]
  %index15 = getelementptr inbounds %struct.index_hashtable_entry, ptr %iter_entry.0105, i32 0, i32 3
  %2 = ptrtoint ptr %index15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %index)
  %cmp = icmp eq i32 %3, %index
  br i1 %cmp, label %if.then16, label %for.inc

if.then16:                                        ; preds = %for.body
  %type = getelementptr inbounds %struct.index_hashtable_entry, ptr %iter_entry.0105, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %and = and i32 %5, %type_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then16.if.end72_crit_edge, label %if.then57

if.then16.if.end72_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

for.inc:                                          ; preds = %for.body
  %index_hash = getelementptr inbounds %struct.index_hashtable_entry, ptr %iter_entry.0105, i32 0, i32 1
  %6 = ptrtoint ptr %index_hash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %index_hash, align 4
  %call29 = tail call i32 @rcu_read_lock_bh_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true31, label %for.inc.do.end39_crit_edge

for.inc.do.end39_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

land.lhs.true31:                                  ; preds = %for.inc
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b8687 = load i1, ptr @wg_index_hashtable_lookup.__warned.7, align 1
  br i1 %.b8687, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @wg_index_hashtable_lookup.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 210, ptr noundef nonnull @.str.2) #5
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %for.inc.do.end39_crit_edge
  %tobool42.not = icmp eq ptr %7, null
  %add.ptr46 = getelementptr i8, ptr %7, i32 -4
  %tobool14.not109 = icmp eq ptr %add.ptr46, null
  %tobool14.not = or i1 %tobool42.not, %tobool14.not109
  br i1 %tobool14.not, label %do.end39.if.end72_crit_edge, label %do.end39.for.body_crit_edge

do.end39.for.body_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end39.if.end72_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then57:                                        ; preds = %if.then16
  %8 = ptrtoint ptr %iter_entry.0105 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iter_entry.0105, align 4
  %call59 = tail call ptr @wg_peer_get_maybe_zero(ptr noundef %9) #5
  %10 = ptrtoint ptr %iter_entry.0105 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call59, ptr %iter_entry.0105, align 4
  %tobool62.not = icmp eq ptr %call59, null
  br i1 %tobool62.not, label %if.then57.if.end72_crit_edge, label %if.then69, !prof !38

if.then57.if.end72_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.then69:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call59, ptr %peer, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then69, %if.then57.if.end72_crit_edge, %do.end39.if.end72_crit_edge, %if.then16.if.end72_crit_edge, %do.end9.if.end72_crit_edge
  %entry1.1 = phi ptr [ %iter_entry.0105, %if.then69 ], [ null, %if.then57.if.end72_crit_edge ], [ null, %if.then16.if.end72_crit_edge ], [ null, %do.end9.if.end72_crit_edge ], [ null, %do.end39.if.end72_crit_edge ]
  %call.i91 = tail call zeroext i1 @rcu_is_watching() #5
  br i1 %call.i91, label %if.end72.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i94

if.end72.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i94:                                ; preds = %if.end72
  %call1.i92 = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i92)
  %tobool.not.i93 = icmp eq i32 %call1.i92, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i94.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i96

land.lhs.true.i94.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i94
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i96:                               ; preds = %land.lhs.true.i94
  %.b4.i95 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i95, label %land.lhs.true2.i96.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i97

land.lhs.true2.i96.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #7
  br label %rcu_read_unlock_bh.exit

if.then.i97:                                      ; preds = %land.lhs.true2.i96
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 761, ptr noundef nonnull @.str.10) #5
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i97, %land.lhs.true2.i96.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i94.rcu_read_unlock_bh.exit_crit_edge, %if.end72.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #5
  tail call fastcc void @local_bh_enable() #5
  ret ptr %entry1.1
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__siphash_unaligned(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #5
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !12, !13, !15, !16, !18, !19, !21, !22, !23, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @wg_pubkey_hashtable_alloc.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/peerlookup.c", i32 31, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../drivers/net/wireguard/peerlookup.c", i32 60, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!8 = !{ptr @wg_index_hashtable_alloc.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireguard/peerlookup.c", i32 91, i32 2}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/net/wireguard/peerlookup.c", i32 133, i32 2}
!12 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../drivers/net/wireguard/peerlookup.c", i32 145, i32 2}
!15 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/wireguard/peerlookup.c", i32 209, i32 2}
!18 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 2151547236}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2151511072}
!38 = !{!"branch_weights", i32 1, i32 2000}
