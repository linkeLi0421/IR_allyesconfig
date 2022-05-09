; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/timers.c_pt.bc'
source_filename = "../drivers/net/wireguard/timers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.atomic64_t = type { i64 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.149 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.wg_device = type { ptr, [124 x i8], %struct.crypt_queue, %struct.crypt_queue, %struct.crypt_queue, ptr, ptr, ptr, %struct.noise_static_identity, ptr, ptr, ptr, %struct.cookie_checker, ptr, ptr, %struct.allowedips, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16, [126 x i8] }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.noise_static_identity = type { [32 x i8], [32 x i8], %struct.rw_semaphore, i8 }
%struct.cookie_checker = type { [32 x i8], [32 x i8], [32 x i8], i64, %struct.rw_semaphore, ptr }
%struct.allowedips = type { ptr, ptr, i64 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@wg_timers_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(&peer->timer_retransmit_handshake)\00", [60 x i8] zeroinitializer }, align 32
@wg_timers_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(&peer->timer_send_keepalive)\00", [34 x i8] zeroinitializer }, align 32
@wg_timers_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(&peer->timer_new_handshake)\00", [35 x i8] zeroinitializer }, align 32
@wg_timers_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(&peer->timer_zero_key_material)\00", [63 x i8] zeroinitializer }, align 32
@wg_timers_init.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"(&peer->timer_persistent_keepalive)\00", [60 x i8] zeroinitializer }, align 32
@wg_timers_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&peer->clear_peer_work)\00", [54 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@wg_expired_retransmit_handshake.__UNIQUE_ID_ddebug576 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, i8 0, i8 12, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wg_expired_retransmit_handshake\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/wireguard/timers.c\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s: Handshake for peer %llu (%pISpfsc) did not complete after %d attempts, giving up\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"wireguard: %s: Handshake for peer %llu (%pISpfsc) did not complete after %d attempts, giving up\0A\00", [63 x i8] zeroinitializer }, align 32
@wg_expired_retransmit_handshake.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, i8 0, i8 17, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"%s: Handshake for peer %llu (%pISpfsc) did not complete after %d seconds, retrying (try %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [104 x i8], [56 x i8] } { [104 x i8] c"wireguard: %s: Handshake for peer %llu (%pISpfsc) did not complete after %d seconds, retrying (try %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@wg_expired_new_handshake.__UNIQUE_ID_ddebug578 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.21, ptr @.str.16, ptr @.str.22, i8 0, i8 24, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wg_expired_new_handshake\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%s: Retrying handshake with peer %llu (%pISpfsc) because we stopped hearing back after %d seconds\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"wireguard: %s: Retrying handshake with peer %llu (%pISpfsc) because we stopped hearing back after %d seconds\0A\00", [50 x i8] zeroinitializer }, align 32
@wg_queued_expired_zero_key_material.__UNIQUE_ID_ddebug580 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.24, ptr @.str.16, ptr @.str.25, i8 0, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wg_queued_expired_zero_key_material\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"%s: Zeroing out all keys for peer %llu (%pISpfsc), since we haven't received a new one in %d seconds\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"wireguard: %s: Zeroing out all keys for peer %llu (%pISpfsc), since we haven't received a new one in %d seconds\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 221, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 223, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 224, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 225, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 227, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 229, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 749, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 760, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 47, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 65, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 95, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [34 x i8] c"../drivers/net/wireguard/timers.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 127, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @wg_timers_init.__key, ptr @.str, ptr @wg_timers_init.__key.1, ptr @.str.2, ptr @wg_timers_init.__key.3, ptr @.str.4, ptr @wg_timers_init.__key.5, ptr @.str.6, ptr @wg_timers_init.__key.7, ptr @.str.8, ptr @wg_timers_init.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_timers_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_timers_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_timers_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_timers_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_timers_init.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_timers_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_data_sent(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pprev.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 21, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %timer_new_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 1500
  %call.i = tail call i32 @prandom_u32() #4
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 33
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add3 = add i32 %add, %conv2.i
  tail call fastcc void @mod_peer_timer(ptr noundef %peer, ptr noundef %timer_new_handshake, i32 noundef %add3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mod_peer_timer(ptr noundef %peer, ptr noundef %timer, i32 noundef %expires) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @local_bh_disable() #4
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #4
  %call.i = tail call zeroext i1 @rcu_is_watching() #4
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 750, ptr noundef nonnull @.str.12) #4
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %rcu_read_lock_bh.exit.if.end_crit_edge, label %do.end, !prof !55

rcu_read_lock_bh.exit.if.end_crit_edge:           ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %rcu_read_lock_bh.exit
  %is_dead = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 5
  %6 = ptrtoint ptr %is_dead to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %is_dead, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %do.end.if.end_crit_edge, !prof !57

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %expires) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.if.end_crit_edge, %rcu_read_lock_bh.exit.if.end_crit_edge
  %call.i7 = tail call zeroext i1 @rcu_is_watching() #4
  br i1 %call.i7, label %if.end.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i10

if.end.rcu_read_unlock_bh.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i10:                                ; preds = %if.end
  %call1.i8 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i8)
  %tobool.not.i9 = icmp eq i32 %call1.i8, 0
  br i1 %tobool.not.i9, label %land.lhs.true.i10.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i12

land.lhs.true.i10.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i10
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i12:                               ; preds = %land.lhs.true.i10
  %.b4.i11 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i11, label %land.lhs.true2.i12.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i13

land.lhs.true2.i12.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock_bh.exit

if.then.i13:                                      ; preds = %land.lhs.true2.i12
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 761, ptr noundef nonnull @.str.13) #4
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i13, %land.lhs.true2.i12.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i10.rcu_read_unlock_bh.exit_crit_edge, %if.end.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #4
  tail call fastcc void @local_bh_enable() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_data_received(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end6_crit_edge, label %if.then, !prof !55

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %pprev.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 20, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %timer_send_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 1000
  tail call fastcc void @mod_peer_timer(ptr noundef %peer, ptr noundef %timer_send_keepalive, i32 noundef %add)
  br label %if.end6

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %timer_need_another_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 26
  %9 = ptrtoint ptr %timer_need_another_keepalive to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %timer_need_another_keepalive, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then4, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_any_authenticated_packet_sent(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_send_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 20
  %call = tail call i32 @del_timer(ptr noundef %timer_send_keepalive) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_any_authenticated_packet_received(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_new_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 21
  %call = tail call i32 @del_timer(ptr noundef %timer_new_handshake) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_handshake_initiated(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_retransmit_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 500
  %call.i = tail call i32 @prandom_u32() #4
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 33
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %add1 = add i32 %add, %conv2.i
  tail call fastcc void @mod_peer_timer(ptr noundef %peer, ptr noundef %timer_retransmit_handshake, i32 noundef %add1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_handshake_complete(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_retransmit_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 19
  %call = tail call i32 @del_timer(ptr noundef %timer_retransmit_handshake) #4
  %timer_handshake_attempts = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 24
  %0 = ptrtoint ptr %timer_handshake_attempts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %timer_handshake_attempts, align 8
  %sent_lastminute_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 27
  %1 = ptrtoint ptr %sent_lastminute_handshake to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %sent_lastminute_handshake, align 1
  %walltime_last_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 28
  tail call void @ktime_get_real_ts64(ptr noundef %walltime_last_handshake) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_session_derived(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_zero_key_material = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 54000
  tail call fastcc void @mod_peer_timer(ptr noundef %peer, ptr noundef %timer_zero_key_material, i32 noundef %add)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_any_authenticated_packet_traversal(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %persistent_keepalive_interval = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 25
  %0 = ptrtoint ptr %persistent_keepalive_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %persistent_keepalive_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %timer_persistent_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %conv = zext i16 %1 to i32
  %mul = mul nuw nsw i32 %conv, 100
  %add = add i32 %2, %mul
  tail call fastcc void @mod_peer_timer(ptr noundef %peer, ptr noundef %timer_persistent_keepalive, i32 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_init(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_retransmit_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 19
  tail call void @init_timer_key(ptr noundef %timer_retransmit_handshake, ptr noundef nonnull @wg_expired_retransmit_handshake, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @wg_timers_init.__key) #4
  %timer_send_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 20
  tail call void @init_timer_key(ptr noundef %timer_send_keepalive, ptr noundef nonnull @wg_expired_send_keepalive, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @wg_timers_init.__key.1) #4
  %timer_new_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 21
  tail call void @init_timer_key(ptr noundef %timer_new_handshake, ptr noundef nonnull @wg_expired_new_handshake, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @wg_timers_init.__key.3) #4
  %timer_zero_key_material = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 22
  tail call void @init_timer_key(ptr noundef %timer_zero_key_material, ptr noundef nonnull @wg_expired_zero_key_material, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull @wg_timers_init.__key.5) #4
  %timer_persistent_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 23
  tail call void @init_timer_key(ptr noundef %timer_persistent_keepalive, ptr noundef nonnull @wg_expired_send_persistent_keepalive, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @wg_timers_init.__key.7) #4
  %clear_peer_work = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 13
  tail call void @__init_work(ptr noundef %clear_peer_work, i32 noundef 0) #4
  %0 = ptrtoint ptr %clear_peer_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %clear_peer_work, align 4
  %lockdep_map = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @wg_timers_init.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry13 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 13, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry13, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 13, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @wg_queued_expired_zero_key_material, ptr %func, align 4
  %timer_handshake_attempts = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 24
  %4 = ptrtoint ptr %timer_handshake_attempts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %timer_handshake_attempts, align 8
  %sent_lastminute_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 27
  %5 = ptrtoint ptr %sent_lastminute_handshake to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %sent_lastminute_handshake, align 1
  %timer_need_another_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 26
  %6 = ptrtoint ptr %timer_need_another_keepalive to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %timer_need_another_keepalive, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_expired_retransmit_handshake(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -1024
  %timer_handshake_attempts = getelementptr i8, ptr %timer, i32 240
  %0 = ptrtoint ptr %timer_handshake_attempts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timer_handshake_attempts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %1)
  %cmp = icmp ugt i32 %1, 18
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_expired_retransmit_handshake.__UNIQUE_ID_ddebug576, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_expired_retransmit_handshake, %do.end)) #4
          to label %if.then5 [label %do.end], !srcloc !58

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %internal_id = getelementptr i8, ptr %timer, i32 520
  %6 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %internal_id, align 8
  %endpoint = getelementptr i8, ptr %timer, i32 -852
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_expired_retransmit_handshake.__UNIQUE_ID_ddebug576, ptr noundef nonnull @.str.18, ptr noundef %5, i64 noundef %7, ptr noundef %endpoint, i32 noundef 20) #4
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %timer_send_keepalive = getelementptr i8, ptr %timer, i32 48
  %call6 = tail call i32 @del_timer(ptr noundef %timer_send_keepalive) #4
  tail call void @wg_packet_purge_staged_packets(ptr noundef %add.ptr) #4
  %pprev.i.i = getelementptr i8, ptr %timer, i32 148
  %8 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.not, label %if.then9, label %do.end.if.end39_crit_edge

do.end.if.end39_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %timer_zero_key_material = getelementptr i8, ptr %timer, i32 144
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %10, 54000
  tail call fastcc void @mod_peer_timer(ptr noundef %add.ptr, ptr noundef %timer_zero_key_material, i32 noundef %add)
  br label %if.end39

if.else:                                          ; preds = %entry
  %inc = add nuw nsw i32 %1, 1
  %11 = ptrtoint ptr %timer_handshake_attempts to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %timer_handshake_attempts, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_expired_retransmit_handshake.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_expired_retransmit_handshake, %do.end38)) #4
          to label %if.then27 [label %do.end38], !srcloc !58

if.then27:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 128
  %internal_id32 = getelementptr i8, ptr %timer, i32 520
  %16 = ptrtoint ptr %internal_id32 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %internal_id32, align 8
  %endpoint33 = getelementptr i8, ptr %timer, i32 -852
  %18 = ptrtoint ptr %timer_handshake_attempts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timer_handshake_attempts, align 8
  %add35 = add i32 %19, 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_expired_retransmit_handshake.__UNIQUE_ID_ddebug577, ptr noundef nonnull @.str.20, ptr noundef %15, i64 noundef %17, ptr noundef %endpoint33, i32 noundef 5, i32 noundef %add35) #4
  br label %do.end38

do.end38:                                         ; preds = %if.then27, %if.else
  tail call void @wg_socket_clear_peer_endpoint_src(ptr noundef %add.ptr) #4
  tail call void @wg_packet_send_queued_handshake_initiation(ptr noundef %add.ptr, i1 noundef zeroext true) #4
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.then9, %do.end.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_expired_send_keepalive(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -1072
  tail call void @wg_packet_send_keepalive(ptr noundef %add.ptr) #4
  %timer_need_another_keepalive = getelementptr i8, ptr %timer, i32 198
  %0 = ptrtoint ptr %timer_need_another_keepalive to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %timer_need_another_keepalive, align 2, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %timer_need_another_keepalive to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %timer_need_another_keepalive, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %3, 1000
  tail call fastcc void @mod_peer_timer(ptr noundef %add.ptr, ptr noundef %timer, i32 noundef %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_expired_new_handshake(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -1120
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_expired_new_handshake.__UNIQUE_ID_ddebug578, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_expired_new_handshake, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %internal_id = getelementptr i8, ptr %timer, i32 424
  %4 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %internal_id, align 8
  %endpoint = getelementptr i8, ptr %timer, i32 -948
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_expired_new_handshake.__UNIQUE_ID_ddebug578, ptr noundef nonnull @.str.23, ptr noundef %3, i64 noundef %5, ptr noundef %endpoint, i32 noundef 15) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @wg_socket_clear_peer_endpoint_src(ptr noundef %add.ptr) #4
  tail call void @wg_packet_send_queued_handshake_initiation(ptr noundef %add.ptr, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_expired_zero_key_material(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -1168
  tail call fastcc void @local_bh_disable() #4
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #4
  %call.i = tail call zeroext i1 @rcu_is_watching() #4
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 750, ptr noundef nonnull @.str.12) #4
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %is_dead = getelementptr i8, ptr %timer, i32 -1056
  %0 = ptrtoint ptr %is_dead to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %is_dead, align 8, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %rcu_read_lock_bh.exit.if.end5_crit_edge

rcu_read_lock_bh.exit.if.end5_crit_edge:          ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then:                                          ; preds = %rcu_read_lock_bh.exit
  %refcount.i = getelementptr i8, ptr %timer, i32 120
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #4
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #4, !srcloc !59
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !55

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !57

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %wg_peer_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #4
  br label %wg_peer_get.exit

wg_peer_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %handshake_send_wq = getelementptr inbounds %struct.wg_device, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %handshake_send_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %handshake_send_wq, align 8
  %clear_peer_work = getelementptr i8, ptr %timer, i32 -468
  %call.i10 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %clear_peer_work) #4
  br i1 %call.i10, label %wg_peer_get.exit.if.end5_crit_edge, label %if.then4

wg_peer_get.exit.if.end5_crit_edge:               ; preds = %wg_peer_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then4:                                         ; preds = %wg_peer_get.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @wg_peer_put(ptr noundef %add.ptr) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %wg_peer_get.exit.if.end5_crit_edge, %rcu_read_lock_bh.exit.if.end5_crit_edge
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #4
  br i1 %call.i11, label %if.end5.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i14

if.end5.rcu_read_unlock_bh.exit_crit_edge:        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i14:                                ; preds = %if.end5
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #6
  br label %rcu_read_unlock_bh.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.11, i32 noundef 761, ptr noundef nonnull @.str.13) #4
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock_bh.exit_crit_edge, %if.end5.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #4
  tail call fastcc void @local_bh_enable() #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_expired_send_persistent_keepalive(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %persistent_keepalive_interval = getelementptr i8, ptr %timer, i32 52
  %0 = ptrtoint ptr %persistent_keepalive_interval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %persistent_keepalive_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %timer, i32 -1216
  tail call void @wg_packet_send_keepalive(ptr noundef %add.ptr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wg_queued_expired_zero_key_material(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -700
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_queued_expired_zero_key_material.__UNIQUE_ID_ddebug580, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_queued_expired_zero_key_material, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !58

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %internal_id = getelementptr i8, ptr %work, i32 844
  %4 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %internal_id, align 8
  %endpoint = getelementptr i8, ptr %work, i32 -528
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_queued_expired_zero_key_material.__UNIQUE_ID_ddebug580, ptr noundef nonnull @.str.26, ptr noundef %3, i64 noundef %5, ptr noundef %endpoint, i32 noundef 540) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %handshake = getelementptr i8, ptr %work, i32 -428
  tail call void @wg_noise_handshake_clear(ptr noundef %handshake) #4
  %keypairs = getelementptr i8, ptr %work, i32 -584
  tail call void @wg_noise_keypairs_clear(ptr noundef %keypairs) #4
  tail call void @wg_peer_put(ptr noundef %add.ptr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_timers_stop(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %timer_retransmit_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 19
  %call = tail call i32 @del_timer_sync(ptr noundef %timer_retransmit_handshake) #4
  %timer_send_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 20
  %call1 = tail call i32 @del_timer_sync(ptr noundef %timer_send_keepalive) #4
  %timer_new_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 21
  %call2 = tail call i32 @del_timer_sync(ptr noundef %timer_new_handshake) #4
  %timer_zero_key_material = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 22
  %call3 = tail call i32 @del_timer_sync(ptr noundef %timer_zero_key_material) #4
  %timer_persistent_keepalive = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 23
  %call4 = tail call i32 @del_timer_sync(ptr noundef %timer_persistent_keepalive) #4
  %clear_peer_work = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 13
  %call5 = tail call zeroext i1 @flush_work(ptr noundef %clear_peer_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_purge_staged_packets(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_socket_clear_peer_endpoint_src(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_queued_handshake_initiation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_keepalive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_handshake_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_keypairs_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @wg_timers_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/timers.c", i32 221, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @wg_timers_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/net/wireguard/timers.c", i32 223, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wg_timers_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/net/wireguard/timers.c", i32 224, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wg_timers_init.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/net/wireguard/timers.c", i32 225, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @wg_timers_init.__key.7, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/net/wireguard/timers.c", i32 227, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wg_timers_init.__key.9, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/wireguard/timers.c", i32 229, i32 2}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/wireguard/timers.c", i32 47, i32 3}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wg_expired_retransmit_handshake.__UNIQUE_ID_ddebug576, !26, !"__UNIQUE_ID_ddebug576", i1 false, i1 false}
!31 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireguard/timers.c", i32 65, i32 3}
!34 = !{ptr @wg_expired_retransmit_handshake.__UNIQUE_ID_ddebug577, !33, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!35 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/wireguard/timers.c", i32 95, i32 2}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wg_expired_new_handshake.__UNIQUE_ID_ddebug578, !37, !"__UNIQUE_ID_ddebug578", i1 false, i1 false}
!40 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/wireguard/timers.c", i32 127, i32 2}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @wg_queued_expired_zero_key_material.__UNIQUE_ID_ddebug580, !42, !"__UNIQUE_ID_ddebug580", i1 false, i1 false}
!45 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i8 0, i8 2}
!57 = !{!"branch_weights", i32 2000, i32 1}
!58 = !{i64 2148770033, i64 2148770038, i64 2148770051, i64 2148770095, i64 2148770129, i64 2148770150}
!59 = !{i64 2148214358, i64 2148214390, i64 2148214419, i64 2148214453, i64 2148214484, i64 2148214507}
