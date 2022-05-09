; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/send.c_pt.bc'
source_filename = "../drivers/net/wireguard/send.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.cpumask = type { [1 x i32] }
%struct.message_handshake_initiation = type { %struct.message_header, i32, [32 x i8], [48 x i8], [28 x i8], %struct.message_macs }
%struct.message_header = type { i32 }
%struct.message_macs = type { [16 x i8], [16 x i8] }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.152, %struct.atomic_t }
%struct.anon.152 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.52, i32, %struct.spinlock }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.13 }
%union.anon.13 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.14 }
%union.anon.14 = type { i32 }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.endpoint = type { %union.anon.153, %union.anon.154 }
%union.anon.153 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.48 }
%union.anon.48 = type { [4 x i32] }
%union.anon.154 = type { %struct.in6_addr }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.wg_device = type { ptr, [124 x i8], %struct.crypt_queue, %struct.crypt_queue, %struct.crypt_queue, ptr, ptr, ptr, %struct.noise_static_identity, ptr, ptr, ptr, %struct.cookie_checker, ptr, ptr, %struct.allowedips, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16, [126 x i8] }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.noise_static_identity = type { [32 x i8], [32 x i8], %struct.rw_semaphore, i8 }
%struct.cookie_checker = type { [32 x i8], [32 x i8], [32 x i8], i64, %struct.rw_semaphore, ptr }
%struct.allowedips = type { ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.message_handshake_response = type { %struct.message_header, i32, i32, [32 x i8], [16 x i8], %struct.message_macs }
%struct.message_handshake_cookie = type { %struct.message_header, i32, [24 x i8], [32 x i8] }
%struct.sk_buff = type { %union.anon.0, %union.anon.3, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, %union.anon.2 }
%union.anon.2 = type { ptr }
%union.anon.3 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.150, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.150 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.noise_keypair = type { %struct.index_hashtable_entry, %struct.noise_symmetric_key, %struct.atomic64_t, %struct.noise_symmetric_key, %struct.noise_replay_counter, i32, i8, %struct.kref, %struct.callback_head, i64 }
%struct.noise_symmetric_key = type { [32 x i8], i64, i8 }
%struct.noise_replay_counter = type { i64, %struct.spinlock, [256 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.multicore_worker = type { ptr, %struct.work_struct }
%struct.flow_keys_basic = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.message_data = type { %struct.message_header, i32, i64, [0 x i8] }

@wg_packet_send_handshake_response.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wg_packet_send_handshake_response\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/wireguard/send.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: Sending handshake response to peer %llu (%pISpfsc)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"wireguard: %s: Sending handshake response to peer %llu (%pISpfsc)\0A\00", [61 x i8] zeroinitializer }, align 32
@wg_packet_send_handshake_cookie.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wg_packet_send_handshake_cookie\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s: Sending cookie response for denied handshake message for %pISpfsc\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"wireguard: %s: Sending cookie response for denied handshake message for %pISpfsc\0A\00", [46 x i8] zeroinitializer }, align 32
@wg_packet_send_keepalive.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wg_packet_send_keepalive\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Sending keepalive packet to peer %llu (%pISpfsc)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"wireguard: %s: Sending keepalive packet to peer %llu (%pISpfsc)\0A\00", [63 x i8] zeroinitializer }, align 32
@wg_packet_send_staged_packets.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@wg_packet_send_handshake_initiation.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 8, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"wg_packet_send_handshake_initiation\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Sending handshake initiation to peer %llu (%pISpfsc)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"wireguard: %s: Sending handshake initiation to peer %llu (%pISpfsc)\0A\00", [59 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@keep_key_fresh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@flow_keys_basic_dissector = external dso_local global %struct.flow_dissector, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967264]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 90, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 116, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 234, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 358, i32 3 }
@___asan_gen_.63 = private constant [32 x i8] c"../drivers/net/wireguard/send.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 30, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 749, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 760, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 108, i32 2 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_handshake_send_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -656
  tail call fastcc void @wg_packet_send_handshake_initiation(ptr noundef %add.ptr)
  tail call void @wg_peer_put(ptr noundef %add.ptr) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wg_packet_send_handshake_initiation(ptr noundef %peer) unnamed_addr #0 align 64 {
entry:
  %packet = alloca %struct.message_handshake_initiation, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %packet) #8
  %0 = call ptr @memset(ptr %packet, i32 255, i32 148)
  %last_sent_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_sent_handshake, i32 noundef 8) #8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_sent_handshake) #8
  %add.i = add i64 %call.i, 5000000000
  %call.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call.i.i.i)
  %cmp.i.not = icmp sgt i64 %add.i, %call.i.i.i
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i31 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_sent_handshake, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %last_sent_handshake, i64 noundef %call.i.i31) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_send_handshake_initiation.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_send_handshake_initiation, %do.end)) #8
          to label %land.lhs.true [label %do.end], !srcloc !47

land.lhs.true:                                    ; preds = %if.end
  %call8 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end_crit_edge, label %if.then10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %peer, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %internal_id = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 34
  %5 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %internal_id, align 8
  %endpoint = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_send_handshake_initiation.descriptor, ptr noundef nonnull @.str.14, ptr noundef %4, i64 noundef %6, ptr noundef %endpoint) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true.do.end_crit_edge, %if.end
  %handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10
  %call12 = call zeroext i1 @wg_noise_handshake_create_initiation(ptr noundef nonnull %packet, ptr noundef %handshake) #8
  br i1 %call12, label %if.then13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @wg_cookie_add_mac_to_packet(ptr noundef nonnull %packet, i32 noundef 148, ptr noundef %peer) #8
  call void @wg_timers_any_authenticated_packet_traversal(ptr noundef %peer) #8
  call void @wg_timers_any_authenticated_packet_sent(ptr noundef %peer) #8
  %call.i.i32 = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %call.i.i30 = call zeroext i1 @__kasan_check_write(ptr noundef %last_sent_handshake, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef %last_sent_handshake, i64 noundef %call.i.i32) #8
  %call16 = call i32 @wg_socket_send_buffer_to_peer(ptr noundef %peer, ptr noundef nonnull %packet, i32 noundef 148, i8 noundef zeroext -120) #8
  call void @wg_timers_handshake_initiated(ptr noundef %peer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %packet) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_send_queued_handshake_initiation(ptr noundef %peer, i1 noundef zeroext %is_retry) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %is_retry, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %timer_handshake_attempts = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 24
  %0 = ptrtoint ptr %timer_handshake_attempts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %timer_handshake_attempts, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @local_bh_disable() #8
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #8
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i19, label %if.end.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock_bh.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 750, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.end.rcu_read_lock_bh.exit_crit_edge
  %last_sent_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %last_sent_handshake, i32 noundef 8) #8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %last_sent_handshake) #8
  %add.i = add i64 %call.i, 5000000000
  %call.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call.i.i.i)
  %cmp.i.not = icmp sgt i64 %add.i, %call.i.i.i
  br i1 %cmp.i.not, label %rcu_read_lock_bh.exit.out_crit_edge, label %do.end

rcu_read_lock_bh.exit.out_crit_edge:              ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

do.end:                                           ; preds = %rcu_read_lock_bh.exit
  %is_dead = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 5
  %1 = ptrtoint ptr %is_dead to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load volatile i8, ptr %is_dead, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %if.end8, label %do.end.out_crit_edge, !prof !49

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8:                                          ; preds = %do.end
  %refcount.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 29
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end8.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

if.end8.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end8
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !49

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_peer_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end8.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end8.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %wg_peer_get.exit

wg_peer_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge
  %5 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %peer, align 8
  %handshake_send_wq = getelementptr inbounds %struct.wg_device, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %handshake_send_wq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handshake_send_wq, align 8
  %transmit_handshake_work = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 12
  %call.i20 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %transmit_handshake_work) #8
  br i1 %call.i20, label %wg_peer_get.exit.out_crit_edge, label %if.then11

wg_peer_get.exit.out_crit_edge:                   ; preds = %wg_peer_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then11:                                        ; preds = %wg_peer_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wg_peer_put(ptr noundef %peer) #8
  br label %out

out:                                              ; preds = %if.then11, %wg_peer_get.exit.out_crit_edge, %do.end.out_crit_edge, %rcu_read_lock_bh.exit.out_crit_edge
  %call.i21 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i21, label %out.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i24

out.rcu_read_unlock_bh.exit_crit_edge:            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i24:                                ; preds = %out
  %call1.i22 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool.not.i23 = icmp eq i32 %call1.i22, 0
  br i1 %tobool.not.i23, label %land.lhs.true.i24.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i26

land.lhs.true.i24.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i26:                               ; preds = %land.lhs.true.i24
  %.b4.i25 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i25, label %land.lhs.true2.i26.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i27

land.lhs.true2.i26.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

if.then.i27:                                      ; preds = %land.lhs.true2.i26
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 761, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i27, %land.lhs.true2.i26.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i24.rcu_read_unlock_bh.exit_crit_edge, %out.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  tail call fastcc void @local_bh_enable() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_send_handshake_response(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  %packet = alloca %struct.message_handshake_response, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %packet) #8
  %0 = call ptr @memset(ptr %packet, i32 255, i32 92)
  %last_sent_handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 11
  %call.i.i30 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %last_sent_handshake, i32 noundef 8) #8
  tail call void @generic_atomic64_set(ptr noundef %last_sent_handshake, i64 noundef %call.i.i30) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_send_handshake_response.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_send_handshake_response, %do.end)) #8
          to label %land.lhs.true [label %do.end], !srcloc !47

land.lhs.true:                                    ; preds = %entry
  %call5 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %peer, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 128
  %internal_id = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 34
  %5 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %internal_id, align 8
  %endpoint = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_send_handshake_response.descriptor, ptr noundef nonnull @.str.4, ptr noundef %4, i64 noundef %6, ptr noundef %endpoint) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  %handshake = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 10
  %call7 = call zeroext i1 @wg_noise_handshake_create_response(ptr noundef nonnull %packet, ptr noundef %handshake) #8
  br i1 %call7, label %if.then8, label %do.end.if.end16_crit_edge

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then8:                                         ; preds = %do.end
  call void @wg_cookie_add_mac_to_packet(ptr noundef nonnull %packet, i32 noundef 92, ptr noundef %peer) #8
  %keypairs = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 6
  %call10 = call zeroext i1 @wg_noise_handshake_begin_session(ptr noundef %handshake, ptr noundef %keypairs) #8
  br i1 %call10, label %if.then11, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  call void @wg_timers_session_derived(ptr noundef %peer) #8
  call void @wg_timers_any_authenticated_packet_traversal(ptr noundef %peer) #8
  call void @wg_timers_any_authenticated_packet_sent(ptr noundef %peer) #8
  %call.i.i31 = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  %call.i.i29 = call zeroext i1 @__kasan_check_write(ptr noundef %last_sent_handshake, i32 noundef 8) #8
  call void @generic_atomic64_set(ptr noundef %last_sent_handshake, i64 noundef %call.i.i31) #8
  %call14 = call i32 @wg_socket_send_buffer_to_peer(ptr noundef %peer, ptr noundef nonnull %packet, i32 noundef 92, i8 noundef zeroext -120) #8
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.then8.if.end16_crit_edge, %do.end.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %packet) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_noise_handshake_create_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_cookie_add_mac_to_packet(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_noise_handshake_begin_session(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_session_derived(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_any_authenticated_packet_traversal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_any_authenticated_packet_sent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_socket_send_buffer_to_peer(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_send_handshake_cookie(ptr noundef %wg, ptr noundef %initiating_skb, i32 noundef %sender_index) local_unnamed_addr #0 align 64 {
entry:
  %packet = alloca %struct.message_handshake_cookie, align 4
  %__endpoint = alloca %struct.endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %packet) #8
  %0 = call ptr @memset(ptr %packet, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %__endpoint) #8
  %1 = call ptr @memset(ptr %__endpoint, i32 255, i32 44)
  %call = call i32 @wg_socket_endpoint_from_skb(ptr noundef nonnull %__endpoint, ptr noundef %initiating_skb) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_send_handshake_cookie.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_send_handshake_cookie, %do.end)) #8
          to label %land.lhs.true [label %do.end], !srcloc !47

land.lhs.true:                                    ; preds = %entry
  %call6 = call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %if.then

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_send_handshake_cookie.descriptor, ptr noundef nonnull @.str.7, ptr noundef %3, ptr noundef nonnull %__endpoint) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true.do.end_crit_edge, %entry
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %__endpoint) #8
  %cookie_checker = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 12
  call void @wg_cookie_message_create(ptr noundef nonnull %packet, ptr noundef %initiating_skb, i32 noundef %sender_index, ptr noundef %cookie_checker) #8
  %call10 = call i32 @wg_socket_send_buffer_as_reply_to_skb(ptr noundef %wg, ptr noundef %initiating_skb, ptr noundef nonnull %packet, i32 noundef 64) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %packet) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_socket_endpoint_from_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_cookie_message_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_socket_send_buffer_as_reply_to_skb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_send_keepalive(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %staged_packet_queue = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3
  %0 = ptrtoint ptr %staged_packet_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %staged_packet_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %staged_packet_queue
  br i1 %cmp.i.not, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef 224, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #8
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.end, !prof !51

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 192
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %5, i32 192
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %6 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peer, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 128
  %10 = getelementptr inbounds %struct.anon.1, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %10, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 20
  %12 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mtu, align 4
  %mtu7 = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %mtu7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %mtu7, align 8
  tail call void @skb_queue_tail(ptr noundef %staged_packet_queue, ptr noundef nonnull %call.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_send_keepalive.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_send_keepalive, %if.end26)) #8
          to label %land.lhs.true [label %if.end26], !srcloc !47

land.lhs.true:                                    ; preds = %if.end
  %call19 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.if.end26_crit_edge, label %if.then21

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %peer, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 128
  %internal_id = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 34
  %19 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %internal_id, align 8
  %endpoint = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_send_keepalive.descriptor, ptr noundef nonnull @.str.10, ptr noundef %18, i64 noundef %20, ptr noundef %endpoint) #8
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %land.lhs.true.if.end26_crit_edge, %if.end, %entry.if.end26_crit_edge
  tail call void @wg_packet_send_staged_packets(ptr noundef %peer)
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_send_staged_packets(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  %packets = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %packets) #8
  %0 = getelementptr inbounds i8, ptr %packets, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %packets to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %packets, ptr %packets, align 4
  %prev.i = getelementptr inbounds %struct.anon.53, ptr %packets, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %packets, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %packets, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %staged_packet_queue = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3
  %lock = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %5 = ptrtoint ptr %staged_packet_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %staged_packet_queue, align 4
  %cmp.i.not.i = icmp eq ptr %6, %staged_packet_queue
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_queue_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %packets, align 4
  %prev2.i.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.1, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %packets, ptr %prev5.i.i, align 4
  store volatile ptr %6, ptr %packets, align 8
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %8, ptr %10, align 8
  %prev35.i.i = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev35.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %10, ptr %prev35.i.i, align 4
  %qlen.i133 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %qlen.i133 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i133, align 4
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %staged_packet_queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %staged_packet_queue, ptr %staged_packet_queue, align 4
  store ptr %staged_packet_queue, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i133, align 4
  br label %skb_queue_splice_init.exit

skb_queue_splice_init.exit:                       ; preds = %if.then.i, %entry.skb_queue_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %19 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %packets, align 4
  %cmp.i.not = icmp eq ptr %20, %packets
  br i1 %cmp.i.not, label %skb_queue_splice_init.exit.cleanup_crit_edge, label %if.end, !prof !51

skb_queue_splice_init.exit.cleanup_crit_edge:     ; preds = %skb_queue_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %skb_queue_splice_init.exit
  call fastcc void @local_bh_disable() #8
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #8
  %call.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %if.end.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock_bh.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i134

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit

if.then.i134:                                     ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 750, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i134, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %if.end.rcu_read_lock_bh.exit_crit_edge
  %keypairs = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 6
  %21 = ptrtoint ptr %keypairs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %keypairs, align 4
  %call7 = call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true, label %rcu_read_lock_bh.exit.do.end16_crit_edge

rcu_read_lock_bh.exit.do.end16_crit_edge:         ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

land.lhs.true:                                    ; preds = %rcu_read_lock_bh.exit
  %call9 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true
  %.b132 = load i1, ptr @wg_packet_send_staged_packets.__warned, align 1
  br i1 %.b132, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @wg_packet_send_staged_packets.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 358, ptr noundef nonnull @.str.11) #8
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %rcu_read_lock_bh.exit.do.end16_crit_edge
  %call18 = call ptr @wg_noise_keypair_get(ptr noundef %22) #8
  %call.i135 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i135, label %do.end16.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i138

do.end16.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i138:                               ; preds = %do.end16
  %call1.i136 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i136)
  %tobool.not.i137 = icmp eq i32 %call1.i136, 0
  br i1 %tobool.not.i137, label %land.lhs.true.i138.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i140

land.lhs.true.i138.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i138
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i140:                              ; preds = %land.lhs.true.i138
  %.b4.i139 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i139, label %land.lhs.true2.i140.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i141

land.lhs.true2.i140.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit

if.then.i141:                                     ; preds = %land.lhs.true2.i140
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 761, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i141, %land.lhs.true2.i140.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i138.rcu_read_unlock_bh.exit_crit_edge, %do.end16.rcu_read_unlock_bh.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  call fastcc void @local_bh_enable() #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %rcu_read_unlock_bh.exit.out_nokey_crit_edge, label %do.end32, !prof !51

rcu_read_unlock_bh.exit.out_nokey_crit_edge:      ; preds = %rcu_read_unlock_bh.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nokey

do.end32:                                         ; preds = %rcu_read_unlock_bh.exit
  %is_valid = getelementptr inbounds %struct.noise_keypair, ptr %call18, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %is_valid to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load volatile i8, ptr %is_valid, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool34.not = icmp eq i8 %24, 0
  br i1 %tobool34.not, label %do.end32.out_nokey_crit_edge, label %if.end45, !prof !51

do.end32.out_nokey_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_nokey

if.end45:                                         ; preds = %do.end32
  %birthdate = getelementptr inbounds %struct.noise_keypair, ptr %call18, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %birthdate to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %birthdate, align 8
  %add.i142 = add i64 %26, 180000000000
  %call.i.i.i = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i142, i64 %call.i.i.i)
  %cmp.i143.not = icmp sgt i64 %add.i142, %call.i.i.i
  br i1 %cmp.i143.not, label %for.cond.preheader, label %if.end45.do.body87_crit_edge, !prof !49

if.end45.do.body87_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87

for.cond.preheader:                               ; preds = %if.end45
  %sending_counter = getelementptr inbounds %struct.noise_keypair, ptr %call18, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %ip_tunnel_ecn_encap.exit.for.cond_crit_edge, %for.cond.preheader
  %skb.0.in = phi ptr [ %skb.0, %ip_tunnel_ecn_encap.exit.for.cond_crit_edge ], [ %packets, %for.cond.preheader ]
  %27 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp.not = icmp eq ptr %skb.0, %packets
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %31 to i32
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %conv.i.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %32 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %protocol.i.i, align 8
  %34 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i16 %33, label %for.body.ip_tunnel_ecn_encap.exit_crit_edge [
    i16 2048, label %if.then.i.i
    i16 -31011, label %if.then6.i.i
  ]

for.body.ip_tunnel_ecn_encap.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ip_tunnel_ecn_encap.exit

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %tos.i.i, align 1
  br label %ip_tunnel_ecn_encap.exit

if.then6.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i, align 2
  %39 = lshr i16 %38, 4
  %conv1.i.i.i = trunc i16 %39 to i8
  br label %ip_tunnel_ecn_encap.exit

ip_tunnel_ecn_encap.exit:                         ; preds = %if.then6.i.i, %if.then.i.i, %for.body.ip_tunnel_ecn_encap.exit_crit_edge
  %retval.0.i.i = phi i8 [ %36, %if.then.i.i ], [ %conv1.i.i.i, %if.then6.i.i ], [ 0, %for.body.ip_tunnel_ecn_encap.exit_crit_edge ]
  %40 = and i8 %retval.0.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp.i.not.i.i = icmp eq i8 %40, 3
  %spec.select.i.i = select i1 %cmp.i.not.i.i, i8 2, i8 %40
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %ds = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 20
  %41 = ptrtoint ptr %ds to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %spec.select.i.i, ptr %ds, align 4
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sending_counter, i32 noundef 8) #8
  %call.i2.i = call i64 @generic_atomic64_add_return(i64 noundef 1, ptr noundef %sending_counter) #8
  %sub = add i64 %call.i2.i, -1
  %42 = ptrtoint ptr %cb to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %sub, ptr %cb, align 8
  %cmp64 = icmp ugt i64 %sub, -8163
  br i1 %cmp64, label %ip_tunnel_ecn_encap.exit.do.body87_crit_edge, label %ip_tunnel_ecn_encap.exit.for.cond_crit_edge, !prof !51

ip_tunnel_ecn_encap.exit.for.cond_crit_edge:      ; preds = %ip_tunnel_ecn_encap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

ip_tunnel_ecn_encap.exit.do.body87_crit_edge:     ; preds = %ip_tunnel_ecn_encap.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body87

for.end:                                          ; preds = %for.cond
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %44, align 8
  %46 = ptrtoint ptr %call18 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call18, align 8
  %refcount.i = getelementptr inbounds %struct.wg_peer, ptr %47, i32 0, i32 29
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %48 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %for.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

for.end.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %for.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %49 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %.not.i.i.i.i.i = icmp sgt i32 %49, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !49

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_peer_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %for.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %for.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %wg_peer_get.exit

wg_peer_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge
  %50 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %packets, align 4
  %keypair81 = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %keypair81 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call18, ptr %keypair81, align 8
  %53 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %peer, align 8
  call fastcc void @local_bh_disable() #8
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #8
  %call.i.i144 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i144, label %wg_peer_get.exit.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true.i.i

wg_peer_get.exit.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %wg_peer_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit.i

land.lhs.true.i.i:                                ; preds = %wg_peer_get.exit
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %if.then.i.i145

land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit.i

if.then.i.i145:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 750, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock_bh.exit.i

rcu_read_lock_bh.exit.i:                          ; preds = %if.then.i.i145, %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, %wg_peer_get.exit.rcu_read_lock_bh.exit.i_crit_edge
  %is_dead.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 5
  %55 = ptrtoint ptr %is_dead.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load volatile i8, ptr %is_dead.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i146 = icmp eq i8 %56, 0
  br i1 %tobool.not.i146, label %if.end.i, label %rcu_read_lock_bh.exit.i.err.i_crit_edge, !prof !49

rcu_read_lock_bh.exit.i.err.i_crit_edge:          ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end.i:                                         ; preds = %rcu_read_lock_bh.exit.i
  %encrypt_queue.i = getelementptr inbounds %struct.wg_device, ptr %54, i32 0, i32 2
  %tx_queue.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 1
  %packet_crypt_wq.i = getelementptr inbounds %struct.wg_device, ptr %54, i32 0, i32 9
  %57 = ptrtoint ptr %packet_crypt_wq.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %packet_crypt_wq.i, align 16
  %last_cpu.i = getelementptr inbounds %struct.wg_device, ptr %54, i32 0, i32 2, i32 2
  %state.i.i = getelementptr inbounds %struct.sk_buff, ptr %51, i32 0, i32 3, i32 12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %59 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile i32 0, ptr %state.i.i, align 4
  %call.i34.i = call zeroext i1 @wg_prev_queue_enqueue(ptr noundef %tx_queue.i, ptr noundef %51) #8
  br i1 %call.i34.i, label %if.end.i.i, label %if.end.i.err.i_crit_edge, !prof !49

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end.i.i:                                       ; preds = %if.end.i
  %60 = ptrtoint ptr %last_cpu.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %last_cpu.i, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %cpumask_test_cpu.exit.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i.i
  %cpu.0.i.i.i = phi i32 [ %61, %if.end.i.i ], [ %rem.i.i.i, %cpumask_test_cpu.exit.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %62 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %cpu.0.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp ugt i32 %62, %cpu.0.i.i.i
  br i1 %cmp.not.i.i.i.i.i.i, label %while.cond.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i.i

while.cond.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %while.cond.i.i.i
  %.b37.i.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i, !prof !49

land.rhs.i.i.i.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_test_cpu.exit.i.i.i

cpumask_test_cpu.exit.i.i.i:                      ; preds = %if.then.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge, %while.cond.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge
  %div3.i.i.i.i.i = lshr i32 %cpu.0.i.i.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i.i.i
  %63 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %cpu.0.i.i.i, 31
  %65 = shl nuw i32 1, %and.i.i.i.i.i
  %66 = and i32 %64, %65
  %tobool.not.i.i.i = icmp eq i32 %66, 0
  %call4.i.i.i = call i32 @cpumask_next(i32 noundef %cpu.0.i.i.i, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %67 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i.i.i = urem i32 %call4.i.i.i, %67
  br i1 %tobool.not.i.i.i, label %cpumask_test_cpu.exit.i.i.i.while.cond.i.i.i_crit_edge, label %wg_cpumask_next_online.exit.i.i, !prof !51

cpumask_test_cpu.exit.i.i.i.while.cond.i.i.i_crit_edge: ; preds = %cpumask_test_cpu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i.i

wg_cpumask_next_online.exit.i.i:                  ; preds = %cpumask_test_cpu.exit.i.i.i
  %68 = ptrtoint ptr %last_cpu.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %rem.i.i.i, ptr %last_cpu.i, align 4
  %producer_lock.i.i.i = getelementptr inbounds %struct.wg_device, ptr %54, i32 0, i32 2, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %producer_lock.i.i.i) #8
  %size.i.i.i.i = getelementptr inbounds %struct.wg_device, ptr %54, i32 0, i32 2, i32 0, i32 7
  %69 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i.i.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i.i.i.i, label %wg_cpumask_next_online.exit.i.i.if.then11.i_crit_edge, label %lor.lhs.false.i.i.i.i, !prof !51

wg_cpumask_next_online.exit.i.i.if.then11.i_crit_edge: ; preds = %wg_cpumask_next_online.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

lor.lhs.false.i.i.i.i:                            ; preds = %wg_cpumask_next_online.exit.i.i
  %queue.i.i.i.i = getelementptr inbounds %struct.wg_device, ptr %54, i32 0, i32 2, i32 0, i32 9
  %71 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %queue.i.i.i.i, align 8
  %73 = ptrtoint ptr %encrypt_queue.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %encrypt_queue.i, align 128
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %72, i32 %74
  %75 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %76, null
  br i1 %tobool4.not.i.i.i.i, label %do.end.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then11.i_crit_edge

lor.lhs.false.i.i.i.i.if.then11.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i

do.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !53
  %77 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %queue.i.i.i.i, align 8
  %79 = ptrtoint ptr %encrypt_queue.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %encrypt_queue.i, align 128
  %inc.i.i.i.i = add i32 %80, 1
  store i32 %inc.i.i.i.i, ptr %encrypt_queue.i, align 128
  %arrayidx13.i.i.i.i = getelementptr ptr, ptr %78, i32 %80
  %81 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %51, ptr %arrayidx13.i.i.i.i, align 4
  %82 = load i32, ptr %encrypt_queue.i, align 128
  %83 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp.not.i.i.i.i = icmp slt i32 %82, %84
  br i1 %cmp.not.i.i.i.i, label %do.end.i.i.i.i.if.end13.i.i_crit_edge, label %if.then24.i.i.i.i, !prof !49

do.end.i.i.i.i.if.end13.i.i_crit_edge:            ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i.i

if.then24.i.i.i.i:                                ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %encrypt_queue.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %encrypt_queue.i, align 128
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.then24.i.i.i.i, %do.end.i.i.i.i.if.end13.i.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %producer_lock.i.i.i) #8
  %worker.i.i = getelementptr inbounds %struct.wg_device, ptr %54, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %worker.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %worker.i.i, align 128
  %88 = ptrtoint ptr %87 to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0.i.i.i
  %89 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %90, %88
  %91 = inttoptr i32 %add.i.i to ptr
  %work.i.i = getelementptr inbounds %struct.multicore_worker, ptr %91, i32 0, i32 1
  %call15.i.i = call zeroext i1 @queue_work_on(i32 noundef %cpu.0.i.i.i, ptr noundef %58, ptr noundef %work.i.i) #8
  br label %err.i

if.then11.i:                                      ; preds = %lor.lhs.false.i.i.i.i.if.then11.i_crit_edge, %wg_cpumask_next_online.exit.i.i.if.then11.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %producer_lock.i.i.i) #8
  call fastcc void @wg_queue_enqueue_per_peer_tx(ptr noundef %51, i32 noundef 2) #8
  br label %err.i

err.i:                                            ; preds = %if.then11.i, %if.end13.i.i, %if.end.i.err.i_crit_edge, %rcu_read_lock_bh.exit.i.err.i_crit_edge
  %ret.0.i = phi i32 [ -22, %rcu_read_lock_bh.exit.i.err.i_crit_edge ], [ -32, %if.then11.i ], [ -28, %if.end.i.err.i_crit_edge ], [ 0, %if.end13.i.i ]
  %call.i35.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i35.i, label %err.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true.i38.i

err.i.rcu_read_unlock_bh.exit.i_crit_edge:        ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true.i38.i:                              ; preds = %err.i
  %call1.i36.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36.i)
  %tobool.not.i37.i = icmp eq i32 %call1.i36.i, 0
  br i1 %tobool.not.i37.i, label %land.lhs.true.i38.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true2.i40.i

land.lhs.true.i38.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true2.i40.i:                             ; preds = %land.lhs.true.i38.i
  %.b4.i39.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i39.i, label %land.lhs.true2.i40.i.rcu_read_unlock_bh.exit.i_crit_edge, label %if.then.i41.i

land.lhs.true2.i40.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit.i

if.then.i41.i:                                    ; preds = %land.lhs.true2.i40.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 761, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock_bh.exit.i

rcu_read_unlock_bh.exit.i:                        ; preds = %if.then.i41.i, %land.lhs.true2.i40.i.rcu_read_unlock_bh.exit.i_crit_edge, %land.lhs.true.i38.i.rcu_read_unlock_bh.exit.i_crit_edge, %err.i.rcu_read_unlock_bh.exit.i_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  call fastcc void @local_bh_enable() #8
  %92 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %ret.0.i, label %if.end22.i [
    i32 -32, label %rcu_read_unlock_bh.exit.i.cleanup_crit_edge
    i32 0, label %rcu_read_unlock_bh.exit.i.cleanup_crit_edge161
  ]

rcu_read_unlock_bh.exit.i.cleanup_crit_edge161:   ; preds = %rcu_read_unlock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

rcu_read_unlock_bh.exit.i.cleanup_crit_edge:      ; preds = %rcu_read_unlock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.i:                                       ; preds = %rcu_read_unlock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %keypair81 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %keypair81, align 8
  call void @wg_noise_keypair_put(ptr noundef %94, i1 noundef zeroext false) #8
  call void @wg_peer_put(ptr noundef %peer) #8
  call void @kfree_skb_list(ptr noundef %51) #8
  br label %cleanup

do.body87:                                        ; preds = %ip_tunnel_ecn_encap.exit.do.body87_crit_edge, %if.end45.do.body87_crit_edge
  %95 = ptrtoint ptr %is_valid to i32
  call void @__asan_store1_noabort(i32 %95)
  store volatile i8 0, ptr %is_valid, align 8
  br label %out_nokey

out_nokey:                                        ; preds = %do.body87, %do.end32.out_nokey_crit_edge, %rcu_read_unlock_bh.exit.out_nokey_crit_edge
  call void @wg_noise_keypair_put(ptr noundef %call18, i1 noundef zeroext false) #8
  %96 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %96)
  %skb.1158 = load ptr, ptr %packets, align 4
  %cmp96.not159 = icmp eq ptr %skb.1158, %packets
  br i1 %cmp96.not159, label %out_nokey.for.end100_crit_edge, label %out_nokey.for.body97_crit_edge

out_nokey.for.body97_crit_edge:                   ; preds = %out_nokey
  br label %for.body97

out_nokey.for.end100_crit_edge:                   ; preds = %out_nokey
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end100

for.body97:                                       ; preds = %skb_orphan.exit.for.body97_crit_edge, %out_nokey.for.body97_crit_edge
  %skb.1160 = phi ptr [ %skb.1, %skb_orphan.exit.for.body97_crit_edge ], [ %skb.1158, %out_nokey.for.body97_crit_edge ]
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1160, i32 0, i32 4, i32 0, i32 1
  %97 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i147 = icmp eq ptr %98, null
  br i1 %tobool.not.i147, label %do.body.i, label %if.then.i148

if.then.i148:                                     ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #10
  call void %98(ptr noundef %skb.1160) #8
  %99 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %destructor.i, align 4
  %100 = getelementptr inbounds %struct.sk_buff, ptr %skb.1160, i32 0, i32 1
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %100, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %for.body97
  %102 = getelementptr inbounds %struct.sk_buff, ptr %skb.1160, i32 0, i32 1
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %102, align 4
  %tobool3.not.i = icmp eq ptr %104, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !49

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #8, !srcloc !54
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i148
  %105 = ptrtoint ptr %skb.1160 to i32
  call void @__asan_load4_noabort(i32 %105)
  %skb.1 = load ptr, ptr %skb.1160, align 4
  %cmp96.not = icmp eq ptr %skb.1, %packets
  br i1 %cmp96.not, label %skb_orphan.exit.for.end100_crit_edge, label %skb_orphan.exit.for.body97_crit_edge

skb_orphan.exit.for.body97_crit_edge:             ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body97

skb_orphan.exit.for.end100_crit_edge:             ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end100

for.end100:                                       ; preds = %skb_orphan.exit.for.end100_crit_edge, %out_nokey.for.end100_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %106 = ptrtoint ptr %packets to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %packets, align 4
  %cmp.i.not.i149 = icmp eq ptr %107, %packets
  br i1 %cmp.i.not.i149, label %for.end100.skb_queue_splice.exit_crit_edge, label %if.then.i156

for.end100.skb_queue_splice.exit_crit_edge:       ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_queue_splice.exit

if.then.i156:                                     ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %staged_packet_queue to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %staged_packet_queue, align 4
  %110 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %prev.i, align 4
  %prev5.i.i151 = getelementptr inbounds %struct.anon.1, ptr %107, i32 0, i32 1
  %112 = ptrtoint ptr %prev5.i.i151 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %staged_packet_queue, ptr %prev5.i.i151, align 4
  store volatile ptr %107, ptr %staged_packet_queue, align 8
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %109, ptr %111, align 8
  %prev35.i.i152 = getelementptr inbounds %struct.anon.1, ptr %109, i32 0, i32 1
  %114 = ptrtoint ptr %prev35.i.i152 to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %111, ptr %prev35.i.i152, align 4
  %115 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %qlen.i, align 4
  %qlen1.i154 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3, i32 1
  %117 = ptrtoint ptr %qlen1.i154 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %qlen1.i154, align 4
  %add.i155 = add i32 %118, %116
  store i32 %add.i155, ptr %qlen1.i154, align 4
  br label %skb_queue_splice.exit

skb_queue_splice.exit:                            ; preds = %if.then.i156, %for.end100.skb_queue_splice.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  call void @wg_packet_send_queued_handshake_initiation(ptr noundef %peer, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %skb_queue_splice.exit, %if.end22.i, %rcu_read_unlock_bh.exit.i.cleanup_crit_edge, %rcu_read_unlock_bh.exit.i.cleanup_crit_edge161, %skb_queue_splice_init.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %packets) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_tx_worker(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -744
  %tx_queue = getelementptr i8, ptr %work, i32 -740
  %peeked.i = getelementptr i8, ptr %work, i32 -732
  %keypairs.i.i = getelementptr i8, ptr %work, i32 -628
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %0 = ptrtoint ptr %peeked.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peeked.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %wg_prev_queue_peek.exit, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

wg_prev_queue_peek.exit:                          ; preds = %while.cond
  %call.i = tail call ptr @wg_prev_queue_dequeue(ptr noundef %tx_queue) #8
  %2 = ptrtoint ptr %peeked.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %peeked.i, align 4
  %cmp.not = icmp eq ptr %call.i, null
  br i1 %cmp.not, label %wg_prev_queue_peek.exit.while.end_crit_edge, label %wg_prev_queue_peek.exit.land.rhs_crit_edge

wg_prev_queue_peek.exit.land.rhs_crit_edge:       ; preds = %wg_prev_queue_peek.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

wg_prev_queue_peek.exit.while.end_crit_edge:      ; preds = %wg_prev_queue_peek.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %wg_prev_queue_peek.exit.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %retval.0.i28 = phi ptr [ %call.i, %wg_prev_queue_peek.exit.land.rhs_crit_edge ], [ %1, %while.cond.land.rhs_crit_edge ]
  %state1 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i28, i32 0, i32 3, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %state1, i32 noundef 4) #8
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp3.not = icmp eq i32 %4, 0
  br i1 %cmp3.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %5 = ptrtoint ptr %peeked.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %peeked.i, align 4
  %keypair7 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i28, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %keypair7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %keypair7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp8 = icmp eq i32 %4, 1
  br i1 %cmp8, label %if.then, label %if.else, !prof !49

if.then:                                          ; preds = %while.body
  tail call void @wg_timers_any_authenticated_packet_traversal(ptr noundef %add.ptr) #8
  tail call void @wg_timers_any_authenticated_packet_sent(ptr noundef %add.ptr) #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %next.037.sink.i = phi ptr [ %9, %for.body.i.for.body.i_crit_edge ], [ %retval.0.i28, %if.then ]
  %data_sent.0.off038.i = phi i1 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ false, %if.then ]
  %8 = ptrtoint ptr %next.037.sink.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %next.037.sink.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %next.037.sink.i, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  %ds.i = getelementptr inbounds %struct.sk_buff, ptr %next.037.sink.i, i32 0, i32 3, i32 20
  %12 = ptrtoint ptr %ds.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ds.i, align 4
  %call.i23 = tail call i32 @wg_socket_send_skb_to_peer(ptr noundef %add.ptr, ptr noundef nonnull %next.037.sink.i, i8 noundef zeroext %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool3.not.i = icmp eq i32 %call.i23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp.i = icmp ne i32 %11, 32
  %14 = select i1 %tobool3.not.i, i1 %cmp.i, i1 false, !prof !49
  %spec.select.i = select i1 %14, i1 true, i1 %data_sent.0.off038.i, !prof !49
  %tobool8.not.i = icmp eq ptr %9, null
  br i1 %tobool8.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  br i1 %spec.select.i, label %if.then21.i, label %for.end.i.if.end22.i_crit_edge, !prof !49

for.end.i.if.end22.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then21.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @wg_timers_data_sent(ptr noundef %add.ptr) #8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %for.end.i.if.end22.i_crit_edge
  tail call fastcc void @local_bh_disable() #8
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #8
  %call.i37.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i37.i.i, label %if.end22.i.rcu_read_lock_bh.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end22.i.rcu_read_lock_bh.exit.i.i_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end22.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock_bh.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock_bh.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock_bh.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock_bh.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock_bh.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 750, ptr noundef nonnull @.str.16) #8
  br label %rcu_read_lock_bh.exit.i.i

rcu_read_lock_bh.exit.i.i:                        ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock_bh.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock_bh.exit.i.i_crit_edge, %if.end22.i.rcu_read_lock_bh.exit.i.i_crit_edge
  %15 = ptrtoint ptr %keypairs.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %keypairs.i.i, align 4
  %call.i.i24 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i24)
  %tobool.not.i.i = icmp eq i32 %call.i.i24, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock_bh.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock_bh.exit.i.i.do.end7.i.i_crit_edge:  ; preds = %rcu_read_lock_bh.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock_bh.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b34.i.i = load i1, ptr @keep_key_fresh.__warned, align 1
  br i1 %.b34.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @keep_key_fresh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 130, ptr noundef nonnull @.str.11) #8
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock_bh.exit.i.i.do.end7.i.i_crit_edge
  %tobool9.not.i.i = icmp eq ptr %16, null
  br i1 %tobool9.not.i.i, label %if.end28.critedge35.i.i, label %do.end13.i.i

do.end13.i.i:                                     ; preds = %do.end7.i.i
  %is_valid.i.i = getelementptr inbounds %struct.noise_keypair, ptr %16, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %is_valid.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load volatile i8, ptr %is_valid.i.i, align 8, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not.i.i = icmp eq i8 %18, 0
  br i1 %tobool15.not.i.i, label %if.end28.critedge.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %do.end13.i.i
  %sending_counter.i.i = getelementptr inbounds %struct.noise_keypair, ptr %16, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sending_counter.i.i, i32 noundef 8) #8
  %call.i.i.i = tail call i64 @generic_atomic64_read(ptr noundef %sending_counter.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp8(i64 1152921504606846976, i64 %call.i.i.i)
  %cmp.i.i = icmp ugt i64 %call.i.i.i, 1152921504606846976
  br i1 %cmp.i.i, label %if.then27.critedge.i.i, label %lor.rhs.i.i

lor.rhs.i.i:                                      ; preds = %land.rhs.i.i
  %i_am_the_initiator.i.i = getelementptr inbounds %struct.noise_keypair, ptr %16, i32 0, i32 6
  %19 = ptrtoint ptr %i_am_the_initiator.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i_am_the_initiator.i.i, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not.i.i = icmp eq i8 %20, 0
  br i1 %tobool18.not.i.i, label %if.end28.critedge36.i.i, label %land.rhs19.i.i

land.rhs19.i.i:                                   ; preds = %lor.rhs.i.i
  %birthdate.i.i = getelementptr inbounds %struct.noise_keypair, ptr %16, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %birthdate.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %birthdate.i.i, align 8
  %add.i.i.i = add i64 %22, 120000000000
  %call.i.i.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #8
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i.i, i64 %call.i.i.i.i.i)
  %cmp.i.not.i.i = icmp sgt i64 %add.i.i.i, %call.i.i.i.i.i
  %call.i38.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i38.i.i, label %land.rhs19.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge, label %land.lhs.true.i41.i.i

land.rhs19.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge: ; preds = %land.rhs19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit.i.i

land.lhs.true.i41.i.i:                            ; preds = %land.rhs19.i.i
  %call1.i39.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39.i.i)
  %tobool.not.i40.i.i = icmp eq i32 %call1.i39.i.i, 0
  br i1 %tobool.not.i40.i.i, label %land.lhs.true.i41.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge, label %land.lhs.true2.i43.i.i

land.lhs.true.i41.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge: ; preds = %land.lhs.true.i41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit.i.i

land.lhs.true2.i43.i.i:                           ; preds = %land.lhs.true.i41.i.i
  %.b4.i42.i.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i42.i.i, label %land.lhs.true2.i43.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge, label %if.then.i44.i.i

land.lhs.true2.i43.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit.i.i

if.then.i44.i.i:                                  ; preds = %land.lhs.true2.i43.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 761, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock_bh.exit.i.i

rcu_read_unlock_bh.exit.i.i:                      ; preds = %if.then.i44.i.i, %land.lhs.true2.i43.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge, %land.lhs.true.i41.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge, %land.rhs19.i.i.rcu_read_unlock_bh.exit.i.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  tail call fastcc void @local_bh_enable() #8
  br i1 %cmp.i.not.i.i, label %rcu_read_unlock_bh.exit.i.i.if.end_crit_edge, label %rcu_read_unlock_bh.exit.i.i.if.then27.i.i_crit_edge, !prof !49

rcu_read_unlock_bh.exit.i.i.if.then27.i.i_crit_edge: ; preds = %rcu_read_unlock_bh.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27.i.i

rcu_read_unlock_bh.exit.i.i.if.end_crit_edge:     ; preds = %rcu_read_unlock_bh.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then27.critedge.i.i:                           ; preds = %land.rhs.i.i
  %call.i45.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i45.i.i, label %if.then27.critedge.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge, label %land.lhs.true.i48.i.i

if.then27.critedge.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge: ; preds = %if.then27.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit52.i.i

land.lhs.true.i48.i.i:                            ; preds = %if.then27.critedge.i.i
  %call1.i46.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i46.i.i)
  %tobool.not.i47.i.i = icmp eq i32 %call1.i46.i.i, 0
  br i1 %tobool.not.i47.i.i, label %land.lhs.true.i48.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge, label %land.lhs.true2.i50.i.i

land.lhs.true.i48.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge: ; preds = %land.lhs.true.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit52.i.i

land.lhs.true2.i50.i.i:                           ; preds = %land.lhs.true.i48.i.i
  %.b4.i49.i.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i49.i.i, label %land.lhs.true2.i50.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge, label %if.then.i51.i.i

land.lhs.true2.i50.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge: ; preds = %land.lhs.true2.i50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit52.i.i

if.then.i51.i.i:                                  ; preds = %land.lhs.true2.i50.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 761, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock_bh.exit52.i.i

rcu_read_unlock_bh.exit52.i.i:                    ; preds = %if.then.i51.i.i, %land.lhs.true2.i50.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge, %land.lhs.true.i48.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge, %if.then27.critedge.i.i.rcu_read_unlock_bh.exit52.i.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  tail call fastcc void @local_bh_enable() #8
  br label %if.then27.i.i

if.then27.i.i:                                    ; preds = %rcu_read_unlock_bh.exit52.i.i, %rcu_read_unlock_bh.exit.i.i.if.then27.i.i_crit_edge
  tail call void @wg_packet_send_queued_handshake_initiation(ptr noundef %add.ptr, i1 noundef zeroext false) #8
  br label %if.end

if.end28.critedge.i.i:                            ; preds = %do.end13.i.i
  %call.i53.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i53.i.i, label %if.end28.critedge.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge, label %land.lhs.true.i56.i.i

if.end28.critedge.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge: ; preds = %if.end28.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit60.i.i

land.lhs.true.i56.i.i:                            ; preds = %if.end28.critedge.i.i
  %call1.i54.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54.i.i)
  %tobool.not.i55.i.i = icmp eq i32 %call1.i54.i.i, 0
  br i1 %tobool.not.i55.i.i, label %land.lhs.true.i56.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge, label %land.lhs.true2.i58.i.i

land.lhs.true.i56.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge: ; preds = %land.lhs.true.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit60.i.i

land.lhs.true2.i58.i.i:                           ; preds = %land.lhs.true.i56.i.i
  %.b4.i57.i.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i57.i.i, label %land.lhs.true2.i58.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge, label %if.then.i59.i.i

land.lhs.true2.i58.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge: ; preds = %land.lhs.true2.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit60.i.i

if.then.i59.i.i:                                  ; preds = %land.lhs.true2.i58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 761, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock_bh.exit60.i.i

rcu_read_unlock_bh.exit60.i.i:                    ; preds = %if.then.i59.i.i, %land.lhs.true2.i58.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge, %land.lhs.true.i56.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge, %if.end28.critedge.i.i.rcu_read_unlock_bh.exit60.i.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  tail call fastcc void @local_bh_enable() #8
  br label %if.end

if.end28.critedge35.i.i:                          ; preds = %do.end7.i.i
  %call.i61.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i61.i.i, label %if.end28.critedge35.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge, label %land.lhs.true.i64.i.i

if.end28.critedge35.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge: ; preds = %if.end28.critedge35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit68.i.i

land.lhs.true.i64.i.i:                            ; preds = %if.end28.critedge35.i.i
  %call1.i62.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i62.i.i)
  %tobool.not.i63.i.i = icmp eq i32 %call1.i62.i.i, 0
  br i1 %tobool.not.i63.i.i, label %land.lhs.true.i64.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge, label %land.lhs.true2.i66.i.i

land.lhs.true.i64.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge: ; preds = %land.lhs.true.i64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit68.i.i

land.lhs.true2.i66.i.i:                           ; preds = %land.lhs.true.i64.i.i
  %.b4.i65.i.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i65.i.i, label %land.lhs.true2.i66.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge, label %if.then.i67.i.i

land.lhs.true2.i66.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge: ; preds = %land.lhs.true2.i66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit68.i.i

if.then.i67.i.i:                                  ; preds = %land.lhs.true2.i66.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 761, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock_bh.exit68.i.i

rcu_read_unlock_bh.exit68.i.i:                    ; preds = %if.then.i67.i.i, %land.lhs.true2.i66.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge, %land.lhs.true.i64.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge, %if.end28.critedge35.i.i.rcu_read_unlock_bh.exit68.i.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  tail call fastcc void @local_bh_enable() #8
  br label %if.end

if.end28.critedge36.i.i:                          ; preds = %lor.rhs.i.i
  %call.i69.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i69.i.i, label %if.end28.critedge36.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge, label %land.lhs.true.i72.i.i

if.end28.critedge36.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge: ; preds = %if.end28.critedge36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit76.i.i

land.lhs.true.i72.i.i:                            ; preds = %if.end28.critedge36.i.i
  %call1.i70.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i70.i.i)
  %tobool.not.i71.i.i = icmp eq i32 %call1.i70.i.i, 0
  br i1 %tobool.not.i71.i.i, label %land.lhs.true.i72.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge, label %land.lhs.true2.i74.i.i

land.lhs.true.i72.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge: ; preds = %land.lhs.true.i72.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit76.i.i

land.lhs.true2.i74.i.i:                           ; preds = %land.lhs.true.i72.i.i
  %.b4.i73.i.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i73.i.i, label %land.lhs.true2.i74.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge, label %if.then.i75.i.i

land.lhs.true2.i74.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge: ; preds = %land.lhs.true2.i74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock_bh.exit76.i.i

if.then.i75.i.i:                                  ; preds = %land.lhs.true2.i74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 761, ptr noundef nonnull @.str.17) #8
  br label %rcu_read_unlock_bh.exit76.i.i

rcu_read_unlock_bh.exit76.i.i:                    ; preds = %if.then.i75.i.i, %land.lhs.true2.i74.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge, %land.lhs.true.i72.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge, %if.end28.critedge36.i.i.rcu_read_unlock_bh.exit76.i.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #8
  tail call fastcc void @local_bh_enable() #8
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree_skb_list(ptr noundef nonnull %retval.0.i28) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %rcu_read_unlock_bh.exit76.i.i, %rcu_read_unlock_bh.exit68.i.i, %rcu_read_unlock_bh.exit60.i.i, %if.then27.i.i, %rcu_read_unlock_bh.exit.i.i.if.end_crit_edge
  tail call void @wg_noise_keypair_put(ptr noundef %7, i1 noundef zeroext false) #8
  tail call void @wg_peer_put(ptr noundef %add.ptr) #8
  %23 = tail call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %24, align 16384
  %27 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not = icmp eq i32 %27, 0
  br i1 %tobool.i.not, label %if.end.while.cond.backedge_crit_edge, label %if.then11

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 283, i32 noundef 0) #8
  %call.i25 = tail call i32 @__cond_resched() #8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.then11, %if.end.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %wg_prev_queue_peek.exit.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_keypair_put(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_encrypt_worker(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  %keys.i.i = alloca %struct.flow_keys_basic, align 4
  %sg.i = alloca [25 x %struct.scatterlist], align 4
  %trailer.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %queue.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 9
  %consumer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %consumer_lock.i) #8
  %size.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i45 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i45, label %entry.ptr_ring_consume_bh.exit.thread_crit_edge, label %__ptr_ring_peek.exit.i.i.lr.ph, !prof !51

entry.ptr_ring_consume_bh.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptr_ring_consume_bh.exit.thread

__ptr_ring_peek.exit.i.i.lr.ph:                   ; preds = %entry
  %consumer_head.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 3
  %consumer_tail.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 4
  %batch.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 8
  br label %__ptr_ring_peek.exit.i.i

__ptr_ring_peek.exit.i.i:                         ; preds = %if.end16.__ptr_ring_peek.exit.i.i_crit_edge, %__ptr_ring_peek.exit.i.i.lr.ph
  %4 = phi i32 [ %3, %__ptr_ring_peek.exit.i.i.lr.ph ], [ %120, %if.end16.__ptr_ring_peek.exit.i.i_crit_edge ]
  %5 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue.i.i.i, align 8
  %7 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %consumer_head.i.i.i, align 128
  %arrayidx.i.i.i = getelementptr ptr, ptr %6, i32 %8
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx.i.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %__ptr_ring_peek.exit.i.i.ptr_ring_consume_bh.exit.thread_crit_edge, label %if.then.i.i

__ptr_ring_peek.exit.i.i.ptr_ring_consume_bh.exit.thread_crit_edge: ; preds = %__ptr_ring_peek.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptr_ring_consume_bh.exit.thread

if.then.i.i:                                      ; preds = %__ptr_ring_peek.exit.i.i
  %inc.i.i.i = add i32 %8, 1
  %11 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %consumer_tail.i.i.i, align 4
  %sub.i.i.i = sub i32 %inc.i.i.i, %12
  %13 = ptrtoint ptr %batch.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %batch.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %14)
  %cmp.not.i.i.i = icmp slt i32 %sub.i.i.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %4)
  %cmp2.not.i.i.i = icmp slt i32 %inc.i.i.i, %4
  %or.cond.i.i = select i1 %cmp.not.i.i.i, i1 %cmp2.not.i.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i, !prof !56

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp5.not46.i.i.i = icmp slt i32 %8, %12
  br i1 %cmp5.not46.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, !prof !51

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.while.body.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge
  %head.047.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i.while.body.i.i.i_crit_edge ], [ %8, %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge ]
  %15 = ptrtoint ptr %queue.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue.i.i.i, align 8
  %dec.i.i.i = add i32 %head.047.i.i.i, -1
  %arrayidx.i5.i.i = getelementptr ptr, ptr %16, i32 %head.047.i.i.i
  %17 = ptrtoint ptr %arrayidx.i5.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx.i5.i.i, align 4
  %18 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %consumer_tail.i.i.i, align 4
  %cmp5.not.i.i.i = icmp slt i32 %dec.i.i.i, %19
  br i1 %cmp5.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge, !prof !51

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i.i

while.end.i.i.i:                                  ; preds = %while.body.i.i.i.while.end.i.i.i_crit_edge, %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge
  %20 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %inc.i.i.i, ptr %consumer_tail.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %21 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i.i, i32 %22)
  %cmp14.not.i.i.i = icmp slt i32 %inc.i.i.i, %22
  br i1 %cmp14.not.i.i.i, label %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge, label %if.then21.i.i.i, !prof !49

if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptr_ring_consume_bh.exit

if.then21.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %consumer_tail.i.i.i, align 4
  br label %ptr_ring_consume_bh.exit

ptr_ring_consume_bh.exit.thread:                  ; preds = %if.end16.ptr_ring_consume_bh.exit.thread_crit_edge, %__ptr_ring_peek.exit.i.i.ptr_ring_consume_bh.exit.thread_crit_edge, %entry.ptr_ring_consume_bh.exit.thread_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %consumer_lock.i) #8
  ret void

ptr_ring_consume_bh.exit:                         ; preds = %if.then21.i.i.i, %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge
  %consumer_head.0.i.i.i = phi i32 [ 0, %if.then21.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge ]
  %24 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %consumer_head.0.i.i.i, ptr %consumer_head.i.i.i, align 128
  call void @_raw_spin_unlock_bh(ptr noundef %consumer_lock.i) #8
  %keypair = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 8
  br label %for.body

for.body:                                         ; preds = %wg_reset_packet.exit.for.body_crit_edge, %ptr_ring_consume_bh.exit
  %skb.041 = phi ptr [ %10, %ptr_ring_consume_bh.exit ], [ %next.043, %wg_reset_packet.exit.for.body_crit_edge ]
  %25 = ptrtoint ptr %skb.041 to i32
  call void @__asan_load4_noabort(i32 %25)
  %next.043 = load ptr, ptr %skb.041, align 8
  %26 = ptrtoint ptr %keypair to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %keypair, align 8
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %sg.i) #8
  %28 = call ptr @memset(ptr %sg.i, i32 255, i32 500)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer.i) #8
  %29 = ptrtoint ptr %trailer.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer.i, align 4, !annotation !57
  %l4_hash.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15
  %30 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load.i.i = load i16, ptr %l4_hash.i.i, align 8
  %31 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %if.then.i.i25, label %for.body.skb_get_hash.exit.i_crit_edge

for.body.skb_get_hash.exit.i_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_get_hash.exit.i

if.then.i.i25:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__skb_get_hash(ptr noundef nonnull %skb.041) #8
  br label %skb_get_hash.exit.i

skb_get_hash.exit.i:                              ; preds = %if.then.i.i25, %for.body.skb_get_hash.exit.i_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 6
  %33 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.i.i, align 4
  %mtu.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 3, i32 16
  %35 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mtu.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i26 = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i26, label %if.then.i73.i, label %if.end.i.i, !prof !51

if.then.i73.i:                                    ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i32 %34, 15
  %and.i.i27 = and i32 %add.i.i, -16
  %sub.i.i = sub i32 %and.i.i27, %34
  br label %calculate_skb_padding.exit.i

if.end.i.i:                                       ; preds = %skb_get_hash.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp.i.i = icmp ugt i32 %34, %36
  br i1 %cmp.i.i, label %if.then13.i.i, label %if.end.i.i.if.end17.i.i_crit_edge, !prof !51

if.end.i.i.if.end17.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then13.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i.i = urem i32 %34, %36
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then13.i.i, %if.end.i.i.if.end17.i.i_crit_edge
  %last_unit.0.i.i = phi i32 [ %rem.i.i, %if.then13.i.i ], [ %34, %if.end.i.i.if.end17.i.i_crit_edge ]
  %add21.i.i = add i32 %last_unit.0.i.i, 15
  %and22.i.i = and i32 %add21.i.i, -16
  %37 = call i32 @llvm.umin.i32(i32 %36, i32 %and22.i.i) #8
  %sub24.i.i = sub i32 %37, %last_unit.0.i.i
  br label %calculate_skb_padding.exit.i

calculate_skb_padding.exit.i:                     ; preds = %if.end17.i.i, %if.then.i73.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i73.i ], [ %sub24.i.i, %if.end17.i.i ]
  %add.i = add i32 %retval.0.i.i, 16
  %add2.i = add i32 %retval.0.i.i, %34
  %call3.i = call i32 @skb_cow_data(ptr noundef nonnull %skb.041, i32 noundef %add.i, ptr noundef nonnull %trailer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call3.i)
  %cmp4.i = icmp ugt i32 %call3.i, 25
  br i1 %cmp4.i, label %calculate_skb_padding.exit.i.encrypt_packet.exit.thread_crit_edge, label %if.end.i, !prof !51

calculate_skb_padding.exit.i.encrypt_packet.exit.thread_crit_edge: ; preds = %calculate_skb_padding.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %encrypt_packet.exit.thread

if.end.i:                                         ; preds = %calculate_skb_padding.exit.i
  %38 = ptrtoint ptr %trailer.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %trailer.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tail.i.i, align 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 %retval.0.i.i)
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 12
  %43 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i28 = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i28, label %skb_header_cloned.exit.thread.i.i, label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.end.i
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 17
  %44 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %45, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #8
  %46 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 18
  %50 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i1.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 192
  br i1 %cmp.i1.i.i, label %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge, label %if.end.i2.i.i

skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i.i

skb_header_cloned.exit.thread.i.i:                ; preds = %if.end.i
  %data.i.i5.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i5.i.i, align 4
  %head.i.i6.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 18
  %54 = ptrtoint ptr %head.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %head.i.i6.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i8.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i9.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i, %sub.ptr.rhs.cast.i.i8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %sub.ptr.sub.i.i9.i.i)
  %cmp.i110.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i, 192
  br i1 %cmp.i110.i.i, label %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.if.end16.i_crit_edge

skb_header_cloned.exit.thread.i.i.if.end16.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i, %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge ]
  %phi.bo.i.i.i = sub nuw nsw i32 319, %sub.ptr.sub.i.i12.i.i
  %phi.bo11.i.i.i = and i32 %phi.bo.i.i.i, -128
  br label %skb_cow_head.exit.i

if.end.i2.i.i:                                    ; preds = %skb_header_cloned.exit.i.i
  %and.i.i.i = and i32 %47, 65535
  %shr.i.i.i = ashr i32 %47, 16
  %sub.i.i.i29 = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i29)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i29, 1
  br i1 %cmp.i.not.i.i, label %if.end.i2.i.i.if.end16.i_crit_edge, label %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge

if.end.i2.i.i.skb_cow_head.exit.i_crit_edge:      ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cow_head.exit.i

if.end.i2.i.i.if.end16.i_crit_edge:               ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

skb_cow_head.exit.i:                              ; preds = %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge, %if.end.thread.i.i.i
  %delta.010.i.i.i = phi i32 [ %phi.bo11.i.i.i, %if.end.thread.i.i.i ], [ 0, %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge ]
  %call4.i.i.i = call i32 @pskb_expand_head(ptr noundef nonnull %skb.041, i32 noundef %delta.010.i.i.i, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp8.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp8.i, label %skb_cow_head.exit.i.encrypt_packet.exit.thread_crit_edge, label %skb_cow_head.exit.i.if.end16.i_crit_edge, !prof !51

skb_cow_head.exit.i.if.end16.i_crit_edge:         ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

skb_cow_head.exit.i.encrypt_packet.exit.thread_crit_edge: ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %encrypt_packet.exit.thread

if.end16.i:                                       ; preds = %skb_cow_head.exit.i.if.end16.i_crit_edge, %if.end.i2.i.i.if.end16.i_crit_edge, %skb_header_cloned.exit.thread.i.i.if.end16.i_crit_edge
  %56 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load.i = load i16, ptr %l4_hash.i.i, align 8
  %57 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %57)
  %cmp17.i = icmp eq i16 %57, 1536
  br i1 %cmp17.i, label %land.rhs.i, label %if.end16.i.if.end28.i_crit_edge

if.end16.i.if.end28.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

land.rhs.i:                                       ; preds = %if.end16.i
  %call19.i = call i32 @skb_checksum_help(ptr noundef nonnull %skb.041) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.rhs.i.if.end28.i_crit_edge, label %land.rhs.i.encrypt_packet.exit.thread_crit_edge, !prof !49

land.rhs.i.encrypt_packet.exit.thread_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %encrypt_packet.exit.thread

land.rhs.i.if.end28.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.rhs.i.if.end28.i_crit_edge, %if.end16.i.if.end28.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 19
  %58 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 18
  %60 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %61 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %inner_network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 16
  %62 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i.i, ptr %inner_network_header.i.i.i, align 4
  %call29.i = call ptr @skb_push(ptr noundef nonnull %skb.041, i32 noundef 16) #8
  %63 = ptrtoint ptr %call29.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 67108864, ptr %call29.i, align 8
  %remote_index.i = getelementptr inbounds %struct.noise_keypair, ptr %27, i32 0, i32 5
  %64 = ptrtoint ptr %remote_index.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %remote_index.i, align 8
  %key_idx.i = getelementptr inbounds %struct.message_data, ptr %call29.i, i32 0, i32 1
  %66 = ptrtoint ptr %key_idx.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %key_idx.i, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 3
  %67 = ptrtoint ptr %cb.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %cb.i, align 8
  %69 = call i64 @llvm.bswap.i64(i64 %68) #8
  %counter.i = getelementptr inbounds %struct.message_data, ptr %call29.i, i32 0, i32 2
  %70 = ptrtoint ptr %counter.i to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %counter.i, align 8
  %71 = ptrtoint ptr %trailer.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %trailer.i, align 4
  %call31.i = call ptr @pskb_put(ptr noundef nonnull %skb.041, ptr noundef %72, i32 noundef %add.i) #8
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef %call3.i) #8
  %add34.i = add i32 %add2.i, 16
  %call35.i = call i32 @skb_to_sgvec(ptr noundef nonnull %skb.041, ptr noundef nonnull %sg.i, i32 noundef 16, i32 noundef %add34.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 1
  br i1 %cmp36.i, label %if.end28.i.encrypt_packet.exit.thread_crit_edge, label %encrypt_packet.exit, !prof !58

if.end28.i.encrypt_packet.exit.thread_crit_edge:  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %encrypt_packet.exit.thread

encrypt_packet.exit.thread:                       ; preds = %if.end28.i.encrypt_packet.exit.thread_crit_edge, %land.rhs.i.encrypt_packet.exit.thread_crit_edge, %skb_cow_head.exit.i.encrypt_packet.exit.thread_crit_edge, %calculate_skb_padding.exit.i.encrypt_packet.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer.i) #8
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %sg.i) #8
  br label %for.end

encrypt_packet.exit:                              ; preds = %if.end28.i
  %73 = ptrtoint ptr %cb.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %cb.i, align 8
  %sending.i = getelementptr inbounds %struct.noise_keypair, ptr %27, i32 0, i32 1
  %call45.i = call zeroext i1 @chacha20poly1305_encrypt_sg_inplace(ptr noundef nonnull %sg.i, i32 noundef %add2.i, ptr noundef null, i32 noundef 0, i64 noundef %74, ptr noundef %sending.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer.i) #8
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %sg.i) #8
  br i1 %call45.i, label %if.then, label %encrypt_packet.exit.for.end_crit_edge, !prof !49

encrypt_packet.exit.for.end_crit_edge:            ; preds = %encrypt_packet.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then:                                          ; preds = %encrypt_packet.exit
  %75 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load.i30 = load i16, ptr %l4_hash.i.i, align 8
  %hash7.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 8
  %76 = ptrtoint ptr %hash7.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hash7.i, align 4
  call void @skb_scrub_packet(ptr noundef nonnull %skb.041, i1 noundef zeroext true) #8
  %78 = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 5
  %79 = call ptr @memset(ptr %78, i32 0, i32 56)
  %bf.set.i = and i16 %bf.load.i30, 192
  %80 = ptrtoint ptr %l4_hash.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %bf.set.i, ptr %l4_hash.i.i, align 8
  %81 = ptrtoint ptr %hash7.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %77, ptr %hash7.i, align 4
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 10
  %82 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %queue_mapping.i, align 8
  %83 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load19.i = load i8, ptr %cloned.i.i.i, align 2
  %bf.clear23.i = and i8 %bf.load19.i, -73
  store i8 %bf.clear23.i, ptr %cloned.i.i.i, align 2
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 8
  %84 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %mac_len.i, align 4
  %85 = getelementptr inbounds %struct.anon.1, ptr %skb.041, i32 0, i32 2
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %85, align 8
  %tc_index.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 4
  %87 = ptrtoint ptr %tc_index.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %tc_index.i, align 2
  %redirected.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 3
  %88 = ptrtoint ptr %redirected.i.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 0, ptr %redirected.i.i, align 2
  %89 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i.i.i, align 4
  %91 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %90 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %92 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i = trunc i32 %sub.ptr.sub.i.i to i16
  %hdr_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 9
  %93 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 %conv.i, ptr %hdr_len.i, align 2
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 21
  %94 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 20
  %95 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv.i, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 19
  %96 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %conv.i, ptr %transport_header.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %keys.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv.i)
  %cmp.i.not.i.i31 = icmp eq i16 %conv.i, -1
  br i1 %cmp.i.not.i.i31, label %if.end.i.i32, label %if.then.wg_reset_packet.exit_crit_edge

if.then.wg_reset_packet.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_reset_packet.exit

if.end.i.i32:                                     ; preds = %if.then
  %97 = call ptr @memset(ptr %keys.i.i, i32 0, i32 12)
  %call.i.i.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef nonnull %skb.041, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %keys.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br i1 %call.i.i.i, label %if.then2.i.i, label %if.end.i.i32.wg_reset_packet.exit_crit_edge

if.end.i.i32.wg_reset_packet.exit_crit_edge:      ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_reset_packet.exit

if.then2.i.i:                                     ; preds = %if.end.i.i32
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %keys.i.i, align 4
  %100 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i.i, align 4
  %102 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i33 = ptrtoint ptr %101 to i32
  %sub.ptr.rhs.cast.i.i.i.i34 = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i.i.i.i35 = sub i32 %sub.ptr.lhs.cast.i.i.i.i33, %sub.ptr.rhs.cast.i.i.i.i34
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i35 to i16
  %conv1.i.i.i = add i16 %99, %conv.i.i.i.i
  %104 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv1.i.i.i, ptr %transport_header.i.i, align 2
  br label %wg_reset_packet.exit

wg_reset_packet.exit:                             ; preds = %if.then2.i.i, %if.end.i.i32.wg_reset_packet.exit_crit_edge, %if.then.wg_reset_packet.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %keys.i.i) #8
  %105 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %mac_header.i.i, align 2
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 17
  %107 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %inner_mac_header.i.i, align 2
  %108 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %network_header.i.i, align 4
  %110 = ptrtoint ptr %inner_network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %inner_network_header.i.i.i, align 4
  %111 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %transport_header.i.i, align 2
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.041, i32 0, i32 15, i32 0, i32 15
  %113 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %112, ptr %inner_transport_header.i.i, align 2
  %tobool6.not = icmp eq ptr %next.043, null
  br i1 %tobool6.not, label %wg_reset_packet.exit.for.end_crit_edge, label %wg_reset_packet.exit.for.body_crit_edge

wg_reset_packet.exit.for.body_crit_edge:          ; preds = %wg_reset_packet.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

wg_reset_packet.exit.for.end_crit_edge:           ; preds = %wg_reset_packet.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %wg_reset_packet.exit.for.end_crit_edge, %encrypt_packet.exit.for.end_crit_edge, %encrypt_packet.exit.thread
  %state.0 = phi i32 [ 2, %encrypt_packet.exit.thread ], [ 1, %wg_reset_packet.exit.for.end_crit_edge ], [ 2, %encrypt_packet.exit.for.end_crit_edge ]
  call fastcc void @wg_queue_enqueue_per_peer_tx(ptr noundef nonnull %10, i32 noundef %state.0)
  %114 = call i32 @llvm.read_register.i32(metadata !37) #8
  %and.i.i = and i32 %114, -16384
  %115 = inttoptr i32 %and.i.i to ptr
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile i32, ptr %115, align 16384
  %118 = and i32 %117, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %tobool.i.not = icmp eq i32 %118, 0
  br i1 %tobool.i.not, label %for.end.if.end16_crit_edge, label %if.then13

for.end.if.end16_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 307, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %for.end.if.end16_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %consumer_lock.i) #8
  %119 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %size.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %120, 0
  br i1 %tobool.not.i.i.i, label %if.end16.ptr_ring_consume_bh.exit.thread_crit_edge, label %if.end16.__ptr_ring_peek.exit.i.i_crit_edge, !prof !51

if.end16.__ptr_ring_peek.exit.i.i_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %__ptr_ring_peek.exit.i.i

if.end16.ptr_ring_consume_bh.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %ptr_ring_consume_bh.exit.thread
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wg_queue_enqueue_per_peer_tx(ptr noundef %skb, i32 noundef %state) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %keypair = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %keypair to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keypair, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %refcount.i = getelementptr inbounds %struct.wg_peer, ptr %3, i32 0, i32 29
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !50
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !51

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !49

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_peer_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %wg_peer_get.exit

wg_peer_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.wg_peer_get.exit_crit_edge
  %state5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %state5, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !52
  %6 = ptrtoint ptr %state5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 %state, ptr %state5, align 4
  %serial_work_cpu = getelementptr inbounds %struct.wg_peer, ptr %3, i32 0, i32 4
  %internal_id = getelementptr inbounds %struct.wg_peer, ptr %3, i32 0, i32 34
  %7 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %internal_id, align 8
  %conv = trunc i64 %8 to i32
  %9 = ptrtoint ptr %serial_work_cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %serial_work_cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp.i = icmp eq i32 %10, %11
  br i1 %cmp.i, label %wg_peer_get.exit.if.end.i.i.i_crit_edge, label %lor.rhs.i, !prof !51

wg_peer_get.exit.if.end.i.i.i_crit_edge:          ; preds = %wg_peer_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

lor.rhs.i:                                        ; preds = %wg_peer_get.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %10)
  %cmp.not.i.i.i.i = icmp ugt i32 %11, %10
  br i1 %cmp.not.i.i.i.i, label %lor.rhs.i.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

lor.rhs.i.cpumask_test_cpu.exit.i_crit_edge:      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %lor.rhs.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !49

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %lor.rhs.i.cpumask_test_cpu.exit.i_crit_edge
  %div3.i.i.i = lshr i32 %10, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %12 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %10, 31
  %14 = shl nuw i32 1, %and.i.i.i
  %15 = and i32 %13, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %cpumask_test_cpu.exit.i.if.end.i.i.i_crit_edge, label %cpumask_test_cpu.exit.i.wg_cpumask_choose_online.exit_crit_edge, !prof !51

cpumask_test_cpu.exit.i.wg_cpumask_choose_online.exit_crit_edge: ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %wg_cpumask_choose_online.exit

cpumask_test_cpu.exit.i.if.end.i.i.i_crit_edge:   ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %cpumask_test_cpu.exit.i.if.end.i.i.i_crit_edge, %wg_peer_get.exit.if.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_online_mask, i32 noundef %16) #8
  %rem.i = urem i32 %conv, %call4.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i13 = tail call i32 @_find_first_bit_be(ptr noundef nonnull @__cpu_online_mask, i32 noundef %17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp616.not.i = icmp eq i32 %rem.i, 0
  br i1 %cmp616.not.i, label %if.end.i.i.i.for.end.i_crit_edge, label %if.end.i.i.i.for.body.i_crit_edge

if.end.i.i.i.for.body.i_crit_edge:                ; preds = %if.end.i.i.i
  br label %for.body.i

if.end.i.i.i.for.end.i_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.i.i.for.body.i_crit_edge
  %i.018.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.i.i.for.body.i_crit_edge ]
  %cpu.017.i = phi i32 [ %call7.i, %for.body.i.for.body.i_crit_edge ], [ %call.i.i13, %if.end.i.i.i.for.body.i_crit_edge ]
  %call7.i = tail call i32 @cpumask_next(i32 noundef %cpu.017.i, ptr noundef nonnull @__cpu_online_mask) #11
  %inc.i = add nuw i32 %i.018.i, 1
  %cmp6.i = icmp ult i32 %inc.i, %rem.i
  br i1 %cmp6.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.i.i.for.end.i_crit_edge
  %cpu.0.lcssa.i = phi i32 [ %call.i.i13, %if.end.i.i.i.for.end.i_crit_edge ], [ %call7.i, %for.body.i.for.end.i_crit_edge ]
  %18 = ptrtoint ptr %serial_work_cpu to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cpu.0.lcssa.i, ptr %serial_work_cpu, align 4
  br label %wg_cpumask_choose_online.exit

wg_cpumask_choose_online.exit:                    ; preds = %for.end.i, %cpumask_test_cpu.exit.i.wg_cpumask_choose_online.exit_crit_edge
  %cpu.1.i = phi i32 [ %cpu.0.lcssa.i, %for.end.i ], [ %10, %cpumask_test_cpu.exit.i.wg_cpumask_choose_online.exit_crit_edge ]
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 8
  %packet_crypt_wq = getelementptr inbounds %struct.wg_device, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %packet_crypt_wq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %packet_crypt_wq, align 16
  %transmit_packet_work = getelementptr inbounds %struct.wg_peer, ptr %3, i32 0, i32 14
  %call7 = tail call zeroext i1 @queue_work_on(i32 noundef %cpu.1.i, ptr noundef %22, ptr noundef %transmit_packet_work) #8
  tail call void @wg_peer_put(ptr noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_purge_staged_packets(ptr noundef %peer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %staged_packet_queue = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3
  %lock = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %qlen = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qlen, align 4
  %2 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %peer, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 128
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 36, i32 7
  %6 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dropped, align 4
  %add = add i32 %7, %1
  store i32 %add, ptr %tx_dropped, align 4
  %8 = ptrtoint ptr %staged_packet_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %staged_packet_queue, align 4
  %cmp.i.i2.i = icmp eq ptr %9, %staged_packet_queue
  %tobool.not.i13.i = icmp eq ptr %9, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %entry.__skb_queue_purge.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.__skb_queue_purge.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_queue_purge.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %10 = phi ptr [ %20, %while.body.i.while.body.i_crit_edge ], [ %9, %entry.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %qlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qlen, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %qlen, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.1, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %10, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %16, ptr %prev17.i.i.i, align 4
  %18 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %14, ptr %16, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %10, i32 noundef 0) #8
  %19 = ptrtoint ptr %staged_packet_queue to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %staged_packet_queue, align 4
  %cmp.i.i.i = icmp eq ptr %20, %staged_packet_queue
  %tobool.not.i1.i = icmp eq ptr %20, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %entry.__skb_queue_purge.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_noise_keypair_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_noise_handshake_create_initiation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_handshake_initiated(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_prev_queue_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_socket_send_skb_to_peer(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_data_sent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pskb_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @chacha20poly1305_encrypt_sg_inplace(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_get_hash(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_add_return(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_prev_queue_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36}
!llvm.named.register.sp = !{!37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/send.c", i32 90, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @wg_packet_send_handshake_response.descriptor, !1, !"descriptor", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/net/wireguard/send.c", i32 116, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @wg_packet_send_handshake_cookie.descriptor, !8, !"descriptor", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wireguard/send.c", i32 234, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wg_packet_send_keepalive.descriptor, !13, !"descriptor", i1 false, i1 false}
!16 = !{ptr @.str.10, !13, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../drivers/net/wireguard/send.c", i32 358, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wireguard/send.c", i32 30, i32 2}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wg_packet_send_handshake_initiation.descriptor, !21, !"descriptor", i1 false, i1 false}
!24 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../drivers/net/wireguard/send.c", i32 130, i32 12}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{!"sp"}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148757488, i64 2148757493, i64 2148757506, i64 2148757550, i64 2148757584, i64 2148757605}
!48 = !{i8 0, i8 2}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2148188054, i64 2148188086, i64 2148188115, i64 2148188149, i64 2148188180, i64 2148188203}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 2148268491}
!53 = !{i64 2154543138}
!54 = !{i64 2154669325, i64 2154669813, i64 2154669362, i64 2154669418, i64 2154669452, i64 2154669476, i64 2154669517, i64 2154669538, i64 2154669566, i64 2154669600}
!55 = !{i64 2148266219}
!56 = !{!"branch_weights", i32 4000000, i32 4001}
!57 = !{!"auto-init"}
!58 = !{!"branch_weights", i32 1073205, i32 2146410443}
