; ModuleID = '/llk/IR_all_yes/drivers/net/wireguard/receive.c_pt.bc'
source_filename = "../drivers/net/wireguard/receive.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.ptr_ring = type { i32, %struct.spinlock, [80 x i8], i32, i32, %struct.spinlock, [76 x i8], i32, i32, ptr, [116 x i8] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.endpoint = type { %union.anon.151, %union.anon.152 }
%union.anon.151 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%union.anon.152 = type { %struct.in6_addr }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.120, [48 x i8], %union.anon.121, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.123, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.120 = type { i64 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, ptr }
%union.anon.123 = type { %struct.anon.124 }
%struct.anon.124 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.125, i32, i32, i32, i16, i16, %union.anon.127, i32, %union.anon.128, %union.anon.129, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.125 = type { i32 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.wg_device = type { ptr, [124 x i8], %struct.crypt_queue, %struct.crypt_queue, %struct.crypt_queue, ptr, ptr, ptr, %struct.noise_static_identity, ptr, ptr, ptr, %struct.cookie_checker, ptr, ptr, %struct.allowedips, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.atomic_t, i32, i32, i32, i16, [126 x i8] }
%struct.crypt_queue = type { %struct.ptr_ring, ptr, i32, [120 x i8] }
%struct.noise_static_identity = type { [32 x i8], [32 x i8], %struct.rw_semaphore, i8 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cookie_checker = type { [32 x i8], [32 x i8], [32 x i8], i64, %struct.rw_semaphore, ptr }
%struct.allowedips = type { ptr, ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.message_handshake_initiation = type { %struct.message_header, i32, [32 x i8], [48 x i8], [28 x i8], %struct.message_macs }
%struct.message_header = type { i32 }
%struct.message_macs = type { [16 x i8], [16 x i8] }
%struct.wg_peer = type { ptr, %struct.prev_queue, %struct.prev_queue, %struct.sk_buff_head, i32, i8, %struct.noise_keypairs, %struct.endpoint, %struct.dst_cache, %struct.rwlock_t, %struct.noise_handshake, %struct.atomic64_t, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.cookie, %struct.hlist_node, i64, i64, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i16, i8, i8, %struct.timespec64, %struct.kref, %struct.callback_head, %struct.list_head, %struct.list_head, %struct.napi_struct, i64 }
%struct.prev_queue = type { ptr, ptr, ptr, %struct.anon.150, %struct.atomic_t }
%struct.anon.150 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.noise_keypairs = type { ptr, ptr, ptr, %struct.spinlock }
%struct.dst_cache = type { ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.noise_handshake = type { %struct.index_hashtable_entry, i32, i64, ptr, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, %struct.rw_semaphore }
%struct.index_hashtable_entry = type { ptr, %struct.hlist_node, i32, i32 }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.cookie = type { i64, i8, [16 x i8], i8, [16 x i8], [32 x i8], [32 x i8], %struct.rw_semaphore }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.timespec64 = type { i64, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.callback_head = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.message_handshake_response = type { %struct.message_header, i32, i32, [32 x i8], [16 x i8], %struct.message_macs }
%struct.noise_replay_counter = type { i64, %struct.spinlock, [256 x i32] }
%struct.flow_keys_basic = type { %struct.flow_dissector_key_control, %struct.flow_dissector_key_basic }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.noise_keypair = type { %struct.index_hashtable_entry, %struct.noise_symmetric_key, %struct.atomic64_t, %struct.noise_symmetric_key, %struct.noise_replay_counter, i32, i8, %struct.kref, %struct.callback_head, i64 }
%struct.noise_symmetric_key = type { [32 x i8], i64, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.149, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
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
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.message_data = type { %struct.message_header, i32, i64, [0 x i8] }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.multicore_worker = type { ptr, %struct.work_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pcpu_sw_netstats = type { i64, i64, i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.vlan_hdr = type { i16, i16 }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/wireguard/receive.c\00", [32 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 15, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013wireguard: nonce counter self-test malloc: FAIL\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wg_packet_counter_selftest\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/wireguard/selftest/counter.c\00", [55 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr = internal global ptr @wg_packet_counter_selftest._entry, section ".printk_index", align 4
@wg_packet_counter_selftest.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&counter->lock\00", [17 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 34, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013wireguard: nonce counter self-test %u: FAIL\0A\00", [49 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.7 = internal global ptr @wg_packet_counter_selftest._entry.5, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.9 = internal global ptr @wg_packet_counter_selftest._entry.8, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.11 = internal global ptr @wg_packet_counter_selftest._entry.10, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.13 = internal global ptr @wg_packet_counter_selftest._entry.12, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.15 = internal global ptr @wg_packet_counter_selftest._entry.14, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 39, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.17 = internal global ptr @wg_packet_counter_selftest._entry.16, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.19 = internal global ptr @wg_packet_counter_selftest._entry.18, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.21 = internal global ptr @wg_packet_counter_selftest._entry.20, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.23 = internal global ptr @wg_packet_counter_selftest._entry.22, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.25 = internal global ptr @wg_packet_counter_selftest._entry.24, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.27 = internal global ptr @wg_packet_counter_selftest._entry.26, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.29 = internal global ptr @wg_packet_counter_selftest._entry.28, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.31 = internal global ptr @wg_packet_counter_selftest._entry.30, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.33 = internal global ptr @wg_packet_counter_selftest._entry.32, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.35 = internal global ptr @wg_packet_counter_selftest._entry.34, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.37 = internal global ptr @wg_packet_counter_selftest._entry.36, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.39 = internal global ptr @wg_packet_counter_selftest._entry.38, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.41 = internal global ptr @wg_packet_counter_selftest._entry.40, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.43 = internal global ptr @wg_packet_counter_selftest._entry.42, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.45 = internal global ptr @wg_packet_counter_selftest._entry.44, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.47 = internal global ptr @wg_packet_counter_selftest._entry.46, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.49 = internal global ptr @wg_packet_counter_selftest._entry.48, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.51 = internal global ptr @wg_packet_counter_selftest._entry.50, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.53 = internal global ptr @wg_packet_counter_selftest._entry.52, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.55 = internal global ptr @wg_packet_counter_selftest._entry.54, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.57 = internal global ptr @wg_packet_counter_selftest._entry.56, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.59 = internal global ptr @wg_packet_counter_selftest._entry.58, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.61 = internal global ptr @wg_packet_counter_selftest._entry.60, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.63 = internal global ptr @wg_packet_counter_selftest._entry.62, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.65 = internal global ptr @wg_packet_counter_selftest._entry.64, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.67 = internal global ptr @wg_packet_counter_selftest._entry.66, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.69 = internal global ptr @wg_packet_counter_selftest._entry.68, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.71 = internal global ptr @wg_packet_counter_selftest._entry.70, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.73 = internal global ptr @wg_packet_counter_selftest._entry.72, section ".printk_index", align 4
@wg_packet_counter_selftest.__key.74 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wg_packet_counter_selftest._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.76 = internal global ptr @wg_packet_counter_selftest._entry.75, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.78 = internal global ptr @wg_packet_counter_selftest._entry.77, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.80 = internal global ptr @wg_packet_counter_selftest._entry.79, section ".printk_index", align 4
@wg_packet_counter_selftest.__key.81 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wg_packet_counter_selftest._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.83 = internal global ptr @wg_packet_counter_selftest._entry.82, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.85 = internal global ptr @wg_packet_counter_selftest._entry.84, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.87 = internal global ptr @wg_packet_counter_selftest._entry.86, section ".printk_index", align 4
@wg_packet_counter_selftest.__key.88 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wg_packet_counter_selftest._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 83, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.90 = internal global ptr @wg_packet_counter_selftest._entry.89, section ".printk_index", align 4
@wg_packet_counter_selftest.__key.91 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wg_packet_counter_selftest._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 87, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.93 = internal global ptr @wg_packet_counter_selftest._entry.92, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.95 = internal global ptr @wg_packet_counter_selftest._entry.94, section ".printk_index", align 4
@wg_packet_counter_selftest.__key.96 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wg_packet_counter_selftest._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 92, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.98 = internal global ptr @wg_packet_counter_selftest._entry.97, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.100 = internal global ptr @wg_packet_counter_selftest._entry.99, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.102 = internal global ptr @wg_packet_counter_selftest._entry.101, section ".printk_index", align 4
@wg_packet_counter_selftest.__key.103 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wg_packet_counter_selftest._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.105 = internal global ptr @wg_packet_counter_selftest._entry.104, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.107 = internal global ptr @wg_packet_counter_selftest._entry.106, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.109 = internal global ptr @wg_packet_counter_selftest._entry.108, section ".printk_index", align 4
@wg_packet_counter_selftest._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.2, ptr @.str.3, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016wireguard: nonce counter self-tests: pass\0A\00", [51 x i8] zeroinitializer }, align 32
@wg_packet_counter_selftest._entry_ptr.112 = internal global ptr @wg_packet_counter_selftest._entry.110, section ".printk_index", align 4
@wg_packet_rx_poll.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.114, ptr @.str, ptr @.str.115, i8 0, i8 118, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wireguard\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wg_packet_rx_poll\00", [46 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Packet has invalid nonce %llu (max %llu)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"wireguard: %s: Packet has invalid nonce %llu (max %llu)\0A\00", [39 x i8] zeroinitializer }, align 32
@wg_packet_receive.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.117, ptr @.str, ptr @.str.118, i8 0, i8 -114, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wg_packet_receive\00", [46 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Dropping handshake packet from %pISpfsc\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"wireguard: %s: Dropping handshake packet from %pISpfsc\0A\00", [40 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.120 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Non-exhaustive parsing of packet header lead to unknown packet type!\0A\00", [58 x i8] zeroinitializer }, align 32
@wg_receive_handshake_packet.last_under_load = internal global { i64, [24 x i8] } zeroinitializer, align 32
@wg_receive_handshake_packet.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.121, ptr @.str, ptr @.str.122, i8 0, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wg_receive_handshake_packet\00", [36 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Receiving cookie response from %pISpfsc\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"wireguard: %s: Receiving cookie response from %pISpfsc\0A\00", [40 x i8] zeroinitializer }, align 32
@wg_receive_handshake_packet.descriptor.124 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.121, ptr @.str, ptr @.str.125, i8 0, i8 34, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%s: Invalid MAC of handshake, dropping packet from %pISpfsc\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"wireguard: %s: Invalid MAC of handshake, dropping packet from %pISpfsc\0A\00", [56 x i8] zeroinitializer }, align 32
@wg_receive_handshake_packet.descriptor.127 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.121, ptr @.str, ptr @.str.128, i8 0, i8 38, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: Invalid handshake initiation from %pISpfsc\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"wireguard: %s: Invalid handshake initiation from %pISpfsc\0A\00", [37 x i8] zeroinitializer }, align 32
@wg_receive_handshake_packet.descriptor.130 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.121, ptr @.str, ptr @.str.131, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s: Receiving handshake initiation from peer %llu (%pISpfsc)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"wireguard: %s: Receiving handshake initiation from peer %llu (%pISpfsc)\0A\00", [55 x i8] zeroinitializer }, align 32
@wg_receive_handshake_packet.descriptor.133 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.121, ptr @.str, ptr @.str.134, i8 0, i8 44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: Invalid handshake response from %pISpfsc\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"wireguard: %s: Invalid handshake response from %pISpfsc\0A\00", [39 x i8] zeroinitializer }, align 32
@wg_receive_handshake_packet.descriptor.136 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.121, ptr @.str, ptr @.str.137, i8 0, i8 45, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: Receiving handshake response from peer %llu (%pISpfsc)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"wireguard: %s: Receiving handshake response from peer %llu (%pISpfsc)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Somehow a wrong type of packet wound up in the handshake queue!\0A\00", [63 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.140 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@flow_keys_basic_dissector = external dso_local global %struct.flow_dissector, align 4
@wg_packet_consume_data_done.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.141, ptr @.str, ptr @.str.142, i8 0, i8 92, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wg_packet_consume_data_done\00", [36 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: Receiving keepalive packet from peer %llu (%pISpfsc)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"wireguard: %s: Receiving keepalive packet from peer %llu (%pISpfsc)\0A\00", [59 x i8] zeroinitializer }, align 32
@wg_packet_consume_data_done.descriptor.144 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.141, ptr @.str, ptr @.str.145, i8 0, i8 106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: Packet has unallowed src IP (%pISc) from peer %llu (%pISpfsc)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"wireguard: %s: Packet has unallowed src IP (%pISc) from peer %llu (%pISpfsc)\0A\00", [50 x i8] zeroinitializer }, align 32
@wg_packet_consume_data_done.descriptor.147 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.141, ptr @.str, ptr @.str.148, i8 0, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s: Packet is neither ipv4 nor ipv6 from peer %llu (%pISpfsc)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"wireguard: %s: Packet is neither ipv4 nor ipv6 from peer %llu (%pISpfsc)\0A\00", [54 x i8] zeroinitializer }, align 32
@wg_packet_consume_data_done.descriptor.150 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.113, ptr @.str.141, ptr @.str, ptr @.str.151, i8 0, i8 109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.151 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%s: Packet has incorrect size from peer %llu (%pISpfsc)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"wireguard: %s: Packet has incorrect size from peer %llu (%pISpfsc)\0A\00", [60 x i8] zeroinitializer }, align 32
@keep_key_fresh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.153 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.154 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.156 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.159 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16777216, i64 33554432]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 96]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.162 = internal global [5 x i64] [i64 3, i64 32, i64 16777216, i64 33554432, i64 50331648]
@__sancov_gen_cov_switch_values.163 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.165 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.166 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.167 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.168 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.169 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.170 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.171 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 223, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 15, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 33, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 34, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 35, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 36, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 37, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 38, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 39, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 40, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 41, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 42, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 43, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 44, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 45, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 46, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 47, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 48, i32 11 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 49, i32 11 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 50, i32 11 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 51, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 52, i32 11 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 53, i32 11 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 54, i32 11 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 55, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 56, i32 11 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 57, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 58, i32 11 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 59, i32 11 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 60, i32 11 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 61, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 62, i32 11 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 63, i32 11 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 64, i32 11 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 65, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 66, i32 11 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 67, i32 11 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 69, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 71, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 72, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 73, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 75, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 77, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 78, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 79, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 81, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 83, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 85, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 87, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 88, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 90, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 92, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 93, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 94, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 96, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 98, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 99, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 100, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [44 x i8] c"../drivers/net/wireguard/selftest/counter.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 107, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 470, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 570, i32 4 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 586, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant [16 x i8] c"last_under_load\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 107, i32 13 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 112, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 136, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 153, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 158, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 175, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 180, i32 3 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 200, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 271, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 366, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 423, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 430, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 436, i32 2 }
@___asan_gen_.467 = private constant [35 x i8] c"../drivers/net/wireguard/receive.c\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 236, i32 12 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 749, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.476, i32 760, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.479, i32 598, i32 8 }
@___asan_gen_.481 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.482 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.482, i32 108, i32 2 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @wg_packet_counter_selftest._entry, ptr @wg_packet_counter_selftest._entry.10, ptr @wg_packet_counter_selftest._entry.101, ptr @wg_packet_counter_selftest._entry.104, ptr @wg_packet_counter_selftest._entry.106, ptr @wg_packet_counter_selftest._entry.108, ptr @wg_packet_counter_selftest._entry.110, ptr @wg_packet_counter_selftest._entry.12, ptr @wg_packet_counter_selftest._entry.14, ptr @wg_packet_counter_selftest._entry.16, ptr @wg_packet_counter_selftest._entry.18, ptr @wg_packet_counter_selftest._entry.20, ptr @wg_packet_counter_selftest._entry.22, ptr @wg_packet_counter_selftest._entry.24, ptr @wg_packet_counter_selftest._entry.26, ptr @wg_packet_counter_selftest._entry.28, ptr @wg_packet_counter_selftest._entry.30, ptr @wg_packet_counter_selftest._entry.32, ptr @wg_packet_counter_selftest._entry.34, ptr @wg_packet_counter_selftest._entry.36, ptr @wg_packet_counter_selftest._entry.38, ptr @wg_packet_counter_selftest._entry.40, ptr @wg_packet_counter_selftest._entry.42, ptr @wg_packet_counter_selftest._entry.44, ptr @wg_packet_counter_selftest._entry.46, ptr @wg_packet_counter_selftest._entry.48, ptr @wg_packet_counter_selftest._entry.5, ptr @wg_packet_counter_selftest._entry.50, ptr @wg_packet_counter_selftest._entry.52, ptr @wg_packet_counter_selftest._entry.54, ptr @wg_packet_counter_selftest._entry.56, ptr @wg_packet_counter_selftest._entry.58, ptr @wg_packet_counter_selftest._entry.60, ptr @wg_packet_counter_selftest._entry.62, ptr @wg_packet_counter_selftest._entry.64, ptr @wg_packet_counter_selftest._entry.66, ptr @wg_packet_counter_selftest._entry.68, ptr @wg_packet_counter_selftest._entry.70, ptr @wg_packet_counter_selftest._entry.72, ptr @wg_packet_counter_selftest._entry.75, ptr @wg_packet_counter_selftest._entry.77, ptr @wg_packet_counter_selftest._entry.79, ptr @wg_packet_counter_selftest._entry.8, ptr @wg_packet_counter_selftest._entry.82, ptr @wg_packet_counter_selftest._entry.84, ptr @wg_packet_counter_selftest._entry.86, ptr @wg_packet_counter_selftest._entry.89, ptr @wg_packet_counter_selftest._entry.92, ptr @wg_packet_counter_selftest._entry.94, ptr @wg_packet_counter_selftest._entry.97, ptr @wg_packet_counter_selftest._entry.99, ptr @wg_packet_counter_selftest._entry_ptr, ptr @wg_packet_counter_selftest._entry_ptr.100, ptr @wg_packet_counter_selftest._entry_ptr.102, ptr @wg_packet_counter_selftest._entry_ptr.105, ptr @wg_packet_counter_selftest._entry_ptr.107, ptr @wg_packet_counter_selftest._entry_ptr.109, ptr @wg_packet_counter_selftest._entry_ptr.11, ptr @wg_packet_counter_selftest._entry_ptr.112, ptr @wg_packet_counter_selftest._entry_ptr.13, ptr @wg_packet_counter_selftest._entry_ptr.15, ptr @wg_packet_counter_selftest._entry_ptr.17, ptr @wg_packet_counter_selftest._entry_ptr.19, ptr @wg_packet_counter_selftest._entry_ptr.21, ptr @wg_packet_counter_selftest._entry_ptr.23, ptr @wg_packet_counter_selftest._entry_ptr.25, ptr @wg_packet_counter_selftest._entry_ptr.27, ptr @wg_packet_counter_selftest._entry_ptr.29, ptr @wg_packet_counter_selftest._entry_ptr.31, ptr @wg_packet_counter_selftest._entry_ptr.33, ptr @wg_packet_counter_selftest._entry_ptr.35, ptr @wg_packet_counter_selftest._entry_ptr.37, ptr @wg_packet_counter_selftest._entry_ptr.39, ptr @wg_packet_counter_selftest._entry_ptr.41, ptr @wg_packet_counter_selftest._entry_ptr.43, ptr @wg_packet_counter_selftest._entry_ptr.45, ptr @wg_packet_counter_selftest._entry_ptr.47, ptr @wg_packet_counter_selftest._entry_ptr.49, ptr @wg_packet_counter_selftest._entry_ptr.51, ptr @wg_packet_counter_selftest._entry_ptr.53, ptr @wg_packet_counter_selftest._entry_ptr.55, ptr @wg_packet_counter_selftest._entry_ptr.57, ptr @wg_packet_counter_selftest._entry_ptr.59, ptr @wg_packet_counter_selftest._entry_ptr.61, ptr @wg_packet_counter_selftest._entry_ptr.63, ptr @wg_packet_counter_selftest._entry_ptr.65, ptr @wg_packet_counter_selftest._entry_ptr.67, ptr @wg_packet_counter_selftest._entry_ptr.69, ptr @wg_packet_counter_selftest._entry_ptr.7, ptr @wg_packet_counter_selftest._entry_ptr.71, ptr @wg_packet_counter_selftest._entry_ptr.73, ptr @wg_packet_counter_selftest._entry_ptr.76, ptr @wg_packet_counter_selftest._entry_ptr.78, ptr @wg_packet_counter_selftest._entry_ptr.80, ptr @wg_packet_counter_selftest._entry_ptr.83, ptr @wg_packet_counter_selftest._entry_ptr.85, ptr @wg_packet_counter_selftest._entry_ptr.87, ptr @wg_packet_counter_selftest._entry_ptr.9, ptr @wg_packet_counter_selftest._entry_ptr.90, ptr @wg_packet_counter_selftest._entry_ptr.93, ptr @wg_packet_counter_selftest._entry_ptr.95, ptr @wg_packet_counter_selftest._entry_ptr.98, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wg_packet_counter_selftest.__key, ptr @.str.4, ptr @.str.6, ptr @wg_packet_counter_selftest.__key.74, ptr @wg_packet_counter_selftest.__key.81, ptr @wg_packet_counter_selftest.__key.88, ptr @wg_packet_counter_selftest.__key.91, ptr @wg_packet_counter_selftest.__key.96, ptr @wg_packet_counter_selftest.__key.103, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @wg_receive_handshake_packet.last_under_load, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.131, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.159], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest.__key.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest.__key.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest.__key.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest.__key.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest.__key.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest.__key.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_packet_counter_selftest._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wg_receive_handshake_packet.last_under_load to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_handshake_receive_worker(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -1152
  %queue.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 9
  %consumer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock_bh(ptr noundef %consumer_lock.i) #12
  %size.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i11 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i11, label %entry.ptr_ring_consume_bh.exit.thread_crit_edge, label %__ptr_ring_peek.exit.i.i.lr.ph, !prof !264

entry.ptr_ring_consume_bh.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptr_ring_consume_bh.exit.thread

__ptr_ring_peek.exit.i.i.lr.ph:                   ; preds = %entry
  %consumer_head.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 3
  %consumer_tail.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 4
  %batch.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 8
  %handshake_queue_len = getelementptr i8, ptr %1, i32 1136
  br label %__ptr_ring_peek.exit.i.i

__ptr_ring_peek.exit.i.i:                         ; preds = %ptr_ring_consume_bh.exit.__ptr_ring_peek.exit.i.i_crit_edge, %__ptr_ring_peek.exit.i.i.lr.ph
  %4 = phi i32 [ %3, %__ptr_ring_peek.exit.i.i.lr.ph ], [ %27, %ptr_ring_consume_bh.exit.__ptr_ring_peek.exit.i.i_crit_edge ]
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
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %or.cond.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i, !prof !265

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp5.not46.i.i.i = icmp slt i32 %8, %12
  br i1 %cmp5.not46.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, !prof !264

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %cmp5.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge, !prof !264

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %cmp14.not.i.i.i, label %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge, label %if.then21.i.i.i, !prof !266

if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptr_ring_consume_bh.exit

if.then21.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %consumer_tail.i.i.i, align 4
  br label %ptr_ring_consume_bh.exit

ptr_ring_consume_bh.exit.thread:                  ; preds = %ptr_ring_consume_bh.exit.ptr_ring_consume_bh.exit.thread_crit_edge, %__ptr_ring_peek.exit.i.i.ptr_ring_consume_bh.exit.thread_crit_edge, %entry.ptr_ring_consume_bh.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %consumer_lock.i) #12
  ret void

ptr_ring_consume_bh.exit:                         ; preds = %if.then21.i.i.i, %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge
  %consumer_head.0.i.i.i = phi i32 [ 0, %if.then21.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge ]
  %24 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %consumer_head.0.i.i.i, ptr %consumer_head.i.i.i, align 128
  tail call void @_raw_spin_unlock_bh(ptr noundef %consumer_lock.i) #12
  tail call fastcc void @wg_receive_handshake_packet(ptr noundef %add.ptr3, ptr noundef nonnull %10)
  tail call void @consume_skb(ptr noundef nonnull %10) #12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %handshake_queue_len, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %handshake_queue_len, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %handshake_queue_len, ptr %handshake_queue_len, i32 1, ptr elementtype(i32) %handshake_queue_len) #12, !srcloc !267
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 223, i32 noundef 0) #12
  %call.i = tail call i32 @__cond_resched() #12
  tail call void @_raw_spin_lock_bh(ptr noundef %consumer_lock.i) #12
  %26 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %ptr_ring_consume_bh.exit.ptr_ring_consume_bh.exit.thread_crit_edge, label %ptr_ring_consume_bh.exit.__ptr_ring_peek.exit.i.i_crit_edge, !prof !264

ptr_ring_consume_bh.exit.__ptr_ring_peek.exit.i.i_crit_edge: ; preds = %ptr_ring_consume_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ptr_ring_peek.exit.i.i

ptr_ring_consume_bh.exit.ptr_ring_consume_bh.exit.thread_crit_edge: ; preds = %ptr_ring_consume_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptr_ring_consume_bh.exit.thread
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wg_receive_handshake_packet(ptr noundef %wg, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %__endpoint = alloca %struct.endpoint, align 4
  %__endpoint46 = alloca %struct.endpoint, align 4
  %__endpoint94 = alloca %struct.endpoint, align 4
  %__endpoint166 = alloca %struct.endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %3)
  %cmp = icmp eq i32 %3, 50331648
  br i1 %cmp, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %__endpoint) #12
  %4 = call ptr @memset(ptr %__endpoint, i32 255, i32 44)
  %call = call i32 @wg_socket_endpoint_from_skb(ptr noundef nonnull %__endpoint, ptr noundef %skb) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_receive_handshake_packet.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_receive_handshake_packet, %do.end)) #12
          to label %land.lhs.true [label %do.end], !srcloc !268

land.lhs.true:                                    ; preds = %do.body
  %call6 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %if.then8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_receive_handshake_packet.descriptor, ptr noundef nonnull @.str.123, ptr noundef %6, ptr noundef nonnull %__endpoint) #12
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true.do.end_crit_edge, %do.body
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %__endpoint) #12
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  call void @wg_cookie_message_consume(ptr noundef %8, ptr noundef %wg) #12
  br label %cleanup262

if.end12:                                         ; preds = %entry
  %handshake_queue_len = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %handshake_queue_len, i32 noundef 4) #12
  %9 = ptrtoint ptr %handshake_queue_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %handshake_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %10)
  %cmp14 = icmp sgt i32 %10, 511
  br i1 %cmp14, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i341 = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #12
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.end12
  %11 = load i64, ptr @wg_receive_handshake_packet.last_under_load, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool19.not = icmp eq i64 %11, 0
  br i1 %tobool19.not, label %if.else.if.end29_crit_edge, label %if.then20

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then20:                                        ; preds = %if.else
  %add.i = add i64 %11, 1000000000
  %call.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call.i.i.i)
  %cmp.i.not = icmp sgt i64 %add.i, %call.i.i.i
  br i1 %cmp.i.not, label %if.then20.if.end29_crit_edge, label %if.then20.if.end29.sink.split_crit_edge

if.then20.if.end29.sink.split_crit_edge:          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.sink.split

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.end29.sink.split:                              ; preds = %if.then20.if.end29.sink.split_crit_edge, %if.then17
  %.sink = phi i64 [ %call.i.i341, %if.then17 ], [ 0, %if.then20.if.end29.sink.split_crit_edge ]
  store i64 %.sink, ptr @wg_receive_handshake_packet.last_under_load, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.then20.if.end29_crit_edge, %if.else.if.end29_crit_edge
  %under_load.0.in = phi i1 [ true, %if.then20.if.end29_crit_edge ], [ false, %if.else.if.end29_crit_edge ], [ %cmp14, %if.end29.sink.split ]
  %cookie_checker = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 12
  %call31 = tail call i32 @wg_cookie_validate_packet(ptr noundef %cookie_checker, ptr noundef %skb, i1 noundef zeroext %under_load.0.in) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call31)
  %cmp34 = icmp eq i32 %call31, 3
  %or.cond = select i1 %under_load.0.in, i1 %cmp34, i1 false
  br i1 %or.cond, label %if.end29.if.end75_crit_edge, label %lor.lhs.false

if.end29.if.end75_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

lor.lhs.false:                                    ; preds = %if.end29
  %under_load.0.in.not = xor i1 %under_load.0.in, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp37 = icmp eq i32 %call31, 1
  %or.cond324 = select i1 %under_load.0.in.not, i1 %cmp37, i1 false
  br i1 %or.cond324, label %lor.lhs.false.if.end75_crit_edge, label %if.else39

lor.lhs.false.if.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

if.else39:                                        ; preds = %lor.lhs.false
  %or.cond325 = select i1 %under_load.0.in, i1 %cmp37, i1 false
  br i1 %or.cond325, label %if.else39.if.end75_crit_edge, label %do.body45

if.else39.if.end75_crit_edge:                     ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end75

do.body45:                                        ; preds = %if.else39
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %__endpoint46) #12
  %12 = call ptr @memset(ptr %__endpoint46, i32 255, i32 44)
  %call47 = call i32 @wg_socket_endpoint_from_skb(ptr noundef nonnull %__endpoint46, ptr noundef %skb) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_receive_handshake_packet.descriptor.124, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_receive_handshake_packet, %do.end71)) #12
          to label %land.lhs.true62 [label %do.end71], !srcloc !268

land.lhs.true62:                                  ; preds = %do.body45
  %call63 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true62.do.end71_crit_edge, label %if.then65

land.lhs.true62.do.end71_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end71

if.then65:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_receive_handshake_packet.descriptor.124, ptr noundef nonnull @.str.126, ptr noundef %14, ptr noundef nonnull %__endpoint46) #12
  br label %do.end71

do.end71:                                         ; preds = %if.then65, %land.lhs.true62.do.end71_crit_edge, %do.body45
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %__endpoint46) #12
  br label %cleanup262

if.end75:                                         ; preds = %if.else39.if.end75_crit_edge, %lor.lhs.false.if.end75_crit_edge, %if.end29.if.end75_crit_edge
  %packet_needs_cookie.0.off0 = phi i1 [ false, %lor.lhs.false.if.end75_crit_edge ], [ false, %if.end29.if.end75_crit_edge ], [ true, %if.else39.if.end75_crit_edge ]
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %do.end247 [
    i32 16777216, label %sw.bb
    i32 33554432, label %sw.bb147
  ]

sw.bb:                                            ; preds = %if.end75
  br i1 %packet_needs_cookie.0.off0, label %if.then80, label %if.end81

if.then80:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %sender_index = getelementptr inbounds %struct.message_handshake_initiation, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %sender_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sender_index, align 4
  tail call void @wg_packet_send_handshake_cookie(ptr noundef %wg, ptr noundef %skb, i32 noundef %21) #12
  br label %cleanup262

if.end81:                                         ; preds = %sw.bb
  %call82 = tail call ptr @wg_noise_handshake_consume_initiation(ptr noundef %16, ptr noundef %wg) #12
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %do.body93, label %if.end122, !prof !264

do.body93:                                        ; preds = %if.end81
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %__endpoint94) #12
  %22 = call ptr @memset(ptr %__endpoint94, i32 255, i32 44)
  %call95 = call i32 @wg_socket_endpoint_from_skb(ptr noundef nonnull %__endpoint94, ptr noundef %skb) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_receive_handshake_packet.descriptor.127, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_receive_handshake_packet, %do.end119)) #12
          to label %land.lhs.true110 [label %do.end119], !srcloc !268

land.lhs.true110:                                 ; preds = %do.body93
  %call111 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %land.lhs.true110.do.end119_crit_edge, label %if.then113

land.lhs.true110.do.end119_crit_edge:             ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end119

if.then113:                                       ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_receive_handshake_packet.descriptor.127, ptr noundef nonnull @.str.129, ptr noundef %24, ptr noundef nonnull %__endpoint94) #12
  br label %do.end119

do.end119:                                        ; preds = %if.then113, %land.lhs.true110.do.end119_crit_edge, %do.body93
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %__endpoint94) #12
  br label %cleanup262

if.end122:                                        ; preds = %if.end81
  tail call void @wg_socket_set_peer_endpoint_from_skb(ptr noundef nonnull %call82, ptr noundef %skb) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_receive_handshake_packet.descriptor.130, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_receive_handshake_packet, %cleanup)) #12
          to label %land.lhs.true137 [label %cleanup], !srcloc !268

land.lhs.true137:                                 ; preds = %if.end122
  %call138 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %land.lhs.true137.cleanup_crit_edge, label %if.then140

land.lhs.true137.cleanup_crit_edge:               ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then140:                                       ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wg, align 128
  %internal_id = getelementptr inbounds %struct.wg_peer, ptr %call82, i32 0, i32 34
  %27 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %internal_id, align 8
  %endpoint = getelementptr inbounds %struct.wg_peer, ptr %call82, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_receive_handshake_packet.descriptor.130, ptr noundef nonnull @.str.132, ptr noundef %26, i64 noundef %28, ptr noundef %endpoint) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then140, %land.lhs.true137.cleanup_crit_edge, %if.end122
  tail call void @wg_packet_send_handshake_response(ptr noundef nonnull %call82) #12
  br label %if.end261

sw.bb147:                                         ; preds = %if.end75
  br i1 %packet_needs_cookie.0.off0, label %if.then151, label %if.end153

if.then151:                                       ; preds = %sw.bb147
  call void @__sanitizer_cov_trace_pc() #14
  %sender_index152 = getelementptr inbounds %struct.message_handshake_response, ptr %16, i32 0, i32 1
  %29 = ptrtoint ptr %sender_index152 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sender_index152, align 4
  tail call void @wg_packet_send_handshake_cookie(ptr noundef %wg, ptr noundef %skb, i32 noundef %30) #12
  br label %cleanup262

if.end153:                                        ; preds = %sw.bb147
  %call154 = tail call ptr @wg_noise_handshake_consume_response(ptr noundef %16, ptr noundef %wg) #12
  %tobool155.not = icmp eq ptr %call154, null
  br i1 %tobool155.not, label %do.body165, label %if.end194, !prof !264

do.body165:                                       ; preds = %if.end153
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %__endpoint166) #12
  %31 = call ptr @memset(ptr %__endpoint166, i32 255, i32 44)
  %call167 = call i32 @wg_socket_endpoint_from_skb(ptr noundef nonnull %__endpoint166, ptr noundef %skb) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_receive_handshake_packet.descriptor.133, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_receive_handshake_packet, %do.end191)) #12
          to label %land.lhs.true182 [label %do.end191], !srcloc !268

land.lhs.true182:                                 ; preds = %do.body165
  %call183 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %land.lhs.true182.do.end191_crit_edge, label %if.then185

land.lhs.true182.do.end191_crit_edge:             ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end191

if.then185:                                       ; preds = %land.lhs.true182
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_receive_handshake_packet.descriptor.133, ptr noundef nonnull @.str.135, ptr noundef %33, ptr noundef nonnull %__endpoint166) #12
  br label %do.end191

do.end191:                                        ; preds = %if.then185, %land.lhs.true182.do.end191_crit_edge, %do.body165
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %__endpoint166) #12
  br label %cleanup262

if.end194:                                        ; preds = %if.end153
  tail call void @wg_socket_set_peer_endpoint_from_skb(ptr noundef nonnull %call154, ptr noundef %skb) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_receive_handshake_packet.descriptor.136, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_receive_handshake_packet, %do.end220)) #12
          to label %land.lhs.true209 [label %do.end220], !srcloc !268

land.lhs.true209:                                 ; preds = %if.end194
  %call210 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %land.lhs.true209.do.end220_crit_edge, label %if.then212

land.lhs.true209.do.end220_crit_edge:             ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end220

if.then212:                                       ; preds = %land.lhs.true209
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wg, align 128
  %internal_id216 = getelementptr inbounds %struct.wg_peer, ptr %call154, i32 0, i32 34
  %36 = ptrtoint ptr %internal_id216 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %internal_id216, align 8
  %endpoint217 = getelementptr inbounds %struct.wg_peer, ptr %call154, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_receive_handshake_packet.descriptor.136, ptr noundef nonnull @.str.138, ptr noundef %35, i64 noundef %37, ptr noundef %endpoint217) #12
  br label %do.end220

do.end220:                                        ; preds = %if.then212, %land.lhs.true209.do.end220_crit_edge, %if.end194
  %handshake = getelementptr inbounds %struct.wg_peer, ptr %call154, i32 0, i32 10
  %keypairs = getelementptr inbounds %struct.wg_peer, ptr %call154, i32 0, i32 6
  %call221 = tail call zeroext i1 @wg_noise_handshake_begin_session(ptr noundef %handshake, ptr noundef %keypairs) #12
  br i1 %call221, label %if.then222, label %do.end220.if.end261_crit_edge

do.end220.if.end261_crit_edge:                    ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end261

if.then222:                                       ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wg_timers_session_derived(ptr noundef nonnull %call154) #12
  tail call void @wg_timers_handshake_complete(ptr noundef nonnull %call154) #12
  tail call void @wg_packet_send_keepalive(ptr noundef nonnull %call154) #12
  br label %if.end261

do.end247:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 200, i32 noundef 9, ptr noundef nonnull @.str.139) #12
  br label %cleanup262

if.end261:                                        ; preds = %if.then222, %do.end220.if.end261_crit_edge, %cleanup
  %peer.2.ph = phi ptr [ %call82, %cleanup ], [ %call154, %if.then222 ], [ %call154, %do.end220.if.end261_crit_edge ]
  tail call fastcc void @local_bh_disable()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %38 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len, align 4
  tail call fastcc void @update_rx_stats(ptr noundef nonnull %peer.2.ph, i32 noundef %39)
  tail call fastcc void @local_bh_enable()
  tail call void @wg_timers_any_authenticated_packet_received(ptr noundef nonnull %peer.2.ph) #12
  tail call void @wg_timers_any_authenticated_packet_traversal(ptr noundef nonnull %peer.2.ph) #12
  tail call void @wg_peer_put(ptr noundef nonnull %peer.2.ph) #12
  br label %cleanup262

cleanup262:                                       ; preds = %if.end261, %do.end247, %do.end191, %if.then151, %do.end119, %if.then80, %do.end71, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @wg_packet_counter_selftest() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1080) #15
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %do.end, label %do.body5, !prof !264

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #16
  br label %cleanup

do.body5:                                         ; preds = %entry
  %1 = call ptr @memset(ptr %call7.i, i32 0, i32 1080)
  %lock = getelementptr inbounds %struct.noise_replay_counter, ptr %call7.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @wg_packet_counter_selftest.__key, i16 noundef signext 3) #12
  %call13 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call13, label %do.body5.do.body24_crit_edge, label %do.end18

do.body5.do.body24_crit_edge:                     ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body24

do.end18:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #14
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 1) #16
  br label %do.body24

do.body24:                                        ; preds = %do.end18, %do.body5.do.body24_crit_edge
  %call26 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 1)
  br i1 %call26, label %do.body24.do.body39_crit_edge, label %do.end33

do.body24.do.body39_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body39

do.end33:                                         ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 2) #16
  br label %do.body39

do.body39:                                        ; preds = %do.end33, %do.body24.do.body39_crit_edge
  %success.1.off0 = phi i1 [ false, %do.end33 ], [ %call13, %do.body24.do.body39_crit_edge ]
  %call41 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 1)
  br i1 %call41, label %do.end48, label %do.body39.do.body54_crit_edge

do.body39.do.body54_crit_edge:                    ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body54

do.end48:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 3) #16
  br label %do.body54

do.body54:                                        ; preds = %do.end48, %do.body39.do.body54_crit_edge
  %success.2.off0 = phi i1 [ false, %do.end48 ], [ %success.1.off0, %do.body39.do.body54_crit_edge ]
  %call56 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 9)
  br i1 %call56, label %do.body54.do.body69_crit_edge, label %do.end63

do.body54.do.body69_crit_edge:                    ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body69

do.end63:                                         ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #14
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 4) #16
  br label %do.body69

do.body69:                                        ; preds = %do.end63, %do.body54.do.body69_crit_edge
  %success.3.off0 = phi i1 [ false, %do.end63 ], [ %success.2.off0, %do.body54.do.body69_crit_edge ]
  %call71 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8)
  br i1 %call71, label %do.body69.do.body84_crit_edge, label %do.end78

do.body69.do.body84_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body84

do.end78:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #14
  %call80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 5) #16
  br label %do.body84

do.body84:                                        ; preds = %do.end78, %do.body69.do.body84_crit_edge
  %success.4.off0 = phi i1 [ false, %do.end78 ], [ %success.3.off0, %do.body69.do.body84_crit_edge ]
  %call86 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 7)
  br i1 %call86, label %do.body84.do.body99_crit_edge, label %do.end93

do.body84.do.body99_crit_edge:                    ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body99

do.end93:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #14
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 6) #16
  br label %do.body99

do.body99:                                        ; preds = %do.end93, %do.body84.do.body99_crit_edge
  %success.5.off0 = phi i1 [ false, %do.end93 ], [ %success.4.off0, %do.body84.do.body99_crit_edge ]
  %call101 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 7)
  br i1 %call101, label %do.end108, label %do.body99.do.body114_crit_edge

do.body99.do.body114_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body114

do.end108:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #14
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 7) #16
  br label %do.body114

do.body114:                                       ; preds = %do.end108, %do.body99.do.body114_crit_edge
  %success.6.off0 = phi i1 [ false, %do.end108 ], [ %success.5.off0, %do.body99.do.body114_crit_edge ]
  %call116 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8161)
  br i1 %call116, label %do.body114.do.body129_crit_edge, label %do.end123

do.body114.do.body129_crit_edge:                  ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body129

do.end123:                                        ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #14
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 8) #16
  br label %do.body129

do.body129:                                       ; preds = %do.end123, %do.body114.do.body129_crit_edge
  %success.7.off0 = phi i1 [ false, %do.end123 ], [ %success.6.off0, %do.body114.do.body129_crit_edge ]
  %call131 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8160)
  br i1 %call131, label %do.body129.do.body144_crit_edge, label %do.end138

do.body129.do.body144_crit_edge:                  ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body144

do.end138:                                        ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #14
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 9) #16
  br label %do.body144

do.body144:                                       ; preds = %do.end138, %do.body129.do.body144_crit_edge
  %success.8.off0 = phi i1 [ false, %do.end138 ], [ %success.7.off0, %do.body129.do.body144_crit_edge ]
  %call146 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8160)
  br i1 %call146, label %do.end153, label %do.body144.do.body159_crit_edge

do.body144.do.body159_crit_edge:                  ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body159

do.end153:                                        ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #14
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 10) #16
  br label %do.body159

do.body159:                                       ; preds = %do.end153, %do.body144.do.body159_crit_edge
  %success.9.off0 = phi i1 [ false, %do.end153 ], [ %success.8.off0, %do.body144.do.body159_crit_edge ]
  %call161 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8159)
  br i1 %call161, label %do.body159.do.body174_crit_edge, label %do.end168

do.body159.do.body174_crit_edge:                  ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body174

do.end168:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #14
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 11) #16
  br label %do.body174

do.body174:                                       ; preds = %do.end168, %do.body159.do.body174_crit_edge
  %success.10.off0 = phi i1 [ false, %do.end168 ], [ %success.9.off0, %do.body159.do.body174_crit_edge ]
  %call176 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 2)
  br i1 %call176, label %do.body174.do.body189_crit_edge, label %do.end183

do.body174.do.body189_crit_edge:                  ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body189

do.end183:                                        ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #14
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 12) #16
  br label %do.body189

do.body189:                                       ; preds = %do.end183, %do.body174.do.body189_crit_edge
  %success.11.off0 = phi i1 [ false, %do.end183 ], [ %success.10.off0, %do.body174.do.body189_crit_edge ]
  %call191 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 2)
  br i1 %call191, label %do.end198, label %do.body189.do.body204_crit_edge

do.body189.do.body204_crit_edge:                  ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body204

do.end198:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #14
  %call200 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 13) #16
  br label %do.body204

do.body204:                                       ; preds = %do.end198, %do.body189.do.body204_crit_edge
  %success.12.off0 = phi i1 [ false, %do.end198 ], [ %success.11.off0, %do.body189.do.body204_crit_edge ]
  %call206 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8177)
  br i1 %call206, label %do.body204.do.body219_crit_edge, label %do.end213

do.body204.do.body219_crit_edge:                  ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body219

do.end213:                                        ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #14
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 14) #16
  br label %do.body219

do.body219:                                       ; preds = %do.end213, %do.body204.do.body219_crit_edge
  %success.13.off0 = phi i1 [ false, %do.end213 ], [ %success.12.off0, %do.body204.do.body219_crit_edge ]
  %call221 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 3)
  br i1 %call221, label %do.end228, label %do.body219.do.body234_crit_edge

do.body219.do.body234_crit_edge:                  ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body234

do.end228:                                        ; preds = %do.body219
  call void @__sanitizer_cov_trace_pc() #14
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 15) #16
  br label %do.body234

do.body234:                                       ; preds = %do.end228, %do.body219.do.body234_crit_edge
  %success.14.off0 = phi i1 [ false, %do.end228 ], [ %success.13.off0, %do.body219.do.body234_crit_edge ]
  %call236 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8177)
  br i1 %call236, label %do.end243, label %do.body234.do.body249_crit_edge

do.body234.do.body249_crit_edge:                  ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body249

do.end243:                                        ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #14
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 16) #16
  br label %do.body249

do.body249:                                       ; preds = %do.end243, %do.body234.do.body249_crit_edge
  %success.15.off0 = phi i1 [ false, %do.end243 ], [ %success.14.off0, %do.body234.do.body249_crit_edge ]
  %call251 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 32644)
  br i1 %call251, label %do.body249.do.body264_crit_edge, label %do.end258

do.body249.do.body264_crit_edge:                  ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body264

do.end258:                                        ; preds = %do.body249
  call void @__sanitizer_cov_trace_pc() #14
  %call260 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 17) #16
  br label %do.body264

do.body264:                                       ; preds = %do.end258, %do.body249.do.body264_crit_edge
  %success.16.off0 = phi i1 [ false, %do.end258 ], [ %success.15.off0, %do.body249.do.body264_crit_edge ]
  %call266 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 24484)
  br i1 %call266, label %do.body264.do.body279_crit_edge, label %do.end273

do.body264.do.body279_crit_edge:                  ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body279

do.end273:                                        ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #14
  %call275 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 18) #16
  br label %do.body279

do.body279:                                       ; preds = %do.end273, %do.body264.do.body279_crit_edge
  %success.17.off0 = phi i1 [ false, %do.end273 ], [ %success.16.off0, %do.body264.do.body279_crit_edge ]
  %call281 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 10)
  br i1 %call281, label %do.end288, label %do.body279.do.body294_crit_edge

do.body279.do.body294_crit_edge:                  ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body294

do.end288:                                        ; preds = %do.body279
  call void @__sanitizer_cov_trace_pc() #14
  %call290 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 19) #16
  br label %do.body294

do.body294:                                       ; preds = %do.end288, %do.body279.do.body294_crit_edge
  %success.18.off0 = phi i1 [ false, %do.end288 ], [ %success.17.off0, %do.body279.do.body294_crit_edge ]
  %call296 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 24483)
  br i1 %call296, label %do.end303, label %do.body294.do.body309_crit_edge

do.body294.do.body309_crit_edge:                  ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body309

do.end303:                                        ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #14
  %call305 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 20) #16
  br label %do.body309

do.body309:                                       ; preds = %do.end303, %do.body294.do.body309_crit_edge
  %success.19.off0 = phi i1 [ false, %do.end303 ], [ %success.18.off0, %do.body294.do.body309_crit_edge ]
  %call311 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 24482)
  br i1 %call311, label %do.end318, label %do.body309.do.body324_crit_edge

do.body309.do.body324_crit_edge:                  ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body324

do.end318:                                        ; preds = %do.body309
  call void @__sanitizer_cov_trace_pc() #14
  %call320 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 21) #16
  br label %do.body324

do.body324:                                       ; preds = %do.end318, %do.body309.do.body324_crit_edge
  %success.20.off0 = phi i1 [ false, %do.end318 ], [ %success.19.off0, %do.body309.do.body324_crit_edge ]
  %call326 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 24485)
  br i1 %call326, label %do.body324.do.body339_crit_edge, label %do.end333

do.body324.do.body339_crit_edge:                  ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body339

do.end333:                                        ; preds = %do.body324
  call void @__sanitizer_cov_trace_pc() #14
  %call335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 22) #16
  br label %do.body339

do.body339:                                       ; preds = %do.end333, %do.body324.do.body339_crit_edge
  %success.21.off0 = phi i1 [ false, %do.end333 ], [ %success.20.off0, %do.body324.do.body339_crit_edge ]
  %call341 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 24484)
  br i1 %call341, label %do.end348, label %do.body339.do.body354_crit_edge

do.body339.do.body354_crit_edge:                  ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body354

do.end348:                                        ; preds = %do.body339
  call void @__sanitizer_cov_trace_pc() #14
  %call350 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 23) #16
  br label %do.body354

do.body354:                                       ; preds = %do.end348, %do.body339.do.body354_crit_edge
  %success.22.off0 = phi i1 [ false, %do.end348 ], [ %success.21.off0, %do.body339.do.body354_crit_edge ]
  %call356 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call356, label %do.end363, label %do.body354.do.body384_crit_edge

do.body354.do.body384_crit_edge:                  ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body384

do.end363:                                        ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #14
  %call365 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 24) #16
  br label %do.body384

do.body384:                                       ; preds = %do.end363, %do.body354.do.body384_crit_edge
  %success.23.off0 = phi i1 [ false, %do.end363 ], [ %success.22.off0, %do.body354.do.body384_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %call386 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef -8163)
  br i1 %call386, label %do.body384.do.body414_crit_edge, label %do.end393

do.body384.do.body414_crit_edge:                  ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body414

do.end393:                                        ; preds = %do.body384
  call void @__sanitizer_cov_trace_pc() #14
  %call395 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 26) #16
  br label %do.body414

do.body414:                                       ; preds = %do.end393, %do.body384.do.body414_crit_edge
  %success.25.off0 = phi i1 [ false, %do.end393 ], [ %success.23.off0, %do.body384.do.body414_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %call416 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef -8163)
  br i1 %call416, label %do.end423, label %do.body414.do.body429_crit_edge

do.body414.do.body429_crit_edge:                  ; preds = %do.body414
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body429

do.end423:                                        ; preds = %do.body414
  call void @__sanitizer_cov_trace_pc() #14
  %call425 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 28) #16
  br label %do.body429

do.body429:                                       ; preds = %do.end423, %do.body414.do.body429_crit_edge
  %success.27.off0 = phi i1 [ false, %do.end423 ], [ %success.25.off0, %do.body414.do.body429_crit_edge ]
  %call431 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef -8164)
  br i1 %call431, label %do.body429.do.body474_crit_edge, label %do.end438

do.body429.do.body474_crit_edge:                  ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body474

do.end438:                                        ; preds = %do.body429
  call void @__sanitizer_cov_trace_pc() #14
  %call440 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 29) #16
  br label %do.body474

do.body474:                                       ; preds = %do.end438, %do.body429.do.body474_crit_edge
  %success.28.off0 = phi i1 [ false, %do.end438 ], [ %success.27.off0, %do.body429.do.body474_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  %call476 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef -8164)
  br i1 %call476, label %do.end483, label %do.body474.do.body489_crit_edge

do.body474.do.body489_crit_edge:                  ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body489

do.end483:                                        ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #14
  %call485 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 32) #16
  br label %do.body489

do.body489:                                       ; preds = %do.end483, %do.body474.do.body489_crit_edge
  %success.31.off0 = phi i1 [ false, %do.end483 ], [ %success.28.off0, %do.body474.do.body489_crit_edge ]
  %call491 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef -8165)
  br i1 %call491, label %do.body489.do.body504_crit_edge, label %do.end498

do.body489.do.body504_crit_edge:                  ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body504

do.end498:                                        ; preds = %do.body489
  call void @__sanitizer_cov_trace_pc() #14
  %call500 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 33) #16
  br label %do.body504

do.body504:                                       ; preds = %do.end498, %do.body489.do.body504_crit_edge
  %success.32.off0 = phi i1 [ false, %do.end498 ], [ %success.31.off0, %do.body489.do.body504_crit_edge ]
  %call506 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call506, label %do.end513, label %do.body504.do.body519_crit_edge

do.body504.do.body519_crit_edge:                  ; preds = %do.body504
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body519

do.end513:                                        ; preds = %do.body504
  call void @__sanitizer_cov_trace_pc() #14
  %call515 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 34) #16
  br label %do.body519

do.body519:                                       ; preds = %do.end513, %do.body504.do.body519_crit_edge
  %success.33.off0 = phi i1 [ false, %do.end513 ], [ %success.32.off0, %do.body504.do.body519_crit_edge ]
  %2 = call ptr @memset(ptr %call7.i, i32 0, i32 1080)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @wg_packet_counter_selftest.__key.74, i16 noundef signext 3) #12
  br label %do.body529

do.body529:                                       ; preds = %for.inc.do.body529_crit_edge, %do.body519
  %test_num.01087 = phi i32 [ 34, %do.body519 ], [ %inc530, %for.inc.do.body529_crit_edge ]
  %i.01086 = phi i32 [ 1, %do.body519 ], [ %inc545, %for.inc.do.body529_crit_edge ]
  %success.34.off01085 = phi i1 [ %success.33.off0, %do.body519 ], [ %success.35.off0, %for.inc.do.body529_crit_edge ]
  %inc530 = add nuw nsw i32 %test_num.01087, 1
  %conv531 = zext i32 %i.01086 to i64
  %call532 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef %conv531)
  br i1 %call532, label %do.body529.for.inc_crit_edge, label %do.end539

do.body529.for.inc_crit_edge:                     ; preds = %do.body529
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end539:                                        ; preds = %do.body529
  call void @__sanitizer_cov_trace_pc() #14
  %call541 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %inc530) #16
  br label %for.inc

for.inc:                                          ; preds = %do.end539, %do.body529.for.inc_crit_edge
  %success.35.off0 = phi i1 [ false, %do.end539 ], [ %success.34.off01085, %do.body529.for.inc_crit_edge ]
  %inc545 = add nuw nsw i32 %i.01086, 1
  %exitcond.not = icmp eq i32 %inc530, 8194
  br i1 %exitcond.not, label %do.body546, label %for.inc.do.body529_crit_edge

for.inc.do.body529_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body529

do.body546:                                       ; preds = %for.inc
  %call548 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call548, label %do.body546.do.body561_crit_edge, label %do.end555

do.body546.do.body561_crit_edge:                  ; preds = %do.body546
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body561

do.end555:                                        ; preds = %do.body546
  call void @__sanitizer_cov_trace_pc() #14
  %call557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 8195) #16
  br label %do.body561

do.body561:                                       ; preds = %do.end555, %do.body546.do.body561_crit_edge
  %success.36.off0 = phi i1 [ false, %do.end555 ], [ %success.35.off0, %do.body546.do.body561_crit_edge ]
  %call563 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call563, label %do.end570, label %do.body561.do.body576_crit_edge

do.body561.do.body576_crit_edge:                  ; preds = %do.body561
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body576

do.end570:                                        ; preds = %do.body561
  call void @__sanitizer_cov_trace_pc() #14
  %call572 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 8196) #16
  br label %do.body576

do.body576:                                       ; preds = %do.end570, %do.body561.do.body576_crit_edge
  %success.37.off0 = phi i1 [ false, %do.end570 ], [ %success.36.off0, %do.body561.do.body576_crit_edge ]
  %3 = call ptr @memset(ptr %call7.i, i32 0, i32 1080)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @wg_packet_counter_selftest.__key.81, i16 noundef signext 3) #12
  br label %do.body588

do.body588:                                       ; preds = %for.inc604.do.body588_crit_edge, %do.body576
  %test_num.11090 = phi i32 [ 8196, %do.body576 ], [ %inc589, %for.inc604.do.body588_crit_edge ]
  %i.11089 = phi i32 [ 2, %do.body576 ], [ %inc605, %for.inc604.do.body588_crit_edge ]
  %success.38.off01088 = phi i1 [ %success.37.off0, %do.body576 ], [ %success.39.off0, %for.inc604.do.body588_crit_edge ]
  %inc589 = add nuw nsw i32 %test_num.11090, 1
  %conv590 = zext i32 %i.11089 to i64
  %call591 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef %conv590)
  br i1 %call591, label %do.body588.for.inc604_crit_edge, label %do.end598

do.body588.for.inc604_crit_edge:                  ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc604

do.end598:                                        ; preds = %do.body588
  call void @__sanitizer_cov_trace_pc() #14
  %call600 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %inc589) #16
  br label %for.inc604

for.inc604:                                       ; preds = %do.end598, %do.body588.for.inc604_crit_edge
  %success.39.off0 = phi i1 [ false, %do.end598 ], [ %success.38.off01088, %do.body588.for.inc604_crit_edge ]
  %inc605 = add nuw nsw i32 %i.11089, 1
  %exitcond1103.not = icmp eq i32 %inc589, 16356
  br i1 %exitcond1103.not, label %do.body607, label %for.inc604.do.body588_crit_edge

for.inc604.do.body588_crit_edge:                  ; preds = %for.inc604
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body588

do.body607:                                       ; preds = %for.inc604
  %call609 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 1)
  br i1 %call609, label %do.body607.do.body622_crit_edge, label %do.end616

do.body607.do.body622_crit_edge:                  ; preds = %do.body607
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body622

do.end616:                                        ; preds = %do.body607
  call void @__sanitizer_cov_trace_pc() #14
  %call618 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 16357) #16
  br label %do.body622

do.body622:                                       ; preds = %do.end616, %do.body607.do.body622_crit_edge
  %success.40.off0 = phi i1 [ false, %do.end616 ], [ %success.39.off0, %do.body607.do.body622_crit_edge ]
  %call624 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call624, label %do.end631, label %do.body622.do.body637_crit_edge

do.body622.do.body637_crit_edge:                  ; preds = %do.body622
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body637

do.end631:                                        ; preds = %do.body622
  call void @__sanitizer_cov_trace_pc() #14
  %call633 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 16358) #16
  br label %do.body637

do.body637:                                       ; preds = %do.end631, %do.body622.do.body637_crit_edge
  %success.41.off0 = phi i1 [ false, %do.end631 ], [ %success.40.off0, %do.body622.do.body637_crit_edge ]
  %4 = call ptr @memset(ptr %call7.i, i32 0, i32 1080)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @wg_packet_counter_selftest.__key.88, i16 noundef signext 3) #12
  br label %do.body649

do.body649:                                       ; preds = %do.end664.do.body649_crit_edge, %do.body637
  %dec1093 = phi i32 [ 8160, %do.body637 ], [ %dec, %do.end664.do.body649_crit_edge ]
  %test_num.21092 = phi i32 [ 16358, %do.body637 ], [ %inc650, %do.end664.do.body649_crit_edge ]
  %success.42.off01091 = phi i1 [ %success.41.off0, %do.body637 ], [ %success.43.off0, %do.end664.do.body649_crit_edge ]
  %inc650 = add nuw nsw i32 %test_num.21092, 1
  %conv651 = zext i32 %dec1093 to i64
  %call652 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef %conv651)
  br i1 %call652, label %do.body649.do.end664_crit_edge, label %do.end659

do.body649.do.end664_crit_edge:                   ; preds = %do.body649
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end664

do.end659:                                        ; preds = %do.body649
  call void @__sanitizer_cov_trace_pc() #14
  %call661 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %inc650) #16
  br label %do.end664

do.end664:                                        ; preds = %do.end659, %do.body649.do.end664_crit_edge
  %success.43.off0 = phi i1 [ false, %do.end659 ], [ %success.42.off01091, %do.body649.do.end664_crit_edge ]
  %dec = add nsw i32 %dec1093, -1
  %cmp646.not = icmp eq i32 %dec1093, 0
  br i1 %cmp646.not, label %do.body666, label %do.end664.do.body649_crit_edge

do.end664.do.body649_crit_edge:                   ; preds = %do.end664
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body649

do.body666:                                       ; preds = %do.end664
  %5 = call ptr @memset(ptr %call7.i, i32 0, i32 1080)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @wg_packet_counter_selftest.__key.91, i16 noundef signext 3) #12
  br label %do.body679

do.body679:                                       ; preds = %do.end694.do.body679_crit_edge, %do.body666
  %dec6751096 = phi i32 [ 8161, %do.body666 ], [ %dec675, %do.end694.do.body679_crit_edge ]
  %test_num.31095 = phi i32 [ 24519, %do.body666 ], [ %inc680, %do.end694.do.body679_crit_edge ]
  %success.44.off01094 = phi i1 [ %success.43.off0, %do.body666 ], [ %success.45.off0, %do.end694.do.body679_crit_edge ]
  %inc680 = add nuw nsw i32 %test_num.31095, 1
  %conv681 = zext i32 %dec6751096 to i64
  %call682 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef %conv681)
  br i1 %call682, label %do.body679.do.end694_crit_edge, label %do.end689

do.body679.do.end694_crit_edge:                   ; preds = %do.body679
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end694

do.end689:                                        ; preds = %do.body679
  call void @__sanitizer_cov_trace_pc() #14
  %call691 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %inc680) #16
  br label %do.end694

do.end694:                                        ; preds = %do.end689, %do.body679.do.end694_crit_edge
  %success.45.off0 = phi i1 [ false, %do.end689 ], [ %success.44.off01094, %do.body679.do.end694_crit_edge ]
  %dec675 = add nsw i32 %dec6751096, -1
  %exitcond1104.not = icmp eq i32 %inc680, 32680
  br i1 %exitcond1104.not, label %do.body696, label %do.end694.do.body679_crit_edge

do.end694.do.body679_crit_edge:                   ; preds = %do.end694
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body679

do.body696:                                       ; preds = %do.end694
  %call698 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call698, label %do.end705, label %do.body696.do.body711_crit_edge

do.body696.do.body711_crit_edge:                  ; preds = %do.body696
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body711

do.end705:                                        ; preds = %do.body696
  call void @__sanitizer_cov_trace_pc() #14
  %call707 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 32681) #16
  br label %do.body711

do.body711:                                       ; preds = %do.end705, %do.body696.do.body711_crit_edge
  %success.46.off0 = phi i1 [ false, %do.end705 ], [ %success.45.off0, %do.body696.do.body711_crit_edge ]
  %6 = call ptr @memset(ptr %call7.i, i32 0, i32 1080)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @wg_packet_counter_selftest.__key.96, i16 noundef signext 3) #12
  br label %do.body724

do.body724:                                       ; preds = %do.end739.do.body724_crit_edge, %do.body711
  %dec7201099 = phi i32 [ 8160, %do.body711 ], [ %dec720, %do.end739.do.body724_crit_edge ]
  %test_num.41098 = phi i32 [ 32681, %do.body711 ], [ %inc725, %do.end739.do.body724_crit_edge ]
  %success.47.off01097 = phi i1 [ %success.46.off0, %do.body711 ], [ %success.48.off0, %do.end739.do.body724_crit_edge ]
  %inc725 = add nuw nsw i32 %test_num.41098, 1
  %conv726 = zext i32 %dec7201099 to i64
  %call727 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef %conv726)
  br i1 %call727, label %do.body724.do.end739_crit_edge, label %do.end734

do.body724.do.end739_crit_edge:                   ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end739

do.end734:                                        ; preds = %do.body724
  call void @__sanitizer_cov_trace_pc() #14
  %call736 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %inc725) #16
  br label %do.end739

do.end739:                                        ; preds = %do.end734, %do.body724.do.end739_crit_edge
  %success.48.off0 = phi i1 [ false, %do.end734 ], [ %success.47.off01097, %do.body724.do.end739_crit_edge ]
  %dec720 = add nsw i32 %dec7201099, -1
  %exitcond1105.not = icmp eq i32 %inc725, 40841
  br i1 %exitcond1105.not, label %do.body741, label %do.end739.do.body724_crit_edge

do.end739.do.body724_crit_edge:                   ; preds = %do.end739
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body724

do.body741:                                       ; preds = %do.end739
  %call743 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8161)
  br i1 %call743, label %do.body741.do.body756_crit_edge, label %do.end750

do.body741.do.body756_crit_edge:                  ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body756

do.end750:                                        ; preds = %do.body741
  call void @__sanitizer_cov_trace_pc() #14
  %call752 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 40842) #16
  br label %do.body756

do.body756:                                       ; preds = %do.end750, %do.body741.do.body756_crit_edge
  %success.49.off0 = phi i1 [ false, %do.end750 ], [ %success.48.off0, %do.body741.do.body756_crit_edge ]
  %call758 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call758, label %do.end765, label %do.body756.do.body771_crit_edge

do.body756.do.body771_crit_edge:                  ; preds = %do.body756
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body771

do.end765:                                        ; preds = %do.body756
  call void @__sanitizer_cov_trace_pc() #14
  %call767 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 40843) #16
  br label %do.body771

do.body771:                                       ; preds = %do.end765, %do.body756.do.body771_crit_edge
  %success.50.off0 = phi i1 [ false, %do.end765 ], [ %success.49.off0, %do.body756.do.body771_crit_edge ]
  %7 = call ptr @memset(ptr %call7.i, i32 0, i32 1080)
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @wg_packet_counter_selftest.__key.103, i16 noundef signext 3) #12
  br label %do.body784

do.body784:                                       ; preds = %do.end799.do.body784_crit_edge, %do.body771
  %dec7801102 = phi i32 [ 8160, %do.body771 ], [ %dec780, %do.end799.do.body784_crit_edge ]
  %test_num.51101 = phi i32 [ 40843, %do.body771 ], [ %inc785, %do.end799.do.body784_crit_edge ]
  %success.51.off01100 = phi i1 [ %success.50.off0, %do.body771 ], [ %success.52.off0, %do.end799.do.body784_crit_edge ]
  %inc785 = add nuw nsw i32 %test_num.51101, 1
  %conv786 = zext i32 %dec7801102 to i64
  %call787 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef %conv786)
  br i1 %call787, label %do.body784.do.end799_crit_edge, label %do.end794

do.body784.do.end799_crit_edge:                   ; preds = %do.body784
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end799

do.end794:                                        ; preds = %do.body784
  call void @__sanitizer_cov_trace_pc() #14
  %call796 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %inc785) #16
  br label %do.end799

do.end799:                                        ; preds = %do.end794, %do.body784.do.end799_crit_edge
  %success.52.off0 = phi i1 [ false, %do.end794 ], [ %success.51.off01100, %do.body784.do.end799_crit_edge ]
  %dec780 = add nsw i32 %dec7801102, -1
  %exitcond1106.not = icmp eq i32 %inc785, 49003
  br i1 %exitcond1106.not, label %do.body801, label %do.end799.do.body784_crit_edge

do.end799.do.body784_crit_edge:                   ; preds = %do.end799
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body784

do.body801:                                       ; preds = %do.end799
  %call803 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 0)
  br i1 %call803, label %do.body816, label %do.body816.thread

do.body816:                                       ; preds = %do.body801
  %call818 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8161)
  br i1 %call818, label %do.end830, label %do.body816.do.end830.thread_crit_edge

do.body816.do.end830.thread_crit_edge:            ; preds = %do.body816
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end830.thread

do.body816.thread:                                ; preds = %do.body801
  %call812 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 49004) #16
  %call8181108 = tail call fastcc zeroext i1 @counter_validate(ptr noundef nonnull %call7.i, i64 noundef 8161)
  br i1 %call8181108, label %do.body816.thread.if.end838_crit_edge, label %do.body816.thread.do.end830.thread_crit_edge

do.body816.thread.do.end830.thread_crit_edge:     ; preds = %do.body816.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end830.thread

do.body816.thread.if.end838_crit_edge:            ; preds = %do.body816.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end838

do.end830.thread:                                 ; preds = %do.body816.thread.do.end830.thread_crit_edge, %do.body816.do.end830.thread_crit_edge
  %call827 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef 49005) #16
  br label %if.end838

do.end830:                                        ; preds = %do.body816
  br i1 %success.52.off0, label %do.end835, label %do.end830.if.end838_crit_edge

do.end830.if.end838_crit_edge:                    ; preds = %do.end830
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end838

do.end835:                                        ; preds = %do.end830
  call void @__sanitizer_cov_trace_pc() #14
  %call837 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #16
  br label %if.end838

if.end838:                                        ; preds = %do.end835, %do.end830.if.end838_crit_edge, %do.end830.thread, %do.body816.thread.if.end838_crit_edge
  %success.54.off01084 = phi i1 [ false, %do.end830.thread ], [ true, %do.end835 ], [ false, %do.end830.if.end838_crit_edge ], [ false, %do.body816.thread.if.end838_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end838, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ %success.54.off01084, %if.end838 ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @counter_validate(ptr noundef %counter, i64 noundef %their_counter) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.noise_replay_counter, ptr %counter, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #12
  %0 = ptrtoint ptr %counter to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %counter, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8162, i64 %1)
  %cmp = icmp ugt i64 %1, -8162
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8163, i64 %their_counter)
  %cmp2 = icmp ugt i64 %their_counter, -8163
  %spec.select = or i1 %cmp2, %cmp
  br i1 %spec.select, label %entry.out_crit_edge, label %if.end, !prof !264

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %inc = add nuw i64 %their_counter, 1
  %add = add nuw i64 %their_counter, 8161
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %1)
  %cmp5 = icmp ult i64 %add, %1
  br i1 %cmp5, label %if.end.out_crit_edge, label %if.end13, !prof !264

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end13:                                         ; preds = %if.end
  %shr = lshr i64 %inc, 5
  %conv = trunc i64 %shr to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %their_counter)
  %cmp15.not = icmp ugt i64 %1, %their_counter
  br i1 %cmp15.not, label %if.end13.if.end34_crit_edge, label %if.then23, !prof !264

if.end13.if.end34_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then23:                                        ; preds = %if.end13
  %shr25 = lshr i64 %1, 5
  %conv26 = trunc i64 %shr25 to i32
  %sub = sub i32 %conv, %conv26
  %2 = tail call i32 @llvm.umin.i32(i32 %sub, i32 256)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp29.not66 = icmp eq i32 %2, 0
  br i1 %cmp29.not66, label %if.then23.for.end_crit_edge, label %if.then23.for.body_crit_edge

if.then23.for.body_crit_edge:                     ; preds = %if.then23
  br label %for.body

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then23.for.body_crit_edge
  %i.067 = phi i32 [ %inc32, %for.body.for.body_crit_edge ], [ 1, %if.then23.for.body_crit_edge ]
  %add31 = add i32 %i.067, %conv26
  %and = and i32 %add31, 255
  %arrayidx = getelementptr %struct.noise_replay_counter, ptr %counter, i32 0, i32 2, i32 %and
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx, align 4
  %inc32 = add nuw nsw i32 %i.067, 1
  %exitcond = icmp eq i32 %i.067, %2
  br i1 %exitcond, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then23.for.end_crit_edge
  %4 = ptrtoint ptr %counter to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %inc, ptr %counter, align 8
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.end13.if.end34_crit_edge
  %and35 = and i32 %conv, 255
  %5 = trunc i64 %inc to i32
  %conv37 = and i32 %5, 31
  %arrayidx39 = getelementptr %struct.noise_replay_counter, ptr %counter, i32 0, i32 2, i32 %and35
  %call = tail call i32 @_test_and_set_bit(i32 noundef %conv37, ptr noundef %arrayidx39) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool40.not = icmp eq i32 %call, 0
  br label %out

out:                                              ; preds = %if.end34, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.0.off0 = phi i1 [ false, %entry.out_crit_edge ], [ false, %if.end.out_crit_edge ], [ %tobool40.not, %if.end34 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #12
  ret i1 %ret.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wg_packet_rx_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  %keys.i.i = alloca %struct.flow_keys_basic, align 4
  %endpoint = alloca %struct.endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -1320
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %endpoint) #12
  %0 = call ptr @memset(ptr %endpoint, i32 255, i32 44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %budget)
  %cmp = icmp slt i32 %budget, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader, !prof !264

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %rx_queue = getelementptr i8, ptr %napi, i32 -1292
  %peeked.i = getelementptr i8, ptr %napi, i32 -1284
  br label %while.cond

while.cond:                                       ; preds = %if.end70.while.cond_crit_edge, %while.cond.preheader
  %work_done.0 = phi i32 [ %inc, %if.end70.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  %1 = ptrtoint ptr %peeked.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %peeked.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %wg_prev_queue_peek.exit, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

wg_prev_queue_peek.exit:                          ; preds = %while.cond
  %call.i = call ptr @wg_prev_queue_dequeue(ptr noundef %rx_queue) #12
  %3 = ptrtoint ptr %peeked.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %peeked.i, align 4
  %cmp2.not = icmp eq ptr %call.i, null
  br i1 %cmp2.not, label %wg_prev_queue_peek.exit.while.end_crit_edge, label %wg_prev_queue_peek.exit.land.rhs_crit_edge

wg_prev_queue_peek.exit.land.rhs_crit_edge:       ; preds = %wg_prev_queue_peek.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

wg_prev_queue_peek.exit.while.end_crit_edge:      ; preds = %wg_prev_queue_peek.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

land.rhs:                                         ; preds = %wg_prev_queue_peek.exit.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %retval.0.i107114 = phi ptr [ %call.i, %wg_prev_queue_peek.exit.land.rhs_crit_edge ], [ %2, %while.cond.land.rhs_crit_edge ]
  %cb = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 3
  %state3 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 3, i32 12
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %state3, i32 noundef 4) #12
  %4 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state3, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %6 = ptrtoint ptr %peeked.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %peeked.i, align 4
  %keypair9 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %keypair9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %keypair9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp10.not = icmp eq i32 %5, 1
  br i1 %cmp10.not, label %if.end18, label %while.body.if.then69_crit_edge, !prof !266

while.body.if.then69_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.end18:                                         ; preds = %while.body
  %receiving_counter = getelementptr inbounds %struct.noise_keypair, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %cb to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %cb, align 8
  %lock.i = getelementptr inbounds %struct.noise_keypair, ptr %8, i32 0, i32 4, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #12
  %11 = ptrtoint ptr %receiving_counter to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %receiving_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8162, i64 %12)
  %cmp.i = icmp ugt i64 %12, -8162
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8163, i64 %10)
  %cmp2.i = icmp ugt i64 %10, -8163
  %spec.select.i = or i1 %cmp2.i, %cmp.i
  br i1 %spec.select.i, label %if.end18.counter_validate.exit.thread_crit_edge, label %if.end.i109, !prof !264

if.end18.counter_validate.exit.thread_crit_edge:  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %counter_validate.exit.thread

if.end.i109:                                      ; preds = %if.end18
  %inc.i = add nuw i64 %10, 1
  %add.i = add nuw i64 %10, 8161
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %12)
  %cmp5.i = icmp ult i64 %add.i, %12
  br i1 %cmp5.i, label %if.end.i109.counter_validate.exit.thread_crit_edge, label %if.end13.i, !prof !264

if.end.i109.counter_validate.exit.thread_crit_edge: ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #14
  br label %counter_validate.exit.thread

if.end13.i:                                       ; preds = %if.end.i109
  %shr.i = lshr i64 %inc.i, 5
  %conv.i = trunc i64 %shr.i to i32
  call void @__sanitizer_cov_trace_cmp8(i64 %12, i64 %10)
  %cmp15.not.i = icmp ugt i64 %12, %10
  br i1 %cmp15.not.i, label %if.end13.i.counter_validate.exit_crit_edge, label %if.then23.i, !prof !264

if.end13.i.counter_validate.exit_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %counter_validate.exit

if.then23.i:                                      ; preds = %if.end13.i
  %shr25.i = lshr i64 %12, 5
  %conv26.i = trunc i64 %shr25.i to i32
  %sub.i = sub i32 %conv.i, %conv26.i
  %13 = call i32 @llvm.umin.i32(i32 %sub.i, i32 256) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp29.not66.i = icmp eq i32 %13, 0
  br i1 %cmp29.not66.i, label %if.then23.i.for.end.i_crit_edge, label %if.then23.i.for.body.i_crit_edge

if.then23.i.for.body.i_crit_edge:                 ; preds = %if.then23.i
  br label %for.body.i

if.then23.i.for.end.i_crit_edge:                  ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then23.i.for.body.i_crit_edge
  %i.067.i = phi i32 [ %inc32.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.then23.i.for.body.i_crit_edge ]
  %add31.i = add i32 %i.067.i, %conv26.i
  %and.i = and i32 %add31.i, 255
  %arrayidx.i = getelementptr %struct.noise_keypair, ptr %8, i32 0, i32 4, i32 2, i32 %and.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx.i, align 4
  %inc32.i = add nuw nsw i32 %i.067.i, 1
  %exitcond.i = icmp eq i32 %i.067.i, %13
  br i1 %exitcond.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then23.i.for.end.i_crit_edge
  %15 = ptrtoint ptr %receiving_counter to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %inc.i, ptr %receiving_counter, align 8
  br label %counter_validate.exit

counter_validate.exit.thread:                     ; preds = %if.end.i109.counter_validate.exit.thread_crit_edge, %if.end18.counter_validate.exit.thread_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  br label %do.body

counter_validate.exit:                            ; preds = %for.end.i, %if.end13.i.counter_validate.exit_crit_edge
  %and35.i = and i32 %conv.i, 255
  %16 = trunc i64 %inc.i to i32
  %conv37.i = and i32 %16, 31
  %arrayidx39.i = getelementptr %struct.noise_keypair, ptr %8, i32 0, i32 4, i32 2, i32 %and35.i
  %call.i110 = call i32 @_test_and_set_bit(i32 noundef %conv37.i, ptr noundef %arrayidx39.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool40.not.i = icmp eq i32 %call.i110, 0
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #12
  br i1 %tobool40.not.i, label %if.end51, label %counter_validate.exit.do.body_crit_edge, !prof !266

counter_validate.exit.do.body_crit_edge:          ; preds = %counter_validate.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %counter_validate.exit.do.body_crit_edge, %counter_validate.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_rx_poll.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_rx_poll, %if.then69)) #12
          to label %land.lhs.true [label %if.then69], !srcloc !268

land.lhs.true:                                    ; preds = %do.body
  %call42 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true.if.then69_crit_edge, label %if.then44

land.lhs.true.if.then69_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 128
  %21 = ptrtoint ptr %cb to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cb, align 8
  %23 = ptrtoint ptr %receiving_counter to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %receiving_counter, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_rx_poll.descriptor, ptr noundef nonnull @.str.116, ptr noundef %20, i64 noundef %22, i64 noundef %24) #12
  br label %if.then69

if.end51:                                         ; preds = %counter_validate.exit
  %call52 = call i32 @wg_socket_endpoint_from_skb(ptr noundef nonnull %endpoint, ptr noundef nonnull %retval.0.i107114) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end61, label %if.end51.if.then69_crit_edge, !prof !266

if.end51.if.then69_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then69

if.end61:                                         ; preds = %if.end51
  %25 = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 15
  call void @skb_scrub_packet(ptr noundef %retval.0.i107114, i1 noundef zeroext true) #12
  %26 = call ptr @memset(ptr %25, i32 0, i32 64)
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 10
  %27 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %queue_mapping.i, align 8
  %nohdr.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 12
  %28 = ptrtoint ptr %nohdr.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load19.i = load i8, ptr %nohdr.i, align 2
  %bf.clear23.i = and i8 %bf.load19.i, -73
  store i8 %bf.clear23.i, ptr %nohdr.i, align 2
  %mac_len.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 8
  %29 = ptrtoint ptr %mac_len.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %mac_len.i, align 4
  %30 = getelementptr inbounds %struct.anon.4, ptr %retval.0.i107114, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %30, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 19
  %32 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 18
  %34 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i111 = trunc i32 %sub.ptr.sub.i.i to i16
  %hdr_len.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 9
  %36 = ptrtoint ptr %hdr_len.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i111, ptr %hdr_len.i, align 2
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 15, i32 0, i32 21
  %37 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i111, ptr %mac_header.i.i, align 2
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i111, ptr %network_header.i.i, align 4
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 15, i32 0, i32 19
  %39 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i111, ptr %transport_header.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %keys.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %conv.i111)
  %cmp.i.not.i.i = icmp eq i16 %conv.i111, -1
  br i1 %cmp.i.not.i.i, label %if.end.i.i, label %if.end61.wg_reset_packet.exit_crit_edge

if.end61.wg_reset_packet.exit_crit_edge:          ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %wg_reset_packet.exit

if.end.i.i:                                       ; preds = %if.end61
  %40 = call ptr @memset(ptr %keys.i.i, i32 0, i32 12)
  %call.i.i.i = call zeroext i1 @__skb_flow_dissect(ptr noundef null, ptr noundef %retval.0.i107114, ptr noundef nonnull @flow_keys_basic_dissector, ptr noundef nonnull %keys.i.i, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #12
  br i1 %call.i.i.i, label %if.then2.i.i, label %if.end.i.i.wg_reset_packet.exit_crit_edge

if.end.i.i.wg_reset_packet.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wg_reset_packet.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %41 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %keys.i.i, align 4
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i.i, align 4
  %45 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %conv1.i.i.i = add i16 %42, %conv.i.i.i.i
  %47 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv1.i.i.i, ptr %transport_header.i.i, align 2
  br label %wg_reset_packet.exit

wg_reset_packet.exit:                             ; preds = %if.then2.i.i, %if.end.i.i.wg_reset_packet.exit_crit_edge, %if.end61.wg_reset_packet.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %keys.i.i) #12
  %48 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %mac_header.i.i, align 2
  %inner_mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 15, i32 0, i32 17
  %50 = ptrtoint ptr %inner_mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %49, ptr %inner_mac_header.i.i, align 2
  %51 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i.i, align 4
  %inner_network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 15, i32 0, i32 16
  %53 = ptrtoint ptr %inner_network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %inner_network_header.i.i, align 4
  %54 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %transport_header.i.i, align 2
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %retval.0.i107114, i32 0, i32 15, i32 0, i32 15
  %56 = ptrtoint ptr %inner_transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %inner_transport_header.i.i, align 2
  call fastcc void @wg_packet_consume_data_done(ptr noundef %add.ptr, ptr noundef nonnull %retval.0.i107114, ptr noundef nonnull %endpoint)
  call void @wg_noise_keypair_put(ptr noundef %8, i1 noundef zeroext false) #12
  call void @wg_peer_put(ptr noundef %add.ptr) #12
  br label %if.end70

if.then69:                                        ; preds = %if.end51.if.then69_crit_edge, %if.then44, %land.lhs.true.if.then69_crit_edge, %do.body, %while.body.if.then69_crit_edge
  call void @wg_noise_keypair_put(ptr noundef %8, i1 noundef zeroext false) #12
  call void @wg_peer_put(ptr noundef %add.ptr) #12
  call void @consume_skb(ptr noundef nonnull %retval.0.i107114) #12
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %wg_reset_packet.exit
  %inc = add nuw nsw i32 %work_done.0, 1
  %exitcond.not = icmp eq i32 %inc, %budget
  br i1 %exitcond.not, label %if.end70.cleanup_crit_edge, label %if.end70.while.cond_crit_edge

if.end70.while.cond_crit_edge:                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %wg_prev_queue_peek.exit.while.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %work_done.0, i32 %budget)
  %cmp74 = icmp slt i32 %work_done.0, %budget
  br i1 %cmp74, label %if.then75, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then75:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %call76 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.0) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %while.end.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %work_done.0, %if.then75 ], [ %work_done.0, %while.end.cleanup_crit_edge ], [ %budget, %if.end70.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %endpoint) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_socket_endpoint_from_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wg_packet_consume_data_done(ptr noundef %peer, ptr noundef %skb, ptr noundef %endpoint) unnamed_addr #0 align 64 {
entry:
  %__endpoint = alloca %struct.endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %peer, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void @wg_socket_set_peer_endpoint(ptr noundef %peer, ptr noundef %endpoint) #12
  %keypairs = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 6
  %keypair = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %keypair to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %keypair, align 8
  %call = tail call zeroext i1 @wg_noise_received_with_keypair(ptr noundef %keypairs, ptr noundef %5) #12
  br i1 %call, label %if.then, label %entry.if.end_crit_edge, !prof !264

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @wg_timers_handshake_complete(ptr noundef %peer) #12
  tail call void @wg_packet_send_staged_packets(ptr noundef %peer) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sent_lastminute_handshake.i = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 27
  %6 = ptrtoint ptr %sent_lastminute_handshake.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sent_lastminute_handshake.i, align 1, !range !270
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.keep_key_fresh.exit_crit_edge

if.end.keep_key_fresh.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %keep_key_fresh.exit

if.end.i:                                         ; preds = %if.end
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock_bh.exit.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 750, ptr noundef nonnull @.str.155) #12
  br label %rcu_read_lock_bh.exit.i

rcu_read_lock_bh.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, %if.end.i.rcu_read_lock_bh.exit.i_crit_edge
  %8 = ptrtoint ptr %keypairs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %keypairs, align 4
  %call.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i, label %rcu_read_lock_bh.exit.i.do.end10.i_crit_edge

rcu_read_lock_bh.exit.i.do.end10.i_crit_edge:     ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock_bh.exit.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.end10.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.do.end10.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b38.i = load i1, ptr @keep_key_fresh.__warned, align 1
  br i1 %.b38.i, label %land.lhs.true5.i.do.end10.i_crit_edge, label %if.then7.i

land.lhs.true5.i.do.end10.i_crit_edge:            ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10.i

if.then7.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @keep_key_fresh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 236, ptr noundef nonnull @.str.153) #12
  br label %do.end10.i

do.end10.i:                                       ; preds = %if.then7.i, %land.lhs.true5.i.do.end10.i_crit_edge, %land.lhs.true.i.do.end10.i_crit_edge, %rcu_read_lock_bh.exit.i.do.end10.i_crit_edge
  %tobool12.not.i = icmp eq ptr %9, null
  br i1 %tobool12.not.i, label %if.end30.critedge40.i, label %do.end16.i

do.end16.i:                                       ; preds = %do.end10.i
  %is_valid.i = getelementptr inbounds %struct.noise_keypair, ptr %9, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %is_valid.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %is_valid.i, align 8, !range !270
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not.i = icmp eq i8 %11, 0
  br i1 %tobool18.not.i, label %if.end30.critedge39.i, label %land.lhs.true20.i

land.lhs.true20.i:                                ; preds = %do.end16.i
  %i_am_the_initiator.i = getelementptr inbounds %struct.noise_keypair, ptr %9, i32 0, i32 6
  %12 = ptrtoint ptr %i_am_the_initiator.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %i_am_the_initiator.i, align 4, !range !270
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool21.not.i = icmp eq i8 %13, 0
  br i1 %tobool21.not.i, label %if.end30.critedge.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %land.lhs.true20.i
  %birthdate.i = getelementptr inbounds %struct.noise_keypair, ptr %9, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %birthdate.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %birthdate.i, align 8
  %add.i.i = add i64 %15, 165000000000
  %call.i.i.i.i = tail call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %call.i.i.i.i)
  %cmp.i.not.i = icmp sgt i64 %add.i.i, %call.i.i.i.i
  %call.i41.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i41.i, label %land.rhs.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true.i44.i

land.rhs.i.rcu_read_unlock_bh.exit.i_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true.i44.i:                              ; preds = %land.rhs.i
  %call1.i42.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i42.i)
  %tobool.not.i43.i = icmp eq i32 %call1.i42.i, 0
  br i1 %tobool.not.i43.i, label %land.lhs.true.i44.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true2.i46.i

land.lhs.true.i44.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true2.i46.i:                             ; preds = %land.lhs.true.i44.i
  %.b4.i45.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i45.i, label %land.lhs.true2.i46.i.rcu_read_unlock_bh.exit.i_crit_edge, label %if.then.i47.i

land.lhs.true2.i46.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit.i

if.then.i47.i:                                    ; preds = %land.lhs.true2.i46.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 761, ptr noundef nonnull @.str.156) #12
  br label %rcu_read_unlock_bh.exit.i

rcu_read_unlock_bh.exit.i:                        ; preds = %if.then.i47.i, %land.lhs.true2.i46.i.rcu_read_unlock_bh.exit.i_crit_edge, %land.lhs.true.i44.i.rcu_read_unlock_bh.exit.i_crit_edge, %land.rhs.i.rcu_read_unlock_bh.exit.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  br i1 %cmp.i.not.i, label %rcu_read_unlock_bh.exit.i.keep_key_fresh.exit_crit_edge, label %if.then28.i, !prof !266

rcu_read_unlock_bh.exit.i.keep_key_fresh.exit_crit_edge: ; preds = %rcu_read_unlock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %keep_key_fresh.exit

if.then28.i:                                      ; preds = %rcu_read_unlock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %sent_lastminute_handshake.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %sent_lastminute_handshake.i, align 1
  tail call void @wg_packet_send_queued_handshake_initiation(ptr noundef %peer, i1 noundef zeroext false) #12
  br label %keep_key_fresh.exit

if.end30.critedge.i:                              ; preds = %land.lhs.true20.i
  %call.i48.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i48.i, label %if.end30.critedge.i.rcu_read_unlock_bh.exit55.i_crit_edge, label %land.lhs.true.i51.i

if.end30.critedge.i.rcu_read_unlock_bh.exit55.i_crit_edge: ; preds = %if.end30.critedge.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit55.i

land.lhs.true.i51.i:                              ; preds = %if.end30.critedge.i
  %call1.i49.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49.i)
  %tobool.not.i50.i = icmp eq i32 %call1.i49.i, 0
  br i1 %tobool.not.i50.i, label %land.lhs.true.i51.i.rcu_read_unlock_bh.exit55.i_crit_edge, label %land.lhs.true2.i53.i

land.lhs.true.i51.i.rcu_read_unlock_bh.exit55.i_crit_edge: ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit55.i

land.lhs.true2.i53.i:                             ; preds = %land.lhs.true.i51.i
  %.b4.i52.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i52.i, label %land.lhs.true2.i53.i.rcu_read_unlock_bh.exit55.i_crit_edge, label %if.then.i54.i

land.lhs.true2.i53.i.rcu_read_unlock_bh.exit55.i_crit_edge: ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit55.i

if.then.i54.i:                                    ; preds = %land.lhs.true2.i53.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 761, ptr noundef nonnull @.str.156) #12
  br label %rcu_read_unlock_bh.exit55.i

rcu_read_unlock_bh.exit55.i:                      ; preds = %if.then.i54.i, %land.lhs.true2.i53.i.rcu_read_unlock_bh.exit55.i_crit_edge, %land.lhs.true.i51.i.rcu_read_unlock_bh.exit55.i_crit_edge, %if.end30.critedge.i.rcu_read_unlock_bh.exit55.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  br label %keep_key_fresh.exit

if.end30.critedge39.i:                            ; preds = %do.end16.i
  %call.i56.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i56.i, label %if.end30.critedge39.i.rcu_read_unlock_bh.exit63.i_crit_edge, label %land.lhs.true.i59.i

if.end30.critedge39.i.rcu_read_unlock_bh.exit63.i_crit_edge: ; preds = %if.end30.critedge39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit63.i

land.lhs.true.i59.i:                              ; preds = %if.end30.critedge39.i
  %call1.i57.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57.i)
  %tobool.not.i58.i = icmp eq i32 %call1.i57.i, 0
  br i1 %tobool.not.i58.i, label %land.lhs.true.i59.i.rcu_read_unlock_bh.exit63.i_crit_edge, label %land.lhs.true2.i61.i

land.lhs.true.i59.i.rcu_read_unlock_bh.exit63.i_crit_edge: ; preds = %land.lhs.true.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit63.i

land.lhs.true2.i61.i:                             ; preds = %land.lhs.true.i59.i
  %.b4.i60.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i60.i, label %land.lhs.true2.i61.i.rcu_read_unlock_bh.exit63.i_crit_edge, label %if.then.i62.i

land.lhs.true2.i61.i.rcu_read_unlock_bh.exit63.i_crit_edge: ; preds = %land.lhs.true2.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit63.i

if.then.i62.i:                                    ; preds = %land.lhs.true2.i61.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 761, ptr noundef nonnull @.str.156) #12
  br label %rcu_read_unlock_bh.exit63.i

rcu_read_unlock_bh.exit63.i:                      ; preds = %if.then.i62.i, %land.lhs.true2.i61.i.rcu_read_unlock_bh.exit63.i_crit_edge, %land.lhs.true.i59.i.rcu_read_unlock_bh.exit63.i_crit_edge, %if.end30.critedge39.i.rcu_read_unlock_bh.exit63.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  br label %keep_key_fresh.exit

if.end30.critedge40.i:                            ; preds = %do.end10.i
  %call.i64.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i64.i, label %if.end30.critedge40.i.rcu_read_unlock_bh.exit71.i_crit_edge, label %land.lhs.true.i67.i

if.end30.critedge40.i.rcu_read_unlock_bh.exit71.i_crit_edge: ; preds = %if.end30.critedge40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit71.i

land.lhs.true.i67.i:                              ; preds = %if.end30.critedge40.i
  %call1.i65.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65.i)
  %tobool.not.i66.i = icmp eq i32 %call1.i65.i, 0
  br i1 %tobool.not.i66.i, label %land.lhs.true.i67.i.rcu_read_unlock_bh.exit71.i_crit_edge, label %land.lhs.true2.i69.i

land.lhs.true.i67.i.rcu_read_unlock_bh.exit71.i_crit_edge: ; preds = %land.lhs.true.i67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit71.i

land.lhs.true2.i69.i:                             ; preds = %land.lhs.true.i67.i
  %.b4.i68.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i68.i, label %land.lhs.true2.i69.i.rcu_read_unlock_bh.exit71.i_crit_edge, label %if.then.i70.i

land.lhs.true2.i69.i.rcu_read_unlock_bh.exit71.i_crit_edge: ; preds = %land.lhs.true2.i69.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit71.i

if.then.i70.i:                                    ; preds = %land.lhs.true2.i69.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 761, ptr noundef nonnull @.str.156) #12
  br label %rcu_read_unlock_bh.exit71.i

rcu_read_unlock_bh.exit71.i:                      ; preds = %if.then.i70.i, %land.lhs.true2.i69.i.rcu_read_unlock_bh.exit71.i_crit_edge, %land.lhs.true.i67.i.rcu_read_unlock_bh.exit71.i_crit_edge, %if.end30.critedge40.i.rcu_read_unlock_bh.exit71.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  br label %keep_key_fresh.exit

keep_key_fresh.exit:                              ; preds = %rcu_read_unlock_bh.exit71.i, %rcu_read_unlock_bh.exit63.i, %rcu_read_unlock_bh.exit55.i, %if.then28.i, %rcu_read_unlock_bh.exit.i.keep_key_fresh.exit_crit_edge, %if.end.keep_key_fresh.exit_crit_edge
  tail call void @wg_timers_any_authenticated_packet_received(ptr noundef %peer) #12
  tail call void @wg_timers_any_authenticated_packet_traversal(ptr noundef %peer) #12
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %if.then13, label %if.end30, !prof !264

if.then13:                                        ; preds = %keep_key_fresh.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @update_rx_stats(ptr noundef %peer, i32 noundef 32)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_consume_data_done.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_consume_data_done, %packet_processed)) #12
          to label %land.lhs.true [label %packet_processed], !srcloc !268

land.lhs.true:                                    ; preds = %if.then13
  %call24 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.packet_processed_crit_edge, label %if.then26

land.lhs.true.packet_processed_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %packet_processed

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %internal_id = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 34
  %19 = ptrtoint ptr %internal_id to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %internal_id, align 8
  %endpoint28 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_consume_data_done.descriptor, ptr noundef nonnull @.str.143, ptr noundef %3, i64 noundef %20, ptr noundef %endpoint28) #12
  br label %packet_processed

if.end30:                                         ; preds = %keep_key_fresh.exit
  tail call void @wg_timers_data_received(ptr noundef %peer) #12
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %23 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %24 to i32
  %add.ptr.i = getelementptr i8, ptr %22, i32 %conv.i
  %cmp = icmp ult ptr %add.ptr.i, %22
  br i1 %cmp, label %if.end30.do.body206_crit_edge, label %if.end39, !prof !264

if.end30.do.body206_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

if.end39:                                         ; preds = %if.end30
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 20
  %27 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len3, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %29 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %28, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end39.land.rhs_crit_edge, !prof !264

if.end39.land.rhs_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

if.end.i.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %28, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.do.body175_crit_edge, label %pskb_network_may_pull.exit, !prof !264

if.end.i.i.do.body175_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body175

pskb_network_may_pull.exit:                       ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #12
  %cmp14.i.i.not = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.i.not, label %pskb_network_may_pull.exit.do.body175_crit_edge, label %pskb_network_may_pull.exit.land.rhs_crit_edge, !prof !264

pskb_network_may_pull.exit.land.rhs_crit_edge:    ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

pskb_network_may_pull.exit.do.body175_crit_edge:  ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body175

land.rhs:                                         ; preds = %pskb_network_may_pull.exit.land.rhs_crit_edge, %if.end39.land.rhs_crit_edge
  %31 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %head.i, align 8
  %33 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %34 to i32
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %conv.i.i
  %35 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %bf.load = load i8, ptr %add.ptr.i.i, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  %36 = zext i8 %bf.lshr.mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.160)
  switch i8 %bf.lshr.mask, label %land.rhs.do.body175_crit_edge [
    i8 64, label %land.rhs.if.end64_crit_edge
    i8 96, label %land.rhs51
  ]

land.rhs.if.end64_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

land.rhs.do.body175_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body175

land.rhs51:                                       ; preds = %land.rhs
  %37 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i321 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i322 = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i323 = sub i32 %sub.ptr.lhs.cast.i.i321, %sub.ptr.rhs.cast.i.i322
  %add.i324 = add i32 %sub.ptr.sub.i.i323, 40
  %39 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len3, align 4
  %41 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i327 = sub i32 %40, %42
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i324, i32 %sub.i.i.i327)
  %cmp.not.i.i328 = icmp ugt i32 %add.i324, %sub.i.i.i327
  br i1 %cmp.not.i.i328, label %if.end.i.i330, label %land.rhs51.if.end64_crit_edge, !prof !264

land.rhs51.if.end64_crit_edge:                    ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.end.i.i330:                                    ; preds = %land.rhs51
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %add.i324)
  %cmp3.i.i329 = icmp ult i32 %40, %add.i324
  br i1 %cmp3.i.i329, label %if.end.i.i330.do.body175_crit_edge, label %pskb_network_may_pull.exit337, !prof !264

if.end.i.i330.do.body175_crit_edge:               ; preds = %if.end.i.i330
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body175

pskb_network_may_pull.exit337:                    ; preds = %if.end.i.i330
  %sub.i.i331 = sub i32 %add.i324, %sub.i.i.i327
  %call13.i.i332 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i331) #12
  %cmp14.i.i333.not = icmp eq ptr %call13.i.i332, null
  br i1 %cmp14.i.i333.not, label %pskb_network_may_pull.exit337.do.body175_crit_edge, label %pskb_network_may_pull.exit337.if.end64_crit_edge, !prof !264

pskb_network_may_pull.exit337.if.end64_crit_edge: ; preds = %pskb_network_may_pull.exit337
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

pskb_network_may_pull.exit337.do.body175_crit_edge: ; preds = %pskb_network_may_pull.exit337
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body175

if.end64:                                         ; preds = %pskb_network_may_pull.exit337.if.end64_crit_edge, %land.rhs51.if.end64_crit_edge, %land.rhs.if.end64_crit_edge
  %43 = getelementptr inbounds %struct.anon.4, ptr %skb, i32 0, i32 2
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %3, ptr %43, align 8
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %45 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load65 = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load65, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  %csum_level = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %46 = ptrtoint ptr %csum_level to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load66 = load i32, ptr %csum_level, align 2
  %bf.set68 = or i32 %bf.load66, 805306368
  store i32 %bf.set68, ptr %csum_level, align 2
  %call69 = tail call zeroext i16 @ip_tunnel_parse_protocol(ptr noundef %skb) #12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %47 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %call69, ptr %protocol, align 8
  %48 = zext i16 %call69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.161)
  switch i16 %call69, label %if.end64.do.body175_crit_edge [
    i16 2048, label %if.then74
    i16 -31011, label %if.then95
  ]

if.end64.do.body175_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body175

if.then74:                                        ; preds = %if.end64
  %49 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i, align 8
  %51 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i, align 4
  %conv.i.i340 = zext i16 %52 to i32
  %add.ptr.i.i341 = getelementptr i8, ptr %50, i32 %conv.i.i340
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i341, i32 0, i32 2
  %53 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %tot_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %54)
  %cmp77 = icmp ult i16 %54, 20
  br i1 %cmp77, label %if.then74.do.body206_crit_edge, label %if.end86, !prof !264

if.then74.do.body206_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

if.end86:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #14
  %conv76 = zext i16 %54 to i32
  %ds = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %55 = ptrtoint ptr %ds to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %ds, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i341, i32 0, i32 1
  %57 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tos, align 1
  tail call fastcc void @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %56, i8 noundef zeroext %58)
  br label %if.end106

if.then95:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i, align 8
  %61 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %network_header.i, align 4
  %conv.i.i348 = zext i16 %62 to i32
  %add.ptr.i.i349 = getelementptr i8, ptr %60, i32 %conv.i.i348
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i349, i32 0, i32 2
  %63 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %payload_len, align 4
  %conv97 = zext i16 %64 to i32
  %add = add nuw nsw i32 %conv97, 40
  %ds100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %65 = ptrtoint ptr %ds100 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ds100, align 4
  %67 = ptrtoint ptr %add.ptr.i.i349 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %add.ptr.i.i349, align 2
  %69 = lshr i16 %68, 4
  %conv1.i = trunc i16 %69 to i8
  tail call fastcc void @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %66, i8 noundef zeroext %conv1.i)
  br label %if.end106

if.end106:                                        ; preds = %if.then95, %if.end86
  %len.0 = phi i32 [ %conv76, %if.end86 ], [ %add, %if.then95 ]
  %70 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0, i32 %71)
  %cmp108 = icmp ugt i32 %len.0, %71
  br i1 %cmp108, label %if.end106.do.body206_crit_edge, label %if.end117, !prof !264

if.end106.do.body206_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body206

if.end117:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %len.0)
  %cmp.i = icmp ugt i32 %71, %len.0
  br i1 %cmp.i, label %cond.true.i, label %if.end117.if.end128_crit_edge

if.end117.if.end128_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

cond.true.i:                                      ; preds = %if.end117
  %72 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i354 = icmp eq i32 %73, 0
  br i1 %tobool.not.i.i354, label %__skb_trim.exit.i.i, label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %74 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %len.0, ptr %len3, align 4
  %75 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %76, i32 %len.0
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %77 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end128

pskb_trim.exit:                                   ; preds = %cond.true.i
  %call.i.i355 = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %len.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i355)
  %tobool120.not = icmp eq i32 %call.i.i355, 0
  br i1 %tobool120.not, label %pskb_trim.exit.if.end128_crit_edge, label %pskb_trim.exit.packet_processed_crit_edge, !prof !266

pskb_trim.exit.packet_processed_crit_edge:        ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %packet_processed

pskb_trim.exit.if.end128_crit_edge:               ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end128

if.end128:                                        ; preds = %pskb_trim.exit.if.end128_crit_edge, %__skb_trim.exit.i.i, %if.end117.if.end128_crit_edge
  %78 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %peer, align 8
  %peer_allowedips = getelementptr inbounds %struct.wg_device, ptr %79, i32 0, i32 15
  %call130 = tail call ptr @wg_allowedips_lookup_src(ptr noundef %peer_allowedips, ptr noundef %skb) #12
  tail call void @wg_peer_put(ptr noundef %call130) #12
  %cmp131.not = icmp eq ptr %call130, %peer
  br i1 %cmp131.not, label %if.end140, label %do.body144, !prof !266

if.end140:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #14
  %napi = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 33
  %call141 = tail call i32 @napi_gro_receive(ptr noundef %napi, ptr noundef %skb) #12
  %add143 = add i32 %71, 32
  tail call fastcc void @update_rx_stats(ptr noundef %peer, i32 noundef %add143)
  br label %cleanup

do.body144:                                       ; preds = %if.end128
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %__endpoint) #12
  %80 = call ptr @memset(ptr %__endpoint, i32 255, i32 44)
  %call145 = call i32 @wg_socket_endpoint_from_skb(ptr noundef nonnull %__endpoint, ptr noundef %skb) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_consume_data_done.descriptor.144, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_consume_data_done, %do.end170)) #12
          to label %land.lhs.true160 [label %do.end170], !srcloc !268

land.lhs.true160:                                 ; preds = %do.body144
  %call161 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %land.lhs.true160.do.end170_crit_edge, label %if.then163

land.lhs.true160.do.end170_crit_edge:             ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end170

if.then163:                                       ; preds = %land.lhs.true160
  call void @__sanitizer_cov_trace_pc() #14
  %internal_id166 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 34
  %81 = ptrtoint ptr %internal_id166 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %internal_id166, align 8
  %endpoint167 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_consume_data_done.descriptor.144, ptr noundef nonnull @.str.146, ptr noundef %3, ptr noundef nonnull %__endpoint, i64 noundef %82, ptr noundef %endpoint167) #12
  br label %do.end170

do.end170:                                        ; preds = %if.then163, %land.lhs.true160.do.end170_crit_edge, %do.body144
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %__endpoint) #12
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %83 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %84, 1
  store i32 %inc, ptr %rx_errors, align 8
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 13
  %85 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rx_frame_errors, align 4
  %inc174 = add i32 %86, 1
  store i32 %inc174, ptr %rx_frame_errors, align 4
  br label %packet_processed

do.body175:                                       ; preds = %if.end64.do.body175_crit_edge, %pskb_network_may_pull.exit337.do.body175_crit_edge, %if.end.i.i330.do.body175_crit_edge, %land.rhs.do.body175_crit_edge, %pskb_network_may_pull.exit.do.body175_crit_edge, %if.end.i.i.do.body175_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_consume_data_done.descriptor.147, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_consume_data_done, %do.end199)) #12
          to label %land.lhs.true189 [label %do.end199], !srcloc !268

land.lhs.true189:                                 ; preds = %do.body175
  %call190 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %tobool191.not = icmp eq i32 %call190, 0
  br i1 %tobool191.not, label %land.lhs.true189.do.end199_crit_edge, label %if.then192

land.lhs.true189.do.end199_crit_edge:             ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end199

if.then192:                                       ; preds = %land.lhs.true189
  call void @__sanitizer_cov_trace_pc() #14
  %internal_id195 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 34
  %87 = ptrtoint ptr %internal_id195 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %internal_id195, align 8
  %endpoint196 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_consume_data_done.descriptor.147, ptr noundef nonnull @.str.149, ptr noundef %3, i64 noundef %88, ptr noundef %endpoint196) #12
  br label %do.end199

do.end199:                                        ; preds = %if.then192, %land.lhs.true189.do.end199_crit_edge, %do.body175
  %rx_errors201 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %89 = ptrtoint ptr %rx_errors201 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %rx_errors201, align 8
  %inc202 = add i32 %90, 1
  store i32 %inc202, ptr %rx_errors201, align 8
  %rx_frame_errors204 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 13
  %91 = ptrtoint ptr %rx_frame_errors204 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %rx_frame_errors204, align 4
  %inc205 = add i32 %92, 1
  store i32 %inc205, ptr %rx_frame_errors204, align 4
  br label %packet_processed

do.body206:                                       ; preds = %if.end106.do.body206_crit_edge, %if.then74.do.body206_crit_edge, %if.end30.do.body206_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_consume_data_done.descriptor.150, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_consume_data_done, %do.end230)) #12
          to label %land.lhs.true220 [label %do.end230], !srcloc !268

land.lhs.true220:                                 ; preds = %do.body206
  %call221 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %land.lhs.true220.do.end230_crit_edge, label %if.then223

land.lhs.true220.do.end230_crit_edge:             ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end230

if.then223:                                       ; preds = %land.lhs.true220
  call void @__sanitizer_cov_trace_pc() #14
  %internal_id226 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 34
  %93 = ptrtoint ptr %internal_id226 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %internal_id226, align 8
  %endpoint227 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_consume_data_done.descriptor.150, ptr noundef nonnull @.str.152, ptr noundef %3, i64 noundef %94, ptr noundef %endpoint227) #12
  br label %do.end230

do.end230:                                        ; preds = %if.then223, %land.lhs.true220.do.end230_crit_edge, %do.body206
  %rx_errors232 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  %95 = ptrtoint ptr %rx_errors232 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_errors232, align 8
  %inc233 = add i32 %96, 1
  store i32 %inc233, ptr %rx_errors232, align 8
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 10
  %97 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %rx_length_errors, align 8
  %inc235 = add i32 %98, 1
  store i32 %inc235, ptr %rx_length_errors, align 8
  br label %packet_processed

packet_processed:                                 ; preds = %do.end230, %do.end199, %do.end170, %pskb_trim.exit.packet_processed_crit_edge, %if.then26, %land.lhs.true.packet_processed_crit_edge, %if.then13
  call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %packet_processed, %if.end140
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_noise_keypair_put(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_peer_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_decrypt_worker(ptr nocapture noundef readonly %work) local_unnamed_addr #0 align 64 {
entry:
  %sg.i = alloca [25 x %struct.scatterlist], align 4
  %trailer.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %queue.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 9
  %consumer_lock.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 5
  call void @_raw_spin_lock_bh(ptr noundef %consumer_lock.i) #12
  %size.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i18 = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i18, label %entry.ptr_ring_consume_bh.exit.thread_crit_edge, label %__ptr_ring_peek.exit.i.i.lr.ph, !prof !264

entry.ptr_ring_consume_bh.exit.thread_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptr_ring_consume_bh.exit.thread

__ptr_ring_peek.exit.i.i.lr.ph:                   ; preds = %entry
  %consumer_head.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 3
  %consumer_tail.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 4
  %batch.i.i.i = getelementptr inbounds %struct.ptr_ring, ptr %1, i32 0, i32 8
  br label %__ptr_ring_peek.exit.i.i

__ptr_ring_peek.exit.i.i:                         ; preds = %if.end.__ptr_ring_peek.exit.i.i_crit_edge, %__ptr_ring_peek.exit.i.i.lr.ph
  %4 = phi i32 [ %3, %__ptr_ring_peek.exit.i.i.lr.ph ], [ %76, %if.end.__ptr_ring_peek.exit.i.i_crit_edge ]
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
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %or.cond.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i, !prof !265

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %12)
  %cmp5.not46.i.i.i = icmp slt i32 %8, %12
  br i1 %cmp5.not46.i.i.i, label %while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge, label %while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge, !prof !264

while.cond.preheader.i.i.i.while.body.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %while.body.i.i.i

while.cond.preheader.i.i.i.while.end.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %cmp5.not.i.i.i, label %while.body.i.i.i.while.end.i.i.i_crit_edge, label %while.body.i.i.i.while.body.i.i.i_crit_edge, !prof !264

while.body.i.i.i.while.body.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i.i

while.body.i.i.i.while.end.i.i.i_crit_edge:       ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %cmp14.not.i.i.i, label %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge, label %if.then21.i.i.i, !prof !266

if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptr_ring_consume_bh.exit

if.then21.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %consumer_tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %consumer_tail.i.i.i, align 4
  br label %ptr_ring_consume_bh.exit

ptr_ring_consume_bh.exit.thread:                  ; preds = %if.end.ptr_ring_consume_bh.exit.thread_crit_edge, %__ptr_ring_peek.exit.i.i.ptr_ring_consume_bh.exit.thread_crit_edge, %entry.ptr_ring_consume_bh.exit.thread_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %consumer_lock.i) #12
  ret void

ptr_ring_consume_bh.exit:                         ; preds = %if.then21.i.i.i, %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge
  %consumer_head.0.i.i.i = phi i32 [ 0, %if.then21.i.i.i ], [ %inc.i.i.i, %if.end.i.i.i.ptr_ring_consume_bh.exit_crit_edge ]
  %24 = ptrtoint ptr %consumer_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 %consumer_head.0.i.i.i, ptr %consumer_head.i.i.i, align 128
  call void @_raw_spin_unlock_bh(ptr noundef %consumer_lock.i) #12
  %keypair = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %keypair to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %keypair, align 8
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %sg.i) #12
  %27 = call ptr @memset(ptr %sg.i, i32 255, i32 500)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trailer.i) #12
  %28 = ptrtoint ptr %trailer.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %trailer.i, align 4, !annotation !271
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %ptr_ring_consume_bh.exit.decrypt_packet.exit.thread_crit_edge, label %do.end.i, !prof !264

ptr_ring_consume_bh.exit.decrypt_packet.exit.thread_crit_edge: ; preds = %ptr_ring_consume_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrypt_packet.exit.thread

do.end.i:                                         ; preds = %ptr_ring_consume_bh.exit
  %receiving.i = getelementptr inbounds %struct.noise_keypair, ptr %26, i32 0, i32 3
  %is_valid.i = getelementptr inbounds %struct.noise_keypair, ptr %26, i32 0, i32 3, i32 2
  %29 = ptrtoint ptr %is_valid.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load volatile i8, ptr %is_valid.i, align 8, !range !270
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool4.not.i = icmp eq i8 %30, 0
  br i1 %tobool4.not.i, label %do.end.i.do.body18.i_crit_edge, label %lor.lhs.false.i, !prof !264

do.end.i.do.body18.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18.i

lor.lhs.false.i:                                  ; preds = %do.end.i
  %birthdate.i = getelementptr inbounds %struct.noise_keypair, ptr %26, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %birthdate.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %birthdate.i, align 8
  %add.i.i = add i64 %32, 180000000000
  %call.i.i.i.i = call i64 @ktime_get_coarse_with_offset(i32 noundef 1) #12
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i.i, i64 %call.i.i.i.i)
  %cmp.i.not.i = icmp sgt i64 %add.i.i, %call.i.i.i.i
  br i1 %cmp.i.not.i, label %lor.rhs.i, label %lor.lhs.false.i.do.body18.i_crit_edge, !prof !266

lor.lhs.false.i.do.body18.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18.i

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %receiving_counter.i = getelementptr inbounds %struct.noise_keypair, ptr %26, i32 0, i32 4
  %33 = ptrtoint ptr %receiving_counter.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %receiving_counter.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -8163, i64 %34)
  %cmp.i = icmp ugt i64 %34, -8163
  br i1 %cmp.i, label %lor.rhs.i.do.body18.i_crit_edge, label %if.end25.i, !prof !264

lor.rhs.i.do.body18.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body18.i

do.body18.i:                                      ; preds = %lor.rhs.i.do.body18.i_crit_edge, %lor.lhs.false.i.do.body18.i_crit_edge, %do.end.i.do.body18.i_crit_edge
  %35 = ptrtoint ptr %is_valid.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store volatile i8 0, ptr %is_valid.i, align 8
  br label %decrypt_packet.exit.thread

if.end25.i:                                       ; preds = %lor.rhs.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %counter26.i = getelementptr inbounds %struct.message_data, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %counter26.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %counter26.i, align 8
  %40 = call i64 @llvm.bswap.i64(i64 %39) #12
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3
  %41 = ptrtoint ptr %cb.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %cb.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 18
  %42 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 15, i32 0, i32 20
  %44 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %45 to i32
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %conv.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call29.i = call ptr @skb_push(ptr noundef nonnull %10, i32 noundef %sub.ptr.sub.i) #12
  %call30.i = call i32 @skb_cow_data(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %trailer.i) #12
  %add.i = add i32 %sub.ptr.sub.i, 16
  %call31.i = call ptr @skb_pull(ptr noundef nonnull %10, i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %call30.i)
  %cmp34.i = icmp ugt i32 %call30.i, 25
  br i1 %cmp34.i, label %if.end25.i.decrypt_packet.exit.thread_crit_edge, label %if.end43.i, !prof !264

if.end25.i.decrypt_packet.exit.thread_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrypt_packet.exit.thread

if.end43.i:                                       ; preds = %if.end25.i
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef %call30.i) #12
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 6
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i, align 4
  %call46.i = call i32 @skb_to_sgvec(ptr noundef nonnull %10, ptr noundef nonnull %sg.i, i32 noundef 0, i32 noundef %47) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 1
  br i1 %cmp47.i, label %if.end43.i.decrypt_packet.exit.thread_crit_edge, label %if.end49.i

if.end43.i.decrypt_packet.exit.thread_crit_edge:  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrypt_packet.exit.thread

if.end49.i:                                       ; preds = %if.end43.i
  %48 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len.i, align 4
  %50 = ptrtoint ptr %cb.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %cb.i, align 8
  %call57.i = call zeroext i1 @chacha20poly1305_decrypt_sg_inplace(ptr noundef nonnull %sg.i, i32 noundef %49, ptr noundef null, i32 noundef 0, i64 noundef %51, ptr noundef %receiving.i) #12
  br i1 %call57.i, label %if.end59.i, label %if.end49.i.decrypt_packet.exit.thread_crit_edge

if.end49.i.decrypt_packet.exit.thread_crit_edge:  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrypt_packet.exit.thread

if.end59.i:                                       ; preds = %if.end49.i
  %call60.i = call ptr @skb_push(ptr noundef nonnull %10, i32 noundef %add.i) #12
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %53, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %53)
  %cmp.i96.i = icmp ugt i32 %53, 15
  br i1 %cmp.i96.i, label %cond.true.i.i, label %if.end59.i._crit_edge

if.end59.i._crit_edge:                            ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %60

cond.true.i.i:                                    ; preds = %if.end59.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 7
  %54 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i.i.i8 = icmp eq i32 %55, 0
  br i1 %tobool.not.i.i.i8, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i, ptr %len.i, align 4
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %58, i32 %sub.i
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 16
  %59 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %60

pskb_trim.exit.i:                                 ; preds = %cond.true.i.i
  %call.i.i.i = call i32 @___pskb_trim(ptr noundef nonnull %10, i32 noundef %sub.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool63.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool63.not.i, label %pskb_trim.exit.i._crit_edge, label %pskb_trim.exit.i.decrypt_packet.exit.thread_crit_edge

pskb_trim.exit.i.decrypt_packet.exit.thread_crit_edge: ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %decrypt_packet.exit.thread

pskb_trim.exit.i._crit_edge:                      ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %60

decrypt_packet.exit.thread:                       ; preds = %pskb_trim.exit.i.decrypt_packet.exit.thread_crit_edge, %if.end49.i.decrypt_packet.exit.thread_crit_edge, %if.end43.i.decrypt_packet.exit.thread_crit_edge, %if.end25.i.decrypt_packet.exit.thread_crit_edge, %do.body18.i, %ptr_ring_consume_bh.exit.decrypt_packet.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer.i) #12
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %sg.i) #12
  br label %61

60:                                               ; preds = %pskb_trim.exit.i._crit_edge, %__skb_trim.exit.i.i.i, %if.end59.i._crit_edge
  %call66.i = call ptr @skb_pull(ptr noundef nonnull %10, i32 noundef %add.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trailer.i) #12
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %sg.i) #12
  br label %61

61:                                               ; preds = %60, %decrypt_packet.exit.thread
  %62 = phi i32 [ 1, %60 ], [ 2, %decrypt_packet.exit.thread ]
  %63 = ptrtoint ptr %keypair to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %keypair, align 8
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 8
  %refcount.i.i = getelementptr inbounds %struct.wg_peer, ptr %66, i32 0, i32 29
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %67 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !272
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !264

.if.end15.sink.split.i.i.i.i.i.i_crit_edge:       ; preds = %61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %61
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %68 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i.i.i.i = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.wg_peer_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !266

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.wg_peer_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wg_peer_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %wg_peer_get.exit.i

wg_peer_get.exit.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.wg_peer_get.exit.i_crit_edge
  %state5.i = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 3, i32 12
  %call.i.i.i9 = call zeroext i1 @__kasan_check_write(ptr noundef %state5.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !273
  %69 = ptrtoint ptr %state5.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 %62, ptr %state5.i, align 4
  %napi.i = getelementptr inbounds %struct.wg_peer, ptr %66, i32 0, i32 33
  %call.i.i = call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #12
  br i1 %call.i.i, label %if.then.i.i10, label %wg_peer_get.exit.i.wg_queue_enqueue_per_peer_rx.exit_crit_edge

wg_peer_get.exit.i.wg_queue_enqueue_per_peer_rx.exit_crit_edge: ; preds = %wg_peer_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wg_queue_enqueue_per_peer_rx.exit

if.then.i.i10:                                    ; preds = %wg_peer_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__napi_schedule(ptr noundef %napi.i) #12
  br label %wg_queue_enqueue_per_peer_rx.exit

wg_queue_enqueue_per_peer_rx.exit:                ; preds = %if.then.i.i10, %wg_peer_get.exit.i.wg_queue_enqueue_per_peer_rx.exit_crit_edge
  call void @wg_peer_put(ptr noundef %66) #12
  %70 = call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i.i = and i32 %70, -16384
  %71 = inttoptr i32 %and.i.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 16384
  %74 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.i.not = icmp eq i32 %74, 0
  br i1 %tobool.i.not, label %wg_queue_enqueue_per_peer_rx.exit.if.end_crit_edge, label %if.then

wg_queue_enqueue_per_peer_rx.exit.if.end_crit_edge: ; preds = %wg_queue_enqueue_per_peer_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %wg_queue_enqueue_per_peer_rx.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 512, i32 noundef 0) #12
  %call.i = call i32 @__cond_resched() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %wg_queue_enqueue_per_peer_rx.exit.if.end_crit_edge
  call void @_raw_spin_lock_bh(ptr noundef %consumer_lock.i) #12
  %75 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.i.i.i, align 128
  %tobool.not.i.i.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i.i.i, label %if.end.ptr_ring_consume_bh.exit.thread_crit_edge, label %if.end.__ptr_ring_peek.exit.i.i_crit_edge, !prof !264

if.end.__ptr_ring_peek.exit.i.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ptr_ring_peek.exit.i.i

if.end.ptr_ring_consume_bh.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ptr_ring_consume_bh.exit.thread
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wg_packet_receive(ptr noundef %wg, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %peer.i = alloca ptr, align 4
  %__endpoint = alloca %struct.endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i114 = tail call zeroext i16 @ip_tunnel_parse_protocol(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call.i.i114)
  %tobool.not.i.i = icmp eq i16 %call.i.i114, 0
  br i1 %tobool.not.i.i, label %entry.err_crit_edge, label %wg_check_packet_protocol.exit.i, !prof !274

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

wg_check_packet_protocol.exit.i:                  ; preds = %entry
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %0 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %protocol.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %call.i.i114)
  %cmp.i.i = icmp eq i16 %1, %call.i.i114
  br i1 %cmp.i.i, label %lor.lhs.false.i, label %wg_check_packet_protocol.exit.i.err_crit_edge, !prof !266

wg_check_packet_protocol.exit.i.err_crit_edge:    ; preds = %wg_check_packet_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

lor.lhs.false.i:                                  ; preds = %wg_check_packet_protocol.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %cmp.i = icmp ult ptr %add.ptr.i.i, %3
  br i1 %cmp.i, label %lor.lhs.false.i.err_crit_edge, label %lor.rhs.i, !prof !264

lor.lhs.false.i.err_crit_edge:                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 8
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %cmp4.i = icmp ugt ptr %add.ptr.i, %7
  br i1 %cmp4.i, label %lor.rhs.i.err_crit_edge, label %if.end.i, !prof !264

lor.rhs.i.err_crit_edge:                          ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end.i:                                         ; preds = %lor.rhs.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %sub.ptr.sub.i)
  %cmp7.i = icmp ugt i32 %sub.ptr.sub.i, 65535
  br i1 %cmp7.i, label %if.end.i.err_crit_edge, label %lor.rhs8.i, !prof !264

if.end.i.err_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

lor.rhs8.i:                                       ; preds = %if.end.i
  %add.i = add nuw nsw i32 %sub.ptr.sub.i, 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %11)
  %cmp9.i = icmp ugt i32 %add.i, %11
  br i1 %cmp9.i, label %lor.rhs8.i.err_crit_edge, label %if.end18.i, !prof !264

lor.rhs8.i.err_crit_edge:                         ; preds = %lor.rhs8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end18.i:                                       ; preds = %lor.rhs8.i
  %len19.i = getelementptr inbounds %struct.udphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %len19.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len19.i, align 2
  %conv.i = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %13)
  %cmp20.i = icmp ult i16 %13, 8
  %sub.i = sub i32 %11, %sub.ptr.sub.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i)
  %cmp24.i = icmp ult i32 %sub.i, %conv.i
  %or.cond.i = select i1 %cmp20.i, i1 true, i1 %cmp24.i
  br i1 %or.cond.i, label %if.end18.i.err_crit_edge, label %if.end34.i, !prof !275

if.end18.i.err_crit_edge:                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end34.i:                                       ; preds = %if.end18.i
  %sub35.i = add nsw i32 %conv.i, -8
  %sub.ptr.lhs.cast38.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub40.i = sub i32 %sub.ptr.lhs.cast38.i, %sub.ptr.rhs.cast.i
  %add41.i = add i32 %sub.ptr.sub40.i, 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %11, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add41.i, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add41.i, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.end34.i.lor.rhs43.i_crit_edge, !prof !264

if.end34.i.lor.rhs43.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs43.i

if.end.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add41.i)
  %cmp3.i.i = icmp ult i32 %11, %add41.i
  br i1 %cmp3.i.i, label %if.end.i.i.err_crit_edge, label %pskb_may_pull.exit.i, !prof !264

if.end.i.i.err_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add41.i, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #12
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.err_crit_edge, label %pskb_may_pull.exit.i.lor.rhs43.i_crit_edge, !prof !264

pskb_may_pull.exit.i.lor.rhs43.i_crit_edge:       ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.rhs43.i

pskb_may_pull.exit.i.err_crit_edge:               ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

lor.rhs43.i:                                      ; preds = %pskb_may_pull.exit.i.lor.rhs43.i_crit_edge, %if.end34.i.lor.rhs43.i_crit_edge
  %add44.i = add i32 %sub35.i, %sub.ptr.sub40.i
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add44.i)
  %cmp.i6.i = icmp ugt i32 %17, %add44.i
  br i1 %cmp.i6.i, label %cond.true.i.i, label %lor.rhs43.i.if.end56.i_crit_edge

lor.rhs43.i.if.end56.i_crit_edge:                 ; preds = %lor.rhs43.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

cond.true.i.i:                                    ; preds = %lor.rhs43.i
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add44.i, ptr %len.i, align 4
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %22, i32 %add44.i
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i, align 8
  br label %if.end56.i

pskb_trim.exit.i:                                 ; preds = %cond.true.i.i
  %call.i.i.i = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %add44.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp46.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp46.i, label %pskb_trim.exit.i.err_crit_edge, label %pskb_trim.exit.i.if.end56.i_crit_edge, !prof !264

pskb_trim.exit.i.if.end56.i_crit_edge:            ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56.i

pskb_trim.exit.i.err_crit_edge:                   ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end56.i:                                       ; preds = %pskb_trim.exit.i.if.end56.i_crit_edge, %__skb_trim.exit.i.i.i, %lor.rhs43.i.if.end56.i_crit_edge
  %call57.i = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub40.i) #12
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %sub35.i)
  %cmp59.not.i = icmp ne i32 %25, %sub35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp.i8.i = icmp ult i32 %25, 4
  %or.cond42.i = or i1 %cmp59.not.i, %cmp.i8.i
  br i1 %or.cond42.i, label %if.end56.i.err_crit_edge, label %if.end.i9.i, !prof !275

if.end56.i.err_crit_edge:                         ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end.i9.i:                                      ; preds = %if.end56.i
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %29)
  %cmp2.i.i = icmp eq i32 %29, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %sub35.i)
  %cmp4.i.i = icmp ugt i32 %sub35.i, 31
  %or.cond.i.i = select i1 %cmp2.i.i, i1 %cmp4.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i9.i.if.end80.i_crit_edge, label %if.end6.i.i

if.end.i9.i.if.end80.i_crit_edge:                 ; preds = %if.end.i9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i

if.end6.i.i:                                      ; preds = %if.end.i9.i
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %29, label %if.end6.i.i.err_crit_edge [
    i32 16777216, label %land.lhs.true10.i.i
    i32 33554432, label %land.lhs.true18.i.i
    i32 50331648, label %land.lhs.true26.i.i
  ]

if.end6.i.i.err_crit_edge:                        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

land.lhs.true10.i.i:                              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 148, i32 %sub35.i)
  %cmp12.i.i = icmp eq i32 %sub35.i, 148
  br i1 %cmp12.i.i, label %land.lhs.true10.i.i.if.end80.i_crit_edge, label %land.lhs.true10.i.i.err_crit_edge

land.lhs.true10.i.i.err_crit_edge:                ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

land.lhs.true10.i.i.if.end80.i_crit_edge:         ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i

land.lhs.true18.i.i:                              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %sub35.i)
  %cmp20.i.i = icmp eq i32 %sub35.i, 92
  br i1 %cmp20.i.i, label %land.lhs.true18.i.i.if.end80.i_crit_edge, label %land.lhs.true18.i.i.err_crit_edge

land.lhs.true18.i.i.err_crit_edge:                ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

land.lhs.true18.i.i.if.end80.i_crit_edge:         ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i

land.lhs.true26.i.i:                              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub35.i)
  %cmp28.i.i = icmp eq i32 %sub35.i, 64
  br i1 %cmp28.i.i, label %land.lhs.true26.i.i.if.end80.i_crit_edge, label %land.lhs.true26.i.i.err_crit_edge

land.lhs.true26.i.i.err_crit_edge:                ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

land.lhs.true26.i.i.if.end80.i_crit_edge:         ; preds = %land.lhs.true26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end80.i

if.end80.i:                                       ; preds = %land.lhs.true26.i.i.if.end80.i_crit_edge, %land.lhs.true18.i.i.if.end80.i_crit_edge, %land.lhs.true10.i.i.if.end80.i_crit_edge, %if.end.i9.i.if.end80.i_crit_edge
  %retval.0.i10.ph.i = phi i32 [ 64, %land.lhs.true26.i.i.if.end80.i_crit_edge ], [ 92, %land.lhs.true18.i.i.if.end80.i_crit_edge ], [ 148, %land.lhs.true10.i.i.if.end80.i_crit_edge ], [ 16, %if.end.i9.i.if.end80.i_crit_edge ]
  %idx.neg.i.i = sub i32 0, %sub.ptr.sub40.i
  %add.ptr.i12.i = getelementptr i8, ptr %27, i32 %idx.neg.i.i
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr.i12.i, ptr %data.i, align 4
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add44.i, ptr %len.i, align 4
  %add82.i = add i32 %retval.0.i10.ph.i, %sub.ptr.sub40.i
  %33 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i16.i = sub i32 %add44.i, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add82.i, i32 %sub.i.i16.i)
  %cmp.not.i17.i = icmp ugt i32 %add82.i, %sub.i.i16.i
  br i1 %cmp.not.i17.i, label %if.end.i19.i, label %if.end80.i.if.end93.i_crit_edge, !prof !264

if.end80.i.if.end93.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93.i

if.end.i19.i:                                     ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add44.i, i32 %add82.i)
  %cmp3.i18.i = icmp ult i32 %add44.i, %add82.i
  br i1 %cmp3.i18.i, label %if.end.i19.i.err_crit_edge, label %pskb_may_pull.exit25.i, !prof !264

if.end.i19.i.err_crit_edge:                       ; preds = %if.end.i19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

pskb_may_pull.exit25.i:                           ; preds = %if.end.i19.i
  %sub.i20.i = sub i32 %add82.i, %sub.i.i16.i
  %call13.i21.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i20.i) #12
  %cmp14.i22.not.i = icmp eq ptr %call13.i21.i, null
  br i1 %cmp14.i22.not.i, label %pskb_may_pull.exit25.i.err_crit_edge, label %pskb_may_pull.exit25.i.if.end93.i_crit_edge, !prof !264

pskb_may_pull.exit25.i.if.end93.i_crit_edge:      ; preds = %pskb_may_pull.exit25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93.i

pskb_may_pull.exit25.i.err_crit_edge:             ; preds = %pskb_may_pull.exit25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err

if.end93.i:                                       ; preds = %pskb_may_pull.exit25.i.if.end93.i_crit_edge, %if.end80.i.if.end93.i_crit_edge
  %35 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len.i, align 4
  %sub.i27.i = sub i32 %36, %sub.ptr.sub40.i
  store i32 %sub.i27.i, ptr %len.i, align 4
  %37 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i27.i, i32 %38)
  %cmp.i28.i = icmp ult i32 %sub.i27.i, %38
  br i1 %cmp.i28.i, label %do.body4.i.i, label %if.end, !prof !264

do.body4.i.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !276
  unreachable

if.end:                                           ; preds = %if.end93.i
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %40, i32 %sub.ptr.sub40.i
  store ptr %add.ptr.i30.i, ptr %data.i, align 4
  %41 = ptrtoint ptr %add.ptr.i30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i30.i, align 4
  %43 = add i32 %42, -16777216
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 8)
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %44, label %do.end77 [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 1, label %if.end.sw.bb_crit_edge151
    i32 2, label %if.end.sw.bb_crit_edge152
    i32 3, label %sw.bb62
  ]

if.end.sw.bb_crit_edge152:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge151:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge151, %if.end.sw.bb_crit_edge152
  %call2 = tail call zeroext i1 @rng_is_initialized() #12
  br i1 %call2, label %if.end12, label %sw.bb.do.body_crit_edge, !prof !266

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.end12:                                         ; preds = %sw.bb
  %handshake_queue_len = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 20
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %handshake_queue_len, i32 noundef 4) #12
  %46 = ptrtoint ptr %handshake_queue_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %handshake_queue_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %47)
  %cmp14 = icmp sgt i32 %47, 2048
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %producer_lock = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4, i32 0, i32 1
  %call.i = tail call i32 @_raw_spin_trylock_bh(ptr noundef %producer_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool17.not = icmp eq i32 %call.i, 0
  br i1 %tobool17.not, label %if.then15.do.body_crit_edge, label %if.then18

if.then15.do.body_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

if.then18:                                        ; preds = %if.then15
  %handshake_queue = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4, i32 0, i32 7
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  br i1 %tobool.not.i, label %if.then18.do.body.sink.split_crit_edge, label %lor.lhs.false.i116, !prof !264

if.then18.do.body.sink.split_crit_edge:           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.sink.split

lor.lhs.false.i116:                               ; preds = %if.then18
  %queue.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4, i32 0, i32 9
  %50 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %queue.i, align 8
  %52 = ptrtoint ptr %handshake_queue to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %handshake_queue, align 128
  %arrayidx.i = getelementptr ptr, ptr %51, i32 %53
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not.i = icmp eq ptr %55, null
  br i1 %tobool4.not.i, label %do.end.i, label %lor.lhs.false.i116.do.body.sink.split_crit_edge

lor.lhs.false.i116.do.body.sink.split_crit_edge:  ; preds = %lor.lhs.false.i116
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.sink.split

do.end.i:                                         ; preds = %lor.lhs.false.i116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !277
  %56 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %queue.i, align 8
  %58 = ptrtoint ptr %handshake_queue to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %handshake_queue, align 128
  %inc.i = add i32 %59, 1
  store i32 %inc.i, ptr %handshake_queue, align 128
  %arrayidx13.i = getelementptr ptr, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %skb, ptr %arrayidx13.i, align 4
  %61 = load i32, ptr %handshake_queue, align 128
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp.not.i = icmp slt i32 %61, %63
  br i1 %cmp.not.i, label %do.end.i.if.end50_crit_edge, label %do.end.i.if.end29.sink.split_crit_edge, !prof !266

do.end.i.if.end29.sink.split_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.sink.split

do.end.i.if.end50_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.else:                                          ; preds = %if.end12
  %handshake_queue26 = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4
  %producer_lock.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %producer_lock.i) #12
  %size.i.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4, i32 0, i32 7
  %64 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i.i118 = icmp eq i32 %65, 0
  br i1 %tobool.not.i.i118, label %if.else.do.body.sink.split_crit_edge, label %lor.lhs.false.i.i, !prof !264

if.else.do.body.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.sink.split

lor.lhs.false.i.i:                                ; preds = %if.else
  %queue.i.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4, i32 0, i32 9
  %66 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %queue.i.i, align 8
  %68 = ptrtoint ptr %handshake_queue26 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %handshake_queue26, align 128
  %arrayidx.i.i = getelementptr ptr, ptr %67, i32 %69
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %71, null
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %lor.lhs.false.i.i.do.body.sink.split_crit_edge

lor.lhs.false.i.i.do.body.sink.split_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.sink.split

do.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !277
  %72 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %queue.i.i, align 8
  %74 = ptrtoint ptr %handshake_queue26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %handshake_queue26, align 128
  %inc.i.i = add i32 %75, 1
  store i32 %inc.i.i, ptr %handshake_queue26, align 128
  %arrayidx13.i.i = getelementptr ptr, ptr %73, i32 %75
  %76 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %skb, ptr %arrayidx13.i.i, align 4
  %77 = load i32, ptr %handshake_queue26, align 128
  %78 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %size.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %79)
  %cmp.not.i.i119 = icmp slt i32 %77, %79
  br i1 %cmp.not.i.i119, label %do.end.i.i.if.end50_crit_edge, label %do.end.i.i.if.end29.sink.split_crit_edge, !prof !266

do.end.i.i.if.end29.sink.split_crit_edge:         ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.sink.split

do.end.i.i.if.end50_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

if.end29.sink.split:                              ; preds = %do.end.i.i.if.end29.sink.split_crit_edge, %do.end.i.if.end29.sink.split_crit_edge
  %handshake_queue26.sink = phi ptr [ %handshake_queue, %do.end.i.if.end29.sink.split_crit_edge ], [ %handshake_queue26, %do.end.i.i.if.end29.sink.split_crit_edge ]
  %producer_lock.sink.ph = phi ptr [ %producer_lock, %do.end.i.if.end29.sink.split_crit_edge ], [ %producer_lock.i, %do.end.i.i.if.end29.sink.split_crit_edge ]
  %80 = ptrtoint ptr %handshake_queue26.sink to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %handshake_queue26.sink, align 128
  br label %if.end50

do.body.sink.split:                               ; preds = %lor.lhs.false.i.i.do.body.sink.split_crit_edge, %if.else.do.body.sink.split_crit_edge, %lor.lhs.false.i116.do.body.sink.split_crit_edge, %if.then18.do.body.sink.split_crit_edge
  %producer_lock.i.sink = phi ptr [ %producer_lock, %if.then18.do.body.sink.split_crit_edge ], [ %producer_lock, %lor.lhs.false.i116.do.body.sink.split_crit_edge ], [ %producer_lock.i, %if.else.do.body.sink.split_crit_edge ], [ %producer_lock.i, %lor.lhs.false.i.i.do.body.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %producer_lock.i.sink) #12
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.then15.do.body_crit_edge, %sw.bb.do.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %__endpoint) #12
  %81 = call ptr @memset(ptr %__endpoint, i32 255, i32 44)
  %call32 = call i32 @wg_socket_endpoint_from_skb(ptr noundef nonnull %__endpoint, ptr noundef %skb) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wg_packet_receive.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@wg_packet_receive, %cleanup)) #12
          to label %land.lhs.true [label %cleanup], !srcloc !268

land.lhs.true:                                    ; preds = %do.body
  %call44 = call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true.cleanup_crit_edge, label %if.then46

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then46:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %82 = ptrtoint ptr %wg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %wg, align 128
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @wg_packet_receive.descriptor, ptr noundef nonnull @.str.119, ptr noundef %83, ptr noundef nonnull %__endpoint) #12
  br label %cleanup

if.end50:                                         ; preds = %if.end29.sink.split, %do.end.i.i.if.end50_crit_edge, %do.end.i.if.end50_crit_edge
  %producer_lock.sink.sink = phi ptr [ %producer_lock.i, %do.end.i.i.if.end50_crit_edge ], [ %producer_lock.sink.ph, %if.end29.sink.split ], [ %producer_lock, %do.end.i.if.end50_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %producer_lock.sink.sink) #12
  %call.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %handshake_queue_len, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %handshake_queue_len, i32 1, i32 3, i32 1) #12
  %84 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %handshake_queue_len, ptr %handshake_queue_len, i32 1, ptr elementtype(i32) %handshake_queue_len) #12, !srcloc !278
  %last_cpu = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4, i32 2
  %85 = ptrtoint ptr %last_cpu to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %last_cpu, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %cpumask_test_cpu.exit.i.while.cond.i_crit_edge, %if.end50
  %cpu.0.i = phi i32 [ %86, %if.end50 ], [ %rem.i, %cpumask_test_cpu.exit.i.while.cond.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %87 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %cpu.0.i)
  %cmp.not.i.i.i.i = icmp ugt i32 %87, %cpu.0.i
  br i1 %cmp.not.i.i.i.i, label %while.cond.i.cpumask_test_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

while.cond.i.cpumask_test_cpu.exit.i_crit_edge:   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %while.cond.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !266

land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit.i

cpumask_test_cpu.exit.i:                          ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_test_cpu.exit.i_crit_edge, %while.cond.i.cpumask_test_cpu.exit.i_crit_edge
  %div3.i.i.i = lshr i32 %cpu.0.i, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %88 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu.0.i, 31
  %90 = shl nuw i32 1, %and.i.i.i
  %91 = and i32 %89, %90
  %tobool.not.i120 = icmp eq i32 %91, 0
  %call4.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %92 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i = urem i32 %call4.i, %92
  br i1 %tobool.not.i120, label %cpumask_test_cpu.exit.i.while.cond.i_crit_edge, label %cleanup.thread, !prof !264

cpumask_test_cpu.exit.i.while.cond.i_crit_edge:   ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

cleanup.thread:                                   ; preds = %cpumask_test_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %last_cpu to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %rem.i, ptr %last_cpu, align 4
  %handshake_receive_wq = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 10
  %94 = ptrtoint ptr %handshake_receive_wq to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %handshake_receive_wq, align 4
  %worker = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 4, i32 1
  %96 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %worker, align 128
  %98 = ptrtoint ptr %97 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0.i
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx, align 4
  %add = add i32 %100, %98
  %101 = inttoptr i32 %add to ptr
  %work = getelementptr inbounds %struct.multicore_worker, ptr %101, i32 0, i32 1
  %call60 = tail call zeroext i1 @queue_work_on(i32 noundef %cpu.0.i, ptr noundef %95, ptr noundef %work) #12
  br label %return

cleanup:                                          ; preds = %if.then46, %land.lhs.true.cleanup_crit_edge, %do.body
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %__endpoint) #12
  br label %err

sw.bb62:                                          ; preds = %if.end
  %102 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %104 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i122 = zext i16 %105 to i32
  %add.ptr.i.i123 = getelementptr i8, ptr %103, i32 %conv.i.i122
  %106 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %protocol.i.i, align 8
  %108 = zext i16 %107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %108, ptr @__sancov_gen_cov_switch_values.164)
  switch i16 %107, label %sw.bb62.ip_tunnel_get_dsfield.exit_crit_edge [
    i16 2048, label %if.then.i
    i16 -31011, label %if.then6.i
  ]

sw.bb62.ip_tunnel_get_dsfield.exit_crit_edge:     ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_tunnel_get_dsfield.exit

if.then.i:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #14
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i123, i32 0, i32 1
  %109 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %tos.i, align 1
  br label %ip_tunnel_get_dsfield.exit

if.then6.i:                                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #14
  %111 = ptrtoint ptr %add.ptr.i.i123 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %add.ptr.i.i123, align 2
  %113 = lshr i16 %112, 4
  %conv1.i.i = trunc i16 %113 to i8
  br label %ip_tunnel_get_dsfield.exit

ip_tunnel_get_dsfield.exit:                       ; preds = %if.then6.i, %if.then.i, %sw.bb62.ip_tunnel_get_dsfield.exit_crit_edge
  %retval.0.i124 = phi i8 [ %110, %if.then.i ], [ %conv1.i.i, %if.then6.i ], [ 0, %sw.bb62.ip_tunnel_get_dsfield.exit_crit_edge ]
  %ds = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %114 = ptrtoint ptr %ds to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %retval.0.i124, ptr %ds, align 4
  %key_idx.i = getelementptr inbounds %struct.message_data, ptr %add.ptr.i30.i, i32 0, i32 1
  %115 = ptrtoint ptr %key_idx.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %key_idx.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %peer.i) #12
  %117 = ptrtoint ptr %peer.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %peer.i, align 4
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i.i126 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i126, label %ip_tunnel_get_dsfield.exit.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true.i.i

ip_tunnel_get_dsfield.exit.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %ip_tunnel_get_dsfield.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

land.lhs.true.i.i:                                ; preds = %ip_tunnel_get_dsfield.exit
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i127 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i127, label %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 750, ptr noundef nonnull @.str.155) #12
  br label %rcu_read_lock_bh.exit.i

rcu_read_lock_bh.exit.i:                          ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock_bh.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock_bh.exit.i_crit_edge, %ip_tunnel_get_dsfield.exit.rcu_read_lock_bh.exit.i_crit_edge
  %index_hashtable.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 14
  %118 = ptrtoint ptr %index_hashtable.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %index_hashtable.i, align 4
  %call.i128 = call ptr @wg_index_hashtable_lookup(ptr noundef %119, i32 noundef 2, i32 noundef %116, ptr noundef nonnull %peer.i) #12
  %keypair.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %120 = ptrtoint ptr %keypair.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call.i128, ptr %keypair.i, align 8
  %call4.i129 = call ptr @wg_noise_keypair_get(ptr noundef %call.i128) #12
  %tobool.not.i130 = icmp eq ptr %call4.i129, null
  br i1 %tobool.not.i130, label %rcu_read_lock_bh.exit.i.err_keypair.i_crit_edge, label %do.end.i131, !prof !264

rcu_read_lock_bh.exit.i.err_keypair.i_crit_edge:  ; preds = %rcu_read_lock_bh.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_keypair.i

do.end.i131:                                      ; preds = %rcu_read_lock_bh.exit.i
  %121 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %peer.i, align 4
  %is_dead.i = getelementptr inbounds %struct.wg_peer, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %is_dead.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load volatile i8, ptr %is_dead.i, align 8, !range !270
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool8.not.i = icmp eq i8 %124, 0
  br i1 %tobool8.not.i, label %if.end17.i, label %do.end.i131.err.i_crit_edge, !prof !266

do.end.i131.err.i_crit_edge:                      ; preds = %do.end.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end17.i:                                       ; preds = %do.end.i131
  %decrypt_queue.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 3
  %rx_queue.i = getelementptr inbounds %struct.wg_peer, ptr %122, i32 0, i32 2
  %packet_crypt_wq.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 9
  %125 = ptrtoint ptr %packet_crypt_wq.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %packet_crypt_wq.i, align 16
  %last_cpu.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 3, i32 2
  %state.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !273
  %127 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile i32 0, ptr %state.i.i, align 4
  %call.i54.i = call zeroext i1 @wg_prev_queue_enqueue(ptr noundef %rx_queue.i, ptr noundef %skb) #12
  br i1 %call.i54.i, label %if.end.i.i132, label %if.end17.i.err.i_crit_edge, !prof !266

if.end17.i.err.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %err.i

if.end.i.i132:                                    ; preds = %if.end17.i
  %128 = ptrtoint ptr %last_cpu.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %last_cpu.i, align 4
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %cpumask_test_cpu.exit.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i.i132
  %cpu.0.i.i.i = phi i32 [ %129, %if.end.i.i132 ], [ %rem.i.i.i, %cpumask_test_cpu.exit.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %130 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %cpu.0.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp ugt i32 %130, %cpu.0.i.i.i
  br i1 %cmp.not.i.i.i.i.i.i, label %while.cond.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i.i

while.cond.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %while.cond.i.i.i
  %.b37.i.i.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.i.i, !prof !266

land.rhs.i.i.i.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cpumask_test_cpu.exit.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.159, i32 noundef 108, i32 noundef 9, ptr noundef null) #12
  br label %cpumask_test_cpu.exit.i.i.i

cpumask_test_cpu.exit.i.i.i:                      ; preds = %if.then.i.i.i.i.i.i, %land.rhs.i.i.i.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge, %while.cond.i.i.i.cpumask_test_cpu.exit.i.i.i_crit_edge
  %div3.i.i.i.i.i = lshr i32 %cpu.0.i.i.i, 5
  %arrayidx.i.i.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i.i.i
  %131 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load volatile i32, ptr %arrayidx.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %cpu.0.i.i.i, 31
  %133 = shl nuw i32 1, %and.i.i.i.i.i
  %134 = and i32 %132, %133
  %tobool.not.i.i.i133 = icmp eq i32 %134, 0
  %call4.i.i.i = call i32 @cpumask_next(i32 noundef %cpu.0.i.i.i, ptr noundef nonnull @__cpu_online_mask) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %135 = load i32, ptr @nr_cpu_ids, align 4
  %rem.i.i.i = urem i32 %call4.i.i.i, %135
  br i1 %tobool.not.i.i.i133, label %cpumask_test_cpu.exit.i.i.i.while.cond.i.i.i_crit_edge, label %wg_cpumask_next_online.exit.i.i, !prof !264

cpumask_test_cpu.exit.i.i.i.while.cond.i.i.i_crit_edge: ; preds = %cpumask_test_cpu.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i.i.i

wg_cpumask_next_online.exit.i.i:                  ; preds = %cpumask_test_cpu.exit.i.i.i
  %136 = ptrtoint ptr %last_cpu.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %rem.i.i.i, ptr %last_cpu.i, align 4
  %producer_lock.i.i.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 3, i32 0, i32 1
  call void @_raw_spin_lock_bh(ptr noundef %producer_lock.i.i.i) #12
  %size.i.i.i.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 3, i32 0, i32 7
  %137 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i.i.i.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i.i.i.i, label %wg_cpumask_next_online.exit.i.i.if.then26.i_crit_edge, label %lor.lhs.false.i.i.i.i, !prof !264

wg_cpumask_next_online.exit.i.i.if.then26.i_crit_edge: ; preds = %wg_cpumask_next_online.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

lor.lhs.false.i.i.i.i:                            ; preds = %wg_cpumask_next_online.exit.i.i
  %queue.i.i.i.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 3, i32 0, i32 9
  %139 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %queue.i.i.i.i, align 8
  %141 = ptrtoint ptr %decrypt_queue.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %decrypt_queue.i, align 128
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %140, i32 %142
  %143 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %144, null
  br i1 %tobool4.not.i.i.i.i, label %do.end.i.i.i.i, label %lor.lhs.false.i.i.i.i.if.then26.i_crit_edge

lor.lhs.false.i.i.i.i.if.then26.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then26.i

do.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !277
  %145 = ptrtoint ptr %queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %queue.i.i.i.i, align 8
  %147 = ptrtoint ptr %decrypt_queue.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %decrypt_queue.i, align 128
  %inc.i.i.i.i = add i32 %148, 1
  store i32 %inc.i.i.i.i, ptr %decrypt_queue.i, align 128
  %arrayidx13.i.i.i.i = getelementptr ptr, ptr %146, i32 %148
  %149 = ptrtoint ptr %arrayidx13.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store volatile ptr %skb, ptr %arrayidx13.i.i.i.i, align 4
  %150 = load i32, ptr %decrypt_queue.i, align 128
  %151 = ptrtoint ptr %size.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %size.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %152)
  %cmp.not.i.i.i.i134 = icmp slt i32 %150, %152
  br i1 %cmp.not.i.i.i.i134, label %do.end.i.i.i.i.wg_queue_enqueue_per_device_and_peer.exit.i_crit_edge, label %if.then24.i.i.i.i, !prof !266

do.end.i.i.i.i.wg_queue_enqueue_per_device_and_peer.exit.i_crit_edge: ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wg_queue_enqueue_per_device_and_peer.exit.i

if.then24.i.i.i.i:                                ; preds = %do.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %153 = ptrtoint ptr %decrypt_queue.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %decrypt_queue.i, align 128
  br label %wg_queue_enqueue_per_device_and_peer.exit.i

wg_queue_enqueue_per_device_and_peer.exit.i:      ; preds = %if.then24.i.i.i.i, %do.end.i.i.i.i.wg_queue_enqueue_per_device_and_peer.exit.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %producer_lock.i.i.i) #12
  %worker.i.i = getelementptr inbounds %struct.wg_device, ptr %wg, i32 0, i32 3, i32 1
  %154 = ptrtoint ptr %worker.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %worker.i.i, align 128
  %156 = ptrtoint ptr %155 to i32
  %arrayidx.i.i135 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.0.i.i.i
  %157 = ptrtoint ptr %arrayidx.i.i135 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx.i.i135, align 4
  %add.i.i = add i32 %158, %156
  %159 = inttoptr i32 %add.i.i to ptr
  %work.i.i = getelementptr inbounds %struct.multicore_worker, ptr %159, i32 0, i32 1
  %call15.i.i = call zeroext i1 @queue_work_on(i32 noundef %cpu.0.i.i.i, ptr noundef %126, ptr noundef %work.i.i) #12
  br label %if.then36.i

if.then26.i:                                      ; preds = %lor.lhs.false.i.i.i.i.if.then26.i_crit_edge, %wg_cpumask_next_online.exit.i.i.if.then26.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %producer_lock.i.i.i) #12
  %160 = ptrtoint ptr %keypair.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %keypair.i, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %161, align 8
  %refcount.i.i = getelementptr inbounds %struct.wg_peer, ptr %163, i32 0, i32 29
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %164 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !272
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %164, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then26.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !264

if.then26.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then26.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %165 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %165)
  %.not.i.i.i.i.i.i = icmp sgt i32 %165, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.wg_peer_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !266

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.wg_peer_get.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wg_peer_get.exit.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then26.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then26.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %wg_peer_get.exit.i

wg_peer_get.exit.i:                               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.wg_peer_get.exit.i_crit_edge
  %call.i.i.i137 = call zeroext i1 @__kasan_check_write(ptr noundef %state.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !273
  %166 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store volatile i32 2, ptr %state.i.i, align 4
  %napi.i = getelementptr inbounds %struct.wg_peer, ptr %163, i32 0, i32 33
  %call.i.i138 = call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #12
  br i1 %call.i.i138, label %if.then.i.i139, label %wg_peer_get.exit.i.wg_queue_enqueue_per_peer_rx.exit_crit_edge

wg_peer_get.exit.i.wg_queue_enqueue_per_peer_rx.exit_crit_edge: ; preds = %wg_peer_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %wg_queue_enqueue_per_peer_rx.exit

if.then.i.i139:                                   ; preds = %wg_peer_get.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__napi_schedule(ptr noundef %napi.i) #12
  br label %wg_queue_enqueue_per_peer_rx.exit

wg_queue_enqueue_per_peer_rx.exit:                ; preds = %if.then.i.i139, %wg_peer_get.exit.i.wg_queue_enqueue_per_peer_rx.exit_crit_edge
  call void @wg_peer_put(ptr noundef %163) #12
  br label %if.then36.i

if.then36.i:                                      ; preds = %wg_queue_enqueue_per_peer_rx.exit, %wg_queue_enqueue_per_device_and_peer.exit.i
  %call.i55.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i55.i, label %if.then36.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true.i58.i

if.then36.i.rcu_read_unlock_bh.exit.i_crit_edge:  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true.i58.i:                              ; preds = %if.then36.i
  %call1.i56.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i56.i)
  %tobool.not.i57.i = icmp eq i32 %call1.i56.i, 0
  br i1 %tobool.not.i57.i, label %land.lhs.true.i58.i.rcu_read_unlock_bh.exit.i_crit_edge, label %land.lhs.true2.i60.i

land.lhs.true.i58.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true.i58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit.i

land.lhs.true2.i60.i:                             ; preds = %land.lhs.true.i58.i
  %.b4.i59.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i59.i, label %land.lhs.true2.i60.i.rcu_read_unlock_bh.exit.i_crit_edge, label %if.then.i61.i

land.lhs.true2.i60.i.rcu_read_unlock_bh.exit.i_crit_edge: ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit.i

if.then.i61.i:                                    ; preds = %land.lhs.true2.i60.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 761, ptr noundef nonnull @.str.156) #12
  br label %rcu_read_unlock_bh.exit.i

rcu_read_unlock_bh.exit.i:                        ; preds = %if.then.i61.i, %land.lhs.true2.i60.i.rcu_read_unlock_bh.exit.i_crit_edge, %land.lhs.true.i58.i.rcu_read_unlock_bh.exit.i_crit_edge, %if.then36.i.rcu_read_unlock_bh.exit.i_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  call fastcc void @local_bh_enable() #12
  br label %wg_packet_consume_data.exit

err.i:                                            ; preds = %if.end17.i.err.i_crit_edge, %do.end.i131.err.i_crit_edge
  %167 = ptrtoint ptr %keypair.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %keypair.i, align 8
  call void @wg_noise_keypair_put(ptr noundef %168, i1 noundef zeroext false) #12
  br label %err_keypair.i

err_keypair.i:                                    ; preds = %err.i, %rcu_read_lock_bh.exit.i.err_keypair.i_crit_edge
  %call.i62.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i62.i, label %err_keypair.i.rcu_read_unlock_bh.exit69.i_crit_edge, label %land.lhs.true.i65.i

err_keypair.i.rcu_read_unlock_bh.exit69.i_crit_edge: ; preds = %err_keypair.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit69.i

land.lhs.true.i65.i:                              ; preds = %err_keypair.i
  %call1.i63.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63.i)
  %tobool.not.i64.i = icmp eq i32 %call1.i63.i, 0
  br i1 %tobool.not.i64.i, label %land.lhs.true.i65.i.rcu_read_unlock_bh.exit69.i_crit_edge, label %land.lhs.true2.i67.i

land.lhs.true.i65.i.rcu_read_unlock_bh.exit69.i_crit_edge: ; preds = %land.lhs.true.i65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit69.i

land.lhs.true2.i67.i:                             ; preds = %land.lhs.true.i65.i
  %.b4.i66.i = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i66.i, label %land.lhs.true2.i67.i.rcu_read_unlock_bh.exit69.i_crit_edge, label %if.then.i68.i

land.lhs.true2.i67.i.rcu_read_unlock_bh.exit69.i_crit_edge: ; preds = %land.lhs.true2.i67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit69.i

if.then.i68.i:                                    ; preds = %land.lhs.true2.i67.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.154, i32 noundef 761, ptr noundef nonnull @.str.156) #12
  br label %rcu_read_unlock_bh.exit69.i

rcu_read_unlock_bh.exit69.i:                      ; preds = %if.then.i68.i, %land.lhs.true2.i67.i.rcu_read_unlock_bh.exit69.i_crit_edge, %land.lhs.true.i65.i.rcu_read_unlock_bh.exit69.i_crit_edge, %err_keypair.i.rcu_read_unlock_bh.exit69.i_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  call fastcc void @local_bh_enable() #12
  %169 = ptrtoint ptr %peer.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %peer.i, align 4
  call void @wg_peer_put(ptr noundef %170) #12
  call void @consume_skb(ptr noundef %skb) #12
  br label %wg_packet_consume_data.exit

wg_packet_consume_data.exit:                      ; preds = %rcu_read_unlock_bh.exit69.i, %rcu_read_unlock_bh.exit.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %peer.i) #12
  br label %return

do.end77:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 586, i32 noundef 9, ptr noundef nonnull @.str.120) #12
  br label %err

err:                                              ; preds = %do.end77, %cleanup, %pskb_may_pull.exit25.i.err_crit_edge, %if.end.i19.i.err_crit_edge, %land.lhs.true26.i.i.err_crit_edge, %land.lhs.true18.i.i.err_crit_edge, %land.lhs.true10.i.i.err_crit_edge, %if.end6.i.i.err_crit_edge, %if.end56.i.err_crit_edge, %pskb_trim.exit.i.err_crit_edge, %pskb_may_pull.exit.i.err_crit_edge, %if.end.i.i.err_crit_edge, %if.end18.i.err_crit_edge, %lor.rhs8.i.err_crit_edge, %if.end.i.err_crit_edge, %lor.rhs.i.err_crit_edge, %lor.lhs.false.i.err_crit_edge, %wg_check_packet_protocol.exit.i.err_crit_edge, %entry.err_crit_edge
  call void @consume_skb(ptr noundef %skb) #12
  br label %return

return:                                           ; preds = %err, %wg_packet_consume_data.exit, %cleanup.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rng_is_initialized() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_cookie_message_consume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wg_cookie_validate_packet(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_handshake_cookie(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_noise_handshake_consume_initiation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_socket_set_peer_endpoint_from_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_handshake_response(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_noise_handshake_consume_response(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_noise_handshake_begin_session(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_session_derived(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_handshake_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_keepalive(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_rx_stats(ptr nocapture noundef %peer, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %3, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !279
  %4 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peer, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 128
  %8 = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 130
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 64
  %11 = tail call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %17 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i, label %entry.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

entry.u64_stats_update_begin.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %entry
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !280
  %20 = tail call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i.i.i25 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i25 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %25, ptrtoint (ptr @lockdep_recursion to i32)
  %26 = inttoptr i32 %add.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !281
  %29 = tail call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i.i.i7.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not.i.i = icmp eq i32 %28, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i.i.i9.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %40, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !282
  %41 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %44, ptrtoint (ptr @hardirqs_enabled to i32)
  %45 = inttoptr i32 %add47.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !283
  %48 = tail call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i.i.i12.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %51, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool54.not.i.i = icmp eq i32 %47, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !266

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.140, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %entry.u64_stats_update_begin.exit_crit_edge
  %52 = ptrtoint ptr %10 to i32
  %add = add i32 %16, %52
  %53 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %55, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !284
  %dep_map.i.i.i = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %53, i32 0, i32 4, i32 0, i32 1
  %56 = tail call ptr @llvm.returnaddress(i32 0) #12
  %57 = ptrtoint ptr %56 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %57) #12
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %53, align 32
  %inc = add i64 %59, 1
  store i64 %inc, ptr %53, align 32
  %conv = zext i32 %len to i64
  %rx_bytes = getelementptr inbounds %struct.pcpu_sw_netstats, ptr %53, i32 0, i32 1
  %60 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %rx_bytes, align 8
  %add6 = add i64 %61, %conv
  store i64 %add6, ptr %rx_bytes, align 8
  %rx_bytes8 = getelementptr inbounds %struct.wg_peer, ptr %peer, i32 0, i32 17
  %62 = ptrtoint ptr %rx_bytes8 to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %rx_bytes8, align 8
  %add9 = add i64 %63, %conv
  store i64 %add9, ptr %rx_bytes8, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %57) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !285
  %64 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %65, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !286
  %66 = tail call i32 @llvm.read_register.i32(metadata !254) #12
  %and.i.i.i23 = and i32 %66, -16384
  %67 = inttoptr i32 %and.i.i.i23 to ptr
  %preempt_count.i.i24 = getelementptr inbounds %struct.thread_info, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %preempt_count.i.i24 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %preempt_count.i.i24, align 4
  %sub.i = add i32 %69, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i24, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_any_authenticated_packet_received(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_any_authenticated_packet_traversal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_coarse_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_prev_queue_dequeue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_scrub_packet(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__skb_flow_dissect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_socket_set_peer_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_noise_received_with_keypair(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_staged_packets(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_timers_data_received(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ip_tunnel_parse_protocol(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @INET_ECN_decapsulate(ptr noundef %skb, i8 noundef zeroext %outer, i8 noundef zeroext %inner) unnamed_addr #5 align 64 {
entry:
  %vhdr.i.i.i.i2 = alloca %struct.vlan_hdr, align 2
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #14
  %0 = and i8 %inner, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i.not.i = icmp eq i8 %0, 0
  br i1 %cmp.i.not.i, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %trunc = trunc i8 %outer to i2
  %1 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.165)
  switch i2 %trunc, label %if.then.if.end8_crit_edge [
    i2 -1, label %if.then2
    i2 1, label %if.then5
  ]

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then2:                                         ; preds = %if.then
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %2 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %4 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %5 to i32
  %6 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.166)
  switch i16 %3, label %if.then2.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then2.if.then.i.i.i.i_crit_edge
    i16 -32512, label %if.then2.if.then.i.i.i.i_crit_edge88
  ]

if.then2.if.then.i.i.i.i_crit_edge88:             ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.then2.if.then.i.i.i.i_crit_edge:               ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i

if.then2.skb_protocol.exit.i_crit_edge:           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then2.if.then.i.i.i.i_crit_edge, %if.then2.if.then.i.i.i.i_crit_edge88
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i.i.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp.i.i.i.i = icmp ult i16 %5, 4
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !264

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.157, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %if.end8

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i.if.end26.i.i.i.i_crit_edge ]
  %7 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #12
  %8 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !271
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %7, align 2, !annotation !271
  %10 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %14 = add i32 %vlan_depth.1.i.i.i.i, %13
  %sub.i1.i.i.i.i.i = sub i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !266

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %16, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !264
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %17 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !264
  br i1 %17, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !264

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #12
  br label %if.end8

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #12
  %20 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.167)
  switch i16 %19, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge89
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge89: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge89
  %add.i.i.i.i = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.then2.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %3, %if.then2.skb_protocol.exit.i_crit_edge ], [ %19, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %21 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.168)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.if.end8_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb6.i
  ]

skb_protocol.exit.i.if.end8_crit_edge:            ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %25 to i32
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %conv.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %26 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ugt ptr %add.ptr.i, %27
  br i1 %cmp.not.i, label %sw.bb.i.if.end8_crit_edge, label %if.then.i1

sw.bb.i.if.end8_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then.i1:                                       ; preds = %sw.bb.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tos.i.i, align 1
  %30 = add i8 %29, 1
  %31 = and i8 %30, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i.i, label %if.then.i1.if.end8_crit_edge, label %if.end.i.i

if.then.i1.if.end8_crit_edge:                     ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.i.i:                                       ; preds = %if.then.i1
  call void @__sanitizer_cov_trace_pc() #14
  %32 = and i8 %30, 3
  %conv4.i.i = zext i8 %32 to i16
  %add5.i.i = add nuw nsw i16 %conv4.i.i, -5
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %check.i.i, align 2
  %add.i.i.i = add i16 %34, %add5.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %add5.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %add5.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv6.i.i.i
  %35 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %add7.i.i.i, ptr %check.i.i, align 2
  %36 = or i8 %29, 3
  %37 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %tos.i.i, align 1
  br label %if.end8

sw.bb6.i:                                         ; preds = %skb_protocol.exit.i
  %head.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %38 = ptrtoint ptr %head.i1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %head.i1.i, align 8
  %network_header.i2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %40 = ptrtoint ptr %network_header.i2.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i2.i, align 4
  %conv.i3.i = zext i16 %41 to i32
  %add.ptr.i4.i = getelementptr i8, ptr %39, i32 %conv.i3.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i4.i, i32 40
  %tail.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %42 = ptrtoint ptr %tail.i5.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tail.i5.i, align 8
  %cmp10.not.i = icmp ugt ptr %add.ptr8.i, %43
  br i1 %cmp10.not.i, label %sw.bb6.i.if.end8_crit_edge, label %if.then12.i

sw.bb6.i.if.end8_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then12.i:                                      ; preds = %sw.bb6.i
  %44 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i4.i, align 2
  %46 = and i16 %45, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %cmp.i14.not.i.i = icmp eq i16 %46, 0
  br i1 %cmp.i14.not.i.i, label %if.then12.i.if.end8_crit_edge, label %if.end.i10.i

if.then12.i.if.end8_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.i10.i:                                     ; preds = %if.then12.i
  %47 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i4.i, align 4
  %or.i.i = or i32 %48, 3145728
  store i32 %or.i.i, ptr %add.ptr.i4.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %49 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %50 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %50)
  %cmp.i.i = icmp eq i16 %50, 1024
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i10.i.if.end8_crit_edge

if.end.i10.i.if.end8_crit_edge:                   ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3.i.i:                                     ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #14
  %51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 8
  %neg.i.i.i = xor i32 %48, -1
  %add.i.i.i11.i = add i32 %53, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i11.i, i32 %neg.i.i.i)
  %cmp.i.i.i12.i = icmp ult i32 %add.i.i.i11.i, %neg.i.i.i
  %conv.i.i.i13.i = zext i1 %cmp.i.i.i12.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i11.i, %or.i.i
  %add.i.i14.i = add i32 %add1.i.i.i.i, %conv.i.i.i13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i14.i, i32 %or.i.i)
  %cmp.i.i15.i = icmp ult i32 %add.i.i14.i, %or.i.i
  %conv.i.i16.i = zext i1 %cmp.i.i15.i to i32
  %add1.i.i.i = add i32 %add.i.i14.i, %conv.i.i16.i
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add1.i.i.i, ptr %51, align 8
  br label %if.end8

if.then5:                                         ; preds = %if.then
  %protocol.i.i.i3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %55 = ptrtoint ptr %protocol.i.i.i3 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %protocol.i.i.i3, align 8
  %mac_len.i.i.i.i4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %57 = ptrtoint ptr %mac_len.i.i.i.i4 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mac_len.i.i.i.i4, align 4
  %conv.i.i.i.i5 = zext i16 %58 to i32
  %59 = zext i16 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.169)
  switch i16 %56, label %if.then5.skb_protocol.exit.i42_crit_edge [
    i16 -30552, label %if.then5.if.then.i.i.i.i7_crit_edge
    i16 -32512, label %if.then5.if.then.i.i.i.i7_crit_edge90
  ]

if.then5.if.then.i.i.i.i7_crit_edge90:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i7

if.then5.if.then.i.i.i.i7_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i.i.i7

if.then5.skb_protocol.exit.i42_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit.i42

if.then.i.i.i.i7:                                 ; preds = %if.then5.if.then.i.i.i.i7_crit_edge, %if.then5.if.then.i.i.i.i7_crit_edge90
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i.i.i.i6 = icmp eq i16 %58, 0
  br i1 %tobool.not.i.i.i.i6, label %if.then.i.i.i.i7.if.end26.i.i.i.i18_crit_edge, label %if.then1.i.i.i.i9

if.then.i.i.i.i7.if.end26.i.i.i.i18_crit_edge:    ; preds = %if.then.i.i.i.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26.i.i.i.i18

if.then1.i.i.i.i9:                                ; preds = %if.then.i.i.i.i7
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %58)
  %cmp.i.i.i.i8 = icmp ult i16 %58, 4
  br i1 %cmp.i.i.i.i8, label %do.end.i.i.i.i10, label %if.end25.i.i.i.i12, !prof !264

do.end.i.i.i.i10:                                 ; preds = %if.then1.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.157, i32 noundef 598, i32 noundef 9, ptr noundef null) #12
  br label %if.end8

if.end25.i.i.i.i12:                               ; preds = %if.then1.i.i.i.i9
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i.i11 = add nsw i32 %conv.i.i.i.i5, -4
  br label %if.end26.i.i.i.i18

if.end26.i.i.i.i18:                               ; preds = %if.end25.i.i.i.i12, %if.then.i.i.i.i7.if.end26.i.i.i.i18_crit_edge
  %vlan_depth.0.i.i.i.i13 = phi i32 [ %sub.i.i.i.i11, %if.end25.i.i.i.i12 ], [ 14, %if.then.i.i.i.i7.if.end26.i.i.i.i18_crit_edge ]
  %60 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i2, i32 0, i32 1
  %len.i.i.i.i.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i16 = icmp eq ptr %skb, null
  %data.i.i.i.i.i17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i23

do.body27.i.i.i.i23:                              ; preds = %do.body27.backedge.i.i.i.i40, %if.end26.i.i.i.i18
  %vlan_depth.1.i.i.i.i19 = phi i32 [ %vlan_depth.0.i.i.i.i13, %if.end26.i.i.i.i18 ], [ %add.i.i.i.i39, %do.body27.backedge.i.i.i.i40 ]
  %parse_depth.0.i.i.i.i20 = phi i32 [ 8, %if.end26.i.i.i.i18 ], [ %dec.i.i.i.i33, %do.body27.backedge.i.i.i.i40 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i2) #12
  %61 = ptrtoint ptr %vhdr.i.i.i.i2 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 -1, ptr %vhdr.i.i.i.i2, align 2, !annotation !271
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 -1, ptr %60, align 2, !annotation !271
  %63 = ptrtoint ptr %len.i.i.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len.i.i.i.i.i.i14, align 4
  %65 = ptrtoint ptr %data_len.i.i.i.i.i.i15 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_len.i.i.i.i.i.i15, align 8
  %67 = add i32 %vlan_depth.1.i.i.i.i19, %66
  %sub.i1.i.i.i.i.i21 = sub i32 %64, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i21)
  %cmp.i.i.i.i.i.i22 = icmp sgt i32 %sub.i1.i.i.i.i.i21, 3
  br i1 %cmp.i.i.i.i.i.i22, label %if.then.i.i.i.i.i.i25, label %if.end.i.i.i.i.i.i26, !prof !266

if.then.i.i.i.i.i.i25:                            ; preds = %do.body27.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #14
  %68 = ptrtoint ptr %data.i.i.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i.i.i.i17, align 4
  %add.ptr.i.i.i.i.i.i24 = getelementptr i8, ptr %69, i32 %vlan_depth.1.i.i.i.i19
  br label %skb_header_pointer.exit.i.i.i.i35

if.end.i.i.i.i.i.i26:                             ; preds = %do.body27.i.i.i.i23
  br i1 %tobool2.not.i.i.i.i.i.i16, label %if.end.i.i.i.i.i.i26.cleanup.thread.i.i.i.i36_crit_edge, label %lor.lhs.false.i.i.i.i.i.i30

if.end.i.i.i.i.i.i26.cleanup.thread.i.i.i.i36_crit_edge: ; preds = %if.end.i.i.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i.i36

lor.lhs.false.i.i.i.i.i.i30:                      ; preds = %if.end.i.i.i.i.i.i26
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.i.i27 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i19, ptr noundef nonnull %vhdr.i.i.i.i2, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i27)
  %cmp3.i.i.i.i.i.i28 = icmp slt i32 %call.i.i.i.i.i.i27, 0
  %spec.select.i.i.i.i.i.i29 = select i1 %cmp3.i.i.i.i.i.i28, ptr null, ptr %vhdr.i.i.i.i2, !prof !264
  br label %skb_header_pointer.exit.i.i.i.i35

skb_header_pointer.exit.i.i.i.i35:                ; preds = %lor.lhs.false.i.i.i.i.i.i30, %if.then.i.i.i.i.i.i25
  %retval.0.i.i.i.i.i.i31 = phi ptr [ %add.ptr.i.i.i.i.i.i24, %if.then.i.i.i.i.i.i25 ], [ %spec.select.i.i.i.i.i.i29, %lor.lhs.false.i.i.i.i.i.i30 ]
  %tobool29.not.i.i.i.i32 = icmp eq ptr %retval.0.i.i.i.i.i.i31, null
  %dec.i.i.i.i33 = add nsw i32 %parse_depth.0.i.i.i.i20, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i33)
  %tobool30.not.i.i.i.i34 = icmp eq i32 %dec.i.i.i.i33, 0
  %70 = select i1 %tobool29.not.i.i.i.i32, i1 true, i1 %tobool30.not.i.i.i.i34, !prof !264
  br i1 %70, label %skb_header_pointer.exit.i.i.i.i35.cleanup.thread.i.i.i.i36_crit_edge, label %do.cond42.i.i.i.i38, !prof !264

skb_header_pointer.exit.i.i.i.i35.cleanup.thread.i.i.i.i36_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread.i.i.i.i36

cleanup.thread.i.i.i.i36:                         ; preds = %skb_header_pointer.exit.i.i.i.i35.cleanup.thread.i.i.i.i36_crit_edge, %if.end.i.i.i.i.i.i26.cleanup.thread.i.i.i.i36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i2) #12
  br label %if.end8

do.cond42.i.i.i.i38:                              ; preds = %skb_header_pointer.exit.i.i.i.i35
  %h_vlan_encapsulated_proto.i.i.i.i37 = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i31, i32 0, i32 1
  %71 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i37 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i37, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i2) #12
  %73 = zext i16 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.170)
  switch i16 %72, label %do.cond42.i.i.i.i38.skb_protocol.exit.i42_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i38.do.body27.backedge.i.i.i.i40_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i38.do.body27.backedge.i.i.i.i40_crit_edge91
  ]

do.cond42.i.i.i.i38.do.body27.backedge.i.i.i.i40_crit_edge91: ; preds = %do.cond42.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i.i40

do.cond42.i.i.i.i38.do.body27.backedge.i.i.i.i40_crit_edge: ; preds = %do.cond42.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body27.backedge.i.i.i.i40

do.cond42.i.i.i.i38.skb_protocol.exit.i42_crit_edge: ; preds = %do.cond42.i.i.i.i38
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_protocol.exit.i42

do.body27.backedge.i.i.i.i40:                     ; preds = %do.cond42.i.i.i.i38.do.body27.backedge.i.i.i.i40_crit_edge, %do.cond42.i.i.i.i38.do.body27.backedge.i.i.i.i40_crit_edge91
  %add.i.i.i.i39 = add nsw i32 %vlan_depth.1.i.i.i.i19, 4
  br label %do.body27.i.i.i.i23

skb_protocol.exit.i42:                            ; preds = %do.cond42.i.i.i.i38.skb_protocol.exit.i42_crit_edge, %if.then5.skb_protocol.exit.i42_crit_edge
  %retval.2.i.i.i.i41 = phi i16 [ %56, %if.then5.skb_protocol.exit.i42_crit_edge ], [ %72, %do.cond42.i.i.i.i38.skb_protocol.exit.i42_crit_edge ]
  %74 = zext i16 %retval.2.i.i.i.i41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.171)
  switch i16 %retval.2.i.i.i.i41, label %skb_protocol.exit.i42.if.end8_crit_edge [
    i16 2048, label %sw.bb.i50
    i16 -31011, label %sw.bb6.i66
  ]

skb_protocol.exit.i42.if.end8_crit_edge:          ; preds = %skb_protocol.exit.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

sw.bb.i50:                                        ; preds = %skb_protocol.exit.i42
  %head.i.i43 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %75 = ptrtoint ptr %head.i.i43 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i43, align 8
  %network_header.i.i44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %77 = ptrtoint ptr %network_header.i.i44 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %network_header.i.i44, align 4
  %conv.i.i45 = zext i16 %78 to i32
  %add.ptr.i.i46 = getelementptr i8, ptr %76, i32 %conv.i.i45
  %add.ptr.i47 = getelementptr i8, ptr %add.ptr.i.i46, i32 20
  %tail.i.i48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %79 = ptrtoint ptr %tail.i.i48 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %tail.i.i48, align 8
  %cmp.not.i49 = icmp ugt ptr %add.ptr.i47, %80
  br i1 %cmp.not.i49, label %sw.bb.i50.if.end8_crit_edge, label %if.then.i52

sw.bb.i50.if.end8_crit_edge:                      ; preds = %sw.bb.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then.i52:                                      ; preds = %sw.bb.i50
  %tos.i.i51 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i46, i32 0, i32 1
  %81 = ptrtoint ptr %tos.i.i51 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %tos.i.i51, align 1
  %83 = and i8 %82, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %83)
  %cmp.not.i.i = icmp eq i8 %83, 2
  br i1 %cmp.not.i.i, label %if.end.i.i58, label %if.then.i52.if.end8_crit_edge

if.then.i52.if.end8_crit_edge:                    ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.i.i58:                                     ; preds = %if.then.i52
  call void @__sanitizer_cov_trace_pc() #14
  %check.i.i53 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i46, i32 0, i32 7
  %84 = ptrtoint ptr %check.i.i53 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %check.i.i53, align 2
  %add.i.i.i54 = add i16 %85, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add.i.i.i54)
  %cmp.i.i.i55 = icmp eq i16 %add.i.i.i54, 0
  %conv6.i.i.i56 = zext i1 %cmp.i.i.i55 to i16
  %add7.i.i.i57 = add i16 %add.i.i.i54, %conv6.i.i.i56
  %86 = ptrtoint ptr %check.i.i53 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %add7.i.i.i57, ptr %check.i.i53, align 2
  %87 = xor i8 %82, 3
  %88 = ptrtoint ptr %tos.i.i51 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %tos.i.i51, align 1
  br label %if.end8

sw.bb6.i66:                                       ; preds = %skb_protocol.exit.i42
  %head.i1.i59 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %89 = ptrtoint ptr %head.i1.i59 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %head.i1.i59, align 8
  %network_header.i2.i60 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %91 = ptrtoint ptr %network_header.i2.i60 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %network_header.i2.i60, align 4
  %conv.i3.i61 = zext i16 %92 to i32
  %add.ptr.i4.i62 = getelementptr i8, ptr %90, i32 %conv.i3.i61
  %add.ptr8.i63 = getelementptr i8, ptr %add.ptr.i4.i62, i32 40
  %tail.i5.i64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %93 = ptrtoint ptr %tail.i5.i64 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tail.i5.i64, align 8
  %cmp10.not.i65 = icmp ugt ptr %add.ptr8.i63, %94
  br i1 %cmp10.not.i65, label %sw.bb6.i66.if.end8_crit_edge, label %if.then12.i67

sw.bb6.i66.if.end8_crit_edge:                     ; preds = %sw.bb6.i66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then12.i67:                                    ; preds = %sw.bb6.i66
  %95 = ptrtoint ptr %add.ptr.i4.i62 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %add.ptr.i4.i62, align 2
  %97 = and i16 %96, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %97)
  %cmp.not.i10.i = icmp eq i16 %97, 32
  br i1 %cmp.not.i10.i, label %if.end.i11.i, label %if.then12.i67.if.end8_crit_edge

if.then12.i67.if.end8_crit_edge:                  ; preds = %if.then12.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end.i11.i:                                     ; preds = %if.then12.i67
  %98 = ptrtoint ptr %add.ptr.i4.i62 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr.i4.i62, align 4
  %xor.i.i = xor i32 %99, 3145728
  store i32 %xor.i.i, ptr %add.ptr.i4.i62, align 4
  %ip_summed.i.i68 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %100 = ptrtoint ptr %ip_summed.i.i68 to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load.i.i69 = load i16, ptr %ip_summed.i.i68, align 8
  %101 = and i16 %bf.load.i.i69, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %101)
  %cmp3.i.i = icmp eq i16 %101, 1024
  br i1 %cmp3.i.i, label %if.then5.i.i, label %if.end.i11.i.if.end8_crit_edge

if.end.i11.i.if.end8_crit_edge:                   ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5.i.i:                                     ; preds = %if.end.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %102, align 8
  %neg.i.i.i70 = xor i32 %99, -1
  %add.i.i.i12.i = add i32 %104, %neg.i.i.i70
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i12.i, i32 %neg.i.i.i70)
  %cmp.i.i.i13.i = icmp ult i32 %add.i.i.i12.i, %neg.i.i.i70
  %conv.i.i.i14.i = zext i1 %cmp.i.i.i13.i to i32
  %add1.i.i.i.i71 = add i32 %add.i.i.i12.i, %xor.i.i
  %add.i.i15.i = add i32 %add1.i.i.i.i71, %conv.i.i.i14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i15.i, i32 %xor.i.i)
  %cmp.i.i16.i = icmp ult i32 %add.i.i15.i, %xor.i.i
  %conv.i.i17.i = zext i1 %cmp.i.i16.i to i32
  %add1.i.i.i72 = add i32 %add.i.i15.i, %conv.i.i17.i
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add1.i.i.i72, ptr %102, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.then5.i.i, %if.end.i11.i.if.end8_crit_edge, %if.then12.i67.if.end8_crit_edge, %sw.bb6.i66.if.end8_crit_edge, %if.end.i.i58, %if.then.i52.if.end8_crit_edge, %sw.bb.i50.if.end8_crit_edge, %skb_protocol.exit.i42.if.end8_crit_edge, %cleanup.thread.i.i.i.i36, %do.end.i.i.i.i10, %if.then3.i.i, %if.end.i10.i.if.end8_crit_edge, %if.then12.i.if.end8_crit_edge, %sw.bb6.i.if.end8_crit_edge, %if.end.i.i, %if.then.i1.if.end8_crit_edge, %sw.bb.i.if.end8_crit_edge, %skb_protocol.exit.i.if.end8_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i, %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_allowedips_lookup_src(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @napi_gro_receive(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wg_packet_send_queued_handshake_initiation(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_bh_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_cow_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_to_sgvec(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @chacha20poly1305_decrypt_sg_inplace(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_index_hashtable_lookup(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wg_noise_keypair_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @wg_prev_queue_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !118, !119, !121, !122, !124, !125, !127, !129, !130, !132, !133, !135, !136, !138, !140, !141, !143, !145, !146, !148, !149, !151, !153, !154, !156, !157, !159, !160, !162, !164, !165, !167, !168, !170, !171, !173, !174, !175, !177, !178, !179, !180, !181, !183, !184, !185, !186, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !242, !243, !244, !246, !247, !249, !251, !253}
!llvm.named.register.sp = !{!254}
!llvm.module.flags = !{!255, !256, !257, !258, !259, !260, !261, !262}
!llvm.ident = !{!263}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireguard/receive.c", i32 223, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 15, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wg_packet_counter_selftest._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @wg_packet_counter_selftest._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @wg_packet_counter_selftest.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 33, i32 2}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 34, i32 11}
!13 = !{ptr @wg_packet_counter_selftest._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @wg_packet_counter_selftest._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @wg_packet_counter_selftest._entry.8, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 35, i32 11}
!17 = !{ptr @wg_packet_counter_selftest._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @wg_packet_counter_selftest._entry.10, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 36, i32 11}
!20 = !{ptr @wg_packet_counter_selftest._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @wg_packet_counter_selftest._entry.12, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 37, i32 11}
!23 = !{ptr @wg_packet_counter_selftest._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @wg_packet_counter_selftest._entry.14, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 38, i32 11}
!26 = !{ptr @wg_packet_counter_selftest._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @wg_packet_counter_selftest._entry.16, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 39, i32 11}
!29 = !{ptr @wg_packet_counter_selftest._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @wg_packet_counter_selftest._entry.18, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 40, i32 11}
!32 = !{ptr @wg_packet_counter_selftest._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @wg_packet_counter_selftest._entry.20, !34, !"_entry", i1 false, i1 false}
!34 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 41, i32 11}
!35 = !{ptr @wg_packet_counter_selftest._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @wg_packet_counter_selftest._entry.22, !37, !"_entry", i1 false, i1 false}
!37 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 42, i32 11}
!38 = !{ptr @wg_packet_counter_selftest._entry_ptr.23, !37, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @wg_packet_counter_selftest._entry.24, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 43, i32 11}
!41 = !{ptr @wg_packet_counter_selftest._entry_ptr.25, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @wg_packet_counter_selftest._entry.26, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 44, i32 11}
!44 = !{ptr @wg_packet_counter_selftest._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @wg_packet_counter_selftest._entry.28, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 45, i32 11}
!47 = !{ptr @wg_packet_counter_selftest._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @wg_packet_counter_selftest._entry.30, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 46, i32 11}
!50 = !{ptr @wg_packet_counter_selftest._entry_ptr.31, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @wg_packet_counter_selftest._entry.32, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 47, i32 11}
!53 = !{ptr @wg_packet_counter_selftest._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @wg_packet_counter_selftest._entry.34, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 48, i32 11}
!56 = !{ptr @wg_packet_counter_selftest._entry_ptr.35, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @wg_packet_counter_selftest._entry.36, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 49, i32 11}
!59 = !{ptr @wg_packet_counter_selftest._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @wg_packet_counter_selftest._entry.38, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 50, i32 11}
!62 = !{ptr @wg_packet_counter_selftest._entry_ptr.39, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @wg_packet_counter_selftest._entry.40, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 51, i32 11}
!65 = !{ptr @wg_packet_counter_selftest._entry_ptr.41, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @wg_packet_counter_selftest._entry.42, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 52, i32 11}
!68 = !{ptr @wg_packet_counter_selftest._entry_ptr.43, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @wg_packet_counter_selftest._entry.44, !70, !"_entry", i1 false, i1 false}
!70 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 53, i32 11}
!71 = !{ptr @wg_packet_counter_selftest._entry_ptr.45, !70, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @wg_packet_counter_selftest._entry.46, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 54, i32 11}
!74 = !{ptr @wg_packet_counter_selftest._entry_ptr.47, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @wg_packet_counter_selftest._entry.48, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 55, i32 11}
!77 = !{ptr @wg_packet_counter_selftest._entry_ptr.49, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @wg_packet_counter_selftest._entry.50, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 56, i32 11}
!80 = !{ptr @wg_packet_counter_selftest._entry_ptr.51, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @wg_packet_counter_selftest._entry.52, !82, !"_entry", i1 false, i1 false}
!82 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 57, i32 11}
!83 = !{ptr @wg_packet_counter_selftest._entry_ptr.53, !82, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @wg_packet_counter_selftest._entry.54, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 58, i32 11}
!86 = !{ptr @wg_packet_counter_selftest._entry_ptr.55, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @wg_packet_counter_selftest._entry.56, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 59, i32 11}
!89 = !{ptr @wg_packet_counter_selftest._entry_ptr.57, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @wg_packet_counter_selftest._entry.58, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 60, i32 11}
!92 = !{ptr @wg_packet_counter_selftest._entry_ptr.59, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @wg_packet_counter_selftest._entry.60, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 61, i32 11}
!95 = !{ptr @wg_packet_counter_selftest._entry_ptr.61, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @wg_packet_counter_selftest._entry.62, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 62, i32 11}
!98 = !{ptr @wg_packet_counter_selftest._entry_ptr.63, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @wg_packet_counter_selftest._entry.64, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 63, i32 11}
!101 = !{ptr @wg_packet_counter_selftest._entry_ptr.65, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @wg_packet_counter_selftest._entry.66, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 64, i32 11}
!104 = !{ptr @wg_packet_counter_selftest._entry_ptr.67, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @wg_packet_counter_selftest._entry.68, !106, !"_entry", i1 false, i1 false}
!106 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 65, i32 11}
!107 = !{ptr @wg_packet_counter_selftest._entry_ptr.69, !106, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @wg_packet_counter_selftest._entry.70, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 66, i32 11}
!110 = !{ptr @wg_packet_counter_selftest._entry_ptr.71, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @wg_packet_counter_selftest._entry.72, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 67, i32 11}
!113 = !{ptr @wg_packet_counter_selftest._entry_ptr.73, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @wg_packet_counter_selftest.__key.74, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 69, i32 2}
!116 = !{ptr @wg_packet_counter_selftest._entry.75, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 71, i32 3}
!118 = !{ptr @wg_packet_counter_selftest._entry_ptr.76, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @wg_packet_counter_selftest._entry.77, !120, !"_entry", i1 false, i1 false}
!120 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 72, i32 2}
!121 = !{ptr @wg_packet_counter_selftest._entry_ptr.78, !120, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @wg_packet_counter_selftest._entry.79, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 73, i32 2}
!124 = !{ptr @wg_packet_counter_selftest._entry_ptr.80, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @wg_packet_counter_selftest.__key.81, !126, !"__key", i1 false, i1 false}
!126 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 75, i32 2}
!127 = !{ptr @wg_packet_counter_selftest._entry.82, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 77, i32 3}
!129 = !{ptr @wg_packet_counter_selftest._entry_ptr.83, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @wg_packet_counter_selftest._entry.84, !131, !"_entry", i1 false, i1 false}
!131 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 78, i32 2}
!132 = !{ptr @wg_packet_counter_selftest._entry_ptr.85, !131, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @wg_packet_counter_selftest._entry.86, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 79, i32 2}
!135 = !{ptr @wg_packet_counter_selftest._entry_ptr.87, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @wg_packet_counter_selftest.__key.88, !137, !"__key", i1 false, i1 false}
!137 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 81, i32 2}
!138 = !{ptr @wg_packet_counter_selftest._entry.89, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 83, i32 3}
!140 = !{ptr @wg_packet_counter_selftest._entry_ptr.90, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @wg_packet_counter_selftest.__key.91, !142, !"__key", i1 false, i1 false}
!142 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 85, i32 2}
!143 = !{ptr @wg_packet_counter_selftest._entry.92, !144, !"_entry", i1 false, i1 false}
!144 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 87, i32 3}
!145 = !{ptr @wg_packet_counter_selftest._entry_ptr.93, !144, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @wg_packet_counter_selftest._entry.94, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 88, i32 2}
!148 = !{ptr @wg_packet_counter_selftest._entry_ptr.95, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @wg_packet_counter_selftest.__key.96, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 90, i32 2}
!151 = !{ptr @wg_packet_counter_selftest._entry.97, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 92, i32 3}
!153 = !{ptr @wg_packet_counter_selftest._entry_ptr.98, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @wg_packet_counter_selftest._entry.99, !155, !"_entry", i1 false, i1 false}
!155 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 93, i32 2}
!156 = !{ptr @wg_packet_counter_selftest._entry_ptr.100, !155, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @wg_packet_counter_selftest._entry.101, !158, !"_entry", i1 false, i1 false}
!158 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 94, i32 2}
!159 = !{ptr @wg_packet_counter_selftest._entry_ptr.102, !158, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @wg_packet_counter_selftest.__key.103, !161, !"__key", i1 false, i1 false}
!161 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 96, i32 2}
!162 = !{ptr @wg_packet_counter_selftest._entry.104, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 98, i32 3}
!164 = !{ptr @wg_packet_counter_selftest._entry_ptr.105, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @wg_packet_counter_selftest._entry.106, !166, !"_entry", i1 false, i1 false}
!166 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 99, i32 2}
!167 = !{ptr @wg_packet_counter_selftest._entry_ptr.107, !166, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @wg_packet_counter_selftest._entry.108, !169, !"_entry", i1 false, i1 false}
!169 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 100, i32 2}
!170 = !{ptr @wg_packet_counter_selftest._entry_ptr.109, !169, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.111, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/wireguard/selftest/counter.c", i32 107, i32 3}
!173 = !{ptr @wg_packet_counter_selftest._entry.110, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @wg_packet_counter_selftest._entry_ptr.112, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.113, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/wireguard/receive.c", i32 470, i32 4}
!177 = !{ptr @.str.114, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.115, !176, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @wg_packet_rx_poll.descriptor, !176, !"descriptor", i1 false, i1 false}
!180 = !{ptr @.str.116, !176, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.117, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/wireguard/receive.c", i32 570, i32 4}
!183 = !{ptr @.str.118, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @wg_packet_receive.descriptor, !182, !"descriptor", i1 false, i1 false}
!185 = !{ptr @.str.119, !182, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.120, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/net/wireguard/receive.c", i32 586, i32 3}
!188 = !{ptr @wg_receive_handshake_packet.last_under_load, !189, !"last_under_load", i1 false, i1 false}
!189 = !{!"../drivers/net/wireguard/receive.c", i32 107, i32 13}
!190 = !{ptr @.str.121, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/net/wireguard/receive.c", i32 112, i32 3}
!192 = !{ptr @.str.122, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @wg_receive_handshake_packet.descriptor, !191, !"descriptor", i1 false, i1 false}
!194 = !{ptr @.str.123, !191, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.125, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/wireguard/receive.c", i32 136, i32 3}
!197 = !{ptr @wg_receive_handshake_packet.descriptor.124, !196, !"descriptor", i1 false, i1 false}
!198 = !{ptr @.str.126, !196, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @.str.128, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/wireguard/receive.c", i32 153, i32 4}
!201 = !{ptr @wg_receive_handshake_packet.descriptor.127, !200, !"descriptor", i1 false, i1 false}
!202 = !{ptr @.str.129, !200, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.131, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/wireguard/receive.c", i32 158, i32 3}
!205 = !{ptr @wg_receive_handshake_packet.descriptor.130, !204, !"descriptor", i1 false, i1 false}
!206 = !{ptr @.str.132, !204, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.134, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/wireguard/receive.c", i32 175, i32 4}
!209 = !{ptr @wg_receive_handshake_packet.descriptor.133, !208, !"descriptor", i1 false, i1 false}
!210 = !{ptr @.str.135, !208, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.137, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/wireguard/receive.c", i32 180, i32 3}
!213 = !{ptr @wg_receive_handshake_packet.descriptor.136, !212, !"descriptor", i1 false, i1 false}
!214 = !{ptr @.str.138, !212, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.139, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/wireguard/receive.c", i32 200, i32 3}
!217 = distinct !{null, !218, !"__already_done", i1 false, i1 false}
!218 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!219 = !{ptr @.str.140, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.141, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/wireguard/receive.c", i32 366, i32 3}
!222 = !{ptr @.str.142, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @wg_packet_consume_data_done.descriptor, !221, !"descriptor", i1 false, i1 false}
!224 = !{ptr @.str.143, !221, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.145, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/wireguard/receive.c", i32 423, i32 2}
!227 = !{ptr @wg_packet_consume_data_done.descriptor.144, !226, !"descriptor", i1 false, i1 false}
!228 = !{ptr @.str.146, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.148, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/wireguard/receive.c", i32 430, i32 2}
!231 = !{ptr @wg_packet_consume_data_done.descriptor.147, !230, !"descriptor", i1 false, i1 false}
!232 = !{ptr @.str.149, !230, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.151, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/wireguard/receive.c", i32 436, i32 2}
!235 = !{ptr @wg_packet_consume_data_done.descriptor.150, !234, !"descriptor", i1 false, i1 false}
!236 = !{ptr @.str.152, !234, !"<string literal>", i1 false, i1 false}
!237 = distinct !{null, !238, !"__warned", i1 false, i1 false}
!238 = !{!"../drivers/net/wireguard/receive.c", i32 236, i32 12}
!239 = !{ptr @.str.153, !238, !"<string literal>", i1 false, i1 false}
!240 = distinct !{null, !241, !"__warned", i1 false, i1 false}
!241 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!242 = !{ptr @.str.154, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.155, !241, !"<string literal>", i1 false, i1 false}
!244 = distinct !{null, !245, !"__warned", i1 false, i1 false}
!245 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!246 = !{ptr @.str.156, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.157, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!249 = distinct !{null, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!251 = distinct !{null, !252, !"__already_done", i1 false, i1 false}
!252 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!253 = !{ptr @.str.159, !252, !"<string literal>", i1 false, i1 false}
!254 = !{!"sp"}
!255 = !{i32 1, !"wchar_size", i32 2}
!256 = !{i32 1, !"min_enum_size", i32 4}
!257 = !{i32 8, !"branch-target-enforcement", i32 0}
!258 = !{i32 8, !"sign-return-address", i32 0}
!259 = !{i32 8, !"sign-return-address-all", i32 0}
!260 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!261 = !{i32 7, !"uwtable", i32 1}
!262 = !{i32 7, !"frame-pointer", i32 2}
!263 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!264 = !{!"branch_weights", i32 1, i32 2000}
!265 = !{!"branch_weights", i32 4000000, i32 4001}
!266 = !{!"branch_weights", i32 2000, i32 1}
!267 = !{i64 2148194189, i64 2148194215, i64 2148194244, i64 2148194278, i64 2148194309, i64 2148194332}
!268 = !{i64 2148762688, i64 2148762693, i64 2148762706, i64 2148762750, i64 2148762784, i64 2148762805}
!269 = !{i64 2148271419}
!270 = !{i8 0, i8 2}
!271 = !{!"auto-init"}
!272 = !{i64 2148193254, i64 2148193286, i64 2148193315, i64 2148193349, i64 2148193380, i64 2148193403}
!273 = !{i64 2148273691}
!274 = !{!"branch_weights", i32 1073205, i32 2146410443}
!275 = !{!"branch_weights", i32 4001, i32 4000000}
!276 = !{i64 2154659475, i64 2154659963, i64 2154659512, i64 2154659568, i64 2154659602, i64 2154659626, i64 2154659667, i64 2154659688, i64 2154659716, i64 2154659750}
!277 = !{i64 2154548338}
!278 = !{i64 2148191724, i64 2148191750, i64 2148191779, i64 2148191813, i64 2148191844, i64 2148191867}
!279 = !{i64 2157977114}
!280 = !{i64 2149739403}
!281 = !{i64 2149744335}
!282 = !{i64 2149766047}
!283 = !{i64 2149770939}
!284 = !{i64 2149847396}
!285 = !{i64 2149847721}
!286 = !{i64 2157978324}
