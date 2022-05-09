; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/noise.c_pt.bc'
source_filename = "../drivers/net/wireguard/noise.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.151, %struct.atomic_t }
%struct.anon.151 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.endpoint = type { %union.anon.152, %union.anon.153 }
%union.anon.152 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%union.anon.153 = type { %struct.in6_addr }
%struct.dst_cache = type { ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.noise_handshake = type { %struct.index_hashtable_entry, i32, i64, ptr, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, %struct.rw_semaphore }
%struct.index_hashtable_entry = type { ptr, %struct.hlist_node, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cookie = type { i64, i8, [16 x i8], i8, [16 x i8], [32 x i8], [32 x i8], %struct.rw_semaphore }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.timespec64 = type { i64, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.noise_static_identity = type { [32 x i8], [32 x i8], %struct.rw_semaphore, i8 }
%struct.wg_device = type { ptr, [124 x i8], %struct.crypt_queue, %struct.crypt_queue, %struct.crypt_queue, ptr, ptr, ptr, %struct.noise_static_identity, ptr, ptr, ptr, %struct.cookie_checker, ptr, ptr, %struct.allowedips, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16, [126 x i8] }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.cookie_checker = type { [32 x i8], [32 x i8], [32 x i8], i64, %struct.rw_semaphore, ptr }
%struct.allowedips = type { ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.noise_keypair = type { %struct.index_hashtable_entry, %struct.noise_symmetric_key, %struct.atomic64_t, %struct.noise_symmetric_key, %struct.noise_replay_counter, i32, i8, %struct.kref, %struct.callback_head, i64 }
%struct.noise_symmetric_key = type { [32 x i8], i64, i8 }
%struct.noise_replay_counter = type { i64, %struct.spinlock, [256 x i32] }
%struct.message_handshake_initiation = type { %struct.message_header, i32, [32 x i8], [48 x i8], [28 x i8], %struct.message_macs }
%struct.message_header = type { i32 }
%struct.message_macs = type { [16 x i8], [16 x i8] }
%struct.message_handshake_response = type { %struct.message_header, i32, i32, [32 x i8], [16 x i8], %struct.message_macs }

@handshake_init_chaining_key = internal global [32 x i8] zeroinitializer, section ".data..ro_after_init", align 1
@handshake_name = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Noise_IKpsk2_25519_ChaChaPoly_BLAKE2s", [59 x i8] zeroinitializer }, align 32
@identifier_name = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"WireGuard v1 zx2c4 Jason@zx2c4.com", [62 x i8] zeroinitializer }, align 32
@handshake_init_hash = internal global [32 x i8] zeroinitializer, section ".data..ro_after_init", align 1
@wg_noise_handshake_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&handshake->lock\00", [47 x i8] zeroinitializer }, align 32
@wg_noise_keypair_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/net/wireguard/noise.c\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"Taking noise keypair reference without holding the RCU BH read lock\00", [60 x i8] zeroinitializer }, align 32
@wg_noise_keypairs_clear.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@wg_noise_keypairs_clear.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_noise_keypairs_clear.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_noise_expire_current_peer_keypairs.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_noise_expire_current_peer_keypairs.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_noise_received_with_keypair.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_noise_received_with_keypair.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_noise_received_with_keypair.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@wg_noise_handshake_begin_session.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.1, ptr @.str.11, i8 0, i8 -44, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wg_noise_handshake_begin_session\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Keypair %llu created for peer %llu\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"wireguard: %s: Keypair %llu created for peer %llu\0A\00", [45 x i8] zeroinitializer }, align 32
@curve25519_null_point = external dso_local constant [0 x i8], align 1
@keypair_free_kref.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str.1, ptr @.str.15, i8 0, i8 31, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keypair_free_kref\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Keypair %llu destroyed for peer %llu\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"wireguard: %s: Keypair %llu destroyed for peer %llu\0A\00", [43 x i8] zeroinitializer }, align 32
@mix_precomputed_dh.zero_point = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@keypair_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&keypair->receiving_counter.lock\00", [63 x i8] zeroinitializer }, align 32
@keypair_counter = internal global { %struct.atomic64_t, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@add_new_keypair.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@add_new_keypair.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@add_new_keypair.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"handshake_name\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 28, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"identifier_name\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 29, i32 17 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 66, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 144, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 161, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 846, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 122, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"zero_point\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 423, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 104, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"keypair_counter\00", align 1
@___asan_gen_.75 = private constant [33 x i8] c"../drivers/net/wireguard/noise.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 32, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 749, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 760, i32 2 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @handshake_name, ptr @identifier_name, ptr @wg_noise_handshake_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @mix_precomputed_dh.zero_point, ptr @keypair_create.__key, ptr @.str.17, ptr @keypair_counter, ptr @.str.18, ptr @.str.19, ptr @.str.22], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handshake_name to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @identifier_name to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_noise_handshake_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mix_precomputed_dh.zero_point to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypair_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keypair_counter to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_noise_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %state.i = alloca %struct.blake2s_state, align 4
  %blake = alloca %struct.blake2s_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake) #8
  %0 = getelementptr inbounds i8, ptr %blake, i32 48
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %state.i) #8
  %2 = getelementptr inbounds i8, ptr %state.i, i32 48
  %3 = call ptr @memset(ptr %2, i32 255, i32 64)
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1795745351, ptr %state.i, align 4
  %arrayidx3.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1150833019, ptr %arrayidx3.i.i, align 4
  %arrayidx5.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1013904242, ptr %arrayidx5.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1521486534, ptr %arrayidx7.i.i, align 4
  %arrayidx9.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1359893119, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 5
  %9 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1694144372, ptr %arrayidx11.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 6
  %10 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 528734635, ptr %arrayidx13.i.i, align 4
  %arrayidx15.i.i = getelementptr inbounds [8 x i32], ptr %state.i, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1541459225, ptr %arrayidx15.i.i, align 4
  %t.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i, i32 0, i32 1
  %buflen.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i, i32 0, i32 4
  %12 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %buflen.i.i, align 4
  %outlen22.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state.i, i32 0, i32 5
  %13 = call ptr @memset(ptr %t.i.i, i32 0, i32 16)
  %14 = ptrtoint ptr %outlen22.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %outlen22.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %state.i, ptr noundef nonnull @handshake_name, i32 noundef 37) #8
  call void @blake2s_final(ptr noundef nonnull %state.i, ptr noundef nonnull @handshake_init_chaining_key) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %state.i) #8
  %15 = ptrtoint ptr %blake to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1795745351, ptr %blake, align 4
  %arrayidx3.i.i1 = getelementptr inbounds [8 x i32], ptr %blake, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx3.i.i1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1150833019, ptr %arrayidx3.i.i1, align 4
  %arrayidx5.i.i2 = getelementptr inbounds [8 x i32], ptr %blake, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx5.i.i2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1013904242, ptr %arrayidx5.i.i2, align 4
  %arrayidx7.i.i3 = getelementptr inbounds [8 x i32], ptr %blake, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx7.i.i3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1521486534, ptr %arrayidx7.i.i3, align 4
  %arrayidx9.i.i4 = getelementptr inbounds [8 x i32], ptr %blake, i32 0, i32 4
  %19 = ptrtoint ptr %arrayidx9.i.i4 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1359893119, ptr %arrayidx9.i.i4, align 4
  %arrayidx11.i.i5 = getelementptr inbounds [8 x i32], ptr %blake, i32 0, i32 5
  %20 = ptrtoint ptr %arrayidx11.i.i5 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1694144372, ptr %arrayidx11.i.i5, align 4
  %arrayidx13.i.i6 = getelementptr inbounds [8 x i32], ptr %blake, i32 0, i32 6
  %21 = ptrtoint ptr %arrayidx13.i.i6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 528734635, ptr %arrayidx13.i.i6, align 4
  %arrayidx15.i.i7 = getelementptr inbounds [8 x i32], ptr %blake, i32 0, i32 7
  %22 = ptrtoint ptr %arrayidx15.i.i7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1541459225, ptr %arrayidx15.i.i7, align 4
  %t.i.i8 = getelementptr inbounds %struct.blake2s_state, ptr %blake, i32 0, i32 1
  %buflen.i.i9 = getelementptr inbounds %struct.blake2s_state, ptr %blake, i32 0, i32 4
  %23 = ptrtoint ptr %buflen.i.i9 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %buflen.i.i9, align 4
  %outlen22.i.i10 = getelementptr inbounds %struct.blake2s_state, ptr %blake, i32 0, i32 5
  %24 = call ptr @memset(ptr %t.i.i8, i32 0, i32 16)
  %25 = ptrtoint ptr %outlen22.i.i10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %outlen22.i.i10, align 4
  call void @blake2s_update(ptr noundef nonnull %blake, ptr noundef nonnull @handshake_init_chaining_key, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake, ptr noundef nonnull @identifier_name, i32 noundef 34) #8
  call void @blake2s_final(ptr noundef nonnull %blake, ptr noundef nonnull @handshake_init_hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_noise_precompute_static_static(ptr noundef %peer) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 13
  tail call void @down_write(ptr noundef %lock) #8
  %static_identity = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %static_identity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %static_identity, align 8
  %has_identity = getelementptr inbounds %struct.noise_static_identity, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %has_identity to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_identity, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %precomputed_static_static = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 7
  %static_private = getelementptr inbounds %struct.noise_static_identity, ptr %1, i32 0, i32 1
  %remote_static = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 5
  tail call void @curve25519_arch(ptr noundef %precomputed_static_static, ptr noundef %static_private, ptr noundef %remote_static) #8
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %precomputed_static_static, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.i.not = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.i.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %precomputed_static_static9 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 7
  %4 = call ptr @memset(ptr %precomputed_static_static9, i32 0, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  tail call void @up_write(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_noise_handshake_init(ptr noundef %handshake, ptr noundef %static_identity, ptr nocapture noundef readonly %peer_public_key, ptr noundef readonly %peer_preshared_key, ptr noundef %peer) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %handshake, i32 0, i32 376)
  %lock = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 13
  tail call void @__init_rwsem(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @wg_noise_handshake_init.__key) #8
  %type = getelementptr inbounds %struct.index_hashtable_entry, ptr %handshake, i32 0, i32 2
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %type, align 4
  %2 = ptrtoint ptr %handshake to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %peer, ptr %handshake, align 8
  %remote_static = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 5
  %3 = call ptr @memcpy(ptr %remote_static, ptr %peer_public_key, i32 32)
  %tobool.not = icmp eq ptr %peer_preshared_key, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %preshared_key = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 8
  %4 = call ptr @memcpy(ptr %preshared_key, ptr %peer_preshared_key, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %static_identity5 = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 3
  %5 = ptrtoint ptr %static_identity5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %static_identity, ptr %static_identity5, align 8
  %state = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 1
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %state, align 4
  %lock.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 13
  tail call void @down_write(ptr noundef %lock.i) #8
  %static_identity.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 3
  %7 = ptrtoint ptr %static_identity.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %static_identity.i, align 8
  %has_identity.i = getelementptr inbounds %struct.noise_static_identity, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %has_identity.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %has_identity.i, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %precomputed_static_static.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 7
  %static_private.i = getelementptr inbounds %struct.noise_static_identity, ptr %8, i32 0, i32 1
  %remote_static.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 5
  tail call void @curve25519_arch(ptr noundef %precomputed_static_static.i, ptr noundef %static_private.i, ptr noundef %remote_static.i) #8
  %call.i.i.i = tail call i32 @__crypto_memneq(ptr noundef %precomputed_static_static.i, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.wg_noise_precompute_static_static.exit_crit_edge

lor.lhs.false.i.wg_noise_precompute_static_static.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_noise_precompute_static_static.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %precomputed_static_static9.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 7
  %11 = call ptr @memset(ptr %precomputed_static_static9.i, i32 0, i32 32)
  br label %wg_noise_precompute_static_static.exit

wg_noise_precompute_static_static.exit:           ; preds = %if.then.i, %lor.lhs.false.i.wg_noise_precompute_static_static.exit_crit_edge
  tail call void @up_write(ptr noundef %lock.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_noise_handshake_clear(ptr noundef %handshake) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 13
  tail call void @down_write(ptr noundef %lock) #8
  %0 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handshake, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %index_hashtable = getelementptr inbounds %struct.wg_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %index_hashtable, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %5, ptr noundef %handshake) #8
  %ephemeral_private.i = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 4
  %6 = call ptr @memset(ptr %ephemeral_private.i, i32 0, i32 32)
  %remote_ephemeral.i = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 6
  %7 = call ptr @memset(ptr %remote_ephemeral.i, i32 0, i32 32)
  %hash.i = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 9
  %remote_index.i = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 12
  %8 = ptrtoint ptr %remote_index.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %remote_index.i, align 8
  %state.i = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 1
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state.i, align 4
  %10 = call ptr @memset(ptr %hash.i, i32 0, i32 64)
  tail call void @up_write(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_index_hashtable_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_noise_keypair_put(ptr noundef %keypair, i1 noundef zeroext %unreference_now) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %keypair, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !75

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  br i1 %unreference_now, label %if.then11, label %if.end.if.end14_crit_edge, !prof !75

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %keypair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keypair, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %index_hashtable = getelementptr inbounds %struct.wg_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %index_hashtable, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %5, ptr noundef nonnull %keypair) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %refcount = getelementptr inbounds %struct.noise_keypair, ptr %keypair, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %refcount)
  br label %return

return:                                           ; preds = %if.end14, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #8, !srcloc !77
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !78

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #8
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !79
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -1216
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @keypair_free_kref.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kref_put, %keypair_free_kref.exit)) #8
          to label %land.lhs.true.i [label %keypair_free_kref.exit], !srcloc !80

land.lhs.true.i:                                  ; preds = %if.then
  %call5.i = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.keypair_free_kref.exit_crit_edge, label %if.then.i

land.lhs.true.i.keypair_free_kref.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %keypair_free_kref.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 128
  %internal_id.i = getelementptr i8, ptr %kref, i32 16
  %7 = ptrtoint ptr %internal_id.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %internal_id.i, align 8
  %internal_id10.i = getelementptr inbounds %struct.wg_peer, ptr %2, i32 0, i32 34
  %9 = ptrtoint ptr %internal_id10.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %internal_id10.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @keypair_free_kref.descriptor, ptr noundef nonnull @.str.16, ptr noundef %6, i64 noundef %8, i64 noundef %10) #8
  br label %keypair_free_kref.exit

keypair_free_kref.exit:                           ; preds = %if.then.i, %land.lhs.true.i.keypair_free_kref.exit_crit_edge, %if.then
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %index_hashtable.i = getelementptr inbounds %struct.wg_device, ptr %14, i32 0, i32 14
  %15 = ptrtoint ptr %index_hashtable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %index_hashtable.i, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %16, ptr noundef %add.ptr.i) #8
  %rcu.i = getelementptr i8, ptr %kref, i32 4
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @keypair_free_rcu) #8
  br label %return

return:                                           ; preds = %keypair_free_kref.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_noise_keypair_get(ptr noundef %keypair) local_unnamed_addr #3 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @wg_noise_keypair_get.__warned, align 1
  br i1 %.b15, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_keypair_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 145, ptr noundef nonnull @.str.2) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %tobool5.not = icmp eq ptr %keypair, null
  br i1 %tobool5.not, label %do.end.lor.end.thread_crit_edge, label %lor.rhs, !prof !75

do.end.lor.end.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end.thread

lor.rhs:                                          ; preds = %do.end
  %refcount = getelementptr inbounds %struct.noise_keypair, ptr %keypair, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #8
  %0 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %lor.rhs
  %2 = phi i32 [ %1, %lor.rhs ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %3 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #8
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #8, !srcloc !81
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !78

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.lor.end_crit_edge, label %if.then10.i.i.i.i, !prof !78

if.end4.i.i.i.i.lor.end_crit_edge:                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #8
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %lor.end

lor.end:                                          ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.lor.end_crit_edge
  %11 = phi i32 [ %.pr, %if.then10.i.i.i.i ], [ %8, %if.end4.i.i.i.i.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #8
  br i1 %tobool12.i.i.i.i.not, label %lor.end.lor.end.thread_crit_edge, label %lor.end._crit_edge

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %do.end.lor.end.thread_crit_edge
  br label %12

12:                                               ; preds = %lor.end.thread, %lor.end._crit_edge
  %13 = phi ptr [ null, %lor.end.thread ], [ %keypair, %lor.end._crit_edge ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_noise_keypairs_clear(ptr noundef %keypairs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %keypair_update_lock = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %keypair_update_lock) #8
  %dep_map = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b92 = load i1, ptr @wg_noise_keypairs_clear.__warned, align 1
  br i1 %.b92, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_keypairs_clear.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 162, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %next_keypair = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 2
  %0 = ptrtoint ptr %next_keypair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_keypair, align 4
  store volatile ptr null, ptr %next_keypair, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end.wg_noise_keypair_put.exit_crit_edge, label %if.end.i, !prof !75

do.end.wg_noise_keypair_put.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_noise_keypair_put.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %index_hashtable.i = getelementptr inbounds %struct.wg_device, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %index_hashtable.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %index_hashtable.i, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %7, ptr noundef nonnull %1) #8
  %refcount.i = getelementptr inbounds %struct.noise_keypair, ptr %1, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %refcount.i) #8
  br label %wg_noise_keypair_put.exit

wg_noise_keypair_put.exit:                        ; preds = %if.end.i, %do.end.wg_noise_keypair_put.exit_crit_edge
  %call.i93 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool23.not = icmp eq i32 %call.i93, 0
  br i1 %tobool23.not, label %land.lhs.true24, label %wg_noise_keypair_put.exit.do.end32_crit_edge

wg_noise_keypair_put.exit.do.end32_crit_edge:     ; preds = %wg_noise_keypair_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

land.lhs.true24:                                  ; preds = %wg_noise_keypair_put.exit
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.do.end32_crit_edge, label %land.lhs.true27

land.lhs.true24.do.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %.b8891 = load i1, ptr @wg_noise_keypairs_clear.__warned.4, align 1
  br i1 %.b8891, label %land.lhs.true27.do.end32_crit_edge, label %if.then29

land.lhs.true27.do.end32_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end32

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_keypairs_clear.__warned.4, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 167, ptr noundef nonnull @.str.3) #8
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %land.lhs.true27.do.end32_crit_edge, %land.lhs.true24.do.end32_crit_edge, %wg_noise_keypair_put.exit.do.end32_crit_edge
  %previous_keypair = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 1
  %8 = ptrtoint ptr %previous_keypair to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %previous_keypair, align 4
  store volatile ptr null, ptr %previous_keypair, align 4
  %tobool.not.i94 = icmp eq ptr %9, null
  br i1 %tobool.not.i94, label %do.end32.wg_noise_keypair_put.exit98_crit_edge, label %if.end.i95, !prof !75

do.end32.wg_noise_keypair_put.exit98_crit_edge:   ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_noise_keypair_put.exit98

if.end.i95:                                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 8
  %index_hashtable.i96 = getelementptr inbounds %struct.wg_device, ptr %13, i32 0, i32 14
  %14 = ptrtoint ptr %index_hashtable.i96 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %index_hashtable.i96, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %15, ptr noundef nonnull %9) #8
  %refcount.i97 = getelementptr inbounds %struct.noise_keypair, ptr %9, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %refcount.i97) #8
  br label %wg_noise_keypair_put.exit98

wg_noise_keypair_put.exit98:                      ; preds = %if.end.i95, %do.end32.wg_noise_keypair_put.exit98_crit_edge
  %call.i99 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool51.not = icmp eq i32 %call.i99, 0
  br i1 %tobool51.not, label %land.lhs.true52, label %wg_noise_keypair_put.exit98.do.end60_crit_edge

wg_noise_keypair_put.exit98.do.end60_crit_edge:   ; preds = %wg_noise_keypair_put.exit98
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

land.lhs.true52:                                  ; preds = %wg_noise_keypair_put.exit98
  %call53 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %land.lhs.true52.do.end60_crit_edge, label %land.lhs.true55

land.lhs.true52.do.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

land.lhs.true55:                                  ; preds = %land.lhs.true52
  %.b8990 = load i1, ptr @wg_noise_keypairs_clear.__warned.5, align 1
  br i1 %.b8990, label %land.lhs.true55.do.end60_crit_edge, label %if.then57

land.lhs.true55.do.end60_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end60

if.then57:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_keypairs_clear.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 172, ptr noundef nonnull @.str.3) #8
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %land.lhs.true55.do.end60_crit_edge, %land.lhs.true52.do.end60_crit_edge, %wg_noise_keypair_put.exit98.do.end60_crit_edge
  %16 = ptrtoint ptr %keypairs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %keypairs, align 4
  store volatile ptr null, ptr %keypairs, align 4
  %tobool.not.i100 = icmp eq ptr %17, null
  br i1 %tobool.not.i100, label %do.end60.wg_noise_keypair_put.exit104_crit_edge, label %if.end.i101, !prof !75

do.end60.wg_noise_keypair_put.exit104_crit_edge:  ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_noise_keypair_put.exit104

if.end.i101:                                      ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 8
  %index_hashtable.i102 = getelementptr inbounds %struct.wg_device, ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %index_hashtable.i102 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %index_hashtable.i102, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %23, ptr noundef nonnull %17) #8
  %refcount.i103 = getelementptr inbounds %struct.noise_keypair, ptr %17, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %refcount.i103) #8
  br label %wg_noise_keypair_put.exit104

wg_noise_keypair_put.exit104:                     ; preds = %if.end.i101, %do.end60.wg_noise_keypair_put.exit104_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %keypair_update_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_noise_expire_current_peer_keypairs(ptr noundef %peer) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10
  %lock.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 13
  tail call void @down_write(ptr noundef %lock.i) #8
  %0 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handshake, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %index_hashtable.i = getelementptr inbounds %struct.wg_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %index_hashtable.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %index_hashtable.i, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %5, ptr noundef %handshake) #8
  %ephemeral_private.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 4
  %6 = call ptr @memset(ptr %ephemeral_private.i.i, i32 0, i32 32)
  %remote_ephemeral.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 6
  %7 = call ptr @memset(ptr %remote_ephemeral.i.i, i32 0, i32 32)
  %hash.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 9
  %remote_index.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 12
  %8 = ptrtoint ptr %remote_index.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %remote_index.i.i, align 8
  %state.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %state.i.i, align 4
  %10 = call ptr @memset(ptr %hash.i.i, i32 0, i32 64)
  tail call void @up_write(ptr noundef %lock.i) #8
  %last_sent_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 11
  %call.i.i1.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %sub.i = add i64 %call.i.i1.i, -6000000000
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_sent_handshake, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %last_sent_handshake, i64 noundef %sub.i) #8
  %keypairs = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 6
  %keypair_update_lock = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 6, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %keypair_update_lock) #8
  %dep_map = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 6, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b48 = load i1, ptr @wg_noise_expire_current_peer_keypairs.__warned, align 1
  br i1 %.b48, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_expire_current_peer_keypairs.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 188, ptr noundef nonnull @.str.3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %next_keypair = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 6, i32 2
  %11 = ptrtoint ptr %next_keypair to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %next_keypair, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %do.end.do.body11_crit_edge, label %if.then9

do.end.do.body11_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body11

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %is_valid = getelementptr inbounds %struct.noise_keypair, ptr %12, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %is_valid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %is_valid, align 8
  br label %do.body11

do.body11:                                        ; preds = %if.then9, %do.end.do.body11_crit_edge
  %call.i49 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i49)
  %tobool16.not = icmp eq i32 %call.i49, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %do.body11.do.end25_crit_edge

do.body11.do.end25_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

land.lhs.true17:                                  ; preds = %do.body11
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b4647 = load i1, ptr @wg_noise_expire_current_peer_keypairs.__warned.6, align 1
  br i1 %.b4647, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_expire_current_peer_keypairs.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 192, ptr noundef nonnull @.str.3) #8
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %do.body11.do.end25_crit_edge
  %14 = ptrtoint ptr %keypairs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %keypairs, align 4
  %tobool28.not = icmp eq ptr %15, null
  br i1 %tobool28.not, label %do.end25.if.end32_crit_edge, label %if.then29

do.end25.if.end32_crit_edge:                      ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then29:                                        ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #10
  %is_valid31 = getelementptr inbounds %struct.noise_keypair, ptr %15, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %is_valid31 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %is_valid31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %do.end25.if.end32_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %keypair_update_lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_noise_received_with_keypair(ptr noundef %keypairs, ptr noundef %received_keypair) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %next_keypair = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 2
  %0 = ptrtoint ptr %next_keypair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %next_keypair, align 4
  %cmp.not = icmp eq ptr %1, %received_keypair
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !75

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %keypair_update_lock = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %keypair_update_lock) #8
  %dep_map = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool7.not = icmp eq i32 %call.i, 0
  br i1 %tobool7.not, label %land.lhs.true, label %if.end.do.end15_crit_edge

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b156 = load i1, ptr @wg_noise_received_with_keypair.__warned, align 1
  br i1 %.b156, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_received_with_keypair.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 271, ptr noundef nonnull @.str.3) #8
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %2 = ptrtoint ptr %next_keypair to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_keypair, align 4
  %cmp18.not = icmp eq ptr %3, %received_keypair
  br i1 %cmp18.not, label %do.body28, label %do.end15.cleanup.sink.split_crit_edge, !prof !78

do.end15.cleanup.sink.split_crit_edge:            ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body28:                                        ; preds = %do.end15
  %call.i157 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool32.not = icmp eq i32 %call.i157, 0
  br i1 %tobool32.not, label %land.lhs.true33, label %do.body28.do.end41_crit_edge

do.body28.do.end41_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

land.lhs.true33:                                  ; preds = %do.body28
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true33.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true33.do.end41_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true33
  %.b152155 = load i1, ptr @wg_noise_received_with_keypair.__warned.7, align 1
  br i1 %.b152155, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_received_with_keypair.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 281, ptr noundef nonnull @.str.3) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true33.do.end41_crit_edge, %do.body28.do.end41_crit_edge
  %previous_keypair = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 1
  %4 = ptrtoint ptr %previous_keypair to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %previous_keypair, align 4
  %call.i158 = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool48.not = icmp eq i32 %call.i158, 0
  br i1 %tobool48.not, label %land.lhs.true49, label %do.end41.do.end57_crit_edge

do.end41.do.end57_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

land.lhs.true49:                                  ; preds = %do.end41
  %call50 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %land.lhs.true49.do.end57_crit_edge, label %land.lhs.true52

land.lhs.true49.do.end57_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

land.lhs.true52:                                  ; preds = %land.lhs.true49
  %.b153154 = load i1, ptr @wg_noise_received_with_keypair.__warned.8, align 1
  br i1 %.b153154, label %land.lhs.true52.do.end57_crit_edge, label %if.then54

land.lhs.true52.do.end57_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end57

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_noise_received_with_keypair.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 284, ptr noundef nonnull @.str.3) #8
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %land.lhs.true52.do.end57_crit_edge, %land.lhs.true49.do.end57_crit_edge, %do.end41.do.end57_crit_edge
  %6 = ptrtoint ptr %keypairs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %keypairs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !82
  %8 = ptrtoint ptr %previous_keypair to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %7, ptr %previous_keypair, align 4
  tail call void @wg_noise_keypair_put(ptr noundef %5, i1 noundef zeroext true)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !83
  %9 = ptrtoint ptr %keypairs to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %received_keypair, ptr %keypairs, align 4
  %10 = ptrtoint ptr %next_keypair to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr null, ptr %next_keypair, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end57, %do.end15.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %keypair_update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %cmp18.not, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_noise_set_static_identity_private_key(ptr noundef %static_identity, ptr noundef %private_key) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %static_private = getelementptr inbounds %struct.noise_static_identity, ptr %static_identity, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %static_private, ptr %private_key, i32 32)
  %1 = ptrtoint ptr %static_private to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %static_private, align 1
  %3 = and i8 %2, -8
  store i8 %3, ptr %static_private, align 1
  %arrayidx2.i = getelementptr %struct.noise_static_identity, ptr %static_identity, i32 0, i32 1, i32 31
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i, align 1
  %6 = and i8 %5, 63
  %7 = or i8 %6, 64
  store i8 %7, ptr %arrayidx2.i, align 1
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %private_key, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.not.i, label %entry.curve25519_generate_public.exit_crit_edge, label %if.end.i, !prof !75

entry.curve25519_generate_public.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %curve25519_generate_public.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @curve25519_base_arch(ptr noundef %static_identity, ptr noundef %private_key) #8
  %call.i8.i = tail call i32 @__crypto_memneq(ptr noundef %static_identity, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %cmp.not.i9.i = icmp ne i32 %call.i8.i, 0
  br label %curve25519_generate_public.exit

curve25519_generate_public.exit:                  ; preds = %if.end.i, %entry.curve25519_generate_public.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp.not.i9.i, %if.end.i ], [ false, %entry.curve25519_generate_public.exit_crit_edge ]
  %has_identity = getelementptr inbounds %struct.noise_static_identity, ptr %static_identity, i32 0, i32 3
  %frombool = zext i1 %retval.0.i to i8
  %8 = ptrtoint ptr %has_identity to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %has_identity, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_noise_handshake_create_initiation(ptr noundef %dst, ptr noundef %handshake) local_unnamed_addr #3 align 64 {
entry:
  %output.i116 = alloca [33 x i8], align 1
  %secret.i117 = alloca [32 x i8], align 1
  %output.i = alloca [33 x i8], align 1
  %secret.i = alloca [32 x i8], align 1
  %blake.i.i104 = alloca %struct.blake2s_state, align 4
  %now.i = alloca %struct.timespec64, align 8
  %blake.i.i90 = alloca %struct.blake2s_state, align 4
  %dh_calculation.i = alloca [32 x i8], align 1
  %blake.i.i = alloca %struct.blake2s_state, align 4
  %timestamp = alloca [12 x i8], align 8
  %key = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %timestamp) #8
  %0 = getelementptr inbounds [12 x i8], ptr %timestamp, i32 0, i32 8
  %1 = call ptr @memset(ptr %timestamp, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #8
  %2 = call ptr @memset(ptr %key, i32 255, i32 32)
  %call = tail call i32 @wait_for_random_bytes() #8
  %static_identity = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 3
  %3 = ptrtoint ptr %static_identity to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %static_identity, align 8
  %lock = getelementptr inbounds %struct.noise_static_identity, ptr %4, i32 0, i32 2
  tail call void @down_read(ptr noundef %lock) #8
  %lock1 = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 13
  tail call void @down_write(ptr noundef %lock1) #8
  %5 = ptrtoint ptr %static_identity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %static_identity, align 8
  %has_identity = getelementptr inbounds %struct.noise_static_identity, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %has_identity to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_identity, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !75

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 16777216, ptr %dst, align 4
  %chaining_key = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 10
  %hash = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 9
  %remote_static = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 5
  %10 = call ptr @memcpy(ptr %hash, ptr @handshake_init_hash, i32 32)
  %11 = call ptr @memcpy(ptr %chaining_key, ptr @handshake_init_chaining_key, i32 32)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i) #8
  %12 = getelementptr inbounds i8, ptr %blake.i.i, i32 48
  %13 = call ptr @memset(ptr %12, i32 255, i32 64)
  %14 = ptrtoint ptr %blake.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1795745351, ptr %blake.i.i, align 4
  %arrayidx3.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i, align 4
  %arrayidx5.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i, align 4
  %arrayidx7.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i, align 4
  %arrayidx9.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i, align 4
  %arrayidx11.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i, align 4
  %arrayidx13.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 528734635, ptr %arrayidx13.i.i.i.i, align 4
  %arrayidx15.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i, align 4
  %t.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 1
  %buflen.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %buflen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %buflen.i.i.i.i, align 4
  %outlen22.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 5
  %23 = call ptr @memset(ptr %t.i.i.i.i, i32 0, i32 16)
  %24 = ptrtoint ptr %outlen22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 32, ptr %outlen22.i.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i, ptr noundef %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i, ptr noundef %remote_static, i32 noundef 32) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i, ptr noundef %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i) #8
  %ephemeral_private = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 4
  %call.i.i = call i32 @wait_for_random_bytes() #8
  call void @get_random_bytes(ptr noundef %ephemeral_private, i32 noundef 32) #8
  %25 = ptrtoint ptr %ephemeral_private to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ephemeral_private, align 1
  %27 = and i8 %26, -8
  store i8 %27, ptr %ephemeral_private, align 1
  %arrayidx2.i.i = getelementptr %struct.noise_handshake, ptr %handshake, i32 0, i32 4, i32 31
  %28 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx2.i.i, align 1
  %30 = and i8 %29, 63
  %31 = or i8 %30, 64
  store i8 %31, ptr %arrayidx2.i.i, align 1
  %unencrypted_ephemeral = getelementptr inbounds %struct.message_handshake_initiation, ptr %dst, i32 0, i32 2
  %call.i.i88 = call i32 @__crypto_memneq(ptr noundef %ephemeral_private, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i88, 0
  br i1 %cmp.not.i.not.i, label %if.end.out_crit_edge, label %curve25519_generate_public.exit, !prof !75

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

curve25519_generate_public.exit:                  ; preds = %if.end
  call void @curve25519_base_arch(ptr noundef %unencrypted_ephemeral, ptr noundef %ephemeral_private) #8
  %call.i8.i = call i32 @__crypto_memneq(ptr noundef %unencrypted_ephemeral, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %cmp.not.i9.i.not = icmp eq i32 %call.i8.i, 0
  br i1 %cmp.not.i9.i.not, label %curve25519_generate_public.exit.out_crit_edge, label %if.end14

curve25519_generate_public.exit.out_crit_edge:    ; preds = %curve25519_generate_public.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end14:                                         ; preds = %curve25519_generate_public.exit
  call fastcc void @message_ephemeral(ptr noundef %unencrypted_ephemeral, ptr noundef %unencrypted_ephemeral, ptr noundef %chaining_key, ptr noundef %hash)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  %32 = call ptr @memset(ptr %dh_calculation.i, i32 255, i32 32)
  call void @curve25519_arch(ptr noundef nonnull %dh_calculation.i, ptr noundef %ephemeral_private, ptr noundef %remote_static) #8
  %call.i.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i.not = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.i.not, label %mix_dh.exit, label %if.end.i89, !prof !75

if.end.i89:                                       ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i) #8
  %33 = call ptr @memset(ptr %output.i, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i) #8
  %tobool13.not.i = icmp eq ptr %chaining_key, null
  %34 = call ptr @memset(ptr %secret.i, i32 255, i32 32)
  br i1 %tobool13.not.i, label %if.end.i115.thread, label %if.end45.i

if.end.i115.thread:                               ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  call fastcc void @hmac(ptr noundef nonnull %secret.i, ptr noundef nonnull %dh_calculation.i, ptr noundef null, i32 noundef 32) #8
  br label %if.end32

if.end45.i:                                       ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @hmac(ptr noundef nonnull %secret.i, ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %35 = ptrtoint ptr %output.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %output.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i, ptr noundef nonnull %output.i, ptr noundef nonnull %secret.i, i32 noundef 1) #8
  %36 = call ptr @memcpy(ptr %chaining_key, ptr %output.i, i32 32)
  %arrayidx55.i = getelementptr inbounds [33 x i8], ptr %output.i, i32 0, i32 32
  %37 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %arrayidx55.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i, ptr noundef nonnull %output.i, ptr noundef nonnull %secret.i, i32 noundef 33) #8
  %38 = call ptr @memcpy(ptr %key, ptr %output.i, i32 32)
  br label %if.end32

mix_dh.exit:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  br label %out

if.end32:                                         ; preds = %if.end45.i, %if.end.i115.thread
  %39 = call ptr @memset(ptr %secret.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i) #8, !srcloc !84
  %40 = call ptr @memset(ptr %output.i, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i) #8
  %41 = call ptr @memset(ptr %dh_calculation.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %dh_calculation.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  %encrypted_static = getelementptr inbounds %struct.message_handshake_initiation, ptr %dst, i32 0, i32 3
  %42 = ptrtoint ptr %static_identity to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %static_identity, align 8
  call void @chacha20poly1305_encrypt(ptr noundef %encrypted_static, ptr noundef %43, i32 noundef 32, ptr noundef %hash, i32 noundef 32, i64 noundef 0, ptr noundef nonnull %key) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i90) #8
  %44 = getelementptr inbounds i8, ptr %blake.i.i90, i32 48
  %45 = call ptr @memset(ptr %44, i32 255, i32 64)
  %46 = ptrtoint ptr %blake.i.i90 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1795745351, ptr %blake.i.i90, align 4
  %arrayidx3.i.i.i.i91 = getelementptr inbounds [8 x i32], ptr %blake.i.i90, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx3.i.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i91, align 4
  %arrayidx5.i.i.i.i92 = getelementptr inbounds [8 x i32], ptr %blake.i.i90, i32 0, i32 2
  %48 = ptrtoint ptr %arrayidx5.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i92, align 4
  %arrayidx7.i.i.i.i93 = getelementptr inbounds [8 x i32], ptr %blake.i.i90, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx7.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i93, align 4
  %arrayidx9.i.i.i.i94 = getelementptr inbounds [8 x i32], ptr %blake.i.i90, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx9.i.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i94, align 4
  %arrayidx11.i.i.i.i95 = getelementptr inbounds [8 x i32], ptr %blake.i.i90, i32 0, i32 5
  %51 = ptrtoint ptr %arrayidx11.i.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i95, align 4
  %arrayidx13.i.i.i.i96 = getelementptr inbounds [8 x i32], ptr %blake.i.i90, i32 0, i32 6
  %52 = ptrtoint ptr %arrayidx13.i.i.i.i96 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 528734635, ptr %arrayidx13.i.i.i.i96, align 4
  %arrayidx15.i.i.i.i97 = getelementptr inbounds [8 x i32], ptr %blake.i.i90, i32 0, i32 7
  %53 = ptrtoint ptr %arrayidx15.i.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i97, align 4
  %t.i.i.i.i98 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i90, i32 0, i32 1
  %buflen.i.i.i.i99 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i90, i32 0, i32 4
  %54 = ptrtoint ptr %buflen.i.i.i.i99 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %buflen.i.i.i.i99, align 4
  %outlen22.i.i.i.i100 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i90, i32 0, i32 5
  %55 = call ptr @memset(ptr %t.i.i.i.i98, i32 0, i32 16)
  %56 = ptrtoint ptr %outlen22.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 32, ptr %outlen22.i.i.i.i100, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i90, ptr noundef %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i90, ptr noundef %encrypted_static, i32 noundef 48) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i90, ptr noundef %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i90) #8
  %precomputed_static_static = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 7
  %call.i.i101 = call i32 @__crypto_memneq(ptr noundef %precomputed_static_static, ptr noundef nonnull @mix_precomputed_dh.zero_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp.not.i.not.i102 = icmp eq i32 %call.i.i101, 0
  br i1 %cmp.not.i.not.i102, label %if.end32.out_crit_edge, label %if.end.i103, !prof !75

if.end32.out_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i103:                                      ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i116) #8
  %57 = call ptr @memset(ptr %output.i116, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i117) #8
  %58 = call ptr @memset(ptr %secret.i117, i32 255, i32 32)
  br i1 %tobool13.not.i, label %if.end.i121.thread, label %if.end45.i122

if.end.i121.thread:                               ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  call fastcc void @hmac(ptr noundef nonnull %secret.i117, ptr noundef %precomputed_static_static, ptr noundef null, i32 noundef 32) #8
  br label %if.end45

if.end45.i122:                                    ; preds = %if.end.i103
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @hmac(ptr noundef nonnull %secret.i117, ptr noundef %precomputed_static_static, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %59 = ptrtoint ptr %output.i116 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %output.i116, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i116, ptr noundef nonnull %output.i116, ptr noundef nonnull %secret.i117, i32 noundef 1) #8
  %60 = call ptr @memcpy(ptr %chaining_key, ptr %output.i116, i32 32)
  %arrayidx55.i123 = getelementptr inbounds [33 x i8], ptr %output.i116, i32 0, i32 32
  %61 = ptrtoint ptr %arrayidx55.i123 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %arrayidx55.i123, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i116, ptr noundef nonnull %output.i116, ptr noundef nonnull %secret.i117, i32 noundef 33) #8
  %62 = call ptr @memcpy(ptr %key, ptr %output.i116, i32 32)
  br label %if.end45

if.end45:                                         ; preds = %if.end45.i122, %if.end.i121.thread
  %63 = call ptr @memset(ptr %secret.i117, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i117) #8, !srcloc !84
  %64 = call ptr @memset(ptr %output.i116, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i116) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i117) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i116) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %now.i) #8
  %65 = call ptr @memset(ptr %now.i, i32 255, i32 16)
  call void @ktime_get_real_ts64(ptr noundef nonnull %now.i) #8
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %now.i, i32 0, i32 1
  %66 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tv_nsec.i, align 8
  %and.i = and i32 %67, -16777216
  %68 = ptrtoint ptr %now.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %now.i, align 8
  %add2.i = add i64 %69, 4611686018427387914
  %70 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %add2.i, ptr %timestamp, align 8
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %now.i) #8
  %encrypted_timestamp = getelementptr inbounds %struct.message_handshake_initiation, ptr %dst, i32 0, i32 4
  call void @chacha20poly1305_encrypt(ptr noundef %encrypted_timestamp, ptr noundef nonnull %timestamp, i32 noundef 12, ptr noundef %hash, i32 noundef 32, i64 noundef 0, ptr noundef nonnull %key) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i104) #8
  %72 = getelementptr inbounds i8, ptr %blake.i.i104, i32 48
  %73 = call ptr @memset(ptr %72, i32 255, i32 64)
  %74 = ptrtoint ptr %blake.i.i104 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1795745351, ptr %blake.i.i104, align 4
  %arrayidx3.i.i.i.i105 = getelementptr inbounds [8 x i32], ptr %blake.i.i104, i32 0, i32 1
  %75 = ptrtoint ptr %arrayidx3.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i105, align 4
  %arrayidx5.i.i.i.i106 = getelementptr inbounds [8 x i32], ptr %blake.i.i104, i32 0, i32 2
  %76 = ptrtoint ptr %arrayidx5.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i106, align 4
  %arrayidx7.i.i.i.i107 = getelementptr inbounds [8 x i32], ptr %blake.i.i104, i32 0, i32 3
  %77 = ptrtoint ptr %arrayidx7.i.i.i.i107 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i107, align 4
  %arrayidx9.i.i.i.i108 = getelementptr inbounds [8 x i32], ptr %blake.i.i104, i32 0, i32 4
  %78 = ptrtoint ptr %arrayidx9.i.i.i.i108 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i108, align 4
  %arrayidx11.i.i.i.i109 = getelementptr inbounds [8 x i32], ptr %blake.i.i104, i32 0, i32 5
  %79 = ptrtoint ptr %arrayidx11.i.i.i.i109 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i109, align 4
  %arrayidx13.i.i.i.i110 = getelementptr inbounds [8 x i32], ptr %blake.i.i104, i32 0, i32 6
  %80 = ptrtoint ptr %arrayidx13.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 528734635, ptr %arrayidx13.i.i.i.i110, align 4
  %arrayidx15.i.i.i.i111 = getelementptr inbounds [8 x i32], ptr %blake.i.i104, i32 0, i32 7
  %81 = ptrtoint ptr %arrayidx15.i.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i111, align 4
  %t.i.i.i.i112 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i104, i32 0, i32 1
  %buflen.i.i.i.i113 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i104, i32 0, i32 4
  %82 = ptrtoint ptr %buflen.i.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %buflen.i.i.i.i113, align 4
  %outlen22.i.i.i.i114 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i104, i32 0, i32 5
  %83 = call ptr @memset(ptr %t.i.i.i.i112, i32 0, i32 16)
  %84 = ptrtoint ptr %outlen22.i.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 32, ptr %outlen22.i.i.i.i114, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i104, ptr noundef %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i104, ptr noundef %encrypted_timestamp, i32 noundef 28) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i104, ptr noundef %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i104) #8
  %85 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %handshake, align 8
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %86, align 8
  %index_hashtable = getelementptr inbounds %struct.wg_device, ptr %88, i32 0, i32 14
  %89 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %index_hashtable, align 4
  %call54 = call i32 @wg_index_hashtable_insert(ptr noundef %90, ptr noundef %handshake) #8
  %sender_index = getelementptr inbounds %struct.message_handshake_initiation, ptr %dst, i32 0, i32 1
  %91 = ptrtoint ptr %sender_index to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call54, ptr %sender_index, align 4
  %state = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 1
  %92 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end45, %if.end32.out_crit_edge, %mix_dh.exit, %curve25519_generate_public.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.out_crit_edge ], [ true, %if.end45 ], [ false, %mix_dh.exit ], [ false, %curve25519_generate_public.exit.out_crit_edge ], [ false, %if.end32.out_crit_edge ], [ false, %if.end.out_crit_edge ]
  call void @up_write(ptr noundef %lock1) #8
  %93 = ptrtoint ptr %static_identity to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %static_identity, align 8
  %lock57 = getelementptr inbounds %struct.noise_static_identity, ptr %94, i32 0, i32 2
  call void @up_read(ptr noundef %lock57) #8
  %95 = call ptr @memset(ptr %key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %key) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %timestamp) #8
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_random_bytes() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @message_ephemeral(ptr noundef writeonly %ephemeral_dst, ptr noundef %ephemeral_src, ptr noundef %chaining_key, ptr noundef %hash) unnamed_addr #3 align 64 {
entry:
  %output.i = alloca [33 x i8], align 1
  %secret.i = alloca [32 x i8], align 1
  %blake.i = alloca %struct.blake2s_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %ephemeral_dst, %ephemeral_src
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = call ptr @memcpy(ptr %ephemeral_dst, ptr %ephemeral_src, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i) #8
  %1 = getelementptr inbounds i8, ptr %blake.i, i32 48
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %3 = ptrtoint ptr %blake.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1795745351, ptr %blake.i, align 4
  %arrayidx3.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1150833019, ptr %arrayidx3.i.i.i, align 4
  %arrayidx5.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1013904242, ptr %arrayidx5.i.i.i, align 4
  %arrayidx7.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1521486534, ptr %arrayidx7.i.i.i, align 4
  %arrayidx9.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 4
  %7 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1359893119, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1694144372, ptr %arrayidx11.i.i.i, align 4
  %arrayidx13.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 6
  %9 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 528734635, ptr %arrayidx13.i.i.i, align 4
  %arrayidx15.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i, i32 0, i32 7
  %10 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1541459225, ptr %arrayidx15.i.i.i, align 4
  %t.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 1
  %buflen.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 4
  %11 = ptrtoint ptr %buflen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %buflen.i.i.i, align 4
  %outlen22.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i, i32 0, i32 5
  %12 = call ptr @memset(ptr %t.i.i.i, i32 0, i32 16)
  %13 = ptrtoint ptr %outlen22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %outlen22.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i, ptr noundef %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i, ptr noundef %ephemeral_src, i32 noundef 32) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i, ptr noundef %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i) #8
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i) #8
  %14 = call ptr @memset(ptr %output.i, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i) #8
  %tobool13.not.i = icmp eq ptr %chaining_key, null
  %15 = call ptr @memset(ptr %secret.i, i32 255, i32 32)
  call fastcc void @hmac(ptr noundef nonnull %secret.i, ptr noundef %ephemeral_src, ptr noundef %chaining_key, i32 noundef 32) #8
  br i1 %tobool13.not.i, label %if.end.kdf.exit_crit_edge, label %if.end45.i

if.end.kdf.exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %kdf.exit

if.end45.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %output.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %output.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i, ptr noundef nonnull %output.i, ptr noundef nonnull %secret.i, i32 noundef 1) #8
  %17 = call ptr @memcpy(ptr %chaining_key, ptr %output.i, i32 32)
  br label %kdf.exit

kdf.exit:                                         ; preds = %if.end45.i, %if.end.kdf.exit_crit_edge
  %18 = call ptr @memset(ptr %secret.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i) #8, !srcloc !84
  %19 = call ptr @memset(ptr %output.i, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_index_hashtable_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_noise_handshake_consume_initiation(ptr noundef %src, ptr noundef %wg) local_unnamed_addr #3 align 64 {
entry:
  %output.i149 = alloca [33 x i8], align 1
  %secret.i150 = alloca [32 x i8], align 1
  %output.i = alloca [33 x i8], align 1
  %secret.i = alloca [32 x i8], align 1
  %blake.i.i132 = alloca %struct.blake2s_state, align 4
  %blake.i.i119 = alloca %struct.blake2s_state, align 4
  %dh_calculation.i = alloca [32 x i8], align 1
  %blake.i.i = alloca %struct.blake2s_state, align 4
  %key = alloca [32 x i8], align 1
  %chaining_key = alloca [32 x i8], align 1
  %hash = alloca [32 x i8], align 1
  %s = alloca [32 x i8], align 1
  %e = alloca [32 x i8], align 1
  %t = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #8
  %0 = call ptr @memset(ptr %key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %chaining_key) #8
  %1 = call ptr @memset(ptr %chaining_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hash) #8
  %2 = call ptr @memset(ptr %hash, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %s) #8
  %3 = call ptr @memset(ptr %s, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %e) #8
  %4 = call ptr @memset(ptr %e, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #8
  %lock = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 8, i32 2
  %5 = call ptr @memset(ptr %t, i32 255, i32 12)
  tail call void @down_read(ptr noundef %lock) #8
  %has_identity = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %has_identity to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_identity, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !75

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %static_identity = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 8
  %8 = call ptr @memcpy(ptr %hash, ptr @handshake_init_hash, i32 32)
  %9 = call ptr @memcpy(ptr %chaining_key, ptr @handshake_init_chaining_key, i32 32)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i) #8
  %10 = getelementptr inbounds i8, ptr %blake.i.i, i32 48
  %11 = call ptr @memset(ptr %10, i32 255, i32 64)
  %12 = ptrtoint ptr %blake.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1795745351, ptr %blake.i.i, align 4
  %arrayidx3.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i, align 4
  %arrayidx5.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i, align 4
  %arrayidx7.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i, align 4
  %arrayidx9.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i, align 4
  %arrayidx11.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i, align 4
  %arrayidx13.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 528734635, ptr %arrayidx13.i.i.i.i, align 4
  %arrayidx15.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i, align 4
  %t.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 1
  %buflen.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %buflen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %buflen.i.i.i.i, align 4
  %outlen22.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 5
  %21 = call ptr @memset(ptr %t.i.i.i.i, i32 0, i32 16)
  %22 = ptrtoint ptr %outlen22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %outlen22.i.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i, ptr noundef nonnull %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i, ptr noundef %static_identity, i32 noundef 32) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i, ptr noundef nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i) #8
  %unencrypted_ephemeral = getelementptr inbounds %struct.message_handshake_initiation, ptr %src, i32 0, i32 2
  call fastcc void @message_ephemeral(ptr noundef nonnull %e, ptr noundef %unencrypted_ephemeral, ptr noundef nonnull %chaining_key, ptr noundef nonnull %hash)
  %static_private = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 8, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  %23 = call ptr @memset(ptr %dh_calculation.i, i32 255, i32 32)
  call void @curve25519_arch(ptr noundef nonnull %dh_calculation.i, ptr noundef %static_private, ptr noundef nonnull %e) #8
  %call.i.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i.not = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.i.not, label %mix_dh.exit, label %if.end18, !prof !75

mix_dh.exit:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  br label %out

if.end18:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i) #8
  %24 = getelementptr inbounds i8, ptr %output.i, i32 1
  %25 = call ptr @memset(ptr %24, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i) #8
  %26 = call ptr @memset(ptr %secret.i, i32 255, i32 32)
  call fastcc void @hmac(ptr noundef nonnull %secret.i, ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %27 = ptrtoint ptr %output.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %output.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i, ptr noundef nonnull %output.i, ptr noundef nonnull %secret.i, i32 noundef 1) #8
  %28 = call ptr @memcpy(ptr %chaining_key, ptr %output.i, i32 32)
  %arrayidx55.i = getelementptr inbounds [33 x i8], ptr %output.i, i32 0, i32 32
  %29 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx55.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i, ptr noundef nonnull %output.i, ptr noundef nonnull %secret.i, i32 noundef 33) #8
  %30 = call ptr @memcpy(ptr %key, ptr %output.i, i32 32)
  %31 = call ptr @memset(ptr %secret.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i) #8, !srcloc !84
  %32 = call ptr @memset(ptr %output.i, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i) #8
  %33 = call ptr @memset(ptr %dh_calculation.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %dh_calculation.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  %encrypted_static = getelementptr inbounds %struct.message_handshake_initiation, ptr %src, i32 0, i32 3
  %call.i = call zeroext i1 @chacha20poly1305_decrypt(ptr noundef nonnull %s, ptr noundef %encrypted_static, i32 noundef 48, ptr noundef nonnull %hash, i32 noundef 32, i64 noundef 0, ptr noundef nonnull %key) #8
  br i1 %call.i, label %if.end25, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end25:                                         ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i119) #8
  %34 = getelementptr inbounds i8, ptr %blake.i.i119, i32 48
  %35 = call ptr @memset(ptr %34, i32 255, i32 64)
  %36 = ptrtoint ptr %blake.i.i119 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1795745351, ptr %blake.i.i119, align 4
  %arrayidx3.i.i.i.i120 = getelementptr inbounds [8 x i32], ptr %blake.i.i119, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx3.i.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i120, align 4
  %arrayidx5.i.i.i.i121 = getelementptr inbounds [8 x i32], ptr %blake.i.i119, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx5.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i121, align 4
  %arrayidx7.i.i.i.i122 = getelementptr inbounds [8 x i32], ptr %blake.i.i119, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx7.i.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i122, align 4
  %arrayidx9.i.i.i.i123 = getelementptr inbounds [8 x i32], ptr %blake.i.i119, i32 0, i32 4
  %40 = ptrtoint ptr %arrayidx9.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i123, align 4
  %arrayidx11.i.i.i.i124 = getelementptr inbounds [8 x i32], ptr %blake.i.i119, i32 0, i32 5
  %41 = ptrtoint ptr %arrayidx11.i.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i124, align 4
  %arrayidx13.i.i.i.i125 = getelementptr inbounds [8 x i32], ptr %blake.i.i119, i32 0, i32 6
  %42 = ptrtoint ptr %arrayidx13.i.i.i.i125 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 528734635, ptr %arrayidx13.i.i.i.i125, align 4
  %arrayidx15.i.i.i.i126 = getelementptr inbounds [8 x i32], ptr %blake.i.i119, i32 0, i32 7
  %43 = ptrtoint ptr %arrayidx15.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i126, align 4
  %t.i.i.i.i127 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i119, i32 0, i32 1
  %buflen.i.i.i.i128 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i119, i32 0, i32 4
  %44 = ptrtoint ptr %buflen.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %buflen.i.i.i.i128, align 4
  %outlen22.i.i.i.i129 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i119, i32 0, i32 5
  %45 = call ptr @memset(ptr %t.i.i.i.i127, i32 0, i32 16)
  %46 = ptrtoint ptr %outlen22.i.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 32, ptr %outlen22.i.i.i.i129, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i119, ptr noundef nonnull %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i119, ptr noundef %encrypted_static, i32 noundef 48) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i119, ptr noundef nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i119) #8
  %peer_hashtable = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 13
  %47 = ptrtoint ptr %peer_hashtable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %peer_hashtable, align 16
  %call27 = call ptr @wg_pubkey_hashtable_lookup(ptr noundef %48, ptr noundef nonnull %s) #8
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.end25.out_crit_edge, label %if.end30

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end30:                                         ; preds = %if.end25
  %precomputed_static_static = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 7
  %call.i.i = call i32 @__crypto_memneq(ptr noundef %precomputed_static_static, ptr noundef nonnull @mix_precomputed_dh.zero_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.not.i, label %if.end30.out_crit_edge, label %if.end37, !prof !75

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end37:                                         ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i149) #8
  %49 = getelementptr inbounds i8, ptr %output.i149, i32 1
  %50 = call ptr @memset(ptr %49, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i150) #8
  %51 = call ptr @memset(ptr %secret.i150, i32 255, i32 32)
  call fastcc void @hmac(ptr noundef nonnull %secret.i150, ptr noundef %precomputed_static_static, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %52 = ptrtoint ptr %output.i149 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %output.i149, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i149, ptr noundef nonnull %output.i149, ptr noundef nonnull %secret.i150, i32 noundef 1) #8
  %53 = call ptr @memcpy(ptr %chaining_key, ptr %output.i149, i32 32)
  %arrayidx55.i152 = getelementptr inbounds [33 x i8], ptr %output.i149, i32 0, i32 32
  %54 = ptrtoint ptr %arrayidx55.i152 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 2, ptr %arrayidx55.i152, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i149, ptr noundef nonnull %output.i149, ptr noundef nonnull %secret.i150, i32 noundef 33) #8
  %55 = call ptr @memcpy(ptr %key, ptr %output.i149, i32 32)
  %56 = call ptr @memset(ptr %secret.i150, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i150) #8, !srcloc !84
  %57 = call ptr @memset(ptr %output.i149, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i149) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i150) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i149) #8
  %encrypted_timestamp = getelementptr inbounds %struct.message_handshake_initiation, ptr %src, i32 0, i32 4
  %call.i133 = call zeroext i1 @chacha20poly1305_decrypt(ptr noundef nonnull %t, ptr noundef %encrypted_timestamp, i32 noundef 28, ptr noundef nonnull %hash, i32 noundef 32, i64 noundef 0, ptr noundef nonnull %key) #8
  br i1 %call.i133, label %if.end44, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end44:                                         ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i132) #8
  %58 = getelementptr inbounds i8, ptr %blake.i.i132, i32 48
  %59 = call ptr @memset(ptr %58, i32 255, i32 64)
  %60 = ptrtoint ptr %blake.i.i132 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1795745351, ptr %blake.i.i132, align 4
  %arrayidx3.i.i.i.i134 = getelementptr inbounds [8 x i32], ptr %blake.i.i132, i32 0, i32 1
  %61 = ptrtoint ptr %arrayidx3.i.i.i.i134 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i134, align 4
  %arrayidx5.i.i.i.i135 = getelementptr inbounds [8 x i32], ptr %blake.i.i132, i32 0, i32 2
  %62 = ptrtoint ptr %arrayidx5.i.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i135, align 4
  %arrayidx7.i.i.i.i136 = getelementptr inbounds [8 x i32], ptr %blake.i.i132, i32 0, i32 3
  %63 = ptrtoint ptr %arrayidx7.i.i.i.i136 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i136, align 4
  %arrayidx9.i.i.i.i137 = getelementptr inbounds [8 x i32], ptr %blake.i.i132, i32 0, i32 4
  %64 = ptrtoint ptr %arrayidx9.i.i.i.i137 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i137, align 4
  %arrayidx11.i.i.i.i138 = getelementptr inbounds [8 x i32], ptr %blake.i.i132, i32 0, i32 5
  %65 = ptrtoint ptr %arrayidx11.i.i.i.i138 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i138, align 4
  %arrayidx13.i.i.i.i139 = getelementptr inbounds [8 x i32], ptr %blake.i.i132, i32 0, i32 6
  %66 = ptrtoint ptr %arrayidx13.i.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 528734635, ptr %arrayidx13.i.i.i.i139, align 4
  %arrayidx15.i.i.i.i140 = getelementptr inbounds [8 x i32], ptr %blake.i.i132, i32 0, i32 7
  %67 = ptrtoint ptr %arrayidx15.i.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i140, align 4
  %t.i.i.i.i141 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i132, i32 0, i32 1
  %buflen.i.i.i.i142 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i132, i32 0, i32 4
  %68 = ptrtoint ptr %buflen.i.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %buflen.i.i.i.i142, align 4
  %outlen22.i.i.i.i143 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i132, i32 0, i32 5
  %69 = call ptr @memset(ptr %t.i.i.i.i141, i32 0, i32 16)
  %70 = ptrtoint ptr %outlen22.i.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 32, ptr %outlen22.i.i.i.i143, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i132, ptr noundef nonnull %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i132, ptr noundef %encrypted_timestamp, i32 noundef 28) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i132, ptr noundef nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i132) #8
  %lock45 = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 13
  call void @down_read(ptr noundef %lock45) #8
  %latest_timestamp = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 11
  %call48 = call i32 @memcmp(ptr noundef nonnull dereferenceable(12) %t, ptr noundef dereferenceable(12) %latest_timestamp, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call48)
  %cmp = icmp slt i32 %call48, 1
  %last_initiation_consumption = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 2
  %71 = ptrtoint ptr %last_initiation_consumption to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %last_initiation_consumption, align 8
  %call.i.i146 = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  call void @up_read(ptr noundef %lock45) #8
  %add = add i64 %72, 20000000
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %call.i.i146)
  %cmp50 = icmp sgt i64 %add, %call.i.i146
  %or.cond = select i1 %cmp, i1 true, i1 %cmp50
  br i1 %or.cond, label %if.end44.out_crit_edge, label %if.end56

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end56:                                         ; preds = %if.end44
  call void @down_write(ptr noundef %lock45) #8
  %remote_ephemeral = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 6
  %73 = call ptr @memcpy(ptr %remote_ephemeral, ptr %e, i32 32)
  %call63 = call i32 @memcmp(ptr noundef nonnull dereferenceable(12) %t, ptr noundef dereferenceable(12) %latest_timestamp, i32 noundef 12) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp sgt i32 %call63, 0
  br i1 %cmp64, label %if.then65, label %if.end56.if.end69_crit_edge

if.end56.if.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then65:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %74 = call ptr @memcpy(ptr %latest_timestamp, ptr %t, i32 12)
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %if.end56.if.end69_crit_edge
  %hash70 = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 9
  %75 = call ptr @memcpy(ptr %hash70, ptr %hash, i32 32)
  %chaining_key73 = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 10
  %76 = call ptr @memcpy(ptr %chaining_key73, ptr %chaining_key, i32 32)
  %sender_index = getelementptr inbounds %struct.message_handshake_initiation, ptr %src, i32 0, i32 1
  %77 = ptrtoint ptr %sender_index to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sender_index, align 4
  %remote_index = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 12
  %79 = ptrtoint ptr %remote_index to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %remote_index, align 8
  %call.i.i147 = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %80 = ptrtoint ptr %last_initiation_consumption to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %last_initiation_consumption, align 8
  %sub = sub i64 %81, %call.i.i147
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp78 = icmp slt i64 %sub, 0
  br i1 %cmp78, label %if.then79, label %if.end69.if.end81_crit_edge

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then79:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %last_initiation_consumption to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %call.i.i147, ptr %last_initiation_consumption, align 8
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %if.end69.if.end81_crit_edge
  %state = getelementptr inbounds %struct.wg_peer, ptr %call27, i32 0, i32 10, i32 1
  %83 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %state, align 4
  call void @up_write(ptr noundef %lock45) #8
  br label %out

out:                                              ; preds = %if.end81, %if.end44.out_crit_edge, %if.end37.out_crit_edge, %if.end30.out_crit_edge, %if.end25.out_crit_edge, %if.end18.out_crit_edge, %mix_dh.exit, %entry.out_crit_edge
  %peer.0 = phi ptr [ null, %entry.out_crit_edge ], [ %call27, %if.end44.out_crit_edge ], [ %call27, %if.end81 ], [ null, %if.end25.out_crit_edge ], [ null, %mix_dh.exit ], [ null, %if.end18.out_crit_edge ], [ %call27, %if.end30.out_crit_edge ], [ %call27, %if.end37.out_crit_edge ]
  %ret_peer.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end44.out_crit_edge ], [ %call27, %if.end81 ], [ null, %if.end25.out_crit_edge ], [ null, %mix_dh.exit ], [ null, %if.end18.out_crit_edge ], [ null, %if.end30.out_crit_edge ], [ null, %if.end37.out_crit_edge ]
  %84 = call ptr @memset(ptr %key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %key) #8, !srcloc !84
  %85 = call ptr @memset(ptr %hash, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %hash) #8, !srcloc !84
  %86 = call ptr @memset(ptr %chaining_key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %chaining_key) #8, !srcloc !84
  call void @up_read(ptr noundef %lock) #8
  %tobool88.not = icmp eq ptr %ret_peer.0, null
  br i1 %tobool88.not, label %if.then89, label %out.if.end90_crit_edge

out.if.end90_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then89:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @wg_peer_put(ptr noundef %peer.0) #8
  br label %if.end90

if.end90:                                         ; preds = %if.then89, %out.if.end90_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %s) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %chaining_key) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #8
  ret ptr %ret_peer.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_pubkey_hashtable_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_noise_handshake_create_response(ptr noundef %dst, ptr noundef %handshake) local_unnamed_addr #3 align 64 {
entry:
  %output.i95 = alloca [33 x i8], align 1
  %secret.i96 = alloca [32 x i8], align 1
  %output.i = alloca [33 x i8], align 1
  %secret.i = alloca [32 x i8], align 1
  %blake.i.i83 = alloca %struct.blake2s_state, align 4
  %blake.i.i = alloca %struct.blake2s_state, align 4
  %temp_hash.i = alloca [32 x i8], align 1
  %dh_calculation.i78 = alloca [32 x i8], align 1
  %dh_calculation.i = alloca [32 x i8], align 1
  %key = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #8
  %0 = call ptr @memset(ptr %key, i32 255, i32 32)
  %call = tail call i32 @wait_for_random_bytes() #8
  %static_identity = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 3
  %1 = ptrtoint ptr %static_identity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %static_identity, align 8
  %lock = getelementptr inbounds %struct.noise_static_identity, ptr %2, i32 0, i32 2
  tail call void @down_read(ptr noundef %lock) #8
  %lock1 = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 13
  tail call void @down_write(ptr noundef %lock1) #8
  %state = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.not = icmp eq i32 %4, 2
  br i1 %cmp.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 33554432, ptr %dst, align 4
  %remote_index = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 12
  %6 = ptrtoint ptr %remote_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %remote_index, align 8
  %receiver_index = getelementptr inbounds %struct.message_handshake_response, ptr %dst, i32 0, i32 2
  %8 = ptrtoint ptr %receiver_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %receiver_index, align 4
  %ephemeral_private = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 4
  %call.i.i = tail call i32 @wait_for_random_bytes() #8
  tail call void @get_random_bytes(ptr noundef %ephemeral_private, i32 noundef 32) #8
  %9 = ptrtoint ptr %ephemeral_private to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ephemeral_private, align 1
  %11 = and i8 %10, -8
  store i8 %11, ptr %ephemeral_private, align 1
  %arrayidx2.i.i = getelementptr %struct.noise_handshake, ptr %handshake, i32 0, i32 4, i32 31
  %12 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx2.i.i, align 1
  %14 = and i8 %13, 63
  %15 = or i8 %14, 64
  store i8 %15, ptr %arrayidx2.i.i, align 1
  %unencrypted_ephemeral = getelementptr inbounds %struct.message_handshake_response, ptr %dst, i32 0, i32 3
  %call.i.i76 = tail call i32 @__crypto_memneq(ptr noundef %ephemeral_private, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i76, 0
  br i1 %cmp.not.i.not.i, label %if.end.out_crit_edge, label %curve25519_generate_public.exit, !prof !75

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

curve25519_generate_public.exit:                  ; preds = %if.end
  tail call void @curve25519_base_arch(ptr noundef %unencrypted_ephemeral, ptr noundef %ephemeral_private) #8
  %call.i8.i = tail call i32 @__crypto_memneq(ptr noundef %unencrypted_ephemeral, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %cmp.not.i9.i.not = icmp eq i32 %call.i8.i, 0
  br i1 %cmp.not.i9.i.not, label %curve25519_generate_public.exit.out_crit_edge, label %if.end7

curve25519_generate_public.exit.out_crit_edge:    ; preds = %curve25519_generate_public.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end7:                                          ; preds = %curve25519_generate_public.exit
  %chaining_key = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 10
  %hash = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 9
  tail call fastcc void @message_ephemeral(ptr noundef %unencrypted_ephemeral, ptr noundef %unencrypted_ephemeral, ptr noundef %chaining_key, ptr noundef %hash)
  %remote_ephemeral = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  %16 = call ptr @memset(ptr %dh_calculation.i, i32 255, i32 32)
  call void @curve25519_arch(ptr noundef nonnull %dh_calculation.i, ptr noundef %ephemeral_private, ptr noundef %remote_ephemeral) #8
  %call.i.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i.not = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.i.not, label %mix_dh.exit, label %if.end.i77, !prof !75

if.end.i77:                                       ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i) #8
  %17 = call ptr @memset(ptr %output.i, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i) #8
  %tobool13.not.i = icmp eq ptr %chaining_key, null
  %18 = call ptr @memset(ptr %secret.i, i32 255, i32 32)
  br i1 %tobool13.not.i, label %if.end.i94.thread, label %if.end45.i

if.end.i94.thread:                                ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  call fastcc void @hmac(ptr noundef nonnull %secret.i, ptr noundef nonnull %dh_calculation.i, ptr noundef null, i32 noundef 32) #8
  br label %if.end21

if.end45.i:                                       ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @hmac(ptr noundef nonnull %secret.i, ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %19 = ptrtoint ptr %output.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %output.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i, ptr noundef nonnull %output.i, ptr noundef nonnull %secret.i, i32 noundef 1) #8
  %20 = call ptr @memcpy(ptr %chaining_key, ptr %output.i, i32 32)
  br label %if.end21

mix_dh.exit:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  br label %out

if.end21:                                         ; preds = %if.end45.i, %if.end.i94.thread
  %21 = call ptr @memset(ptr %secret.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i) #8, !srcloc !84
  %22 = call ptr @memset(ptr %output.i, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i) #8
  %23 = call ptr @memset(ptr %dh_calculation.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %dh_calculation.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  %remote_static = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dh_calculation.i78) #8
  %24 = call ptr @memset(ptr %dh_calculation.i78, i32 255, i32 32)
  call void @curve25519_arch(ptr noundef nonnull %dh_calculation.i78, ptr noundef %ephemeral_private, ptr noundef %remote_static) #8
  %call.i.i.i79 = call i32 @__crypto_memneq(ptr noundef nonnull %dh_calculation.i78, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i79)
  %cmp.not.i.i.i80.not = icmp eq i32 %call.i.i.i79, 0
  br i1 %cmp.not.i.i.i80.not, label %mix_dh.exit82, label %if.end.i81, !prof !75

if.end.i81:                                       ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i95) #8
  %25 = call ptr @memset(ptr %output.i95, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i96) #8
  %26 = call ptr @memset(ptr %secret.i96, i32 255, i32 32)
  br i1 %tobool13.not.i, label %if.end.i100.thread, label %if.end45.i101

if.end.i100.thread:                               ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  call fastcc void @hmac(ptr noundef nonnull %secret.i96, ptr noundef nonnull %dh_calculation.i78, ptr noundef null, i32 noundef 32) #8
  br label %if.end29

if.end45.i101:                                    ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @hmac(ptr noundef nonnull %secret.i96, ptr noundef nonnull %dh_calculation.i78, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %27 = ptrtoint ptr %output.i95 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %output.i95, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i95, ptr noundef nonnull %output.i95, ptr noundef nonnull %secret.i96, i32 noundef 1) #8
  %28 = call ptr @memcpy(ptr %chaining_key, ptr %output.i95, i32 32)
  br label %if.end29

mix_dh.exit82:                                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i78) #8
  br label %out

if.end29:                                         ; preds = %if.end45.i101, %if.end.i100.thread
  %29 = call ptr @memset(ptr %secret.i96, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i96) #8, !srcloc !84
  %30 = call ptr @memset(ptr %output.i95, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i95) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i96) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i95) #8
  %31 = call ptr @memset(ptr %dh_calculation.i78, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %dh_calculation.i78) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i78) #8
  %preshared_key = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp_hash.i) #8
  %32 = call ptr @memset(ptr %temp_hash.i, i32 255, i32 32)
  call fastcc void @kdf(ptr noundef %chaining_key, ptr noundef nonnull %temp_hash.i, ptr noundef nonnull %key, ptr noundef %preshared_key, i32 noundef 32, i32 noundef 32, i32 noundef 32, ptr noundef %chaining_key) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i) #8
  %33 = getelementptr inbounds i8, ptr %blake.i.i, i32 48
  %34 = call ptr @memset(ptr %33, i32 255, i32 64)
  %35 = ptrtoint ptr %blake.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1795745351, ptr %blake.i.i, align 4
  %arrayidx3.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i, align 4
  %arrayidx5.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i, align 4
  %arrayidx7.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i, align 4
  %arrayidx9.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i, align 4
  %arrayidx11.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 5
  %40 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i, align 4
  %arrayidx13.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 528734635, ptr %arrayidx13.i.i.i.i, align 4
  %arrayidx15.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i, align 4
  %t.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 1
  %buflen.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 4
  %43 = ptrtoint ptr %buflen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %buflen.i.i.i.i, align 4
  %outlen22.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 5
  %44 = call ptr @memset(ptr %t.i.i.i.i, i32 0, i32 16)
  %45 = ptrtoint ptr %outlen22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 32, ptr %outlen22.i.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i, ptr noundef %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i, ptr noundef nonnull %temp_hash.i, i32 noundef 32) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i, ptr noundef %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i) #8
  %46 = call ptr @memset(ptr %temp_hash.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %temp_hash.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp_hash.i) #8
  %encrypted_nothing = getelementptr inbounds %struct.message_handshake_response, ptr %dst, i32 0, i32 4
  call void @chacha20poly1305_encrypt(ptr noundef %encrypted_nothing, ptr noundef null, i32 noundef 0, ptr noundef %hash, i32 noundef 32, i64 noundef 0, ptr noundef nonnull %key) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i83) #8
  %47 = getelementptr inbounds i8, ptr %blake.i.i83, i32 48
  %48 = call ptr @memset(ptr %47, i32 255, i32 64)
  %49 = ptrtoint ptr %blake.i.i83 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1795745351, ptr %blake.i.i83, align 4
  %arrayidx3.i.i.i.i84 = getelementptr inbounds [8 x i32], ptr %blake.i.i83, i32 0, i32 1
  %50 = ptrtoint ptr %arrayidx3.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i84, align 4
  %arrayidx5.i.i.i.i85 = getelementptr inbounds [8 x i32], ptr %blake.i.i83, i32 0, i32 2
  %51 = ptrtoint ptr %arrayidx5.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i85, align 4
  %arrayidx7.i.i.i.i86 = getelementptr inbounds [8 x i32], ptr %blake.i.i83, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx7.i.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i86, align 4
  %arrayidx9.i.i.i.i87 = getelementptr inbounds [8 x i32], ptr %blake.i.i83, i32 0, i32 4
  %53 = ptrtoint ptr %arrayidx9.i.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i87, align 4
  %arrayidx11.i.i.i.i88 = getelementptr inbounds [8 x i32], ptr %blake.i.i83, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx11.i.i.i.i88 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i88, align 4
  %arrayidx13.i.i.i.i89 = getelementptr inbounds [8 x i32], ptr %blake.i.i83, i32 0, i32 6
  %55 = ptrtoint ptr %arrayidx13.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 528734635, ptr %arrayidx13.i.i.i.i89, align 4
  %arrayidx15.i.i.i.i90 = getelementptr inbounds [8 x i32], ptr %blake.i.i83, i32 0, i32 7
  %56 = ptrtoint ptr %arrayidx15.i.i.i.i90 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i90, align 4
  %t.i.i.i.i91 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i83, i32 0, i32 1
  %buflen.i.i.i.i92 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i83, i32 0, i32 4
  %57 = ptrtoint ptr %buflen.i.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %buflen.i.i.i.i92, align 4
  %outlen22.i.i.i.i93 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i83, i32 0, i32 5
  %58 = call ptr @memset(ptr %t.i.i.i.i91, i32 0, i32 16)
  %59 = ptrtoint ptr %outlen22.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 32, ptr %outlen22.i.i.i.i93, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i83, ptr noundef %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i83, ptr noundef %encrypted_nothing, i32 noundef 16) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i83, ptr noundef %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i83) #8
  %60 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %handshake, align 8
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 8
  %index_hashtable = getelementptr inbounds %struct.wg_device, ptr %63, i32 0, i32 14
  %64 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %index_hashtable, align 4
  %call42 = call i32 @wg_index_hashtable_insert(ptr noundef %65, ptr noundef %handshake) #8
  %sender_index = getelementptr inbounds %struct.message_handshake_response, ptr %dst, i32 0, i32 1
  %66 = ptrtoint ptr %sender_index to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call42, ptr %sender_index, align 4
  %67 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 3, ptr %state, align 4
  br label %out

out:                                              ; preds = %if.end29, %mix_dh.exit82, %mix_dh.exit, %curve25519_generate_public.exit.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.out_crit_edge ], [ true, %if.end29 ], [ false, %mix_dh.exit82 ], [ false, %mix_dh.exit ], [ false, %curve25519_generate_public.exit.out_crit_edge ], [ false, %if.end.out_crit_edge ]
  call void @up_write(ptr noundef %lock1) #8
  %68 = ptrtoint ptr %static_identity to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %static_identity, align 8
  %lock46 = getelementptr inbounds %struct.noise_static_identity, ptr %69, i32 0, i32 2
  call void @up_read(ptr noundef %lock46) #8
  %70 = call ptr @memset(ptr %key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %key) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #8
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_noise_handshake_consume_response(ptr noundef %src, ptr noundef %wg) local_unnamed_addr #3 align 64 {
entry:
  %output.i129 = alloca [33 x i8], align 1
  %secret.i130 = alloca [32 x i8], align 1
  %output.i126 = alloca [33 x i8], align 1
  %secret.i127 = alloca [32 x i8], align 1
  %output.i = alloca [33 x i8], align 1
  %secret.i = alloca [32 x i8], align 1
  %blake.i.i113 = alloca %struct.blake2s_state, align 4
  %blake.i.i = alloca %struct.blake2s_state, align 4
  %temp_hash.i = alloca [32 x i8], align 1
  %dh_calculation.i108 = alloca [32 x i8], align 1
  %dh_calculation.i = alloca [32 x i8], align 1
  %peer = alloca ptr, align 4
  %key = alloca [32 x i8], align 1
  %hash = alloca [32 x i8], align 1
  %chaining_key = alloca [32 x i8], align 1
  %e = alloca [32 x i8], align 1
  %ephemeral_private = alloca [32 x i8], align 1
  %static_private = alloca [32 x i8], align 1
  %preshared_key = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peer) #8
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %peer, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %key) #8
  %1 = call ptr @memset(ptr %key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hash) #8
  %2 = call ptr @memset(ptr %hash, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %chaining_key) #8
  %3 = call ptr @memset(ptr %chaining_key, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %e) #8
  %4 = call ptr @memset(ptr %e, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ephemeral_private) #8
  %5 = call ptr @memset(ptr %ephemeral_private, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %static_private) #8
  %6 = call ptr @memset(ptr %static_private, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %preshared_key) #8
  %lock = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 8, i32 2
  %7 = call ptr @memset(ptr %preshared_key, i32 255, i32 32)
  tail call void @down_read(ptr noundef %lock) #8
  %has_identity = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 8, i32 3
  %8 = ptrtoint ptr %has_identity to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_identity, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !75

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %index_hashtable = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 14
  %10 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %index_hashtable, align 4
  %receiver_index = getelementptr inbounds %struct.message_handshake_response, ptr %src, i32 0, i32 2
  %12 = ptrtoint ptr %receiver_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %receiver_index, align 4
  %call = call ptr @wg_index_hashtable_lookup(ptr noundef %11, i32 noundef 1, i32 noundef %13, ptr noundef nonnull %peer) #8
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.out_crit_edge, label %if.end15, !prof !75

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %if.end
  %lock16 = getelementptr inbounds %struct.noise_handshake, ptr %call, i32 0, i32 13
  call void @down_read(ptr noundef %lock16) #8
  %state17 = getelementptr inbounds %struct.noise_handshake, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state17, align 4
  %hash18 = getelementptr inbounds %struct.noise_handshake, ptr %call, i32 0, i32 9
  %16 = call ptr @memcpy(ptr %hash, ptr %hash18, i32 32)
  %chaining_key21 = getelementptr inbounds %struct.noise_handshake, ptr %call, i32 0, i32 10
  %17 = call ptr @memcpy(ptr %chaining_key, ptr %chaining_key21, i32 32)
  %ephemeral_private24 = getelementptr inbounds %struct.noise_handshake, ptr %call, i32 0, i32 4
  %18 = call ptr @memcpy(ptr %ephemeral_private, ptr %ephemeral_private24, i32 32)
  %preshared_key27 = getelementptr inbounds %struct.noise_handshake, ptr %call, i32 0, i32 8
  %19 = call ptr @memcpy(ptr %preshared_key, ptr %preshared_key27, i32 32)
  call void @up_read(ptr noundef %lock16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp.not = icmp eq i32 %15, 1
  br i1 %cmp.not, label %if.end31, label %if.end15.fail_crit_edge

if.end15.fail_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end31:                                         ; preds = %if.end15
  %unencrypted_ephemeral = getelementptr inbounds %struct.message_handshake_response, ptr %src, i32 0, i32 3
  call fastcc void @message_ephemeral(ptr noundef nonnull %e, ptr noundef %unencrypted_ephemeral, ptr noundef nonnull %chaining_key, ptr noundef nonnull %hash)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  %20 = call ptr @memset(ptr %dh_calculation.i, i32 255, i32 32)
  call void @curve25519_arch(ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull %ephemeral_private, ptr noundef nonnull %e) #8
  %call.i.i.i = call i32 @__crypto_memneq(ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i.i.not = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i.i.not, label %mix_dh.exit, label %if.end41, !prof !75

mix_dh.exit:                                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  br label %fail

if.end41:                                         ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i) #8
  %21 = getelementptr inbounds i8, ptr %output.i, i32 1
  %22 = call ptr @memset(ptr %21, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i) #8
  %23 = call ptr @memset(ptr %secret.i, i32 255, i32 32)
  call fastcc void @hmac(ptr noundef nonnull %secret.i, ptr noundef nonnull %dh_calculation.i, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %24 = ptrtoint ptr %output.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %output.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i, ptr noundef nonnull %output.i, ptr noundef nonnull %secret.i, i32 noundef 1) #8
  %25 = call ptr @memcpy(ptr %chaining_key, ptr %output.i, i32 32)
  %26 = call ptr @memset(ptr %secret.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i) #8, !srcloc !84
  %27 = call ptr @memset(ptr %output.i, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i) #8
  %28 = call ptr @memset(ptr %dh_calculation.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %dh_calculation.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i) #8
  %static_private44 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 8, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %dh_calculation.i108) #8
  %29 = call ptr @memset(ptr %dh_calculation.i108, i32 255, i32 32)
  call void @curve25519_arch(ptr noundef nonnull %dh_calculation.i108, ptr noundef %static_private44, ptr noundef nonnull %e) #8
  %call.i.i.i109 = call i32 @__crypto_memneq(ptr noundef nonnull %dh_calculation.i108, ptr noundef nonnull @curve25519_null_point, i32 noundef 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i109)
  %cmp.not.i.i.i110.not = icmp eq i32 %call.i.i.i109, 0
  br i1 %cmp.not.i.i.i110.not, label %mix_dh.exit112, label %if.end49, !prof !75

mix_dh.exit112:                                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i108) #8
  br label %fail

if.end49:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i126) #8
  %30 = getelementptr inbounds i8, ptr %output.i126, i32 1
  %31 = call ptr @memset(ptr %30, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i127) #8
  %32 = call ptr @memset(ptr %secret.i127, i32 255, i32 32)
  call fastcc void @hmac(ptr noundef nonnull %secret.i127, ptr noundef nonnull %dh_calculation.i108, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %33 = ptrtoint ptr %output.i126 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %output.i126, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i126, ptr noundef nonnull %output.i126, ptr noundef nonnull %secret.i127, i32 noundef 1) #8
  %34 = call ptr @memcpy(ptr %chaining_key, ptr %output.i126, i32 32)
  %35 = call ptr @memset(ptr %secret.i127, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i127) #8, !srcloc !84
  %36 = call ptr @memset(ptr %output.i126, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i126) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i127) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i126) #8
  %37 = call ptr @memset(ptr %dh_calculation.i108, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %dh_calculation.i108) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %dh_calculation.i108) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %temp_hash.i) #8
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output.i129) #8
  %38 = getelementptr inbounds i8, ptr %output.i129, i32 1
  %39 = call ptr @memset(ptr %38, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret.i130) #8
  %40 = call ptr @memset(ptr %secret.i130, i32 255, i32 32)
  call fastcc void @hmac(ptr noundef nonnull %secret.i130, ptr noundef nonnull %preshared_key, ptr noundef nonnull %chaining_key, i32 noundef 32) #8
  %41 = ptrtoint ptr %output.i129 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %output.i129, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i129, ptr noundef nonnull %output.i129, ptr noundef nonnull %secret.i130, i32 noundef 1) #8
  %42 = call ptr @memcpy(ptr %chaining_key, ptr %output.i129, i32 32)
  %arrayidx55.i = getelementptr inbounds [33 x i8], ptr %output.i129, i32 0, i32 32
  %43 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %arrayidx55.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i129, ptr noundef nonnull %output.i129, ptr noundef nonnull %secret.i130, i32 noundef 33) #8
  %44 = call ptr @memcpy(ptr %temp_hash.i, ptr %output.i129, i32 32)
  %45 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 3, ptr %arrayidx55.i, align 1
  call fastcc void @hmac(ptr noundef nonnull %output.i129, ptr noundef nonnull %output.i129, ptr noundef nonnull %secret.i130, i32 noundef 33) #8
  %46 = call ptr @memcpy(ptr %key, ptr %output.i129, i32 32)
  %47 = call ptr @memset(ptr %secret.i130, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret.i130) #8, !srcloc !84
  %48 = call ptr @memset(ptr %output.i129, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output.i129) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret.i130) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output.i129) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i) #8
  %49 = getelementptr inbounds i8, ptr %blake.i.i, i32 48
  %50 = call ptr @memset(ptr %49, i32 255, i32 64)
  %51 = ptrtoint ptr %blake.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1795745351, ptr %blake.i.i, align 4
  %arrayidx3.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i, align 4
  %arrayidx5.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 2
  %53 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i, align 4
  %arrayidx7.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %arrayidx7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i, align 4
  %arrayidx9.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 4
  %55 = ptrtoint ptr %arrayidx9.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i, align 4
  %arrayidx11.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 5
  %56 = ptrtoint ptr %arrayidx11.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i, align 4
  %arrayidx13.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 528734635, ptr %arrayidx13.i.i.i.i, align 4
  %arrayidx15.i.i.i.i = getelementptr inbounds [8 x i32], ptr %blake.i.i, i32 0, i32 7
  %58 = ptrtoint ptr %arrayidx15.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i, align 4
  %t.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 1
  %buflen.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %buflen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %buflen.i.i.i.i, align 4
  %outlen22.i.i.i.i = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i, i32 0, i32 5
  %60 = call ptr @memset(ptr %t.i.i.i.i, i32 0, i32 16)
  %61 = ptrtoint ptr %outlen22.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 32, ptr %outlen22.i.i.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i, ptr noundef nonnull %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i, ptr noundef nonnull %temp_hash.i, i32 noundef 32) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i, ptr noundef nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i) #8
  %62 = call ptr @memset(ptr %temp_hash.i, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %temp_hash.i) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %temp_hash.i) #8
  %encrypted_nothing = getelementptr inbounds %struct.message_handshake_response, ptr %src, i32 0, i32 4
  %call.i = call zeroext i1 @chacha20poly1305_decrypt(ptr noundef null, ptr noundef %encrypted_nothing, i32 noundef 16, ptr noundef nonnull %hash, i32 noundef 32, i64 noundef 0, ptr noundef nonnull %key) #8
  br i1 %call.i, label %if.end59, label %if.end49.fail_crit_edge

if.end49.fail_crit_edge:                          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail

if.end59:                                         ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %blake.i.i113) #8
  %63 = getelementptr inbounds i8, ptr %blake.i.i113, i32 48
  %64 = call ptr @memset(ptr %63, i32 255, i32 64)
  %65 = ptrtoint ptr %blake.i.i113 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1795745351, ptr %blake.i.i113, align 4
  %arrayidx3.i.i.i.i114 = getelementptr inbounds [8 x i32], ptr %blake.i.i113, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx3.i.i.i.i114 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1150833019, ptr %arrayidx3.i.i.i.i114, align 4
  %arrayidx5.i.i.i.i115 = getelementptr inbounds [8 x i32], ptr %blake.i.i113, i32 0, i32 2
  %67 = ptrtoint ptr %arrayidx5.i.i.i.i115 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1013904242, ptr %arrayidx5.i.i.i.i115, align 4
  %arrayidx7.i.i.i.i116 = getelementptr inbounds [8 x i32], ptr %blake.i.i113, i32 0, i32 3
  %68 = ptrtoint ptr %arrayidx7.i.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1521486534, ptr %arrayidx7.i.i.i.i116, align 4
  %arrayidx9.i.i.i.i117 = getelementptr inbounds [8 x i32], ptr %blake.i.i113, i32 0, i32 4
  %69 = ptrtoint ptr %arrayidx9.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1359893119, ptr %arrayidx9.i.i.i.i117, align 4
  %arrayidx11.i.i.i.i118 = getelementptr inbounds [8 x i32], ptr %blake.i.i113, i32 0, i32 5
  %70 = ptrtoint ptr %arrayidx11.i.i.i.i118 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1694144372, ptr %arrayidx11.i.i.i.i118, align 4
  %arrayidx13.i.i.i.i119 = getelementptr inbounds [8 x i32], ptr %blake.i.i113, i32 0, i32 6
  %71 = ptrtoint ptr %arrayidx13.i.i.i.i119 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 528734635, ptr %arrayidx13.i.i.i.i119, align 4
  %arrayidx15.i.i.i.i120 = getelementptr inbounds [8 x i32], ptr %blake.i.i113, i32 0, i32 7
  %72 = ptrtoint ptr %arrayidx15.i.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 1541459225, ptr %arrayidx15.i.i.i.i120, align 4
  %t.i.i.i.i121 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i113, i32 0, i32 1
  %buflen.i.i.i.i122 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i113, i32 0, i32 4
  %73 = ptrtoint ptr %buflen.i.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %buflen.i.i.i.i122, align 4
  %outlen22.i.i.i.i123 = getelementptr inbounds %struct.blake2s_state, ptr %blake.i.i113, i32 0, i32 5
  %74 = call ptr @memset(ptr %t.i.i.i.i121, i32 0, i32 16)
  %75 = ptrtoint ptr %outlen22.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 32, ptr %outlen22.i.i.i.i123, align 4
  call void @blake2s_update(ptr noundef nonnull %blake.i.i113, ptr noundef nonnull %hash, i32 noundef 32) #8
  call void @blake2s_update(ptr noundef nonnull %blake.i.i113, ptr noundef %encrypted_nothing, i32 noundef 16) #8
  call void @blake2s_final(ptr noundef nonnull %blake.i.i113, ptr noundef nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %blake.i.i113) #8
  call void @down_write(ptr noundef %lock16) #8
  %76 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %state17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp62.not = icmp eq i32 %77, 1
  br i1 %cmp62.not, label %if.end65, label %if.then63

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  call void @up_write(ptr noundef %lock16) #8
  br label %fail

if.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %remote_ephemeral = getelementptr inbounds %struct.noise_handshake, ptr %call, i32 0, i32 6
  %78 = call ptr @memcpy(ptr %remote_ephemeral, ptr %e, i32 32)
  %79 = call ptr @memcpy(ptr %hash18, ptr %hash, i32 32)
  %80 = call ptr @memcpy(ptr %chaining_key21, ptr %chaining_key, i32 32)
  %sender_index = getelementptr inbounds %struct.message_handshake_response, ptr %src, i32 0, i32 1
  %81 = ptrtoint ptr %sender_index to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %sender_index, align 4
  %remote_index = getelementptr inbounds %struct.noise_handshake, ptr %call, i32 0, i32 12
  %83 = ptrtoint ptr %remote_index to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %remote_index, align 8
  %84 = ptrtoint ptr %state17 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 4, ptr %state17, align 4
  call void @up_write(ptr noundef %lock16) #8
  %85 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %peer, align 4
  br label %out

fail:                                             ; preds = %if.then63, %if.end49.fail_crit_edge, %mix_dh.exit112, %mix_dh.exit, %if.end15.fail_crit_edge
  %87 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %peer, align 4
  call void @wg_peer_put(ptr noundef %88) #8
  br label %out

out:                                              ; preds = %fail, %if.end65, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret_peer.0 = phi ptr [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ null, %fail ], [ %86, %if.end65 ]
  %89 = call ptr @memset(ptr %key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %key) #8, !srcloc !84
  %90 = call ptr @memset(ptr %hash, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %hash) #8, !srcloc !84
  %91 = call ptr @memset(ptr %chaining_key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %chaining_key) #8, !srcloc !84
  %92 = call ptr @memset(ptr %ephemeral_private, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %ephemeral_private) #8, !srcloc !84
  %93 = call ptr @memset(ptr %static_private, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %static_private) #8, !srcloc !84
  %94 = call ptr @memset(ptr %preshared_key, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %preshared_key) #8, !srcloc !84
  call void @up_read(ptr noundef %lock) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %preshared_key) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %static_private) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ephemeral_private) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %e) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %chaining_key) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hash) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %key) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peer) #8
  ret ptr %ret_peer.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_index_hashtable_lookup(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_noise_handshake_begin_session(ptr noundef %handshake, ptr noundef %keypairs) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 13
  tail call void @down_write(ptr noundef %lock) #8
  %state = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handshake, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1240) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.out_crit_edge, label %if.end5, !prof !75

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @keypair_create.__key, i16 noundef signext 3) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @keypair_counter, i32 noundef 8) #8
  %call.i1.i.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull @keypair_counter) #8
  %internal_id.i = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 9
  %5 = ptrtoint ptr %internal_id.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i1.i.i, ptr %internal_id.i, align 8
  %type.i = getelementptr inbounds %struct.index_hashtable_entry, ptr %call7.i.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type.i, align 4
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %call7.i.i.i, align 8
  %refcount.i = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %refcount.i, align 8
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp7 = icmp eq i32 %10, 4
  %i_am_the_initiator = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 6
  %frombool = zext i1 %cmp7 to i8
  %11 = ptrtoint ptr %i_am_the_initiator to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %i_am_the_initiator, align 4
  %remote_index = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 12
  %12 = ptrtoint ptr %remote_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %remote_index, align 8
  %remote_index8 = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %remote_index8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %remote_index8, align 8
  br i1 %cmp7, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %sending = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 1
  %receiving = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 3
  %chaining_key = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 10
  %call.i.i.i87 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  tail call fastcc void @kdf(ptr noundef %sending, ptr noundef %receiving, ptr noundef null, ptr noundef null, i32 noundef 32, i32 noundef 0, i32 noundef 0, ptr noundef %chaining_key) #8
  br label %if.end16

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %receiving12 = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 3
  %sending13 = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 1
  %chaining_key14 = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 10
  %call.i.i.i88 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  tail call fastcc void @kdf(ptr noundef %receiving12, ptr noundef %sending13, ptr noundef null, ptr noundef null, i32 noundef 32, i32 noundef 0, i32 noundef 0, ptr noundef %chaining_key14) #8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  %call.i.i.i88.sink106 = phi i64 [ %call.i.i.i87, %if.then11 ], [ %call.i.i.i88, %if.else ]
  %15 = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call.i.i.i88.sink106, ptr %15, align 8
  %17 = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call.i.i.i88.sink106, ptr %17, align 8
  %19 = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %19, align 8
  %21 = getelementptr inbounds %struct.noise_keypair, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %21, align 8
  %ephemeral_private.i = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 4
  %23 = call ptr @memset(ptr %ephemeral_private.i, i32 0, i32 32)
  %remote_ephemeral.i = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 6
  %24 = call ptr @memset(ptr %remote_ephemeral.i, i32 0, i32 32)
  %hash.i = getelementptr inbounds %struct.noise_handshake, ptr %handshake, i32 0, i32 9
  %25 = ptrtoint ptr %remote_index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %remote_index, align 8
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %state, align 4
  %27 = call ptr @memset(ptr %hash.i, i32 0, i32 64)
  tail call fastcc void @local_bh_disable() #8
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end16.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.end16.rcu_read_lock_bh.exit_crit_edge:         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.end16
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i93 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i93, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 750, ptr noundef nonnull @.str.19) #8
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.end16.rcu_read_lock_bh.exit_crit_edge
  %is_dead = getelementptr i8, ptr %handshake, i32 -160
  %28 = ptrtoint ptr %is_dead to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load volatile i8, ptr %is_dead, align 8, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool18.not = icmp eq i8 %29, 0
  br i1 %tobool18.not, label %if.then24, label %if.else58, !prof !78

if.then24:                                        ; preds = %rcu_read_lock_bh.exit
  %keypair_update_lock.i = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %keypair_update_lock.i) #8
  %dep_map.i = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i94 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i94, label %land.lhs.true.i95, label %if.then24.do.end.i_crit_edge

if.then24.do.end.i_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true.i95:                                ; preds = %if.then24
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i95.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i95.do.end.i_crit_edge:             ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i95
  %.b258.i = load i1, ptr @add_new_keypair.__warned, align 1
  br i1 %.b258.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i96

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.then.i96:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @add_new_keypair.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 205, ptr noundef nonnull @.str.3) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i96, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i95.do.end.i_crit_edge, %if.then24.do.end.i_crit_edge
  %previous_keypair6.i = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 1
  %30 = ptrtoint ptr %previous_keypair6.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %previous_keypair6.i, align 4
  %call.i259.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.i)
  %tobool11.not.i = icmp eq i32 %call.i259.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true12.i, label %do.end.i.do.end20.i_crit_edge

do.end.i.do.end20.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

land.lhs.true12.i:                                ; preds = %do.end.i
  %call13.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %land.lhs.true12.i.do.end20.i_crit_edge, label %land.lhs.true15.i

land.lhs.true12.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

land.lhs.true15.i:                                ; preds = %land.lhs.true12.i
  %.b254257.i = load i1, ptr @add_new_keypair.__warned.20, align 1
  br i1 %.b254257.i, label %land.lhs.true15.i.do.end20.i_crit_edge, label %if.then17.i

land.lhs.true15.i.do.end20.i_crit_edge:           ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20.i

if.then17.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @add_new_keypair.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 207, ptr noundef nonnull @.str.3) #8
  br label %do.end20.i

do.end20.i:                                       ; preds = %if.then17.i, %land.lhs.true15.i.do.end20.i_crit_edge, %land.lhs.true12.i.do.end20.i_crit_edge, %do.end.i.do.end20.i_crit_edge
  %next_keypair22.i = getelementptr inbounds %struct.noise_keypairs, ptr %keypairs, i32 0, i32 2
  %32 = ptrtoint ptr %next_keypair22.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next_keypair22.i, align 4
  %call.i260.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260.i)
  %tobool27.not.i = icmp eq i32 %call.i260.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true28.i, label %do.end20.i.do.end36.i_crit_edge

do.end20.i.do.end36.i_crit_edge:                  ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36.i

land.lhs.true28.i:                                ; preds = %do.end20.i
  %call29.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %land.lhs.true28.i.do.end36.i_crit_edge, label %land.lhs.true31.i

land.lhs.true28.i.do.end36.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36.i

land.lhs.true31.i:                                ; preds = %land.lhs.true28.i
  %.b255256.i = load i1, ptr @add_new_keypair.__warned.21, align 1
  br i1 %.b255256.i, label %land.lhs.true31.i.do.end36.i_crit_edge, label %if.then33.i

land.lhs.true31.i.do.end36.i_crit_edge:           ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36.i

if.then33.i:                                      ; preds = %land.lhs.true31.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @add_new_keypair.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 209, ptr noundef nonnull @.str.3) #8
  br label %do.end36.i

do.end36.i:                                       ; preds = %if.then33.i, %land.lhs.true31.i.do.end36.i_crit_edge, %land.lhs.true28.i.do.end36.i_crit_edge, %do.end20.i.do.end36.i_crit_edge
  %34 = ptrtoint ptr %keypairs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %keypairs, align 4
  %36 = ptrtoint ptr %i_am_the_initiator to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %i_am_the_initiator, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool39.not.i = icmp eq i8 %37, 0
  br i1 %tobool39.not.i, label %do.body179.i, label %if.then40.i

if.then40.i:                                      ; preds = %do.end36.i
  %tobool41.not.i = icmp eq ptr %33, null
  br i1 %tobool41.not.i, label %do.body95.i, label %do.body48.i

do.body48.i:                                      ; preds = %if.then40.i
  %38 = ptrtoint ptr %next_keypair22.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr null, ptr %next_keypair22.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !85
  %39 = ptrtoint ptr %previous_keypair6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %33, ptr %previous_keypair6.i, align 4
  %tobool.not.i.i = icmp eq ptr %35, null
  br i1 %tobool.not.i.i, label %do.body48.i.if.end136.i_crit_edge, label %if.end.i.i, !prof !75

do.body48.i.if.end136.i_crit_edge:                ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end136.i

if.end.i.i:                                       ; preds = %do.body48.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %index_hashtable.i.i = getelementptr inbounds %struct.wg_device, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %index_hashtable.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %index_hashtable.i.i, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %45, ptr noundef nonnull %35) #8
  %refcount.i.i = getelementptr inbounds %struct.noise_keypair, ptr %35, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %refcount.i.i) #8
  br label %if.end136.i

do.body95.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !86
  %46 = ptrtoint ptr %previous_keypair6.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %35, ptr %previous_keypair6.i, align 4
  br label %if.end136.i

if.end136.i:                                      ; preds = %do.body95.i, %if.end.i.i, %do.body48.i.if.end136.i_crit_edge
  %tobool.not.i261.i = icmp eq ptr %31, null
  br i1 %tobool.not.i261.i, label %if.end136.i.wg_noise_keypair_put.exit265.i_crit_edge, label %if.end.i262.i, !prof !75

if.end136.i.wg_noise_keypair_put.exit265.i_crit_edge: ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_noise_keypair_put.exit265.i

if.end.i262.i:                                    ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %31, align 8
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  %index_hashtable.i263.i = getelementptr inbounds %struct.wg_device, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %index_hashtable.i263.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %index_hashtable.i263.i, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %52, ptr noundef nonnull %31) #8
  %refcount.i264.i = getelementptr inbounds %struct.noise_keypair, ptr %31, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %refcount.i264.i) #8
  br label %wg_noise_keypair_put.exit265.i

wg_noise_keypair_put.exit265.i:                   ; preds = %if.end.i262.i, %if.end136.i.wg_noise_keypair_put.exit265.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !87
  %53 = ptrtoint ptr %keypairs to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %call7.i.i.i, ptr %keypairs, align 4
  br label %add_new_keypair.exit

do.body179.i:                                     ; preds = %do.end36.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !88
  %54 = ptrtoint ptr %next_keypair22.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %call7.i.i.i, ptr %next_keypair22.i, align 4
  %tobool.not.i266.i = icmp eq ptr %33, null
  br i1 %tobool.not.i266.i, label %do.body179.i.wg_noise_keypair_put.exit270.i_crit_edge, label %if.end.i267.i, !prof !75

do.body179.i.wg_noise_keypair_put.exit270.i_crit_edge: ; preds = %do.body179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_noise_keypair_put.exit270.i

if.end.i267.i:                                    ; preds = %do.body179.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %33, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 8
  %index_hashtable.i268.i = getelementptr inbounds %struct.wg_device, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %index_hashtable.i268.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %index_hashtable.i268.i, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %60, ptr noundef nonnull %33) #8
  %refcount.i269.i = getelementptr inbounds %struct.noise_keypair, ptr %33, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %refcount.i269.i) #8
  br label %wg_noise_keypair_put.exit270.i

wg_noise_keypair_put.exit270.i:                   ; preds = %if.end.i267.i, %do.body179.i.wg_noise_keypair_put.exit270.i_crit_edge
  %61 = ptrtoint ptr %previous_keypair6.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr null, ptr %previous_keypair6.i, align 4
  %tobool.not.i271.i = icmp eq ptr %31, null
  br i1 %tobool.not.i271.i, label %wg_noise_keypair_put.exit270.i.add_new_keypair.exit_crit_edge, label %if.end.i272.i, !prof !75

wg_noise_keypair_put.exit270.i.add_new_keypair.exit_crit_edge: ; preds = %wg_noise_keypair_put.exit270.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %add_new_keypair.exit

if.end.i272.i:                                    ; preds = %wg_noise_keypair_put.exit270.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %31, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %index_hashtable.i273.i = getelementptr inbounds %struct.wg_device, ptr %65, i32 0, i32 14
  %66 = ptrtoint ptr %index_hashtable.i273.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %index_hashtable.i273.i, align 4
  tail call void @wg_index_hashtable_remove(ptr noundef %67, ptr noundef nonnull %31) #8
  %refcount.i274.i = getelementptr inbounds %struct.noise_keypair, ptr %31, i32 0, i32 7
  tail call fastcc void @kref_put(ptr noundef %refcount.i274.i) #8
  br label %add_new_keypair.exit

add_new_keypair.exit:                             ; preds = %if.end.i272.i, %wg_noise_keypair_put.exit270.i.add_new_keypair.exit_crit_edge, %wg_noise_keypair_put.exit265.i
  tail call void @_raw_spin_unlock_bh(ptr noundef %keypair_update_lock.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_noise_handshake_begin_session.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_noise_handshake_begin_session, %do.end50)) #8
          to label %land.lhs.true38 [label %do.end50], !srcloc !80

land.lhs.true38:                                  ; preds = %add_new_keypair.exit
  %call39 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true38.do.end50_crit_edge, label %if.then41

land.lhs.true38.do.end50_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end50

if.then41:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %handshake, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 8
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 128
  %74 = ptrtoint ptr %internal_id.i to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %internal_id.i, align 8
  %internal_id47 = getelementptr inbounds %struct.wg_peer, ptr %69, i32 0, i32 34
  %76 = ptrtoint ptr %internal_id47 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %internal_id47, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_noise_handshake_begin_session.descriptor, ptr noundef nonnull @.str.12, ptr noundef %73, i64 noundef %75, i64 noundef %77) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then41, %land.lhs.true38.do.end50_crit_edge, %add_new_keypair.exit
  %78 = ptrtoint ptr %handshake to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %handshake, align 8
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %79, align 8
  %index_hashtable = getelementptr inbounds %struct.wg_device, ptr %81, i32 0, i32 14
  %82 = ptrtoint ptr %index_hashtable to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %index_hashtable, align 4
  %call56 = tail call zeroext i1 @wg_index_hashtable_replace(ptr noundef %83, ptr noundef %handshake, ptr noundef nonnull %call7.i.i.i) #8
  br label %if.end59

if.else58:                                        ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %do.end50
  %ret.0 = phi i1 [ %call56, %do.end50 ], [ false, %if.else58 ]
  %call.i97 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i97, label %if.end59.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i100

if.end59.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i100:                               ; preds = %if.end59
  %call1.i98 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i98)
  %tobool.not.i99 = icmp eq i32 %call1.i98, 0
  br i1 %tobool.not.i99, label %land.lhs.true.i100.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i102

land.lhs.true.i100.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i102:                              ; preds = %land.lhs.true.i100
  %.b4.i101 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i101, label %land.lhs.true2.i102.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i103

land.lhs.true2.i102.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

if.then.i103:                                     ; preds = %land.lhs.true2.i102
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 761, ptr noundef nonnull @.str.22) #8
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i103, %land.lhs.true2.i102.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i100.rcu_read_unlock_bh.exit_crit_edge, %if.end59.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  tail call fastcc void @local_bh_enable() #8
  br label %out

out:                                              ; preds = %rcu_read_unlock_bh.exit, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.1.off0 = phi i1 [ %ret.0, %rcu_read_unlock_bh.exit ], [ false, %entry.out_crit_edge ], [ false, %if.end.out_crit_edge ]
  tail call void @up_write(ptr noundef %lock) #8
  ret i1 %ret.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_index_hashtable_replace(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @curve25519_arch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keypair_free_rcu(ptr noundef %rcu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -1220
  tail call void @kfree_sensitive(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @curve25519_base_arch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kdf(ptr noundef writeonly %first_dst, ptr noundef writeonly %second_dst, ptr noundef writeonly %third_dst, ptr noundef %data, i32 noundef %second_len, i32 noundef %third_len, i32 noundef %data_len, ptr nocapture noundef readonly %chaining_key) unnamed_addr #3 align 64 {
entry:
  %output = alloca [33 x i8], align 1
  %secret = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %output) #8
  %0 = call ptr @memset(ptr %output, i32 255, i32 33)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %secret) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %second_len)
  %tobool.not = icmp eq i32 %second_len, 0
  %tobool6.not = icmp eq ptr %second_dst, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %third_len)
  %tobool8.not = icmp eq i32 %third_len, 0
  %1 = or i32 %third_len, %second_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %2 = icmp eq i32 %1, 0
  %3 = and i1 %tobool6.not, %2
  %tobool10.not = icmp eq ptr %third_dst, null
  %or.cond2 = and i1 %tobool10.not, %3
  %or.cond2.not = xor i1 %or.cond2, true
  %tobool13.not = icmp eq ptr %first_dst, null
  %or.cond3 = and i1 %tobool13.not, %or.cond2.not
  %4 = call ptr @memset(ptr %secret, i32 255, i32 32)
  br i1 %or.cond3, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %or.cond4 = and i1 %tobool10.not, %tobool8.not
  %or.cond4.not = xor i1 %or.cond4, true
  %spec.select = or i1 %tobool6.not, %tobool.not
  %or.cond7 = and i1 %spec.select, %or.cond4.not
  br i1 %or.cond7, label %lor.rhs.do.end_crit_edge, label %lor.rhs.if.end_crit_edge, !prof !89

lor.rhs.if.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 357, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.rhs.if.end_crit_edge
  call fastcc void @hmac(ptr noundef nonnull %secret, ptr noundef %data, ptr noundef %chaining_key, i32 noundef %data_len)
  br i1 %tobool13.not, label %if.end.out_crit_edge, label %if.end45

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end45:                                         ; preds = %if.end
  %5 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %output, align 1
  call fastcc void @hmac(ptr noundef nonnull %output, ptr noundef nonnull %output, ptr noundef nonnull %secret, i32 noundef 1)
  %6 = call ptr @memcpy(ptr %first_dst, ptr %output, i32 32)
  %or.cond5 = or i1 %tobool6.not, %tobool.not
  br i1 %or.cond5, label %if.end45.out_crit_edge, label %if.end54

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end54:                                         ; preds = %if.end45
  %arrayidx55 = getelementptr inbounds [33 x i8], ptr %output, i32 0, i32 32
  %7 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %arrayidx55, align 1
  call fastcc void @hmac(ptr noundef nonnull %output, ptr noundef nonnull %output, ptr noundef nonnull %secret, i32 noundef 33)
  %8 = call ptr @memcpy(ptr %second_dst, ptr %output, i32 %second_len)
  %or.cond6 = or i1 %tobool10.not, %tobool8.not
  br i1 %or.cond6, label %if.end54.out_crit_edge, label %if.end64

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 3, ptr %arrayidx55, align 1
  call fastcc void @hmac(ptr noundef nonnull %output, ptr noundef nonnull %output, ptr noundef nonnull %secret, i32 noundef 33)
  %10 = call ptr @memcpy(ptr %third_dst, ptr %output, i32 %third_len)
  br label %out

out:                                              ; preds = %if.end64, %if.end54.out_crit_edge, %if.end45.out_crit_edge, %if.end.out_crit_edge
  %11 = call ptr @memset(ptr %secret, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %secret) #8, !srcloc !84
  %12 = call ptr @memset(ptr %output, i32 0, i32 33)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %output) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %secret) #8
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %output) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hmac(ptr nocapture noundef writeonly %out, ptr noundef %in, ptr nocapture noundef readonly %key, i32 noundef %inlen) unnamed_addr #3 align 64 {
entry:
  %state = alloca %struct.blake2s_state, align 4
  %x_key = alloca [64 x i8], align 4
  %i_hash = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %state) #8
  %0 = getelementptr inbounds i8, ptr %state, i32 48
  %1 = call ptr @memset(ptr %0, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %x_key) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %i_hash) #8
  %2 = call ptr @memset(ptr %i_hash, i32 255, i32 32)
  %3 = getelementptr inbounds i8, ptr %x_key, i32 32
  %4 = call ptr @memset(ptr %3, i32 0, i32 32)
  %5 = call ptr @memcpy(ptr %x_key, ptr %key, i32 32)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [64 x i8], ptr %x_key, i32 0, i32 %i.011
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = xor i8 %7, 54
  store i8 %8, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %9 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1795745351, ptr %state, align 4
  %arrayidx3.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1150833019, ptr %arrayidx3.i.i, align 4
  %arrayidx5.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1013904242, ptr %arrayidx5.i.i, align 4
  %arrayidx7.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1521486534, ptr %arrayidx7.i.i, align 4
  %arrayidx9.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 4
  %13 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1359893119, ptr %arrayidx9.i.i, align 4
  %arrayidx11.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 5
  %14 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1694144372, ptr %arrayidx11.i.i, align 4
  %arrayidx13.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 6
  %15 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 528734635, ptr %arrayidx13.i.i, align 4
  %arrayidx15.i.i = getelementptr inbounds [8 x i32], ptr %state, i32 0, i32 7
  %16 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1541459225, ptr %arrayidx15.i.i, align 4
  %t.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 1
  %buflen.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 4
  %17 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %buflen.i.i, align 4
  %outlen22.i.i = getelementptr inbounds %struct.blake2s_state, ptr %state, i32 0, i32 5
  %18 = call ptr @memset(ptr %t.i.i, i32 0, i32 16)
  %19 = ptrtoint ptr %outlen22.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %outlen22.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %state, ptr noundef nonnull %x_key, i32 noundef 64) #8
  call void @blake2s_update(ptr noundef nonnull %state, ptr noundef %in, i32 noundef %inlen) #8
  call void @blake2s_final(ptr noundef nonnull %state, ptr noundef nonnull %i_hash) #8
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.end
  %i.112 = phi i32 [ 0, %for.end ], [ %inc15, %for.body9.for.body9_crit_edge ]
  %arrayidx10 = getelementptr [64 x i8], ptr %x_key, i32 0, i32 %i.112
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx10, align 1
  %22 = xor i8 %21, 106
  store i8 %22, ptr %arrayidx10, align 1
  %inc15 = add nuw nsw i32 %i.112, 1
  %exitcond13.not = icmp eq i32 %inc15, 64
  br i1 %exitcond13.not, label %for.end16, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body9

for.end16:                                        ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1795745351, ptr %state, align 4
  %24 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1150833019, ptr %arrayidx3.i.i, align 4
  %25 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1013904242, ptr %arrayidx5.i.i, align 4
  %26 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1521486534, ptr %arrayidx7.i.i, align 4
  %27 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1359893119, ptr %arrayidx9.i.i, align 4
  %28 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1694144372, ptr %arrayidx11.i.i, align 4
  %29 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 528734635, ptr %arrayidx13.i.i, align 4
  %30 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1541459225, ptr %arrayidx15.i.i, align 4
  %31 = ptrtoint ptr %buflen.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %buflen.i.i, align 4
  %32 = call ptr @memset(ptr %t.i.i, i32 0, i32 16)
  %33 = ptrtoint ptr %outlen22.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 32, ptr %outlen22.i.i, align 4
  call void @blake2s_update(ptr noundef nonnull %state, ptr noundef nonnull %x_key, i32 noundef 64) #8
  call void @blake2s_update(ptr noundef nonnull %state, ptr noundef nonnull %i_hash, i32 noundef 32) #8
  call void @blake2s_final(ptr noundef nonnull %state, ptr noundef nonnull %i_hash) #8
  %34 = call ptr @memcpy(ptr %out, ptr %i_hash, i32 32)
  %35 = call ptr @memset(ptr %x_key, i32 0, i32 64)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %x_key) #8, !srcloc !84
  %36 = call ptr @memset(ptr %i_hash, i32 0, i32 32)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %i_hash) #8, !srcloc !84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %i_hash) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %x_key) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %state) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @chacha20poly1305_encrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @chacha20poly1305_decrypt(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !50, !52, !54, !55, !56, !58, !60, !62, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @wg_noise_handshake_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/noise.c", i32 66, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = distinct !{null, !4, !"__warned", i1 false, i1 false}
!4 = !{!"../drivers/net/wireguard/noise.c", i32 144, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"__warned", i1 false, i1 false}
!8 = !{!"../drivers/net/wireguard/noise.c", i32 161, i32 8}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../drivers/net/wireguard/noise.c", i32 166, i32 8}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../drivers/net/wireguard/noise.c", i32 171, i32 8}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../drivers/net/wireguard/noise.c", i32 187, i32 12}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../drivers/net/wireguard/noise.c", i32 191, i32 12}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/net/wireguard/noise.c", i32 269, i32 6}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../drivers/net/wireguard/noise.c", i32 280, i32 16}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../drivers/net/wireguard/noise.c", i32 282, i32 2}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireguard/noise.c", i32 846, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wg_noise_handshake_begin_session.descriptor, !25, !"descriptor", i1 false, i1 false}
!29 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @handshake_init_hash, !31, !"handshake_init_hash", i1 false, i1 false}
!31 = !{!"../drivers/net/wireguard/noise.c", i32 30, i32 11}
!32 = !{ptr @handshake_init_chaining_key, !33, !"handshake_init_chaining_key", i1 false, i1 false}
!33 = !{!"../drivers/net/wireguard/noise.c", i32 31, i32 11}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../include/crypto/blake2s.h", i32 95, i32 2}
!36 = !{ptr @handshake_name, !37, !"handshake_name", i1 false, i1 false}
!37 = !{!"../drivers/net/wireguard/noise.c", i32 28, i32 17}
!38 = !{ptr @identifier_name, !39, !"identifier_name", i1 false, i1 false}
!39 = !{!"../drivers/net/wireguard/noise.c", i32 29, i32 17}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/wireguard/noise.c", i32 122, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @keypair_free_kref.descriptor, !41, !"descriptor", i1 false, i1 false}
!44 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mix_precomputed_dh.zero_point, !46, !"zero_point", i1 false, i1 false}
!46 = !{!"../drivers/net/wireguard/noise.c", i32 423, i32 12}
!47 = !{ptr @keypair_create.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../drivers/net/wireguard/noise.c", i32 104, i32 2}
!49 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @keypair_counter, !51, !"keypair_counter", i1 false, i1 false}
!51 = !{!"../drivers/net/wireguard/noise.c", i32 32, i32 19}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../drivers/net/wireguard/noise.c", i32 204, i32 21}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../drivers/net/wireguard/noise.c", i32 206, i32 17}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../drivers/net/wireguard/noise.c", i32 208, i32 20}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!64 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2148280597}
!77 = !{i64 2148195061, i64 2148195093, i64 2148195122, i64 2148195156, i64 2148195187, i64 2148195210}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2148903765}
!80 = !{i64 2148762030, i64 2148762035, i64 2148762048, i64 2148762092, i64 2148762126, i64 2148762147}
!81 = !{i64 565900, i64 565924, i64 565945, i64 565962, i64 565979}
!82 = !{i64 2158059369}
!83 = !{i64 2158068033}
!84 = !{i64 2149251093}
!85 = !{i64 2158013873}
!86 = !{i64 2158022593}
!87 = !{i64 2158031247}
!88 = !{i64 2158039698}
!89 = !{!"branch_weights", i32 1, i32 4001}
