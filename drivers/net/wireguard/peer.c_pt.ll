; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/peer.c_pt.bc'
source_filename = "../drivers/net/wireguard/peer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wg_device = type { ptr, [124 x i8], %struct.crypt_queue, %struct.crypt_queue, %struct.crypt_queue, ptr, ptr, ptr, %struct.noise_static_identity, ptr, ptr, ptr, %struct.cookie_checker, ptr, ptr, %struct.allowedips, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16, [126 x i8] }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.noise_static_identity = type { [32 x i8], [32 x i8], %struct.rw_semaphore, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cookie_checker = type { [32 x i8], [32 x i8], [32 x i8], i64, %struct.rw_semaphore, ptr }
%struct.allowedips = type { ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.151, %struct.atomic_t }
%struct.anon.151 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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

@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/wireguard/peer.c\00", [35 x i8] zeroinitializer }, align 32
@peer_cache = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@peer_counter = internal global { %struct.atomic64_t, [24 x i8] } zeroinitializer, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@wg_peer_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"&peer->keypairs.keypair_update_lock\00", [60 x i8] zeroinitializer }, align 32
@wg_peer_create.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&peer->transmit_handshake_work)\00", [46 x i8] zeroinitializer }, align 32
@wg_peer_create.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&peer->transmit_packet_work)\00", [49 x i8] zeroinitializer }, align 32
@wg_peer_create.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&peer->endpoint_lock\00", [43 x i8] zeroinitializer }, align 32
@wg_peer_create.__UNIQUE_ID_ddebug575 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str, ptr @.str.10, i8 0, i8 16, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wg_peer_create\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Peer %llu created\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wireguard: %s: Peer %llu created\0A\00", [62 x i8] zeroinitializer }, align 32
@wg_peer_get_maybe_zero.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Taking peer reference without holding the RCU read lock\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wg_peer\00", [24 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@kref_release.__UNIQUE_ID_ddebug577 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 51, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kref_release\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Peer %llu (%pISpfsc) destroyed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"wireguard: %s: Peer %llu (%pISpfsc) destroyed\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 28, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"peer_cache\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 18, i32 27 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"peer_counter\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 19, i32 19 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 47, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 48, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 49, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 52, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 64, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 74, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 233, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1984, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [32 x i8] c"../drivers/net/wireguard/peer.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 205, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @peer_cache, ptr @peer_counter, ptr @wg_peer_create.__key, ptr @.str.1, ptr @wg_peer_create.__key.2, ptr @.str.3, ptr @wg_peer_create.__key.4, ptr @.str.5, ptr @wg_peer_create.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @skb_queue_head_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peer_cache to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peer_counter to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_peer_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_peer_create.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_peer_create.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_peer_create.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_peer_create(ptr noundef %wg, ptr noundef %public_key, ptr noundef %preshared_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 16, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !46

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %num_peers = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 21
  %1 = ptrtoint ptr %num_peers to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_peers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %2)
  %cmp24 = icmp ugt i32 %2, 1048575
  br i1 %cmp24, label %if.end.cleanup_crit_edge, label %if.end27

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %3 = load ptr, ptr @peer_cache, align 4
  %call.i150 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 3520) #6
  %tobool29.not = icmp eq ptr %call.i150, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end40, !prof !46

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end27
  %endpoint_cache = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 8
  %call41 = tail call i32 @dst_cache_init(ptr noundef %endpoint_cache, i32 noundef 3264) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end50, label %err, !prof !47

if.end50:                                         ; preds = %if.end40
  %4 = ptrtoint ptr %call.i150 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %wg, ptr %call.i150, align 8
  %handshake = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 10
  %static_identity = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 8
  tail call void @wg_noise_handshake_init(ptr noundef %handshake, ptr noundef %static_identity, ptr noundef %public_key, ptr noundef %preshared_key, ptr noundef nonnull %call.i150) #6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @peer_counter, i32 noundef 8) #6
  %call.i1.i = tail call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef nonnull @peer_counter) #6
  %internal_id = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 34
  %5 = ptrtoint ptr %internal_id to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %call.i1.i, ptr %internal_id, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  %serial_work_cpu = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 4
  %7 = ptrtoint ptr %serial_work_cpu to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %serial_work_cpu, align 4
  %latest_cookie = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 15
  tail call void @wg_cookie_init(ptr noundef %latest_cookie) #6
  tail call void @wg_timers_init(ptr noundef nonnull %call.i150) #6
  tail call void @wg_cookie_checker_precompute_peer_keys(ptr noundef nonnull %call.i150) #6
  %keypair_update_lock = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 6, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %keypair_update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @wg_peer_create.__key, i16 noundef signext 3) #6
  %transmit_handshake_work = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 12
  tail call void @__init_work(ptr noundef %transmit_handshake_work, i32 noundef 0) #6
  %8 = ptrtoint ptr %transmit_handshake_work to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -64, ptr %transmit_handshake_work, align 8
  %lockdep_map = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.3, ptr noundef nonnull @wg_peer_create.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry60 = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %entry60 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %entry60, ptr %entry60, align 4
  %prev.i = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 12, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %entry60, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 12, i32 2
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @wg_packet_handshake_send_worker, ptr %func, align 4
  %transmit_packet_work = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 14
  tail call void @__init_work(ptr noundef %transmit_packet_work, i32 noundef 0) #6
  %12 = ptrtoint ptr %transmit_packet_work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %transmit_packet_work, align 8
  %lockdep_map70 = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map70, ptr noundef nonnull @.str.5, ptr noundef nonnull @wg_peer_create.__key.4, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry72 = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %entry72 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry72, ptr %entry72, align 4
  %prev.i151 = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 14, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i151 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry72, ptr %prev.i151, align 8
  %func74 = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 14, i32 2
  %15 = ptrtoint ptr %func74 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @wg_packet_tx_worker, ptr %func74, align 4
  %tx_queue = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 1
  tail call void @wg_prev_queue_init(ptr noundef %tx_queue) #6
  %rx_queue = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 2
  tail call void @wg_prev_queue_init(ptr noundef %rx_queue) #6
  %endpoint_lock = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 9
  tail call void @__rwlock_init(ptr noundef %endpoint_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @wg_peer_create.__key.6) #6
  %refcount = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 29
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  %16 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %refcount, align 8
  %staged_packet_queue = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 3, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #6
  %17 = ptrtoint ptr %staged_packet_queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %staged_packet_queue, ptr %staged_packet_queue, align 4
  %prev.i.i = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 3, i32 0, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %staged_packet_queue, ptr %prev.i.i, align 8
  %qlen.i.i = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %qlen.i.i, align 4
  %last_sent_handshake = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 11
  %call.i.i1.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #6
  %sub.i = add i64 %call.i.i1.i, -6000000000
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_sent_handshake, i32 noundef 8) #6
  tail call void @generic_atomic64_set(ptr noundef %last_sent_handshake, i64 noundef %sub.i) #6
  %napi = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 33
  %state = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 33, i32 1
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state) #6
  %20 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wg, align 128
  tail call void @netif_napi_add(ptr noundef %21, ptr noundef %napi, ptr noundef nonnull @wg_packet_rx_poll, i32 noundef 64) #6
  tail call void @napi_enable(ptr noundef %napi) #6
  %peer_list = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 31
  %peer_list82 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 19
  %prev.i152 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 19, i32 1
  %22 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i152, align 4
  %call.i.i153 = tail call zeroext i1 @__list_add_valid(ptr noundef %peer_list, ptr noundef %23, ptr noundef %peer_list82) #6
  br i1 %call.i.i153, label %if.end.i.i, label %if.end50.list_add_tail.exit_crit_edge

if.end50.list_add_tail.exit_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %prev.i152 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %peer_list, ptr %prev.i152, align 4
  %25 = ptrtoint ptr %peer_list to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %peer_list82, ptr %peer_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 31, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 8
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %peer_list, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end50.list_add_tail.exit_crit_edge
  %allowedips_list = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 32
  %28 = ptrtoint ptr %allowedips_list to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %allowedips_list, ptr %allowedips_list, align 4
  %prev.i154 = getelementptr inbounds %struct.wg_peer, ptr %call.i150, i32 0, i32 32, i32 1
  %29 = ptrtoint ptr %prev.i154 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %allowedips_list, ptr %prev.i154, align 8
  %peer_hashtable = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 13
  %30 = ptrtoint ptr %peer_hashtable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %peer_hashtable, align 16
  tail call void @wg_pubkey_hashtable_add(ptr noundef %31, ptr noundef nonnull %call.i150) #6
  %32 = ptrtoint ptr %num_peers to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_peers, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %num_peers, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_peer_create.__UNIQUE_ID_ddebug575, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_peer_create, %cleanup)) #6
          to label %if.then96 [label %cleanup], !srcloc !48

if.then96:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wg, align 128
  %36 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %internal_id, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_peer_create.__UNIQUE_ID_ddebug575, ptr noundef nonnull @.str.11, ptr noundef %35, i64 noundef %37) #6
  br label %cleanup

err:                                              ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %38 = load ptr, ptr @peer_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %38, ptr noundef nonnull %call.i150) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then96, %list_add_tail.exit, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %err ], [ %call.i150, %if.then96 ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end27.cleanup_crit_edge ], [ %call.i150, %list_add_tail.exit ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_handshake_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_cookie_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_cookie_checker_precompute_peer_keys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_handshake_send_worker(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_tx_worker(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_prev_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_packet_rx_poll(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_pubkey_hashtable_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @wg_peer_get_maybe_zero(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_bh_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b15 = load i1, ptr @wg_peer_get_maybe_zero.__warned, align 1
  br i1 %.b15, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @wg_peer_get_maybe_zero.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 75, ptr noundef nonnull @.str.12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %tobool5.not = icmp eq ptr %peer, null
  br i1 %tobool5.not, label %do.end.lor.end.thread_crit_edge, label %lor.rhs, !prof !46

do.end.lor.end.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.rhs:                                          ; preds = %do.end
  %refcount = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %2, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #6
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #6
  %4 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #6
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %6 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %5, i32 %add.i.i.i.i, ptr elementtype(i32) %refcount) #6, !srcloc !49
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %5
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !47

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %7 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %8, 1
  %9 = or i32 %add5.i.i.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.lor.end_crit_edge, label %if.then10.i.i.i.i, !prof !47

if.end4.i.i.i.i.lor.end_crit_edge:                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #6
  %10 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %old.i.i.i.i, align 4
  br label %lor.end

lor.end:                                          ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.lor.end_crit_edge
  %11 = phi i32 [ %.pr, %if.then10.i.i.i.i ], [ %8, %if.end4.i.i.i.i.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool12.i.i.i.i.not = icmp eq i32 %11, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #6
  br i1 %tobool12.i.i.i.i.not, label %lor.end.lor.end.thread_crit_edge, label %lor.end._crit_edge

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %12

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %do.end.lor.end.thread_crit_edge
  br label %12

12:                                               ; preds = %lor.end.thread, %lor.end._crit_edge
  %13 = phi ptr [ null, %lor.end.thread ], [ %peer, %lor.end._crit_edge ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_peer_remove(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %peer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body, !prof !46

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool4.not = icmp eq i32 %0, 0
  br i1 %tobool4.not, label %do.body.if.end26_crit_edge, label %land.rhs

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.rhs:                                         ; preds = %do.body
  %1 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %peer, align 8
  %dep_map = getelementptr inbounds %struct.wg_device, ptr %2, i32 0, i32 16, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end26_crit_edge, !prof !46

land.rhs.if.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 161, i32 noundef 9, ptr noundef null) #6
  br label %if.end26

if.end26:                                         ; preds = %do.end, %land.rhs.if.end26_crit_edge, %do.body.if.end26_crit_edge
  %peer_list.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 31
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %peer_list.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end26.peer_make_dead.exit_crit_edge

if.end26.peer_make_dead.exit_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %peer_make_dead.exit

if.end.i.i.i:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 31, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %peer_list.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %peer_make_dead.exit

peer_make_dead.exit:                              ; preds = %if.end.i.i.i, %if.end26.peer_make_dead.exit_crit_edge
  %9 = ptrtoint ptr %peer_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %peer_list.i, ptr %peer_list.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 31, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %peer_list.i, ptr %prev.i3.i.i, align 4
  %11 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %peer, align 8
  %peer_allowedips.i = getelementptr inbounds %struct.wg_device, ptr %12, i32 0, i32 15
  %device_update_lock.i = getelementptr inbounds %struct.wg_device, ptr %12, i32 0, i32 16
  tail call void @wg_allowedips_remove_by_peer(ptr noundef %peer_allowedips.i, ptr noundef nonnull %peer, ptr noundef %device_update_lock.i) #6
  %13 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %peer, align 8
  %peer_hashtable.i = getelementptr inbounds %struct.wg_device, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %peer_hashtable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peer_hashtable.i, align 16
  tail call void @wg_pubkey_hashtable_remove(ptr noundef %16, ptr noundef nonnull %peer) #6
  %is_dead.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 5
  %17 = ptrtoint ptr %is_dead.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store volatile i8 1, ptr %is_dead.i, align 8
  tail call void @synchronize_net() #6
  tail call fastcc void @peer_remove_after_dead(ptr noundef nonnull %peer)
  br label %return

return:                                           ; preds = %peer_make_dead.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @peer_remove_after_dead(ptr noundef %peer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_dead = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 5
  %0 = ptrtoint ptr %is_dead to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_dead, align 8, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !46

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 97, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %keypairs = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 6
  tail call void @wg_noise_keypairs_clear(ptr noundef %keypairs) #6
  tail call void @wg_timers_stop(ptr noundef %peer) #6
  %2 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer, align 8
  %packet_crypt_wq = getelementptr inbounds %struct.wg_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %packet_crypt_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %packet_crypt_wq, align 16
  tail call void @flush_workqueue(ptr noundef %5) #6
  %6 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer, align 8
  %packet_crypt_wq22 = getelementptr inbounds %struct.wg_device, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %packet_crypt_wq22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %packet_crypt_wq22, align 16
  tail call void @flush_workqueue(ptr noundef %9) #6
  %napi = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 33
  tail call void @napi_disable(ptr noundef %napi) #6
  tail call void @__netif_napi_del(ptr noundef %napi) #6
  tail call void @synchronize_net() #6
  %10 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %peer, align 8
  %handshake_send_wq = getelementptr inbounds %struct.wg_device, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %handshake_send_wq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %handshake_send_wq, align 8
  tail call void @flush_workqueue(ptr noundef %13) #6
  %14 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %peer, align 8
  %num_peers = getelementptr inbounds %struct.wg_device, ptr %15, i32 0, i32 21
  %16 = ptrtoint ptr %num_peers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_peers, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %num_peers, align 4
  %tobool.not.i = icmp eq ptr %peer, null
  br i1 %tobool.not.i, label %if.end.wg_peer_put.exit_crit_edge, label %if.end.i, !prof !46

if.end.wg_peer_put.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %wg_peer_put.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %refcount.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 29
  tail call fastcc void @kref_put(ptr noundef %refcount.i) #6
  br label %wg_peer_put.exit

wg_peer_put.exit:                                 ; preds = %if.end.i, %if.end.wg_peer_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_peer_remove_all(ptr noundef %wg) local_unnamed_addr #0 align 64 {
entry:
  %dead_peers = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dead_peers) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %dead_peers, i32 0, i32 1
  %1 = ptrtoint ptr %dead_peers to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dead_peers, ptr %dead_peers, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dead_peers, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %3 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 16, i32 5
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !46

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 173, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %peer_allowedips = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 15
  %device_update_lock24 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 16
  call void @wg_allowedips_free(ptr noundef %peer_allowedips, ptr noundef %device_update_lock24) #6
  %peer_list = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 19
  %4 = ptrtoint ptr %peer_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer_list, align 8
  %cmp34.not82 = icmp eq ptr %5, %peer_list
  br i1 %cmp34.not82, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in83 = phi ptr [ %.pn, %list_add_tail.exit.for.body_crit_edge ], [ %5, %if.end.for.body_crit_edge ]
  %peer.0 = getelementptr i8, ptr %.pn.in83, i32 -1300
  %6 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in83, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in83) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.peer_make_dead.exit_crit_edge

for.body.peer_make_dead.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %peer_make_dead.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr i8, ptr %.pn.in83, i32 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in83, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %peer_make_dead.exit

peer_make_dead.exit:                              ; preds = %if.end.i.i.i, %for.body.peer_make_dead.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in83, ptr %.pn.in83, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn.in83, i32 4
  %14 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in83, ptr %prev.i3.i.i, align 4
  %15 = ptrtoint ptr %peer.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peer.0, align 8
  %peer_allowedips.i = getelementptr inbounds %struct.wg_device, ptr %16, i32 0, i32 15
  %device_update_lock.i = getelementptr inbounds %struct.wg_device, ptr %16, i32 0, i32 16
  call void @wg_allowedips_remove_by_peer(ptr noundef %peer_allowedips.i, ptr noundef %peer.0, ptr noundef %device_update_lock.i) #6
  %17 = ptrtoint ptr %peer.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %peer.0, align 8
  %peer_hashtable.i = getelementptr inbounds %struct.wg_device, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %peer_hashtable.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %peer_hashtable.i, align 16
  call void @wg_pubkey_hashtable_remove(ptr noundef %20, ptr noundef %peer.0) #6
  %is_dead.i = getelementptr i8, ptr %.pn.in83, i32 -1188
  %21 = ptrtoint ptr %is_dead.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store volatile i8 1, ptr %is_dead.i, align 8
  %22 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in83, ptr noundef %23, ptr noundef nonnull %dead_peers) #6
  br i1 %call.i.i, label %if.end.i.i, label %peer_make_dead.exit.list_add_tail.exit_crit_edge

peer_make_dead.exit.list_add_tail.exit_crit_edge: ; preds = %peer_make_dead.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %peer_make_dead.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %.pn.in83, ptr %0, align 4
  %25 = ptrtoint ptr %.pn.in83 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dead_peers, ptr %.pn.in83, align 4
  %26 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev.i3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %.pn.in83, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %peer_make_dead.exit.list_add_tail.exit_crit_edge
  %cmp34.not = icmp eq ptr %.pn, %peer_list
  br i1 %cmp34.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @synchronize_net() #6
  %28 = ptrtoint ptr %dead_peers to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dead_peers, align 4
  %cmp54.not85 = icmp eq ptr %29, %dead_peers
  br i1 %cmp54.not85, label %for.end.for.end64_crit_edge, label %for.end.for.body57_crit_edge

for.end.for.body57_crit_edge:                     ; preds = %for.end
  br label %for.body57

for.end.for.end64_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end64

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.end.for.body57_crit_edge
  %.pn79.in86 = phi ptr [ %.pn79, %for.body57.for.body57_crit_edge ], [ %29, %for.end.for.body57_crit_edge ]
  %peer.1 = getelementptr i8, ptr %.pn79.in86, i32 -1300
  %30 = ptrtoint ptr %.pn79.in86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn79 = load ptr, ptr %.pn79.in86, align 4
  call fastcc void @peer_remove_after_dead(ptr noundef %peer.1)
  %cmp54.not = icmp eq ptr %.pn79, %dead_peers
  br i1 %cmp54.not, label %for.body57.for.end64_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body57

for.body57.for.end64_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end64

for.end64:                                        ; preds = %for.body57.for.end64_crit_edge, %for.end.for.end64_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dead_peers) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_allowedips_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_peer_put(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %peer, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !46

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %refcount = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 29
  tail call fastcc void @kref_put(ptr noundef %refcount)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kref_put(ptr noundef %kref) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #6, !srcloc !52
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !47

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #6
  br label %return

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !53
  %add.ptr.i = getelementptr i8, ptr %kref, i32 -1288
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kref_release.__UNIQUE_ID_ddebug577, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@kref_put, %kref_release.exit)) #6
          to label %if.then.i [label %kref_release.exit], !srcloc !48

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %internal_id.i = getelementptr i8, ptr %kref, i32 256
  %5 = ptrtoint ptr %internal_id.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %internal_id.i, align 8
  %endpoint.i = getelementptr i8, ptr %kref, i32 -1116
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @kref_release.__UNIQUE_ID_ddebug577, ptr noundef nonnull @.str.17, ptr noundef %4, i64 noundef %6, ptr noundef %endpoint.i) #6
  br label %kref_release.exit

kref_release.exit:                                ; preds = %if.then.i, %if.then
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 8
  %index_hashtable.i = getelementptr inbounds %struct.wg_device, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %index_hashtable.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %index_hashtable.i, align 4
  %handshake.i = getelementptr i8, ptr %kref, i32 -1016
  tail call void @wg_index_hashtable_remove(ptr noundef %10, ptr noundef %handshake.i) #6
  tail call void @wg_packet_purge_staged_packets(ptr noundef %add.ptr.i) #6
  %rcu.i = getelementptr i8, ptr %kref, i32 4
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @rcu_release) #6
  br label %return

return:                                           ; preds = %kref_release.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_peer_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.13, i32 noundef 1552, i32 noundef 8, i32 noundef 0, ptr noundef null) #6
  store ptr %call, ptr @peer_cache, align 4
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_peer_uninit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @peer_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_allowedips_remove_by_peer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_pubkey_hashtable_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_keypairs_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_index_hashtable_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_purge_staged_packets(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcu_release(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %endpoint_cache = getelementptr i8, ptr %rcu, i32 -1076
  tail call void @dst_cache_destroy(ptr noundef %endpoint_cache) #6
  %peeked.i = getelementptr i8, ptr %rcu, i32 -1280
  %0 = ptrtoint ptr %peeked.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peeked.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %wg_prev_queue_peek.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

wg_prev_queue_peek.exit:                          ; preds = %entry
  %tx_queue = getelementptr i8, ptr %rcu, i32 -1288
  %call.i = tail call ptr @wg_prev_queue_dequeue(ptr noundef %tx_queue) #6
  %2 = ptrtoint ptr %peeked.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %peeked.i, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %lor.rhs, label %wg_prev_queue_peek.exit.do.end_crit_edge

wg_prev_queue_peek.exit.do.end_crit_edge:         ; preds = %wg_prev_queue_peek.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %wg_prev_queue_peek.exit
  %peeked.i28 = getelementptr i8, ptr %rcu, i32 -1256
  %3 = ptrtoint ptr %peeked.i28 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %peeked.i28, align 4
  %tobool.not.i29 = icmp eq ptr %4, null
  br i1 %tobool.not.i29, label %wg_prev_queue_peek.exit33, label %lor.rhs.do.end_crit_edge

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

wg_prev_queue_peek.exit33:                        ; preds = %lor.rhs
  %rx_queue = getelementptr i8, ptr %rcu, i32 -1264
  %call.i30 = tail call ptr @wg_prev_queue_dequeue(ptr noundef %rx_queue) #6
  %5 = ptrtoint ptr %peeked.i28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i30, ptr %peeked.i28, align 4
  %tobool2.not = icmp eq ptr %call.i30, null
  br i1 %tobool2.not, label %wg_prev_queue_peek.exit33.if.end_crit_edge, label %wg_prev_queue_peek.exit33.do.end_crit_edge, !prof !47

wg_prev_queue_peek.exit33.do.end_crit_edge:       ; preds = %wg_prev_queue_peek.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

wg_prev_queue_peek.exit33.if.end_crit_edge:       ; preds = %wg_prev_queue_peek.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %wg_prev_queue_peek.exit33.do.end_crit_edge, %lor.rhs.do.end_crit_edge, %wg_prev_queue_peek.exit.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %wg_prev_queue_peek.exit33.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -1292
  %6 = call ptr @memset(ptr %add.ptr, i32 0, i32 1552)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %add.ptr) #6, !srcloc !54
  %7 = load ptr, ptr @peer_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_cache_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_prev_queue_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !11, !13, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !31, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/peer.c", i32 28, i32 2}
!2 = !{ptr @wg_peer_create.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/net/wireguard/peer.c", i32 47, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wg_peer_create.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/net/wireguard/peer.c", i32 48, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @wg_peer_create.__key.4, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireguard/peer.c", i32 49, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wg_peer_create.__key.6, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/net/wireguard/peer.c", i32 52, i32 2}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/wireguard/peer.c", i32 64, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wg_peer_create.__UNIQUE_ID_ddebug575, !15, !"__UNIQUE_ID_ddebug575", i1 false, i1 false}
!19 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../drivers/net/wireguard/peer.c", i32 74, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/wireguard/peer.c", i32 233, i32 15}
!25 = !{ptr @peer_cache, !26, !"peer_cache", i1 false, i1 false}
!26 = !{!"../drivers/net/wireguard/peer.c", i32 18, i32 27}
!27 = !{ptr @peer_counter, !28, !"peer_counter", i1 false, i1 false}
!28 = !{!"../drivers/net/wireguard/peer.c", i32 19, i32 19}
!29 = !{ptr @skb_queue_head_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/wireguard/peer.c", i32 205, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @kref_release.__UNIQUE_ID_ddebug577, !33, !"__UNIQUE_ID_ddebug577", i1 false, i1 false}
!36 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 2148745764, i64 2148745769, i64 2148745782, i64 2148745826, i64 2148745860, i64 2148745881}
!49 = !{i64 549634, i64 549658, i64 549679, i64 549696, i64 549713}
!50 = !{i8 0, i8 2}
!51 = !{i64 2148264331}
!52 = !{i64 2148178795, i64 2148178827, i64 2148178856, i64 2148178890, i64 2148178921, i64 2148178944}
!53 = !{i64 2148887499}
!54 = !{i64 2149234827}
